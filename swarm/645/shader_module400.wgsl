struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<vec4<f32>, 9>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_3(vec2<bool>(true, true), false);
    global0 = array<Struct_1, 2>();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(~u_input.b.zzz, abs(u_input.b.wyx) ^ (vec3<i32>(arg_3.x, u_input.b.x, 30854i) | _wgslsmith_sub_vec3_i32(u_input.b.yyx, vec3<i32>(u_input.b.x, 3815i, 0i)))), arg_2.a.a, u_input.b.x, -26115i);
    var var_2 = ~(~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(21277u, u_input.a, 51831u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 21032u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 35177u)) ^ (vec4<u32>(0u, 11627u, u_input.a, 0u) | vec4<u32>(u_input.a, 1u, 33424u, 100428u))));
    var var_3 = _wgslsmith_f_op_f32(arg_1.b.x - arg_0);
    return firstLeadingBit(_wgslsmith_div_u32((var_2.x & var_2.x) | ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, var_2.x, 4294967295u), vec4<u32>(0u, var_2.x, u_input.a, 26812u)))) & firstTrailingBit(~select(~51345u, u_input.a, any(var_0.a)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> vec2<bool> {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f + arg_1.b.x), _wgslsmith_f_op_f32(floor(735f)))));
    global1 = array<vec4<f32>, 9>();
    let var_2 = arg_2;
    var var_3 = arg_2;
    return !var_2.a;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = ~vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(16264u, 1u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)))), _wgslsmith_div_u32(4294967295u, ~_wgslsmith_add_u32(u_input.a, u_input.a)), 1u ^ u_input.a);
    global0 = array<Struct_1, 2>();
    var var_1 = Struct_3(!arg_0.a, true);
    var var_2 = select(func_4((var_0.x & func_3(arg_2.b.x, Struct_1(arg_3.a.a, arg_2.b), Struct_2(arg_2), vec2<i32>(31773i, u_input.b.x))) <= (4294967295u & var_0.x), Struct_1(~max(-1i, -38154i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1035f, arg_2.b.x))), Struct_3(var_1.a, false), arg_0.b), arg_0.a, var_1.a);
    var var_3 = select(vec3<u32>(abs(37786u) | ~u_input.a, 0u, ~var_0.x), ~select(select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, var_0.x, 14301u), vec3<bool>(var_2.x, false, var_1.a.x)), max(vec3<u32>(u_input.a, 4294967295u, 5000u), vec3<u32>(var_0.x, 13896u, u_input.a)), true), any(!vec4<bool>(true, var_2.x, true, true))) << (~vec3<u32>(12111u, ~30547u ^ ~u_input.a, _wgslsmith_mult_u32(u_input.a, ~var_0.x)) % vec3<u32>(32u));
    return 136159u;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>) -> vec2<f32> {
    global1 = array<vec4<f32>, 9>();
    var var_0 = 2147483647i;
    global0 = array<Struct_1, 2>();
    var var_1 = Struct_2(Struct_1(-u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 1658f) + arg_2.yy), arg_2.xx) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_1.a.b, arg_1.a.b), vec2<f32>(arg_2.x, arg_2.x))))));
    global1 = array<vec4<f32>, 9>();
    return _wgslsmith_f_op_vec2_f32(var_1.a.b - _wgslsmith_f_op_vec2_f32(trunc(var_1.a.b)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(arg_2.a.b, _wgslsmith_f_op_vec2_f32(func_5(true & all(!vec4<bool>(true, true, true, arg_1.x)), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(1u), func_2(Struct_3(vec2<bool>(arg_1.x, arg_1.x), true), arg_1.zx, Struct_1(36057i, vec2<f32>(arg_2.a.b.x, arg_2.a.b.x)), arg_2)), 2u)]), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1496f)), _wgslsmith_div_f32(245f, _wgslsmith_f_op_f32(-arg_2.a.b.x)), arg_2.a.b.x)))));
    global0 = array<Struct_1, 2>();
    var var_1 = arg_1.x;
    var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.x, 1086f))));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_i32(u_input.b.x, i32(-1i) * -70973i), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1148f, -1792f)), _wgslsmith_f_op_f32(round(-982f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec2<u32>(0u, 4294967295u), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 2u)]), 14669u))))));
    var var_1 = var_0.a;
    let var_2 = Struct_3(vec2<bool>(true, true), any(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))));
    let var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, u_input.a), _wgslsmith_clamp_u32(u_input.a, 1u, 61544u)) << (vec2<u32>(u_input.a, 96774u) % vec2<u32>(32u)), vec2<u32>(~6651u, ~(~u_input.a))), ~reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 47649u), vec2<u32>(476u, u_input.a))));
    let var_4 = max(~(~0u), _wgslsmith_dot_vec4_u32(select(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(49223u, 1u, 4294967295u, var_3.x), vec4<u32>(0u, 30648u, u_input.a, 91779u))), max(vec4<u32>(0u, 4294967295u, 10908u, 50246u), ~vec4<u32>(var_3.x, 4294967295u, u_input.a, 0u)), false), select(~select(vec4<u32>(24943u, u_input.a, 0u, var_3.x), vec4<u32>(38948u, u_input.a, var_3.x, u_input.a), vec4<bool>(true, false, var_2.a.x, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, 23809u, u_input.a, var_3.x), vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) | vec4<u32>(u_input.a, 1u, 23392u, var_3.x)), !(!vec4<bool>(var_2.a.x, var_2.b, var_2.a.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, abs(u_input.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-746f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(max(-115f, 270f))))))), ~(~(~(~vec3<u32>(0u, u_input.a, u_input.a)))), var_0.b.x);
}

