struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 98216u);

var<private> global2: array<Struct_3, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32) -> vec3<f32> {
    let var_0 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(4294967295u, ~(~global1.x))), 23u)];
    let var_1 = Struct_3(any(vec4<bool>(true, false, false, !var_0.b.d.x)) | (_wgslsmith_sub_u32(firstTrailingBit(24031u), ~36155u) >= firstLeadingBit(reverseBits(62134u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, var_0.b.e))), ~(-(~arg_0.wxx)), abs(var_0.b.c), select(select(vec4<bool>(var_0.a, var_0.b.d.x, var_0.b.d.x, var_0.a), vec4<bool>(var_0.a, true, false, true), var_0.a), vec4<bool>(var_0.b.d.x, var_0.b.e > 847f, var_0.b.d.x, false), true || !var_0.b.d.x), var_0.b.a.x));
    let var_2 = ~vec3<i32>(0i, arg_2, 2147483647i);
    let var_3 = 88726u;
    var var_4 = !var_0.a;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 681f, 123f)) + vec3<f32>(496f, _wgslsmith_f_op_f32(-901f - var_0.b.a.x), var_1.b.a.x)), vec3<f32>(-944f, var_0.b.a.x, var_1.b.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1290f, 424f, 1633f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(986f, var_1.b.a.x, var_0.b.e) + vec3<f32>(-448f, 736f, 128f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.a.x, 394f, -1863f), vec3<f32>(var_1.b.e, var_1.b.a.x, -846f)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.b.x, 40260i, u_input.b.x, u_input.b.x), u_input.b.yy, -33128i)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(196f, -356f, -220f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, 706f, 782f))))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(~min(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x)))), ~((vec2<u32>(0u, 0u) ^ vec2<u32>(29018u, global1.x)) | (_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, 0u)) >> (max(vec2<u32>(21132u, global1.x), vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))))), 23u)];
    var_1 = global2[_wgslsmith_index_u32(0u, 23u)];
    global2 = array<Struct_3, 23>();
    global1 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_div_u32(global1.x, 1u), var_1.b.c.x), countOneBits(firstTrailingBit(global1.x)));
    return global0[_wgslsmith_index_u32(~(~60028u), 24u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    let var_0 = ~reverseBits(~_wgslsmith_add_vec3_u32(arg_0, arg_0));
    let var_1 = !select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(true, true))), vec2<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)) || true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = 1i;
    global0 = array<Struct_1, 24>();
    global2 = array<Struct_3, 23>();
    return Struct_2(!all(select(vec2<bool>(true, true), vec2<bool>(var_1.x, false), !var_1.x)), func_2(), func_2(), global0[_wgslsmith_index_u32(54260u, 24u)]);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    global0 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) + _wgslsmith_div_f32(278f, func_1(arg_3.b.c.zxy, _wgslsmith_sub_u32(1u, arg_2.c.c.x)).d.e)) * arg_0.b.e);
    var var_1 = Struct_3(true, Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.b.a * arg_0.b.a), ~(~vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), vec4<u32>(4294967295u, ~1u, ~arg_0.b.c.x, 0u) << (~arg_3.b.c % vec4<u32>(32u)), arg_0.b.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1468f), arg_2.d.d.x))));
    var var_2 = func_1(var_1.b.c.wxx, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.b.c.wwz, _wgslsmith_sub_vec3_u32(var_1.b.c.wwx, arg_2.c.c.xwy)), vec3<u32>(_wgslsmith_clamp_u32(global1.x, 2047u, 42756u), arg_2.d.c.x, 1u)), _wgslsmith_sub_u32(~arg_2.d.c.x, ~48932u))).c;
    global0 = array<Struct_1, 24>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global2[_wgslsmith_index_u32(23344u, 23u)], any(vec3<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(true, true, true)))), func_1(~abs(vec3<u32>(0u, 22366u, global1.x)), 17677u), global2[_wgslsmith_index_u32(global1.x, 23u)]);
    var var_1 = 0u;
    var var_2 = Struct_2(var_0 || (func_2().b.x <= -(~(-34669i))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1408f)) + 1194f), func_1(min(vec3<u32>(38104u, global1.x, 4294967295u), vec3<u32>(30183u, global1.x, global1.x)), global1.x).c.a.x), vec3<i32>(-2147483647i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-46044i, u_input.a, 0i), u_input.b)), vec4<u32>(func_2().c.x, 0u, global1.x, abs(~global1.x)), !select(func_1(vec3<u32>(1267u, global1.x, global1.x), 1u).d.d, select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0), false), var_0), _wgslsmith_f_op_f32(-1f)), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(308f, -1151f))))), _wgslsmith_mod_vec3_i32(-(vec3<i32>(37860i, u_input.b.x, -2147483647i) ^ vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_i32(reverseBits(u_input.b), u_input.b)), ~vec4<u32>(4294967295u, global1.x, 4294967295u, 29936u), !vec4<bool>(!var_0, u_input.a >= 61848i, true, all(vec2<bool>(true, var_0))), 1583f), func_1(reverseBits(~(~vec3<u32>(4294967295u, global1.x, 22087u))), 0u).c);
    let var_3 = func_1(max(~(~vec3<u32>(var_2.b.c.x, var_2.b.c.x, 72636u) ^ var_2.d.c.yzw), _wgslsmith_div_vec3_u32(vec3<u32>(abs(56946u), ~4294967295u, _wgslsmith_dot_vec4_u32(var_2.b.c, var_2.d.c)), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 59590u, var_2.d.c.x), var_2.d.c.wxy))), abs(global1.x));
    var var_4 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(6975u, var_3.b.c.x, var_2.c.c.x), var_2.d.c.ywz), ~vec3<u32>(var_3.c.c.x, 27578u, var_3.c.c.x)), var_3.d.c.zxz);
    var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~var_2.d.c.x), var_4.x, func_1(select(max(var_3.c.c.xyz, vec3<u32>(4294967295u, 4294967295u, 6954u)), ~vec3<u32>(var_4.x, var_3.c.c.x, var_4.x), var_3.b.d.xwy), _wgslsmith_mult_u32(var_3.d.c.x, func_1(vec3<u32>(var_4.x, var_2.c.c.x, var_4.x), var_3.c.c.x).c.c.x)).c.c.x), var_2.d.c.zxz | var_3.c.c.yzw);
    global2 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(1i, -70746i), -30726i, abs(28618i), u_input.a), -(~min(vec4<i32>(var_2.b.b.x, -40350i, -63441i, u_input.a), vec4<i32>(u_input.a, var_3.d.b.x, var_3.d.b.x, 28798i))), vec4<i32>(6678i, i32(-1i) * -26170i, i32(-1i) * -1i, ~min(var_3.b.b.x, var_2.c.b.x))), vec2<f32>(223f, _wgslsmith_f_op_f32(min(var_2.b.a.x, -1809f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_2.b.e)));
}

