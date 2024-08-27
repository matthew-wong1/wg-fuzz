struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(52794u, 4294967295u, 10347u), Struct_1(vec4<f32>(-551f, -1804f, 2160f, 409f)), true, 1406f);

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(412f, 1014f), vec2<f32>(896f, 612f), vec2<f32>(-1354f, -1214f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = -13703i;
    global2 = array<vec2<f32>, 3>();
    global2 = array<vec2<f32>, 3>();
    global2 = array<vec2<f32>, 3>();
    global0 = array<i32, 31>();
    return u_input.b.ywy;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(u_input.b.xzz, _wgslsmith_add_i32(abs(global0[_wgslsmith_index_u32(~1u, 31u)]) << (~min(4294967295u, global1.a.x) % 32u), -firstTrailingBit(1i)), Struct_2(func_3(), Struct_1(_wgslsmith_f_op_vec4_f32(round(global1.b.a))), all(select(!vec3<bool>(true, true, global1.c), !vec3<bool>(true, global1.c, global1.c), vec3<bool>(true, true, true))), 782f), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -841f), global1.d, _wgslsmith_f_op_f32(global1.d + 108f), _wgslsmith_f_op_f32(select(-381f, global1.d, false))))), Struct_2(~(~global1.a), global1.b, false, _wgslsmith_f_op_f32(global1.d + 1000f)));
    var var_1 = var_0.c.b.a.wyz;
    var var_2 = var_0.e;
    global1 = var_0.c;
    global0 = array<i32, 31>();
    return global1.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4) -> bool {
    global0 = array<i32, 31>();
    let var_0 = Struct_2(global1.a, func_2(), true, _wgslsmith_f_op_f32(565f * global1.d));
    let var_1 = 42878u << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(select(86733u, global1.a.x, arg_0.x), 1u), ~vec2<u32>(u_input.a, global1.a.x)), _wgslsmith_sub_u32(arg_1.b.a.x, _wgslsmith_sub_u32(1u, global1.a.x)) & global1.a.x) % 32u);
    var var_2 = -_wgslsmith_add_vec3_i32(reverseBits(~vec3<i32>(33654i, arg_1.d.b, global0[_wgslsmith_index_u32(var_1, 31u)])), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], -2147483647i), vec3<i32>(26571i, 2791i, -1i)), 1i, ~global0[_wgslsmith_index_u32(arg_1.b.a.x, 31u)]));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(406f, arg_1.d.e.b.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d, 332f)))))), var_0.b.a.x));
    return select(arg_1.d.e.c, true, arg_1.d.c.c);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = func_2();
    let var_1 = all(!select(!select(vec4<bool>(global1.c, true, arg_1, true), vec4<bool>(true, true, false, false), true), !select(vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_3.b.c, false, global1.c, arg_1), true), !select(vec4<bool>(arg_1, arg_3.d.c.c, true, true), vec4<bool>(false, global1.c, false, arg_2.d.e.c), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, 1611f, -1804f, 1113f) + var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, -1327f, var_0.a.x, arg_2.a.x)), select(!vec4<bool>(true, var_1, false, arg_2.d.e.c), vec4<bool>(true, arg_2.b.c, false, false), !vec4<bool>(arg_3.d.e.c, arg_3.d.e.c, false, false))))));
    var var_3 = 859f;
    let var_4 = -2147483647i;
    return !(!vec4<bool>(false, any(!vec3<bool>(true, arg_2.d.e.c, arg_1)), any(select(vec3<bool>(global1.c, arg_3.b.c, arg_3.b.c), vec3<bool>(true, arg_3.d.c.c, true), vec3<bool>(true, arg_2.b.c, true))), arg_1));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = abs(~global0[_wgslsmith_index_u32(arg_2.b.a.x, 31u)]);
    let var_1 = global1.b;
    global2 = array<vec2<f32>, 3>();
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(sign(global1.d));
    return Struct_3(global1.a, 1i, Struct_2(vec3<u32>(u_input.a, _wgslsmith_clamp_u32(firstTrailingBit(arg_2.b.a.x), 4294967295u, ~4294967295u), 28099u), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, -1120f, var_2.a.x, global1.b.a.x)), vec4<f32>(-1521f, var_2.a.x, -2014f, global1.b.a.x)))), ((global1.c && true) && false) || true, _wgslsmith_f_op_f32(296f + _wgslsmith_div_f32(446f, -1000f))), func_2(), arg_2.d.e);
}

