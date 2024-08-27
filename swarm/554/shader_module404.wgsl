struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_2(vec4<f32>(-942f, 279f, 1364f, -1000f)), -1i, true), Struct_3(Struct_2(vec4<f32>(-1000f, 1476f, 559f, 727f)), i32(-2147483648), true), Struct_3(Struct_2(vec4<f32>(475f, -309f, 360f, 1000f)), i32(-2147483648), true), Struct_3(Struct_2(vec4<f32>(-1895f, 652f, -1974f, 250f)), i32(-2147483648), true), Struct_3(Struct_2(vec4<f32>(2624f, -609f, -181f, 342f)), i32(-2147483648), false), Struct_3(Struct_2(vec4<f32>(813f, 1029f, 1000f, -214f)), 1218i, false), Struct_3(Struct_2(vec4<f32>(-167f, -170f, -1165f, 681f)), -1i, true), Struct_3(Struct_2(vec4<f32>(-554f, 2355f, 427f, 1296f)), -48218i, true), Struct_3(Struct_2(vec4<f32>(-174f, 261f, 132f, -596f)), 30506i, true), Struct_3(Struct_2(vec4<f32>(-258f, -1530f, -491f, 194f)), -22163i, false), Struct_3(Struct_2(vec4<f32>(360f, 1096f, -1348f, 1832f)), -20349i, false), Struct_3(Struct_2(vec4<f32>(347f, -1256f, 337f, 236f)), 0i, false), Struct_3(Struct_2(vec4<f32>(1748f, -163f, -1750f, 1997f)), 0i, true), Struct_3(Struct_2(vec4<f32>(-122f, -576f, 1485f, -747f)), -37532i, true), Struct_3(Struct_2(vec4<f32>(-1718f, -415f, -1785f, -211f)), -8347i, true));

var<private> global2: vec3<i32> = vec3<i32>(-19716i, 2147483647i, i32(-2147483648));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = abs(~(-global2.x));
    var var_1 = u_input.a.yz;
    var_0 = u_input.b.x;
    global1 = array<Struct_3, 15>();
    global1 = array<Struct_3, 15>();
    return Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, ~vec3<u32>(63107u, var_1.x, 4294967295u), min(~vec3<u32>(18772u, 1u, u_input.a.x), ~u_input.a)), vec3<u32>(4294967295u, var_1.x, 8408u)), ~vec2<i32>(~2147483647i, u_input.b.x), -710f);
}

fn func_3() -> i32 {
    let var_0 = abs(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-8864i, 6181i, -10570i), vec3<i32>(1i, -2147483647i, 2147483647i)), _wgslsmith_mult_i32(global2.x, global2.x))) >> (~u_input.a.x % 32u);
    global2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_0, i32(-1i) * -16779i), _wgslsmith_add_vec3_i32(u_input.b.zyx, min(countOneBits(vec3<i32>(-1i, u_input.b.x, global2.x)), abs(vec3<i32>(1i, -1762i, 2147483647i)))) ^ _wgslsmith_clamp_vec3_i32(firstTrailingBit(u_input.b.xzy) >> (u_input.a % vec3<u32>(32u)), vec3<i32>(1i, -u_input.b.x, max(global2.x, u_input.b.x)), u_input.b.wyz));
    let var_1 = select(u_input.b.ywy, vec3<i32>(u_input.b.x, ~12779i, 58759i), select(!vec3<bool>(u_input.a.x <= u_input.a.x, any(vec4<bool>(true, true, false, false)), all(vec3<bool>(false, false, false))), select(vec3<bool>(true, any(vec3<bool>(false, true, false)), true), vec3<bool>(all(vec3<bool>(false, true, false)), true, select(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true)))), true));
    global1 = array<Struct_3, 15>();
    var var_2 = -vec3<i32>(firstLeadingBit(_wgslsmith_mod_i32(var_0 << (22430u % 32u), 31774i)), 0i, _wgslsmith_clamp_i32(u_input.b.x >> (1u % 32u), -42726i, ~(-1i)));
    return ~2147483647i;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = func_2(666f);
    var var_1 = ~arg_0.x;
    let var_2 = ~vec2<i32>(arg_0.x, -(~0i));
    let var_3 = var_0.a.x;
    global2 = _wgslsmith_mod_vec3_i32(vec3<i32>(func_3() & -1i, -reverseBits(var_0.b.x), ~(u_input.b.x | 0i)), vec3<i32>(-u_input.b.x, 0i, 19223i)) ^ -_wgslsmith_div_vec3_i32(-reverseBits(vec3<i32>(arg_0.x, global2.x, arg_0.x)), -(~u_input.b.yxz));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 103055u;
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1115f, _wgslsmith_f_op_f32(round(1324f)), _wgslsmith_div_f32(297f, 1681f), _wgslsmith_f_op_f32(1000f * 933f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1094f, 1601f, 377f, 227f)) * vec4<f32>(1202f, 200f, 1130f, -179f))) - vec4<f32>(-1457f, _wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(-801f - 934f)), -1000f, _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b))))));
    let var_1 = !vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), ~(-19161i) >= u_input.b.x);
    global2 = _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, u_input.b.x, u_input.b.x), u_input.b.wyx | firstLeadingBit(-firstLeadingBit(u_input.b.xyy)));
    let var_2 = max(128973u, ~_wgslsmith_sub_u32(u_input.a.x << (0u % 32u), 1u));
    var var_3 = -1091f;
    let var_4 = !(!select(!select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x)), !vec4<bool>(true, true, false, var_1.x), u_input.b.x == firstLeadingBit(-2147483647i)));
    var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - 2323f) * 1252f)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(round(var_0.a.x)))), -245f));
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~0u) ^ (var_2 & _wgslsmith_sub_u32(var_2, 4294967295u)), 40116u, u_input.a.x), abs(vec3<u32>(abs(~var_2), min(reverseBits(0u), var_2), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(global2.x, global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), -526f)), -709f)), vec4<f32>(1637f, func_2(_wgslsmith_f_op_f32(select(-1096f, _wgslsmith_f_op_f32(-var_0.a.x), var_1.x))).c, -336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-799f, 531f))))), global2.x, u_input.b.x);
}

