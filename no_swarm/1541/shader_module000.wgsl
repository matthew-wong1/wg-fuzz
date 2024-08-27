struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_5, arg_3: u32) -> vec4<f32> {
    var var_0 = !select(vec3<bool>(!all(vec2<bool>(false, true)), false, all(vec2<bool>(true, true))), vec3<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))), true | (u_input.a > u_input.a), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true && any(vec2<bool>(false, false))));
    var var_1 = i32(-1i) * -(~(_wgslsmith_dot_vec4_i32(vec4<i32>(20457i, arg_2.b.x, u_input.b, arg_0.x), vec4<i32>(32159i, 10209i, 50066i, arg_0.x)) & -545i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.c.x)) - -1133f);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-199f)) - _wgslsmith_f_op_f32(518f + -1373f)), 573f)));
    var var_3 = _wgslsmith_sub_vec4_i32(abs(~abs(~vec4<i32>(arg_2.b.x, 1i, arg_2.b.x, u_input.b))), ~reverseBits(vec4<i32>(firstLeadingBit(2147483647i), _wgslsmith_add_i32(arg_2.b.x, arg_0.x), ~u_input.b, countOneBits(arg_2.b.x))));
    return vec4<f32>(1702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1701f, _wgslsmith_f_op_f32(-1027f * arg_2.c.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(351f * _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(arg_2.a.x - arg_2.c.x), true))), arg_2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.c.x))) > _wgslsmith_f_op_f32(arg_1 * arg_2.a.x))), -1519f);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(u_input.b, -27747i, u_input.c), 142f, Struct_5(vec3<f32>(205f, 1000f, 1000f), vec2<i32>(79757i, u_input.c), vec4<f32>(330f, 1023f, 2307f, 1000f)), 29611u)) - vec4<f32>(915f, -945f, 815f, -313f)), vec4<f32>(-752f, -612f, _wgslsmith_f_op_f32(335f + -688f), _wgslsmith_f_op_f32(963f + 1000f)))), countOneBits(abs(u_input.c)), u_input.b, (all(!arg_1.yx) != (true & arg_1.x)) & all(arg_1));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, var_0.a.x, -972f), var_0.a.zyz))) + vec3<f32>(-243f, _wgslsmith_f_op_f32(step(-1105f, var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))) + var_0.a.yxx), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(select(firstLeadingBit(vec2<i32>(-57951i, -1i)), vec2<i32>(var_0.b, 23659i) ^ vec2<i32>(var_0.b, 10752i), vec2<bool>(arg_1.x, var_0.d)), vec2<i32>(_wgslsmith_add_i32(u_input.b, var_0.b), var_0.c << (161522u % 32u))), ~vec2<i32>(_wgslsmith_add_i32(-34728i, u_input.b), -2147483647i)), vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(731f * var_0.a.x) + _wgslsmith_f_op_f32(floor(var_0.a.x))), -1223f)));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(-_wgslsmith_sub_i32(u_input.b, -6122i), -24151i, -u_input.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(trunc(var_1.c.x))) + -1836f), var_1, select(reverseBits(arg_2), select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1988u, 4294967295u), vec3<u32>(u_input.a, 50972u, 0u)), 0u, select(var_0.d, var_0.d, var_0.d)), true != var_0.d))).wxz, abs(vec2<i32>(_wgslsmith_mod_i32(u_input.b & var_0.c, var_0.c), -2147483647i ^ ~var_1.b.x)), var_0.a);
    let var_3 = vec3<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.x + var_0.a.x))), -653f), _wgslsmith_f_op_f32(-var_0.a.x), !arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_2.c.x)));
    var_2 = var_1;
    return 0u | ((20067u >> (countOneBits(_wgslsmith_div_u32(arg_2, 30604u)) % 32u)) << ((~(31470u | arg_2) >> (arg_2 % 32u)) % 32u));
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_3(-318f, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(func_2(78802u, vec3<bool>(false, false, true), u_input.a) >= u_input.a, true)));
    let var_1 = vec3<i32>(u_input.c, ~1i, 14794i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, 765f), vec2<f32>(-126f, 786f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, var_0.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(618f, var_0.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, var_0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -226f), vec2<f32>(var_0.a, 1000f)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, -2074f))))))) * vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f), var_0.a)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.a, var_2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_0.a))))), !var_0.b);
    var var_4 = !var_0.b.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-689f, 1249f, var_0.a, var_0.a))) - vec4<f32>(1115f, var_3.a, -398f, 843f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_2.x, var_3.a, -353f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-173f, -1034f, var_3.a, 1132f), vec4<f32>(-172f, 1323f, var_0.a, var_2.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_2.x, var_0.a))))))) * vec4<f32>(_wgslsmith_f_op_f32(select(-482f, -179f, !all(vec3<bool>(var_0.b.x, true, true)))), var_0.a, var_3.a, _wgslsmith_f_op_f32(-var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1412f, -560f)))))), vec2<u32>(u_input.a, 22749u), !(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 1i), ~vec2<i32>(-1i, 1i)) <= u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(793f)), 188f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, u_input.b, 0i), vec3<i32>(u_input.c, 0i, u_input.c))), ~u_input.c), _wgslsmith_f_op_vec4_f32(func_1()));
}

