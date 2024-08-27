struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(0u, 11495u, 1u), vec3<u32>(0u, 1u, 18593u), vec3<u32>(0u, 24360u, 4294967295u), vec3<u32>(27585u, 1u, 1u), vec3<u32>(28293u, 4294967295u, 49868u), vec3<u32>(0u, 12826u, 29969u), vec3<u32>(12829u, 72143u, 40636u), vec3<u32>(0u, 53312u, 72072u), vec3<u32>(10002u, 74885u, 1u), vec3<u32>(2015u, 15394u, 0u), vec3<u32>(0u, 1u, 29141u), vec3<u32>(20924u, 4294967295u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: bool) -> bool {
    global2 = array<vec3<u32>, 12>();
    return !(!arg_0);
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1275f - 150f)))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(961f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-148f, -1178f) + _wgslsmith_f_op_f32(sign(-672f))) * _wgslsmith_f_op_f32(step(-453f, 1939f))), true));
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 53023u, select(max(25464u, 29283u), _wgslsmith_sub_u32(arg_0.a, arg_0.a), true)), _wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(arg_0.a, 12u)], min(global2[_wgslsmith_index_u32(~arg_0.a, 12u)], _wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(arg_0.a, 12u)], vec3<u32>(3967u, 36292u, 37966u))))) == arg_0.a;
    var var_0 = true;
    var var_1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(0i, -_wgslsmith_mult_i32(u_input.b.x, u_input.c.x)), _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(13836i, u_input.d.x, 0i, -15966i), vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, u_input.d.x)), ~_wgslsmith_mult_i32(u_input.d.x, u_input.b.x))), -44642i, u_input.c.x ^ firstTrailingBit(2147483647i), u_input.c.x >> (_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(~4294967295u, 12u)] | firstTrailingBit(vec3<u32>(arg_0.a, 34563u, 4294967295u)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.a, arg_0.a, 40427u)), ~global2[_wgslsmith_index_u32(u_input.a, 12u)])) % 32u));
    global1 = !all(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)));
    return func_1(false);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<bool> {
    global1 = func_3(Struct_2(_wgslsmith_add_u32(32092u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(63256u, arg_3.a, arg_3.a), u_input.a & 1u))));
    global2 = array<vec3<u32>, 12>();
    global0 = false;
    global0 = select(arg_2.x, !(true & arg_2.x), !(((5299i != u_input.d.x) && arg_2.x) || (u_input.a > 1u)));
    let var_0 = vec3<i32>(-1i) * -(u_input.c.xxw | u_input.d.wxx);
    return !select(!arg_2.yzw, arg_2.xyz, vec3<bool>(true, arg_2.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global0 = !(!(any(vec4<bool>(true, true, true, true)) & func_1(true)));
    global1 = !(!all(select(func_2(Struct_2(13342u), 4294967295u, vec4<bool>(true, true, false, false), Struct_2(u_input.a)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true)));
    global0 = !(u_input.d.x <= -min(~(-2227i), -2147483647i));
    global0 = true | !func_1(true);
    var var_0 = true;
    global2 = array<vec3<u32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-(~(-vec3<i32>(35588i, u_input.b.x, u_input.b.x))), u_input.d.zyx), -(max(vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, u_input.c.x) | u_input.d, vec4<i32>(u_input.c.x, -50778i, -30240i, u_input.d.x)) ^ vec4<i32>(max(52377i, u_input.c.x), 0i, u_input.b.x, ~2147483647i)), u_input.b, min(vec2<u32>(u_input.a, 6027u), ~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(13919u, u_input.a))), ~u_input.a);
}

