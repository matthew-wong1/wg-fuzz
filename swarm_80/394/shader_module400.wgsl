struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(45871u, 33523u), vec2<u32>(590u, 82168u), vec2<u32>(1u, 26628u), vec2<u32>(26281u, 4294967295u), vec2<u32>(17114u, 4294967295u), vec2<u32>(4294967295u, 70036u), vec2<u32>(5329u, 1u), vec2<u32>(65321u, 46189u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(10254u, 0u), vec2<u32>(35599u, 41578u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(38861u, 91172u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(46764u, 58867u), vec2<u32>(11014u, 1u), vec2<u32>(61117u, 73285u), vec2<u32>(1u, 17447u), vec2<u32>(0u, 0u), vec2<u32>(1u, 76360u), vec2<u32>(0u, 62478u), vec2<u32>(25512u, 10736u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 5403u), vec2<u32>(0u, 11375u), vec2<u32>(4294967295u, 96771u), vec2<u32>(4294967295u, 62043u));

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> vec3<i32> {
    var var_0 = u_input.a << (26411u % 32u);
    return select(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 2147483647i, 26453i), -(~vec3<i32>(arg_0, arg_0, -13352i))), firstLeadingBit(select(_wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0, 0i), vec3<i32>(arg_0, arg_0, arg_0)), -vec3<i32>(-1i, arg_0, arg_0), true)), vec3<bool>(true, _wgslsmith_mod_i32(arg_0, arg_0) == -2147483647i, true)) << (global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(43477u ^ u_input.b, u_input.a | 4294967295u) >> (_wgslsmith_clamp_u32(u_input.a, ~_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_div_u32(3593u, u_input.a)) % 32u), 14u)] % vec3<u32>(32u));
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = select(vec4<bool>(!(!arg_0.a.x) & any(vec3<bool>(arg_0.a.x, true, arg_0.a.x)), any(arg_0.a.zy) && arg_0.a.x, arg_0.a.x, true != all(vec4<bool>(true, false, false, arg_0.a.x))), select(select(select(select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_0.a.x, false, arg_0.a.x)), vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), false), vec4<bool>(!arg_0.a.x, any(vec4<bool>(false, true, false, true)), all(vec2<bool>(arg_0.a.x, arg_0.a.x)), select(false, arg_0.a.x, true)), !(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, true))), select(select(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), !vec4<bool>(true, arg_0.a.x, false, arg_0.a.x)), select(vec4<bool>(false, arg_0.a.x, false, arg_0.a.x), !vec4<bool>(arg_0.a.x, false, false, true), any(vec2<bool>(true, arg_0.a.x))), true), vec4<bool>(false, !arg_0.a.x, false, false)), vec4<bool>(true, any(arg_0.a.yy) || false, !(!(!arg_0.a.x)), true));
    var_0 = vec4<bool>(arg_0.a.x, arg_0.a.x, (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), func_2(-109460i)) << (9994u % 32u)) == abs(_wgslsmith_div_i32(i32(-1i) * -74742i, 1i)), !arg_0.a.x);
    var var_1 = var_0.wxy;
    var var_2 = !arg_0.a;
    var var_3 = Struct_2(vec3<bool>(any(vec3<bool>(true, var_0.x, var_2.x)), var_2.x, true));
    return ~(~(~vec2<i32>(1i, 19399i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = Struct_2(vec3<bool>(arg_0.a.x, !any(select(arg_0.a, vec3<bool>(arg_0.a.x, true, arg_0.a.x), arg_0.a)), (_wgslsmith_sub_i32(0i, 2147483647i) >> ((u_input.b ^ u_input.a) % 32u)) > max(reverseBits(-1i), i32(-1i) * -1628i)));
    global2 = array<Struct_2, 1>();
    let var_1 = true;
    let var_2 = func_2(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -1i, 0i, -35328i), -vec4<i32>(-51378i, -2147483647i, 1i, -1i)), -41664i, 0i)).xy;
    let var_3 = global3[_wgslsmith_index_u32(15091u, 15u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 32>();
    global0 = array<vec3<u32>, 14>();
    let var_0 = Struct_1(~(func_1(Struct_2(vec3<bool>(true, true, true))) | firstLeadingBit(vec2<i32>(0i, 10230i))) >> (min(vec2<u32>(_wgslsmith_mult_u32(2853u, 3395u), 61420u), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1494f, _wgslsmith_f_op_f32(1192f - _wgslsmith_div_f32(162f, -463f)), 626f, _wgslsmith_f_op_f32(min(-580f, _wgslsmith_f_op_f32(floor(319f)))))), u_input.a, !func_3(Struct_2(vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(365f)) - _wgslsmith_f_op_f32(185f * 1020f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_f_op_f32(max(1628f, _wgslsmith_f_op_f32(abs(-570f)))), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(844f, 410f, true)))) * 1143f)));
    global0 = array<vec3<u32>, 14>();
    global2 = array<Struct_2, 1>();
    var var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.b.xzw + var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_2.yy, vec4<u32>(~reverseBits(var_0.c & var_0.c), ~(~_wgslsmith_mult_u32(var_0.c, 0u)), ~42936u, 52767u), var_2.x, _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(~var_0.c, 32u)], ~vec2<u32>(~1u, _wgslsmith_sub_u32(1u, 1u))));
}