fn func_6(arg_0: Struct_3) -> Struct_4 {
    global0 = array<i32, 31>();
    let var_0 = u_input.c.wyx;
    var var_1 = vec4<i32>(max(24465i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], -30681i, 27095i), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.a.x, 31u)], arg_0.b, 0i)))), arg_0.b, i32(-1i) * -19172i, _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(1i) << (var_0.x % 32u), arg_0.b), abs((global0[_wgslsmith_index_u32(7401u, 31u)] ^ global0[_wgslsmith_index_u32(u_input.b.x, 31u)]) & arg_0.b)));
    global1 = Struct_2(max(~vec3<u32>(1u, abs(37891u), abs(u_input.a)), max(vec3<u32>(4294967295u, global1.a.x, u_input.a), select(u_input.b.xwy, vec3<u32>(4294967295u, 0u, var_0.x), vec3<bool>(false, false, arg_0.e.c))) << (func_3() % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.b.a))) * vec4<f32>(global1.b.a.x, 1000f, 185f, -321f))), true, 1165f);
    var var_2 = vec3<i32>(_wgslsmith_div_i32(-firstLeadingBit(50757i), ~global0[_wgslsmith_index_u32(1u ^ u_input.c.x, 31u)]) | global0[_wgslsmith_index_u32(global1.a.x, 31u)], firstTrailingBit(i32(-1i) * -20148i), -2147483647i);
    return Struct_4(arg_0.e.b.a.ww, func_5(~5610u, select(vec4<bool>(arg_0.c.a.x < 1u, any(vec3<bool>(arg_0.e.c, true, false)), global1.c, all(vec3<bool>(false, global1.c, false))), !(!vec4<bool>(global1.c, true, true, true)), false), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1119f, 504f)) * vec2<f32>(global1.b.a.x, arg_0.e.d)), func_5(var_0.x, vec4<bool>(false, global1.c, arg_0.c.c, false), Struct_4(global2[_wgslsmith_index_u32(1u, 3u)], Struct_2(global1.a, Struct_1(vec4<f32>(1000f, -1000f, arg_0.e.b.a.x, 462f)), global1.c, -616f), arg_0.d.a.x, arg_0)).e, -1047f, Struct_3(vec3<u32>(global1.a.x, arg_0.c.a.x, 1u), var_2.x, Struct_2(vec3<u32>(arg_0.c.a.x, arg_0.e.a.x, global1.a.x), Struct_1(vec4<f32>(-655f, arg_0.c.d, arg_0.c.d, 1891f)), global1.c, -1138f), global1.b, arg_0.e))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-100f * 451f) * global1.b.a.x)), Struct_3(vec3<u32>(var_0.x, max(~1u, 4193u), 1u), 1i, Struct_2(abs(_wgslsmith_add_vec3_u32(arg_0.c.a, arg_0.a)), global1.b, any(!vec3<bool>(arg_0.c.c, false, true)), -154f), Struct_1(func_5(arg_0.e.a.x, vec4<bool>(arg_0.e.c, true, arg_0.e.c, true), Struct_4(vec2<f32>(-115f, -159f), arg_0.c, -627f, arg_0)).d.a), Struct_2(vec3<u32>(arg_0.c.a.x | 0u, ~global1.a.x, 4294967295u >> (arg_0.a.x % 32u)), Struct_1(vec4<f32>(377f, 1375f, -1389f, -521f)), func_4(Struct_1(vec4<f32>(-405f, global1.d, arg_0.d.a.x, -395f)), global1.c, Struct_4(vec2<f32>(152f, 386f), Struct_2(vec3<u32>(74222u, 0u, 6606u), arg_0.c.b, true, -572f), arg_0.e.d, arg_0), Struct_4(global1.b.a.wx, Struct_2(vec3<u32>(global1.a.x, 4294967295u, 0u), global1.b, global1.c, 631f), arg_0.e.b.a.x, arg_0)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1272f)))));
}

