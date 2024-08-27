struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-9202i, 10784i, 0i, 2147483647i), vec4<i32>(43417i, 1i, 2147483647i, -4407i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 19971i), vec4<i32>(0i, 0i, 194i, -1i), vec4<i32>(0i, 1i, 0i, 36704i), vec4<i32>(-31065i, -1i, 2147483647i, -16387i), vec4<i32>(47619i, 3116i, -5007i, i32(-2147483648)), vec4<i32>(1i, -1i, 635i, 33487i), vec4<i32>(41719i, 0i, -29058i, -1i), vec4<i32>(1i, -66309i, -1i, 90108i), vec4<i32>(32774i, -35819i, -36471i, 41586i), vec4<i32>(-27092i, 2147483647i, -1i, 0i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<vec4<i32>, 12>();
    return vec2<i32>(_wgslsmith_add_i32(-(~(-arg_2.c)), ~(~(-3257i))), ~u_input.c.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> i32 {
    var var_0 = arg_0.a;
    global0 = array<vec4<i32>, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(721f, -1855f))))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2473f, 110f))))))));
    var var_2 = arg_0;
    let var_3 = !(!vec4<bool>(true, false, all(var_2.b), all(vec3<bool>(false, arg_0.b.x, arg_2.x))));
    return ~_wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(21105i, arg_0.c), 2147483647i)), select(_wgslsmith_div_i32(abs(2147483647i), var_2.c), 6589i, _wgslsmith_f_op_f32(-arg_0.d) < _wgslsmith_f_op_f32(-arg_0.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<f32> {
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-723f)) * arg_0.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.d)))) + arg_0.a)))));
    let var_1 = arg_0.b;
    let var_2 = arg_0.b.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d, -649f), vec2<f32>(arg_0.a, arg_0.a), arg_0.b.yx)))))));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<vec4<i32>, 12>();
    var var_0 = vec4<i32>(arg_0.c, _wgslsmith_add_i32(u_input.a.x, 0i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.e.xz, u_input.a), countOneBits(func_2(~vec4<u32>(58101u, 0u, u_input.b.x, 4294967295u), vec2<u32>(u_input.b.x, 1u), Struct_1(336f, vec3<bool>(arg_0.b.x, false, arg_0.b.x), arg_0.c, 1803f)))), arg_0.c);
    let var_1 = _wgslsmith_dot_vec3_u32(countOneBits(u_input.b.zyw), u_input.b.www) & u_input.d;
    global0 = array<vec4<i32>, 12>();
    let var_2 = _wgslsmith_f_op_f32(round(arg_0.d));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), -2345f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -779f), vec2<f32>(-712f, 326f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -192f))))) * _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-var_2), !(!vec3<bool>(arg_0.b.x, false, true)), func_3(Struct_1(-1000f, arg_0.b, var_0.x, -590f), ~4294967295u, arg_0.b.zz), _wgslsmith_f_op_f32(trunc(347f))), (~u_input.e << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 4294967295u, 14385u), u_input.b) % vec4<u32>(32u))) ^ global0[_wgslsmith_index_u32(4294967295u, 12u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1577f, -710f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1312f, 2195f)))) - _wgslsmith_f_op_vec2_f32(func_1(Struct_1(-558f, vec3<bool>(false, false, true), 0i, -1000f))))));
    var var_1 = select(~vec4<u32>(1u, u_input.d, 4294967295u, ~u_input.b.x) | abs(vec4<u32>(4294967295u, 0u, u_input.b.x, _wgslsmith_div_u32(47422u, 1u))), u_input.b, !(!(!any(vec2<bool>(false, false)))));
    var_1 = ~vec4<u32>(_wgslsmith_mult_u32(18028u, 24633u), ~(9144u ^ _wgslsmith_div_u32(var_1.x, var_1.x)), var_1.x, ~abs(reverseBits(1u)));
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.b.x, ~_wgslsmith_mod_u32(var_1.x, 17477u)), ~vec2<u32>(_wgslsmith_mult_u32(u_input.d, var_1.x), var_1.x << (var_1.x % 32u))), var_1.zz);
    let var_3 = u_input.b;
    let var_4 = -u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(4378i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)))), _wgslsmith_mult_vec4_i32(u_input.e, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~global0[_wgslsmith_index_u32(var_3.x, 12u)], abs(global0[_wgslsmith_index_u32(u_input.b.x, 12u)])), u_input.e | _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(13049u, 12u)]))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1000f, var_0.x), vec3<f32>(522f, var_0.x, -1700f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1404f, -202f, var_0.x) * vec3<f32>(174f, var_0.x, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x)))))))), global0[_wgslsmith_index_u32(var_2 ^ ~countOneBits(var_1.x), 12u)]);
}

