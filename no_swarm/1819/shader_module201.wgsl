struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, false, true, true, true, false, false, true, false, false, false, false, false, true, false, true, true, true, true, true, false, true, true);

var<private> global1: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-3172i, -1i, -10139i), vec3<i32>(-7912i, 782i, -1829i), vec3<i32>(-38946i, 2147483647i, 7876i), vec3<i32>(8935i, -12279i, 2147483647i), vec3<i32>(0i, -1i, -52949i), vec3<i32>(1i, -14416i, -50040i));

var<private> global2: array<i32, 31>;

var<private> global3: i32;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global0 = array<bool, 23>();
    let var_0 = -vec3<i32>(-2147483647i, -(~(~(-57556i))), select(-(~global2[_wgslsmith_index_u32(69387u, 31u)]), _wgslsmith_sub_i32(-346i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(18901u, 31u)], global2[_wgslsmith_index_u32(17716u, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<i32>(1i, global2[_wgslsmith_index_u32(1u, 31u)], -38564i, global2[_wgslsmith_index_u32(0u, 31u)]))), all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec2<bool>(global4.d, global0[_wgslsmith_index_u32(global4.a.x, 23u)]), true))));
    let var_1 = !(!global0[_wgslsmith_index_u32(global4.a.x, 23u)]) == all(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(91255u, 23u)], global0[_wgslsmith_index_u32(global4.a.x, 23u)])), vec2<bool>(true, global0[_wgslsmith_index_u32(1u ^ global4.a.x, 23u)]), any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]))));
    let var_2 = vec4<u32>(u_input.a, ~firstLeadingBit(firstLeadingBit(~global4.a.x)), firstLeadingBit(21062u), global4.a.x);
    var var_3 = ~vec3<u32>(firstLeadingBit(71179u), u_input.a, select(~(~4294967295u), 0u, false));
    return global4.b.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(~1i, ~0i, 1813f > global4.c);
    var var_1 = _wgslsmith_div_u32(40149u, _wgslsmith_mult_u32(abs(countOneBits(1u << (u_input.b % 32u))), firstLeadingBit(global4.a.x)));
    global4 = Struct_1(select(~vec3<u32>(1u, countOneBits(global4.a.x), 4294967295u), global4.a, global0[_wgslsmith_index_u32(~abs(59769u), 23u)]), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-127f, -1101f), global4.b.x, global4.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.c, 1000f, 490f), vec3<f32>(global4.c, global4.b.x, 1415f), true)), _wgslsmith_f_op_vec3_f32(sign(global4.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.b) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-166f, global4.b.x, 1000f)))))), _wgslsmith_f_op_f32(ceil(-1477f)), any(!select(vec3<bool>(false, global4.d, global0[_wgslsmith_index_u32(global4.a.x, 23u)]), vec3<bool>(true, true, false), vec3<bool>(true, var_0.c, var_0.c))) & false);
    global4 = Struct_1(vec3<u32>(~41326u, ~abs(_wgslsmith_dot_vec3_u32(global4.a, vec3<u32>(44807u, u_input.a, 4294967295u))), abs(85881u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.c + global4.c), 1000f)), _wgslsmith_div_f32(global4.c, -1155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.c, -1545f, true))))), _wgslsmith_f_op_f32(func_3()), false);
    global0 = array<bool, 23>();
    return Struct_2(!all(!select(vec3<bool>(false, var_0.c, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global4.d, false), true)), firstTrailingBit(firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], 0i, global2[_wgslsmith_index_u32(16643u, 31u)])) & (vec3<i32>(27726i, -1i, var_0.a) & vec3<i32>(-10i, var_0.a, 16325i))) >> (~vec3<u32>(1u, 38147u & global4.a.x, u_input.b) % vec3<u32>(32u)), Struct_1(global4.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.b + vec3<f32>(-1006f, global4.c, -812f)) * _wgslsmith_f_op_vec3_f32(global4.b * vec3<f32>(global4.c, global4.c, global4.c))))), global4.c, all(vec4<bool>(var_0.c, false | var_0.c, u_input.a <= 0u, any(vec4<bool>(var_0.c, true, var_0.c, global0[_wgslsmith_index_u32(1u, 23u)]))))), global4.c, Struct_1(~vec3<u32>(select(global4.a.x, 4294967295u, var_0.c), u_input.a, u_input.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-698f, global4.b.x, _wgslsmith_f_op_f32(-global4.c)))), _wgslsmith_div_f32(global4.b.x, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(1106f, 1390f))))), !(true & !var_0.c)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = true;
    global3 = 1i;
    global1 = array<vec3<i32>, 6>();
    global2 = array<i32, 31>();
    return Struct_2(true, global1[_wgslsmith_index_u32(max(4294967295u, 20361u), 6u)], Struct_1(~arg_1.a ^ ~arg_0.b.e.c.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.c.e.c, var_0.e.c, _wgslsmith_f_op_f32(var_0.d * -843f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(763f)), -1255f, -442f), select(vec3<bool>(false, true, true), vec3<bool>(arg_1.d, global0[_wgslsmith_index_u32(15508u, 23u)], var_1), global0[_wgslsmith_index_u32(8395u, 23u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(step(var_0.c.c, global4.c))) + 938f), var_1), _wgslsmith_f_op_f32(-1000f - -227f), arg_1);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = Struct_5(55684i, -2147483647i, !all(vec3<bool>(global4.c > 478f, true, select(arg_3.e.c.d, true, true))));
    var var_1 = arg_2;
    var var_2 = vec4<u32>(abs(arg_0.e.e.a.x), ~_wgslsmith_mult_u32(~(~0u), ~(~var_1.b.e.e.a.x)), arg_2.b.e.e.a.x, ~(~global4.a.x));
    var var_3 = Struct_1(arg_0.c.c.a, arg_0.e.e.b, arg_3.d, ~(-_wgslsmith_mult_i32(-17217i, global2[_wgslsmith_index_u32(71363u, 31u)])) != 1i);
    var_0 = Struct_5(-func_1(arg_2, Struct_1(vec3<u32>(var_2.x, var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.c.e.c, var_3.c, var_3.b.x)), _wgslsmith_f_op_f32(global4.b.x + 1024f), true)).b.x, select(-arg_3.e.b.x, ~func_2().b.x, global0[_wgslsmith_index_u32(max(func_1(arg_2, Struct_1(vec3<u32>(var_2.x, 50962u, 18171u), vec3<f32>(-1000f, arg_2.b.c.e.c, -920f), arg_0.c.c.c, global4.d)).c.a.x, reverseBits(var_1.b.e.e.a.x) >> (~1u % 32u)), 23u)]), all(!vec2<bool>(false, arg_0.c.a)));
    return StorageBuffer(vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(select(arg_2.b.e.d, -273f, !(false | var_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    global3 = global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b >> (~(global4.a.x ^ global4.a.x) % 32u)), 31u)];
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(19912u, u_input.b, 70817u, 1417u), vec4<u32>(global4.a.x, 53632u, 0u, u_input.b) << (vec4<u32>(u_input.a, 74234u, u_input.a, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, 40532u, global4.a.x, global4.a.x)), ~vec4<u32>(u_input.b, 1u, 0u, global4.a.x))), _wgslsmith_mult_u32(countOneBits(global4.a.x), _wgslsmith_div_u32(1u, u_input.b))), 31u)];
    let x = u_input.a;
    s_output = func_4(Struct_3(true, _wgslsmith_add_vec4_i32(-firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(0u, 31u)], -1i, 1i, 0i)), vec4<i32>(~(-2147483647i), ~global2[_wgslsmith_index_u32(12259u, 31u)], _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 31u)], 2147483647i), 2147483647i)), func_1(Struct_4(vec2<bool>(true, global4.d), Struct_3(global0[_wgslsmith_index_u32(5182u, 23u)], vec4<i32>(1i, global2[_wgslsmith_index_u32(global4.a.x, 31u)], global2[_wgslsmith_index_u32(global4.a.x, 31u)], global2[_wgslsmith_index_u32(1u, 31u)]), Struct_2(false, vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], global2[_wgslsmith_index_u32(21990u, 31u)], global2[_wgslsmith_index_u32(global4.a.x, 31u)]), Struct_1(global4.a, vec3<f32>(2086f, -824f, global4.c), global4.b.x, global4.d), 1000f, Struct_1(vec3<u32>(71980u, u_input.a, 72213u), vec3<f32>(global4.b.x, global4.b.x, global4.b.x), 402f, global0[_wgslsmith_index_u32(0u, 23u)])), -155f, Struct_2(global0[_wgslsmith_index_u32(2325u, 23u)], global1[_wgslsmith_index_u32(60554u, 6u)], Struct_1(vec3<u32>(24553u, 116829u, global4.a.x), vec3<f32>(-497f, global4.c, -665f), 1161f, false), global4.b.x, Struct_1(vec3<u32>(0u, u_input.b, global4.a.x), global4.b, global4.b.x, global4.d)))), Struct_1(min(vec3<u32>(20274u, u_input.a, u_input.b), global4.a), global4.b, 458f, !global0[_wgslsmith_index_u32(u_input.b, 23u)])), global4.c, Struct_2(func_1(Struct_4(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)]), Struct_3(true, vec4<i32>(-6286i, global2[_wgslsmith_index_u32(global4.a.x, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(global4.a.x, 31u)]), Struct_2(true, vec3<i32>(-2764i, -15621i, -1i), Struct_1(vec3<u32>(global4.a.x, 35424u, 1627u), vec3<f32>(-558f, 495f, -762f), 1637f, global4.d), global4.c, Struct_1(vec3<u32>(u_input.b, 0u, 1u), vec3<f32>(global4.b.x, global4.b.x, 1000f), 545f, global0[_wgslsmith_index_u32(global4.a.x, 23u)])), 1505f, Struct_2(false, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], 70058i), Struct_1(vec3<u32>(0u, global4.a.x, global4.a.x), vec3<f32>(1350f, 338f, global4.c), -234f, false), global4.b.x, Struct_1(vec3<u32>(4294967295u, global4.a.x, 0u), vec3<f32>(global4.b.x, global4.b.x, global4.b.x), global4.c, true)))), func_2().e).c.d, _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(0u, 6u)], vec3<i32>(0i, global2[_wgslsmith_index_u32(0u, 31u)], 0i)), func_1(Struct_4(vec2<bool>(false, true), Struct_3(false, vec4<i32>(2147483647i, 42020i, 17384i, -6342i), Struct_2(false, global1[_wgslsmith_index_u32(101153u, 6u)], Struct_1(vec3<u32>(0u, global4.a.x, u_input.b), vec3<f32>(global4.c, global4.c, global4.c), global4.b.x, global4.d), -675f, Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec3<f32>(global4.c, global4.c, global4.c), global4.c, true)), -652f, Struct_2(false, vec3<i32>(-44250i, global2[_wgslsmith_index_u32(global4.a.x, 31u)], global2[_wgslsmith_index_u32(global4.a.x, 31u)]), Struct_1(global4.a, global4.b, 3153f, true), global4.b.x, Struct_1(vec3<u32>(54378u, global4.a.x, 4294967295u), vec3<f32>(global4.c, -781f, 232f), global4.c, true)))), func_1(Struct_4(vec2<bool>(global4.d, true), Struct_3(false, vec4<i32>(1197i, global2[_wgslsmith_index_u32(u_input.a, 31u)], 1i, 1i), Struct_2(global4.d, vec3<i32>(-42515i, global2[_wgslsmith_index_u32(global4.a.x, 31u)], 0i), Struct_1(global4.a, vec3<f32>(749f, global4.b.x, 2767f), 546f, global4.d), global4.b.x, Struct_1(global4.a, global4.b, global4.b.x, global0[_wgslsmith_index_u32(5045u, 23u)])), -259f, Struct_2(true, vec3<i32>(2147483647i, 0i, 0i), Struct_1(global4.a, global4.b, global4.c, global4.d), global4.c, Struct_1(vec3<u32>(4294967295u, u_input.b, 0u), global4.b, -1100f, global0[_wgslsmith_index_u32(23335u, 23u)])))), Struct_1(global4.a, vec3<f32>(global4.c, global4.b.x, global4.b.x), global4.b.x, global4.d)).c).e, global4.c, Struct_1(vec3<u32>(u_input.b, global4.a.x, 4294967295u) >> (vec3<u32>(global4.a.x, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-global4.b), 1f, global2[_wgslsmith_index_u32(4294967295u, 31u)] <= global2[_wgslsmith_index_u32(global4.a.x, 31u)]))), i32(-1i) * -(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(25248u, 31u)], 44250i) | func_1(Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false), Struct_3(false, vec4<i32>(-1i, -1i, 0i, -29843i), Struct_2(true, global1[_wgslsmith_index_u32(4294967295u, 6u)], Struct_1(vec3<u32>(29551u, 7066u, 4294967295u), vec3<f32>(global4.c, global4.b.x, global4.c), 2724f, global0[_wgslsmith_index_u32(u_input.a, 23u)]), global4.b.x, Struct_1(global4.a, vec3<f32>(global4.c, global4.b.x, global4.c), global4.c, true)), 186f, Struct_2(true, vec3<i32>(-16977i, global2[_wgslsmith_index_u32(12494u, 31u)], global2[_wgslsmith_index_u32(global4.a.x, 31u)]), Struct_1(vec3<u32>(global4.a.x, global4.a.x, 36136u), global4.b, -124f, false), global4.c, Struct_1(global4.a, vec3<f32>(909f, global4.c, global4.b.x), global4.c, false)))), Struct_1(vec3<u32>(u_input.a, u_input.b, 1u), vec3<f32>(global4.c, -2543f, -1339f), -1801f, global4.d)).b.x), Struct_4(!vec2<bool>(true, false != global0[_wgslsmith_index_u32(4294967295u, 23u)]), Struct_3(all(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(global4.a.x, 23u)])), _wgslsmith_add_vec4_i32(vec4<i32>(7570i, -19887i, global2[_wgslsmith_index_u32(u_input.a, 31u)], global2[_wgslsmith_index_u32(global4.a.x, 31u)]), vec4<i32>(-69218i, global2[_wgslsmith_index_u32(global4.a.x, 31u)], 43603i, global2[_wgslsmith_index_u32(u_input.a, 31u)])), func_1(Struct_4(vec2<bool>(global4.d, false), Struct_3(true, vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(77449u, 31u)], -17426i, global2[_wgslsmith_index_u32(21006u, 31u)]), Struct_2(global4.d, global1[_wgslsmith_index_u32(18455u, 6u)], Struct_1(vec3<u32>(63942u, 1u, global4.a.x), global4.b, global4.b.x, true), global4.c, Struct_1(vec3<u32>(705u, global4.a.x, u_input.a), vec3<f32>(global4.b.x, -285f, global4.b.x), global4.b.x, global4.d)), global4.b.x, Struct_2(true, vec3<i32>(-1i, 0i, global2[_wgslsmith_index_u32(u_input.a, 31u)]), Struct_1(global4.a, global4.b, 1043f, false), 1000f, Struct_1(global4.a, global4.b, -1159f, true)))), func_1(Struct_4(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), Struct_3(true, vec4<i32>(-1i, global2[_wgslsmith_index_u32(global4.a.x, 31u)], -56595i, global2[_wgslsmith_index_u32(u_input.b, 31u)]), Struct_2(false, global1[_wgslsmith_index_u32(69222u, 6u)], Struct_1(vec3<u32>(global4.a.x, global4.a.x, 65604u), vec3<f32>(global4.c, global4.c, global4.c), global4.c, false), -1404f, Struct_1(vec3<u32>(u_input.a, global4.a.x, global4.a.x), vec3<f32>(global4.c, -1000f, global4.b.x), global4.c, global4.d)), global4.b.x, Struct_2(global4.d, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(59049u, 31u)], 0i), Struct_1(global4.a, vec3<f32>(1000f, global4.b.x, global4.c), global4.b.x, global4.d), global4.c, Struct_1(vec3<u32>(24546u, u_input.a, 4294967295u), vec3<f32>(global4.b.x, global4.b.x, global4.b.x), global4.b.x, false)))), Struct_1(vec3<u32>(u_input.a, global4.a.x, 1u), global4.b, global4.b.x, true)).c), _wgslsmith_f_op_f32(-1339f - _wgslsmith_f_op_f32(global4.c * 646f)), func_1(Struct_4(vec2<bool>(false, true), Struct_3(false, vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(global4.a.x, 31u)], global2[_wgslsmith_index_u32(16480u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)]), Struct_2(true, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], -27399i, 1i), Struct_1(global4.a, vec3<f32>(1000f, global4.c, 1818f), global4.b.x, global0[_wgslsmith_index_u32(55253u, 23u)]), global4.c, Struct_1(vec3<u32>(u_input.b, global4.a.x, u_input.a), global4.b, 1000f, global4.d)), global4.c, Struct_2(true, vec3<i32>(-13754i, global2[_wgslsmith_index_u32(10581u, 31u)], global2[_wgslsmith_index_u32(global4.a.x, 31u)]), Struct_1(global4.a, global4.b, global4.b.x, false), global4.c, Struct_1(global4.a, vec3<f32>(-1170f, global4.b.x, 1359f), -674f, true)))), func_1(Struct_4(vec2<bool>(global4.d, true), Struct_3(global4.d, vec4<i32>(global2[_wgslsmith_index_u32(global4.a.x, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(7944u, 31u)], 64686i), Struct_2(false, vec3<i32>(global2[_wgslsmith_index_u32(global4.a.x, 31u)], -4376i, 0i), Struct_1(global4.a, global4.b, global4.c, false), 834f, Struct_1(global4.a, global4.b, global4.c, true)), -838f, Struct_2(global4.d, vec3<i32>(-1i, global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)]), Struct_1(vec3<u32>(u_input.b, global4.a.x, global4.a.x), global4.b, 507f, false), 649f, Struct_1(vec3<u32>(u_input.a, u_input.a, 1u), vec3<f32>(global4.c, global4.b.x, 705f), -1994f, true)))), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(global4.c, 1707f, -905f), global4.b.x, global4.d)).e))), Struct_3(global4.d, vec4<i32>(_wgslsmith_mult_i32(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 31u)]), 1i, _wgslsmith_add_i32(2147483647i, global2[_wgslsmith_index_u32(global4.a.x, 31u)]) & -2894i, _wgslsmith_div_i32(0i, -17011i)), func_1(Struct_4(vec2<bool>(false, false), Struct_3(global4.d, vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(global4.a.x, 31u)], -2164i, 31132i), Struct_2(global0[_wgslsmith_index_u32(1u, 23u)], vec3<i32>(global2[_wgslsmith_index_u32(56106u, 31u)], 6972i, 1i), Struct_1(global4.a, vec3<f32>(global4.b.x, global4.b.x, -1070f), 485f, global4.d), global4.b.x, Struct_1(vec3<u32>(global4.a.x, 4294967295u, 0u), vec3<f32>(global4.c, 1033f, -246f), 591f, true)), global4.c, Struct_2(true, global1[_wgslsmith_index_u32(7260u, 6u)], Struct_1(vec3<u32>(u_input.b, 52964u, 4294967295u), global4.b, global4.c, global4.d), 1850f, Struct_1(global4.a, vec3<f32>(global4.c, -737f, global4.b.x), global4.c, false)))), func_1(Struct_4(vec2<bool>(global4.d, global4.d), Struct_3(global0[_wgslsmith_index_u32(0u, 23u)], vec4<i32>(global2[_wgslsmith_index_u32(63164u, 31u)], -647i, 2147483647i, -2147483647i), Struct_2(global0[_wgslsmith_index_u32(32538u, 23u)], vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.b, 31u)], -2147483647i), Struct_1(global4.a, global4.b, 152f, global4.d), global4.c, Struct_1(global4.a, global4.b, 1000f, true)), global4.c, Struct_2(true, vec3<i32>(0i, 10260i, -871i), Struct_1(vec3<u32>(u_input.a, 0u, u_input.a), global4.b, global4.c, global0[_wgslsmith_index_u32(u_input.b, 23u)]), global4.c, Struct_1(global4.a, vec3<f32>(549f, -902f, 1213f), global4.b.x, false)))), Struct_1(vec3<u32>(38972u, u_input.a, 1u), global4.b, 1067f, true)).c), 262f, func_1(Struct_4(!vec2<bool>(global0[_wgslsmith_index_u32(global4.a.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), Struct_3(global0[_wgslsmith_index_u32(u_input.b, 23u)], vec4<i32>(global2[_wgslsmith_index_u32(global4.a.x, 31u)], global2[_wgslsmith_index_u32(u_input.b, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)], -13892i), Struct_2(true, vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], -11929i, 236i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 71171u), vec3<f32>(2917f, global4.c, -1549f), -556f, true), global4.c, Struct_1(vec3<u32>(u_input.a, u_input.a, global4.a.x), vec3<f32>(145f, global4.c, global4.c), 123f, false)), -892f, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(1u, 6u)], Struct_1(global4.a, vec3<f32>(global4.c, global4.b.x, global4.b.x), global4.c, false), global4.b.x, Struct_1(global4.a, global4.b, -412f, global4.d)))), Struct_1(vec3<u32>(u_input.b, global4.a.x, global4.a.x), _wgslsmith_f_op_vec3_f32(abs(global4.b)), _wgslsmith_f_op_f32(294f * global4.c), false))));
}

