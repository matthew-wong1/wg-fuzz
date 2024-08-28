struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<Struct_1, 22>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1000f, 319f), vec2<i32>(0i, -30110i), vec3<i32>(-20915i, i32(-2147483648), -1422i), vec2<u32>(11222u, 4294967295u), 57399u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec2<i32> {
    global0 = u_input.b.xy;
    global2 = array<Struct_1, 22>();
    var var_0 = false;
    var var_1 = false;
    global0 = global3.d;
    return vec2<i32>(global3.c.x, 0i);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global3 = arg_2;
    let var_0 = select(vec2<bool>(255f >= arg_2.a.x, true | all(vec3<bool>(true, true, true))), select(vec2<bool>(abs(global3.c.x) <= abs(-1i), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), (_wgslsmith_div_i32(-24091i, arg_0.x) >= -arg_2.c.x) & (any(vec2<bool>(false, false)) & (arg_2.a.x >= 2256f))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1136f, 612f, 1296f, 454f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.a.x, global3.a.x, arg_1.a.x, arg_1.a.x)))) + vec4<f32>(-319f, _wgslsmith_f_op_f32(-global3.a.x), global3.a.x, arg_1.a.x)))));
    return vec4<u32>(4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, max(arg_1.d.x, 24269u)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(5085u, u_input.b.x) | u_input.b.xy), select(~vec2<u32>(2295u, arg_1.d.x), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, u_input.b.x), vec2<u32>(77525u, 0u)), var_0)), _wgslsmith_mult_u32(0u, 64838u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(arg_2.e, u_input.b.x, global0.x), abs(global3.d.x)) ^ abs(global3.d), _wgslsmith_mult_vec2_u32(~(~arg_2.d), vec2<u32>(1u, ~34242u))), 9545u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(global3.e, 2u)];
    var var_1 = -7127i;
    let var_2 = vec4<u32>(select(abs(4326u), 1u, -669f == _wgslsmith_f_op_f32(-var_0.a.x)), 1u, ~9628u, 5818u) >> (~func_3(global3.c.xx, Struct_1(global3.a, func_2(), vec3<i32>(global3.c.x, -60660i, 0i), _wgslsmith_mod_vec2_u32(vec2<u32>(6490u, 4294967295u), vec2<u32>(2035u, global3.d.x)), firstTrailingBit(global0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(751f, var_0.a.x)), var_0.b, global3.c, u_input.a, _wgslsmith_mod_u32(84930u, 1u))) % vec4<u32>(32u));
    let var_3 = global2[_wgslsmith_index_u32(84873u, 22u)];
    global0 = vec2<u32>(1u, 1u ^ ~global3.e);
    return global1[_wgslsmith_index_u32(~(~1u), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.x;
    global2 = array<Struct_1, 22>();
    var var_1 = func_1(~(_wgslsmith_div_i32(reverseBits(-54231i), _wgslsmith_clamp_i32(global3.c.x, global3.b.x, -1i)) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 16677u), _wgslsmith_mult_u32(global0.x, u_input.b.x)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.b.x, ~(2147483647i << (global0.x % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3.b.x, 14047i, 46317i, var_1.c.x), vec4<i32>(-9740i, -31882i, var_1.c.x, global3.c.x)), select(vec4<i32>(global3.b.x, 2147483647i, var_1.c.x, var_1.c.x), vec4<i32>(global3.b.x, var_1.c.x, var_1.b.x, 0i), true)), -1i) >> (firstLeadingBit(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.x, var_1.d.x, global0.x, u_input.b.x), vec4<u32>(var_1.d.x, var_1.d.x, var_1.d.x, 5686u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.a.x)))), _wgslsmith_sub_u32(16069u, func_3(func_2(), Struct_1(global3.a, -global3.c.yx, vec3<i32>(1i, 68975i, -2147483647i), _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, var_1.d.x), vec2<u32>(global3.d.x, global3.e)), var_1.d.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, global3.a.x) + var_1.a), min(var_1.b, vec2<i32>(global3.b.x, 13539i)), vec3<i32>(global3.c.x, global3.c.x, global3.b.x), ~u_input.a, 14984u)).x), _wgslsmith_f_op_f32(round(-920f)), max(_wgslsmith_add_u32(0u, 1u << (_wgslsmith_add_u32(0u, var_1.d.x) % 32u)), select(1u, func_3(~var_1.b, func_1(2147483647i), Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), var_1.b, global3.c, var_1.d, u_input.b.x)).x, true)));
}

