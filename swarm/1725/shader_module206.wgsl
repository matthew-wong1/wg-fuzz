struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25>;

var<private> global1: vec2<u32> = vec2<u32>(11446u, 20917u);

var<private> global2: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec4<f32> {
    global2 = Struct_4(select(global2.b, global2.a, true), select(min(firstLeadingBit(-1i), global2.a | min(2147483647i, u_input.b.x)), firstLeadingBit(global2.b), arg_0 != ~(~1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.c.x), 1f), global2.d, 1u);
    var var_0 = global2.d.a | !global2.d.b;
    var var_1 = ~abs((u_input.a.yz & u_input.a.yx) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xx, u_input.a.xx), vec2<u32>(arg_0, 35089u)) % vec2<u32>(32u)));
    global1 = vec2<u32>(_wgslsmith_clamp_u32(global2.e, _wgslsmith_mult_u32(~(~4294967295u), global2.e), var_1.x), var_1.x);
    let var_2 = _wgslsmith_add_vec4_i32(u_input.b, ~u_input.b);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(370f)) + _wgslsmith_f_op_f32(-2175f * global2.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(538f - -538f))), _wgslsmith_f_op_f32(global2.d.c.x + 194f), arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.c.x, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(select(1000f, -1772f, true)))))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(476f, global2.d.c.x, global2.d.c.x, 745f), vec4<f32>(970f, -1904f, 1640f, 1500f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(global2.d.c, vec4<f32>(global2.d.c.x, global2.d.c.x, -1139f, global2.c))), _wgslsmith_f_op_vec4_f32(func_3(~0u, _wgslsmith_f_op_f32(673f - global2.c))), vec4<bool>(true, false, global2.d.b, all(vec4<bool>(false, global2.d.a, true, global2.d.b)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-636f, global2.d.c.x, global2.d.c.x, -1199f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.c.x, global2.c, 893f, global2.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, global2.d.c.x, global2.c, -153f)))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global2.c), 163f, 475f))));
    let var_1 = Struct_3(1u, vec4<u32>(_wgslsmith_add_u32(~firstTrailingBit(1u), abs(u_input.a.x)), ~u_input.a.x, countOneBits(select(u_input.a.x, global1.x, global2.d.a)), u_input.a.x), ~(~u_input.a.x), 1i);
    let var_2 = vec4<bool>(any(select(!(!vec4<bool>(global2.d.b, global2.d.b, global2.d.b, true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(global2.d.b, false, true, global2.d.b), global2.d.b), !global2.d.a | !global2.d.a)), false, any(!vec2<bool>(all(vec2<bool>(global2.d.a, true)), select(global2.d.a, global2.d.a, false))), global2.d.a);
    var var_3 = Struct_3(_wgslsmith_add_u32(4294967295u, global1.x), var_1.b, min(var_1.b.x, global2.e), reverseBits(_wgslsmith_mod_i32(var_1.d, 1i)));
    var var_4 = Struct_2(all(select(!vec3<bool>(false, global2.d.a, var_2.x), !select(var_2.zxw, vec3<bool>(var_2.x, false, global2.d.b), global2.d.a), false)), true, vec4<f32>(_wgslsmith_f_op_f32(global2.d.c.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + global2.d.c.x), 1351f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(223f + _wgslsmith_div_f32(-1000f, global2.d.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1000f) + 1028f))), -1943f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f) * 745f)));
    return Struct_4((i32(-1i) * -(2147483647i | var_1.d)) ^ _wgslsmith_div_i32(var_3.d >> (7863u % 32u), ~(-1i)), -max(_wgslsmith_add_i32(36177i, u_input.b.x), u_input.b.x | 2147483647i) << (0u % 32u), _wgslsmith_f_op_f32(var_4.c.x + var_4.c.x), Struct_2(var_4.a && true, global2.d.a, vec4<f32>(214f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-411f, var_0.x)) - -794f), 497f, _wgslsmith_f_op_f32(select(-1252f, -193f, select(var_4.b, true, false))))), _wgslsmith_mod_u32(~(1u >> (abs(1u) % 32u)), global1.x));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = arg_1;
    global2 = func_2();
    global2 = func_2();
    var var_1 = Struct_4(arg_1, var_0, _wgslsmith_f_op_f32(-global2.d.c.x), func_2().d, 8243u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, global2.c, arg_0.c.x) - var_1.d.c.wwz)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d.c.xww + arg_0.c.xwy) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, var_1.c, arg_2.c.x) - vec3<f32>(-1151f, global2.d.c.x, 336f))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.c.x)) - 1f)), var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(u_input.a & u_input.a), u_input.a), u_input.a), abs(~(0u >> (global1.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(823f, _wgslsmith_f_op_f32(func_1(global2.d, -1i, Struct_2(global2.d.b, global2.d.b, global2.d.c)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(294f)), 261f))));
    global2 = Struct_4(-(~u_input.b.x), 9762i, _wgslsmith_f_op_f32(-global2.c), func_2().d, 1u);
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, ~(~(u_input.a.yz | vec2<u32>(2190u, global2.e)))), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.a.x, ~85104u), u_input.a.x, 0u));
    var var_3 = ~_wgslsmith_add_i32(global2.b >> (global2.e % 32u), i32(-1i) * -func_2().a);
    let var_4 = Struct_3(reverseBits(82683u) >> (u_input.a.x % 32u), ~vec4<u32>(~(~48824u), ~max(3111u, u_input.a.x), 1706u, (u_input.a.x ^ global1.x) & reverseBits(0u)), u_input.a.x, 47102i);
    var var_5 = _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(0u, 25u)], select(vec4<u32>(global1.x, _wgslsmith_clamp_u32(36711u, 4294967295u, global2.e) & _wgslsmith_mod_u32(var_4.a, global1.x), max(~13218u, 17168u), 1u), global0[_wgslsmith_index_u32(~(~global1.x << (_wgslsmith_mult_u32(global2.e, global2.e) % 32u)), 25u)], true));
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.c.x, var_4.b, global2.a, -2921f, 2552u);
}

