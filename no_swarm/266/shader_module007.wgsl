struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 12859u, 1u);

var<private> global1: Struct_2 = Struct_2(Struct_1(1i), 83447u, true, vec3<i32>(1i, 1i, -12203i));

var<private> global2: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(935f, 1259f, -1854f, -290f), vec4<f32>(-529f, -213f, -1253f, 408f), vec4<f32>(658f, 858f, -608f, 1530f), vec4<f32>(-1264f, -212f, -1657f, 130f), vec4<f32>(-802f, 505f, 406f, 578f), vec4<f32>(-1412f, 1000f, -627f, -1462f), vec4<f32>(308f, -982f, 587f, 1000f), vec4<f32>(-1622f, 207f, 1585f, 1979f), vec4<f32>(1000f, -426f, 485f, -634f), vec4<f32>(-1000f, -145f, -936f, -770f), vec4<f32>(1463f, -126f, 1000f, -800f), vec4<f32>(-215f, 1115f, -309f, -717f), vec4<f32>(-728f, -624f, 1000f, -752f), vec4<f32>(1156f, 252f, -195f, -1272f), vec4<f32>(258f, 165f, -1679f, -670f), vec4<f32>(922f, 524f, 1654f, -1184f), vec4<f32>(569f, 582f, -693f, 849f), vec4<f32>(-816f, 1823f, 1034f, -377f), vec4<f32>(-845f, 234f, -1000f, 620f), vec4<f32>(-1000f, -224f, 524f, -1000f), vec4<f32>(-1456f, -1931f, -821f, -154f), vec4<f32>(-901f, 407f, 979f, 1000f), vec4<f32>(443f, -698f, 573f, -1346f), vec4<f32>(-1188f, 574f, -2323f, 433f), vec4<f32>(-1080f, -1000f, -1988f, 1078f), vec4<f32>(-832f, -1000f, 394f, 189f), vec4<f32>(776f, 626f, -433f, 365f), vec4<f32>(1000f, -1000f, 1404f, -1258f), vec4<f32>(-654f, -441f, -1509f, -407f), vec4<f32>(-1000f, 1000f, -211f, -1000f), vec4<f32>(1012f, 925f, -1020f, 545f), vec4<f32>(794f, -157f, -173f, -288f));

var<private> global3: Struct_1 = Struct_1(-1i);