fn func_7(arg_0: Struct_4, arg_1: i32, arg_2: vec3<u32>) -> StorageBuffer {
    global2 = array<vec2<f32>, 3>();
    global1 = Struct_2(select(~select(~vec3<u32>(0u, 48735u, arg_2.x), vec3<u32>(108052u, u_input.c.x, u_input.c.x), vec3<bool>(arg_0.d.c.c, arg_0.d.e.c, true)), ~vec3<u32>(u_input.b.x, max(1u, 4294967295u), abs(arg_0.b.a.x)), arg_0.d.e.c), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.d.c.b.a)), ~0u > arg_0.d.e.a.x, _wgslsmith_f_op_f32(round(-104f)));
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1, reverseBits(2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1526i, 55217i) ^ abs(vec2<i32>(arg_1, arg_1)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.d.b, arg_0.d.b), vec2<i32>(arg_0.d.b, -2147483647i)), -vec2<i32>(arg_0.d.b, global0[_wgslsmith_index_u32(69854u, 31u)]), arg_0.d.e.c & false)), countOneBits(abs(vec2<i32>(25325i, 46581i)) | min(vec2<i32>(25578i, arg_0.d.b), vec2<i32>(arg_0.d.b, 30019i)))));
    global0 = array<i32, 31>();
    var var_1 = global1.b;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(465f, var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 3>();
    let x = u_input.a;
    s_output = func_7(func_6(func_5(~(~u_input.c.x), func_4(Struct_1(global1.b.a), func_1(vec3<bool>(false, global1.c, false), Struct_4(vec2<f32>(global1.d, global1.d), Struct_2(global1.a, Struct_1(vec4<f32>(-1000f, global1.b.a.x, -946f, global1.d)), false, global1.b.a.x), global1.b.a.x, Struct_3(vec3<u32>(53974u, u_input.c.x, 35266u), -16327i, Struct_2(u_input.c.zyy, global1.b, true, global1.d), global1.b, Struct_2(u_input.c.yww, global1.b, global1.c, 271f)))), Struct_4(vec2<f32>(-905f, 215f), Struct_2(global1.a, global1.b, false, -1654f), 1000f, Struct_3(u_input.c.xxy, global0[_wgslsmith_index_u32(u_input.a, 31u)], Struct_2(global1.a, global1.b, false, global1.b.a.x), Struct_1(vec4<f32>(-586f, global1.b.a.x, 425f, global1.b.a.x)), Struct_2(global1.a, Struct_1(global1.b.a), global1.c, global1.b.a.x))), Struct_4(global1.b.a.xy, Struct_2(vec3<u32>(4294967295u, 32611u, 0u), global1.b, true, 539f), 504f, Struct_3(u_input.c.wxy, global0[_wgslsmith_index_u32(4294967295u, 31u)], Struct_2(global1.a, Struct_1(vec4<f32>(-1226f, 248f, global1.d, global1.b.a.x)), global1.c, -833f), global1.b, Struct_2(u_input.c.wxz, Struct_1(vec4<f32>(-136f, global1.b.a.x, global1.b.a.x, global1.d)), global1.c, -806f)))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1510f, -1000f) + global1.b.a.zy), Struct_2(vec3<u32>(u_input.a, 26621u, 0u), Struct_1(vec4<f32>(-753f, global1.b.a.x, 2279f, 518f)), false, global1.d), _wgslsmith_f_op_f32(global1.b.a.x + -653f), Struct_3(u_input.c.zww, global0[_wgslsmith_index_u32(15123u, 31u)], Struct_2(vec3<u32>(4294967295u, u_input.c.x, 4294967295u), global1.b, global1.c, 1000f), global1.b, Struct_2(global1.a, global1.b, false, global1.b.a.x))))), global0[_wgslsmith_index_u32(1u, 31u)], ~u_input.c.xzz);
}

