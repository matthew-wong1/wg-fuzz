struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec2<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-1i, 34810i, 0i, 1i, -24747i, 7000i, 38055i, 7509i);

var<private> global1: Struct_3;

var<private> global2: vec3<i32>;

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, global3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(555f - global1.a), _wgslsmith_f_op_f32(global3.x + 2101f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(924f + global3.x), 1392f))), global1.a));
    let var_1 = Struct_2(u_input.b.x, ~vec4<u32>(1u, 1u, 1u, 1u), u_input.b.wxy, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(251f))), -862f))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(137f - _wgslsmith_f_op_f32(-749f - _wgslsmith_f_op_f32(-global3.x)))))));
    var var_3 = select(~firstTrailingBit(_wgslsmith_clamp_vec3_i32(var_1.c, vec3<i32>(26941i, var_1.c.x, -2147483647i), var_1.c)) >> (var_1.b.zwz % vec3<u32>(32u)), vec3<i32>(~countOneBits(u_input.a.x), var_1.c.x << (_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(var_1.b.x, 35225u, var_1.b.x)) % 32u), -1i), !(all(vec4<bool>(false, true, false, false)) == (all(vec3<bool>(true, true, true)) == any(vec3<bool>(false, true, true)))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d.a * var_1.d.a), _wgslsmith_div_f32(-552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d.a)))), global1.a < var_0.x)));
    return ~((-29420i >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_1.b, var_1.b), ~44327u) % 32u)) ^ (52967i ^ global2.x));
}

fn func_2() -> vec3<i32> {
    let var_0 = vec4<f32>(390f, _wgslsmith_f_op_f32(f32(-1f) * -2144f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))))) - _wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(f32(-1f) * -823f));
    let var_1 = var_0.x;
    global2 = vec3<i32>(global2.x, global2.x, ~(i32(-1i) * -31317i));
    global2 = vec3<i32>(i32(-1i) * -1i, func_3(), reverseBits(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 8u)], min(firstTrailingBit(u_input.a.x), global2.x ^ -11049i))));
    global1 = Struct_3(var_1);
    return -u_input.b.xxy;
}

fn func_1(arg_0: Struct_3) -> f32 {
    global1 = arg_0;
    global2 = vec3<i32>(-2147483647i, ~0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, u_input.a.x, global2.x), -u_input.b)), _wgslsmith_dot_vec3_i32(-vec3<i32>(37707i, u_input.b.x, u_input.a.x), max(u_input.b.zxx | u_input.b.wwy, func_2()))));
    let var_0 = ~(~(~countOneBits(_wgslsmith_mod_u32(1u, 26077u))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -2153f, -689f, 2236f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(117f, global1.a, -682f, 2302f), vec4<f32>(574f, arg_0.a, arg_0.a, global1.a), true))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(459f, 1028f, global1.a, arg_0.a), vec4<f32>(global1.a, arg_0.a, arg_0.a, 819f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -552f, 146f, global3.x), vec4<f32>(global3.x, global1.a, global1.a, 2133f)), vec4<bool>(true, false, true, true))), vec4<f32>(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(367f + -2612f), 1130f, -1605f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(230f, -250f, -1000f, arg_0.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 1729f, 2001f, arg_0.a), vec4<f32>(global3.x, -975f, global1.a, 1135f), true)), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, 348f, global3.x, arg_0.a)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-485f)), _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, false)), -735f, arg_0.a) - vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(sign(arg_0.a)), 1180f, _wgslsmith_f_op_f32(sign(global3.x))))));
    var var_1 = (countOneBits(select(vec3<u32>(var_0, var_0, var_0) >> (vec3<u32>(var_0, 0u, 30912u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, var_0, 23777u), vec3<bool>(true, true, true))) | ~vec3<u32>(reverseBits(1u), var_0, var_0)) & vec3<u32>(min(var_0, var_0) ^ ~(~var_0), min(firstLeadingBit(var_0 >> (var_0 % 32u)), var_0), ~var_0);
    return _wgslsmith_f_op_f32(-global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.b.zyz;
    var var_0 = _wgslsmith_f_op_f32(183f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_f32(global3.x - global3.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1261f - _wgslsmith_f_op_f32(func_1(Struct_3(global3.x)))) + _wgslsmith_f_op_f32(-global1.a))));
    global0 = array<i32, 8>();
    var var_1 = ~reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(0u, 42636u)), firstTrailingBit(vec2<u32>(1u, 1u))), ~vec2<u32>(1u, 1u)));
    let var_2 = true;
    var var_3 = 101f;
    global0 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(select(min(vec2<u32>(1u, 1u) & max(vec2<u32>(var_1.x, 1u), vec2<u32>(var_1.x, var_1.x)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.x, 34099u), vec2<u32>(2383u, var_1.x))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(62657u, 27509u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(var_1.x, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(46296u, var_1.x), vec2<u32>(55307u, var_1.x)), vec2<bool>(var_2, false))), !select(!vec2<bool>(true, var_2), select(vec2<bool>(var_2, false), vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2)), true & var_2)));
}

