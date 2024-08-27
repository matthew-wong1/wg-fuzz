struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<u32, 24> = array<u32, 24>(1u, 101568u, 18428u, 36335u, 17542u, 4294967295u, 1u, 4294967295u, 1u, 103700u, 1967u, 1u, 1u, 0u, 0u, 0u, 2354u, 30471u, 0u, 0u, 82074u, 56616u, 4417u, 17801u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    var var_0 = true;
    let var_1 = Struct_4(arg_1.c.b.x);
    var_0 = false;
    var_0 = false;
    global1 = array<u32, 24>();
    return 37027i;
}

fn func_1() -> vec2<i32> {
    global0 = array<bool, 25>();
    var var_0 = Struct_4(-1000f);
    global0 = array<bool, 25>();
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(-100f);
    return _wgslsmith_mult_vec2_i32(vec2<i32>(-func_2(vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_3(Struct_2(var_0.a, vec4<f32>(-363f, var_0.a, var_0.a, var_0.a), Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 24u)], 24u)])), vec4<f32>(var_0.a, -1182f, 284f, 317f), Struct_2(var_0.a, vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), Struct_1(4294967295u)), Struct_1(62080u))), 1i), abs(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-10365i, 0i), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(1i, 1i)))) | vec2<i32>(~u_input.c, u_input.c);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: i32) -> vec2<i32> {
    global1 = array<u32, 24>();
    let var_0 = 14652i;
    let var_1 = Struct_3(Struct_2(1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-928f, -221f, -1239f, 1000f) + vec4<f32>(-1005f, -279f, 278f, 1652f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(336f, -496f, -1629f, 1410f), vec4<f32>(-1458f, 343f, 1129f, -1334f), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 25u)], arg_0.x))))), Struct_1(u_input.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(491f, -552f, 696f, 343f), vec4<f32>(159f, 761f, -1000f, 968f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-357f, 1247f, -147f, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(-1272f, 591f, 343f, -457f), vec4<f32>(852f, -1000f, 641f, -803f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(463f, 105f, 1149f, -976f) * vec4<f32>(1000f, -1045f, -1000f, -563f))))), !(false && !arg_0.x))), Struct_2(_wgslsmith_f_op_f32(step(-821f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1885f)), -1036f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-789f, 110f, -911f, 859f) * vec4<f32>(-1000f, 1922f, -880f, 974f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-553f, 454f, 1798f, 860f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-891f, -699f, -913f, 1478f), vec4<f32>(-490f, -1000f, -798f, -1538f)))), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 24u)] & ~4294967295u)), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 24u)]));
    let var_2 = true;
    return -vec2<i32>(select(u_input.c, -var_0, (global1[_wgslsmith_index_u32(1u, 24u)] < 4294967295u) & !arg_0.x), -17018i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 24>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(-423f)));
    global1 = array<u32, 24>();
    var var_1 = _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(0i, u_input.c)), func_1(), select(vec2<i32>(u_input.c, -38102i), ~vec2<i32>(u_input.c, u_input.c), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], 24u)], 25u)], global0[_wgslsmith_index_u32(18411u, 25u)]))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(-43515i, u_input.c), vec2<i32>(43789i, u_input.c)), abs(vec2<i32>(u_input.c, -32359i)), countOneBits(vec2<i32>(u_input.c, -34812i))), func_3(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 25u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])), -2147483647i, select(vec2<bool>(false, global0[_wgslsmith_index_u32(62713u, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], false), false), abs(-2147483647i)))));
    var var_2 = _wgslsmith_f_op_f32(var_0.a - var_0.a);
    var var_3 = ~vec4<u32>(u_input.d.x, u_input.b, 44289u, 1u);
    let var_4 = !(!vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, ~u_input.b, abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], 24u)])), 25u)], all(vec4<bool>(false, global0[_wgslsmith_index_u32(61432u, 25u)], global0[_wgslsmith_index_u32(6441u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(0i, ~6662i) | (~(-14082i) | u_input.c));
}

