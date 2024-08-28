struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(528f, 329f, 262f, -125f, 1004f, -1000f, 366f, 263f, 1000f, -853f, -961f, -251f);

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 9>;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 0u, 4294967295u, 76729u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global4 = ~(vec4<u32>(u_input.c.x, global4.x, firstTrailingBit(u_input.c.x ^ 4294967295u), 4294967295u) >> (~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 46583u, 15599u, u_input.c.x), reverseBits(vec4<u32>(global4.x, u_input.b, u_input.c.x, 43506u))) % vec4<u32>(32u)));
    global0 = array<f32, 12>();
    let var_0 = ~(~min(global4.zz, _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.c.yy), ~global4.yx)));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-135f + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(global4.x, 12u)])))))));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> i32 {
    var var_0 = Struct_2(max(-vec4<i32>(-2147483647i, 3872i, ~(-26233i), ~38920i), vec4<i32>(-1i, firstLeadingBit(arg_1 >> (1u % 32u)), min(~arg_1, arg_1), -arg_1)), Struct_1(vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(u_input.c, select(vec3<u32>(global4.x, global4.x, u_input.b), u_input.c, arg_0.x))), firstTrailingBit(u_input.a.x | -u_input.a.x), all(vec2<bool>(false, false)) && true));
    var var_1 = global4.yxw;
    global1 = true;
    let var_2 = Struct_5(arg_0, var_0.a.yw);
    var var_3 = var_0.b;
    return _wgslsmith_mod_i32(arg_1, _wgslsmith_add_i32(1i, abs(func_3())));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1596f + global0[_wgslsmith_index_u32(64606u, 12u)]), global0[_wgslsmith_index_u32(0u, 12u)]))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_2.b.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)]))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 12u)] - -3399f))))));
    let var_1 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_div_i32(arg_1, i32(-1i) * -1i), -(~u_input.d.x), _wgslsmith_div_i32(arg_1, -10005i) >> (~47518u % 32u)), vec3<i32>(~(arg_1 & _wgslsmith_div_i32(65544i, 2147483647i)), -arg_2.b.b, _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 34381i, arg_0), u_input.a)), _wgslsmith_dot_vec4_i32(arg_2.a, abs(arg_2.a)), _wgslsmith_div_i32(i32(-1i) * -45776i, _wgslsmith_dot_vec2_i32(arg_2.a.zy, u_input.d)))), vec3<i32>(func_2(select(vec2<bool>(arg_2.b.c, true), !vec2<bool>(arg_2.b.c, true), select(global3[_wgslsmith_index_u32(u_input.b, 9u)], global3[_wgslsmith_index_u32(u_input.c.x, 9u)], global3[_wgslsmith_index_u32(9914u, 9u)])), ~(~0i)), _wgslsmith_mult_i32(arg_0 << (global4.x % 32u), ~min(arg_0, -14905i)), arg_0 << (~u_input.b % 32u)));
    var var_2 = Struct_3(var_1.x, select(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c | u_input.c, u_input.c), 9u)], global3[_wgslsmith_index_u32(abs(~(~arg_2.b.a.x)), 9u)], arg_2.b.a.x > firstLeadingBit(max(43019u, 40990u))));
    global1 = !(!arg_2.b.c);
    global4 = firstLeadingBit(~(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(global4.x, 46219u, global4.x, u_input.b), vec4<u32>(68803u, 4294967295u, 10642u, 14165u)))));
    return vec3<bool>(false, any(!(!select(vec3<bool>(true, var_2.b.x, arg_2.b.c), vec3<bool>(var_2.b.x, arg_2.b.c, true), var_2.b.x))), true);
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = select(select(vec3<bool>(true, true | (global0[_wgslsmith_index_u32(0u, 12u)] == global0[_wgslsmith_index_u32(u_input.b, 12u)]), any(vec2<bool>(true, true))), vec3<bool>(all(select(global3[_wgslsmith_index_u32(51307u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(u_input.c.x, 9u)])), true, true), !any(select(global3[_wgslsmith_index_u32(6143u, 9u)], vec2<bool>(false, true), true))), func_4(1i << (u_input.c.x % 32u), func_2(global3[_wgslsmith_index_u32(~global4.x, 9u)], -_wgslsmith_mod_i32(-1i, u_input.a.x)), Struct_2(-abs(vec4<i32>(u_input.a.x, -2147483647i, u_input.d.x, 2147483647i)), Struct_1(firstTrailingBit(u_input.c.yx), u_input.d.x, true))), u_input.c.x == global4.x);
    var var_1 = Struct_5(vec2<bool>(var_0.x, all(vec2<bool>(true, true))), min(-select(-vec2<i32>(u_input.d.x, u_input.d.x), _wgslsmith_add_vec2_i32(u_input.d, u_input.d), false), vec2<i32>(u_input.a.x, -2147483647i)));
    var var_2 = vec3<bool>(false, true, true);
    let var_3 = reverseBits(global4.x);
    return Struct_3(u_input.a.x, func_4(~u_input.a.x, _wgslsmith_sub_i32(abs(i32(-1i) * -1i), 25181i), Struct_2(~vec4<i32>(u_input.d.x, var_1.b.x, 0i, -2147483647i) >> (vec4<u32>(var_3, 44202u, var_3, 75569u) % vec4<u32>(32u)), Struct_1(u_input.c.zx, 2147483647i, global0[_wgslsmith_index_u32(1u, 12u)] >= global0[_wgslsmith_index_u32(4294967295u, 12u)]))).xx);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(arg_2, 12u)];
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 12u)]), -1524f));
    var_2 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(48420u, 12u)], _wgslsmith_f_op_f32(678f + _wgslsmith_f_op_f32(step(1f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x | global4.x, firstLeadingBit(47213u)), 12u)]))));
    global4 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2, global4.x, u_input.c.x, u_input.b) | vec4<u32>(u_input.c.x, global4.x, arg_2, u_input.c.x), ~vec4<u32>(0u, arg_2, arg_2, u_input.c.x), vec4<bool>(false, true, arg_0, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 4294967295u, global4.x, arg_2), max(vec4<u32>(arg_2, 61489u, arg_2, arg_2), vec4<u32>(13561u, arg_2, 53830u, global4.x)))), global4.x, arg_2, arg_2);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_5(!select(true, ~global4.x <= firstTrailingBit(global4.x), any(vec2<bool>(true, var_0)) && false), func_1(global4.wzy), _wgslsmith_div_u32(global4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 0u, 30241u, global4.x), vec4<u32>(1u, 115844u, global4.x, 7183u) << (vec4<u32>(global4.x, 33648u, global4.x, 2885u) % vec4<u32>(32u))) | 4294967295u), firstTrailingBit(-vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -56973i), u_input.a.x, 0i >> (global4.x % 32u), firstLeadingBit(-2147483647i))));
    let var_2 = _wgslsmith_div_i32(u_input.a.x, -48306i);
    let var_3 = func_1(u_input.c);
    global0 = array<f32, 12>();
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f))), abs(vec3<u32>(_wgslsmith_add_u32(global4.x, u_input.b) ^ 27729u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 1u) ^ 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, 3291u, global4.x), vec4<u32>(global4.x, u_input.c.x, 4338u, 12383u)), vec4<u32>(13989u, 0u, 87038u, 8412u)))), ~(~(~(global4.x | u_input.b))));
}

