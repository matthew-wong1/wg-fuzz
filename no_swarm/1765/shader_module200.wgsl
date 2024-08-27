struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: Struct_4;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    let var_0 = vec2<f32>(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_1 = global1.b.x;
    return -1510f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2004f, 1133f)) - 1209f), arg_0, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(global1.c)))));
    let var_1 = global1.a.b;
    var var_2 = true;
    global0 = array<u32, 2>();
    var var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-808f, 1531f))), Struct_4(Struct_2(arg_2.a.b, Struct_1(vec2<bool>(false, global1.e), arg_2.b, vec2<u32>(arg_3.a.c.x, global0[_wgslsmith_index_u32(0u, 2u)]) & vec2<u32>(0u, 1u), -15092i, global1.b >> (global1.b % vec4<u32>(32u))), ~var_1.d), abs((vec4<u32>(53705u, arg_2.b.x, arg_2.b.x, global0[_wgslsmith_index_u32(39282u, 2u)]) << (vec4<u32>(0u, arg_2.b.x, u_input.a.x, global0[_wgslsmith_index_u32(0u, 2u)]) % vec4<u32>(32u))) ^ arg_3.a.e), _wgslsmith_f_op_f32(-100f - _wgslsmith_f_op_f32(var_0.x - arg_0)), _wgslsmith_div_f32(448f, -1688f), var_1.a.x));
    return ~(~vec4<u32>(~(~global1.b.x), var_1.c.x, u_input.a.x, ~(~arg_3.b.e.x)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    let var_0 = ~func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, false, arg_1.b.a.a.a.x), vec3<bool>(false, arg_0.a.b.a.x, arg_0.e), vec3<bool>(true, arg_1.b.e, true)), -1529f)) - arg_1.b.c), arg_1.a.x, arg_0, Struct_2(arg_1.b.a.a, arg_0.a.b, reverseBits(firstLeadingBit(arg_3.a.c))));
    var var_1 = _wgslsmith_dot_vec3_u32(arg_3.a.b.e.wxw & vec3<u32>(~(~arg_3.b.x), func_4(-839f, -311f, Struct_4(Struct_2(Struct_1(arg_1.b.a.b.a, arg_0.a.b.b, vec2<u32>(arg_0.a.a.c.x, 4294967295u), arg_3.a.c, vec4<u32>(0u, var_0.x, var_0.x, var_0.x)), arg_0.a.a, arg_0.a.b.d), arg_1.b.a.b.e, arg_0.c, arg_0.c, global1.e), arg_3.a).x, ~arg_3.b.x), vec3<u32>(arg_3.a.b.e.x, ~(arg_1.b.a.a.c.x ^ _wgslsmith_clamp_u32(12604u, 33530u, global0[_wgslsmith_index_u32(29461u, 2u)])), 48327u));
    let var_2 = u_input.b.xw;
    global0 = array<u32, 2>();
    global1 = Struct_4(global1.a, abs(abs(arg_1.b.b)), -1297f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1034f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d))))), arg_0.a.b.a.x);
    return arg_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> i32 {
    let var_0 = Struct_3(479f, ~min(global1.a.a.c.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 2u)], 2u)]) == arg_2, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(279f, -1480f, false))))), _wgslsmith_f_op_f32(abs(-958f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) * arg_3.d), global1.c));
    global0 = array<u32, 2>();
    let var_1 = u_input.b.yz;
    var var_2 = var_0;
    var var_3 = false;
    return 7874i;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_2 {
    var var_0 = any(select(!vec3<bool>(true, global1.a.a.a.x, true), vec3<bool>(false, any(select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(false, true, true, global1.a.a.a.x), true)), !(!arg_3.b.a.a.a.x)), global1.e));
    var var_1 = _wgslsmith_div_vec2_u32(global1.a.b.e.wx, global1.a.a.e.yy);
    var_0 = select(false, arg_1.x, arg_3.b.e);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2101f + arg_3.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f * arg_2.a) - _wgslsmith_f_op_f32(min(arg_2.a, -1902f))))) - _wgslsmith_f_op_f32(-arg_3.b.d));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1729f, _wgslsmith_f_op_f32(-arg_2.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(139f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f), 404f))));
    return func_2(Struct_4(Struct_2(arg_3.b.a.a, Struct_1(arg_0.a.a, arg_3.b.a.a.e, vec2<u32>(u_input.a.x, global1.b.x), -35917i ^ global1.a.b.d, ~vec4<u32>(1u, arg_3.b.b.x, 0u, global1.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(26484i, 0i, -53339i), u_input.b.wxz)), abs(global1.b), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(abs(global1.d)), countOneBits(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-34035i, -5959i, arg_3.b.a.a.d, -14315i))) > -_wgslsmith_sub_i32(global1.a.b.d, -1i)), arg_3, false, func_2(func_2(func_2(func_2(Struct_4(arg_3.b.a, arg_3.b.b, -822f, 1043f, true), arg_3, arg_0.b.a.x, Struct_4(global1.a, vec4<u32>(global0[_wgslsmith_index_u32(arg_3.b.b.x, 2u)], arg_3.b.b.x, 70924u, 50126u), arg_3.b.d, var_2, false)), Struct_5(arg_2.c.zx, arg_3.b), all(vec2<bool>(true, arg_2.b)), arg_3.b), Struct_5(vec2<f32>(var_3.x, arg_2.a), arg_3.b), arg_0.a.a.x, Struct_4(func_2(Struct_4(Struct_2(Struct_1(global1.a.b.a, global1.a.a.e, vec2<u32>(arg_3.b.a.b.c.x, global1.b.x), -23664i, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 1u, 48080u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 2u)], 2u)])), global1.a.b, 1i), arg_0.b.e, arg_3.a.x, arg_2.c.x, true), arg_3, arg_1.x, arg_3.b).a, ~arg_3.b.b, global1.d, _wgslsmith_div_f32(-567f, -386f), var_1.x >= arg_3.b.b.x)), arg_3, true, arg_3.b)).a;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_5) -> bool {
    global0 = array<u32, 2>();
    var var_0 = 5285i;
    global1 = Struct_4(func_6(Struct_2(global1.a.b, arg_3.b.a.a, func_5(vec2<u32>(u_input.a.x, global1.a.b.c.x), _wgslsmith_f_op_f32(-arg_3.b.c), 1u << (0u % 32u), func_2(arg_3.b, Struct_5(arg_3.a, arg_3.b), arg_1, arg_3.b))), arg_3.b.a.b.a, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(ceil(-1454f))), all(!vec3<bool>(true, false, arg_3.b.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, -1968f, -950f, -888f)))), arg_3), reverseBits(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(global1.a.b.e.x, global0[_wgslsmith_index_u32(global1.b.x, 2u)]), arg_2.b.x & u_input.a.x), ~0u, global0[_wgslsmith_index_u32(reverseBits(arg_3.b.b.x), 2u)] << (_wgslsmith_dot_vec3_u32(arg_3.b.a.b.b.zyz, arg_2.b.wyy) % 32u), _wgslsmith_dot_vec4_u32(arg_3.b.b, vec4<u32>(32661u, 4294967295u, 22797u, arg_3.b.a.a.b.x)) ^ firstLeadingBit(4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1951f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_3.b.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, global1.d) - _wgslsmith_f_op_f32(-1478f * arg_3.a.x))), 406f), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.b.c, arg_3.a.x)))));
    let var_1 = !vec4<bool>(arg_3.b.d >= global1.c, arg_1 == true, true, arg_3.b.e);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1.d)), _wgslsmith_f_op_f32(-global1.c)))))), -1000f);
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-global1.a.c, u_input.b.x), 1i), -2147483647i) > 0i;
}

