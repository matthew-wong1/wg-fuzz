struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: i32;

var<private> global2: vec2<u32>;

var<private> global3: Struct_2;

var<private> global4: array<vec2<bool>, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(53396u, 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global3.b.x, 1u, 0u, 51641u) << (vec4<u32>(4294967295u, 1u, 28792u, global3.b.x) % vec4<u32>(32u))), vec4<u32>(1u ^ u_input.a, 0u, 1u, ~23u)), ~1u)), 30u)];
    global2 = vec2<u32>(~min(1u, u_input.a), countOneBits(~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, global3.b.x), global2.x | u_input.a)));
    global1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(global3.c >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(38325u, 24841u, global3.b.x), u_input.a) % 32u), max(-25738i, -global3.c)), -1i);
    var var_1 = ~select(vec4<u32>(_wgslsmith_add_u32(global2.x, u_input.a) & 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global2.x, global3.b.x), vec3<u32>(1u, global2.x, global3.b.x)), ~vec3<u32>(2246u, u_input.a, 0u)), u_input.a, ~87663u), ~(vec4<u32>(global2.x, 54662u, global2.x, 0u) | (vec4<u32>(16293u, global3.b.x, 17938u, 1u) & vec4<u32>(global3.b.x, u_input.a, global3.b.x, global3.b.x))), true);
    global1 = -global3.c;
    return ~(~global2.x) ^ firstLeadingBit(1u >> (global3.b.x % 32u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = select(vec2<bool>(global3.d.a.x, any(select(global3.d.a, global3.d.a, select(true, true, global0[_wgslsmith_index_u32(u_input.a, 30u)])))), select(!(!global4[_wgslsmith_index_u32(~1u, 12u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global3.d.a.x)), select(!vec2<bool>(global3.d.a.x, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(97961u, 26629u), 30u)], any(select(vec4<bool>(false, arg_0.a.x, global3.d.a.x, arg_0.a.x), arg_0.a, global3.d.a.x)), arg_0.a.x & false)));
    let var_1 = global3.d.a.x;
    let var_2 = Struct_1(!vec4<bool>(select(true, global3.d.a.x, all(vec2<bool>(global0[_wgslsmith_index_u32(12597u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]))), true, false, any(arg_0.a)), _wgslsmith_div_f32(1015f, _wgslsmith_f_op_f32(global3.d.b + arg_0.b)));
    global0 = array<bool, 30>();
    var var_3 = arg_0;
    return _wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_mult_i32(global3.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-51317i, 2147483647i), vec2<i32>(global3.c, 13079i))), ~global3.c, _wgslsmith_add_i32(global3.c, -1i)), -firstLeadingBit(~vec3<i32>(398i, -1i, 7016i)), select(var_2.a.xxx, vec3<bool>(arg_0.a.x, u_input.a > 28984u, true), select(!var_3.a.yzx, select(var_3.a.xwy, vec3<bool>(true, var_3.a.x, var_3.a.x), vec3<bool>(true, var_0.x, false)), arg_0.a.wxz))), select(reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(18692i, 12884i, global3.c), vec3<i32>(global3.c, 0i, -2147483647i)), _wgslsmith_sub_i32(global3.c, global3.c), abs(global3.c))), min(firstTrailingBit(vec3<i32>(-23970i, 2147483647i, global3.c)) & -vec3<i32>(-1i, global3.c, -44751i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global3.c, global3.c), vec3<i32>(global3.c, -31050i, global3.c))), any(select(!global3.d.a.wyx, select(var_3.a.zxx, vec3<bool>(global0[_wgslsmith_index_u32(26435u, 30u)], arg_0.a.x, arg_0.a.x), var_3.a.wxx), true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(countOneBits(global3.b.x), ~1u, global2.x, 1u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(26959u, u_input.a, global3.b.x, global2.x), firstTrailingBit(vec4<u32>(4294967295u, 24528u, global2.x, global3.b.x))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + 227f), arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))));
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i | select(abs(global3.c), global3.c | arg_0.c, true), -arg_0.c, -2147483647i), 1i);
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_div_i32(global3.c, 8810i);
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-countOneBits(select(global3.c, global3.c, global0[_wgslsmith_index_u32(116771u, 30u)])), global3.c), global3.c);
    let var_1 = vec3<i32>(abs(_wgslsmith_mult_i32(global3.c, ~global3.c)), -34459i >> (_wgslsmith_sub_u32(global3.b.x, 2055u) % 32u), func_4(Struct_2(global3.d.b, global3.b, func_3(global3.d), global3.d), global3.d, _wgslsmith_f_op_f32(-535f * _wgslsmith_f_op_f32(step(global3.a, -156f))), global3.d.a.x) << ((_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.b.x, global3.b.x, 1u, 100878u), ~vec4<u32>(global3.b.x, 9197u, 47523u, 8710u)) << (1772u % 32u)) % 32u));
    var var_2 = true;
    var_0 = abs(var_1.x);
    return Struct_1(vec4<bool>(any(vec4<bool>(all(vec3<bool>(global3.d.a.x, global0[_wgslsmith_index_u32(1u, 30u)], global3.d.a.x)), global0[_wgslsmith_index_u32(u_input.a ^ 101123u, 30u)], true, true)), any(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 30u)] == global3.d.a.x, true, global3.d.a.x)), !global3.d.a.x, !global0[_wgslsmith_index_u32(~select(global2.x, global3.b.x, false), 30u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1101f, _wgslsmith_f_op_f32(trunc(358f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a * global3.d.b), global3.d.b)))), -640f));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global1 = global3.c;
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-506f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1)), global3.a))) + arg_1), ~vec2<u32>(4294967295u, arg_0.b.x), 76639i, global3.d);
    let var_1 = abs(var_0.b.x);
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(63691u, global3.b.x) | _wgslsmith_mult_vec2_u32(global3.b << (vec2<u32>(u_input.a, 22147u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 43194u)), vec2<u32>(reverseBits(35913u), 52184u)) << (1u % 32u);
    let var_3 = ~vec3<i32>(-51365i, -1i, i32(-1i) * -1i) >> (_wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_0.b.x, 38604u, var_1)), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_1, var_0.b.x), ~vec3<u32>(0u, 0u, var_1)) >> (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, var_1, var_0.b.x)), abs(vec3<u32>(0u, global3.b.x, var_0.b.x))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return func_2();
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = 53369u;
    global4 = array<vec2<bool>, 12>();
    let var_1 = arg_1.b;
    var var_2 = ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_0, 10614u, 50291u, u_input.a)), firstTrailingBit(~vec4<u32>(44574u, 1u, 19369u, 2034u))));
    let var_3 = -31616i ^ -_wgslsmith_dot_vec4_i32(min(vec4<i32>(71295i, arg_2.c, 1i, global3.c), ~vec4<i32>(arg_2.c, arg_2.c, 26975i, 55757i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-4541i, arg_2.c, global3.c, arg_2.c), vec4<i32>(52747i, 2147483647i, 0i, 1i)), vec4<i32>(global3.c, arg_2.c, 2147483647i, -1i) & vec4<i32>(0i, 20037i, -2147483647i, 0i)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_5(Struct_2(141f, vec2<u32>(0u, u_input.a), 1i, arg_3), _wgslsmith_f_op_f32(var_1 * var_1)).b))), firstTrailingBit(~(~reverseBits(arg_2.b))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(abs(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(4045i, var_3, 0i), vec3<i32>(0i, arg_2.c, global3.c))), global3.c), (-vec2<i32>(10039i, var_3) << (~vec2<u32>(global2.x, arg_2.b.x) % vec2<u32>(32u))) >> (vec2<u32>(global2.x, 1u) % vec2<u32>(32u))), Struct_1(!(!select(vec4<bool>(false, true, global3.d.a.x, true), arg_3.a, arg_2.d.a)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(_wgslsmith_f_op_f32(f32(-1f) * -2469f), func_5(Struct_2(2510f, vec2<u32>(u_input.a, func_1(vec2<bool>(global3.d.a.x, global3.d.a.x))), _wgslsmith_add_i32(33908i, select(global3.c, 1i, true)), func_2()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -235f), _wgslsmith_f_op_f32(f32(-1f) * -648f)))), Struct_2(global3.d.b, _wgslsmith_clamp_vec2_u32(global3.b << (select(global3.b, vec2<u32>(37865u, global3.b.x), false) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(global3.b, global3.b), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 38427u), global3.b)), ~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 43509u), global4[_wgslsmith_index_u32(27732u, 12u)])), global3.c, func_2()), func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1389f * global3.d.b) * global3.d.b), vec2<u32>(38887u, global2.x) << (~global3.b % vec2<u32>(32u)), _wgslsmith_mult_i32(global3.c, global3.c) << (firstLeadingBit(25296u) % 32u), func_5(Struct_2(-158f, global3.b, 28073i, global3.d), _wgslsmith_f_op_f32(global3.a - global3.d.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f + _wgslsmith_div_f32(global3.a, -612f)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(285f, global3.a, _wgslsmith_f_op_f32(floor(global3.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, 463f, 446f) - vec3<f32>(-749f, _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(-global3.a))))));
    var var_1 = abs(u_input.a);
    let var_2 = countOneBits(vec3<i32>(_wgslsmith_clamp_i32(abs(func_4(Struct_2(-1000f, vec2<u32>(40289u, 9321u), global3.c, Struct_1(vec4<bool>(global3.d.a.x, global0[_wgslsmith_index_u32(12666u, 30u)], global3.d.a.x, false), 811f)), Struct_1(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(global2.x, 30u)]), 442f), global3.a, global0[_wgslsmith_index_u32(global3.b.x, 30u)])), 3209i, global3.c >> (~u_input.a % 32u)), global3.c, countOneBits(global3.c) & abs(-1i)));
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(global2.x, min(1u, u_input.a))), _wgslsmith_f_op_vec2_f32(-var_0.zz), abs(_wgslsmith_mod_i32(-2147483647i, i32(-1i) * -1i)), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_clamp_u32(1u << (u_input.a % 32u), 67496u, u_input.a)) & 4137u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(248f)), _wgslsmith_f_op_f32(exp2(global3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.b) * -412f))));
}

