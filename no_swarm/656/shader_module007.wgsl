struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: f32 = -129f;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(false, vec3<i32>(i32(-2147483648), 11091i, 636i), 4294967295u, vec4<i32>(1i, 0i, 2147483647i, i32(-2147483648)), true), Struct_1(true, vec3<i32>(2147483647i, -4891i, 22061i), 14263u, vec4<i32>(-957i, -13996i, 2147483647i, 24323i), true), Struct_1(true, vec3<i32>(-1i, 21390i, i32(-2147483648)), 36049u, vec4<i32>(-1i, 2147483647i, -5842i, i32(-2147483648)), false), Struct_1(false, vec3<i32>(i32(-2147483648), 20026i, -13628i), 42811u, vec4<i32>(i32(-2147483648), 1i, -16217i, -61566i), false), Struct_1(true, vec3<i32>(21706i, 2147483647i, 11383i), 1u, vec4<i32>(32203i, 1i, 1i, 29681i), true), Struct_1(true, vec3<i32>(-8482i, 56956i, 23672i), 0u, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 0i), true), Struct_1(true, vec3<i32>(-1i, 9897i, -26292i), 41443u, vec4<i32>(53808i, -40040i, 648i, 2147483647i), true), Struct_1(false, vec3<i32>(-1i, 2147483647i, 8637i), 1u, vec4<i32>(-17831i, -48572i, 1i, 33335i), false), Struct_1(false, vec3<i32>(24042i, 1i, -30284i), 116733u, vec4<i32>(1i, 0i, -40427i, 30573i), false), Struct_1(true, vec3<i32>(52051i, i32(-2147483648), i32(-2147483648)), 0u, vec4<i32>(62038i, 22778i, 1i, 2147483647i), true), Struct_1(false, vec3<i32>(-1i, 2147483647i, -1i), 32368u, vec4<i32>(i32(-2147483648), -1i, 40954i, -1i), true), Struct_1(false, vec3<i32>(i32(-2147483648), 24500i, i32(-2147483648)), 1u, vec4<i32>(-1i, 1i, 14881i, 1i), true), Struct_1(true, vec3<i32>(16567i, -19506i, 13986i), 1u, vec4<i32>(-8192i, 2147483647i, -28005i, 2068i), false), Struct_1(false, vec3<i32>(-20419i, 1i, 2147483647i), 84231u, vec4<i32>(1i, 2147483647i, -26212i, -6822i), true), Struct_1(true, vec3<i32>(-26176i, 53840i, -38912i), 1u, vec4<i32>(63204i, i32(-2147483648), 55162i, 0i), false), Struct_1(false, vec3<i32>(-7606i, 2147483647i, i32(-2147483648)), 1u, vec4<i32>(-25461i, 1i, -17730i, 14062i), true), Struct_1(false, vec3<i32>(46731i, -19592i, 56547i), 0u, vec4<i32>(-13436i, i32(-2147483648), i32(-2147483648), 1i), true), Struct_1(true, vec3<i32>(-26449i, 2147483647i, 71883i), 19124u, vec4<i32>(-56223i, 24682i, 2147483647i, 1i), true), Struct_1(false, vec3<i32>(-33242i, i32(-2147483648), 2147483647i), 3023u, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -1i), false), Struct_1(false, vec3<i32>(1i, 0i, 2147483647i), 0u, vec4<i32>(-20910i, 1i, 0i, 2147483647i), false), Struct_1(true, vec3<i32>(i32(-2147483648), 0i, 1i), 4294967295u, vec4<i32>(-1i, 17253i, 13513i, -50007i), true), Struct_1(true, vec3<i32>(-205i, 0i, -22351i), 19622u, vec4<i32>(-1i, -1i, 1i, 1i), true), Struct_1(true, vec3<i32>(14316i, 2147483647i, -18506i), 1u, vec4<i32>(2046i, -72640i, 1i, -62130i), true), Struct_1(false, vec3<i32>(-1i, 1i, i32(-2147483648)), 20011u, vec4<i32>(2147483647i, -4267i, -1i, 0i), true), Struct_1(false, vec3<i32>(0i, -21976i, 24597i), 2146u, vec4<i32>(2147483647i, -50442i, 4996i, -10688i), false), Struct_1(true, vec3<i32>(-1i, 21708i, -1i), 4294967295u, vec4<i32>(i32(-2147483648), -1i, 2147483647i, 2147483647i), false), Struct_1(true, vec3<i32>(30512i, -1i, -46886i), 0u, vec4<i32>(9154i, -19471i, 2147483647i, 1689i), true), Struct_1(true, vec3<i32>(-1i, 1i, i32(-2147483648)), 9455u, vec4<i32>(-36320i, -68085i, 12399i, 1i), true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = vec4<bool>(!select(all(select(vec4<bool>(global2.a.e, false, false, true), vec4<bool>(global2.a.e, global2.a.e, true, true), vec4<bool>(global2.a.e, true, false, true))), true, false), true, global2.a.e, !all(!(!vec3<bool>(global2.a.a, global2.a.e, true))));
    let var_1 = !var_0.wy;
    global3 = array<Struct_1, 28>();
    let var_2 = select(select(!select(!vec2<bool>(false, global2.a.a), !vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, true), var_1, var_1.x)), !vec2<bool>(var_0.x, true), select(select(!var_0.zx, vec2<bool>(true, false), all(vec4<bool>(false, false, true, var_1.x))), var_0.xw, var_1)), select(select(!var_1, select(select(vec2<bool>(true, global2.a.e), var_0.zy, var_0.x), select(var_1, var_0.ww, false), all(vec4<bool>(true, var_1.x, global2.a.e, true))), select(vec2<bool>(false, true), vec2<bool>(var_0.x, false), select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, true), vec2<bool>(false, var_0.x)))), select(!select(var_0.zz, vec2<bool>(global2.a.a, false), global2.a.a), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global2.a.a, true)), !var_1, vec2<bool>(true, global2.a.e)), !any(vec2<bool>(true, true))), var_1), global2.a.a);
    return u_input.a.x;
}

