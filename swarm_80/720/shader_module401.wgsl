struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 67657u);

var<private> global2: bool;

var<private> global3: vec4<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> vec2<i32> {
    global3 = !select(!select(!vec4<bool>(arg_2.x, arg_2.x, global3.x, true), vec4<bool>(global3.x, true, arg_2.x, arg_2.x), all(arg_2)), vec4<bool>(global1.x > u_input.c.x, global3.x, true, !global3.x), true);
    global1 = ~(~u_input.c);
    let var_0 = Struct_2(vec2<i32>(63798i, _wgslsmith_mod_i32(2147483647i << (u_input.b.x % 32u), arg_1)) >> (select(u_input.c, reverseBits(~vec2<u32>(0u, 16305u)), true) % vec2<u32>(32u)), vec4<bool>(all(!vec2<bool>(global3.x, true)), !arg_2.x || true, !arg_2.x, 0u >= select(u_input.c.x, global1.x, global3.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(1171f, _wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_f_op_f32(f32(-1f) * -1508f)))), Struct_1(~min(~vec3<i32>(u_input.a, -36380i, u_input.a), max(vec3<i32>(arg_1, arg_1, u_input.d), vec3<i32>(u_input.a, -37397i, -1i)))));
    let var_1 = Struct_2(min(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -4128i, var_0.d.a.x), vec3<i32>(arg_1, var_0.a.x, arg_0)), _wgslsmith_dot_vec2_i32(global4.a.yz, var_0.a)), max(select(global4.a.yx, abs(vec2<i32>(2147483647i, -2147483647i)), true), vec2<i32>(-42250i, max(-9674i, 68667i)))), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -959f)) > _wgslsmith_f_op_f32(-1176f - _wgslsmith_f_op_f32(exp2(var_0.c.x))), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(round(var_0.c.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1049f)) * _wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x))), any(select(!var_0.b, vec4<bool>(false, global3.x, global3.x, false), var_0.b)), arg_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.c, var_0.c)) * _wgslsmith_f_op_vec2_f32(var_0.c + var_0.c)) * vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, -805f)), _wgslsmith_f_op_f32(sign(850f))))), var_0.d);
    var var_2 = _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(~(vec4<u32>(4294967295u, global1.x, u_input.c.x, u_input.b.x) ^ abs(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 1u))), countOneBits(vec4<u32>(u_input.b.x, abs(4444u), global1.x, ~global1.x))));
    return vec2<i32>(~arg_1, _wgslsmith_mult_i32(_wgslsmith_sub_i32(min(~arg_0, -14437i >> (u_input.c.x % 32u)), -(~2147483647i)), i32(-1i) * -1i));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global2 = global3.x;
    let var_0 = Struct_2(global4.a.yx, vec4<bool>(true, true, any(global3.xz), any(vec3<bool>(all(vec3<bool>(false, global3.x, global3.x)), arg_0 == 1106f, !global3.x))), vec2<f32>(arg_0, arg_0), Struct_1(global4.a));
    var var_1 = func_3(_wgslsmith_mult_i32(u_input.a, ~var_0.d.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(18355i, 2147483647i), vec2<i32>(-1i, 0i)), global4.a.xy), u_input.d) | -(36960i & -var_0.a.x), vec3<bool>(false && global3.x, true, all(vec3<bool>(false, var_0.b.x, any(var_0.b)))));
    var var_2 = vec2<bool>(any(var_0.b.wx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)) == _wgslsmith_f_op_f32(-arg_0));
    var var_3 = ~(global0[_wgslsmith_index_u32(global1.x >> (~_wgslsmith_mod_u32(65683u, 68118u) % 32u), 25u)] >> (~global0[_wgslsmith_index_u32(global1.x, 25u)] % vec3<u32>(32u)));
    return var_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    global1 = vec2<u32>(0u, u_input.b.x);
    let var_0 = global1.x;
    var var_1 = -34475i;
    let var_2 = Struct_1(abs(firstTrailingBit(global4.a)));
    global0 = array<vec3<u32>, 25>();
    return -259f;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = ~abs(countOneBits(~vec2<u32>(global1.x, u_input.c.x)) ^ ~(~vec2<u32>(u_input.b.x, global1.x)));
    let var_1 = vec4<i32>(~_wgslsmith_add_i32(-1i, 47131i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global4.a, vec3<i32>(global4.a.x, u_input.d, u_input.a) & ~global4.a), -(1i << (arg_0.x % 32u))), -countOneBits(global4.a.x) | 1i, 1i);
    global0 = array<vec3<u32>, 25>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_3.x)), -1000f, -1402f, _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(func_4(select(vec3<bool>(true, true, false), global3.wxy, false), func_2(arg_2.x))))));
    let var_3 = Struct_1(var_1.xyx);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<bool>(!global3.x, any(!(!global3.yy)) & all(select(global3.wy, global3.yy, !global3.yz)), (~(-13006i) >= firstLeadingBit(countOneBits(global4.a.x))) && (~0u >= ~(~u_input.c.x)), false);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(global1.x, 10680u, 28116u, 27381u), vec2<bool>(true, false), vec2<f32>(794f, 1603f), vec2<f32>(-741f, 534f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, -1416f))))))));
    let var_1 = global3.x;
    var var_2 = u_input.c.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, -1201f, 1689f, 1564f))), vec4<f32>(var_0.x, var_0.x, -1000f, 513f), !func_2(var_0.x).b)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1051f, var_0.x, var_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(func_4(!func_2(-807f).b.wwy, Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(global4.a.x, global4.a.x), global4.a.xx, vec2<i32>(global4.a.x, 36593i)), select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, false, global3.x)), _wgslsmith_f_op_vec2_f32(var_0 * var_0), Struct_1(vec3<i32>(2147483647i, -14185i, global4.a.x))))), var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-458f, -1529f), _wgslsmith_f_op_f32(-1867f - var_0.x))), global3.x)), -656f)));
    global1 = vec2<u32>(min(firstLeadingBit(6044u), u_input.b.x) | max(39719u, select(24665u, u_input.c.x & 4294967295u, true)), select(4294967295u, u_input.b.x, func_2(_wgslsmith_f_op_f32(-594f * var_0.x)).b.x));
    var var_4 = u_input.c.x;
    global1 = abs(u_input.b.wz);
    var var_5 = func_2(-773f).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32((u_input.d >> (global1.x % 32u)) ^ -10342i, 1i), abs(~global4.a.x) >> (0u % 32u), -(global4.a.x ^ u_input.d), _wgslsmith_clamp_i32(global4.a.x, ~(-global4.a.x), u_input.d)));
}

