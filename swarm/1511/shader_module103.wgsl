struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<Struct_1, 12>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = 23261i;
    global0 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1260f, _wgslsmith_f_op_f32(1000f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-660f, 1438f)), -389f)), 308f));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f + var_1.x)), 1134f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 873f, _wgslsmith_f_op_f32(round(1133f)), var_1.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(279f, var_1.x, -202f, -525f), vec4<f32>(681f, -692f, var_1.x, var_1.x))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1187f))))))));
    global1 = array<Struct_1, 12>();
    return vec4<bool>(!all(!select(vec4<bool>(arg_0.a.a.x, true, false, false), vec4<bool>(false, arg_0.a.a.x, false, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, true, arg_0.a.a.x))), var_1.x < _wgslsmith_f_op_f32(select(var_1.x, 513f, arg_0.a.a.x & true)), select(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b, 70386u), vec4<u32>(u_input.b, 33299u, 4294967295u, 36558u)) <= u_input.b, all(!vec2<bool>(true, arg_0.a.a.x)), !arg_0.a.a.x), !arg_0.a.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, false, false))), true)), vec3<i32>(48712i, 2147483647i, 41244i));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(u_input.b, 12u)]);
    let var_2 = all(func_3(Struct_2(Struct_1(vec2<bool>(false, true)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-40686i, 0i, -14658i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -7543i)), u_input.a.x << (64180u % 32u), -15408i))));
    let var_3 = _wgslsmith_dot_vec4_i32((~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -777i, u_input.a.x, 1i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)) & -firstTrailingBit(vec4<i32>(u_input.a.x, 1i, 22007i, 45590i))) >> (~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(45341u, 1249u, 5309u, 52752u), vec4<u32>(4294967295u, 0u, u_input.b, 1u)), abs(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))) % vec4<u32>(32u)), max(firstTrailingBit(select(-vec4<i32>(var_0.b.x, 14133i, var_0.b.x, u_input.a.x), max(vec4<i32>(5611i, 26312i, 2147483647i, var_0.b.x), vec4<i32>(u_input.a.x, var_0.b.x, u_input.a.x, u_input.a.x)), vec4<bool>(true, var_1.a.a.x, var_1.a.a.x, var_1.a.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a.x, -u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, -19788i, var_0.b.x), vec4<i32>(-37187i, var_0.b.x, var_0.b.x, u_input.a.x))), vec4<i32>(_wgslsmith_add_i32(var_0.b.x, 20715i), ~var_0.b.x, 75743i, u_input.a.x))));
    global1 = array<Struct_1, 12>();
    return Struct_2(var_1.a, var_0.b);
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1069f - 1000f) - _wgslsmith_f_op_f32(abs(-636f))), _wgslsmith_f_op_f32(-1414f + -449f))) - _wgslsmith_f_op_f32(f32(-1f) * -560f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-406f - _wgslsmith_f_op_f32(f32(-1f) * -977f)), 467f)));
    var var_1 = func_2();
    return Struct_3(Struct_1(var_1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = -2147483647i;
    var var_1 = func_1();
    var var_2 = !vec4<bool>(!var_1.a.a.x, true, !var_1.a.a.x, func_2().a.a.x);
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(29733u, vec3<f32>(952f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-843f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(214f, -360f)))), ~vec4<u32>(0u, select(_wgslsmith_add_u32(u_input.b, 21722u), ~44156u, false), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 1u), vec4<u32>(0u, u_input.b, 4294967295u, u_input.b)), _wgslsmith_clamp_u32(41950u, 4294967295u, u_input.b)), ~reverseBits(u_input.b)), vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_3.b.x, 1i, 1i), u_input.a.x), max(u_input.a.x << (u_input.b % 32u), 2147483647i))));
}

