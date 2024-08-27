struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(903f, -1548f), vec2<f32>(-146f, -263f), vec2<f32>(-119f, 542f), vec2<f32>(-1092f, 1000f), vec2<f32>(1374f, -916f), vec2<f32>(-706f, 341f), vec2<f32>(265f, -890f), vec2<f32>(1763f, -1000f), vec2<f32>(329f, -774f), vec2<f32>(1202f, -740f), vec2<f32>(523f, 1596f), vec2<f32>(-2027f, 1000f), vec2<f32>(853f, 1531f), vec2<f32>(-580f, -1177f), vec2<f32>(-1192f, 415f), vec2<f32>(-846f, -353f), vec2<f32>(-996f, 1000f), vec2<f32>(-725f, 159f), vec2<f32>(-1000f, -522f), vec2<f32>(-303f, 140f), vec2<f32>(346f, -394f), vec2<f32>(-1080f, -262f), vec2<f32>(209f, 470f), vec2<f32>(1895f, 282f));

var<private> global1: u32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = arg_1.e.x;
    global0 = array<vec2<f32>, 24>();
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, abs(abs(9701u)), ~4294967295u, u_input.d), ~(vec4<u32>(0u, 13902u, 1u, arg_1.a) & vec4<u32>(u_input.c, u_input.b, 32305u, arg_1.a)) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.b) ^ vec4<u32>(arg_1.a, u_input.a.x, u_input.c, 126221u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a, 43175u, 85866u, u_input.a.x), vec4<u32>(arg_1.a, arg_1.a, u_input.d, u_input.a.x)))), vec4<u32>(1u, 9648u, ~u_input.c, _wgslsmith_mod_u32(arg_1.a, ~1u)));
    var var_2 = (_wgslsmith_sub_i32(-(~1i), u_input.e.x | (u_input.e.x >> (149227u % 32u))) >> (reverseBits(0u >> (var_1.x % 32u)) % 32u)) & 32051i;
    let var_3 = arg_1;
    return true;
}

fn func_2() -> f32 {
    let var_0 = select(vec4<bool>(!(true && all(vec4<bool>(true, false, false, true))), !(!func_3(global0[_wgslsmith_index_u32(8457u, 24u)], Struct_1(u_input.b, -21841i, vec4<bool>(false, true, false, false), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), -289f)), any(vec4<bool>(true, true, true, true)), false), select(vec4<bool>(true, true, true || all(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, false, false)) || true), vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 24u)]), Struct_1(66968u, 0i, vec4<bool>(false, true, false, true), u_input.e.xxx, vec3<i32>(-16532i, -48486i, 209i)), _wgslsmith_f_op_f32(661f + 1000f)), true, select(true, true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, -723f, 2089f, -414f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1118f, -355f, -644f, 221f), vec4<f32>(249f, 589f, -148f, 1494f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1041f, 481f, -2200f, -119f) - vec4<f32>(-226f, -1000f, -445f, 585f)), !vec4<bool>(false, true, var_0.x, var_0.x))))))));
    var var_2 = firstLeadingBit(-u_input.e.x);
    let var_3 = !(!var_0.x);
    let var_4 = ~(~(firstLeadingBit(~vec2<i32>(u_input.e.x, -38238i)) << (select(firstLeadingBit(u_input.a.yx), countOneBits(u_input.a.zx), false) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2709f)), _wgslsmith_mod_u32(u_input.c, 18364u) >= countOneBits(1u))), -830f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec2<f32>, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(arg_0.zyz));
    global0 = array<vec2<f32>, 24>();
    let var_1 = arg_3;
    global1 = arg_3.a.x;
    return Struct_1(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(9109u, firstLeadingBit(arg_3.a.x)), 4294967295u), -u_input.e.x, select(select(select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), !vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(arg_1, true, true, arg_1)), select(!vec4<bool>(arg_1, arg_1, true, false), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, arg_1, false, false), false), arg_1), !arg_1), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1)))), ~(~vec3<i32>(-u_input.e.x, 17582i, u_input.e.x)), ~(-u_input.e.zyy) >> (_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(arg_3.a.x, ~1u, ~arg_3.a.x)) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(u_input.a);
    var var_1 = ~abs(-4447i);
    var var_2 = !(!arg_0.c.x);
    return Struct_1(~(~_wgslsmith_clamp_u32(arg_0.a, 32381u, abs(1u))), _wgslsmith_clamp_i32(arg_0.d.x & _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.x, arg_1.x), ~(-4972i)), _wgslsmith_div_i32(~(~(-7428i)), ~(i32(-1i) * -5088i)), firstTrailingBit(i32(-1i) * -1i)), arg_0.c, arg_0.e >> (var_0.a % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~(~(u_input.e.xzx >> (vec3<u32>(0u, 50648u, u_input.d) % vec3<u32>(32u)))), _wgslsmith_add_vec3_i32(arg_0.d, vec3<i32>(_wgslsmith_mod_i32(arg_0.b, -1i), _wgslsmith_mult_i32(u_input.e.x, 2147483647i), i32(-1i) * -2147483647i))));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(2147483647i, ~u_input.e.x);
    return Struct_2(_wgslsmith_add_vec3_u32(u_input.a, u_input.a));
}

