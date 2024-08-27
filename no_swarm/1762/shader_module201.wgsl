struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(472f, false, 18649i, true), Struct_1(-454f, false, -1i, true), Struct_1(-115f, true, 1i, true), Struct_1(-923f, false, -36611i, true), Struct_1(903f, false, 46103i, false), Struct_1(-290f, false, 1i, true), Struct_1(1352f, true, -27786i, true), Struct_1(1000f, true, 1469i, true), Struct_1(-1348f, false, 33868i, true), Struct_1(-259f, false, -39544i, true), Struct_1(-279f, false, -53822i, true), Struct_1(872f, true, i32(-2147483648), true), Struct_1(-1087f, false, -18628i, false), Struct_1(713f, true, 1i, true), Struct_1(-150f, true, 1i, true), Struct_1(513f, true, -27815i, true), Struct_1(-1232f, true, 2147483647i, true), Struct_1(865f, true, 8979i, true), Struct_1(-156f, true, 0i, true), Struct_1(-1490f, true, 0i, false));

var<private> global1: array<bool, 10>;

var<private> global2: f32 = 1793f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    global1 = array<bool, 10>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(246f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2434f)) - -359f)))));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(258f - -1000f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -105f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f)), 178f, 178f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-377f, 588f, 280f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(904f, 1000f, 730f) * vec3<f32>(1478f, -240f, -991f))), global1[_wgslsmith_index_u32(abs(u_input.b | u_input.a.x), 10u)]))));
    let var_1 = !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 10u)], (var_0.x <= 370f) == !global1[_wgslsmith_index_u32(u_input.b, 10u)], false, global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(32414u, u_input.b, u_input.a.x), ~93937u, select(true, global1[_wgslsmith_index_u32(28476u, 10u)], true)), 10u)]));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    return vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - 546f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1213f - 385f)) - var_2.a))), var_0.x, var_2.a);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = Struct_3(vec3<bool>(4294967295u > u_input.b, arg_0.d, arg_0.b), Struct_1(_wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-628f, arg_0.a))), -5591i, arg_0.d));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(1543f, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-var_0.b.a))) + _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(exp2(var_0.b.a)))), _wgslsmith_f_op_f32(ceil(925f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, arg_1, -738f)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -1166f, 808f), vec3<f32>(-350f, -105f, -1102f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_1, var_0.b.a))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.a, arg_1, -1000f, -1421f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -1753f, -1161f, 1090f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(485f, 199f, -1491f, var_0.b.a)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), 937f, -1000f, _wgslsmith_div_f32(1029f, _wgslsmith_div_f32(var_0.b.a, var_0.b.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -277f, arg_0.a, 224f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1262f, var_0.b.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, var_1.x, 531f, arg_1))))), true))));
    var var_3 = -arg_0.c;
    let var_4 = true;
    return false;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = array<bool, 10>();
    return Struct_1(496f, any(select(select(!vec4<bool>(false, true, arg_3.b, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(52343u, 10u)], arg_3.b), arg_3.d)), !(!vec4<bool>(global1[_wgslsmith_index_u32(2941u, 10u)], false, arg_3.d, global1[_wgslsmith_index_u32(1u, 10u)])), false)), _wgslsmith_div_i32(~(~abs(1i)), arg_2.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(arg_1), ~30769u, 0u, 4294967295u) & (vec4<u32>(26214u, arg_1, 84029u, 1u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 97254u, 0u), vec4<u32>(101280u, u_input.b, 54705u, u_input.b))), _wgslsmith_mult_vec4_u32(min(abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.b, u_input.b)), ~vec4<u32>(1u, 51720u, arg_1, arg_1)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, arg_1, 117136u, 51471u), vec4<u32>(u_input.b, u_input.a.x, 1u, 0u)), vec4<u32>(arg_1, 53477u, 0u, arg_1)))), 10u)]);
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(2307f - 1612f), 4294967295u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 10u)], true)), _wgslsmith_mult_i32(countOneBits(1i), abs(2147483647i)), all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-327f)) + _wgslsmith_f_op_f32(select(-795f, 130f, true))), func_2(global0[_wgslsmith_index_u32(u_input.b, 20u)], -1778f) | !global1[_wgslsmith_index_u32(4294967295u, 10u)], ~_wgslsmith_add_i32(1i, 0i), all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], false, true, global1[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(12502u, 10u)], true, true), global1[_wgslsmith_index_u32(4294967295u, 10u)])))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~40981u), 1u), 20u)], u_input.b, ~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(40044u, 1u), u_input.a), vec2<u32>(u_input.a.x, u_input.b)), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a) >> (u_input.a.x % 32u)));
    global2 = 1905f;
    let var_1 = countOneBits(1u);
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-8047i, var_0.a.c << (var_2 % 32u), 1i << (var_0.d.x % 32u)), countOneBits(min(vec3<i32>(20297i, var_0.a.c, var_0.b.c) >> (vec3<u32>(0u, var_1, 71221u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.c, var_0.b.c, -29888i), vec3<i32>(var_0.b.c, 1i, var_0.b.c), vec3<i32>(0i, var_0.b.c, 20482i)))), _wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(17813i, var_0.b.c, var_0.b.c)), -vec3<i32>(39114i, var_0.a.c, 2147483647i), vec3<i32>(~var_0.b.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.c, 20223i), vec2<i32>(-15253i, var_0.b.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -10768i), vec2<i32>(var_0.a.c, -20547i))))), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-17234i, var_0.a.c, 2147483647i), select(max(vec3<i32>(var_0.b.c, var_0.a.c, -2147483647i), vec3<i32>(var_0.b.c, -9181i, var_0.a.c)), vec3<i32>(38959i, var_0.b.c, var_0.a.c) << (vec3<u32>(var_0.d.x, var_2, 4294967295u) % vec3<u32>(32u)), true), reverseBits(-vec3<i32>(var_0.b.c, var_0.a.c, 88529i)))), firstLeadingBit(~(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.c, var_0.b.c, 37301i), vec3<i32>(var_0.b.c, var_0.a.c, var_0.a.c)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-9421i, var_0.a.c, -2147483647i), vec3<i32>(var_0.b.c, 1i, var_0.b.c)))));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(min(4294967295u, _wgslsmith_mod_u32(1u, ~31759u)), ~reverseBits(~var_1), ~32155u, _wgslsmith_sub_u32(firstTrailingBit(firstLeadingBit(var_0.d.x)), 17172u)), vec4<u32>(_wgslsmith_sub_u32(~0u, var_0.c), ~max(var_2, var_1), var_0.d.x, ~4294967295u) >> (firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, var_0.c, 1u, u_input.b), abs(vec4<u32>(48986u, 4294967295u, var_1, var_0.d.x)), max(vec4<u32>(83983u, 15614u, var_0.d.x, u_input.b), vec4<u32>(var_1, u_input.b, u_input.b, u_input.b)))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(reverseBits(vec4<u32>(~67895u, 1u, 4294967295u, 1u) | vec4<u32>(u_input.a.x, 45635u, ~u_input.a.x, u_input.a.x)), max(-2147483647i & _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -30284i, -2147483647i, -9648i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, 47105i), vec4<i32>(-1i, 15728i, -2147483647i, 70803i), vec4<i32>(-1i, 31396i, -45475i, 2147483647i))), ~1i >> (_wgslsmith_dot_vec4_u32(func_1(), ~vec4<u32>(5724u, 459u, 1u, 1u)) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), Struct_1(-1498f, true, 0i, global1[_wgslsmith_index_u32(4294967295u, 10u)]), global0[_wgslsmith_index_u32(42339u, 20u)]).a, _wgslsmith_div_f32(1553f, 1374f), _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1045f * -728f))))));
    global2 = _wgslsmith_f_op_f32(-var_0.c.x);
    global2 = 1362f;
    var var_1 = var_0.c.x;
    global2 = 1264f;
    let x = u_input.a;
    s_output = StorageBuffer(2076f, ~var_0.a.wy);
}

