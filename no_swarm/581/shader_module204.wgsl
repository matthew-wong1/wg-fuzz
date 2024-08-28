struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b)))), -167f));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(444f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -2147f) + 376f))) + _wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(35048u, 4u)], ~u_input.d, Struct_1(vec2<bool>(true, true), 629f))));
    let var_1 = reverseBits(max(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(arg_0, vec2<i32>(1i, -2771i)), u_input.b.yx) >> ((~vec2<u32>(u_input.d.x, u_input.d.x) | ~vec2<u32>(1u, 12706u)) % vec2<u32>(32u)), u_input.c.yx));
    let var_2 = global0[_wgslsmith_index_u32(~(~reverseBits(u_input.d.x)), 4u)];
    global0 = array<Struct_1, 4>();
    let var_3 = select(!select(!(!vec4<bool>(true, var_2.a.x, true, false)), !vec4<bool>(var_2.a.x, false, false, false), true), select(!select(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), !vec4<bool>(false, var_2.a.x, var_2.a.x, true), select(vec4<bool>(var_2.a.x, true, false, var_2.a.x), vec4<bool>(true, var_2.a.x, false, false), vec4<bool>(var_2.a.x, false, false, var_2.a.x))), !vec4<bool>(var_2.a.x, !var_2.a.x, all(var_2.a), true), select(vec4<bool>(true, any(var_2.a), !var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, false, all(vec2<bool>(true, var_2.a.x)), false), !var_2.a.x & any(var_2.a))), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(264f)))));
    return ~35180u;
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(u_input.d, firstLeadingBit(vec4<u32>(17380u, 1u, _wgslsmith_div_u32(arg_0.x, ~0u), arg_0.x)));
    global0 = array<Struct_1, 4>();
    var var_1 = ~u_input.d.x;
    var var_2 = ~select(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x), -u_input.c), ~_wgslsmith_clamp_vec3_i32(u_input.b << (var_0.yyw % vec3<u32>(32u)), vec3<i32>(u_input.b.x, -28032i, u_input.c.x), vec3<i32>(-43900i, -2147483647i, -2147483647i)), vec3<bool>(false, false, true));
    var var_3 = Struct_2(abs(~max(4294967295u, 19340u) >> (func_2(vec2<i32>(u_input.c.x, -6369i)) % 32u)), ~(~(~(~arg_0.x))), ~arg_0, var_2.x, global0[_wgslsmith_index_u32(46533u, 4u)]);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = -2116f;
    var var_1 = min(firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(12184u, 4294967295u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), u_input.d.yyx), vec3<u32>(u_input.d.x, _wgslsmith_mod_u32(1u, u_input.d.x), _wgslsmith_mult_u32(u_input.d.x, u_input.a)))), vec3<u32>(1u, _wgslsmith_add_u32(39590u, (u_input.a << (1u % 32u)) << (abs(u_input.d.x) % 32u)), ~func_1(vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, 4294967295u)) & 4294967295u));
    global0 = array<Struct_1, 4>();
    let var_2 = min((u_input.a | ~u_input.a) | abs(25261u), ~func_1(select(u_input.d, min(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 57180u), u_input.d), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~(~(~u_input.d)), vec4<u32>(~(~var_2), 4294967295u, ~1u, min(~u_input.a, 68573u | var_2))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -741f) - var_0)), var_0)), -2788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
}

