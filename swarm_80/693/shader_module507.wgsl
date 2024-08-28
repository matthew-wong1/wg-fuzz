struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-560f, 528f), vec2<f32>(225f, 187f), vec2<f32>(1000f, -435f), vec2<f32>(480f, -202f), vec2<f32>(-131f, 408f), vec2<f32>(1066f, -1751f), vec2<f32>(-1036f, -816f), vec2<f32>(1000f, -433f), vec2<f32>(-894f, -141f), vec2<f32>(519f, -659f), vec2<f32>(936f, -1178f), vec2<f32>(2187f, 967f), vec2<f32>(950f, 481f), vec2<f32>(370f, -1161f), vec2<f32>(175f, 850f), vec2<f32>(-1494f, 2902f), vec2<f32>(1000f, -278f), vec2<f32>(1111f, -1192f), vec2<f32>(-594f, 135f), vec2<f32>(221f, 2203f), vec2<f32>(1089f, -278f), vec2<f32>(-1489f, -261f), vec2<f32>(-326f, -685f), vec2<f32>(-1429f, -1240f), vec2<f32>(-1846f, 160f), vec2<f32>(650f, -1269f), vec2<f32>(-1586f, 506f), vec2<f32>(-723f, 381f), vec2<f32>(695f, -525f), vec2<f32>(-1497f, -1069f));

var<private> global1: array<bool, 19> = array<bool, 19>(true, false, false, true, false, true, false, true, false, false, true, true, false, false, true, true, true, true, false);

var<private> global2: f32 = 172f;

var<private> global3: Struct_2 = Struct_2(vec4<u32>(1u, 0u, 11906u, 4294967295u), Struct_1(-538f, i32(-2147483648), vec2<f32>(-647f, 183f), false, vec2<i32>(0i, i32(-2147483648))), Struct_1(-1000f, 1i, vec2<f32>(-222f, -919f), true, vec2<i32>(2147483647i, 1i)), -753f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    var var_0 = global3.a.x;
    var var_1 = global3.c;
    let var_2 = var_1.e;
    let var_3 = global3.b.b;
    var var_4 = global0[_wgslsmith_index_u32(~global3.a.x, 30u)];
    return Struct_1(-1351f, var_1.b, _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(25586u, 30u)] - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(global3.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_4.x))))), true, countOneBits(vec2<i32>(_wgslsmith_div_i32(var_2.x & var_1.b, ~u_input.b), -16100i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> u32 {
    global1 = array<bool, 19>();
    let var_0 = firstLeadingBit(_wgslsmith_clamp_i32(select(_wgslsmith_mult_i32(u_input.b, 12648i), 5955i << (global3.a.x % 32u), false) ^ ~1i, global3.b.b, -2180i));
    let var_1 = global3.a.ww;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -432f);
    let var_2 = 26768i;
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> i32 {
    var var_0 = func_1();
    global1 = array<bool, 19>();
    global3 = Struct_2(reverseBits(vec4<u32>(max(~global3.a.x, global3.a.x), _wgslsmith_div_u32(30272u, u_input.a.x), _wgslsmith_sub_u32(~u_input.c, min(u_input.c, u_input.a.x)), min(_wgslsmith_add_u32(global3.a.x, global3.a.x), 1u))), func_1(), func_1(), -1022f);
    var var_1 = 11723i;
    global3 = Struct_2(vec4<u32>(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.a, 588f, global3.d, global3.d) - vec4<f32>(global3.c.a, var_0.c.x, 820f, 633f)), any(vec4<bool>(global1[_wgslsmith_index_u32(global3.a.x, 19u)], true, arg_1.x, var_0.d)), arg_0), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.a.x, u_input.c), vec3<u32>(global3.a.x, 0u, 24743u)), u_input.c, u_input.c) | vec4<u32>(5391u, abs(reverseBits(u_input.c)), min(func_3(vec4<f32>(global3.c.a, -758f, var_0.a, -1064f), false, global3.c.b), ~global3.a.x), 1u), Struct_1(_wgslsmith_f_op_f32(ceil(-1000f)), var_0.e.x, vec2<f32>(_wgslsmith_f_op_f32(global3.b.a + _wgslsmith_f_op_f32(ceil(global3.c.c.x))), var_0.c.x), true, vec2<i32>(-2147483647i, func_1().b)), Struct_1(func_1().a, _wgslsmith_clamp_i32(global3.c.e.x, 0i | var_0.b, u_input.b), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(global3.c.c)), vec2<f32>(global3.d, _wgslsmith_f_op_f32(-var_0.c.x)))), false, vec2<i32>(-10699i, 51029i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) * -1754f));
    return -(~select(select(~var_0.e.x, _wgslsmith_div_i32(2147483647i, global3.b.b), false), ~(-49934i), func_1().d | var_0.d));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> StorageBuffer {
    let var_0 = arg_2;
    global1 = array<bool, 19>();
    global0 = array<vec2<f32>, 30>();
    var var_1 = Struct_3(Struct_2(vec4<u32>(~firstTrailingBit(0u), ~20850u, global3.a.x ^ 1u, ~u_input.a.x), Struct_1(-841f, -(-33595i >> (u_input.a.x % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(0u, 30u)] * arg_0.xz)), all(!vec3<bool>(global3.b.d, false, arg_2.d)), global3.b.e), Struct_1(_wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_dot_vec2_i32(-arg_2.e, arg_3.wy ^ arg_3.ww), arg_0.wy, true, ~countOneBits(vec2<i32>(arg_2.e.x, 34435i))), var_0.c.x), -649f, vec2<i32>(~(-2147483647i), 0i));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f + var_0.c.x)))));
    return StorageBuffer(countOneBits(35625i), _wgslsmith_mod_vec4_i32(min(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, 1i, arg_2.e.x), vec4<i32>(arg_1.x, 45788i, var_1.c.x, arg_2.b)), ~arg_2.e.x, _wgslsmith_clamp_i32(52096i, 1i, global3.b.b)), -min(arg_3, arg_1)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(arg_3, arg_3), arg_1)), ~(~_wgslsmith_dot_vec2_i32(max(vec2<i32>(2147483647i, 2147483647i), global3.c.e), vec2<i32>(3587i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b;
    var var_1 = Struct_1(-233f, 73118i, _wgslsmith_f_op_vec2_f32(-global3.b.c), true, -firstLeadingBit(vec2<i32>(-15068i, _wgslsmith_mod_i32(-5681i, u_input.b))));
    var var_2 = global3.c;
    global0 = array<vec2<f32>, 30>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, -1236f)), var_2.c.x, 382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 195f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.b.c.x, -824f)), var_1.c.x))), vec4<i32>(~(-32685i), _wgslsmith_sub_i32(min(u_input.b, -11481i), var_1.e.x) ^ _wgslsmith_dot_vec2_i32(-var_2.e, func_1().e), _wgslsmith_div_i32(func_2(~var_1.b, vec2<bool>(var_2.d, true)), -2147483647i), -1583i), Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_mod_i32(u_input.b, 1i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-235f, global3.d), vec2<f32>(-1264f, var_1.a), var_2.d)), _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(87178u, 30u)], global3.c.c)), global3.c.c)), !select(select(global1[_wgslsmith_index_u32(56968u, 19u)], global3.c.d, var_2.d), var_0.d, var_0.d), func_1().e), firstLeadingBit(min(~vec4<i32>(var_2.b, var_0.e.x, 70629i, var_2.e.x), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 3496i, 2147483647i, u_input.b), vec4<i32>(-12738i, 0i, -1i, var_2.e.x)))));
}

