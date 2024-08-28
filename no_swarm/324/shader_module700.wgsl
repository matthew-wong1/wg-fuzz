struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<f32>(-572f, -235f, 1546f)), Struct_1(vec4<i32>(23424i, 15753i, 2147483647i, -5143i)), 4294967295u, vec3<i32>(-3241i, -16732i, 68535i));

var<private> global1: array<bool, 10>;

var<private> global2: array<bool, 4>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_add_i32(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.a, ~2147483647i), -17125i & global0.d.x), min(-2147483647i, abs(~u_input.a)));
    let var_1 = Struct_4(Struct_3(global0.a.a), Struct_1(abs(arg_1.a)), select(~0u, _wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.c), vec3<u32>(u_input.b, u_input.c.x, global0.c) & ~u_input.c), !(_wgslsmith_f_op_f32(arg_0 + -3202f) == global0.a.a.x)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(~arg_1.a.xyx), vec3<i32>(_wgslsmith_mult_i32(arg_1.a.x, 2147483647i), -1i, global0.b.a.x ^ global0.d.x), ~vec3<i32>(global0.b.a.x, 1i, 1i)), vec3<i32>(u_input.a, countOneBits(38126i), ~(-50256i))));
    global0 = Struct_4(var_1.a, Struct_1(~(~arg_1.a | vec4<i32>(arg_1.a.x, var_0, arg_3, 0i))), var_1.c, _wgslsmith_clamp_vec3_i32(~var_1.d, -vec3<i32>(0i, global0.b.a.x, ~0i), _wgslsmith_mult_vec3_i32(-arg_1.a.yzw, min(-vec3<i32>(global0.d.x, arg_1.a.x, 1i), ~arg_1.a.yyw))));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c >> (u_input.b % 32u), global0.c, 0u, _wgslsmith_div_u32(~4294967295u, _wgslsmith_div_u32(global0.c >> (var_1.c % 32u), _wgslsmith_mult_u32(11285u, global0.c)))), _wgslsmith_add_vec4_u32(((vec4<u32>(global0.c, var_1.c, u_input.b, var_1.c) >> (vec4<u32>(u_input.b, var_1.c, 88462u, global0.c) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(115349u, 1u, var_1.c, 52266u), vec4<u32>(var_1.c, u_input.c.x, global0.c, u_input.c.x))) & abs(vec4<u32>(1u, 71078u, var_1.c, var_1.c)), countOneBits(abs(~vec4<u32>(9540u, u_input.c.x, 9842u, 70356u)))));
    var var_3 = arg_1;
    return select(!select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.c, 4u)], global1[_wgslsmith_index_u32(6970u, 10u)], true), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(15827u, 10u)], global1[_wgslsmith_index_u32(35891u, 10u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_2.x, 4u)], global2[_wgslsmith_index_u32(var_1.c, 4u)], true, global2[_wgslsmith_index_u32(4294967295u, 4u)]), global2[_wgslsmith_index_u32(var_2.x, 4u)]), !global2[_wgslsmith_index_u32(4294967295u, 4u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(global0.c, 10u)], true, false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(global0.c, 10u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(var_1.c, 4u)], false, global1[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(8389u, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], true, false, global1[_wgslsmith_index_u32(var_1.c, 10u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], true, true, true), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(1u, 4u)]), true)), vec4<bool>(false, global1[_wgslsmith_index_u32(~31624u, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)], all(vec4<bool>(false, global2[_wgslsmith_index_u32(global0.c, 4u)], global2[_wgslsmith_index_u32(16791u, 4u)], global1[_wgslsmith_index_u32(458u, 10u)])))), !vec4<bool>(true, global1[_wgslsmith_index_u32(~(~u_input.b), 10u)], !global1[_wgslsmith_index_u32(63205u, 10u)], all(select(vec4<bool>(global1[_wgslsmith_index_u32(10902u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(global0.c, 10u)], false, false, global2[_wgslsmith_index_u32(6203u, 4u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(39093u, 10u)], true, false)))), false);
}

