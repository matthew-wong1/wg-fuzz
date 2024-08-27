struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-288f, -154f, -860f), vec3<f32>(-768f, -1243f, -320f), vec3<f32>(803f, -773f, -911f), vec3<f32>(215f, -1000f, -683f), vec3<f32>(-173f, 2356f, 1257f), vec3<f32>(-749f, 1695f, -285f), vec3<f32>(300f, -1000f, -943f), vec3<f32>(712f, -156f, -576f), vec3<f32>(-1165f, -1195f, 634f), vec3<f32>(1000f, -1244f, -1336f), vec3<f32>(-1019f, -1278f, -1049f), vec3<f32>(195f, 462f, -580f), vec3<f32>(433f, 1594f, 783f), vec3<f32>(584f, -452f, 543f), vec3<f32>(-1831f, 545f, -628f), vec3<f32>(-780f, 584f, 212f));

var<private> global1: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false));

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_vec3_i32(countOneBits(~vec3<i32>(u_input.c, abs(-39596i), arg_2)), select(vec3<i32>(~(~(-1i)), _wgslsmith_add_i32(-u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, arg_2), ~vec3<i32>(u_input.c, -2147483647i, 33970i))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(arg_2, u_input.c, -35254i), select(vec3<i32>(arg_2, u_input.c, arg_2), vec3<i32>(u_input.c, 0i, arg_2), vec3<bool>(arg_0.x, arg_3.b, arg_3.b))), _wgslsmith_mod_vec3_i32(max(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-2147483647i, arg_2, arg_2)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, -41013i, -2147483647i), vec3<i32>(1i, u_input.c, u_input.c)))), true | (arg_3.b || true)));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_add_u32(abs(u_input.b.x), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 254u), arg_3.a)), arg_3.a), 5u)];
    var_0 = vec3<i32>((firstTrailingBit(u_input.c) >> (1u % 32u)) & 2147483647i, u_input.c, 2147483647i);
    let var_2 = arg_3;
    let var_3 = false;
    return 26597u;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    let var_0 = Struct_1(select(30655u, func_3(!select(vec2<bool>(false, false), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), 1703f, arg_0.x, global3[_wgslsmith_index_u32(firstTrailingBit(~0u), 5u)]), arg_1 & arg_1), !arg_1);
    var var_1 = all(!select(!vec2<bool>(var_0.b, true), !vec2<bool>(false, var_0.b), vec2<bool>(true, false)));
    var var_2 = Struct_1(1u, !all(select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(arg_1, true), false), !vec2<bool>(arg_1, arg_1), true)));
    let var_3 = vec3<bool>(!(!(var_2.b && arg_1)), var_0.b, select(var_2.b, false, arg_1));
    var_2 = Struct_1(var_0.a, select(true, false, var_0.b));
    return 0u;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_mult_u32((u_input.b.x >> (u_input.b.x % 32u)) ^ func_2(vec2<i32>(28096i, u_input.c), true), _wgslsmith_mod_u32(~u_input.b.x | _wgslsmith_mod_u32(~30775u, u_input.b.x), 4294967295u));
    let var_1 = _wgslsmith_mult_i32(~reverseBits(~_wgslsmith_sub_i32(u_input.c, u_input.c)), reverseBits(u_input.c));
    global2 = true;
    global3 = array<Struct_1, 5>();
    var var_2 = select(select(vec3<bool>((4294967295u | u_input.d) >= u_input.a, true, true), vec3<bool>(true, true, true), false), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), u_input.c == u_input.c), vec3<bool>(true, all(vec2<bool>(false, true)), true), false), !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), any(vec4<bool>(true, true, true, true))), true);
    return any(select(!select(vec2<bool>(var_2.x, true), vec2<bool>(false, var_2.x), var_2.xx), !select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x), true), select(select(var_2.yx, var_2.zy, var_2.x), var_2.xx, true))) | false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~47749u, !(false | (func_1() | true)));
    global2 = true & ((true & (u_input.c > -11129i)) != !any(global1[_wgslsmith_index_u32(u_input.d, 17u)]));
    var var_1 = ~firstLeadingBit(u_input.b ^ u_input.b);
    let var_2 = _wgslsmith_div_u32(~var_1.x, _wgslsmith_clamp_u32(var_1.x, 113968u, 73558u));
    var var_3 = -2147483647i;
    var var_4 = select(select(!select(!vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(var_0.b, false), vec2<bool>(false, true), var_0.b)), !(!(!vec2<bool>(true, var_0.b))), false), !(!vec2<bool>(var_0.b, func_1())), !vec2<bool>(var_0.b, true));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-510f)), _wgslsmith_div_f32(1361f, -782f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-160f, -138f)) * vec2<f32>(223f, -1366f)) - vec2<f32>(1f, 1f))));
    global1 = array<vec4<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, select(-(~(~vec2<i32>(u_input.c, u_input.c))), -select(_wgslsmith_div_vec2_i32(vec2<i32>(-9354i, -1i), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, 22295i), !vec2<bool>(var_0.b, var_4.x)), false || (var_0.b && (var_1.x < var_1.x))));
}

