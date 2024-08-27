struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(30u, 1u, 0u, 0u, 0u, 4294967295u, 72355u, 0u);

var<private> global1: Struct_2;

var<private> global2: f32;

var<private> global3: array<i32, 6>;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 12442u, 74281u, 25634u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<bool>) -> vec4<u32> {
    global4 = ((vec4<u32>(~global4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), vec3<u32>(global4.x, global0[_wgslsmith_index_u32(global4.x, 8u)], 1u)), u_input.a.x & 0u, ~global4.x) | vec4<u32>(4294967295u, ~global4.x, firstLeadingBit(102052u), ~global0[_wgslsmith_index_u32(u_input.a.x, 8u)])) >> (reverseBits(~vec4<u32>(56066u, global4.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a.x)) % vec4<u32>(32u))) | u_input.a;
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(min(~(~u_input.a.x), ~reverseBits(global4.x)), _wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, global4.x), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global4.x))), ~u_input.a.x)), 6u)];
    global0 = array<u32, 8>();
    var var_1 = arg_0;
    let var_2 = true;
    return vec4<u32>(_wgslsmith_mod_u32(33931u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(15330u, 8u)], u_input.a.x)), firstTrailingBit(abs(_wgslsmith_sub_u32(u_input.a.x << (global0[_wgslsmith_index_u32(0u, 8u)] % 32u), reverseBits(global0[_wgslsmith_index_u32(global4.x, 8u)])))), ~countOneBits(29422u), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_add_u32(70044u, global0[_wgslsmith_index_u32(3566u, 8u)]), ~global0[_wgslsmith_index_u32(global4.x, 8u)], global0[_wgslsmith_index_u32(global4.x, 8u)]) | vec4<u32>(~u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], countOneBits(4294967295u), reverseBits(global0[_wgslsmith_index_u32(7773u, 8u)])), u_input.a));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = vec3<bool>(true, !(!(true || global1.b)), ~(0u << (~global0[_wgslsmith_index_u32(global4.x, 8u)] % 32u)) >= abs(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(48285u, 8u)] | 115209u, ~u_input.a.x)));
    let var_1 = select(countOneBits(firstTrailingBit(1u)), firstLeadingBit(~abs(global4.x) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a), func_3(Struct_2(vec2<bool>(arg_3.a.x, var_0.x), global1.a.x), arg_3, vec2<bool>(false, true), vec4<bool>(arg_3.b, true, global1.b, global1.a.x))) % 32u)), global1.a.x);
    let var_2 = vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1359f)), 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) - _wgslsmith_f_op_f32(select(arg_0, arg_2.x, false)))))), _wgslsmith_f_op_f32(arg_0 - arg_0));
    global3 = array<i32, 6>();
    global2 = _wgslsmith_f_op_f32(select(arg_0, var_2.x, false));
    return ~_wgslsmith_dot_vec3_u32(global4.yyy, _wgslsmith_div_vec3_u32(global4.xzx, u_input.a.wxy));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = u_input.a ^ u_input.a;
    let var_1 = ~(i32(-1i) * -2147483647i);
    global4 = vec4<u32>(53371u, firstTrailingBit(_wgslsmith_clamp_u32(~arg_1, ~4294967295u, select(func_3(Struct_2(vec2<bool>(true, true), arg_2), Struct_2(global1.a, arg_2), global1.a, vec4<bool>(false, false, arg_2, true)).x, u_input.a.x >> (global4.x % 32u), arg_2))), (global0[_wgslsmith_index_u32(4294967295u, 8u)] ^ arg_0) << (countOneBits(~0u) % 32u), 1u);
    let var_2 = Struct_2(select(global1.a, !vec2<bool>(arg_1 <= var_0.x, all(vec4<bool>(false, arg_2, global1.a.x, false))), global1.a), any(vec3<bool>(!arg_2, true, any(!vec4<bool>(true, false, false, arg_2)))));
    let var_3 = ~(u_input.a.xwy << (abs(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 4294967295u, u_input.a.x), vec3<u32>(var_0.x, arg_0, 0u)))) % vec3<u32>(32u)));
    return var_2;
}

