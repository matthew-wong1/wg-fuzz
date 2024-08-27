struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(-23001i, -46527i, 2667i), vec3<i32>(1i, 4659i, -14561i), vec3<i32>(10161i, 2147483647i, -33070i), vec3<i32>(-42467i, 0i, -16421i), vec3<i32>(3562i, -42037i, -50902i), vec3<i32>(0i, -28658i, 0i), vec3<i32>(i32(-2147483648), 43384i, 55943i), vec3<i32>(i32(-2147483648), -36499i, -41229i), vec3<i32>(37521i, -22894i, 1i), vec3<i32>(-27734i, -5592i, 2147483647i), vec3<i32>(i32(-2147483648), -8729i, 671i), vec3<i32>(1i, i32(-2147483648), -1542i), vec3<i32>(i32(-2147483648), 4775i, 0i), vec3<i32>(-1i, 2147483647i, -3059i), vec3<i32>(3537i, -4945i, 0i), vec3<i32>(23723i, -40598i, 2147483647i), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), -18272i), vec3<i32>(0i, i32(-2147483648), 59702i), vec3<i32>(-1i, -20247i, 1i), vec3<i32>(-3695i, 9912i, i32(-2147483648)), vec3<i32>(-24840i, 17186i, -41899i), vec3<i32>(-17400i, 1i, -30012i), vec3<i32>(1i, -10796i, 0i));

var<private> global1: i32;

var<private> global2: vec3<u32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>) -> f32 {
    global0 = array<vec3<i32>, 24>();
    global2 = u_input.d.xww;
    var var_0 = false;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), -110f) * arg_0.a), -470f);
    var var_2 = reverseBits(_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, u_input.c.x), u_input.c.x));
    return _wgslsmith_f_op_f32(-227f + -917f);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: u32) -> vec3<i32> {
    let var_0 = vec3<bool>(true, !(!all(arg_1)), any(!select(arg_1, arg_1, any(vec3<bool>(true, false, arg_1.x)))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(reverseBits(u_input.d), vec4<u32>(global2.x, abs(global2.x), ~2241u >> (~global2.x % 32u), _wgslsmith_dot_vec4_u32(min(u_input.d, vec4<u32>(global2.x, 21361u, u_input.a, u_input.a)), vec4<u32>(49817u, 16219u, 21428u, 40353u) & u_input.d)), ~u_input.d), -u_input.c.x, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_2, 0u), vec3<u32>(global2.x, 0u, 1u)), firstLeadingBit(vec3<u32>(1u, 15099u, u_input.b))), 67124u), abs(arg_2), ~35668u & global2.x, arg_0.x), vec4<i32>(-u_input.c.x ^ ~(-1i), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), -u_input.c.x), ~u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.yx, ~u_input.c.xx >> (~arg_0 % vec2<u32>(32u)))));
    var var_2 = var_1;
    var var_3 = vec4<u32>(var_2.a.x, 0u, 4294967295u, ~(~var_2.c.x));
    var var_4 = arg_1;
    return -var_2.d.xzy;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(false, ~global2.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(805f), u_input.c.zw)) - _wgslsmith_f_op_f32(850f + 1910f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f * 291f)), 925f))));
    var var_2 = Struct_3(var_1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(var_1, _wgslsmith_f_op_vec4_f32(-var_1), all(!vec4<bool>(any(vec4<bool>(false, false, false, true)), true, any(vec2<bool>(true, false)), select(false, var_0.a, var_0.a)))));
    var var_4 = vec2<bool>(!all(!vec4<bool>(true, var_0.a, var_0.a, var_0.a)), 19813u != u_input.b);
    return StorageBuffer(u_input.d, u_input.c.x, _wgslsmith_mult_vec3_i32(func_3(global2.zz, select(vec3<bool>(true, var_4.x, var_0.a), vec3<bool>(true, var_4.x, var_0.a), true), _wgslsmith_sub_u32(35606u, 0u)) & global0[_wgslsmith_index_u32(14281u, 24u)], _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-33100i, 6770i, 29560i) | global0[_wgslsmith_index_u32(var_0.b, 24u)]), vec3<i32>(-2381i, 1i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0[_wgslsmith_index_u32(0u, 24u)];
    let var_1 = true;
    global1 = u_input.c.x;
    let var_2 = 32816u;
    global1 = -379i;
    let x = u_input.a;
    s_output = func_1();
}

