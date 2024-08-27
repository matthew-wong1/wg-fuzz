struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(false, false, Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 2891i), 1000f, 1497f), vec4<u32>(25561u, 954u, 17315u, 4294967295u)), Struct_2(true, false, Struct_1(vec4<i32>(-7113i, 38883i, 1i, -1i), -989f, -710f), vec4<u32>(0u, 3584u, 50889u, 1u)), Struct_2(false, false, Struct_1(vec4<i32>(28660i, -6922i, -1i, 46426i), -172f, -1064f), vec4<u32>(44870u, 1u, 38601u, 52768u)), Struct_2(false, false, Struct_1(vec4<i32>(-36150i, 1i, -68614i, 35120i), -133f, -1295f), vec4<u32>(4294967295u, 1u, 53805u, 33747u)), Struct_2(false, true, Struct_1(vec4<i32>(-28014i, 2147483647i, -1i, -1i), 1000f, 178f), vec4<u32>(4294967295u, 1u, 0u, 94038u)), Struct_2(false, false, Struct_1(vec4<i32>(i32(-2147483648), 1i, 11066i, -26235i), 1179f, -176f), vec4<u32>(22352u, 71986u, 69795u, 4294967295u)), Struct_2(true, true, Struct_1(vec4<i32>(2147483647i, -1i, -43716i, -1i), 561f, -921f), vec4<u32>(20738u, 1u, 1u, 81143u)), Struct_2(false, true, Struct_1(vec4<i32>(-25376i, 2147483647i, -32088i, 1i), 520f, -1186f), vec4<u32>(0u, 18972u, 0u, 24299u)), Struct_2(true, true, Struct_1(vec4<i32>(i32(-2147483648), -12093i, -1i, i32(-2147483648)), -277f, 2300f), vec4<u32>(4294967295u, 10672u, 48782u, 0u)), Struct_2(false, true, Struct_1(vec4<i32>(-1i, -34984i, -1i, i32(-2147483648)), 379f, -215f), vec4<u32>(4294967295u, 4294967295u, 50834u, 25425u)), Struct_2(true, true, Struct_1(vec4<i32>(1i, -1i, -30406i, 0i), -1216f, -1488f), vec4<u32>(3537u, 1u, 79390u, 4294967295u)), Struct_2(false, false, Struct_1(vec4<i32>(i32(-2147483648), -13623i, 1i, -1i), -1018f, -905f), vec4<u32>(0u, 8624u, 1u, 34550u)), Struct_2(false, false, Struct_1(vec4<i32>(1i, -28484i, 77954i, 49010i), -1064f, 297f), vec4<u32>(0u, 23820u, 0u, 4294967295u)), Struct_2(true, false, Struct_1(vec4<i32>(13831i, 26741i, -27150i, 18841i), 423f, 1879f), vec4<u32>(1u, 10603u, 0u, 11204u)), Struct_2(false, false, Struct_1(vec4<i32>(12449i, -9017i, 0i, 10560i), -1432f, 1458f), vec4<u32>(5215u, 4294967295u, 70296u, 25237u)), Struct_2(true, true, Struct_1(vec4<i32>(-1i, 9830i, -57874i, 1i), 1726f, -754f), vec4<u32>(1733u, 1u, 1u, 1u)), Struct_2(true, true, Struct_1(vec4<i32>(1i, 46850i, 1i, 0i), -810f, -195f), vec4<u32>(0u, 61440u, 39107u, 29260u)), Struct_2(true, false, Struct_1(vec4<i32>(0i, 7728i, i32(-2147483648), 8087i), 2053f, 2127f), vec4<u32>(1105u, 0u, 1u, 0u)), Struct_2(true, true, Struct_1(vec4<i32>(1i, 2147483647i, 4635i, 48445i), -1210f, -787f), vec4<u32>(1u, 48740u, 1887u, 40195u)), Struct_2(false, true, Struct_1(vec4<i32>(0i, 47365i, 7898i, -16328i), 1679f, -1018f), vec4<u32>(1u, 33660u, 4294967295u, 25965u)), Struct_2(true, false, Struct_1(vec4<i32>(2147483647i, -5202i, -1i, 23422i), -1271f, 1334f), vec4<u32>(1288u, 22516u, 14157u, 4294967295u)), Struct_2(true, false, Struct_1(vec4<i32>(2147483647i, 2254i, -1i, -20120i), -2589f, -300f), vec4<u32>(0u, 0u, 8337u, 6917u)), Struct_2(false, true, Struct_1(vec4<i32>(-18426i, 51987i, 2147483647i, 1i), -248f, 901f), vec4<u32>(4294967295u, 0u, 1u, 24635u)), Struct_2(false, true, Struct_1(vec4<i32>(8642i, 0i, 1i, 1i), 1000f, 1000f), vec4<u32>(34025u, 78739u, 1u, 105262u)), Struct_2(true, true, Struct_1(vec4<i32>(1i, 53231i, 1i, 1i), -447f, -570f), vec4<u32>(61729u, 17417u, 1u, 1u)), Struct_2(false, false, Struct_1(vec4<i32>(2147483647i, -1i, 3291i, 27754i), 571f, 316f), vec4<u32>(0u, 1u, 37578u, 20568u)), Struct_2(true, true, Struct_1(vec4<i32>(-37996i, 1i, 84424i, 4959i), 2031f, 1000f), vec4<u32>(0u, 85000u, 62364u, 1u)), Struct_2(false, true, Struct_1(vec4<i32>(1i, 276i, 54597i, -25014i), 1000f, -1867f), vec4<u32>(37344u, 62289u, 44113u, 4294967295u)), Struct_2(true, true, Struct_1(vec4<i32>(2147483647i, 0i, 2147483647i, 1i), -776f, -285f), vec4<u32>(54012u, 1u, 1u, 0u)));

