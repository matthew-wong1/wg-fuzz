struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_1(1u, vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0, arg_0));
    let var_1 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-769f + arg_1.x) - 925f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405f + -403f))))), _wgslsmith_f_op_f32(ceil(arg_0)));
    let var_2 = (~(u_input.b.x >> (_wgslsmith_sub_u32(u_input.a, arg_2.d) % 32u)) < min(-15869i, u_input.c)) | true;
    var var_3 = vec3<i32>(u_input.b.x, -11111i, 0i);
    var_3 = reverseBits(~(vec3<i32>(select(-1i, 2147483647i, false), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_3.x, -57429i), vec3<i32>(70289i, -1i, var_3.x)), ~1i) | (_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -29182i, u_input.b.x), vec3<i32>(u_input.b.x, -1403i, var_3.x)) ^ ~vec3<i32>(var_3.x, u_input.b.x, -43324i))));
    return 27912u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(select(~u_input.a, ~_wgslsmith_add_u32(78530u, func_3(-1312f, vec2<f32>(-268f, 596f), Struct_3(vec4<f32>(-831f, -299f, 647f, 1000f), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<bool>(false, false, true, false), u_input.a))), !all(vec3<bool>(true, false, false)) | true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(324f, -815f, _wgslsmith_f_op_f32(ceil(-1531f))) - vec3<f32>(1f, 764f, 423f)) + vec3<f32>(1f, 1f, 1f)));
    var_0 = Struct_1(u_input.a, var_0.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1786f * var_0.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1033f), 587f, all(vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(var_0.b.x - 215f)), var_0.b.x))));
    let var_2 = Struct_1(16244u, vec3<f32>(-107f, 942f, var_1.x));
    var var_3 = ~(~_wgslsmith_dot_vec2_i32(u_input.b, u_input.b ^ vec2<i32>(1604i, u_input.b.x)) | (i32(-1i) * -firstTrailingBit(-37116i)));
    return var_2;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    let var_0 = func_2();
    return Struct_2(-vec3<i32>(min(u_input.b.x, 1i) & u_input.c, ~_wgslsmith_div_i32(-2147483647i, u_input.c), -34805i), func_2(), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, _wgslsmith_div_u32(1u, arg_0.b.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.d, 0u), vec2<u32>(arg_0.d, arg_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -495f) - _wgslsmith_div_f32(-963f, var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f * 568f)), _wgslsmith_f_op_f32(1097f + _wgslsmith_f_op_f32(-var_0.b.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(996f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a.x + arg_3.a.x), _wgslsmith_f_op_f32(step(-165f, 900f))) - arg_1.x), -557f, _wgslsmith_f_op_f32(arg_3.a.x * 777f)) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -768f))))), _wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(arg_3.a.x + _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))), 1001f, _wgslsmith_f_op_f32(f32(-1f) * -310f)));
    var var_1 = func_1(arg_3, 1i >= -_wgslsmith_dot_vec2_i32(~u_input.b, countOneBits(u_input.b))).b;
    var var_2 = arg_0;
    var_1 = var_2.b;
    var var_3 = var_2.b;
    return Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1), var_0, any(select(select(vec3<bool>(arg_3.c.x, false, arg_3.c.x), vec3<bool>(arg_3.c.x, arg_3.c.x, false), vec3<bool>(arg_3.c.x, arg_3.c.x, false)), vec3<bool>(false, true, true), select(arg_3.c.xzw, vec3<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x), arg_3.c.x))))), vec4<u32>(abs(var_1.a), _wgslsmith_mult_u32(countOneBits(~0u), 1u), 0u, (~arg_0.c.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, 65233u), arg_3.b.wzz) % 32u)) >> (24522u % 32u)), vec4<bool>(false, true, arg_3.c.x, arg_3.c.x && all(select(arg_3.c.zy, vec2<bool>(arg_3.c.x, false), arg_3.c.ww))), _wgslsmith_dot_vec4_u32(arg_3.b ^ arg_3.b, ~arg_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-734f - -423f), _wgslsmith_f_op_f32(3172f + 222f), _wgslsmith_f_op_f32(trunc(-715f)), _wgslsmith_f_op_f32(-353f + 152f)), select(vec4<u32>(7522u, 4730u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 99869u), false) | ~vec4<u32>(0u, 56495u, 4294967295u, 1u), vec4<bool>(true, true, true, true), u_input.a), true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-824f, 558f, -1027f, -441f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-480f, 1517f, 193f, -397f) + vec4<f32>(341f, 1000f, -777f, 948f)), vec4<bool>(true, true, true, true))) * vec4<f32>(-273f, _wgslsmith_div_f32(-208f, -138f), -273f, -1953f)))), Struct_1(firstTrailingBit(30123u), vec3<f32>(1f, 1f, 1f)), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(305f, -133f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2219f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f * -390f))), ~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))), vec4<bool>(true, -40636i < max(-1i, u_input.b.x), true, min(9027u, u_input.a) == ~u_input.a), _wgslsmith_sub_u32(0u, u_input.a)));
    var var_1 = func_1(Struct_3(vec4<f32>(var_0.a.x, -1513f, var_0.a.x, -2122f), ~var_0.b, var_0.c, (abs(var_0.d) << (~var_0.d % 32u)) << (4294967295u % 32u)), any(vec2<bool>(var_0.c.x, !var_0.c.x | select(true, var_0.c.x, true))));
    let var_2 = -vec4<i32>(2147483647i, -27262i, select(abs(var_1.a.x), func_1(Struct_3(vec4<f32>(-273f, -913f, 196f, 136f), vec4<u32>(u_input.a, 1u, 9331u, 73210u), var_0.c, 0u), false).a.x, var_0.c.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(26307i, var_1.a.x, var_1.a.x, u_input.b.x) ^ min(vec4<i32>(0i, u_input.b.x, u_input.c, var_1.a.x), vec4<i32>(u_input.c, u_input.b.x, 0i, 0i)), vec4<i32>(-22063i, _wgslsmith_mod_i32(-9297i, var_1.a.x), var_1.a.x | 27916i, -23181i)));
    var_1 = func_1(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x * 2105f), _wgslsmith_f_op_f32(trunc(var_1.c.b.x)), -1696f, -169f) - var_0.a), ~select(vec4<u32>(23061u, 5949u, var_1.c.a, var_1.c.a) | var_0.b, var_0.b, var_0.c), var_0.c, 1u), false);
    var_1 = func_1(Struct_3(vec4<f32>(func_4(Struct_2(vec3<i32>(var_2.x, var_2.x, var_1.a.x), var_1.c, Struct_1(var_1.c.a, vec3<f32>(1200f, -1134f, var_1.c.b.x))), vec4<f32>(1396f, -1317f, 389f, -805f), var_1.b, Struct_3(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, vec4<bool>(var_0.c.x, var_0.c.x, false, true), var_0.d)).a.x, 152f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c.b.x * var_1.c.b.x), _wgslsmith_f_op_f32(-192f + var_0.a.x))), var_0.a.x), _wgslsmith_div_vec4_u32(var_0.b | (var_0.b ^ var_0.b), select(vec4<u32>(0u, var_0.b.x, var_0.d, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a, var_0.d, var_0.b.x, 4294967295u), vec4<u32>(u_input.a, 1u, 6787u, 0u)), all(var_0.c.wwy))), !(!(!var_0.c)), ~((22998u & var_0.b.x) ^ 1136u)), u_input.b.x == func_1(func_4(Struct_2(vec3<i32>(-2147483647i, -2147483647i, var_1.a.x), Struct_1(1u, vec3<f32>(-181f, 1202f, -830f)), var_1.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-472f, 257f, -849f, 485f))), func_1(var_0, var_0.c.x).c, func_4(Struct_2(vec3<i32>(u_input.b.x, 30350i, -1i), var_1.b, Struct_1(var_0.d, var_0.a.yxw)), var_0.a, Struct_1(u_input.a, var_0.a.zzz), Struct_3(var_0.a, vec4<u32>(var_1.c.a, var_1.c.a, 0u, var_1.b.a), vec4<bool>(false, var_0.c.x, false, var_0.c.x), 1u))), _wgslsmith_mod_i32(7952i, u_input.b.x) <= ~var_2.x).a.x);
    let var_3 = max(u_input.a, _wgslsmith_dot_vec3_u32(~var_0.b.xwz, select(reverseBits(vec3<u32>(61359u, 53664u, var_0.b.x)), var_0.b.zxw, !var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_0.b, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.b.xx, vec2<u32>(var_0.d, var_1.b.a)), _wgslsmith_div_u32(var_0.b.x, var_0.d)), _wgslsmith_add_u32(u_input.a, 0u)));
}

