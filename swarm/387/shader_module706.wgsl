struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(76587u, arg_1, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-26969i, u_input.a, 22686i, 16403i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 608i, arg_0.x, global0[_wgslsmith_index_u32(u_input.b, 31u)]), vec4<i32>(0i, 27604i, u_input.a, 49567i)), -vec4<i32>(1i, arg_0.x, arg_0.x, 1i), any(vec4<bool>(arg_1, arg_3, false, true)))) >> (vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) % vec4<u32>(32u)), arg_2.x);
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    let var_1 = Struct_1(4294967295u, true, ~_wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 31u)], 4118i), var_0.c)), -(~var_0.c)), -597f);
    var var_2 = -12384i;
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = ~(~vec4<u32>(0u << (u_input.b % 32u), u_input.c.x, 1u, ~u_input.b));
    var var_1 = vec4<u32>(1u, var_0.x & _wgslsmith_div_u32(u_input.b, u_input.b), 29312u, 1u);
    global0 = array<i32, 31>();
    var var_2 = func_2(reverseBits(~(~min(vec2<i32>(37649i, global0[_wgslsmith_index_u32(9607u, 31u)]), vec2<i32>(u_input.a, 19082i)))), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1136f), 692f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-1000f * arg_0), -421f)))), false);
    let var_3 = _wgslsmith_sub_vec2_i32(var_2.c.xz, vec2<i32>(1i, -var_2.c.x));
    return Struct_1(1u, false, var_2.c, 2082f);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-u_input.a) ^ 1i, 0i ^ -arg_1.c.x, -21874i), arg_1.c.wyy, -arg_1.c.zww);
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, -1119f, -1252f, -1423f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, 663f, 376f, 1000f))))));
    var_1 = vec4<f32>(var_1.x, arg_1.d, arg_1.d, arg_1.d);
    return func_2(_wgslsmith_clamp_vec2_i32(arg_1.c.xy, arg_1.c.xw, _wgslsmith_mult_vec2_i32(arg_1.c.xw, _wgslsmith_sub_vec2_i32(vec2<i32>(-15188i, var_0.x), ~var_0.yx))), abs(_wgslsmith_div_i32(firstLeadingBit(global0[_wgslsmith_index_u32(arg_1.a, 31u)]), _wgslsmith_add_i32(-2147483647i, arg_1.c.x))) <= -52830i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.xwz, var_1.xwy)), var_1.xxw) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, 1299f, arg_1.d) - vec3<f32>(-1575f, -1108f, var_1.x)), var_1.yyx))), all(!(!select(vec3<bool>(arg_0, arg_0, arg_1.b), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-669f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1404f)))));
    var_0 = 1514f;
    let var_1 = func_3(true, func_1(_wgslsmith_f_op_f32(-1f)));
    let var_2 = any(vec3<bool>(all(select(select(vec4<bool>(false, var_1.b, false, true), vec4<bool>(var_1.b, var_1.b, var_1.b, false), true), select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(false, true, var_1.b, var_1.b), vec4<bool>(true, var_1.b, false, var_1.b)), false)), var_1.b, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1764f)).b));
    var_0 = func_3(var_1.b, Struct_1(var_1.a, var_1.b, vec4<i32>(-var_1.c.x ^ ~global0[_wgslsmith_index_u32(var_1.a, 31u)], _wgslsmith_add_i32(5226i, func_2(var_1.c.yy, false, vec3<f32>(305f, -812f, var_1.d), var_1.b).c.x), global0[_wgslsmith_index_u32(abs(0u), 31u)], ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, var_1.a), 31u)]), _wgslsmith_f_op_f32(f32(-1f) * -631f))).d;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~(~u_input.b), u_input.b), var_1.c.wz, 0u);
}

