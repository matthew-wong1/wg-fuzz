struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(12630i, vec4<bool>(true, false, true, false), false, 0u, 1000f), Struct_1(36981i, vec4<bool>(false, false, true, true), false, 43517u, 826f), Struct_1(43948i, vec4<bool>(true, false, true, false), true, 4294967295u, -443f), Struct_1(-33344i, vec4<bool>(true, true, false, false), false, 0u, -347f), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, true), true, 15562u, -1408f), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true), true, 4294967295u, -1000f), Struct_1(-10966i, vec4<bool>(true, false, false, false), false, 0u, 564f), Struct_1(-1i, vec4<bool>(true, true, true, true), false, 54407u, 367f), Struct_1(0i, vec4<bool>(true, true, false, true), false, 4294967295u, -627f), Struct_1(1i, vec4<bool>(false, false, false, false), false, 0u, -539f), Struct_1(-1i, vec4<bool>(true, true, false, false), false, 6888u, 837f), Struct_1(21502i, vec4<bool>(true, true, false, true), false, 45989u, -698f), Struct_1(-14451i, vec4<bool>(true, true, false, true), false, 8228u, 425f), Struct_1(-25603i, vec4<bool>(true, false, false, true), true, 4294967295u, 687f), Struct_1(37848i, vec4<bool>(false, true, false, true), false, 0u, 775f), Struct_1(-1i, vec4<bool>(true, true, false, true), true, 20191u, 1000f), Struct_1(-17089i, vec4<bool>(false, true, true, false), false, 48594u, -766f), Struct_1(0i, vec4<bool>(true, true, true, false), true, 4294967295u, 474f), Struct_1(i32(-2147483648), vec4<bool>(false, false, false, false), false, 1u, -585f), Struct_1(-4100i, vec4<bool>(false, false, true, true), true, 25204u, 369f), Struct_1(1i, vec4<bool>(true, true, false, false), false, 4294967295u, 728f));

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(-1i, vec4<bool>(true, true, true, true), true, 1u, -1108f), Struct_1(0i, vec4<bool>(false, false, false, true), false, 1u, -1000f), vec3<f32>(105f, -514f, -1642f), Struct_1(2147483647i, vec4<bool>(true, false, false, false), false, 4294967295u, 477f), Struct_1(31047i, vec4<bool>(false, false, true, true), false, 4294967295u, -322f)), Struct_2(Struct_1(41021i, vec4<bool>(true, true, false, false), true, 0u, 546f), Struct_1(10269i, vec4<bool>(true, false, false, true), false, 0u, -625f), vec3<f32>(1000f, 525f, 464f), Struct_1(-33419i, vec4<bool>(false, true, true, true), false, 60913u, -419f), Struct_1(0i, vec4<bool>(false, true, true, false), true, 4294967295u, 169f)), Struct_2(Struct_1(1i, vec4<bool>(true, false, false, true), true, 0u, 1561f), Struct_1(0i, vec4<bool>(true, true, false, false), true, 32752u, -1070f), vec3<f32>(390f, 1853f, -376f), Struct_1(-69404i, vec4<bool>(false, true, false, false), true, 4294967295u, 1465f), Struct_1(19779i, vec4<bool>(false, false, false, false), true, 0u, 1000f)), Struct_2(Struct_1(2147483647i, vec4<bool>(true, false, true, false), true, 28501u, -1024f), Struct_1(1i, vec4<bool>(false, false, false, true), false, 4294967295u, -1490f), vec3<f32>(2607f, -147f, 486f), Struct_1(-7775i, vec4<bool>(false, true, false, false), true, 82249u, -1941f), Struct_1(61031i, vec4<bool>(false, false, true, true), false, 0u, -192f)), Struct_2(Struct_1(10495i, vec4<bool>(false, false, false, false), true, 1240u, 3541f), Struct_1(i32(-2147483648), vec4<bool>(false, false, false, false), true, 0u, -2092f), vec3<f32>(1274f, 193f, -511f), Struct_1(6218i, vec4<bool>(false, true, false, false), false, 0u, -305f), Struct_1(2147483647i, vec4<bool>(true, true, false, true), false, 30324u, 509f)), Struct_2(Struct_1(2147483647i, vec4<bool>(false, false, false, true), true, 0u, -1260f), Struct_1(-3750i, vec4<bool>(false, false, false, true), true, 0u, -1842f), vec3<f32>(2199f, 1784f, -333f), Struct_1(29906i, vec4<bool>(false, false, false, true), false, 64766u, -186f), Struct_1(13437i, vec4<bool>(true, false, false, false), false, 42145u, -1000f)), Struct_2(Struct_1(3203i, vec4<bool>(false, false, false, true), true, 43388u, -779f), Struct_1(1i, vec4<bool>(true, false, true, true), true, 4294967295u, -591f), vec3<f32>(550f, -1000f, -588f), Struct_1(21099i, vec4<bool>(true, true, false, false), true, 73899u, -513f), Struct_1(-3065i, vec4<bool>(false, false, true, true), false, 1u, -1000f)), Struct_2(Struct_1(30770i, vec4<bool>(true, true, true, true), true, 1u, 360f), Struct_1(2147483647i, vec4<bool>(true, true, false, true), true, 4294967295u, -1299f), vec3<f32>(209f, 988f, -335f), Struct_1(9314i, vec4<bool>(true, true, false, false), true, 4294967295u, 342f), Struct_1(1863i, vec4<bool>(true, false, false, false), true, 0u, -1015f)), Struct_2(Struct_1(9552i, vec4<bool>(false, true, true, false), false, 4294967295u, 1502f), Struct_1(0i, vec4<bool>(false, true, true, false), true, 0u, 574f), vec3<f32>(-378f, -1216f, 1620f), Struct_1(26742i, vec4<bool>(false, false, false, false), true, 4294967295u, -272f), Struct_1(-1i, vec4<bool>(true, true, false, true), false, 1u, -424f)), Struct_2(Struct_1(25655i, vec4<bool>(false, false, true, false), true, 74502u, 1586f), Struct_1(-6485i, vec4<bool>(false, true, false, true), false, 0u, -713f), vec3<f32>(2235f, 975f, -1000f), Struct_1(-13529i, vec4<bool>(false, false, true, true), false, 20461u, -1043f), Struct_1(18318i, vec4<bool>(true, true, true, true), true, 65632u, 629f)), Struct_2(Struct_1(-22879i, vec4<bool>(true, false, false, true), true, 1u, 338f), Struct_1(37044i, vec4<bool>(true, true, false, true), false, 4294967295u, 408f), vec3<f32>(1124f, -420f, -125f), Struct_1(1i, vec4<bool>(false, false, false, false), false, 36714u, -738f), Struct_1(1i, vec4<bool>(false, true, false, false), true, 1u, 183f)), Struct_2(Struct_1(-7526i, vec4<bool>(false, true, true, false), true, 1u, -619f), Struct_1(-87316i, vec4<bool>(true, false, true, false), true, 2090u, 269f), vec3<f32>(-1793f, 921f, 1000f), Struct_1(2147483647i, vec4<bool>(false, true, false, true), true, 2303u, -538f), Struct_1(0i, vec4<bool>(true, false, false, false), false, 26698u, -550f)));