fn func_2() -> i32 {
    let var_0 = select(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(132276u, 10u)], false, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(50709u, 10u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(1682u, 10u)], false, false), true), !vec4<bool>(global2[_wgslsmith_index_u32(global0.c, 4u)], true, global1[_wgslsmith_index_u32(global0.c, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(global0.c, 10u)], global1[_wgslsmith_index_u32(global0.c, 10u)], false))), vec4<bool>(all(!func_3(1235f, Struct_1(global0.b.a), Struct_2(vec3<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x)), u_input.a)), any(vec3<bool>(global0.a.a.x >= global0.a.a.x, !global1[_wgslsmith_index_u32(1u, 10u)], true)), select(global2[_wgslsmith_index_u32(~1u, 4u)], !global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 10u)], !global2[_wgslsmith_index_u32(global0.c, 4u)]), any(!vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.b, 10u)])) && any(vec2<bool>(false, false))), select(vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global2[_wgslsmith_index_u32(4294967295u, 4u)])) && false, true, false, false), !select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 4u)], false, global1[_wgslsmith_index_u32(u_input.b, 10u)], true), vec4<bool>(global2[_wgslsmith_index_u32(global0.c, 4u)], false, false, global1[_wgslsmith_index_u32(25541u, 10u)]), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 4u)], false, global2[_wgslsmith_index_u32(4294967295u, 4u)], false)), select(!vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(6719u, 4u)]), func_3(1463f, global0.b, Struct_2(global0.a.a), global0.d.x), true)));
    var var_1 = _wgslsmith_sub_u32(global0.c, ~u_input.c.x & ~(~7421u));
    let var_2 = !vec2<bool>((global0.a.a.x == global0.a.a.x) & global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, u_input.b, 4294967295u, u_input.b), ~vec4<u32>(11317u, global0.c, global0.c, 1u)), 10u)], !any(func_3(-350f, Struct_1(global0.b.a), Struct_2(vec3<f32>(-802f, global0.a.a.x, global0.a.a.x)), global0.d.x).yx));
    let var_3 = global0.a.a;
    let var_4 = var_0;
    return global0.b.a.x;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(59696i & (abs(func_2()) | global0.b.a.x), u_input.a);
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 10u)];
    global0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global0.a.a * vec3<f32>(417f, arg_0.a.x, -932f)), _wgslsmith_f_op_vec3_f32(floor(arg_0.a)))), _wgslsmith_f_op_vec3_f32(select(global0.a.a, _wgslsmith_f_op_vec3_f32(abs(arg_0.a)), !global2[_wgslsmith_index_u32(u_input.b, 4u)]))))), Struct_1(vec4<i32>(func_2(), ~_wgslsmith_clamp_i32(global0.d.x, u_input.a, 2147483647i), -2147483647i, var_0)), u_input.c.x, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, ~global0.d.x << (_wgslsmith_sub_u32(89939u, global0.c) % 32u), 2147483647i >> (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_0 | -2147483647i, -u_input.a), ~vec3<i32>(21885i, -2585i, var_0))));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.a);
    let var_1 = global0.b.a;
    var var_2 = var_1.wy | ~vec2<i32>(-2147483647i, _wgslsmith_mod_i32(var_1.x, var_0.a.x) & countOneBits(u_input.a));
    var var_3 = -64210i << (~max(~global0.c, 39328u) % 32u);
    var var_4 = Struct_4(global0.a, Struct_1(global0.b.a), ~u_input.b, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(var_1.x, var_1.x), u_input.a << (51024u % 32u)), global0.b.a.x, -2147483647i), 0i, global0.d.x & var_2.x));
    global1 = array<bool, 10>();
    let var_5 = Struct_2(global0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(-764f, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), ~var_1.wz), vec4<u32>(global0.c, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(7601u, 0u, u_input.c.x, var_4.c)), abs(vec4<u32>(44724u, 1u, 67658u, u_input.b))), ~(~var_4.c & global0.c), global0.c), ~0u);
}