fn func_2(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(all(vec4<bool>(false, all(vec3<bool>(false, global2.a.a, arg_0.x)), arg_0.x, false)), global2.a.b & _wgslsmith_div_vec3_i32(global2.a.d.xzz, global2.a.b), ~global2.a.c, vec4<i32>(global2.a.d.x, func_3(), -64304i | global2.a.d.x, u_input.a.x), any(select(vec4<bool>(arg_0.x, arg_0.x, true, true), select(arg_0, vec4<bool>(true, false, arg_0.x, false), global2.a.e), arg_0.x))));
    global3 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(911f)), _wgslsmith_f_op_f32(min(978f, -1220f)), _wgslsmith_f_op_f32(1203f - 534f), 103f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, 230f, -734f, 445f)))) + vec4<f32>(-495f, 918f, _wgslsmith_f_op_f32(sign(-483f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-315f)), _wgslsmith_f_op_f32(round(1371f)), false))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))))));
    var var_3 = reverseBits(15903i);
    return select(vec3<u32>(var_0.a.c, 42346u, 10093u), ~vec3<u32>(countOneBits(global2.a.c | 29007u), 3039u, _wgslsmith_dot_vec4_u32(vec4<u32>(46640u, 1u, global2.a.c, global2.a.c) | vec4<u32>(18253u, 4294967295u, 12349u, 4294967295u), max(vec4<u32>(64375u, 21521u, var_0.a.c, 4294967295u), vec4<u32>(var_0.a.c, 0u, var_0.a.c, 28400u)))), !select(arg_0.zxx, !vec3<bool>(true, arg_0.x, false), select(any(vec3<bool>(global2.a.a, global2.a.a, true)), false, arg_0.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(~0u, 66121u >> (1u % 32u), firstLeadingBit(1u), 0u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c, global2.a.c, global2.a.c, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(60974u, 105944u, 1u, global2.a.c), vec4<u32>(4294967295u, 4294967295u, global2.a.c, arg_1.c))), ~firstLeadingBit(vec4<u32>(arg_1.c, global2.a.c, 1u, 14093u))) ^ firstTrailingBit(vec4<u32>(~arg_1.c, arg_1.c, arg_1.c, 38361u)));
    var var_1 = Struct_1(!global2.a.e, abs(vec3<i32>(-arg_1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.d.x, global2.a.b.x, 951i, arg_0.x), vec4<i32>(arg_0.x, 1i, 2147483647i, global2.a.d.x)), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_add_i32(-1i, 28196i), -global2.a.d.x))), _wgslsmith_clamp_u32(~(~arg_1.c), ~select(~1u, min(2335u, 24784u), 2147483647i > u_input.a.x), ~arg_1.c), ~vec4<i32>(select(1i, 38431i, !global2.a.a), abs(abs(arg_0.x)), ~(global2.a.b.x | arg_0.x), _wgslsmith_dot_vec3_i32(global2.a.b, ~vec3<i32>(global2.a.b.x, 0i, 0i))), arg_1.e);
    var var_2 = Struct_1(global2.a.e, vec3<i32>(~(~var_1.b.x), u_input.a.x, 2147483647i), global2.a.c, vec4<i32>(-firstTrailingBit(~var_1.b.x), -22034i, var_1.b.x, ~_wgslsmith_mod_i32(global2.a.d.x << (0u % 32u), _wgslsmith_sub_i32(15283i, var_1.b.x))), false);
    var_2 = global3[_wgslsmith_index_u32(12293u, 28u)];
    var var_3 = Struct_1(all(vec4<bool>(any(!vec4<bool>(var_2.e, false, arg_1.e, false)), _wgslsmith_div_u32(var_2.c, 76032u) != 72410u, arg_1.a, true)), vec3<i32>(-firstTrailingBit(abs(15672i)), firstLeadingBit(abs(~var_2.d.x)), -_wgslsmith_dot_vec3_i32(select(arg_0, vec3<i32>(u_input.a.x, -1i, var_2.b.x), vec3<bool>(true, true, true)), arg_1.d.xxy)), ~global2.a.c, (reverseBits(vec4<i32>(-12609i, arg_0.x, -16353i, var_1.b.x)) | arg_1.d) ^ (vec4<i32>(-1i) * -arg_1.d), true);
    return Struct_1(!all(!select(vec2<bool>(global2.a.a, var_1.e), vec2<bool>(var_2.a, var_3.e), var_2.a)), var_3.d.wzw, _wgslsmith_add_u32(var_2.c, abs(countOneBits(_wgslsmith_div_u32(arg_1.c, 0u)))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(global2.a.b, vec3<i32>(var_2.b.x, arg_0.x, -1i) ^ arg_0), reverseBits(func_3()), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(4228i, -2147483647i, -15912i, var_3.d.x), var_1.d), var_3.d), var_2.b.x), reverseBits(vec4<i32>(arg_0.x, -3916i, -51613i, -2147483647i) >> ((var_0 >> (vec4<u32>(34674u, 17232u, 21098u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))), all(!select(vec2<bool>(global2.a.a, arg_1.a), vec2<bool>(var_2.a, true), var_2.e)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_add_vec3_u32(~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(global2.a.c, global2.a.c, 65620u), ~vec3<u32>(1u, 0u, global2.a.c))), ~(~vec3<u32>(42984u, 68201u, global2.a.c)));
    var_0 = firstLeadingBit(countOneBits(vec3<u32>(~55395u, abs(~global2.a.c), 1u)));
    global2 = Struct_2(func_4(global2.a.b << (func_2(!vec4<bool>(global2.a.e, false, false, false)) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(~16010u, 28u)]));
    var var_1 = reverseBits(global2.a.b.yy);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(735f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1001f)), select(~1u != _wgslsmith_sub_u32(4294967295u, var_0.x), any(select(vec4<bool>(true, true, global2.a.a, global2.a.e), vec4<bool>(true, true, false, global2.a.e), false)), all(!vec3<bool>(global2.a.a, global2.a.e, global2.a.a))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)))))));
    return 3836u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 28>();
    let var_0 = Struct_1(!global2.a.e, global2.a.b, func_1(), global2.a.d, true);
    let var_1 = global2.a.d;
    let var_2 = Struct_2(func_4(vec3<i32>(-abs(-26439i), -2147483647i, abs(var_0.b.x)), Struct_1(true, abs(abs(vec3<i32>(-55740i, -2396i, var_1.x))), 93639u, vec4<i32>(~global2.a.b.x, ~(-1i), abs(u_input.a.x), select(var_0.b.x, 38328i, var_0.a)), false)));
    global0 = array<Struct_2, 3>();
    let var_3 = true;
    global2 = global0[_wgslsmith_index_u32(var_0.c, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(var_2.a.d.x, 0i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global2.a.d.x, var_0.b.x, 2147483647i), var_0.d.x)), _wgslsmith_dot_vec2_i32(reverseBits(var_1.yy), var_2.a.d.zy));
}