var<private> global2: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    return 53289u;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> f32 {
    global1 = array<Struct_2, 12>();
    global0 = array<Struct_1, 21>();
    let var_0 = arg_0;
    var var_1 = vec3<u32>(arg_0.x, 17476u >> (~4294967295u % 32u), 1u | _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0.x, arg_1.d.d, arg_1.b.d), vec3<u32>(arg_2.a.d, 24141u, 12891u)), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(arg_2.b.d, 13829u, 76530u))), 4294967295u));
    global2 = array<vec4<bool>, 16>();
    return _wgslsmith_f_op_f32(max(arg_1.d.e, -789f));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    global2 = array<vec4<bool>, 16>();
    let var_0 = 60910u;
    let var_1 = Struct_1(arg_3, !select(vec4<bool>(true, arg_1, false, arg_1), !global2[_wgslsmith_index_u32(12344u, 16u)], false), arg_1, var_0, -1193f);
    let var_2 = var_1.c;
    var var_3 = vec4<bool>(var_1.b.x, true, arg_1, all(!var_1.b.zx));
    return _wgslsmith_f_op_f32(func_2(vec4<u32>(~1u, _wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, arg_0.x, 1u), select(u_input.b, u_input.b, vec3<bool>(false, arg_1, false)))), 1926u, _wgslsmith_div_u32(u_input.d, ~u_input.d)), Struct_2(global0[_wgslsmith_index_u32(reverseBits(arg_0.x), 21u)], var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 2426f, arg_2.x) + vec3<f32>(var_1.e, arg_2.x, var_1.e)) + vec3<f32>(-1000f, 1198f, 1375f))), Struct_1(reverseBits(-1i), vec4<bool>(671f < arg_2.x, arg_1 & var_1.b.x, true, true), -1227f >= _wgslsmith_f_op_f32(trunc(var_1.e)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))), Struct_1(u_input.c.x, global2[_wgslsmith_index_u32(~var_1.d, 16u)], any(vec3<bool>(true, false, true)), _wgslsmith_clamp_u32(1u, max(12710u, var_1.d), ~var_1.d), 441f)), Struct_2(var_1, Struct_1(~abs(1i), vec4<bool>(true == arg_1, arg_1 & arg_1, var_3.x, true), all(vec3<bool>(var_1.c, false, var_2)), 12476u, _wgslsmith_f_op_f32(abs(1920f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.e, arg_2.x)), arg_2.x, arg_2.x))), Struct_1(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, u_input.c.x), vec2<i32>(-1i, u_input.c.x))), var_1.b, _wgslsmith_f_op_f32(select(var_1.e, 473f, var_1.b.x)) <= -936f, var_1.d ^ _wgslsmith_add_u32(arg_0.x, 37535u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.e, var_1.e)) + arg_2.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0.x | ~2264u, ~(0u << (1u % 32u))), 21u)]), _wgslsmith_dot_vec3_i32(-abs(u_input.c), reverseBits(u_input.c)) ^ max(_wgslsmith_div_i32(var_1.a ^ -61194i, reverseBits(u_input.c.x)), firstTrailingBit(u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<Struct_2, 12>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-588f + -181f), 934f, 1000f, -808f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) * _wgslsmith_f_op_f32(f32(-1f) * -2179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec4<u32>(u_input.b.x, 4294967295u, 53605u, 58371u), vec4<u32>(66183u, u_input.d, 19952u, u_input.b.x), global2[_wgslsmith_index_u32(81112u, 16u)]), global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(func_1(Struct_1(u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], true, u_input.b.x, -600f), vec4<u32>(43784u, 1u, 25914u, u_input.d), -492f), 12u)], 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1041f, 514f)))), !(!vec4<bool>(true, false & var_0, !var_0, var_0))));
    var var_2 = Struct_1(2147483647i, global2[_wgslsmith_index_u32(u_input.d & ~94826u, 16u)], var_0, 0u & (abs(abs(39634u)) & (25270u & u_input.b.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(func_3(reverseBits(~vec2<u32>(0u, 14471u)), false, var_1.xy, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.c.x, u_input.a.x, -2147483647i), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x))))));
    var var_3 = _wgslsmith_mod_vec4_i32(max(~(~vec4<i32>(u_input.c.x, -2147483647i, var_2.a, -2147483647i)), vec4<i32>(var_2.a ^ var_2.a, -u_input.a.x, 52085i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(17186i, u_input.a.x)))), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(5355i, u_input.a.x), firstTrailingBit(-1i), 20935i), _wgslsmith_mod_vec4_i32(vec4<i32>(9632i, var_2.a, var_2.a, u_input.c.x) & vec4<i32>(u_input.a.x, 0i, var_2.a, 54085i), ~vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, -1i)))) >> (~vec4<u32>(78032u, _wgslsmith_mult_u32(u_input.d >> (var_2.d % 32u), firstLeadingBit(u_input.b.x)), func_1(Struct_1(u_input.c.x, vec4<bool>(false, var_0, var_2.b.x, var_2.c), false, 64290u, 1000f), firstTrailingBit(vec4<u32>(var_2.d, var_2.d, 51487u, var_2.d)), 2334f), var_2.d) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -854f));
}