fn func_1() -> vec3<bool> {
    global1 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~((global4.x ^ 1u) ^ 1u), max(func_2(-594f, -397f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-591f, 1106f)), Struct_2(global1.a, global1.a.x)), global4.x)), 8u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4460u, 53009u), 8u)], !(firstLeadingBit(global3[_wgslsmith_index_u32(global4.x, 6u)]) != global3[_wgslsmith_index_u32(~60696u, 6u)]) | all(vec4<bool>(global1.a.x, true, global1.b, global1.a.x)));
    global4 = ~(~vec4<u32>(41429u, global4.x, 4294967295u, func_3(Struct_2(global1.a, true), Struct_2(vec2<bool>(true, false), global1.b), func_4(0u, u_input.a.x, true).a, !vec4<bool>(false, false, global1.a.x, global1.b)).x));
    var var_0 = Struct_2(vec2<bool>(select(global1.a.x, global4.x > 43623u, global1.a.x), global1.b), true);
    global3 = array<i32, 6>();
    let var_1 = vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_add_i32(1i, abs(global3[_wgslsmith_index_u32(19564u, 6u)]))), ~_wgslsmith_add_i32(~global3[_wgslsmith_index_u32(64302u, 6u)], 1i)), 26864i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~u_input.a.x), vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)])), 8u)], 6u)]);
    return vec3<bool>(global1.a.x, var_0.b || global1.a.x, !var_0.b);
}

fn func_5(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    global3 = array<i32, 6>();
    global0 = array<u32, 8>();
    var var_0 = func_4(firstTrailingBit(select(1u, u_input.a.x, arg_1.x)), global4.x, select(global1.a.x, all(!func_1().xx), all(vec4<bool>(true, func_4(31662u, global0[_wgslsmith_index_u32(global4.x, 8u)], false).b, u_input.a.x < global0[_wgslsmith_index_u32(global4.x, 8u)], arg_1.x))));
    var var_1 = 14475u;
    var var_2 = arg_1;
    return Struct_1(global4.wyw, abs(~abs(~u_input.a)), firstLeadingBit(~(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72116u, 8u)], 8u)], global4.x) | 31070u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(select(!global1.a, !(!vec2<bool>(global1.b, global1.b)), true), false);
    var var_0 = Struct_1(vec3<u32>(u_input.a.x, reverseBits(global4.x), ~min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1100u, global0[_wgslsmith_index_u32(2905u, 8u)], u_input.a.x)), 0u | u_input.a.x)), ~(vec4<u32>(~113u, _wgslsmith_sub_u32(43735u, 0u), 54311u, _wgslsmith_mod_u32(global4.x, 1u)) ^ (vec4<u32>(4294967295u, global4.x, global0[_wgslsmith_index_u32(0u, 8u)], 0u) << (vec4<u32>(25350u, 4294967295u, 48721u, global4.x) % vec4<u32>(32u)))), _wgslsmith_add_u32(~(~firstTrailingBit(4294967295u)), 2830u));
    global3 = array<i32, 6>();
    global3 = array<i32, 6>();
    var var_1 = func_5(-1465f, !select(!select(vec3<bool>(global1.a.x, global1.b, global1.a.x), vec3<bool>(false, global1.a.x, false), vec3<bool>(global1.b, true, global1.b)), select(select(vec3<bool>(false, false, true), vec3<bool>(global1.a.x, false, global1.a.x), true), func_1(), true), !(!vec3<bool>(global1.a.x, global1.a.x, global1.a.x))));
    var var_2 = func_5(_wgslsmith_f_op_f32(round(-214f)), vec3<bool>(any(vec2<bool>(func_4(59434u, var_1.b.x, true).a.x, any(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x)))), false, any(!(!vec4<bool>(global1.b, false, false, true)))));
    let var_3 = Struct_2(vec2<bool>(true, !(all(vec3<bool>(global1.a.x, false, true)) != global1.a.x)), countOneBits(-53398i) <= _wgslsmith_dot_vec4_i32(~select(vec4<i32>(global3[_wgslsmith_index_u32(10936u, 6u)], -2147483647i, -1i, -8470i), vec4<i32>(global3[_wgslsmith_index_u32(27213u, 6u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b.x, 8u)], 6u)], 1i, -8429i), vec4<bool>(global1.b, global1.a.x, global1.a.x, true)), -_wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(16468u, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)], 18845i, global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<i32>(1i, -7322i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.x, 8u)], 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~var_0.a, vec3<u32>(75886u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1047u, 8u)], var_0.b.x), ~u_input.a.x), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~var_0.b.x, 8u)], firstLeadingBit(global4.x)))), ~reverseBits(76166u));
}

