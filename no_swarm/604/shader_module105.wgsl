struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(1u, 1172u), vec2<u32>(107285u, 1u), vec2<u32>(24298u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(18910u, 1u), vec2<u32>(4294967295u, 39437u), vec2<u32>(52048u, 4294967295u), vec2<u32>(1u, 19935u), vec2<u32>(50954u, 4294967295u), vec2<u32>(21769u, 1u), vec2<u32>(1u, 8810u), vec2<u32>(34517u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(72331u, 71949u), vec2<u32>(0u, 1483u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(all(vec3<bool>(true, false, true)), Struct_1(~select(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 23674u, u_input.a.x), vec3<bool>(false, true, true)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(38484u, 24614u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 89334u), vec3<u32>(32522u, 4294967295u, 4294967295u)) % vec3<u32>(32u)), abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(-27935i, -1i), vec2<i32>(0i, -25927i))), select(~(-10381i), 12828i, select(all(vec4<bool>(false, false, true, true)), false, true))), vec3<bool>(true, false, any(vec2<bool>(any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, false))))));
    var var_1 = ~_wgslsmith_dot_vec4_u32(reverseBits(~(~vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u))), vec4<u32>(~abs(var_0.b.a.x), _wgslsmith_sub_u32(0u | var_0.b.a.x, u_input.a.x & var_0.b.a.x), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(5782u, 4294967295u, 17313u), ~var_0.b.a)));
    global0 = array<vec2<u32>, 15>();
    var_1 = 0u;
    var var_2 = 0u;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(2642f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -447f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1194f))))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1450f)))) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) - 1161f) - 302f), -640f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -872f))))), _wgslsmith_f_op_f32(round(-413f))));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-(~37085i), -2147483647i), -_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 1i)), ~_wgslsmith_add_i32(1i, -56640i), select(31398i, _wgslsmith_add_i32(firstLeadingBit(18945i), ~(-1i)), false)), _wgslsmith_clamp_vec4_i32(abs(abs(~vec4<i32>(-3788i, 1i, -11535i, 3581i))), -reverseBits(~vec4<i32>(-19146i, 35911i, 6666i, 12185i)), _wgslsmith_sub_vec4_i32(-max(vec4<i32>(24516i, 1i, 2147483647i, -31146i), vec4<i32>(1i, -2147483647i, 2147483647i, -6757i)), vec4<i32>(1i, ~6140i, 0i, 1i))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-783f, 1000f) - _wgslsmith_f_op_f32(abs(var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * -412f)) * -333f), 694f, var_0.x);
    let var_2 = ~(~_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(74776u, u_input.a.x, u_input.a.x, u_input.a.x)), max(vec4<u32>(u_input.a.x, 17708u, 1u, 1u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_3 = vec3<bool>(!all(vec3<bool>(true, true, true)), !all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), all(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -298f) > _wgslsmith_f_op_f32(min(985f, var_0.x)), true)));
    return Struct_1(var_2.ywx, _wgslsmith_mod_vec2_i32(-vec2<i32>(abs(-56707i), ~var_1.x), -vec2<i32>(~var_1.x, ~var_1.x)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1.x, (41313i & var_1.x) ^ 1i), -firstTrailingBit(-7340i)));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(460f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(856f + 686f))))) < 250f, func_2(), select(vec3<bool>(arg_0, true, arg_0), select(!vec3<bool>(arg_0, true, arg_0), !vec3<bool>(true, true, arg_0), vec3<bool>(true, arg_0, arg_0)), true || select(select(arg_0, arg_0, true), true, true)));
    var_0 = Struct_2(false, Struct_1((vec3<u32>(var_0.b.a.x, var_0.b.a.x, u_input.a.x) << (var_0.b.a % vec3<u32>(32u))) ^ ~var_0.b.a, var_0.b.b, -2147483647i), var_0.c);
    global0 = array<vec2<u32>, 15>();
    var var_1 = all(var_0.c.zy);
    let var_2 = u_input.a.x;
    return select(vec2<bool>(var_0.a, arg_0), var_0.c.xx, select(!var_0.c.xy, var_0.c.yz, any(var_0.c.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 15>();
    var var_0 = Struct_4(_wgslsmith_div_u32(46670u | u_input.a.x, abs(~(~6211u))), _wgslsmith_f_op_f32(f32(-1f) * -1172f), vec2<i32>(0i, _wgslsmith_mult_i32(~reverseBits(60834i), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 0i, 14099i), vec3<i32>(-1i, -2147483647i, -67855i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 110171u) % vec3<u32>(32u))))));
    var_0 = Struct_4(4294967295u, var_0.b, abs(var_0.c));
    global0 = array<vec2<u32>, 15>();
    let var_1 = false;
    let var_2 = select(select(func_1(true), !select(vec2<bool>(true, var_1), func_1(var_1), false), false), !func_1(true), !(!vec2<bool>(var_1, var_1 & false)));
    var_0 = Struct_4(4294967295u, var_0.b, vec2<i32>(abs(-select(var_0.c.x, var_0.c.x, false)), var_0.c.x));
    let var_3 = u_input.a.x;
    let var_4 = min(~vec4<u32>(1u, 26067u, abs(18640u >> (var_0.a % 32u)), abs(~var_0.a)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_3, 45712u, var_3, var_3), ~vec4<u32>(var_0.a, u_input.a.x, 4294967295u, var_0.a)), min(vec4<u32>(4294967295u, 95193u, 4294967295u, u_input.a.x), vec4<u32>(47252u, 1u, 78156u, var_0.a)) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 17363u, var_3, 12791u), vec4<u32>(59197u, var_0.a, 4294967295u, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c.x, var_0.c.x), ~_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, 0i), var_0.c)), ~(~_wgslsmith_mod_u32(var_3, 1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(609f + 725f), var_0.b, -999f, _wgslsmith_f_op_f32(f32(-1f) * -108f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 298f, -334f, var_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 1343f, -2105f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, -129f, var_0.b, var_0.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -978f, -598f, var_0.b))))), var_0.b, var_0.c.x);
}

