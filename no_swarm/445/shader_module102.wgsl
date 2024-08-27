struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec3<u32>(0u, 1415u, 1u), 4294967295u, vec4<i32>(0i, 2147483647i, 22060i, -1i))), Struct_2(Struct_1(vec3<u32>(21942u, 1u, 30700u), 4294967295u, vec4<i32>(-1i, 1i, 0i, 2887i))), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u), 4294967295u, vec4<i32>(16053i, 2147483647i, 1i, 7518i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 21060u), 1u, vec4<i32>(-1i, -56441i, 2147483647i, -71277i))), Struct_2(Struct_1(vec3<u32>(56936u, 44611u, 1u), 0u, vec4<i32>(35325i, -19905i, -20088i, -62594i))), Struct_2(Struct_1(vec3<u32>(0u, 44791u, 45069u), 1u, vec4<i32>(0i, -4713i, 0i, 26941i))), Struct_2(Struct_1(vec3<u32>(16914u, 0u, 38392u), 47840u, vec4<i32>(1i, 1326i, -1i, -41985i))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 36621u), 52388u, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -11310i))), Struct_2(Struct_1(vec3<u32>(32284u, 1u, 34345u), 96632u, vec4<i32>(1i, -49395i, -10337i, 1i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), 4294967295u, vec4<i32>(19764i, 1i, 1i, -50822i))), Struct_2(Struct_1(vec3<u32>(50586u, 65884u, 0u), 24356u, vec4<i32>(9366i, -1i, 2147483647i, -4488i))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 4294967295u), 1u, vec4<i32>(2147483647i, 2147483647i, 9753i, -61250i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 15058u, 84864u), 1u, vec4<i32>(0i, 2147483647i, -10068i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(0u, 1u, 0u), 4294967295u, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -23355i))), Struct_2(Struct_1(vec3<u32>(1u, 63894u, 16119u), 0u, vec4<i32>(75806i, 10501i, -54609i, 0i))), Struct_2(Struct_1(vec3<u32>(1u, 42454u, 1u), 37661u, vec4<i32>(i32(-2147483648), -48065i, -2095i, -12152i))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 41537u), 12982u, vec4<i32>(2147483647i, 2147483647i, -82736i, -17074i))), Struct_2(Struct_1(vec3<u32>(1804u, 0u, 5087u), 4294967295u, vec4<i32>(-7842i, -22830i, -5285i, 5763i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 25186u, 1u), 4527u, vec4<i32>(-2094i, 1i, -17838i, -4690i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 70799u, 79129u), 3258u, vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 50000u), 1u, vec4<i32>(3805i, 27599i, -11747i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(22685u, 0u, 3187u), 0u, vec4<i32>(40858i, 2147483647i, 161i, -23127i))), Struct_2(Struct_1(vec3<u32>(1u, 59289u, 4294967295u), 0u, vec4<i32>(2147483647i, -1i, -1i, 5841i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 6593u), 4294967295u, vec4<i32>(-18972i, -44967i, 1i, 52456i))), Struct_2(Struct_1(vec3<u32>(125096u, 64438u, 4294967295u), 123594u, vec4<i32>(-62043i, 13831i, -1i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(16666u, 0u, 32597u), 16855u, vec4<i32>(25948i, i32(-2147483648), 0i, 24542i))), Struct_2(Struct_1(vec3<u32>(14315u, 10052u, 0u), 4294967295u, vec4<i32>(-27778i, -1i, -12333i, 0i))), Struct_2(Struct_1(vec3<u32>(0u, 0u, 44976u), 4294967295u, vec4<i32>(i32(-2147483648), 51755i, 2147483647i, 1i))), Struct_2(Struct_1(vec3<u32>(1u, 1u, 33555u), 28225u, vec4<i32>(-1i, 1i, -53148i, 0i))));

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(arg_1.x, global3.x, u_input.b), 22017u, -countOneBits(~(~vec4<i32>(u_input.a, 521i, u_input.a, 0i))));
    let var_1 = ~_wgslsmith_mult_i32(~_wgslsmith_mult_i32(1i, -u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-9046i, var_0.c.x, -1i), var_0.c.xzw) | ~(-2147483647i));
    global1 = array<vec3<i32>, 30>();
    global3 = ~(~(~vec4<u32>(_wgslsmith_div_u32(global3.x, global3.x), 1u, _wgslsmith_add_u32(u_input.b, 15446u), arg_1.x)));
    global0 = arg_0;
    return var_0;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-842f - 310f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1652f, -644f))) - _wgslsmith_f_op_f32(f32(-1f) * -467f))));
    global2 = array<Struct_2, 29>();
    global3 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(0u, firstTrailingBit(~arg_1.a.x)), ~20584u, min(arg_3 ^ arg_3, abs(u_input.b)) & _wgslsmith_mod_u32(max(1158u, global3.x), 95636u), ~48311u), ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, arg_1.b, u_input.b, 1u), vec4<u32>(4294967295u, arg_1.a.x, 4294967295u, global3.x)) >> (~vec4<u32>(u_input.b, 43280u, 27035u, arg_3) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(21177u, global3.x, 1998u, arg_1.b), vec4<u32>(global3.x, arg_3, 1u, global3.x)), min(vec4<u32>(global3.x, u_input.b, 80913u, 40618u), vec4<u32>(0u, 81205u, 4294967295u, u_input.b)))));
    var var_1 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2136f - -320f)))))), ~(~firstLeadingBit(vec3<u32>(79187u, global3.x, 4294967295u))) ^ global3.xyx);
    global1 = array<vec3<i32>, 30>();
    return _wgslsmith_sub_vec3_u32(reverseBits(max(arg_1.a & ~arg_1.a, select(firstTrailingBit(vec3<u32>(var_1.a.x, var_1.a.x, arg_3)), vec3<u32>(71055u, 99434u, global3.x), vec3<bool>(arg_2, true, arg_2)))), vec3<u32>(countOneBits(~arg_3), 4294967295u << (func_2(_wgslsmith_f_op_f32(-594f - 1716f), vec3<u32>(var_1.b, 4294967295u, 0u)).b % 32u), global3.x));
}