var<private> global4: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<i32> {
    global4 = 1u;
    var var_0 = ~u_input.a;
    global2 = array<vec4<f32>, 32>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_2))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_2, arg_2, !(!vec2<bool>(arg_1, arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_div_f32(arg_2.x, arg_2.x))), global1.a.a != _wgslsmith_dot_vec2_i32(global1.d.xz << (vec2<u32>(arg_0.x, global1.b) % vec2<u32>(32u)), -vec2<i32>(global3.a, global1.a.a)))));
    global0 = _wgslsmith_sub_vec3_u32(firstLeadingBit(arg_0.yzw), max(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, arg_0.x) & arg_0.wwy, ~arg_0.xwx), max(~(~arg_0.yxw), vec3<u32>(19137u, _wgslsmith_dot_vec2_u32(arg_0.xx, global0.yz), global0.x))));
    return vec3<i32>(0i, _wgslsmith_mult_i32(45536i | abs(u_input.a.x), _wgslsmith_add_i32((arg_3.a << (83912u % 32u)) >> (1u % 32u), 2147483647i)), ~arg_3.a ^ u_input.a.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_0, global1.b, global1.c, max(~global1.d, select(-func_3(vec4<u32>(4294967295u, 1u, 4294967295u, 43199u), global1.c, vec2<f32>(354f, 107f), Struct_1(global3.a)), ~(~global1.d), vec3<bool>(false, global1.c & global1.c, true))));
    var var_1 = _wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(3652i >> (global0.x % 32u), func_3(vec4<u32>(1u, 18601u, 4294967295u, 17762u), var_0.c, vec2<f32>(-326f, -321f), global1.a).x, _wgslsmith_clamp_i32(u_input.a.x, 41707i, 44493i), arg_0.a), vec4<i32>(global1.a.a, var_0.d.x, ~global3.a, _wgslsmith_sub_i32(global3.a, global3.a)))), ~min(-vec4<i32>(0i, var_0.a.a, u_input.a.x, var_0.a.a) & vec4<i32>(15381i, -50208i, 1i, 2284i), vec4<i32>(~4612i, 0i, -2147483647i, min(arg_0.a, u_input.a.x))));
    var var_2 = vec3<bool>(all(!vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(global1.c, false, var_0.c, var_0.c)), true, select(global1.c, true, var_0.c))), !(1u > ((var_0.b & var_0.b) ^ min(0u, 4294967295u))), false);
    let var_3 = ~(((vec4<u32>(var_0.b, global1.b, 10522u, global0.x) << (vec4<u32>(1u, var_0.b, 32776u, var_0.b) % vec4<u32>(32u))) ^ vec4<u32>(global1.b, var_0.b, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 4294967295u, var_0.b), vec4<u32>(global1.b, 1u, global1.b, 4294967295u)))) << ((select(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, global0.x, var_0.b, var_0.b), vec4<u32>(var_0.b, 0u, 75897u, var_0.b)), vec4<u32>(4294967295u, global1.b, var_0.b, global1.b) ^ vec4<u32>(var_0.b, 13666u, 1202u, 1u), var_2.x) >> (select(firstTrailingBit(vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), ~vec4<u32>(0u, global1.b, var_0.b, 4294967295u), select(vec4<bool>(true, false, var_0.c, false), vec4<bool>(var_0.c, true, false, var_2.x), vec4<bool>(false, global1.c, var_2.x, false))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = vec3<u32>(_wgslsmith_dot_vec3_u32(var_3.yxx, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(8723u, var_0.b, var_3.x, var_3.x)), ~54857u), var_0.b << (_wgslsmith_sub_u32(global1.b, global1.b) % 32u), firstTrailingBit(reverseBits(var_3.x)))), abs(var_3.x), firstTrailingBit(9449u));
    return Struct_1(_wgslsmith_clamp_i32(min(-1i, -37596i), 2147483647i, _wgslsmith_dot_vec2_i32(var_1.yx, -(u_input.a ^ vec2<i32>(var_1.x, arg_0.a)))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(func_2(Struct_1(-(~global1.a.a))), (1u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.b, global0.x, 0u), vec3<u32>(4294967295u, 38940u, global1.b)), ~vec3<u32>(0u, global0.x, global0.x)) % 32u)) | 0u, true, vec3<i32>(countOneBits(_wgslsmith_mult_i32(global3.a << (global1.b % 32u), select(global3.a, global3.a, true))), countOneBits(global1.a.a), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global1.d.zy, vec2<i32>(u_input.a.x, 1i)), 0i & u_input.a.x), global3.a)));
    var_0 = Struct_2(func_2(func_2(func_2(func_2(Struct_1(0i))))), var_0.b, var_0.c, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.d, var_0.d, var_0.d), abs(vec3<i32>(global3.a, 2147483647i, var_0.d.x))), vec3<i32>(firstLeadingBit(-5723i), var_0.d.x, -13861i)) >> (vec3<u32>(global0.x, abs(max(global1.b, 1u)), ~global1.b | 1u) % vec3<u32>(32u)));
    let var_1 = var_0.a;
    var var_2 = Struct_2(global1.a, 19269u, any(select(select(vec3<bool>(true, global1.c, true), vec3<bool>(global1.c, false, var_0.c), !vec3<bool>(false, false, global1.c)), vec3<bool>(any(vec2<bool>(var_0.c, false)), all(vec3<bool>(true, false, false)), var_0.b >= global1.b), vec3<bool>(false || global1.c, true, false))), ~var_0.d);
    var var_3 = var_2.a;
    return Struct_2(func_2(Struct_1(global1.d.x)), 26391u, all(vec2<bool>(false, false)), countOneBits(-vec3<i32>(1i, u_input.a.x >> (global0.x % 32u), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(reverseBits(vec3<u32>(global1.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(33637u, 1u), global0.yx), min(abs(global1.b), ~17777u))));
    global1 = Struct_2(global1.a, ~(~1u), global1.c, max(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(global1.d, global1.d), global1.d), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, global3.a, global1.d.x) >> (vec3<u32>(global1.b, 98468u, global1.b) % vec3<u32>(32u)), vec3<i32>(global3.a, 2147483647i, 21567i)), global1.d), ~_wgslsmith_sub_vec3_i32(~vec3<i32>(global1.a.a, 1i, global1.a.a), firstTrailingBit(vec3<i32>(global3.a, 1i, global1.a.a)))));
    let var_0 = func_1();
    global3 = Struct_1(-(~u_input.a.x) | _wgslsmith_add_i32(1i, firstTrailingBit(u_input.a.x >> (1u % 32u))));
    global3 = func_2(func_1().a);
    let var_1 = vec4<u32>(abs(0u), 0u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, global1.b, global1.b, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.b, 13201u, global1.b, 0u), vec4<u32>(global0.x, global1.b, 1u, 4294967295u))) % 32u), 4294967295u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(func_2(func_2(var_0.a)).a, _wgslsmith_add_i32(countOneBits(0i), min(u_input.a.x, global3.a)), func_2(global1.a).a), func_1().d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(170f, 548f, -1088f), vec3<f32>(-1000f, -2184f, 1000f), global1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(401f, -575f, 547f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1769f, 531f, -1764f), vec3<f32>(1092f, -2467f, 768f))))), select(_wgslsmith_sub_vec2_u32(var_1.zx, vec2<u32>(var_1.x, global0.x) | ~vec2<u32>(75432u, global1.b)), ~min(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 8501u), vec2<u32>(var_1.x, var_1.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.b, global1.b), global0.yz)), true), _wgslsmith_f_op_f32(f32(-1f) * -687f));
}

