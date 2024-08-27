struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 27> = array<bool, 27>(false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, true, false, true, false, true);

var<private> global2: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    return global2.b.c;
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> i32 {
    var var_0 = arg_0.d;
    let var_1 = ~global2.b.c.b.zy;
    let var_2 = arg_0.a.yz;
    global0 = arg_0.d;
    global1 = array<bool, 27>();
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.c.a, arg_0.b, -17850i, u_input.a) ^ vec4<i32>(1i, 37343i, arg_0.b, global2.c.c.a), ~(vec4<i32>(var_2.x, 15393i, global2.c.c.a, -2147483647i) | vec4<i32>(u_input.a, -1i, -1i, var_2.x))), -640i) ^ (_wgslsmith_sub_i32(~var_2.x, -global2.b.c.a) >> (~arg_1 % 32u));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(-2023i, !global1[_wgslsmith_index_u32(~76434u, 27u)], _wgslsmith_div_vec4_f32(vec4<f32>(-1167f, global2.c.a.x, _wgslsmith_f_op_f32(-2133f + global2.b.a.x), -777f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1112f, -746f, -437f, _wgslsmith_f_op_f32(-global2.b.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global2.c.b, vec4<f32>(global2.c.a.x, -988f, -225f, 1320f))) - global2.b.b), true))));
    var var_1 = Struct_3(vec3<i32>(1i, var_0.a, ~(u_input.a ^ func_3(Struct_3(vec3<i32>(global2.c.c.a, var_0.a, global2.b.c.a), global2.c.c.a, var_0.b.x, false), 4294967295u))), _wgslsmith_mod_i32(var_0.a, 1i), u_input.b.x, all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(72294u, 27u)] || true)));
    global0 = var_1.d;
    let var_2 = Struct_2(global2.b.b.wz, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b.x)), global2.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b.x) * global2.c.a.x), global2.c.b.x), func_2(0i, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~countOneBits(u_input.b.x)), 27u)], global2.c.b));
    global2 = Struct_4(var_1.c, Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(279f, -362f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global2.c.b))), func_2(-4783i, any(vec3<bool>(var_1.d, true, var_1.d)) && !global1[_wgslsmith_index_u32(var_2.c.b.x, 27u)], _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b.x, var_2.a.x, var_2.b.x, 451f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.c.b.x, global2.b.a.x, 1091f)))))), Struct_2(global2.b.b.xw, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, 676f, -1250f, 105f), var_2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1181f, -535f, global2.c.b.x, var_2.b.x) - global2.b.b))))), Struct_1(-69056i, var_2.c.b)));
    return global2.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global1 = array<bool, 27>();
    var var_0 = arg_1.b.x;
    let var_1 = global2.c.a.x;
    let var_2 = Struct_3(countOneBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(24957i, arg_3.c.a, global2.c.c.a), ~vec3<i32>(-32943i, 27352i, u_input.a))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(abs(global2.c.c.b.x), select(0u, global2.c.c.b.x, arg_0), ~arg_1.c.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 24198u, u_input.b.x), vec3<u32>(u_input.b.x, arg_3.c.b.x, arg_3.c.b.x))) % vec3<u32>(32u)), arg_3.c.a, arg_1.c.b.x & _wgslsmith_dot_vec3_u32(arg_1.c.b.zxy, _wgslsmith_div_vec3_u32(arg_1.c.b.yzy & vec3<u32>(global2.c.c.b.x, u_input.b.x, arg_3.c.b.x), vec3<u32>(arg_3.c.b.x, 81178u, 15406u) >> (arg_1.c.b.zww % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)) >= _wgslsmith_f_op_f32(global2.b.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) - _wgslsmith_f_op_f32(-arg_1.a.x))));
    let var_3 = arg_3;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(4294967295u, Struct_2(global2.c.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.b.a.x + -967f), _wgslsmith_f_op_f32(f32(-1f) * -1977f), global2.b.a.x, _wgslsmith_f_op_f32(2728f * global2.c.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, global2.b.a.x, -787f, global2.c.b.x)))), global2.c.c), func_4(true, func_1(), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 27u)] && any(vec4<bool>(true, true, true, true)), func_1()));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(func_1().b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global2.c.b * vec4<f32>(-1793f, global2.b.a.x, -1729f, 2164f)), vec4<f32>(global2.c.a.x, var_0.c.b.x, global2.b.b.x, global2.c.a.x)))) * global2.c.b)));
    let var_2 = Struct_3(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a) & vec3<i32>(u_input.a, 0i, -2147483647i), -vec3<i32>(u_input.a, var_0.b.c.a, var_0.b.c.a)), _wgslsmith_add_vec3_i32(max(vec3<i32>(2147483647i, 2413i, global2.b.c.a), vec3<i32>(-2147483647i, 1i, 0i)), vec3<i32>(-2416i, 1708i, global2.c.c.a)), _wgslsmith_add_vec3_i32(min(vec3<i32>(global2.b.c.a, 2976i, 1i), vec3<i32>(2147483647i, var_0.c.c.a, -42476i)), vec3<i32>(var_0.c.c.a, u_input.a, 5102i))), 0i, ~abs(0u), any(vec3<bool>(abs(var_0.c.c.a) < u_input.a, global1[_wgslsmith_index_u32(~54769u, 27u)], select(all(vec4<bool>(false, false, false, false)), var_0.c.a.x <= 307f, global1[_wgslsmith_index_u32(4403u, 27u)]))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), global2.b.a.x, -215f, global2.b.b.x));
    var var_3 = 0i;
    let var_4 = select(global2.b.c.b.xz, func_2(0i, true, var_0.c.b).b.wx, !global1[_wgslsmith_index_u32(46277u, 27u)]);
    global0 = u_input.a < ~reverseBits(func_1().c.a);
    let var_5 = ~vec4<i32>(reverseBits(-1i), var_0.c.c.a ^ -1i, abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(43688i, 2147483647i, -1i, 0i)), vec4<i32>(var_0.c.c.a, var_0.c.c.a, var_2.a.x, var_2.b) & vec4<i32>(u_input.a, var_2.a.x, var_2.a.x, 1i))), 2147483647i);
    var_0 = Struct_4(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(var_4.x, 0u), var_4) << (min(vec2<u32>(var_0.c.c.b.x, var_4.x), ~vec2<u32>(var_0.a, 26050u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(~1u, ~var_2.c), var_2.c)), func_4(global1[_wgslsmith_index_u32(func_1().c.b.x >> (~43864u % 32u), 27u)], Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.b.zw, vec2<f32>(var_1.x, var_0.b.b.x))), _wgslsmith_f_op_vec4_f32(func_1().b + global2.c.b), Struct_1(-3020i, ~u_input.b)), false | var_2.d, func_4(all(vec4<bool>(false, false, true, false)), global2.b, false, global2.c)), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_5), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-382f)) + var_0.c.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1358f, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_0.b.a.x)), -2320f, var_1.x)));
}

