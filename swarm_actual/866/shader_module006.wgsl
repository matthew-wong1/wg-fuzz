struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(3469i, 2147483647i), vec2<i32>(20147i, 19799i), vec2<i32>(-1i, 25178i), vec2<i32>(-91167i, -49235i), vec2<i32>(i32(-2147483648), 21117i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = vec2<bool>(true, arg_0.a.x);
    let var_0 = _wgslsmith_f_op_f32(sign(global1.x));
    let var_1 = true;
    var var_2 = true;
    var var_3 = Struct_1(~vec2<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_div_u32(50562u, arg_0.e), u_input.b << (0u % 32u)), arg_0.d.a.x | ~14665u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))));
    return arg_0.a.x;
}

fn func_2() -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x), -2044f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f))));
    global2 = array<vec2<i32>, 5>();
    return Struct_2(select(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, u_input.b >= u_input.b, true, true), select(vec4<bool>(false, false, true, global0.x), select(vec4<bool>(false, global0.x, true, true), vec4<bool>(true, true, false, global0.x), true), true)), vec4<bool>(func_3(Struct_2(vec4<bool>(false, false, true, false), vec3<i32>(u_input.c, u_input.c, u_input.a.x), vec3<f32>(105f, -426f, global1.x), Struct_1(vec2<u32>(u_input.b, u_input.b), global1.x), 1u)), all(!vec3<bool>(global0.x, global0.x, global0.x)), !global0.x, all(select(vec3<bool>(false, global0.x, false), vec3<bool>(false, global0.x, global0.x), global0.x))), global0.x || true), vec3<i32>(~1i, u_input.c, _wgslsmith_clamp_i32(u_input.c, 0i, -59478i)), vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), global1.x, _wgslsmith_f_op_f32(max(-340f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(399f, 1000f))))), Struct_1(vec2<u32>(1u, reverseBits(u_input.b)) >> (~vec2<u32>(u_input.b, 20845u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-457f, global1.x, false))))), 0u);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = arg_0.d;
    let var_2 = _wgslsmith_f_op_f32(407f + _wgslsmith_f_op_f32(-global1.x));
    global0 = vec2<bool>(arg_1.x, arg_0.a.x);
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(floor(1138f)), _wgslsmith_f_op_f32(var_2 * global1.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1851f, var_2, -313f), var_0.c) + _wgslsmith_f_op_vec3_f32(vec3<f32>(999f, arg_0.c.x, var_2) * vec3<f32>(-247f, 327f, 1091f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) + vec3<f32>(_wgslsmith_div_f32(346f, -1509f), global1.x, _wgslsmith_f_op_f32(-var_0.d.b)))));
    return Struct_1(vec2<u32>(9148u, reverseBits(_wgslsmith_mod_u32(~var_0.e, ~var_1.a.x))), var_2);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_mod_u32(4294967295u, u_input.b);
    let var_1 = func_2();
    global0 = !select(vec2<bool>((1u & var_0) <= 87294u, any(select(vec3<bool>(var_1.a.x, true, var_1.a.x), var_1.a.wyy, arg_1.a.xwx))), !vec2<bool>(false, var_1.a.x), !arg_1.a.wy);
    global2 = array<vec2<i32>, 5>();
    var var_2 = 0i;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(func_4(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 0u)), global1.x), Struct_2(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), true), u_input.a >> (vec3<u32>(u_input.b, 10387u, u_input.b) % vec3<u32>(32u)), vec3<f32>(global1.x, global1.x, -1082f), func_1(Struct_2(vec4<bool>(global0.x, global0.x, global0.x, global0.x), u_input.a, vec3<f32>(global1.x, global1.x, -224f), Struct_1(vec2<u32>(33638u, 0u), global1.x), u_input.b), vec4<bool>(true, global0.x, global0.x, global0.x)), 83313u)), true), !(!vec2<bool>(true, !global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-857f))) - global1.x) >= -1260f);
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(reverseBits(u_input.b), u_input.b) << (firstTrailingBit(1u) % 32u), u_input.b, 45991u, ~u_input.b), ~_wgslsmith_clamp_vec4_u32((vec4<u32>(u_input.b, 4294967295u, 9168u, 1197u) | vec4<u32>(4294967295u, u_input.b, u_input.b, 0u)) | vec4<u32>(1u, 1u, u_input.b, u_input.b), firstLeadingBit(~vec4<u32>(1u, 72139u, 42397u, u_input.b)), vec4<u32>(reverseBits(u_input.b), reverseBits(1u), u_input.b & 1u, reverseBits(2756u))));
    var var_2 = !vec2<bool>(!any(select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, global0.x), false)), true | global0.x);
    global1 = vec3<f32>(-382f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * -692f) + global1.x)));
    global2 = array<vec2<i32>, 5>();
    let var_3 = func_2().d;
    let var_4 = select(u_input.a, u_input.a, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(11962i, firstLeadingBit(-u_input.a.x), var_4.x, _wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.a.x, -35313i), -9099i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.x, 1444f, 955f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1937f, -170f, -589f, -1287f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 1000f, -2171f, global1.x)))))), _wgslsmith_f_op_f32(exp2(var_3.b)), ~30614u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.b, global1.x), vec2<f32>(var_3.b, 634f), true)))) - global1.yx));
}

