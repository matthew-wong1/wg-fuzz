struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = !vec2<bool>(true && all(vec3<bool>(true, true, true)), !(!(u_input.a > u_input.a)));
    var var_1 = select(select(!(!vec3<bool>(true, var_0.x, false)), select(select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, true), vec3<bool>(var_0.x, var_0.x, false)), var_0.x), vec3<bool>(true, false, true), true), true), vec3<bool>(any(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x), true)), any(select(select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, false, false, var_0.x)), !vec4<bool>(true, var_0.x, var_0.x, true), false)), any(vec2<bool>(!var_0.x, any(vec4<bool>(false, var_0.x, var_0.x, false))))), vec3<bool>(var_0.x, all(!select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, var_0.x, var_0.x, true), var_0.x)), !var_0.x));
    var var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), ~vec2<u32>(abs(1u), min(0u, 16231u))), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -2147483647i, 1i, -28624i) | vec4<i32>(2147483647i, 0i, u_input.a, 1i)), reverseBits(vec4<i32>(~1i, _wgslsmith_mult_i32(-2147483647i, u_input.a), reverseBits(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i))))), 3520i, vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, -13428i, u_input.a, u_input.a)));
    var var_3 = ~_wgslsmith_dot_vec4_i32(~select(-vec4<i32>(0i, u_input.a, 1i, 2147483647i), -vec4<i32>(1i, -1i, var_2.d.x, -1i), !var_0.x), countOneBits(vec4<i32>(_wgslsmith_add_i32(10278i, -1089i), max(u_input.a, -2147483647i), abs(var_2.c), select(16224i, var_2.c, true))));
    var_3 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(23769i ^ u_input.a), ~(~u_input.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, -28989i), vec2<i32>(-1i, -5144i)))), 17173i, var_2.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2511f - -505f) + _wgslsmith_f_op_f32(f32(-1f) * -2996f));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = -359f;
    var var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = 401f;
    var_1 = 298f;
    let var_3 = any(vec2<bool>(any(vec2<bool>(any(vec2<bool>(true, arg_0)), true)), true));
    return Struct_1(vec3<bool>(all(vec3<bool>(true, any(vec3<bool>(var_3, arg_0, arg_0)), 4294967295u != arg_1)), !(!any(vec2<bool>(true, false))), all(!vec3<bool>(var_3, var_3, arg_0))), _wgslsmith_sub_i32(u_input.a, -63887i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1724f * var_2)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> vec4<u32> {
    let var_0 = false;
    let var_1 = func_2((var_0 | true) && true, _wgslsmith_mult_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_u32(118642u, 4294967295u))), 32900u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-650f, 1118f)))), vec2<f32>(_wgslsmith_f_op_f32(1256f - 914f), -1345f), arg_1 != 2147483647i))));
    let var_2 = 0i;
    var var_3 = var_0;
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~(~43465u), 8763u, _wgslsmith_dot_vec3_u32(vec3<u32>(23706u, 25590u, 0u), vec3<u32>(31757u, 1u, 0u))), max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(8202u, 13733u, 4294967295u, 23179u)) & ~firstTrailingBit(vec4<u32>(15731u, 1u, 4294967295u, 75137u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(~34315u, abs(38710u), 1u, 1u), _wgslsmith_add_vec4_u32(func_1(vec3<bool>(false, false, true), u_input.a), vec4<u32>(1u, 1u, 1u, 1u))), all(vec2<bool>(true, true)));
    var var_1 = vec2<bool>(func_2(false, 1u, vec2<f32>(1000f, -1000f)).a.x && true, !(!func_2(true, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_0.xy), vec2<f32>(1f, 1f)).a.x));
    var_1 = vec2<bool>(false, !any(vec4<bool>(var_1.x, any(vec4<bool>(var_1.x, true, true, var_1.x)), all(vec2<bool>(var_1.x, var_1.x)), all(vec2<bool>(false, var_1.x)))));
    let var_2 = Struct_2(var_0.zz, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(-25460i, 32038i, u_input.a, u_input.a)), vec4<i32>(-2147483647i, -u_input.a, -12119i, -1i)), -(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -812i, u_input.a, -22136i)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)))), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, -27129i, -1i, 1i), min(vec4<i32>(u_input.a, u_input.a, 0i, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), !vec4<bool>(true, var_1.x, false, true)), ~(vec4<i32>(u_input.a, 14280i, u_input.a, u_input.a) ^ vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))), -vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(29730i, u_input.a)), -vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(2147483647i, u_input.a)), u_input.a));
    var_1 = vec2<bool>(false, var_1.x);
    var_1 = !(!vec2<bool>(select(!var_1.x, var_1.x, true), true));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, var_2.c), ~u_input.a);
    let var_4 = select(~reverseBits(vec2<u32>(var_2.a.x ^ 62431u, var_0.x ^ var_2.a.x)), var_2.a, true);
    var var_5 = var_2.d.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(~(-10072i));
}

