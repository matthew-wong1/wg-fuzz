struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 22>;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(4294967295u, 70146u), Struct_2(225f, 1u, Struct_1(21277u, 4294967295u, 383f, vec3<i32>(-1i, -11599i, 36910i), vec4<i32>(-21612i, 1i, 30041i, i32(-2147483648))), 2147483647i), 0u, i32(-2147483648), 84620u);

var<private> global3: array<u32, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = max(abs(abs(vec4<i32>(-1i, global2.b.d, 18675i, global2.d) >> (vec4<u32>(global2.c, 4294967295u, global2.e, arg_0.b) % vec4<u32>(32u)))), vec4<i32>(select(abs(global2.b.d), -12874i, _wgslsmith_div_i32(global2.b.c.e.x, 23220i) > global2.b.c.e.x), max(~_wgslsmith_mult_i32(global2.d, arg_0.d.x), ~arg_0.e.x), global2.d, i32(-1i) * -_wgslsmith_mod_i32(-25072i, global2.d)));
    var var_1 = u_input.a.wxz;
    return global2.c;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_mult_u32(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13920u, 8u)], 8u)]), _wgslsmith_div_u32(42775u, u_input.a.x), _wgslsmith_f_op_f32(round(566f)), vec3<i32>(global2.d, 2147483647i, global2.d), ~global2.b.c.e)), 8u)] | _wgslsmith_mult_u32(func_3(global2.b.c), 69753u), 4294967295u, global2.b.c.c, firstLeadingBit(vec3<i32>(0i, -14575i, global2.d)), reverseBits(global2.b.c.e));
    let var_1 = Struct_2(262f, reverseBits(1u | ~(0u << (u_input.a.x % 32u))), global2.b.c, ~var_0.e.x | var_0.d.x);
    var var_2 = var_1.c.c;
    var var_3 = vec4<i32>(2147483647i, firstTrailingBit(-firstTrailingBit(_wgslsmith_dot_vec4_i32(var_1.c.e, var_0.e))), abs(firstTrailingBit(var_1.d)) << ((0u | ~(global3[_wgslsmith_index_u32(11392u, 8u)] | 4294967295u)) % 32u), -16305i);
    global3 = array<u32, 8>();
    return Struct_4(true, Struct_2(-2215f, abs(43533u), Struct_1(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(64693u, 8u)], 1u), abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(29390u, 0u, 4192u, global3[_wgslsmith_index_u32(var_1.c.b, 8u)]))), -182f, -_wgslsmith_clamp_vec3_i32(var_3.yzx, vec3<i32>(var_3.x, -4885i, -1i), global2.b.c.d), ~(-var_0.e)), global2.d << (_wgslsmith_mod_u32(~0u, reverseBits(4294967295u)) % 32u)), Struct_1(countOneBits(1150u), select(abs(55906u), countOneBits(42018u ^ u_input.a.x), !(global2.b.c.a != global2.e)), _wgslsmith_f_op_f32(-1051f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2197f * var_0.c))), var_0.e.xyz, firstTrailingBit(var_0.e)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, 1i, 23005i, global2.b.c.d.x), var_1.c.e ^ global2.b.c.e, false), max(var_0.e, _wgslsmith_sub_vec4_i32(var_1.c.e, vec4<i32>(global2.b.d, var_1.d, var_1.d, var_0.d.x)))), var_0.e));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<u32>(global2.e, global2.c, _wgslsmith_add_u32(_wgslsmith_add_u32(abs(global3[_wgslsmith_index_u32(u_input.a.x, 8u)]) | _wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], global3[_wgslsmith_index_u32(1u, 8u)]), u_input.a.x), ~(94928u | global2.e)), u_input.a.x);
    var var_1 = func_2();
    global0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32((_wgslsmith_mod_u32(2003u, u_input.a.x) & ~var_0.x) | abs(global2.a.x), ~min(u_input.a.x, _wgslsmith_clamp_u32(0u, var_0.x, global3[_wgslsmith_index_u32(17558u, 8u)]))), global2.c);
    var_1 = Struct_4(false, var_1.b, func_2().c, 23751i);
    let var_2 = ~(~reverseBits(max(0u, 79832u) ^ reverseBits(var_0.x)));
    return func_2().b;
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2.b;
    global2 = arg_2;
    var var_1 = arg_0;
    global2 = Struct_3(abs(_wgslsmith_sub_vec2_u32(min(arg_0.d.a, u_input.a.xz) | ~global2.a, ~vec2<u32>(global2.c, var_0.b) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 64042u), vec2<u32>(1u, global2.a.x), arg_2.a))), global2.b, ~39167u, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(-arg_0.b.c.e.xyw), -_wgslsmith_add_vec3_i32(arg_0.b.c.d, vec3<i32>(-14404i, global2.d, arg_0.b.c.e.x))), firstTrailingBit(~arg_2.b.c.e.zzy)), _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1().b, 115276u), 8u)], u_input.a.x, ~4294967295u));
    var_0 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~(~vec2<u32>(global3[_wgslsmith_index_u32(7030u, 8u)], global2.a.x)))));
    var var_1 = func_4(Struct_5(global2.a, func_1(), Struct_1(u_input.a.x, func_3(func_1().c), -115f, countOneBits(vec3<i32>(global2.b.d, global2.b.c.d.x, global2.d)), vec4<i32>(19697i, -19583i, _wgslsmith_div_i32(global2.d, -1i), _wgslsmith_div_i32(-1i, global2.d))), Struct_3(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global2.b.c.b, u_input.a.x), u_input.a.yy)), func_2().b, _wgslsmith_clamp_u32(~0u, 11812u, ~var_0.x), func_2().c.e.x, func_3(func_2().c)), vec4<f32>(global2.b.c.c, global2.b.a, _wgslsmith_f_op_f32(-global2.b.a), -1220f)), 1849i & global2.b.c.e.x, Struct_3(vec2<u32>(reverseBits(56684u) | ~global2.b.b, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u ^ global2.c, var_0.x), 8u)]), global2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.c.a, global2.b.b, u_input.a.x), max(u_input.a.zwz, u_input.a.ywx)) >> (countOneBits(select(var_0.x, var_0.x, false)) % 32u), -9106i, _wgslsmith_sub_u32(var_0.x, global2.e >> (global2.b.b % 32u)) ^ func_1().c.b));
    global3 = array<u32, 8>();
    global2 = Struct_3(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(min(16775u, global2.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.a.x, global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(9175u, 8u)]), vec4<u32>(29817u, 4294967295u, 47053u, var_0.x))), min(~vec2<u32>(4294967295u, 37196u), reverseBits(global2.a))), ~(u_input.a.zy ^ vec2<u32>(global3[_wgslsmith_index_u32(0u, 8u)], 0u))), func_4(Struct_5(~_wgslsmith_clamp_vec2_u32(var_0, u_input.a.zy, vec2<u32>(9358u, 9006u)), global2.b, func_2().b.c, Struct_3(_wgslsmith_sub_vec2_u32(u_input.a.xz, global2.a), Struct_2(-450f, 28757u, global2.b.c, 20698i), ~53440u, _wgslsmith_clamp_i32(var_1.c.d.x, 2147483647i, 0i), ~1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(334f, 780f, 901f, global2.b.a), vec4<f32>(var_1.a, var_1.a, 1404f, global2.b.a), vec4<bool>(false, global1[_wgslsmith_index_u32(67747u, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 22u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.c.c, -1101f, global2.b.a, -712f), vec4<f32>(443f, global2.b.c.c, -531f, var_1.c.c))))), var_1.d, Struct_3(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xy, u_input.a.zz), ~var_0, _wgslsmith_mult_vec2_u32(vec2<u32>(28396u, 43331u), vec2<u32>(u_input.a.x, 1u))), func_2().b, max(_wgslsmith_sub_u32(u_input.a.x, 1u), ~var_0.x), -1i, ~global2.e)), 1u, -14406i, _wgslsmith_mult_u32(1u, ~(~abs(5923u))));
    global1 = array<bool, 22>();
    var var_2 = firstTrailingBit(vec2<u32>(var_1.b | 35249u, ~_wgslsmith_mod_u32(abs(var_0.x), 0u)));
    var var_3 = vec3<f32>(global2.b.a, 1652f, -1025f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.e.zwx, global3[_wgslsmith_index_u32(~select(0u, var_2.x, !any(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(var_2.x, 22u)], false))), 8u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_1.c.c, var_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -292f, 671f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.b.c.c, var_1.a, global2.b.c.c))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2459f, 692f, _wgslsmith_f_op_f32(f32(-1f) * -1468f)) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, 1000f, var_3.x), vec3<f32>(-271f, 1586f, -1613f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1609f, 1000f, 100f), vec3<f32>(var_1.a, -740f, global2.b.c.c)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2047f, global2.b.c.c, 1000f, global2.b.c.c) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1322f, 610f, global2.b.a, global2.b.c.c) - vec4<f32>(167f, -1000f, var_3.x, -1039f)))))));
}

