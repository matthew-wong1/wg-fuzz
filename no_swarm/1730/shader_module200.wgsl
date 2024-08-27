struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<Struct_5, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> vec2<u32> {
    var var_0 = arg_2;
    var var_1 = ~u_input.c;
    var var_2 = ~vec3<u32>(43705u, 5274u, 77317u);
    let var_3 = false;
    global0 = array<Struct_1, 2>();
    return ~((abs(vec2<u32>(arg_1.a.b.a.x, arg_0.b.a.x)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_1.a.a.x), ~vec2<u32>(arg_0.a.x, 31241u)) % vec2<u32>(32u))) | vec2<u32>(max(arg_0.b.a.x, arg_0.a.x) | ~4294967295u, ~reverseBits(var_2.x)));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = Struct_4(Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(70878u, u_input.c), func_3(Struct_2(u_input.a.yz, Struct_1(vec3<u32>(4294967295u, u_input.c, u_input.c), vec4<f32>(arg_1, arg_1, 919f, arg_1), u_input.b), u_input.d), Struct_4(Struct_2(vec2<u32>(2513u, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 2u)], vec3<i32>(u_input.e.x, u_input.d.x, u_input.d.x)), u_input.b.x), true)), u_input.a.zx), global0[_wgslsmith_index_u32(~(firstLeadingBit(25535u) | _wgslsmith_add_u32(u_input.c, 82756u)), 2u)], u_input.b.wyy), -2147483647i);
    var var_2 = _wgslsmith_clamp_i32(firstTrailingBit(37345i), -(~_wgslsmith_clamp_i32(-u_input.b.x, -2147483647i, -1i)), -1i);
    global0 = array<Struct_1, 2>();
    global1 = array<Struct_5, 11>();
    return select(select(select(!(!vec4<bool>(arg_0, var_0, arg_0, true)), select(select(vec4<bool>(var_0, true, false, arg_0), vec4<bool>(arg_0, var_0, var_0, true), vec4<bool>(true, true, false, arg_0)), vec4<bool>(arg_0, var_0, true, arg_0), any(vec4<bool>(false, true, false, arg_0))), vec4<bool>(false, true, arg_0 && true, -531f < arg_1)), vec4<bool>(all(vec3<bool>(arg_0, arg_0, arg_0)), all(select(vec3<bool>(arg_0, false, var_0), vec3<bool>(var_0, arg_0, arg_0), true)), !(!arg_0), !(u_input.c < 0u)), select(!(!vec4<bool>(var_0, true, false, false)), vec4<bool>(all(vec4<bool>(true, var_0, true, arg_0)), true & arg_0, var_1.a.b.c.x <= -5923i, any(vec3<bool>(var_0, false, true))), vec4<bool>(!var_0, any(vec4<bool>(arg_0, true, var_0, var_0)), all(vec4<bool>(var_0, arg_0, false, arg_0)), any(vec3<bool>(true, arg_0, false))))), vec4<bool>(true, any(select(select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, false), false), vec3<bool>(false, arg_0, true), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, false, false), vec3<bool>(arg_0, true, arg_0)))), var_0 && true, var_0), false);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> vec4<bool> {
    global0 = array<Struct_1, 2>();
    return func_2(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(-370f)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_3 {
    var var_0 = vec2<i32>(u_input.e.x, u_input.e.x);
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-abs(25839i), i32(-1i) * -1i), max(21759i, _wgslsmith_dot_vec3_i32(vec3<i32>(select(arg_1.c.c.x, var_0.x, arg_0.x), var_0.x, _wgslsmith_div_i32(-1i, 43203i)), vec3<i32>(countOneBits(0i), arg_1.c.c.x, ~arg_1.c.c.x))), _wgslsmith_sub_i32(-1i, firstTrailingBit(u_input.b.x)));
    let var_2 = ~min(~66699u, 44216u);
    var_0 = _wgslsmith_sub_vec2_i32(arg_1.c.c.zy >> (vec2<u32>(107454u, ~(~var_2)) % vec2<u32>(32u)), vec2<i32>(u_input.d.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(select(-2147483647i, arg_1.c.c.x, false), -4030i, var_0.x | 13617i), 40994i)));
    var_1 = _wgslsmith_div_i32(u_input.e.x, _wgslsmith_mult_i32(40812i, _wgslsmith_mod_i32(max(-u_input.b.x, var_0.x), ~(-u_input.b.x))));
    return Struct_3(var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-719f, arg_1.c.b.x)) - vec2<f32>(-418f, arg_1.b.b.x)), arg_1.c.b.ww, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-1i, u_input.b.x);
    global1 = array<Struct_5, 11>();
    var var_1 = var_0.x;
    global0 = array<Struct_1, 2>();
    let var_2 = func_4(func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-972f, 1610f)), -2739f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -690f), -387f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) * 1578f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f + -507f))), countOneBits(u_input.c)), global1[_wgslsmith_index_u32(4294967295u, 11u)]);
    global0 = array<Struct_1, 2>();
    let var_3 = func_4(!func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(-var_2.b.x))), Struct_5(any(func_2(true, -172f).xy), Struct_3(~1u, func_4(func_2(true, -299f), Struct_5(true, Struct_3(7412u, var_2.b), global0[_wgslsmith_index_u32(115456u, 2u)], 1u)).b), global0[_wgslsmith_index_u32(abs(1u), 2u)], u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b.x) << (u_input.a.x % 32u), u_input.b, 20320u);
}

