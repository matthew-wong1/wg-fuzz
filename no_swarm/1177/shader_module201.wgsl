struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(76222u, vec3<u32>(33746u, 1u, 31826u), 31522i, 1u, 2180u), Struct_3(1u, vec3<u32>(0u, 52066u, 0u), 1i, 1u, 0u), Struct_3(1u, vec3<u32>(290u, 16115u, 1u), 0i, 4294967295u, 1u), Struct_3(4294967295u, vec3<u32>(1u, 20884u, 1u), -1i, 1u, 78695u), Struct_3(0u, vec3<u32>(1u, 23518u, 41454u), -1i, 1u, 46749u), Struct_3(19432u, vec3<u32>(29022u, 11897u, 4294967295u), 2147483647i, 31220u, 10114u), Struct_3(1u, vec3<u32>(10263u, 1u, 0u), -35331i, 0u, 0u), Struct_3(0u, vec3<u32>(0u, 1u, 29421u), i32(-2147483648), 4294967295u, 4294967295u), Struct_3(84141u, vec3<u32>(0u, 1u, 2601u), 2147483647i, 0u, 23707u), Struct_3(69563u, vec3<u32>(43196u, 0u, 4294967295u), 1i, 14292u, 1u), Struct_3(40377u, vec3<u32>(45714u, 14310u, 1u), 26303i, 1u, 1u), Struct_3(4294967295u, vec3<u32>(73550u, 3566u, 31807u), 26797i, 1u, 0u), Struct_3(1u, vec3<u32>(0u, 35544u, 1u), 33664i, 59720u, 63142u), Struct_3(48163u, vec3<u32>(0u, 4294967295u, 4294967295u), 0i, 4294967295u, 63202u), Struct_3(4294967295u, vec3<u32>(1u, 1u, 0u), i32(-2147483648), 0u, 0u), Struct_3(1u, vec3<u32>(4294967295u, 4294967295u, 48838u), -2458i, 0u, 4294967295u), Struct_3(61159u, vec3<u32>(1u, 11947u, 0u), -22020i, 0u, 55592u), Struct_3(6448u, vec3<u32>(1u, 79164u, 0u), 53756i, 1u, 4294967295u), Struct_3(2771u, vec3<u32>(4294967295u, 4294967295u, 41256u), -11541i, 99066u, 34420u), Struct_3(8450u, vec3<u32>(0u, 89287u, 8204u), -48176i, 0u, 0u), Struct_3(76570u, vec3<u32>(5858u, 1u, 0u), 13762i, 4294967295u, 21211u), Struct_3(31979u, vec3<u32>(1u, 19459u, 133874u), 1i, 4294967295u, 63627u), Struct_3(29210u, vec3<u32>(65412u, 60881u, 86u), 22791i, 1u, 0u), Struct_3(33374u, vec3<u32>(0u, 43307u, 0u), 2147483647i, 1u, 0u));

var<private> global1: array<f32, 27> = array<f32, 27>(-1376f, -1221f, 1094f, 1000f, -170f, 2472f, 1512f, 174f, -1000f, 1559f, -1000f, -1276f, -656f, 1265f, -1148f, -966f, -522f, 129f, -1785f, 1910f, -826f, -1811f, 410f, -460f, -1081f, -873f, -438f);