var<private> global3: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    var var_0 = vec2<u32>(0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), arg_1.d.zx & vec2<u32>(1u, u_input.a.x))));
    var var_1 = ~(~vec4<u32>(~(~1u), countOneBits(abs(23190u)), _wgslsmith_add_u32(var_0.x, ~var_0.x), ~1u));
    var var_2 = arg_1.c;
    let var_3 = abs(~var_2.a.x);
    let var_4 = arg_1.c;
    return countOneBits(arg_1.d ^ (vec4<u32>(~35227u, 1416u, 0u, ~var_1.x) ^ firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_1.d.x, 4294967295u), vec4<u32>(0u, 1u, var_0.x, 0u)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = ~abs(u_input.a.x);
    var var_1 = global2[_wgslsmith_index_u32(var_0, 29u)];
    let var_2 = vec2<i32>(var_1.c.a.x, max(-52421i, arg_0.a.x));
    global2 = array<Struct_2, 29>();
    global0 = arg_0;
    return Struct_2(var_1.a, !(arg_1 == all(global1[_wgslsmith_index_u32(var_0, 26u)])), Struct_1((-global0.a >> (var_1.d % vec4<u32>(32u))) >> (~vec4<u32>(469u, 1u, var_1.d.x, var_0) % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-349f - 1f))), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-var_1.c.c)))), func_3(2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(12014u), abs(_wgslsmith_dot_vec4_u32(var_1.d, var_1.d))), 29u)], _wgslsmith_mult_i32(1i, firstTrailingBit(_wgslsmith_div_i32(var_2.x, -8047i)))));
}

fn func_1() -> f32 {
    global2 = array<Struct_2, 29>();
    global2 = array<Struct_2, 29>();
    let var_0 = func_2(Struct_1(_wgslsmith_div_vec4_i32(~max(vec4<i32>(global0.a.x, -1i, 19792i, global0.a.x), vec4<i32>(global0.a.x, -2147483647i, global0.a.x, global0.a.x)), vec4<i32>(~(-2147483647i), global0.a.x, global0.a.x, max(-2147483647i, global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-993f, _wgslsmith_f_op_f32(-2160f + global0.b))), global0.b), true);
    var var_1 = !any(vec3<bool>(false, !select(true, false, var_0.a), _wgslsmith_f_op_f32(-var_0.c.b) < global0.b));
    let var_2 = ~(~(~var_0.d.x));
    return global0.b;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = -17662i;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-509f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-260f - global0.b)), -744f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, -356f, 1256f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -379f) - vec3<f32>(arg_2, arg_0, -750f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1017f, -934f, -1096f), _wgslsmith_f_op_vec3_f32(vec3<f32>(2115f, arg_0, arg_3.c.c) * vec3<f32>(797f, -1235f, -885f))))))));
    return func_2(Struct_1(func_2(arg_3.c, arg_1).c.a, 427f, _wgslsmith_f_op_f32(-arg_0)), false).c;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = all(vec3<bool>(!(arg_1.x < 934f), !(arg_0.a.x != -62602i), true)) || any(vec2<bool>(33572i < max(arg_0.a.x, 56515i), false));
    var var_1 = global2[_wgslsmith_index_u32(38610u, 29u)];
    var var_2 = _wgslsmith_dot_vec3_u32(~var_1.d.yww, (abs(var_1.d.yww) ^ ~var_1.d.wwy) << (select(~(~vec3<u32>(u_input.a.x, 51899u, 66390u)), ~var_1.d.zzx, vec3<bool>(func_2(Struct_1(var_1.c.a, arg_1.x, arg_0.c), true).b, -2147483647i > global0.a.x, any(global3[_wgslsmith_index_u32(var_1.d.x, 9u)]))) % vec3<u32>(32u)));
    var_0 = true;
    var var_3 = func_2(arg_0, var_1.b).c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), -105f)), true, global0.c, global2[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, global0.b, 869f, 1899f) - vec4<f32>(-443f, -497f, -850f, global0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.b, global0.c, 1000f) - vec4<f32>(-1251f, global0.b, 396f, 210f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, 1684f, global0.c, global0.c) * vec4<f32>(152f, -106f, global0.c, global0.c))), vec4<f32>(global0.b, _wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-global0.c), global0.c), ~30900u > func_3(0i, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(64612u, u_input.a.x), 29u)], global0.a.x).x)));
    global3 = array<vec2<bool>, 9>();
    var var_0 = select(vec3<bool>(true, any(vec3<bool>(true, true, true)) && (false & (u_input.a.x >= 8016u)), -10502i <= ~global0.a.x), vec3<bool>(select(true, true, false), false, true), vec3<bool>(true, any(select(!global3[_wgslsmith_index_u32(u_input.a.x, 9u)], select(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], true), select(vec2<bool>(true, false), global3[_wgslsmith_index_u32(20139u, 9u)], true))), !select(func_2(Struct_1(global0.a, -1619f, global0.c), false).a, true, true)));
    var var_1 = vec2<bool>(true, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x);
}

