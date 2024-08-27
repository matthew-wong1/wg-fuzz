struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_2(0u, Struct_1(vec3<f32>(-715f, 561f, 1000f), vec4<f32>(-337f, 1021f, 888f, -724f), vec2<i32>(i32(-2147483648), 969i))), false, true, -42295i, vec2<f32>(1107f, -511f)), Struct_3(Struct_2(4294967295u, Struct_1(vec3<f32>(-1125f, -1536f, -1365f), vec4<f32>(-1537f, -1481f, 750f, 1000f), vec2<i32>(67330i, 1i))), true, false, 1i, vec2<f32>(1442f, -1000f)), Struct_3(Struct_2(1u, Struct_1(vec3<f32>(345f, 306f, 519f), vec4<f32>(-143f, 431f, 745f, -597f), vec2<i32>(10921i, 2147483647i))), false, false, 2147483647i, vec2<f32>(-151f, 870f)), Struct_3(Struct_2(59715u, Struct_1(vec3<f32>(-2128f, -1034f, 1729f), vec4<f32>(552f, 360f, -328f, -310f), vec2<i32>(31862i, i32(-2147483648)))), true, true, 32915i, vec2<f32>(856f, 130f)), Struct_3(Struct_2(733u, Struct_1(vec3<f32>(-962f, -791f, -131f), vec4<f32>(-268f, -813f, -710f, 230f), vec2<i32>(9891i, i32(-2147483648)))), false, false, 36269i, vec2<f32>(1083f, 2258f)), Struct_3(Struct_2(9401u, Struct_1(vec3<f32>(1031f, 1455f, -844f), vec4<f32>(287f, 437f, 688f, -1351f), vec2<i32>(-7576i, 0i))), false, true, 2147483647i, vec2<f32>(1136f, 166f)), Struct_3(Struct_2(4294967295u, Struct_1(vec3<f32>(1000f, -450f, 701f), vec4<f32>(-1220f, -1260f, 967f, -386f), vec2<i32>(1i, -1i))), false, true, 17883i, vec2<f32>(-100f, -772f)), Struct_3(Struct_2(4294967295u, Struct_1(vec3<f32>(-1924f, 754f, 373f), vec4<f32>(903f, 283f, -2303f, 758f), vec2<i32>(-73308i, 0i))), false, true, 2147483647i, vec2<f32>(675f, 273f)), Struct_3(Struct_2(0u, Struct_1(vec3<f32>(1159f, 374f, -1000f), vec4<f32>(-518f, 433f, -525f, -1464f), vec2<i32>(10915i, -44093i))), true, false, -17978i, vec2<f32>(-673f, -216f)), Struct_3(Struct_2(4294967295u, Struct_1(vec3<f32>(-2068f, 1093f, -577f), vec4<f32>(-1404f, -594f, -147f, -697f), vec2<i32>(-82978i, -20170i))), true, false, -1i, vec2<f32>(-1111f, 423f)), Struct_3(Struct_2(5158u, Struct_1(vec3<f32>(-1241f, 854f, 167f), vec4<f32>(-193f, -892f, 1718f, 737f), vec2<i32>(32221i, 0i))), true, true, 3996i, vec2<f32>(667f, -1060f)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 29>;

var<private> global3: Struct_2 = Struct_2(45539u, Struct_1(vec3<f32>(632f, -1146f, -1000f), vec4<f32>(476f, 770f, -2189f, 1202f), vec2<i32>(-1i, -60497i)));

var<private> global4: array<f32, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3) -> vec3<bool> {
    global0 = array<Struct_3, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(1u, 11u)], arg_0.a.x, 1917f), vec3<f32>(207f, global4[_wgslsmith_index_u32(u_input.c, 11u)], global1.b.x))))), vec4<f32>(528f, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.b.a.x) - arg_0.b.x)), global1.b.x), vec2<i32>(arg_2.d, arg_0.c.x));
    global0 = array<Struct_3, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.b.b.xy), _wgslsmith_f_op_vec2_f32(exp2(arg_2.e))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global3.b.b.x))))), any(vec4<bool>(arg_0.a.x <= -236f, any(vec3<bool>(false, false, arg_2.c)), arg_2.b, arg_2.c)))));
    var var_2 = _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(step(global3.b.a.x, global1.a.x))));
    return vec3<bool>(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(var_0.b.x - 967f), true)))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(-arg_2.e.x))), !(arg_0.c.x != 1i));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~u_input.c, 29u)];
    let var_1 = !vec3<bool>(true, 8253u >= ~var_0.a, any(vec2<bool>(true, true)));
    global1 = global3.b;
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(global3.a, 29u)], true, all(select(var_1, func_3(Struct_1(vec3<f32>(518f, -1240f, var_0.b.b.x), vec4<f32>(1390f, -759f, var_0.b.b.x, global4[_wgslsmith_index_u32(u_input.c, 11u)]), vec2<i32>(arg_0.x, var_0.b.c.x)), -vec4<i32>(global3.b.c.x, u_input.b.x, -40210i, u_input.b.x), global0[_wgslsmith_index_u32(38154u, 11u)]), vec3<bool>(all(vec4<bool>(false, false, var_1.x, var_1.x)), -474f < global1.a.x, true))), 7677i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4[_wgslsmith_index_u32(global3.a, 11u)], global1.b.x))))))));
    var var_3 = vec4<bool>(true, var_2.b, any(var_1), any(vec3<bool>(var_1.x, true, false)));
    return ~(~_wgslsmith_add_u32(0u, 11263u) | global3.a);
}