var<private> global2: array<Struct_4, 7>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    var var_0 = select(u_input.a, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 106360u, 45588u, 26784u), vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x) | u_input.a, vec4<u32>(u_input.b, 4294967295u, u_input.b, 828u)) | _wgslsmith_div_vec4_u32(u_input.a, firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 0u))), ~u_input.a), !vec4<bool>(true, true, any(select(global3.zwy, global3.xxz, true)), true));
    let var_1 = Struct_1(select(u_input.a, abs(u_input.a) | ~vec4<u32>(u_input.c.x, 16257u, u_input.a.x, var_0.x), false) >> (select(select(abs(u_input.a), reverseBits(vec4<u32>(35270u, 4294967295u, 4294967295u, u_input.c.x)), true), vec4<u32>(u_input.c.x | u_input.c.x, ~73314u, u_input.b, 1u), !any(vec4<bool>(global3.x, true, false, false))) % vec4<u32>(32u)));
    let var_2 = ~(~var_1.a.x);
    var var_3 = Struct_2(u_input.c, vec2<u32>(_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, 11168u, 4294967295u), vec3<u32>(var_2, var_2, var_0.x)), firstTrailingBit(u_input.a.wyx), !global3.xzz), ~(~vec3<u32>(var_1.a.x, var_0.x, 1u))), ~1u << ((u_input.c.x & 1u) % 32u)), var_1.a.x, (~firstTrailingBit(var_2) < var_2) | global3.x, Struct_1(vec4<u32>(~select(var_0.x, 0u, false), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, u_input.c.x), ~var_1.a.wz), _wgslsmith_div_u32(var_0.x, var_1.a.x >> (30665u % 32u)), 2734u)));
    global1 = array<f32, 27>();
    return _wgslsmith_mod_vec4_i32(-(~vec4<i32>(2147483647i, 1i, 2147483647i, max(0i, 1i))), ~_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(54769i, 19220i, 41447i, 2147483647i)), vec4<i32>(20400i, 0i, -2147483647i, -1i) << (vec4<u32>(0u, 9277u, 4294967295u, var_2) % vec4<u32>(32u))) | (~(-vec4<i32>(0i, 2147483647i, -2781i, 36757i)) >> ((var_3.e.a >> (vec4<u32>(4294967295u, u_input.a.x, 6820u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> bool {
    global2 = array<Struct_4, 7>();
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(~(vec4<u32>(1u, u_input.a.x, u_input.c.x, u_input.a.x) << ((u_input.a ^ u_input.a) % vec4<u32>(32u))), u_input.a & _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a), vec4<u32>(85095u, u_input.c.x, 1u, u_input.c.x))));
    global2 = array<Struct_4, 7>();
    let var_1 = vec3<bool>(true, global3.x, false);
    var var_2 = global2[_wgslsmith_index_u32(~23538u, 7u)];
    return !var_1.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    global3 = vec4<bool>(true, (((i32(-1i) * -2147483647i) << (arg_1.a.x % 32u)) < ~44366i) || arg_1.d, global3.x, all(!vec3<bool>(!global3.x, global3.x, -723f < arg_2.x)));
    let var_0 = -1038f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.b.x, 27u)])));
    var var_1 = func_4(min(_wgslsmith_mult_vec3_i32(-select(vec3<i32>(-41767i, arg_0, arg_0), vec3<i32>(-57753i, arg_0, 18150i), false), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(-56202i, 8833i, arg_0))), max(~vec3<i32>(0i, arg_0, arg_0), vec3<i32>(arg_0, -45327i, arg_0))), _wgslsmith_dot_vec4_i32(firstTrailingBit(min(func_3(), -vec4<i32>(arg_0, 0i, arg_0, arg_0))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_0, 21678i, 2147483647i, -1i), vec4<i32>(0i, -2147483647i, arg_0, -2147483647i) | vec4<i32>(arg_0, 2147483647i, -19531i, arg_0), select(vec4<bool>(arg_1.d, true, arg_1.d, arg_1.d), vec4<bool>(global3.x, var_0, var_0, var_0), global3.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_0, arg_0, arg_0), vec4<i32>(arg_0, 2147483647i, -1i, arg_0), vec4<i32>(-2147483647i, arg_0, arg_0, arg_0)), firstTrailingBit(vec4<i32>(1i, arg_0, arg_0, arg_0))), (vec4<i32>(-46103i, 43175i, arg_0, -1i) | vec4<i32>(37021i, arg_0, 2147483647i, 1814i)) << (~u_input.a % vec4<u32>(32u)))));
    let var_2 = arg_0;
    var var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 7u)];
    return arg_1;
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> u32 {
    global2 = array<Struct_4, 7>();
    let var_0 = !vec3<bool>(arg_2.d, any(!(!global3.wyz)), global3.x);
    let var_1 = -2147483647i;
    var var_2 = ~max(-(vec3<i32>(var_1, var_1, var_1) & vec3<i32>(var_1, var_1, -2147483647i)), -(~vec3<i32>(2147483647i, var_1, 1i))) >> (_wgslsmith_clamp_vec3_u32(abs(u_input.a.yyw), _wgslsmith_add_vec3_u32(vec3<u32>(79917u, ~u_input.c.x, ~4294967295u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(15801u, 0u, 1u), arg_2.e.a.wxw)), ~(~(vec3<u32>(41636u, u_input.b, arg_2.c) & vec3<u32>(u_input.a.x, arg_2.a.x, 4294967295u)))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3)));
    return ~27311u;
}

