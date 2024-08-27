struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_div_f32(1244f, _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_1.d)), _wgslsmith_f_op_f32(trunc(arg_0.d)))) - 616f)));
    var_0 = _wgslsmith_div_f32(196f, arg_1.d);
    var_0 = arg_0.d;
    var var_1 = arg_0;
    let var_2 = vec4<bool>(var_1.a, select(true, any(vec4<bool>(arg_3.x, false, any(vec4<bool>(arg_2.c.x, arg_2.c.x, true, arg_2.a)), var_1.b.x >= 52131u)), !any(vec3<bool>(arg_2.c.x, arg_0.a, arg_2.c.x))), false, arg_2.c.x);
    return true;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(0i, -1i), -1i, abs(reverseBits(-_wgslsmith_mod_i32(u_input.c.x, u_input.c.x))), ~_wgslsmith_dot_vec4_i32(-(vec4<i32>(-2147483647i, 13921i, 2635i, u_input.c.x) | vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.c.x, 82916i ^ u_input.c.x, -u_input.c.x, -15382i)));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(-abs(-26822i)), 1i), _wgslsmith_mult_vec2_i32(-vec2<i32>(-38235i, 20405i), _wgslsmith_sub_vec2_i32(-(~vec2<i32>(30122i, var_0.x)), vec2<i32>(u_input.c.x, var_0.x) ^ (var_0.zz << (u_input.e % vec2<u32>(32u))))));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.d, arg_0, 15503u), vec4<u32>(u_input.b | 1u, ~arg_0, abs(1u), arg_0)), ~(~(arg_0 << (1u % 32u))), reverseBits(~0u), u_input.a >> (arg_0 % 32u)), ~vec4<u32>(0u, _wgslsmith_add_u32(37574u, 37686u), abs(4294967295u), _wgslsmith_sub_u32(arg_0, 0u)) << (abs(~reverseBits(vec4<u32>(1u, arg_0, arg_0, 2435u))) % vec4<u32>(32u)));
    var var_3 = ~var_2.zxw;
    let var_4 = 58269u;
    return _wgslsmith_div_f32(406f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(806f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(max(342f, -889f))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    let var_0 = vec4<i32>(-21000i, 1i, ~firstLeadingBit(u_input.c.x >> (~arg_2.b.x % 32u)), 46515i);
    var var_1 = _wgslsmith_add_i32(abs(u_input.c.x), var_0.x);
    var var_2 = vec2<i32>(_wgslsmith_div_i32(2147483647i, -_wgslsmith_sub_i32(~u_input.c.x, -1i)), ~1i);
    var var_3 = arg_2;
    return arg_2.d <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-591f + arg_2.d) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(72827u, func_3(Struct_1(arg_0.x, vec3<u32>(1u, arg_2.b.x, 4294967295u), vec3<bool>(false, arg_0.x, false), arg_2.d), Struct_1(false, arg_2.b, vec3<bool>(arg_0.x, arg_1.x, arg_0.x), arg_2.d), arg_2, vec2<bool>(true, false)), select(arg_2.c, arg_2.c, false))), _wgslsmith_f_op_f32(var_3.d + _wgslsmith_div_f32(749f, 1181f))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(false != (_wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1456f)), func_2(vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true), vec2<bool>(func_2(vec3<bool>(true, false, true), vec2<bool>(false, true), Struct_1(false, vec3<u32>(0u, 25538u, u_input.d), vec3<bool>(false, false, true), arg_0.x)), false), Struct_1(true, vec3<u32>(u_input.d, u_input.d, u_input.e.x) & vec3<u32>(u_input.e.x, u_input.a, u_input.d), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(arg_0.x + -115f))), all(vec2<bool>(true, true))), !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    let var_1 = arg_0.zy;
    var var_2 = Struct_1(true, abs(select(vec3<u32>(1u, u_input.a, 10230u), reverseBits(~vec3<u32>(u_input.a, 0u, u_input.e.x)), true)), !var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1734f, -168f, any(vec3<bool>(var_0.x, false, true)))))));
    let var_3 = Struct_1(var_0.x, vec3<u32>(abs(0u), var_2.b.x << (~var_2.b.x % 32u), 1u ^ reverseBits(min(var_2.b.x, u_input.a))), !select(!vec3<bool>(var_0.x, true, false), select(vec3<bool>(var_0.x, false, false), !var_2.c, select(vec3<bool>(false, var_0.x, var_0.x), var_2.c, true)), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -741f))));
    var var_4 = -288f;
    return var_3;
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = true;
    var_0 = !arg_0.a;
    var_0 = false;
    var_0 = arg_0.c.x;
    var var_1 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-724f * arg_0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1975f + 207f) - -663f), _wgslsmith_f_op_f32(select(-1450f, _wgslsmith_f_op_f32(-arg_0.d), -913f != arg_0.d))), -868f, arg_0.d), select(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-19698i, -2752i, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, -824i, -2147483647i, 0i)), ~1i, u_input.c.x << (4294967295u % 32u)), vec3<i32>(select(u_input.c.x & u_input.c.x, -1i, func_2(arg_0.c, vec2<bool>(arg_0.c.x, true), arg_0)), abs(u_input.c.x) | 51442i, u_input.c.x), arg_0.c.x));
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.d, arg_0.d)), arg_0.d)))))), -1018f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(450f, -273f) + vec2<f32>(1000f, -1274f)) * _wgslsmith_f_op_vec2_f32(func_1(Struct_1(true, vec3<u32>(u_input.e.x, 4294967295u, u_input.a), vec3<bool>(false, false, false), 254f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-289f, -270f))))), false)));
    let var_1 = vec2<f32>(var_0.x, var_0.x);
    var var_2 = 1000f;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-253f, -1272f) - var_1)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-473f, 805f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(var_0.x, -1201f, false))))))));
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -550f, -990f) - vec4<f32>(var_0.x, -217f, var_0.x, 860f))))))), reverseBits(reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) | select(vec3<i32>(-55817i, -38767i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), true))));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.d), var_1.x))));
    var var_4 = func_3(Struct_1(!var_3.c.x, var_3.b, !(!(!vec3<bool>(true, var_3.c.x, true))), _wgslsmith_f_op_f32(757f - _wgslsmith_f_op_f32(f32(-1f) * -712f))), var_3, Struct_1(true, _wgslsmith_add_vec3_u32(vec3<u32>(19918u, abs(2316u), 4294967295u), ~var_3.b ^ var_3.b), vec3<bool>(func_3(func_5(vec4<f32>(var_1.x, var_1.x, -408f, var_1.x), vec3<i32>(2147483647i, u_input.c.x, u_input.c.x)), var_3, Struct_1(var_3.a, var_3.b, var_3.c, 1912f), vec2<bool>(true, true)), !(!var_3.c.x), var_3.a != all(vec2<bool>(true, var_3.c.x))), _wgslsmith_f_op_f32(exp2(var_0.x))), select(vec2<bool>(true, true), var_3.c.yz, _wgslsmith_f_op_f32(max(func_5(vec4<f32>(1000f, var_0.x, -471f, 2175f), vec3<i32>(-50393i, -1i, u_input.c.x)).d, _wgslsmith_f_op_f32(f32(-1f) * -1076f))) <= var_3.d));
    let var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -183f, var_3.d, -171f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, var_3.d, -1162f, 473f) * vec4<f32>(var_0.x, -290f, 1294f, -1425f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.d, var_1.x, -268f, 319f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_1.x)), vec4<f32>(var_1.x, 1410f, var_3.d, -648f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.x, var_3.d, var_3.d)))))));
}