fn func_4(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = !(!(!any(vec2<bool>(false, true))));
    global3 = Struct_2(arg_0.x, global3.b);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global3.b.a), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-803f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b.x)) * global4[_wgslsmith_index_u32(~1u, 11u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(194f, -1008f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(9768u, 11u)] * 618f) - 127f)), -889f), _wgslsmith_add_vec2_i32(global3.b.c, vec2<i32>(abs(1i), _wgslsmith_sub_i32(u_input.b.x, ~(-2147483647i)))));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    let var_2 = !vec3<bool>(false, !(global3.a >= 23350u), !(!var_1.b) && true);
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 0u), arg_0) << (firstTrailingBit(1u) % 32u), 29u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> bool {
    let var_0 = func_4(~vec2<u32>(~arg_2.x | func_2(global1.c), ~u_input.a.x));
    let var_1 = arg_0.x;
    let var_2 = abs(~(_wgslsmith_sub_vec4_u32(min(u_input.a, vec4<u32>(var_0.a, 41576u, u_input.c, u_input.a.x)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(var_0.a, 0u, 23717u, 1u))) & u_input.a));
    global1 = global3.b;
    global0 = array<Struct_3, 11>();
    return global1.c.x != _wgslsmith_div_i32(u_input.b.x, global1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.zyw, u_input.a.xyw), u_input.a.wxw)), 29u)], all(vec3<bool>(any(vec3<bool>(true, false, false)) != true, true, func_1(vec3<bool>(true, false, true), -11234i, vec3<u32>(48463u, 85190u, 0u), u_input.b) & false)), true, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.c.x, global3.b.c.x, 0i), vec3<i32>(i32(-1i) * -1i, var_0.x & global3.b.c.x, global3.b.c.x)), global1.b.wy);
    global1 = func_4((vec2<u32>(1u, u_input.a.x) ^ vec2<u32>(~var_1.a.a, ~u_input.c)) >> ((~(vec2<u32>(var_1.a.a, 15246u) << (u_input.a.wy % vec2<u32>(32u))) & u_input.a.zw) % vec2<u32>(32u))).b;
    var var_2 = Struct_3(var_1.a, false, false, -max(u_input.b.x, global1.c.x) >> (u_input.c % 32u), var_1.e);
    var_0 = func_4(vec2<u32>(reverseBits(~var_2.a.a), u_input.a.x)).b.c;
    var var_3 = _wgslsmith_mod_u32(61131u, ~64590u);
    global3 = func_4(abs(vec2<u32>(u_input.c, ~1u)));
    var var_4 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(max(firstLeadingBit(vec4<i32>(global3.b.c.x, 0i, -1i, -1i)), vec4<i32>(22829i, -15956i, var_0.x, -2038i)), vec4<i32>(-70210i, -global3.b.c.x, var_0.x, _wgslsmith_div_i32(var_1.d, u_input.b.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(~2727i, select(35573i, -13571i, true), u_input.b.x, 38739i), min(vec4<i32>(30432i, u_input.b.x, -22052i, var_1.d), vec4<i32>(global3.b.c.x, global1.c.x, var_2.d, u_input.b.x) & vec4<i32>(var_0.x, var_0.x, u_input.b.x, -68579i)))), select(-vec4<i32>(var_1.d, global1.c.x, 0i, global1.c.x) ^ vec4<i32>(global3.b.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, global1.c.x), global1.c), 21385i, u_input.b.x), -(-vec4<i32>(var_0.x, var_0.x, 0i, 0i) << (vec4<u32>(1u, 37383u, 90177u, 1u) % vec4<u32>(32u))), select(select(select(vec4<bool>(var_2.c, false, true, var_2.b), vec4<bool>(false, var_1.b, var_1.c, var_1.c), false), vec4<bool>(var_2.b, var_1.c, true, var_1.c), select(vec4<bool>(var_1.c, var_1.c, var_2.b, var_2.c), vec4<bool>(var_2.b, var_2.b, true, var_2.b), vec4<bool>(var_2.c, false, true, true))), select(!vec4<bool>(var_1.b, var_2.b, false, true), !vec4<bool>(var_2.b, var_1.c, var_2.c, var_1.b), true), !(!vec4<bool>(false, true, var_1.b, var_1.c)))));
    var var_5 = abs(firstLeadingBit(var_2.a.a)) ^ 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec2<u32>(0u, 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-693f, global3.b.a.x) + var_1.e))) - var_2.a.b.a.yy), ~(~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_2.a.a, 79212u), u_input.a.x)), u_input.a.zxx);
}