fn func_1(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_2(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zww, vec3<u32>(u_input.b, 1u, u_input.a.x)) << (~u_input.a.x % 32u), 4294967295u), _wgslsmith_mult_vec2_u32(~(u_input.a.yw & u_input.a.zw), ~u_input.a.yx), ~firstTrailingBit(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)], -1235f, -1028f)), false, func_2(-2147483647i, Struct_2(vec2<u32>(u_input.c.x, 1u), vec2<u32>(4294967295u, u_input.c.x), 5358u, global3.x, Struct_1(u_input.a)), arg_0), _wgslsmith_f_op_f32(836f + 1180f))), global3.x, Struct_1(~u_input.a >> (min(u_input.a, ~u_input.a) % vec4<u32>(32u))));
    var var_1 = func_2(~firstTrailingBit(40654i), var_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(418f, global1[_wgslsmith_index_u32(var_0.c, 27u)], arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2119f, _wgslsmith_div_f32(arg_0.x, arg_0.x), global1[_wgslsmith_index_u32(27784u, 27u)], _wgslsmith_f_op_f32(218f + arg_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))))).e;
    let var_2 = Struct_3(~1u, var_0.e.a.wzz, _wgslsmith_div_i32(-2147483647i, -31324i), _wgslsmith_clamp_u32(var_0.e.a.x, var_1.a.x >> ((var_1.a.x ^ var_1.a.x) % 32u), reverseBits(~(~var_0.c))), _wgslsmith_mult_u32(firstTrailingBit(var_1.a.x), ~0u));
    let var_3 = ~abs(countOneBits(-(~vec4<i32>(33415i, -2147483647i, -8202i, -2147483647i))));
    var_1 = var_0.e;
    return select(!select(!global3.xwx, !vec3<bool>(var_0.d, false, false), vec3<bool>(all(vec4<bool>(var_0.d, true, true, true)), var_0.d, true)), global3.xwz, func_4(_wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c, -59605i, var_2.c), var_3.yxz), select(min(var_3.xwy, vec3<i32>(var_2.c, var_2.c, -1i)), var_3.yxx | var_3.zzw, false)), var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 27>();
    global3 = !vec4<bool>(global3.x, !all(func_1(vec4<f32>(-685f, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -1473f, global1[_wgslsmith_index_u32(u_input.b, 27u)]))), true || global3.x, true);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(max(956u, u_input.b), 27u)], _wgslsmith_f_op_f32(max(1715f, global1[_wgslsmith_index_u32(u_input.c.x, 27u)]))))))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2482f, _wgslsmith_f_op_f32(max(var_0, global1[_wgslsmith_index_u32(~0u, 27u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 27u)] + -811f), _wgslsmith_f_op_f32(156f - 1321f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1342f, var_0, -224f) * vec3<f32>(var_0, var_0, 128f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -144f), -986f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -1429f, var_0))))))));
    global3 = !vec4<bool>(global3.x, !(!select(global3.x, false, false)), true, false);
    let var_2 = global3.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0), 335f, 908f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, 627f, -253f, var_3) - vec4<f32>(var_1.x, var_3, 1000f, var_3)))), !(!(global3.x != global3.x)), func_2(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-7248i, -38371i, 34195i, -2147483647i), vec4<i32>(-1i, -17852i, -42432i, 33455i)), -2191i), func_2(-1i, Struct_2(u_input.c, vec2<u32>(51979u, 1u), 4294967295u, false, Struct_1(u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1120f, var_3, -952f) * vec4<f32>(global1[_wgslsmith_index_u32(654u, 27u)], -1120f, global1[_wgslsmith_index_u32(1u, 27u)], -737f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(345f, -595f, var_0, 968f) + vec4<f32>(-844f, -110f, -2368f, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1308f, 1473f, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]) * vec4<f32>(628f, var_3, -749f, 574f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2031f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 27u)]) * _wgslsmith_f_op_f32(f32(-1f) * -718f)))), _wgslsmith_mult_i32(0i, -7686i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -1800f)), 623f);
}

