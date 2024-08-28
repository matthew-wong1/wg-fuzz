struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(533f, 753f), vec2<f32>(823f, -642f), vec2<f32>(-492f, 665f), vec2<f32>(1000f, 938f));

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<f32>(149f, -209f), vec3<f32>(1184f, -1217f, -2389f), 4294967295u, vec2<f32>(917f, 811f)));

var<private> global2: array<vec2<f32>, 17>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2820f))), _wgslsmith_f_op_f32(trunc(305f))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> bool {
    global2 = array<vec2<f32>, 17>();
    var var_0 = -vec4<i32>(_wgslsmith_add_i32(arg_1.x, u_input.b.x), arg_1.x, u_input.a, -11433i);
    var var_1 = Struct_2(vec2<u32>(arg_0.x, abs(_wgslsmith_dot_vec3_u32(arg_0.wwx, arg_0.ywz) | (arg_0.x | u_input.c))), vec2<i32>(u_input.a, arg_1.x) ^ arg_1, _wgslsmith_f_op_f32(floor(global1.a.d.x)), Struct_1(vec2<f32>(-695f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.a.x)) * global1.a.d.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.a.b))))), reverseBits(~_wgslsmith_mod_u32(arg_0.x, global1.a.c)), vec2<f32>(_wgslsmith_f_op_f32(-global1.a.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-778f, 1109f))))));
    var var_2 = Struct_2(_wgslsmith_add_vec2_u32(~(~vec2<u32>(18557u, arg_0.x)), arg_0.xy), abs(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -26931i), var_1.b)), vec2<i32>(abs(u_input.d.x), var_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.a.c, Struct_2(arg_0.ww, _wgslsmith_sub_vec2_i32(var_0.yw, vec2<i32>(26543i, 15654i)), -1541f, global1.a))), -1629f), var_1.d);
    let var_3 = select(vec4<bool>(true, select(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), true, -610f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.x + global1.a.d.x))), select(vec4<bool>(-1449f >= _wgslsmith_f_op_f32(trunc(850f)), true, (var_2.c == var_1.c) || false, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, false, false, true)), true), select(vec4<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(true, false, false, false)), 31397u <= u_input.c, true), vec4<bool>(any(vec3<bool>(false, false, false)), true, true, false), vec4<bool>(true, true, true, true))), !(var_2.d.a.x >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.d.d.x)), 2011f))));
    return all(var_3);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = global1.a;
    global2 = array<vec2<f32>, 17>();
    let var_1 = vec3<bool>(!(!(func_3(vec4<u32>(4294967295u, u_input.c, 1535u, 4294967295u), u_input.d.yx) & !arg_1)), arg_1, any(vec4<bool>(false, arg_1, 672f > _wgslsmith_div_f32(var_0.a.x, -460f), arg_1)));
    let var_2 = _wgslsmith_f_op_f32(global1.a.b.x * -1290f);
    let var_3 = Struct_2(select(arg_0.wz, ~firstTrailingBit(vec2<u32>(global1.a.c, 12282u)) & arg_0.wz, arg_1 || any(vec4<bool>(false, arg_1, true, true))), vec2<i32>(_wgslsmith_div_i32(min(min(u_input.d.x, -1i), ~(-21455i)), -2172i), ~(_wgslsmith_div_i32(-2147483647i, u_input.d.x) >> (min(0u, 0u) % 32u))), _wgslsmith_f_op_f32(global1.a.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2086f))) * 1171f)), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.a)))), _wgslsmith_f_op_vec3_f32(-global1.a.b), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2, global1.a.b.x))))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -655f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-322f, 606f), global1.a.b.xz))))), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1000f - 163f), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), 425f, 4294967295u, Struct_2(vec2<u32>(1926u, global1.a.c), u_input.d.yz, global1.a.b.x, Struct_1(global2[_wgslsmith_index_u32(4395u, 17u)], vec3<f32>(-154f, 1106f, global1.a.b.x), 0u, global1.a.b.xz)))), 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(global1.a.c, 64017u, 75898u, global1.a.c), false, 7953i, vec4<u32>(global1.a.c, global1.a.c, 0u, u_input.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.b + global1.a.b)))), global1.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.a.x, -305f), global2[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(global2[_wgslsmith_index_u32(3638u, 17u)], vec2<f32>(global1.a.a.x, -913f))))), all(vec2<bool>(true, true))))));
    var var_1 = reverseBits(abs(4294967295u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_2(~firstLeadingBit(vec4<u32>(global1.a.c, u_input.c, 1u, 25303u)) << (~(vec4<u32>(4294967295u, 0u, global1.a.c, 0u) | vec4<u32>(u_input.c, var_0.c, 16047u, 22774u)) % vec4<u32>(32u)), (countOneBits(0i) < u_input.d.x) || all(vec3<bool>(true, true, true)), reverseBits(~1i), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(global1.a.c, 4294967295u, 2866u, 1654u), vec4<u32>(global1.a.c, 78506u, u_input.c, u_input.c))))).yx - global2[_wgslsmith_index_u32(~((_wgslsmith_mod_u32(var_0.c, global1.a.c) | (u_input.c & u_input.c)) << (abs(_wgslsmith_mod_u32(u_input.c, var_0.c)) % 32u)), 17u)]);
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(744f, -2383f)))), vec3<f32>(global1.a.b.x, _wgslsmith_f_op_f32(abs(var_2.x)), global1.a.d.x), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(global1.a.c, 13010u), 61460u << (global1.a.c % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -275f)), var_2.x)));
    var var_4 = Struct_1(vec2<f32>(1138f, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x * global1.a.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), -160f, 8510u, Struct_2(vec2<u32>(u_input.c, var_3.a.c), u_input.d.xy, -1000f, var_3.a))), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.d.x) + _wgslsmith_f_op_f32(max(879f, var_0.b.x))))), 36478u, _wgslsmith_f_op_vec2_f32(step(var_3.a.a, _wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(~44929u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, var_3.a.c), vec3<u32>(u_input.c, 1u, var_3.a.c)), abs(4294967295u), 4294967295u), (-39184i | u_input.a) <= select(u_input.a, 45738i, false), -16667i << (var_0.c % 32u), abs(select(vec4<u32>(51565u, global1.a.c, 17548u, u_input.c), vec4<u32>(global1.a.c, var_0.c, 15517u, 1u), false)))).zy)));
    let var_5 = _wgslsmith_f_op_vec3_f32(func_2(reverseBits(~_wgslsmith_mod_vec4_u32(~vec4<u32>(59187u, 0u, u_input.c, 0u), firstLeadingBit(vec4<u32>(var_4.c, var_3.a.c, 33498u, global1.a.c)))), 1754f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.a.d.x)))))), u_input.b.x, vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(19500u, 0u), vec2<u32>(52591u, 1u)), min(_wgslsmith_clamp_u32(var_3.a.c, 1u, 103401u), 4294967295u), var_3.a.c), var_3.a.c, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_0.c & 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, 4294967295u, var_4.c, 0u), ~vec4<u32>(26896u, 1u, var_4.c, u_input.c))), 48058u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(74479u >> (global1.a.c % 32u), select(global1.a.c, 79251u, false)), countOneBits(10524u), u_input.c, _wgslsmith_mod_u32(firstLeadingBit(1477u), ~15868u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~global1.a.c, 1u, 1u, global1.a.c), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_3.a.c, var_3.a.c, u_input.c, 18420u), vec4<u32>(1u, global1.a.c, var_4.c, u_input.c)), firstTrailingBit(vec4<u32>(var_3.a.c, var_0.c, 52375u, var_0.c)) >> (abs(vec4<u32>(43017u, 7936u, 11555u, 0u)) % vec4<u32>(32u)))), ~vec4<u32>(reverseBits(select(u_input.c, global1.a.c, true)), global1.a.c, ~0u, _wgslsmith_sub_u32(var_0.c << (var_3.a.c % 32u), _wgslsmith_add_u32(106405u, 13602u))), min(~vec2<u32>(~16111u, _wgslsmith_mod_u32(var_3.a.c, 1u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 82735u, var_0.c), vec3<u32>(5603u, 45305u, 16012u)), _wgslsmith_clamp_u32(6585u, var_4.c, 14107u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.a.c), vec2<u32>(51864u, u_input.c)))), ~reverseBits(firstTrailingBit(~vec4<i32>(u_input.b.x, u_input.a, 15246i, u_input.a))));
}

