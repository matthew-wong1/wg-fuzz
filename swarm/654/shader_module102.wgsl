struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<vec2<bool>, 30>();
    return firstLeadingBit(-(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(u_input.c.x, 33386i)), u_input.c.x)));
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_3(Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, all(global0[_wgslsmith_index_u32(u_input.d.x, 30u)])), vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), true)), arg_0.x, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -u_input.c.x, func_3()), vec3<i32>(1i, 22307i, abs(u_input.c.x))), Struct_1(u_input.d.x)));
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    var var_1 = !var_0.a.a;
    let var_2 = Struct_1(reverseBits(21226u & (abs(18519u) >> (u_input.a.x % 32u))));
    return 2147483647i;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    var var_0 = Struct_2(!arg_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b))) * arg_1.b))), _wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.c.xx, arg_1.c.zx), firstTrailingBit(~u_input.c.x), _wgslsmith_clamp_i32(~2147483647i, max(-26967i, arg_1.c.x), countOneBits(26208i))), vec3<i32>(~u_input.c.x ^ arg_1.c.x, -(i32(-1i) * -2147483647i), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 1405f))))), Struct_1(_wgslsmith_mult_u32(abs(~10831u), 0u)));
    let var_1 = vec4<bool>(arg_1.a.x, !(all(!vec3<bool>(false, arg_1.a.x, true)) & false), true, any(!var_0.a));
    let var_2 = true;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x >> (~79532u % 32u);
    var var_1 = Struct_1(~(u_input.d.x | firstLeadingBit(~0u)));
    global0 = array<vec2<bool>, 30>();
    let var_2 = Struct_3(Struct_2(select(global0[_wgslsmith_index_u32(~var_1.a, 30u)], global0[_wgslsmith_index_u32(~u_input.b.x << (var_1.a % 32u), 30u)], global0[_wgslsmith_index_u32(~var_1.a, 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.a.x, 34609u, 37888u, 0u), Struct_2(vec2<bool>(false, true), -689f, vec3<i32>(var_0, -27294i, 12423i), Struct_1(u_input.b.x)), vec2<u32>(49359u, u_input.d.x), 1648f)), -336f)), vec3<i32>(0i, var_0, -min(var_0, 1i)), Struct_1(select(_wgslsmith_mult_u32(34020u, 0u), var_1.a ^ u_input.a.x, false))));
    var var_3 = u_input.c;
    let var_4 = Struct_1(var_1.a);
    let var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1010f + -424f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~var_4.a))), -_wgslsmith_mod_vec3_i32(vec3<i32>(-20809i, var_2.a.c.x, var_3.x), abs(countOneBits(u_input.c.wzx))), vec3<i32>(abs(select(u_input.c.x, -1i, var_2.a.a.x)) & -41396i, u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2.a.c.x, var_2.a.c.x << (27692u % 32u)), 26686i)));
}

