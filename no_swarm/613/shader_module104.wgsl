struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<bool, 19>;

var<private> global2: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1168f)), arg_0.x, max(-arg_0.wyw, firstLeadingBit(abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, u_input.a), arg_0.wzw)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(24031u, 1u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = min(~vec4<u32>(abs(var_0.d) | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, var_0.d), vec2<u32>(27200u, 0u)), ~0u, ~(~var_0.d), var_0.d), vec4<u32>(16400u, var_0.d, _wgslsmith_mult_u32(var_0.d, ~var_0.d), var_0.d) | abs(max(vec4<u32>(0u, var_0.d, var_0.d, 23270u), vec4<u32>(var_0.d, 4294967295u, 8251u, var_0.d))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-709f, _wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(var_0.a.a * var_0.a.a)), -1035f, var_0.a.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1437f, -1190f, 2541f)))), ~countOneBits(i32(-1i) * -2147483647i));
    global0 = array<bool, 30>();
    var var_3 = var_1.wyw;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f + -631f) - var_2.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 1u, var_1.x, var_1.x) | vec4<u32>(var_3.x, var_3.x, 1u, var_1.x)), ~vec4<u32>(var_0.d, 110501u, 18552u, var_3.x) | vec4<u32>(var_1.x, 4914u, var_0.d, 37919u)), 30u)]))));
}

fn func_2() -> bool {
    global2 = array<vec2<i32>, 1>();
    var var_0 = Struct_1(false, _wgslsmith_sub_u32(69781u, countOneBits(24573u)), _wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(47459u, 4294967295u, 70183u, 4294967295u)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(27987u, 409u), vec2<u32>(0u, 35489u)), _wgslsmith_mult_u32(14144u, 25593u), ~27274u)), ~(~vec4<u32>(21314u, 1u, 4294967295u, 4294967295u))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<i32>(-14244i, -19195i, u_input.a, 1i)))))), _wgslsmith_f_op_f32(2135f + -841f));
    let var_2 = 30425u;
    global0 = array<bool, 30>();
    return !((0u == firstTrailingBit(~var_0.b)) & global0[_wgslsmith_index_u32(0u, 30u)]);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: f32) -> Struct_4 {
    let var_0 = vec4<bool>(!func_2(), !global0[_wgslsmith_index_u32(28696u, 30u)], true, true);
    global2 = array<vec2<i32>, 1>();
    return Struct_4(Struct_3(arg_3), -1228i, -vec3<i32>(-arg_1.x, arg_0.x, arg_2.x), ~(_wgslsmith_sub_u32(~5874u, _wgslsmith_mod_u32(1u, 4294967295u)) & select(1u, 4294967295u, global1[_wgslsmith_index_u32(~13075u, 19u)])));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = -max(-func_1(vec2<i32>(u_input.a, arg_0.b), arg_0.c, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, 1u, 1u, arg_0.d), vec4<u32>(arg_0.d, 21100u, arg_0.d, 1u)), 1u)], arg_0.a.a).c.x, 1i);
    let var_1 = func_1(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_0.c, vec3<i32>(arg_0.b, arg_0.c.x, 0i)), u_input.a), -20918i), i32(-1i) * -arg_0.b), ~vec3<i32>(~(arg_0.c.x << (arg_0.d % 32u)), -1i, -1i), ((abs(global2[_wgslsmith_index_u32(arg_0.d, 1u)]) & -arg_0.c.xy) | arg_0.c.xz) << (~min(vec2<u32>(4294967295u, arg_0.d), abs(vec2<u32>(0u, 4782u))) % vec2<u32>(32u)), 1445f).a;
    let var_2 = ~(arg_0.c.x & u_input.a);
    let var_3 = vec3<bool>(!func_2(), true, !(any(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0.d, 19u)], global0[_wgslsmith_index_u32(arg_0.d, 30u)], false, false)) || !global1[_wgslsmith_index_u32(~arg_0.d, 19u)]));
    global2 = array<vec2<i32>, 1>();
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> i32 {
    global1 = array<bool, 19>();
    global2 = array<vec2<i32>, 1>();
    var var_0 = ~0i;
    global2 = array<vec2<i32>, 1>();
    var_0 = max(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.b, arg_0.b), -u_input.a) & -reverseBits(-6410i), 1i), func_1(arg_0.c.yz, arg_0.c, _wgslsmith_mod_vec2_i32(arg_0.c.yy, _wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_1.b, -18840i), arg_0.c.yz, global1[_wgslsmith_index_u32(1u, 19u)]), vec2<i32>(u_input.a, 17481i) & vec2<i32>(arg_1.b, arg_1.b))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(614f, arg_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1979f)) - 1000f)))).c.x);
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a & func_5(Struct_4(Struct_3(_wgslsmith_div_f32(-1692f, -298f)), -u_input.a, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-25815i, u_input.a, -6978i), vec3<i32>(u_input.a, -2147483647i, -32118i), vec3<i32>(u_input.a, -1i, u_input.a)), vec3<i32>(u_input.a, 8376i, u_input.a)), 1u), Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-101f, 1416f, 1000f, 1333f))), -(~(-8257i))), false, func_4(func_1(firstTrailingBit(global2[_wgslsmith_index_u32(27941u, 1u)]), vec3<i32>(2298i, -15307i, u_input.a) | vec3<i32>(-11375i, u_input.a, u_input.a), global2[_wgslsmith_index_u32(~29737u, 1u)], -985f), vec2<bool>(!global0[_wgslsmith_index_u32(32740u, 30u)], u_input.a != u_input.a)));
    global2 = array<vec2<i32>, 1>();
    let var_1 = true;
    let var_2 = 1u;
    var var_3 = ~vec4<i32>(func_1(select(vec2<i32>(u_input.a, -1i), global2[_wgslsmith_index_u32(var_2, 1u)], false) ^ global2[_wgslsmith_index_u32(5639u, 1u)], countOneBits(vec3<i32>(u_input.a, var_0, -3793i)) << (vec3<u32>(var_2, 2075u, var_2) % vec3<u32>(32u)), max(vec2<i32>(var_0, u_input.a), vec2<i32>(3206i, 623i)) | -vec2<i32>(50450i, -52977i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1086f)))).b, 2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_0, -50267i, 39746i)), max(vec3<i32>(u_input.a, -2147483647i, 0i), vec3<i32>(var_0, 10244i, var_0))), -1i), 2147483647i);
    var var_4 = ~(~(~_wgslsmith_mod_u32(var_2, var_2) & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(25705u, var_2, var_2), vec3<u32>(4294967295u, var_2, 41318u)), var_2)));
    var var_5 = -387f;
    let x = u_input.a;
    s_output = StorageBuffer(446f);
}

