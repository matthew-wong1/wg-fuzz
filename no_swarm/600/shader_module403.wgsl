struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = 1u;
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(0u), ~min(68618u, arg_0.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 22905u) >> (vec2<u32>(52500u, var_0) % vec2<u32>(32u)), arg_0.yz)) | arg_0.yz;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-537f, _wgslsmith_f_op_f32(-arg_1.c))));
    var_1 = _wgslsmith_clamp_u32(~(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(var_2.x, var_0)) & 20968u), 15789u, ~(~(~_wgslsmith_add_u32(u_input.a, 51429u))));
    return !select(!select(select(arg_3, vec4<bool>(true, arg_3.x, arg_3.x, false), arg_3.x), arg_3, select(arg_3, vec4<bool>(arg_2.b.x, false, arg_1.a, arg_3.x), true)), vec4<bool>(!arg_2.a, !arg_3.x, false, false), select(select(vec4<bool>(false, false, arg_2.a, true), !arg_3, false), !select(vec4<bool>(false, arg_2.b.x, arg_3.x, true), vec4<bool>(false, arg_3.x, true, false), arg_3), select(!arg_3, select(vec4<bool>(true, true, true, false), vec4<bool>(arg_2.a, arg_1.a, false, arg_2.a), vec4<bool>(false, arg_2.b.x, true, true)), arg_2.a)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_3(true, select(vec2<bool>(all(func_3(vec3<u32>(26245u, 770u, u_input.a), Struct_3(arg_2, arg_0.b, arg_1.x), arg_0, vec4<bool>(arg_0.b.x, arg_2, true, false))), arg_2), arg_0.b, arg_0.b), _wgslsmith_f_op_f32(sign(-928f)));
    return Struct_2(5292u);
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(min(27276u, arg_0.a));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1239f, 2184f)))) != 620f, vec2<bool>(true, true), 816f);
    var_0 = Struct_1(abs(~(19949u << (arg_0.a % 32u))) >> (~(~arg_0.a) % 32u));
    let var_2 = min(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.a, 4294967295u), 0u), ~16465u | arg_0.a, 93565u, _wgslsmith_mod_u32(~u_input.a, 29053u >> (var_0.a % 32u))), ~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(41068u, u_input.a, 1u, var_0.a)), ~vec4<u32>(4294967295u, 1u, u_input.a, arg_0.a), firstLeadingBit(vec4<u32>(22407u, var_0.a, 0u, 0u)))), vec4<u32>(min(~(~u_input.a), 55977u), firstLeadingBit(27677u), ~_wgslsmith_clamp_u32(u_input.a, ~51616u, func_2(Struct_3(false, var_1.b, var_1.c), vec4<f32>(-741f, -1754f, var_1.c, -1235f), var_1.a).a), var_0.a));
    var_0 = Struct_1(~(~(~1u)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-277f, 2106f, -587f), vec3<f32>(var_1.c, var_1.c, var_1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2492f, var_1.c, 1486f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c, var_1.c, var_1.c), vec3<f32>(var_1.c, -1000f, var_1.c)))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -329f), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(234f - -1000f)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = -(~(-_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-18068i, -13280i, 1i, -19424i), vec4<i32>(-1i, 1i, -1i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(vec4<i32>(58725i, -1i, -2147483647i, 2147483647i)))));
    var var_1 = arg_1.x;
    var_0 = -(_wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, -2147483647i, 25299i), vec4<i32>(var_0.x, 51314i, -718i, 0i), vec4<i32>(var_0.x, -28180i, 1i, var_0.x))), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.x, var_0.x, 0i), vec4<i32>(0i, 1i, -2147483647i, 1i)))) ^ (vec4<i32>(~var_0.x, abs(85423i), firstLeadingBit(-72042i), var_0.x | 38453i) & vec4<i32>(~(-2147483647i), -1i, min(var_0.x, var_0.x), -83236i)));
    let var_2 = arg_1.x;
    var var_3 = Struct_1(1u);
    return _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(0u, 1u) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_sub_u32(4294967295u, var_3.a), 22790u)), ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(69645u, 0u, 22639u), vec3<u32>(4294967295u, 0u, 22059u)), 42413u)));
}

fn func_1() -> vec3<u32> {
    var var_0 = 0u;
    var_0 = u_input.a & firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), (vec4<u32>(1u, 0u, u_input.a, 1414u) & vec4<u32>(u_input.a, 0u, 37168u, u_input.a)) ^ vec4<u32>(45641u, 8344u, u_input.a, u_input.a)));
    var_0 = ~(~func_5(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_3(true, vec2<bool>(false, false), -417f), vec4<f32>(-377f, 1000f, -568f, 742f), true))), Struct_2(~3195u)));
    let var_1 = 16109i;
    var_0 = 4294967295u;
    return abs(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(u_input.a, u_input.a, 58334u), abs(vec3<u32>(58186u, 4294967295u, u_input.a) & vec3<u32>(37282u, u_input.a, u_input.a))), ~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, 0u)), vec3<u32>(4982u, u_input.a, 23964u))));
}

fn func_6(arg_0: u32, arg_1: u32) -> Struct_3 {
    let var_0 = arg_1;
    return Struct_3(true, vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(u_input.a))).x - -233f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1179f - 878f) - _wgslsmith_f_op_f32(-1000f - -739f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(107263u))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_add_i32(-1i, select(var_0, i32(-1i) * -2147483647i, var_0 <= ~(i32(-1i) * -39736i)));
    var var_2 = firstTrailingBit(select(firstTrailingBit(select(vec3<u32>(u_input.a, 6562u, 22783u), ~vec3<u32>(u_input.a, 25282u, u_input.a), vec3<bool>(true, true, true))), select(reverseBits(min(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(34252u, u_input.a, u_input.a))), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(52796u, u_input.a, 1u))), vec3<bool>(select(false, false, false), true, true)), !all(vec4<bool>(true, true, true, true))));
    let var_3 = func_6(_wgslsmith_div_u32(13822u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 9459u, u_input.a) >> ((vec3<u32>(4294967295u, 0u, 52905u) ^ vec3<u32>(13716u, var_2.x, 50148u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(func_1(), firstTrailingBit(vec3<u32>(var_2.x, var_2.x, 1u))))), ~_wgslsmith_mult_u32(48229u, 0u));
    var var_4 = firstLeadingBit(-abs(countOneBits(~vec2<i32>(var_0, -1i))));
    var var_5 = var_3.b.x || (var_3.c > var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(vec3<i32>(2147483647i, var_0, 26718i), min(vec3<i32>(16270i, var_0, var_0), vec3<i32>(var_4.x, -5753i, 8877i)))) << (~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, var_2.x, 10576u), vec3<u32>(var_2.x, 74318u, u_input.a)) % vec3<u32>(32u)));
}

