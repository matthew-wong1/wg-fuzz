struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 2067f;

var<private> global2: f32;

var<private> global3: array<Struct_4, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), -924f);
    global2 = global0.a.a.x;
    var_0 = arg_0.a.x;
    var var_1 = !(!any(select(!vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, global0.b, true), any(vec3<bool>(true, global0.b, global0.b)))));
    var var_2 = Struct_4(Struct_3(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, arg_0.c, arg_0.c, 1u), vec4<u32>(arg_0.b.x, u_input.b, u_input.b, 45697u)) & vec4<u32>(_wgslsmith_div_u32(8448u, u_input.b), global0.c.b.x, reverseBits(u_input.d.x), 2479u), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(global0.a.c, arg_0.b.x)), firstLeadingBit(vec2<u32>(global0.a.b.x, 5955u)))), global0.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(step(-630f, _wgslsmith_f_op_f32(global0.c.a.x + global0.c.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a.x - 469f), global0.c.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-630f, -1193f)), arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -390f, global0.c.a.x, global0.c.a.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, 820f, 597f, arg_0.a.x) + vec4<f32>(global0.a.a.x, global0.a.a.x, 297f, global0.a.a.x)))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> u32 {
    var var_0 = i32(-1i) * -72053i;
    var var_1 = Struct_2(arg_0.c, any(!select(!vec4<bool>(arg_0.b, false, false, false), !vec4<bool>(false, global0.b, true, arg_0.b), false)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.x), global0.c.a.x, 1000f, -1072f), arg_0.c.b, ~(~arg_3.a.x)));
    let var_2 = select(select(vec2<bool>(true, true), select(vec2<bool>(!arg_0.b, false), vec2<bool>(!global0.b, true == arg_0.b), select(vec2<bool>(arg_0.b, global0.b), !vec2<bool>(false, global0.b), select(vec2<bool>(arg_0.b, var_1.b), vec2<bool>(true, true), vec2<bool>(true, false)))), !select(!vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, true), true)), !select(vec2<bool>(!global0.b, true), vec2<bool>(true, 308f <= arg_0.c.a.x), true), arg_0.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.a.x - 923f))))));
    var var_4 = !(!((global0.a.b.x << (88929u % 32u)) <= var_1.a.b.x)) == false;
    return ~(global0.a.b.x ^ ~var_1.c.b.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_3(vec4<u32>(u_input.c, 0u, global0.c.b.x, ~54175u) >> (~max(vec4<u32>(8839u, global0.c.c, u_input.d.x, global0.a.c), u_input.d) % vec4<u32>(32u)), vec2<u32>(func_3(Struct_2(global0.a, true, Struct_1(global0.a.a, vec3<u32>(u_input.c, 32785u, u_input.c), u_input.c)), -_wgslsmith_sub_i32(-61352i, 13835i), _wgslsmith_sub_i32(~arg_0.x, arg_0.x), Struct_3(~u_input.d, ~global0.c.b.xz)), ~(~(~60853u))));
    let var_1 = vec2<bool>(!any(vec4<bool>(global0.b, arg_1.x && arg_1.x, false, -290f >= global0.c.a.x)), global0.b);
    let var_2 = arg_1.x;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(400f - _wgslsmith_f_op_vec4_f32(func_1(Struct_1(global0.a.a, global0.c.b, 18659u), -1i)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -492f) * -160f))))));
    let var_4 = select(var_1, arg_1, any(!select(select(vec3<bool>(false, global0.b, false), vec3<bool>(false, var_2, arg_1.x), global0.b), vec3<bool>(false, false, arg_1.x), !vec3<bool>(global0.b, true, true))));
    return vec2<bool>(true, any(vec2<bool>(!global0.b, all(vec3<bool>(true, false, var_1.x)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_2 {
    global1 = -1067f;
    let var_0 = !global0.b;
    let var_1 = u_input.e;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, -217f, -415f, global0.a.a.x) - vec4<f32>(-2388f, _wgslsmith_f_op_f32(f32(-1f) * -847f), -122f, _wgslsmith_f_op_f32(f32(-1f) * -738f))), global0.a.b, 74143u), true & !all(vec4<bool>(false, true, global0.b, false)), global0.c);
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = !select(!vec4<bool>(-1i >= u_input.a, arg_0.b, u_input.a >= -6740i, true), select(vec4<bool>(!global0.b, arg_0.c.a.x <= global0.a.a.x, any(vec4<bool>(arg_0.b, global0.b, arg_0.b, arg_0.b)), !global0.b), select(!vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), !vec4<bool>(true, false, false, global0.b), true), global0.b), !vec4<bool>(all(vec4<bool>(arg_0.b, arg_0.b, global0.b, false)), u_input.a < u_input.e, any(vec3<bool>(false, arg_0.b, false)), global0.b));
    global2 = -1749f;
    global1 = arg_0.a.a.x;
    var_0 = vec4<bool>(!(!(var_0.x || arg_0.b)), !(_wgslsmith_add_i32(u_input.a, u_input.e) >= -_wgslsmith_div_i32(1i, u_input.e)), !(!(1384f <= arg_0.a.a.x)), arg_0.b | var_0.x);
    global2 = _wgslsmith_f_op_f32(trunc(-2274f));
    return 25303u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.a.yww;
    let var_1 = _wgslsmith_dot_vec2_i32(-(max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, 0i), vec2<i32>(-2147483647i, u_input.e)), -vec2<i32>(2147483647i, 5815i)) << (vec2<u32>(30569u, reverseBits(0u)) % vec2<u32>(32u))), max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, 42162i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.e), vec2<i32>(-1i, 2147483647i)), _wgslsmith_div_i32(-1i, u_input.a))), vec2<i32>(u_input.e, _wgslsmith_sub_i32(abs(-47729i), abs(-20635i)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_1(global0.c, ~(var_1 << (min(global0.a.c | 0u, ~89220u) % 32u))));
    var var_3 = 1168f;
    let var_4 = global3[_wgslsmith_index_u32(reverseBits(func_5(func_4(select(select(vec2<bool>(true, global0.b), vec2<bool>(true, global0.b), vec2<bool>(global0.b, global0.b)), func_2(vec4<i32>(u_input.e, u_input.e, u_input.a, -37307i), vec2<bool>(false, global0.b)), true), vec2<i32>(-13754i, var_1)))), 3u)];
    let var_5 = Struct_2(func_4(func_2((vec4<i32>(var_1, 11020i, -1i, var_1) ^ vec4<i32>(-8592i, var_1, 2147483647i, u_input.e)) & reverseBits(vec4<i32>(u_input.a, -2147483647i, 39824i, u_input.a)), select(vec2<bool>(false, false), vec2<bool>(var_4.b, global0.b), var_4.b)), vec2<i32>(countOneBits(59345i), -1i)).a, _wgslsmith_f_op_f32(-func_4(vec2<bool>(global0.b, true), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -58278i), vec2<i32>(-7003i, var_1))).c.a.x) > -1969f, func_4(!(!select(vec2<bool>(false, false), vec2<bool>(global0.b, var_4.b), var_4.b)), vec2<i32>(select(_wgslsmith_add_i32(var_1, var_1), ~(-5280i), true), 0i)).a);
    let var_6 = func_4(select(vec2<bool>(var_5.b, true), !vec2<bool>(true, all(vec4<bool>(true, global0.b, var_5.b, global0.b))), !all(vec3<bool>(false, global0.b, global0.b))), -vec2<i32>(abs(-9230i), countOneBits(_wgslsmith_mult_i32(u_input.a, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(40988u);
}

