struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec2<f32>(384f, 1833f), Struct_2(vec4<u32>(70051u, 4294967295u, 1u, 3200u), 4294967295u, true), vec3<bool>(true, true, false), -530f, vec4<bool>(true, false, true, false)), Struct_4(vec2<f32>(667f, 496f), Struct_2(vec4<u32>(0u, 11980u, 83034u, 4440u), 36116u, false), vec3<bool>(false, true, true), -390f, vec4<bool>(true, false, false, true)), Struct_4(vec2<f32>(297f, 1096f), Struct_2(vec4<u32>(24780u, 9119u, 0u, 4294967295u), 1u, false), vec3<bool>(false, true, false), 226f, vec4<bool>(true, true, true, true)), Struct_4(vec2<f32>(812f, 349f), Struct_2(vec4<u32>(24142u, 10494u, 4294967295u, 5555u), 42881u, true), vec3<bool>(false, false, true), -1933f, vec4<bool>(false, true, false, false)), Struct_4(vec2<f32>(-202f, -1121f), Struct_2(vec4<u32>(0u, 0u, 4294967295u, 30215u), 54517u, false), vec3<bool>(true, true, false), 1000f, vec4<bool>(false, true, true, false)), Struct_4(vec2<f32>(1924f, -1000f), Struct_2(vec4<u32>(1u, 21347u, 1u, 13383u), 15644u, false), vec3<bool>(true, false, true), -511f, vec4<bool>(true, false, true, false)), Struct_4(vec2<f32>(430f, 633f), Struct_2(vec4<u32>(0u, 1u, 0u, 0u), 4294967295u, false), vec3<bool>(false, false, false), -954f, vec4<bool>(true, false, false, true)), Struct_4(vec2<f32>(321f, -1000f), Struct_2(vec4<u32>(4294967295u, 0u, 0u, 55586u), 0u, true), vec3<bool>(true, false, true), -1748f, vec4<bool>(true, true, false, true)), Struct_4(vec2<f32>(-837f, 207f), Struct_2(vec4<u32>(4294967295u, 0u, 5017u, 0u), 4294967295u, false), vec3<bool>(false, true, false), 1272f, vec4<bool>(false, true, true, true)), Struct_4(vec2<f32>(-685f, 275f), Struct_2(vec4<u32>(89170u, 4294967295u, 31829u, 26713u), 6501u, true), vec3<bool>(false, true, true), -1496f, vec4<bool>(false, true, false, false)), Struct_4(vec2<f32>(-129f, 771f), Struct_2(vec4<u32>(0u, 82917u, 30206u, 4294967295u), 0u, false), vec3<bool>(true, false, true), -786f, vec4<bool>(false, false, false, false)), Struct_4(vec2<f32>(369f, -228f), Struct_2(vec4<u32>(29868u, 0u, 136774u, 47263u), 4294967295u, true), vec3<bool>(false, false, false), 847f, vec4<bool>(true, false, false, false)), Struct_4(vec2<f32>(1871f, 1514f), Struct_2(vec4<u32>(72927u, 1u, 24449u, 1u), 4294967295u, false), vec3<bool>(false, false, true), -876f, vec4<bool>(false, true, true, true)), Struct_4(vec2<f32>(169f, -439f), Struct_2(vec4<u32>(1u, 58685u, 32034u, 4294967295u), 1u, true), vec3<bool>(false, false, false), -236f, vec4<bool>(true, true, true, true)), Struct_4(vec2<f32>(-184f, 264f), Struct_2(vec4<u32>(32201u, 4294967295u, 54382u, 33608u), 11790u, true), vec3<bool>(true, false, true), -369f, vec4<bool>(true, false, true, false)));

var<private> global1: array<u32, 25>;

var<private> global2: array<Struct_2, 29>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> bool {
    global2 = array<Struct_2, 29>();
    global0 = array<Struct_4, 15>();
    var var_0 = u_input.b.x << (~100019u % 32u);
    global1 = array<u32, 25>();
    var var_1 = all(vec2<bool>(true, true));
    return false;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    let var_0 = vec4<bool>(true, false, func_2(true, Struct_3(-_wgslsmith_mod_vec2_i32(vec2<i32>(2111i, 8828i), vec2<i32>(-26698i, u_input.a)), ~_wgslsmith_dot_vec3_i32(u_input.c.wzw, vec3<i32>(-2147483647i, 41969i, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f + 378f)), false, !select(arg_0, vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, true)))), false);
    var var_1 = global0[_wgslsmith_index_u32(24507u, 15u)];
    global1 = array<u32, 25>();
    return 1u;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<u32>) -> vec3<i32> {
    let var_0 = ~countOneBits(-vec4<i32>(abs(1i), arg_0 & u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(5813i, u_input.c.x, -11480i), u_input.c.zwx), u_input.a));
    return _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(firstLeadingBit(vec3<i32>(-12554i, 19079i, 185i)) ^ ~vec3<i32>(u_input.c.x, var_0.x, 1i)), vec3<i32>(-20024i, 21874i, _wgslsmith_sub_i32(43944i, -60164i)) | var_0.ywy), _wgslsmith_mod_vec3_i32(vec3<i32>(~(~var_0.x), ~var_0.x, u_input.c.x), _wgslsmith_clamp_vec3_i32(-u_input.c.xyz, -var_0.xxx, vec3<i32>(arg_0, u_input.a, 1i)) << (_wgslsmith_clamp_vec3_u32(~u_input.e.zxy, vec3<u32>(u_input.e.x, arg_1.b, 0u), vec3<u32>(38670u, 2465u, u_input.b.x)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(151f + -833f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-753f, 814f), 1f, true)), -709f, _wgslsmith_div_f32(972f, _wgslsmith_div_f32(-1000f, -127f))));
    global0 = array<Struct_4, 15>();
    global1 = array<u32, 25>();
    global2 = array<Struct_2, 29>();
    let var_1 = global0[_wgslsmith_index_u32(0u, 15u)];
    global0 = array<Struct_4, 15>();
    var var_2 = func_3(u_input.c.x, Struct_1(201f, ~(150300u ^ var_1.b.b), u_input.e.xxy), vec3<u32>(func_1(select(vec3<bool>(var_1.e.x, var_1.e.x, var_1.b.c), vec3<bool>(var_1.e.x, false, true), vec3<bool>(var_1.c.x, var_1.e.x, var_1.e.x))) << (u_input.e.x % 32u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~41390u, 25u)], _wgslsmith_mod_u32(1u, ~u_input.d)), ~u_input.d), u_input.e.wyy);
    let x = u_input.a;
    s_output = StorageBuffer(-843f);
}

