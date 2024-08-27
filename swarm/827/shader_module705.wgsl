struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> bool {
    let var_0 = arg_0;
    return true;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!(!select(func_3(Struct_1(true, -23066i, vec3<i32>(53569i, u_input.a.x, 1172i)), Struct_1(true, 6998i, u_input.a.xww), 29576u, vec2<u32>(87615u, 1u)), true, any(vec4<bool>(false, true, true, true)))), ~u_input.a.x, ~vec3<i32>(~u_input.a.x, u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 54900i)) << (~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(34770u, 0u, 12089u)), vec3<u32>(4465u, 4294967295u, 1u)) % vec3<u32>(32u)));
    let var_1 = Struct_1(true, abs(-_wgslsmith_mod_i32(i32(-1i) * -2147483647i, reverseBits(u_input.a.x))), vec3<i32>(-3068i, ~(reverseBits(-2839i) << (0u % 32u)), 1i));
    var_0 = Struct_1(var_1.a, ~_wgslsmith_sub_i32(0i, 4570i), vec3<i32>(~min(u_input.a.x, var_0.b), -1i, -_wgslsmith_add_i32(var_0.b, firstTrailingBit(var_0.c.x))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-790f, -1878f, 110f))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(574f - 164f), 591f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(sign(914f)))), _wgslsmith_f_op_f32(trunc(-801f))))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x + var_3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1062f, 1257f)))) - -304f) * _wgslsmith_f_op_f32(func_2()))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(max(u_input.a >> (~vec4<u32>(22077u, 21277u, 14587u, 0u) % vec4<u32>(32u)), -(~u_input.a)), u_input.a & select(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), u_input.a), any(vec3<bool>(false, false, false)))), -_wgslsmith_clamp_i32(u_input.a.x >> (17562u % 32u), 79444i, ~2147483647i) | (~(u_input.a.x | u_input.a.x) << (4294967295u % 32u)));
    let var_2 = select(false || (false | all(vec3<bool>(true, true, true))), true, true);
    var var_3 = Struct_1(!var_2, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -61113i, -40156i), u_input.a.yzw), 1i)), min(1i, _wgslsmith_dot_vec3_i32(u_input.a.wxy, vec3<i32>(u_input.a.x, u_input.a.x, 45617i))) << (1u % 32u)), u_input.a.wyy);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1276f + _wgslsmith_f_op_f32(-358f * 655f)), 763f))), 569f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-883f + -742f), _wgslsmith_f_op_f32(floor(703f)))) + _wgslsmith_div_f32(605f, -1211f)) - 131f), -460f);
    return Struct_1(true, abs(-u_input.a.x), ~vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(var_3.b, var_3.b), -22074i), _wgslsmith_add_i32(var_1.x, u_input.a.x) ^ -var_3.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.x, var_3.c.x, -5364i, u_input.a.x), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1781f))));
    let var_3 = var_0.a;
    var var_4 = vec2<i32>(42876i, countOneBits(-_wgslsmith_sub_i32(min(32117i, -2147483647i), _wgslsmith_add_i32(-1421i, var_1.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, 0i, -vec4<i32>(-1i, u_input.a.x, _wgslsmith_mult_i32(var_1.c.x & -2147483647i, ~var_4.x), 0i), _wgslsmith_add_i32(~(-17543i), 14989i));
}

