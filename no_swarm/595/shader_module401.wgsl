struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(1u, 34531u, 21960u, 1u, 1u, 0u, 4294967295u, 20616u, 1u, 34133u, 37425u, 1u, 5048u, 4294967295u, 0u, 0u, 4294967295u, 4294967295u, 1u, 0u, 4294967295u, 4294967295u, 1u, 48983u, 0u, 33459u, 0u, 1u, 0u, 31313u);

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<bool, 10> = array<bool, 10>(true, false, true, true, true, true, true, false, false, true);

var<private> global3: array<Struct_1, 15>;

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(1000f, 214f), vec3<bool>(true, true, true), vec3<i32>(-37487i, -1i, -28616i), true, vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), Struct_1(vec2<f32>(687f, 1000f), vec3<bool>(false, true, true), vec3<i32>(1i, -1i, 1i), false, vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_1(vec2<f32>(-960f, -734f), vec3<bool>(false, false, false), vec3<i32>(0i, 2147483647i, -75051i), false, vec4<u32>(0u, 1u, 12701u, 1u)), Struct_1(vec2<f32>(526f, 1000f), vec3<bool>(false, false, false), vec3<i32>(-9746i, 1i, i32(-2147483648)), true, vec4<u32>(0u, 0u, 1u, 83628u)), Struct_1(vec2<f32>(2000f, -498f), vec3<bool>(true, false, true), vec3<i32>(-46357i, -1i, i32(-2147483648)), true, vec4<u32>(10263u, 18012u, 1u, 23888u)), Struct_1(vec2<f32>(1735f, 1044f), vec3<bool>(true, false, true), vec3<i32>(-19852i, 0i, -36621i), true, vec4<u32>(1u, 4592u, 0u, 1u)), Struct_1(vec2<f32>(547f, -415f), vec3<bool>(false, false, true), vec3<i32>(18722i, 2147483647i, 26018i), false, vec4<u32>(1u, 38872u, 90136u, 4294967295u)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, _wgslsmith_f_op_f32(max(222f, -748f)), 886f, arg_1), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) * -136f), -863f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) * _wgslsmith_f_op_f32(round(1279f))), arg_1)))));
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(min(~u_input.b.yyy, u_input.a.yzz << (arg_0.xyy % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(u_input.b.zyy | arg_0.wyw, ~vec3<u32>(arg_0.x, 1u, global0[_wgslsmith_index_u32(47488u, 30u)]))), _wgslsmith_dot_vec3_u32(arg_0.yww, ~min(u_input.b.wyw, vec3<u32>(4294967295u, 102747u, 2565u))), _wgslsmith_mod_u32(46149u, u_input.b.x | ~u_input.a.x), 504u);
    let var_2 = abs(_wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(max(vec3<i32>(26341i, u_input.c, u_input.c), vec3<i32>(u_input.c, 46909i, 39197i)), vec3<i32>(0i, u_input.c, -31983i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(20193i, -2147483647i, -7029i), firstTrailingBit(vec3<i32>(9200i, 14955i, -2147483647i))), _wgslsmith_f_op_f32(floor(var_0.x)) >= -1296f), -vec3<i32>(0i | u_input.c, u_input.c, abs(u_input.c))));
    global3 = array<Struct_1, 15>();
    global3 = array<Struct_1, 15>();
    return !(!select(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false), vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47282u, 30u)], 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(26869u, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 10u)], global2[_wgslsmith_index_u32(59347u, 10u)], global2[_wgslsmith_index_u32(arg_0.x, 10u)])), vec3<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(58057u, 10u)], true, global2[_wgslsmith_index_u32(var_1.x, 10u)])), global2[_wgslsmith_index_u32(~4294967295u, 10u)], true), false));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.b, arg_0.b)) * arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_2.b)))))), select(!(!func_3(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.c, 30u)], 39086u, 4410u, arg_0.c), arg_2.b)), vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.c, 10u)], true)), true, global2[_wgslsmith_index_u32(arg_1, 10u)]), !select(!vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 10u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], false, global2[_wgslsmith_index_u32(39202u, 10u)]), func_3(vec4<u32>(55421u, 4294967295u, arg_2.c, 1u), arg_0.b).x)), -select(select(vec3<i32>(0i, u_input.c, 2147483647i), -vec3<i32>(u_input.c, u_input.c, -38005i), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(45919u, 10u)], global2[_wgslsmith_index_u32(arg_0.c, 10u)]), global2[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, 1i), vec3<i32>(-2147483647i, 0i, -19494i)), -vec3<i32>(u_input.c, -1i, 0i)), true), (min(u_input.c, i32(-1i) * -12838i) == 1i) || (firstTrailingBit(u_input.c) < _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, u_input.c)), vec2<i32>(u_input.c, -20268i))), u_input.b);
    let var_1 = arg_2;
    global4 = array<Struct_1, 7>();
    global1 = array<Struct_1, 27>();
    global4 = array<Struct_1, 7>();
    return Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c, 1u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e.x, 4294967295u), var_0.e.xz), vec2<u32>(~66663u, arg_1)), 50896u), arg_0.b, ~(u_input.a & countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, 0u, 4294967295u, var_0.e.x), u_input.b))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> vec2<bool> {
    global4 = array<Struct_1, 7>();
    var var_0 = arg_1.b;
    var var_1 = 55461i;
    global1 = array<Struct_1, 27>();
    let var_2 = Struct_3(~min(arg_1.c.zxx, (arg_1.c.wyy >> (arg_2.a % vec3<u32>(32u))) << (~arg_1.c.ywz % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(875f * 1122f), arg_2.b)), 1u);
    return !func_3(u_input.a ^ _wgslsmith_div_vec4_u32(~u_input.a, arg_1.c), arg_2.b).xx;
}

