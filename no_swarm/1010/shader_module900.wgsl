struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_3(vec3<i32>(0i, max(select(_wgslsmith_add_i32(u_input.c, u_input.c), u_input.c | -66253i, arg_2), u_input.c), _wgslsmith_mult_i32(-14147i, 0i)), _wgslsmith_mult_vec4_u32((vec4<u32>(arg_1, 71675u, 1u, 46027u) & vec4<u32>(0u, arg_1, arg_1, 0u)) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(10671u, u_input.a.x, arg_1, 20904u), vec4<u32>(0u, 4294967295u, arg_1, u_input.b) >> (vec4<u32>(30606u, 34131u, u_input.a.x, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 0u, 1u, 0u), vec4<u32>(u_input.a.x, u_input.b, 78772u, 1u))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(65946u, 37861u, u_input.b, u_input.b)) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 4294967295u, u_input.a.x, u_input.b), vec4<u32>(58688u, arg_1, u_input.a.x, arg_1)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1, u_input.a.x, 34369u, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, arg_1, arg_1, u_input.b))))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstLeadingBit(51345u), abs(~arg_1), ~(4294967295u & arg_1)), 11u)]), global0[_wgslsmith_index_u32(120912u, 11u)]);
    let var_1 = any(vec4<bool>(var_0.a.x <= ~0i, arg_2, false, true)) || false;
    var var_2 = ~(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 47286u, 44157u)), countOneBits(vec3<u32>(4294967295u, 1u, var_0.b.x))));
    var var_3 = abs(_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(var_0.a.x, var_0.a.x, -31288i)), var_0.a));
    var_2 = ~(~(u_input.a ^ ~(~var_0.b.ywy)));
    return select(var_0.b.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(max(arg_1, 0u), 44352u), 0u), var_2.xy), select(vec2<bool>(false, any(vec4<bool>(var_1, false, false, arg_2))), vec2<bool>(arg_2, !all(vec4<bool>(arg_2, true, arg_2, arg_2))), vec2<bool>(false, !(var_1 && arg_2))));
}

fn func_2() -> u32 {
    var var_0 = ((true == (all(vec4<bool>(true, false, false, true)) || any(vec4<bool>(true, false, true, true)))) || !any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))) | true;
    let var_1 = firstTrailingBit(vec2<i32>(abs(firstTrailingBit(0i)), -2147483647i) >> (~(~func_3(-480f, u_input.a.x, false)) % vec2<u32>(32u)));
    var var_2 = u_input.a.x;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(-321f, _wgslsmith_f_op_f32(ceil(-457f)), true))));
    let var_4 = _wgslsmith_f_op_f32(step(-428f, 1f));
    return u_input.a.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -425f, -1469f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, -502f, 154f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(705f, _wgslsmith_f_op_f32(select(arg_1.a, -882f, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -328f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2279f - 1000f), _wgslsmith_f_op_f32(abs(1717f)))))), true));
    var var_1 = vec2<bool>(any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), false);
    var var_2 = ~max(13654u, 1u);
    var_2 = u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: bool) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1318f, -2122f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-169f, -382f)))), global0[_wgslsmith_index_u32(~firstLeadingBit(func_2()), 11u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-2379f, _wgslsmith_f_op_f32(sign(-429f))))))));
    global0 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1849f, 1000f, _wgslsmith_f_op_f32(func_4(vec2<f32>(-244f, 1509f), Struct_1(625f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -697f) * -491f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1697f, 1565f, -287f, -701f)), _wgslsmith_div_vec4_f32(vec4<f32>(1111f, 1069f, 554f, 807f), vec4<f32>(-311f, 592f, 664f, 1382f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 1500f, -500f, -340f)))))))));
    let var_2 = Struct_5(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.a, u_input.a.x, u_input.b)), 11u)]), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec2<bool>(arg_2, arg_1.c));
    let var_3 = Struct_3(vec3<i32>(u_input.c, _wgslsmith_clamp_i32(abs(-44178i), ~(~u_input.c), -2147483647i), -105887i), min(arg_0, vec4<u32>(~39829u ^ ~arg_1.a, arg_1.a, ~_wgslsmith_mult_u32(arg_0.x, u_input.a.x), 10086u & _wgslsmith_mult_u32(u_input.a.x, 79106u))), Struct_2(global0[_wgslsmith_index_u32(61739u, 11u)]), Struct_1(var_2.b.a.a));
    return reverseBits(firstTrailingBit(-max(vec4<i32>(0i, -45096i, u_input.c, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, -39072i, arg_1.b), vec4<i32>(0i, 1524i, var_3.a.x, arg_1.b)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_5 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_0 = all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true), true), true)) | any(vec4<bool>((u_input.c >= u_input.c) && any(vec4<bool>(true, false, true, false)), select(arg_2.a.a <= arg_2.a.a, any(vec3<bool>(true, false, true)), true), u_input.c >= (u_input.c ^ u_input.c), true));
    global0 = array<Struct_1, 11>();
    return Struct_5(Struct_2(global0[_wgslsmith_index_u32(0u, 11u)]), arg_2, !select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(select(true, false, false), true), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    var var_0 = func_5(func_1(vec4<u32>(~5310u, u_input.a.x, u_input.a.x & u_input.a.x, 0u), Struct_4(~0u, -1i, true), true) ^ ~_wgslsmith_sub_vec4_i32(vec4<i32>(8249i, -27402i, -1i, -2775i), ~vec4<i32>(u_input.c, u_input.c, -1001i, u_input.c)), _wgslsmith_dot_vec2_u32(func_3(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(-1170f))), u_input.b, true), vec2<u32>(u_input.a.x, 450u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-871f)) + _wgslsmith_f_op_f32(1000f * 1000f)))), 877f);
    global0 = array<Struct_1, 11>();
    var var_1 = var_0.a;
    let var_2 = false;
    var_1 = var_0.a;
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.b, select(85115u, u_input.b, var_2))), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 44433u, 6180u), vec4<u32>(17444u, u_input.b, u_input.a.x, 0u)), ~(~vec4<u32>(1u, 1u, u_input.a.x, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2100f, _wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(-578f * -1883f)))), ~0u);
}

