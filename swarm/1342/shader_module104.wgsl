struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(45036i, 2147483647i, 29365i, -7569i, 25821i, -22181i, -7432i, 56000i, 1i, i32(-2147483648), 0i, 0i, -10407i, 1i, 32453i, -31458i, 2147483647i, 0i, i32(-2147483648), -1i, -1i, 0i, 0i);

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<i32>(-1i, i32(-2147483648), -46476i, -38498i), i32(-2147483648), vec3<bool>(false, true, true), Struct_1(i32(-2147483648), vec3<i32>(0i, -918i, -1i)), Struct_1(-38565i, vec3<i32>(-1i, -10627i, 1i))), Struct_2(vec4<i32>(1i, 74862i, 17839i, 21490i), 63556i, vec3<bool>(true, false, false), Struct_1(0i, vec3<i32>(2147483647i, 22249i, 1i)), Struct_1(1i, vec3<i32>(0i, -38922i, 2147483647i))), Struct_2(vec4<i32>(51103i, 14820i, -16846i, i32(-2147483648)), -29802i, vec3<bool>(false, true, false), Struct_1(-12476i, vec3<i32>(-33439i, 2147483647i, 84020i)), Struct_1(-1i, vec3<i32>(-26407i, 71873i, -11423i))), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 12549i, -8839i), i32(-2147483648), vec3<bool>(true, false, true), Struct_1(i32(-2147483648), vec3<i32>(2147483647i, 15827i, 2147483647i)), Struct_1(-1i, vec3<i32>(0i, -1i, -35778i))), Struct_2(vec4<i32>(-1i, 0i, 2147483647i, 2147483647i), 0i, vec3<bool>(false, false, false), Struct_1(2147483647i, vec3<i32>(-1i, 0i, 48963i)), Struct_1(-9540i, vec3<i32>(-12956i, 2147483647i, i32(-2147483648)))), Struct_2(vec4<i32>(-1i, 0i, 1i, -25211i), 1i, vec3<bool>(true, false, true), Struct_1(-1i, vec3<i32>(1i, -1i, 0i)), Struct_1(32770i, vec3<i32>(-1i, 0i, -30856i))), Struct_2(vec4<i32>(1i, 1i, -1i, 38265i), 2147483647i, vec3<bool>(false, true, false), Struct_1(-9956i, vec3<i32>(1i, 17108i, 56486i)), Struct_1(3140i, vec3<i32>(2147483647i, 10912i, -1i))), Struct_2(vec4<i32>(-1i, 38446i, -27189i, 0i), 0i, vec3<bool>(true, false, false), Struct_1(-20631i, vec3<i32>(-18878i, -1i, 1i)), Struct_1(51349i, vec3<i32>(10671i, i32(-2147483648), -14632i))), Struct_2(vec4<i32>(0i, 1i, 68061i, -1i), 5344i, vec3<bool>(true, true, true), Struct_1(27900i, vec3<i32>(36577i, 2147483647i, 24073i)), Struct_1(2358i, vec3<i32>(17316i, 2147483647i, 1i))), Struct_2(vec4<i32>(-6634i, 72458i, -1i, i32(-2147483648)), -1i, vec3<bool>(false, false, false), Struct_1(1i, vec3<i32>(0i, -1i, 0i)), Struct_1(-36833i, vec3<i32>(-1i, 45571i, -3268i))), Struct_2(vec4<i32>(21627i, 5595i, -1i, -12759i), 9179i, vec3<bool>(false, true, false), Struct_1(-32922i, vec3<i32>(-13800i, 18896i, 2147483647i)), Struct_1(-14033i, vec3<i32>(-28030i, 1i, 15990i))), Struct_2(vec4<i32>(1i, -23247i, 64453i, 15103i), 43428i, vec3<bool>(false, false, true), Struct_1(1i, vec3<i32>(-3568i, 1i, i32(-2147483648))), Struct_1(-8475i, vec3<i32>(-28377i, -88724i, -40380i))), Struct_2(vec4<i32>(37531i, -1i, -21656i, -9599i), 12556i, vec3<bool>(false, false, true), Struct_1(32135i, vec3<i32>(2147483647i, 30843i, 2147483647i)), Struct_1(-52217i, vec3<i32>(-15782i, 36643i, -33806i))), Struct_2(vec4<i32>(i32(-2147483648), 0i, 2147483647i, -1i), -1i, vec3<bool>(false, false, false), Struct_1(7969i, vec3<i32>(2147483647i, 0i, 1i)), Struct_1(2147483647i, vec3<i32>(i32(-2147483648), -36654i, 29457i))), Struct_2(vec4<i32>(-1i, 2147483647i, 1895i, -48496i), 47484i, vec3<bool>(false, false, true), Struct_1(8704i, vec3<i32>(0i, 2147483647i, -1i)), Struct_1(28271i, vec3<i32>(12715i, -1i, -23835i))), Struct_2(vec4<i32>(16530i, i32(-2147483648), -48211i, 950i), -25464i, vec3<bool>(false, true, true), Struct_1(1i, vec3<i32>(2147483647i, 9029i, 0i)), Struct_1(70673i, vec3<i32>(0i, 1i, -9358i))), Struct_2(vec4<i32>(36943i, 2147483647i, 9116i, 1i), 45159i, vec3<bool>(true, false, false), Struct_1(-6789i, vec3<i32>(16559i, 2147483647i, 1i)), Struct_1(0i, vec3<i32>(2311i, -3407i, 2147483647i))), Struct_2(vec4<i32>(-70397i, -65701i, 0i, 1014i), 2147483647i, vec3<bool>(false, true, false), Struct_1(1i, vec3<i32>(20572i, -1i, -1i)), Struct_1(-1i, vec3<i32>(-1i, 2147483647i, -1i))), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 34110i, 2147483647i), 58987i, vec3<bool>(true, true, false), Struct_1(-7480i, vec3<i32>(-14238i, 15560i, -110i)), Struct_1(-1i, vec3<i32>(2147483647i, i32(-2147483648), 32013i))), Struct_2(vec4<i32>(33344i, -40535i, i32(-2147483648), 2147483647i), -11035i, vec3<bool>(false, false, false), Struct_1(2147483647i, vec3<i32>(-31209i, -24035i, 1i)), Struct_1(2147483647i, vec3<i32>(2937i, 2147483647i, i32(-2147483648)))), Struct_2(vec4<i32>(-21242i, i32(-2147483648), -4014i, 2147483647i), -15131i, vec3<bool>(false, true, false), Struct_1(-1i, vec3<i32>(0i, -51838i, -4153i)), Struct_1(-7808i, vec3<i32>(1i, 0i, 1i))), Struct_2(vec4<i32>(-1i, 1i, 1i, -28474i), 0i, vec3<bool>(false, true, false), Struct_1(-21013i, vec3<i32>(-14121i, 24637i, 0i)), Struct_1(1i, vec3<i32>(41497i, 1i, 2147483647i))), Struct_2(vec4<i32>(2313i, 25072i, -52523i, -1i), 2147483647i, vec3<bool>(false, false, false), Struct_1(-17744i, vec3<i32>(1i, 23004i, 14652i)), Struct_1(2147483647i, vec3<i32>(13358i, 1i, 65270i))), Struct_2(vec4<i32>(6050i, 2147483647i, 1i, -1i), -32022i, vec3<bool>(true, true, false), Struct_1(2147483647i, vec3<i32>(-37419i, 1i, 2147483647i)), Struct_1(i32(-2147483648), vec3<i32>(19161i, 68620i, 16831i))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> i32 {
    return select(firstLeadingBit(arg_2.d.a), -11757i & (-_wgslsmith_dot_vec4_i32(vec4<i32>(-16599i, -1i, 2147483647i, u_input.c.x), vec4<i32>(arg_2.e.b.x, u_input.c.x, arg_0.x, u_input.c.x)) ^ arg_0.x), (-8255i >> (arg_1 % 32u)) < ~6863i);
}

fn func_3() -> i32 {
    global1 = array<Struct_2, 24>();
    global0 = array<i32, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-140f, _wgslsmith_f_op_f32(117f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1490f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-359f + _wgslsmith_div_f32(961f, -403f))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1276f, 1359f, -1418f))), vec3<f32>(1106f, -263f, -660f), any(vec4<bool>(false, true, false, true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1041f, 766f, -719f)) * _wgslsmith_div_vec3_f32(vec3<f32>(469f, 1000f, -1000f), vec3<f32>(783f, 925f, 659f)))))));
    global1 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(var_0));
    return func_1(vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, 0i, 1i, u_input.c.x) | select(vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.c.x, u_input.c.x), vec4<i32>(0i, -87300i, u_input.c.x, 41850i), false)), abs(~(~55018u >> (0u % 32u))), global1[_wgslsmith_index_u32(28266u, 24u)], max(~vec3<u32>(1u, u_input.b.x, u_input.b.x), firstLeadingBit(vec3<u32>(99789u | u_input.b.x, u_input.a.x | u_input.b.x, ~u_input.a.x))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_2, 24>();
    let var_0 = Struct_1(firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(func_3(), -8477i), _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_div_i32(arg_2, arg_2)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, arg_0), vec3<i32>(0i, u_input.c.x, 19698i)) >> (~8422u % 32u), -63381i, 28744i) ^ ~(~vec3<i32>(20992i, 52774i, -13938i) << (vec3<u32>(4294967295u, u_input.a.x, u_input.b.x) % vec3<u32>(32u))));
    var var_1 = var_0;
    global0 = array<i32, 23>();
    var var_2 = Struct_1(_wgslsmith_mod_i32(2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(29350u, 23u)], -1i, 1i, 1i), vec4<i32>(-10516i, var_0.b.x, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))) ^ (17327i & (i32(-1i) * -arg_2)), -var_0.b);
    return var_0;
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~0i, 2147483647i, ~func_2(-1i, vec4<bool>(true, true, true, true), 434i, _wgslsmith_f_op_f32(298f * 1097f)).a), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(13252u, 23u)], u_input.c.x)), -_wgslsmith_mod_i32(arg_0.a, 1i)), func_2(arg_0.a, !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1095f)))).b.x, -arg_0.b.x));
    var_0 = func_2(_wgslsmith_mod_i32(-24025i, ~var_0.x), !select(vec4<bool>(false, true, true, select(false, true, false)), vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), ~u_input.a.x <= 4294967295u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(reverseBits(~var_0.yy), arg_0.b.zy), u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1576f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-126f, -275f)))))).b;
    let var_1 = any(vec4<bool>(true, true, true, true));
    return StorageBuffer(-39097i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -746f), 179f, -264f, -1574f), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = func_4(func_2(66737i, vec4<bool>(true, true, true, true), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, ~global0[_wgslsmith_index_u32(34548u, 23u)]), abs(func_1(vec4<i32>(u_input.c.x, -35206i, -57583i, -2147483647i), u_input.b.x, global1[_wgslsmith_index_u32(0u, 24u)], vec3<u32>(1u, u_input.a.x, 4294967295u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) - 103f)))));
}

