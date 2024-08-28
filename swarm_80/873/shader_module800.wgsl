struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(-344f, -581f), vec2<f32>(1000f, -379f), vec2<f32>(-1230f, -826f), vec2<f32>(-583f, -448f), vec2<f32>(-351f, 137f), vec2<f32>(1126f, -459f), vec2<f32>(-1562f, 1070f), vec2<f32>(-182f, -1428f), vec2<f32>(1000f, -464f), vec2<f32>(-302f, -1192f), vec2<f32>(211f, 119f), vec2<f32>(100f, -552f), vec2<f32>(1662f, 886f), vec2<f32>(613f, 833f), vec2<f32>(-692f, -1011f), vec2<f32>(-146f, -403f), vec2<f32>(-438f, -171f), vec2<f32>(-848f, 641f), vec2<f32>(901f, 1959f), vec2<f32>(545f, 652f), vec2<f32>(2201f, -857f), vec2<f32>(-727f, -2478f), vec2<f32>(-1444f, -133f), vec2<f32>(-1000f, 1224f));

var<private> global1: array<vec3<i32>, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = arg_1;
    let var_1 = true;
    return vec4<bool>(!all(vec4<bool>(true, true, arg_0.e, false)), true, true, true);
}

fn func_3() -> bool {
    global1 = array<vec3<i32>, 19>();
    let var_0 = Struct_1(select(888f >= _wgslsmith_f_op_f32(trunc(1603f)), all(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 17719u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u)), ~1u) < u_input.c), 0i, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-122f, 393f)) * _wgslsmith_f_op_f32(f32(-1f) * -577f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-892f + _wgslsmith_f_op_f32(-1104f - 2122f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1354f * -141f))))), -2132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f))), ~_wgslsmith_div_u32(~u_input.c, u_input.c), true);
    global1 = array<vec3<i32>, 19>();
    let var_1 = Struct_1(false, -_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.b, -88798i), _wgslsmith_add_i32(var_0.b, 968i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, u_input.a.x, var_0.b), vec3<i32>(u_input.b, var_0.b, u_input.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 295f, var_0.c.x, var_0.c.x) - vec4<f32>(499f, var_0.c.x, -1383f, 913f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -114f) - var_0.c)))) + _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-var_0.c))), var_0.d, u_input.c <= ~1u);
    var var_2 = 1i;
    return !var_1.e;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1637f * 1000f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(768f, _wgslsmith_f_op_f32(-750f - _wgslsmith_div_f32(-1032f, 1395f))) + _wgslsmith_div_f32(-1242f, 632f)));
    var var_1 = !(!vec3<bool>(any(func_2(Struct_1(false, 37234i, vec4<f32>(812f, -1415f, -233f, 1429f), u_input.c, false), Struct_1(true, -9584i, vec4<f32>(-626f, 713f, -610f, 1053f), 4294967295u, true))), (u_input.c >> (u_input.c % 32u)) >= 36846u, true));
    return Struct_1(!any(!vec2<bool>(var_1.x, false)), countOneBits(-23280i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(343f, 1533f, -1000f, -875f), vec4<f32>(-521f, -1913f, -432f, 214f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1632f, -883f, -1626f, -605f), vec4<f32>(-1000f, 1438f, 1814f, -182f), vec4<bool>(false, var_1.x, false, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1793f, 565f, -1299f, 181f) * vec4<f32>(-707f, -1235f, -1088f, -723f))))))), firstLeadingBit(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(u_input.c << (54569u % 32u), ~107551u))), select(!(func_3() | (var_1.x && true)), !var_1.x, all(vec4<bool>(any(vec4<bool>(true, true, true, var_1.x)), all(vec4<bool>(var_1.x, true, false, false)), var_1.x, false))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = arg_1.c.wzx;
    let var_1 = _wgslsmith_f_op_f32(step(-1055f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_1.c.x)))), arg_2))));
    var var_2 = Struct_1(arg_2 >= _wgslsmith_f_op_f32(-var_1), 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 742f, 218f), vec4<f32>(628f, arg_2, arg_1.c.x, var_0.x)))))), arg_1.d << (u_input.c % 32u), arg_1.e);
    var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, 516f, arg_2));
    return _wgslsmith_sub_u32(max(arg_1.d, firstLeadingBit(_wgslsmith_mod_u32(~arg_1.d, var_2.d))), firstLeadingBit(~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_4(~vec2<i32>(u_input.a.x, 49219i), func_1(), 940f)) <= u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(min(u_input.c, _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(40303u, u_input.c, u_input.c), vec3<u32>(94076u, 0u, 61468u)), ~u_input.c ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 67636u, u_input.c), vec3<u32>(u_input.c, 9566u, u_input.c)))), 24u)]);
    let var_2 = Struct_1(true, _wgslsmith_dot_vec2_i32(~(-_wgslsmith_mult_vec2_i32(u_input.a.zz, u_input.a.wx)), u_input.a.yz), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_1.x, 627f)))), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, func_4(vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(false, u_input.a.x, vec4<f32>(var_1.x, 1000f, 1465f, -1018f), u_input.c, false), -288f)), 4294967295u), ~countOneBits(36989i) != -u_input.a.x);
    var var_3 = func_1();
    let var_4 = var_2.c.zxy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(abs(-_wgslsmith_div_i32(-16301i, var_2.b)), ~var_3.b), var_1.x);
}

