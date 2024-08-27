struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<i32> {
    let var_0 = ~(~u_input.b);
    global0 = array<vec2<bool>, 4>();
    let var_1 = u_input.b;
    global0 = array<vec2<bool>, 4>();
    var var_2 = vec3<u32>(1u & ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 64694u), vec2<u32>(var_0, var_1)), _wgslsmith_clamp_vec2_u32(vec2<u32>(74865u, 0u), vec2<u32>(var_1, var_1), vec2<u32>(u_input.b, 41488u))), abs(18602u), ~_wgslsmith_mod_u32(u_input.b, 17756u));
    return min(~(-_wgslsmith_add_vec3_i32(-vec3<i32>(-31707i, -12051i, u_input.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -29909i), vec3<i32>(u_input.a, -2147483647i, -32759i)))), (min(abs(vec3<i32>(u_input.a, u_input.a, 24894i)), select(vec3<i32>(23768i, -1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.a, u_input.a), false)) ^ -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.c.x), vec3<i32>(2147483647i, u_input.c.x, u_input.a))) & (~_wgslsmith_sub_vec3_i32(vec3<i32>(-21288i, -1i, u_input.a), vec3<i32>(u_input.a, u_input.c.x, 2731i)) & ~firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -1264i))));
}

fn func_2() -> bool {
    var var_0 = vec3<i32>(u_input.c.x, u_input.a, -_wgslsmith_div_i32(u_input.a, 0i));
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    let var_1 = true;
    var_0 = countOneBits(func_3() | vec3<i32>(2147483647i, -12853i, 2147483647i)) ^ vec3<i32>(max(~var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), ~vec2<i32>(var_0.x, -36752i))), 15852i, -20285i);
    return var_1;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_3 {
    var var_0 = firstLeadingBit(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(1u, 27980u)), vec2<u32>(0u, 0u)), ~(~vec2<u32>(11315u, u_input.b))));
    global0 = array<vec2<bool>, 4>();
    var_0 = vec2<u32>(u_input.b, _wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), ~countOneBits(vec4<u32>(u_input.b, u_input.b, 7280u, u_input.b)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1167f));
    var_1 = -2043f;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-543f, -1705f)), vec2<f32>(arg_2, arg_2)))), firstTrailingBit((-u_input.c | -u_input.c) << (min(vec2<u32>(u_input.b, var_0.x), vec2<u32>(u_input.b, 41059u)) % vec2<u32>(32u))));
}

fn func_1() -> vec3<bool> {
    global0 = array<vec2<bool>, 4>();
    let var_0 = false;
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    var var_1 = Struct_5(~_wgslsmith_mod_u32(~abs(4294967295u), ~_wgslsmith_clamp_u32(u_input.b, u_input.b, 62152u)), vec2<u32>(u_input.b, firstTrailingBit(72277u)), func_4(func_2(), true && all(select(global0[_wgslsmith_index_u32(u_input.b, 4u)], vec2<bool>(var_0, true), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1042f))) - 609f)), !(!(!vec4<bool>(false, true, false, var_0))));
    return !select(select(select(vec3<bool>(var_1.d.x, var_0, var_0), vec3<bool>(false, var_1.d.x, true), all(global0[_wgslsmith_index_u32(1u, 4u)])), !var_1.d.wzx, vec3<bool>(u_input.b <= u_input.b, all(vec3<bool>(var_1.d.x, true, true)), var_0)), !vec3<bool>(true, all(vec3<bool>(var_0, true, false)), var_1.d.x & var_0), !vec3<bool>(var_1.d.x, var_0, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_5(~countOneBits(6062u), ~firstLeadingBit(max(reverseBits(vec2<u32>(0u, u_input.b)), vec2<u32>(u_input.b, u_input.b))), Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -525f), -1000f))), select(u_input.c, u_input.c, all(global0[_wgslsmith_index_u32(0u, 4u)]))), !(!(!select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)))));
    var var_2 = _wgslsmith_sub_vec2_i32(var_1.c.b, -(~(-vec2<i32>(-46319i, u_input.a))));
    global0 = array<vec2<bool>, 4>();
    let var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 17737u, var_1.b.x, max(var_1.a, 37257u)) | ~(~(~vec4<u32>(40277u, u_input.b, var_1.a, u_input.b))), -(~abs(var_1.c.b ^ var_1.c.b)), _wgslsmith_dot_vec2_i32(u_input.c ^ max(_wgslsmith_mod_vec2_i32(var_1.c.b, vec2<i32>(28097i, var_2.x)), var_1.c.b), ~(~select(vec2<i32>(u_input.a, var_1.c.b.x), vec2<i32>(var_2.x, -1i), true))));
}