fn func_1() -> vec4<u32> {
    let var_0 = firstTrailingBit(global3.x) << (83590u % 32u);
    var var_1 = Struct_2(Struct_1(func_3(_wgslsmith_sub_i32(u_input.a, u_input.a ^ -17112i), func_2(-924f, global3.yyx & global3.wyy), all(vec4<bool>(false, true, true, true)) & all(vec3<bool>(false, false, false)), global3.x), 0u, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 0i, 11898i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), vec4<i32>(u_input.a, u_input.a, -23204i, 26893i)) | select(-vec4<i32>(0i, u_input.a, u_input.a, -41223i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i), vec4<bool>(true, true, true, true))));
    var var_2 = vec2<bool>(_wgslsmith_div_i32(-15764i, u_input.a) < ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 6778i), var_1.a.c.xw), !any(vec2<bool>(true, true)) || true);
    var_1 = Struct_2(var_1.a);
    var var_3 = ~var_1.a.b & ~(~var_1.a.a.x);
    return ~((select(_wgslsmith_mult_vec4_u32(vec4<u32>(73649u, var_0, 4294967295u, 15427u), vec4<u32>(4294967295u, global3.x, 0u, 0u)), vec4<u32>(var_1.a.a.x, 4294967295u, global3.x, 7154u), all(vec3<bool>(true, var_2.x, true))) | max(vec4<u32>(1u, var_1.a.b, 8727u, var_1.a.b), reverseBits(vec4<u32>(0u, u_input.b, u_input.b, 63179u)))) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 2749u, var_0, global3.x), vec4<u32>(global3.x, var_0, u_input.b, global3.x)), ~vec4<u32>(u_input.b, global3.x, u_input.b, 71531u)), vec4<u32>(8181u, abs(0u), abs(22522u), var_1.a.b)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_sub_vec3_u32(max(global3.zzx, min(select(vec3<u32>(61256u, arg_1.x, 1u), arg_1.zyx, vec3<bool>(true, true, true)), global3.xyw)), vec3<u32>(_wgslsmith_add_u32(u_input.b, arg_1.x), 0u >> (global3.x % 32u), 98328u));
    let var_1 = arg_0;
    let var_2 = ~min(~(_wgslsmith_dot_vec3_u32(arg_1.yxz, vec3<u32>(1u, var_0.x, 1510u)) >> (~global3.x % 32u)), _wgslsmith_mod_u32(countOneBits(23472u | var_0.x), global3.x));
    var var_3 = vec3<u32>(1u, var_0.x, arg_1.x);
    var var_4 = vec4<bool>(any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), true, all(vec4<bool>(true, false && (u_input.b > arg_1.x), true, true)), false);
    return Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(68754u, u_input.b, arg_1.x), vec3<u32>(var_0.x, 4294967295u, u_input.b), _wgslsmith_mult_vec3_u32(arg_1.xwz, vec3<u32>(u_input.b, var_3.x, 4294967295u))) >> (var_0 % vec3<u32>(32u)), func_2(493f, ~_wgslsmith_mod_vec3_u32(var_0, arg_1.wzw)).b, ~vec4<i32>(0i & u_input.a, -33116i, -u_input.a, _wgslsmith_clamp_i32(-43564i, u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(countOneBits(u_input.a), u_input.a, _wgslsmith_mod_i32(-u_input.a, -2147483647i));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1483f))), ~(~(~func_1())));
    var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(abs(func_2(-537f, vec3<u32>(u_input.b, var_1.a.b, 4294967295u)).c.xz), var_0.xx), max(var_0.x, func_2(1000f, func_1().ywz).c.x), _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-8882i, 19189i), vec2<i32>(1i, var_1.a.c.x)), -38092i)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-(global1[_wgslsmith_index_u32(global3.x, 30u)] & global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)]), var_1.a.c.yyw), abs(var_1.a.c.xyx)));
    var var_2 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1237f))), global3.zxx).b;
    let var_3 = var_1;
    let var_4 = vec4<u32>(global3.x, u_input.b, ~(~1u) << (abs(_wgslsmith_mult_u32(global3.x, ~0u)) % 32u), u_input.b << (((countOneBits(26096u) | global3.x) & 48385u) % 32u));
    global0 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c.wz, -25713i, 1u | ~func_4(_wgslsmith_f_op_f32(min(113f, 1000f)), _wgslsmith_sub_vec4_u32(var_4, vec4<u32>(65191u, 41051u, global3.x, 4294967295u))).a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1419f)), -599f, 1331f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1680f)))));
}

