struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(0i, -5593i, 4539i, i32(-2147483648), -1i, 25751i, 2147483647i, -5977i, 32170i, 29800i, 2147483647i, 1i, 1i, 845i, 11657i, -311i);

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 19>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), -1i, vec4<f32>(213f, -341f, 1265f, -1738f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = vec3<bool>(arg_2.b.x == false, true, arg_0.a.x);
    let var_1 = select(!global1.xx, arg_0.b.yz, !arg_0.c.xx);
    global2 = array<u32, 19>();
    global0 = array<i32, 16>();
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, 10108u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)]), vec3<u32>(1u & global2[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)]), 61174u)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(27923u, 4294967295u, 0u), firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(15611u, 19u)], 4294967295u, 1u))), 4294967295u, reverseBits(_wgslsmith_sub_u32(56585u, 1u))) % vec3<u32>(32u)), ~vec3<u32>(global2[_wgslsmith_index_u32(~92465u, 19u)], _wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 19u)]), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]) & abs(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(10183u, 4784u, global2[_wgslsmith_index_u32(20667u, 19u)]), vec3<u32>(16381u, 14401u, 4294967295u)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.e));
}

fn func_2(arg_0: f32) -> u32 {
    global3 = Struct_1(select(global3.c.yyz, vec3<bool>(true, global3.b.x, !(!global1.x)), global3.c.x), select(global3.c.xyz, !(!vec3<bool>(global3.b.x, global1.x, true)), global3.a.x), global3.c, 2147483647i, _wgslsmith_f_op_vec4_f32(global3.e * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<bool>(global1.x, global3.a.x, true), global3.a, vec4<bool>(true, true, true, global1.x), global3.d, global3.e), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48176u, 19u)], 16u)], u_input.a.x), Struct_1(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global3.a.x), -2147483647i, global3.e)))))));
    let var_0 = global3.c;
    let var_1 = Struct_1(select(vec3<bool>(var_0.x, global1.x, !all(global3.c)), !vec3<bool>(global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)] > 4294967295u, 0u <= global2[_wgslsmith_index_u32(1u, 19u)]), global3.d > u_input.a.x), vec3<bool>(var_0.x, !global1.x, 290f >= _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, global3.e.x)))), select(vec4<bool>(var_0.x, global3.e.x <= _wgslsmith_f_op_f32(abs(global3.e.x)), all(select(vec2<bool>(global3.b.x, global1.x), vec2<bool>(true, global3.b.x), var_0.wx)), !global3.c.x), vec4<bool>(global3.b.x, all(vec3<bool>(global1.x, global1.x, var_0.x)), global1.x, global2[_wgslsmith_index_u32(select(0u, 33417u, var_0.x), 19u)] == 31497u), global3.c), ~reverseBits(u_input.a.x) >> (max(1u, 17979u) % 32u), _wgslsmith_f_op_vec4_f32(select(global3.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(-1160f)), _wgslsmith_div_f32(global3.e.x, global3.e.x), _wgslsmith_div_f32(global3.e.x, -140f))), all(vec2<bool>(global3.a.x && global1.x, true)))));
    var var_2 = _wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_sub_u32(firstLeadingBit(1u), 0u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], 5834u, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40888u, 19u)], 19u)], 19u)], 19u)], 4294967295u))) >> (_wgslsmith_mult_u32(~20070u, ~(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25756u, 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]), 19u)])) % 32u);
    var var_3 = -10834i;
    return ~global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, global2[_wgslsmith_index_u32(1u, 19u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)] % 32u), 1u), ~_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], 0u, global2[_wgslsmith_index_u32(70240u, 19u)]))), 19u)];
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = global2[_wgslsmith_index_u32(max(min(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)] >> (48684u % 32u), 23110u), firstTrailingBit(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(54076u, 19u)], 25876u))) & ~func_2(global3.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46705u, 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35486u, 19u)], 19u)]), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20577u, 19u)], 19u)], global2[_wgslsmith_index_u32(11406u, 19u)])), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19730u, 19u)], 19u)] | 19725u, 0u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12175u, 19u)], 19u)], 19u)], 19u)]), 19u)], 19u)], ~4294967295u, reverseBits(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)]))), (select(vec4<u32>(40400u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 1u, 35200u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3815u, 19u)], 19u)], 19u)], 6857u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 4294967295u), global3.c) & ~vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 3165u)) ^ _wgslsmith_div_vec4_u32(min(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5978u, 19u)], 19u)], global2[_wgslsmith_index_u32(14659u, 19u)], 7045u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)]), vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(76943u, 19u)], 19u)], 0u, 4294967295u)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 67954u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])))), 19u)];
    let var_2 = global3.c;
    let var_3 = Struct_1(select(!vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, true, !(global3.e.x > global3.e.x)), true), !vec3<bool>(any(global3.c), !(!arg_0.x), any(!global3.a)), global3.c, firstLeadingBit(28747i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-975f - -957f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(250f, 1000f)) * _wgslsmith_f_op_f32(342f + 352f)), 1f)));
    var_0 = -1i;
    return Struct_1(!(!vec3<bool>(select(arg_0.x, var_3.b.x, global1.x), all(var_2.zyy), global1.x)), global3.a, select(vec4<bool>(true, true, false, true), global3.c, abs(-12771i) >= ~(-u_input.a.x)), 17764i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-992f, var_3.e.x, _wgslsmith_div_f32(var_3.e.x, global3.e.x), global3.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.e))) - global3.e));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<i32>(1i, u_input.a.x, ~arg_1.d, -_wgslsmith_mult_i32(0i, func_1(arg_1.b.zx).d));
    var var_1 = arg_0;
    var var_2 = 0u;
    var_1 = arg_0;
    global2 = array<u32, 19>();
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    global0 = array<i32, 16>();
    let var_0 = vec4<u32>(1u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(46131u, global2[_wgslsmith_index_u32(54853u, 19u)]), 19u)] >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(64205u, 19u)] >> (global2[_wgslsmith_index_u32(0u, 19u)] % 32u), reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], 26645u, 1u, 0u) & vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 19u)], 5856u, 0u), reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12287u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 25357u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10149u, 19u)], 19u)], global2[_wgslsmith_index_u32(1u, 19u)])))) % 32u), min(~1u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(18516u, 19u)]), vec2<u32>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)])), firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)])), abs(vec2<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 4294967295u)) & vec2<u32>(1u, 1u)), 19u)]), global2[_wgslsmith_index_u32(45582u, 19u)] & 4294967295u);
    global2 = array<u32, 19>();
    var var_1 = arg_0;
    let var_2 = max(_wgslsmith_mod_vec2_i32(-u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, ~(-2147483647i)), vec2<i32>(~(-2147483647i), 24844i))), select(vec2<i32>(~(-1734i), 1i), firstTrailingBit(-vec2<i32>(u_input.a.x, -2147483647i)), false));
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(func_1(select(vec2<bool>(arg_0.c.x, var_1.c.x), vec2<bool>(true, true), false)).d), _wgslsmith_sub_i32(var_2.x, -var_1.d), 2147483647i), -vec3<i32>(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 16u)], 63818i), vec2<i32>(u_input.a.x, arg_0.d)), u_input.a), -(~(-44326i))), min(vec3<i32>(firstTrailingBit(var_2.x), -_wgslsmith_mod_i32(global3.d, u_input.a.x), var_2.x), _wgslsmith_sub_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.d, var_2.x, u_input.a.x), vec3<i32>(19956i, global0[_wgslsmith_index_u32(123370u, 16u)], -2147483647i), vec3<i32>(global3.d, var_1.d, var_2.x))), vec3<i32>(0i, global0[_wgslsmith_index_u32(abs(4294967295u), 16u)], ~global3.d))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65238u, 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65909u, 19u)], 19u)], 19u)] & 4294967295u, _wgslsmith_clamp_u32(18053u, 45131u, 0u))), select(~firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 111810u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)])), firstLeadingBit(max(vec3<u32>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88318u, 19u)], 19u)], 4294967295u) ^ vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], 18660u, global2[_wgslsmith_index_u32(19334u, 19u)]), vec3<u32>(20861u, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30568u, 19u)], 19u)]))), false)), 19u)];
    global2 = array<u32, 19>();
    let var_1 = Struct_1(!(!select(!vec3<bool>(false, global1.x, true), !vec3<bool>(false, global3.b.x, false), true)), vec3<bool>(global3.a.x, false, arg_1.b.x), func_4(func_1(global3.c.xz), func_1(!func_4(arg_1, arg_1, vec2<f32>(arg_2.x, arg_2.x)).b.xz), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.e.xw), _wgslsmith_div_vec2_f32(arg_2, vec2<f32>(arg_2.x, -820f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.e.yy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-919f, arg_2.x) - arg_2)))).c, _wgslsmith_clamp_i32(-global3.d, abs(_wgslsmith_clamp_i32(~arg_0.x, arg_1.d, arg_1.d)), ~_wgslsmith_clamp_i32(func_5(Struct_1(arg_1.a, arg_1.c.zwy, global3.c, 1i, global3.e), global1.x).x, max(arg_0.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18500u, 19u)], 16u)]), 1i)), _wgslsmith_f_op_vec4_f32(global3.e * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -268f))), _wgslsmith_f_op_f32(f32(-1f) * -2542f), _wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-158f + 2749f)))));
    let var_2 = func_4(Struct_1(func_1(!select(vec2<bool>(false, false), arg_1.c.xz, false)).c.yyx, !vec3<bool>(global1.x, !global3.a.x, any(vec2<bool>(global1.x, global1.x))), vec4<bool>(true, !(4294967295u != global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8880u, 19u)], 19u)]), false, true), ~firstLeadingBit(0i), _wgslsmith_f_op_vec4_f32(func_3(arg_1, -(var_1.d >> (global2[_wgslsmith_index_u32(8853u, 19u)] % 32u)), arg_1))), Struct_1(!var_1.a, arg_1.b, vec4<bool>(global1.x != false, arg_1.b.x, reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(113356u, 19u)], 19u)]) >= 4294967295u, true), global3.d, var_1.e), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) - global3.e.x) + _wgslsmith_f_op_f32(var_1.e.x * arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.e.x - -1000f)))))).d;
    var var_3 = Struct_1(func_1(select(vec2<bool>(true, all(vec4<bool>(false, global1.x, arg_1.c.x, true))), select(global3.c.xy, !var_1.b.zz, arg_1.a.xy), arg_1.a.x)).c.xwy, vec3<bool>(!(!(!global1.x)), func_1(vec2<bool>(!var_1.a.x, !var_1.c.x)).c.x, true), !global3.c, 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.e + arg_1.e)), vec4<f32>(-1000f, 1328f, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(all(global3.c), !global3.b.x || true, select(global1.x, !global3.b.x, true));
    global2 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-global3.e);
    let var_1 = select(vec4<bool>(any(vec4<bool>(true, true, global3.a.x & false, global3.c.x)), any(!(!vec3<bool>(global1.x, global3.b.x, false))), all(vec3<bool>(any(vec4<bool>(true, true, true, global3.c.x)), false, all(vec4<bool>(true, global3.a.x, false, global3.a.x)))), abs(abs(global2[_wgslsmith_index_u32(0u, 19u)])) != max(1u, 1u)), vec4<bool>(select(global1.x, global1.x, true), !global1.x, global3.a.x | true, global1.x), select(vec4<bool>(any(vec4<bool>(global3.c.x, false, global1.x, global3.a.x)), global3.c.x, true, false), vec4<bool>(global1.x, any(vec3<bool>(global3.b.x, global3.a.x, true)), select(!global3.b.x, all(vec4<bool>(false, global1.x, global3.b.x, true)), false), !(global1.x && global1.x)), !vec4<bool>(global3.b.x, global1.x, global3.c.x, any(global3.c))));
    var var_2 = _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(func_6(func_5(func_4(Struct_1(global3.c.xyx, vec3<bool>(global3.a.x, false, global3.b.x), vec4<bool>(global3.b.x, false, true, false), -42013i, vec4<f32>(var_0.x, -927f, var_0.x, 1216f)), func_1(global1.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, var_0.x))), !global3.a.x), Struct_1(vec3<bool>(global3.c.x, !var_1.x, true), select(func_1(vec2<bool>(false, global3.b.x)).b, var_1.wzz, var_1.xxz), var_1, -(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 16u)]), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<bool>(false, true, global1.x), vec3<bool>(true, global1.x, global1.x), vec4<bool>(global3.c.x, global3.c.x, true, true), 1i, vec4<f32>(-1000f, var_0.x, global3.e.x, -214f)), -global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 16u)], Struct_1(global3.b, vec3<bool>(false, true, global1.x), var_1, 2147483647i, global3.e)))), _wgslsmith_f_op_vec2_f32(-var_0.xw)), 16u)], ~u_input.a.x);
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, global3.d | firstLeadingBit(1i), ~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6680u, 19u)], 19u)], 19u)]), vec3<u32>(40059u, global2[_wgslsmith_index_u32(1u, 19u)], 27019u)), 19u)], 16u)], u_input.a.x)), _wgslsmith_clamp_vec3_i32(((vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23959u, 19u)], 19u)], 16u)], 0i, global3.d) | vec3<i32>(-2147483647i, -2986i, 2147483647i)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31330u, 19u)], 19u)], 19u)], 1u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6116u, 19u)], 19u)], 19u)], 19u)])) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(func_5(Struct_1(var_1.wyy, var_1.wyy, vec4<bool>(true, true, global3.c.x, global1.x), global3.d, global3.e), true), max(vec3<i32>(-2147483647i, -14998i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, u_input.a.x))), _wgslsmith_sub_vec3_i32(select(abs(vec3<i32>(56258i, 0i, u_input.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46244u, 19u)], 19u)], 19u)], 16u)], 66367i, 1i), vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 16u)], u_input.a.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88570u, 19u)], 16u)])), func_1(vec2<bool>(var_1.x, false)).b.x), abs(min(vec3<i32>(global3.d, -1i, global3.d), vec3<i32>(u_input.a.x, -1i, 2147483647i)))), select(vec3<i32>(~(-1i), -2147483647i, -2147483647i), -(vec3<i32>(-3569i, 11475i, u_input.a.x) & vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 16u)], 0i, -5951i)), var_1.wwy)), vec3<i32>(-(~(-1i) & min(global0[_wgslsmith_index_u32(4294967295u, 16u)], -2147483647i)), countOneBits(-18636i), i32(-1i) * -12087i));
    var var_4 = 612f;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 0i);
}

