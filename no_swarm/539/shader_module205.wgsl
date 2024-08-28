struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-1i, -29336i, 33413i, -6650i), 0i, vec4<f32>(1000f, -706f, 765f, -328f));

var<private> global1: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_2(4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec2<i32>(42713i, 0i), Struct_1(-940f, vec2<f32>(169f, 1571f), false), Struct_2(1u)), Struct_4(Struct_2(0u), vec3<u32>(16720u, 1u, 37568u), vec2<i32>(2147483647i, 1i), Struct_1(561f, vec2<f32>(-644f, 1000f), true), Struct_2(0u)), Struct_4(Struct_2(34140u), vec3<u32>(1u, 1u, 127682u), vec2<i32>(i32(-2147483648), -33954i), Struct_1(1107f, vec2<f32>(-187f, -613f), true), Struct_2(4294967295u)), Struct_4(Struct_2(37828u), vec3<u32>(0u, 9768u, 43342u), vec2<i32>(0i, -38437i), Struct_1(1208f, vec2<f32>(-703f, -517f), false), Struct_2(1u)), Struct_4(Struct_2(5046u), vec3<u32>(23292u, 25352u, 1u), vec2<i32>(26719i, -1i), Struct_1(1368f, vec2<f32>(460f, -607f), false), Struct_2(63415u)), Struct_4(Struct_2(86002u), vec3<u32>(35182u, 4294967295u, 1u), vec2<i32>(-33364i, 1i), Struct_1(1057f, vec2<f32>(382f, 193f), true), Struct_2(4294967295u)), Struct_4(Struct_2(2304u), vec3<u32>(0u, 23820u, 6979u), vec2<i32>(0i, -3728i), Struct_1(-341f, vec2<f32>(416f, -771f), true), Struct_2(24103u)), Struct_4(Struct_2(61545u), vec3<u32>(4294967295u, 0u, 17353u), vec2<i32>(1i, 0i), Struct_1(-1810f, vec2<f32>(-347f, 423f), false), Struct_2(75198u)), Struct_4(Struct_2(24433u), vec3<u32>(4294967295u, 0u, 46154u), vec2<i32>(-1i, i32(-2147483648)), Struct_1(492f, vec2<f32>(579f, -145f), false), Struct_2(30618u)), Struct_4(Struct_2(1u), vec3<u32>(0u, 7917u, 24720u), vec2<i32>(0i, 50798i), Struct_1(456f, vec2<f32>(-1108f, -809f), true), Struct_2(1u)), Struct_4(Struct_2(7047u), vec3<u32>(41329u, 3418u, 1u), vec2<i32>(27536i, 0i), Struct_1(2655f, vec2<f32>(-1131f, -154f), true), Struct_2(48173u)), Struct_4(Struct_2(42150u), vec3<u32>(55857u, 4294967295u, 1109u), vec2<i32>(-19775i, -1i), Struct_1(617f, vec2<f32>(220f, 661f), false), Struct_2(71626u)));

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_2(13887u), vec3<u32>(0u, 48505u, 0u), vec2<i32>(-33303i, 2147483647i), Struct_1(1000f, vec2<f32>(-151f, -1000f), true), Struct_2(4294967295u)), Struct_4(Struct_2(2375u), vec3<u32>(0u, 15261u, 4294967295u), vec2<i32>(0i, -44818i), Struct_1(-635f, vec2<f32>(278f, 2543f), true), Struct_2(1669u)), Struct_4(Struct_2(4294967295u), vec3<u32>(1u, 17490u, 1u), vec2<i32>(-1i, 1i), Struct_1(-1130f, vec2<f32>(1000f, 337f), true), Struct_2(22543u)), Struct_4(Struct_2(35632u), vec3<u32>(1u, 17578u, 9119u), vec2<i32>(-1i, -41048i), Struct_1(-1000f, vec2<f32>(-1440f, -103f), true), Struct_2(28829u)), Struct_4(Struct_2(68090u), vec3<u32>(27179u, 35524u, 27867u), vec2<i32>(12112i, -1i), Struct_1(-1767f, vec2<f32>(262f, -637f), true), Struct_2(23005u)), Struct_4(Struct_2(4294967295u), vec3<u32>(7641u, 0u, 1u), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(-661f, vec2<f32>(938f, -1058f), true), Struct_2(0u)), Struct_4(Struct_2(4294967295u), vec3<u32>(14752u, 0u, 62354u), vec2<i32>(-17013i, 0i), Struct_1(-488f, vec2<f32>(157f, -2016f), true), Struct_2(4294967295u)), Struct_4(Struct_2(0u), vec3<u32>(35416u, 1u, 90226u), vec2<i32>(9757i, -43544i), Struct_1(-280f, vec2<f32>(585f, -783f), false), Struct_2(0u)), Struct_4(Struct_2(95654u), vec3<u32>(99193u, 82445u, 4294967295u), vec2<i32>(1i, i32(-2147483648)), Struct_1(1490f, vec2<f32>(1000f, -232f), false), Struct_2(1u)), Struct_4(Struct_2(55282u), vec3<u32>(1u, 27368u, 87983u), vec2<i32>(1i, i32(-2147483648)), Struct_1(1885f, vec2<f32>(271f, 1111f), true), Struct_2(1u)), Struct_4(Struct_2(4294967295u), vec3<u32>(0u, 1u, 46710u), vec2<i32>(15562i, 11299i), Struct_1(-1458f, vec2<f32>(1324f, 2054f), false), Struct_2(0u)), Struct_4(Struct_2(0u), vec3<u32>(15945u, 32947u, 0u), vec2<i32>(-49637i, 1i), Struct_1(694f, vec2<f32>(-1787f, 130f), false), Struct_2(69783u)), Struct_4(Struct_2(0u), vec3<u32>(48011u, 105700u, 1u), vec2<i32>(0i, 1i), Struct_1(239f, vec2<f32>(849f, -220f), true), Struct_2(34694u)), Struct_4(Struct_2(1u), vec3<u32>(27241u, 39766u, 38244u), vec2<i32>(2147483647i, 26211i), Struct_1(1798f, vec2<f32>(-1663f, -633f), true), Struct_2(51778u)), Struct_4(Struct_2(462u), vec3<u32>(1u, 0u, 23130u), vec2<i32>(-1i, 0i), Struct_1(117f, vec2<f32>(-1000f, -963f), false), Struct_2(4294967295u)), Struct_4(Struct_2(314u), vec3<u32>(1u, 4294967295u, 22149u), vec2<i32>(-12350i, 0i), Struct_1(-164f, vec2<f32>(-953f, 1002f), true), Struct_2(99603u)), Struct_4(Struct_2(0u), vec3<u32>(4294967295u, 993u, 1u), vec2<i32>(1i, i32(-2147483648)), Struct_1(-884f, vec2<f32>(-520f, 996f), false), Struct_2(0u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = Struct_4(Struct_2(~u_input.c.x | u_input.c.x), u_input.c, vec2<i32>(2147483647i, 0i), Struct_1(1353f, global0.c.xw, true), Struct_2(~11860u));
    var var_1 = var_0.a;
    let var_2 = var_0.d;
    global2 = array<Struct_4, 17>();
    global2 = array<Struct_4, 17>();
    return vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), u_input.b.x, countOneBits(~3058u));
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = func_3(~(-45490i));
    var var_1 = !(-_wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, global0.a.x), -1i, u_input.a.x) <= -((i32(-1i) * -2147483647i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(7094u, 86957u), u_input.c.yx) % 32u)));
    var var_2 = vec2<bool>(any(!vec3<bool>(true, any(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, false)))), false);
    var_1 = any(vec2<bool>(abs(firstTrailingBit(2147483647i)) >= abs(-2147483647i), select(!all(vec4<bool>(var_2.x, false, var_2.x, false)), var_2.x, true)));
    var var_3 = arg_0;
    return firstLeadingBit(~_wgslsmith_dot_vec2_i32(u_input.a.zx, select(countOneBits(global0.a.xx), u_input.a.yy, any(vec4<bool>(var_2.x, true, var_2.x, false)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    global2 = array<Struct_4, 17>();
    var var_0 = arg_0.x;
    var var_1 = global2[_wgslsmith_index_u32(~35087u, 17u)];
    var_0 = false;
    let var_2 = vec4<i32>(~global0.b, u_input.a.x, -(1i ^ _wgslsmith_mult_i32(-u_input.a.x, countOneBits(u_input.a.x))), u_input.a.x);
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x << (0u % 32u), 1i), func_2(var_1.d.b.x, var_1.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1u);
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, -u_input.a)), abs(u_input.a.x), select(global0.a.x, -1i, true | any(vec3<bool>(true, true, false))), u_input.a.x), -(~vec4<i32>(21630i, min(global0.a.x, global0.b), -50226i, func_1(vec4<bool>(true, false, false, false), 0u))));
    global1 = array<Struct_4, 12>();
    global0 = Struct_3(-min(max(global0.a, firstTrailingBit(vec4<i32>(64755i, var_1.x, var_1.x, 1i))), vec4<i32>(global0.b, global0.b ^ u_input.a.x, _wgslsmith_div_i32(1i, var_1.x), abs(22865i))), _wgslsmith_div_i32(-19848i, -_wgslsmith_mod_i32(func_1(vec4<bool>(false, true, true, false), var_0.a), _wgslsmith_add_i32(var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c.x, 772f)) - _wgslsmith_f_op_f32(exp2(global0.c.x))), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(759f, global0.c.x) + -622f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, global0.c.x, global0.c.x, 1466f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1052f, global0.c.x, 794f, global0.c.x))))));
    global1 = array<Struct_4, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-458f, _wgslsmith_dot_vec2_u32(u_input.b.yx, select(min(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.b.xz), u_input.b.zy << (u_input.c.yx % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 12453u ^ var_0.a), vec2<bool>(true, true))), u_input.b.x, firstLeadingBit(0u), u_input.b.x << (7594u % 32u));
}