fn func_1() -> Struct_3 {
    global2 = array<bool, 10>();
    var var_0 = vec2<bool>(false, true);
    var var_1 = min(-_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, u_input.c), countOneBits(15477i)) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)] % 32u), u_input.c);
    var var_2 = u_input.b.yy;
    let var_3 = select(select(!vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(5594u, 10u)], false, false)), var_0.x), vec2<bool>(true, global2[_wgslsmith_index_u32(6852u, 10u)]), vec2<bool>(true, true)), select(func_4(!var_0.x, func_2(Struct_3(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), -245f, u_input.a.x), _wgslsmith_div_u32(0u, 1u), Struct_3(u_input.a.xwy, 138f, 0u)), Struct_3(~vec3<u32>(54874u, 0u, u_input.a.x), -194f, abs(1u))), select(vec2<bool>(true, true), func_4(true, func_2(Struct_3(u_input.b.yxw, -179f, 70043u), 1u, Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(20715u, 30u)], global0[_wgslsmith_index_u32(47655u, 30u)], 18902u), -1292f, u_input.b.x)), Struct_3(u_input.a.xxz, 608f, 43522u)), func_4(true, func_2(Struct_3(vec3<u32>(51567u, global0[_wgslsmith_index_u32(0u, 30u)], 4294967295u), 1556f, global0[_wgslsmith_index_u32(var_2.x, 30u)]), var_2.x, Struct_3(vec3<u32>(u_input.b.x, u_input.a.x, 4294967295u), -1000f, 0u)), Struct_3(u_input.a.zyz, 575f, u_input.b.x))), var_0.x), global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 30u)], ~1u, u_input.b.x)), 10u)]);
    return Struct_3(~vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(firstLeadingBit(~var_2.x), 30u)]), 1041f, global0[_wgslsmith_index_u32(~max(4294967295u << ((4294967295u | global0[_wgslsmith_index_u32(1u, 30u)]) % 32u), 1u), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(vec3<u32>(~(~(~global0[_wgslsmith_index_u32(2942u, 30u)])), 1u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_2(var_0, 1u, var_0).b, -1000f)))), ~var_0.a.x);
    let var_2 = _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c, firstLeadingBit(_wgslsmith_mult_i32(u_input.c, u_input.c))), ~(vec2<i32>(-1i) * -vec2<i32>(38369i, 0i)));
    global4 = array<Struct_1, 7>();
    var var_3 = var_0;
    var var_4 = var_1.a.xy;
    let var_5 = select(select(vec4<bool>(max(var_3.c, u_input.b.x) >= 1u, !func_3(u_input.b, var_1.b).x, false, false), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.c, 10u)], true, true)), all(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(var_1.c, 10u)], true, true)))), vec4<bool>(!(19983i <= var_2.x), (-861i < u_input.c) | true, global2[_wgslsmith_index_u32(~(~var_0.c), 10u)], all(!select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(1602u, 10u)], true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 10u)], true, global2[_wgslsmith_index_u32(0u, 10u)], false), true))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(25754u, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(47840u, 4294967295u), 1u)), 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.b, _wgslsmith_f_op_f32(1000f - var_1.b)) * vec3<f32>(_wgslsmith_f_op_f32(-var_3.b), -2168f, _wgslsmith_f_op_f32(1034f * var_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_0.b, -118f)) * vec3<f32>(var_0.b, var_3.b, var_0.b))))), var_2.x);
}