fn func_7(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_5(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-885f)), global1.c)), global1.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1096f + -1505f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1891f)))), func_2(Struct_4(global1.a, arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(934f))), -1000f, !all(vec4<bool>(false, true, false, arg_0.a.x))), Struct_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -446f) * vec2<f32>(global1.d, -1000f)))), func_2(Struct_4(Struct_2(arg_0, global1.a.b, global1.a.c), vec4<u32>(40462u, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], arg_0.b.x), 200f, 308f, arg_0.a.x), Struct_5(vec2<f32>(1038f, global1.c), Struct_4(global1.a, arg_0.e, 531f, global1.c, false)), true, func_2(Struct_4(global1.a, vec4<u32>(arg_0.c.x, 1u, u_input.a.x, 1u), -156f, -155f, global1.e), Struct_5(vec2<f32>(-1013f, global1.d), Struct_4(global1.a, arg_0.b, global1.d, global1.c, true)), global1.e, Struct_4(global1.a, global1.a.a.e, global1.d, global1.d, global1.a.a.a.x)))), !select(true, global1.c < global1.c, arg_0.a.x), func_2(Struct_4(func_6(Struct_2(Struct_1(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.b, global1.b.zw, 37638i, global1.b), global1.a.b, arg_0.d), vec2<bool>(global1.a.b.a.x, global1.e), Struct_3(-972f, arg_0.a.x, vec4<f32>(210f, 430f, -1000f, global1.d)), Struct_5(vec2<f32>(global1.c, -3010f), Struct_4(Struct_2(global1.a.b, arg_0, 17175i), vec4<u32>(arg_0.c.x, 1u, 66820u, 80227u), global1.d, global1.c, false))), ~global1.a.b.b, -230f, global1.d, true), Struct_5(vec2<f32>(537f, 2265f), Struct_4(Struct_2(Struct_1(vec2<bool>(arg_0.a.x, false), vec4<u32>(4294967295u, global1.a.a.b.x, 77068u, 4294967295u), u_input.a, 38239i, global1.a.b.e), Struct_1(global1.a.a.a, arg_0.b, vec2<u32>(global1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), 16447i, vec4<u32>(78958u, 58783u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 3853u)), 0i), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a.x), -1000f, global1.c, arg_0.a.x)), func_2(Struct_4(Struct_2(global1.a.a, global1.a.a, 11688i), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global1.a.b.e.x, global0[_wgslsmith_index_u32(global1.b.x, 2u)]), -929f, 142f, arg_0.a.x), Struct_5(vec2<f32>(global1.d, global1.c), Struct_4(Struct_2(Struct_1(global1.a.b.a, vec4<u32>(0u, arg_0.b.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec2<u32>(17795u, 22276u), u_input.b.x, vec4<u32>(51889u, arg_0.b.x, global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], arg_0.e.x)), Struct_1(vec2<bool>(arg_0.a.x, global1.a.a.a.x), vec4<u32>(u_input.a.x, 86574u, 19604u, global1.a.b.c.x), global1.b.yz, arg_0.d, vec4<u32>(1u, 1u, 66497u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)])), u_input.b.x), vec4<u32>(0u, arg_0.b.x, arg_0.e.x, global0[_wgslsmith_index_u32(global1.b.x, 2u)]), 988f, 1608f, global1.a.a.a.x)), true, Struct_4(Struct_2(Struct_1(arg_0.a, vec4<u32>(arg_0.e.x, 56124u, 4294967295u, 47090u), vec2<u32>(global0[_wgslsmith_index_u32(44859u, 2u)], 1u), 1i, global1.a.a.b), Struct_1(vec2<bool>(false, arg_0.a.x), global1.a.b.e, vec2<u32>(18629u, global1.b.x), -28697i, global1.a.a.b), u_input.b.x), global1.b, global1.d, global1.c, global1.a.b.a.x)).a.b.a.x, Struct_4(func_2(Struct_4(Struct_2(Struct_1(vec2<bool>(global1.a.a.a.x, false), vec4<u32>(arg_0.c.x, 1u, global1.b.x, global1.a.b.c.x), u_input.a, -1i, vec4<u32>(arg_0.b.x, u_input.a.x, 1713u, 24687u)), Struct_1(vec2<bool>(false, arg_0.a.x), vec4<u32>(25817u, 0u, arg_0.b.x, global0[_wgslsmith_index_u32(23892u, 2u)]), vec2<u32>(global0[_wgslsmith_index_u32(43193u, 2u)], global1.b.x), -2147483647i, arg_0.e), arg_0.d), global1.b, global1.c, global1.c, global1.e), Struct_5(vec2<f32>(940f, global1.c), Struct_4(global1.a, arg_0.e, 550f, global1.c, arg_0.a.x)), false, Struct_4(global1.a, vec4<u32>(arg_0.b.x, arg_0.b.x, 1u, arg_0.b.x), global1.c, global1.d, global1.e)).a, vec4<u32>(4294967295u, arg_0.b.x, 29186u, u_input.a.x), global1.c, _wgslsmith_f_op_f32(sign(1237f)), arg_0.a.x))));
    global0 = array<u32, 2>();
    global1 = var_0.b;
    var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))), Struct_4(func_6(Struct_2(global1.a.a, global1.a.a, firstTrailingBit(var_0.b.a.c)), vec2<bool>(var_0.b.e | var_0.b.a.b.a.x, arg_0.a.x), Struct_3(_wgslsmith_f_op_f32(-var_0.a.x), var_0.b.a.b.a.x, vec4<f32>(var_0.b.c, global1.d, -525f, -244f)), Struct_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.x, -868f), var_0.a)), Struct_4(Struct_2(global1.a.b, var_0.b.a.b, 25058i), vec4<u32>(1u, global0[_wgslsmith_index_u32(global1.b.x, 2u)], 0u, 4294967295u), -895f, var_0.b.d, global1.a.a.a.x))), vec4<u32>(_wgslsmith_mod_u32(0u, 47319u), _wgslsmith_mod_u32(arg_0.c.x, arg_0.b.x), func_6(var_0.b.a, arg_0.a, Struct_3(var_0.a.x, var_0.b.a.a.a.x, vec4<f32>(-1184f, global1.c, -394f, var_0.b.c)), Struct_5(vec2<f32>(-764f, global1.c), Struct_4(global1.a, arg_0.e, 137f, var_0.b.c, true))).a.e.x, 0u) << (global1.b % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-691f + _wgslsmith_f_op_f32(select(-2401f, var_0.b.c, true))), 950f), global1.d, all(!(!arg_0.a))));
    global1 = Struct_4(func_6(Struct_2(global1.a.b, Struct_1(!arg_0.a, arg_0.e, vec2<u32>(8879u, global1.b.x), 12550i, global1.b & vec4<u32>(u_input.a.x, 18569u, global0[_wgslsmith_index_u32(global1.b.x, 2u)], 62318u)), -(~4541i)), vec2<bool>(global1.e, true), Struct_3(_wgslsmith_f_op_f32(floor(global1.c)), true || any(vec3<bool>(arg_0.a.x, arg_0.a.x, var_0.b.a.b.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(529f, global1.c, var_0.a.x, var_0.b.c), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1376f, 1846f, -974f, var_0.a.x), vec4<f32>(-1290f, -1268f, global1.d, -1669f))))), Struct_5(var_0.a, var_0.b)), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), global1.d, var_0.a.x, global1.e);
    return StorageBuffer(global1.a.b.e.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(reverseBits(var_0.b.b.x), 2u)], ~global1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(vec4<bool>((false & global1.a.a.a.x) || true, all(select(vec3<bool>(global1.a.b.a.x, global1.e, false), vec3<bool>(global1.e, false, global1.e), vec3<bool>(global1.e, global1.e, global1.a.b.a.x))), any(global1.a.a.a), all(!global1.a.b.a))), global1.a.a.d <= ~(global1.a.a.d ^ ~global1.a.a.d), global1.a.a.a.x, true);
    let var_1 = global1.a;
    let var_2 = 1u;
    let var_3 = all(var_0.ww);
    let x = u_input.a;
    s_output = func_7(Struct_1(select(!select(vec2<bool>(false, var_3), vec2<bool>(var_3, false), vec2<bool>(var_1.a.a.x, var_3)), vec2<bool>(func_1(global1.d, true, Struct_1(global1.a.b.a, vec4<u32>(0u, global1.a.a.b.x, 1u, 4294967295u), vec2<u32>(var_1.b.b.x, 0u), u_input.b.x, vec4<u32>(0u, 0u, u_input.a.x, 40497u)), Struct_5(vec2<f32>(global1.d, global1.d), Struct_4(Struct_2(global1.a.b, Struct_1(var_0.wy, vec4<u32>(1u, 0u, var_2, 698u), global1.b.xw, 0i, var_1.b.e), u_input.b.x), vec4<u32>(global0[_wgslsmith_index_u32(63395u, 2u)], global0[_wgslsmith_index_u32(var_2, 2u)], 14231u, global1.b.x), global1.c, -1290f, true))), all(var_0.xw)), select(global1.a.b.a, vec2<bool>(true, true), !var_0.x)), global1.a.a.e, select(vec2<u32>(firstLeadingBit(var_2), 1u), ~vec2<u32>(1u, 4294967295u), vec2<bool>(all(var_0.wyz), false)), -1i, ~global1.b));
}

