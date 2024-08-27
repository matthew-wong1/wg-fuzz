struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 19> = array<i32, 19>(-42665i, 10256i, -1i, 2147483647i, 3084i, -28462i, 2147483647i, 13235i, -5834i, -3754i, -1i, -4829i, 18290i, -2322i, 47986i, -1i, i32(-2147483648), -61086i, 0i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    return ~min(arg_0.x, 1u >> (arg_0.x % 32u));
}

fn func_2() -> f32 {
    var var_0 = ~49155i;
    var var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(select(188f, -914f, false)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-503f, _wgslsmith_f_op_f32(f32(-1f) * -945f), -337f, _wgslsmith_f_op_f32(floor(-1276f))), vec4<f32>(1272f, -358f, 303f, _wgslsmith_f_op_f32(-1044f + 531f))))), true, ~vec3<u32>(57715u, 1u, u_input.b));
    var_1 = Struct_1(u_input.d, -792f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2759f, _wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(var_1.c.x * var_1.b), 186f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, -836f, 1197f, var_1.b), var_1.c, !var_1.d)))), true, ~var_1.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_1.c);
    var var_3 = Struct_1(1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(var_2.x * var_2.x)), var_1.b))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-226f)) + -501f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1408f) + -1119f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -556f), _wgslsmith_f_op_f32(trunc(1812f)), var_1.d)))), _wgslsmith_f_op_f32(sign(-666f))), any(vec2<bool>(!any(vec2<bool>(var_1.d, var_1.d)), var_1.d)), ~(~vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.x, u_input.a.x, u_input.d), vec3<u32>(100121u, 28269u, 1u)), ~var_1.a)));
    return _wgslsmith_f_op_f32(-1419f - _wgslsmith_f_op_f32(var_1.c.x * var_3.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    global0 = 4294967295u;
    var var_0 = Struct_1(_wgslsmith_mult_u32((~8635u << (u_input.a.x % 32u)) ^ (max(6978u, u_input.c.x) ^ u_input.b), 84642u | func_1(_wgslsmith_div_vec2_u32(u_input.c, u_input.a))), -611f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, 423f, 1570f, 942f))))), all(vec2<bool>(!select(false, false, false), ~u_input.b > _wgslsmith_add_u32(u_input.b, 4294967295u))), countOneBits(~reverseBits(vec3<u32>(u_input.c.x, 4294967295u, 50504u) ^ vec3<u32>(73268u, u_input.a.x, u_input.c.x))));
    let var_1 = Struct_1((countOneBits(_wgslsmith_mod_u32(var_0.a, var_0.e.x)) << ((1u << (var_0.e.x % 32u)) % 32u)) >> (firstLeadingBit(u_input.c.x) % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(694f, -1665f) * -190f), var_0.c, false, ~(~(~var_0.e)));
    global1 = array<i32, 19>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 635f)), ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c.x, 17401u), var_0.e), var_1.e), 74645u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_1.e.zy, vec2<u32>(43510u, 4294967295u)), var_1.a)), reverseBits(31421i), Struct_1(var_0.e.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) - var_0.c))), false, var_0.e ^ vec3<u32>(~var_1.a, 6919u | var_0.e.x, ~var_1.e.x)), var_1.c.wxx);
    var var_3 = _wgslsmith_div_vec2_i32(~vec2<i32>(min(-610i, var_2.c) >> (var_1.e.x % 32u), -779i), vec2<i32>(-936i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-var_2.c, ~var_2.c), var_2.c | _wgslsmith_sub_i32(0i, global1[_wgslsmith_index_u32(0u, 19u)]))));
    var_3 = min(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(var_1.e.x, 19u)], -1i), ~vec2<i32>(-1i, global1[_wgslsmith_index_u32(65458u, 19u)]), -(~vec2<i32>(2147483647i, 0i))), vec2<i32>(1384i, -1i));
    global1 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(var_2.d.c, vec4<f32>(_wgslsmith_f_op_f32(sign(-296f)), 1000f, -1199f, var_2.e.x))), u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.b, var_2.e.x, var_1.d)))), _wgslsmith_div_u32(4294967295u, abs(~var_0.a)) << (firstLeadingBit(45092u) % 32u));
}

