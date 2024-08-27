struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.x, -28960i), abs(u_input.b)));
    let var_1 = arg_0.x;
    var var_2 = min(i32(-1i) * -1i, ~var_0 | -2147483647i);
    var_2 = arg_0.x;
    var_2 = 1i;
    return u_input.a;
}

fn func_2() -> vec3<i32> {
    let var_0 = max(u_input.a, func_3(vec4<i32>(~(-24712i), _wgslsmith_mod_i32(-8035i, ~u_input.b), abs(u_input.b), 1i), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 3789u << (1u % 32u)), firstTrailingBit(~vec2<u32>(20214u, 1u)))));
    let var_1 = Struct_5(vec4<i32>(u_input.b, var_0, -abs(1i), ~0i), true, vec4<u32>(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(53162u, 0u, 65120u), vec3<u32>(16593u, 64386u, 33414u), vec3<bool>(true, false, true)), vec3<u32>(0u, 10701u, 4294967295u)), _wgslsmith_clamp_u32(1u, max(~64742u, _wgslsmith_add_u32(0u, 0u)), ~(~17111u)), abs(firstTrailingBit(59108u)), 28992u), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_add_u32(abs(2628u), firstLeadingBit(5019u)), firstLeadingBit(35173u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 61634u, 0u, 26585u), vec4<u32>(7718u, 861u, 0u, 4294967295u))))), vec4<bool>(all(vec2<bool>(true, true)) | all(vec4<bool>(true, true, true, true)), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), true, true));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-482f))) - -624f)), vec3<u32>(reverseBits(_wgslsmith_div_u32(~var_1.d.x, 1u)), max(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.x, var_1.c.x, 1u, var_1.c.x), vec4<u32>(var_1.d.x, 11086u, 6167u, var_1.d.x)), var_1.c), firstTrailingBit(_wgslsmith_div_u32(var_1.d.x, 28475u))), var_1.c.x));
    var var_3 = Struct_1(~abs(var_1.c.xyx), select(false, any(select(select(var_1.e, vec4<bool>(true, var_1.e.x, false, var_1.e.x), vec4<bool>(false, false, false, var_1.e.x)), var_1.e, var_1.e)), var_1.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_2.a, 1100f), _wgslsmith_f_op_f32(trunc(275f))))));
    let var_4 = _wgslsmith_clamp_vec2_i32(-_wgslsmith_mod_vec2_i32(-vec2<i32>(-13601i, -1i), var_1.a.xw), vec2<i32>(func_3(var_1.a, reverseBits(countOneBits(vec2<u32>(var_1.c.x, var_3.a.x)))), ~_wgslsmith_div_i32(-1i, var_0)), vec2<i32>(-10324i, 2147483647i) & (var_1.a.yz >> (vec2<u32>(~1u, var_3.a.x) % vec2<u32>(32u))));
    return -_wgslsmith_add_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(var_4.x, -27706i), _wgslsmith_dot_vec4_i32(var_1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, -1i, -1i, var_4.x), var_1.a)), 1i), _wgslsmith_mod_vec3_i32(select(max(var_1.a.wyy, vec3<i32>(var_4.x, var_4.x, var_4.x)), abs(vec3<i32>(var_0, -1i, u_input.b)), true), ~(~var_1.a.ywx)));
}

fn func_1() -> bool {
    let var_0 = func_2();
    let var_1 = 1186f;
    var var_2 = true;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -1703f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - -1000f), -1265f)), var_1) != _wgslsmith_f_op_f32(round(1000f));
    var var_3 = Struct_2(Struct_1(~vec3<u32>(1u, 1u, 1u), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec2<f32>(-831f, _wgslsmith_f_op_f32(f32(-1f) * -1130f))), vec3<u32>(~(~(~121770u)), 4073u, ~(~4294967295u << (abs(0u) % 32u))));
    return var_3.a.b;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-905f)))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-609f)))), 150f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(997f, 367f, arg_2.a, -523f) - vec4<f32>(arg_2.a, -347f, -277f, 1531f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, arg_2.a, 343f, -453f), vec4<f32>(arg_2.a, 107f, 689f, -416f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(arg_0.a - arg_2.a), arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, arg_2.a, 276f, -1036f), vec4<f32>(-118f, arg_2.a, arg_2.a, arg_0.a)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, 992f, 1238f, -610f), vec4<f32>(-1182f, 943f, arg_2.a, arg_2.a))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(465f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1141f, var_1.x))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) + arg_0.a));
    return vec4<bool>(!var_0, -19240i == ((u_input.b >> (firstTrailingBit(1u) % 32u)) >> (~0u % 32u)), !(!all(select(vec4<bool>(arg_1, var_0, var_0, arg_1), arg_0.b, true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)))), !func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -877f), vec4<bool>(true, true, true, true)), func_1(), Struct_3(1147f, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 28881u), vec3<u32>(11397u, 1u, 0u)))), all(func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -971f), vec4<bool>(false, false, true, false)), func_1(), Struct_3(-1388f, vec3<u32>(4294967295u, 34048u, 0u))).xxz));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f - -964f)), var_0.x)), -269f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = vec4<bool>(var_0.x, true, true, true);
    let var_2 = !any(select(!(!var_0.xyw), !(!var_0.wxx), true));
    var_0 = vec4<bool>(true, !var_2 != all(select(vec3<bool>(var_2, var_0.x, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(var_2, var_2, var_0.x), var_2), select(var_2, false, var_2))), !(var_1.x <= -1387f), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~1096u), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(49u, 0u)), ~vec2<u32>(11541u, 4294967295u))) > ~42254u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(max(-1i, 27997i), abs(8236i), -2147483647i), vec3<i32>(u_input.a, u_input.b, 32946i)), reverseBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -27460i, -1i), vec3<i32>(1i, u_input.b, 64152i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-343f, var_1.x) * _wgslsmith_f_op_f32(-var_1.x)))))), vec4<i32>(u_input.a, _wgslsmith_mult_i32(abs(-1i), u_input.b), u_input.a, -(u_input.b >> (max(62794u, 0u) % 32u))));
}