fn func_1() -> u32 {
    global0 = array<vec2<f32>, 24>();
    var var_0 = !any(vec2<bool>(true, true));
    var var_1 = _wgslsmith_sub_i32(~u_input.e.x << (~8393u % 32u), u_input.e.x);
    var var_2 = Struct_1(_wgslsmith_add_u32(1u, u_input.b), i32(-1i) * -reverseBits(0i), vec4<bool>((true || any(vec3<bool>(true, true, true))) | false, false, true, all(vec2<bool>(true, true))), -max(countOneBits(u_input.e.xzz), vec3<i32>(-50173i, u_input.e.x, u_input.e.x)), u_input.e.wwz);
    var var_3 = func_6(func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -525f), -541f, _wgslsmith_f_op_f32(-415f + -454f)), false, 1f, Struct_2(countOneBits(u_input.a))), vec2<i32>(u_input.e.x << (0u % 32u), 48112i)));
    return 89300u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<u32>(max(func_1(), u_input.c), 21069u, u_input.a.x));
    var_0 = func_6(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(213f * -1299f), _wgslsmith_f_op_f32(ceil(-1000f)), 1311f, 368f)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1271f * 746f)) - _wgslsmith_f_op_f32(-1021f * -666f)), Struct_2(vec3<u32>(1u, _wgslsmith_div_u32(0u, 91922u), var_0.a.x))));
    var_0 = func_6(func_5(Struct_1(27032u, -(~(-40571i)), vec4<bool>(any(vec4<bool>(true, false, true, false)), true, true, all(vec2<bool>(false, false))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, -1i, -22157i), u_input.e.zwz, false), _wgslsmith_sub_vec3_i32(u_input.e.zwy, vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i))), vec3<i32>(_wgslsmith_clamp_i32(u_input.e.x, 2147483647i, -1i), reverseBits(-2147483647i), _wgslsmith_clamp_i32(u_input.e.x, -16689i, u_input.e.x))), u_input.e.ww));
    var var_1 = u_input.e.x;
    let var_2 = global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, countOneBits(1u)), u_input.b & ~5825u)), 24u)];
    let var_3 = _wgslsmith_div_vec4_i32(abs(~u_input.e), vec4<i32>(u_input.e.x, 77902i, ~(-32176i), -_wgslsmith_dot_vec2_i32(u_input.e.zz, u_input.e.yw)));
    var var_4 = Struct_1(var_0.a.x, -2147483647i, func_5(Struct_1(~1u, _wgslsmith_mult_i32(var_3.x & var_3.x, abs(u_input.e.x)), vec4<bool>(false, true, 35917u >= var_0.a.x, false), vec3<i32>(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x), -u_input.e.x, var_3.x), vec3<i32>(-11494i, var_3.x, ~u_input.e.x)), vec2<i32>(-(u_input.e.x | 56122i), -1i)).c, _wgslsmith_mult_vec3_i32((~vec3<i32>(u_input.e.x, 63348i, var_3.x) | vec3<i32>(u_input.e.x, var_3.x, 2147483647i)) >> (vec3<u32>(9834u & u_input.a.x, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(-46148i, -34814i, _wgslsmith_dot_vec2_i32(~u_input.e.wx, ~vec2<i32>(-52439i, -1i)))), vec3<i32>(~reverseBits(u_input.e.x), 2294i, _wgslsmith_dot_vec4_i32(vec4<i32>(-34716i, -1i, reverseBits(-4990i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, var_3.x, u_input.e.x), vec4<i32>(u_input.e.x, var_3.x, u_input.e.x, 0i))), -vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 7068i))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_2.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - -1140f), 350f), -1536f, _wgslsmith_f_op_f32(round(133f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(106f, 1716f, var_2.x))))), var_4.c.wyw)));
}

