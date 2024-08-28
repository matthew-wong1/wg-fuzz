struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: u32) -> bool {
    global1 = array<bool, 3>();
    return global1[_wgslsmith_index_u32(arg_2, 3u)];
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    let var_0 = all(vec4<bool>(true, func_2(firstLeadingBit(vec4<u32>(4294967295u, 15007u, u_input.a.x, u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1230f, -328f, arg_1) * vec4<f32>(2377f, 333f, -1000f, arg_1)), ~76063u) && any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false, false, global1[_wgslsmith_index_u32(18562u, 3u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], false, true, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), true)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(u_input.c.x) | u_input.c.x, u_input.a.x), 3u)], false));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(arg_0)), arg_0, select(global1[_wgslsmith_index_u32(34902u, 3u)], var_0, false))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(max(i32(-1i) * -51675i, -u_input.e), _wgslsmith_div_i32(0i, 1i)), u_input.d.zz, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.xy, u_input.d.xx | u_input.d.xy), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, u_input.e), u_input.d.zy))));
    global1 = array<bool, 3>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-553f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(-903f, 639f), -328f))), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 193f, !global1[_wgslsmith_index_u32(1u, 3u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1053f * -824f) * _wgslsmith_div_f32(-1591f, -1258f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1586f + -1116f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f - -1106f) * _wgslsmith_f_op_f32(f32(-1f) * -128f)))));
}

