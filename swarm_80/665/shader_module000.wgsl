struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 3>;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> u32 {
    global1 = array<f32, 3>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.x)));
    return u_input.b;
}

fn func_3() -> u32 {
    var var_0 = firstTrailingBit(vec4<i32>(reverseBits(1i), ~_wgslsmith_add_i32(-2147483647i, 6036i), abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(-3183i, -35646i), vec2<i32>(-82369i, 2147483647i))), min(2147483647i, -countOneBits(-1i))));
    var var_1 = ~firstLeadingBit(~vec3<u32>(~39468u, _wgslsmith_add_u32(u_input.c, 56337u), u_input.b));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.x, 3u)] + 628f))) - global1[_wgslsmith_index_u32(~var_1.x, 3u)]))) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~82182u, 3u)]));
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    return reverseBits(0u);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    global2 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1411f, -1059f)), -1467f, -574f), arg_0.a.zzz, vec3<bool>(true, true, true)));
    let var_1 = ~vec3<u32>(countOneBits(~_wgslsmith_sub_u32(1u, 1u)), ~1u, func_3());
    let var_2 = ~countOneBits(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, arg_0.b, 0u, arg_0.b), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, arg_0.b, 4294967295u, u_input.c), vec4<u32>(arg_0.c.x, 4294967295u, u_input.d, 1u))));
    global2 = array<Struct_1, 24>();
    return ~(~(~15624u));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x + -127f), 862f, true));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_0, ~u_input.c), 24u)];
    let var_2 = global2[_wgslsmith_index_u32(5411u, 24u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-803f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -421f), var_2.a.x)), -2036f)), 75174u, select(vec3<u32>(41562u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(10735u, u_input.c, var_2.b), var_2.c), _wgslsmith_div_u32(0u, ~var_2.c.x)), ~vec3<u32>(~var_2.b, ~arg_2.x, u_input.d), true));
    return global2[_wgslsmith_index_u32(arg_2.x, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2111f;
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 24u)];
    let var_2 = firstTrailingBit(~vec4<i32>(select(~1i, _wgslsmith_mult_i32(-8330i, -37173i), true), _wgslsmith_dot_vec4_i32(select(vec4<i32>(135i, 12479i, -2147483647i, 40967i), vec4<i32>(0i, -45858i, -16300i, -4990i), true), vec4<i32>(1i, 1i, 1i, 1i)), ~(~1i), -_wgslsmith_mult_i32(-7483i, -14688i)));
    let var_3 = func_4(~var_1.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-var_2.x, var_2.x, _wgslsmith_sub_i32(var_2.x, var_2.x), -1i), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), var_2), firstLeadingBit(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x)))), var_2), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.c, var_1.c), func_1(vec3<bool>(false, false, true), false, global2[_wgslsmith_index_u32(var_1.c.x, 24u)]), ~28627u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1.b, 56236u), vec3<u32>(1u, 41026u, u_input.d), vec3<u32>(var_1.c.x, 0u, var_1.c.x)), vec3<u32>(~u_input.d, func_2(global2[_wgslsmith_index_u32(1u, 24u)], -605f), _wgslsmith_div_u32(var_1.c.x, 0u))), var_1.a);
    global2 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_1.c.x, 3949u, 51679u, var_3.c.x)), vec4<u32>(4294967295u, 21373u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(56587u, 4294967295u, 4294967295u), var_1.c)))));
}

