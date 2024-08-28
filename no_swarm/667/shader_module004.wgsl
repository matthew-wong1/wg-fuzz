struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: f32 = -1000f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> i32 {
    global1 = -1187f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-989f)) * _wgslsmith_f_op_f32(-284f + -1301f)))));
    var var_0 = ~_wgslsmith_mod_i32(38686i, u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(exp2(1f));
    var_0 = _wgslsmith_div_i32(reverseBits(u_input.a.x), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -2147483647i, u_input.a.x, u_input.a.x), abs(vec4<i32>(4069i, u_input.a.x, -2147483647i, 5224i))) ^ ~(~(u_input.a.x & 21i)));
    return _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(1i, -16772i)), ~(-33986i), u_input.a.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    global0 = array<Struct_2, 30>();
    global1 = -1014f;
    global0 = array<Struct_2, 30>();
    let var_0 = any(select(!select(vec2<bool>(arg_1.e, arg_2), vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_1.e, true), true)), !(!select(vec2<bool>(arg_1.e, true), vec2<bool>(false, false), vec2<bool>(true, arg_2))), arg_1.e));
    var var_1 = vec3<u32>(arg_1.a, _wgslsmith_mult_u32(~1u, ~(~_wgslsmith_sub_u32(arg_1.a, arg_1.b))), arg_1.a);
    return vec2<bool>(false, any(!(!vec3<bool>(arg_2, arg_1.e, var_0))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x)));
    var var_0 = select(select(vec2<bool>(153f != arg_0.a.x, arg_0.b), select(vec2<bool>(true, false), func_3(-1387f, Struct_1(4294967295u, 0u, vec4<f32>(arg_0.a.x, 1844f, 153f, arg_0.a.x), u_input.a.x, false), true), arg_0.b), arg_0.b), vec2<bool>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -189f)) > 2123f), vec2<bool>(!any(vec4<bool>(true, false, false, arg_0.b)) || false, arg_0.b));
    return Struct_3(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.a.x), vec3<i32>(-16051i, u_input.a.x, u_input.a.x)) ^ vec3<i32>(-2147483647i, -arg_1, -u_input.a.x)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f))), any(select(select(vec2<bool>(arg_0.b, true), vec2<bool>(false, false), arg_0.b), func_3(arg_0.a.x, Struct_1(55986u, 0u, vec4<f32>(1000f, arg_0.a.x, arg_0.a.x, arg_0.a.x), -1i, var_0.x), true), arg_0.a.x == arg_0.a.x))), Struct_1(1u, 48357u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, -484f, 1599f, arg_0.a.x), vec4<f32>(-102f, arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.b)))), 0i, true), Struct_2(arg_0.a, all(vec3<bool>(var_0.x, all(vec4<bool>(var_0.x, arg_0.b, var_0.x, var_0.x)), var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1105f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1915f, -1061f)))))), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, countOneBits(-u_input.a.x)), ~(_wgslsmith_clamp_i32(-18027i, 0i, u_input.a.x) ^ func_1())));
    var var_1 = func_2(var_0.b, _wgslsmith_clamp_i32(u_input.a.x, select(-39753i, ~u_input.a.x, var_0.d.b), ~u_input.a.x)).a.zy;
    var_0 = Struct_3(var_0.a, global0[_wgslsmith_index_u32(abs(~74846u) ^ (firstLeadingBit(86160u) ^ func_2(var_0.d, select(-1i, var_1.x, false)).c.a), 30u)], func_2(var_0.d, _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(-2404i, u_input.a.x, 2147483647i, u_input.a.x))), vec4<i32>(u_input.a.x, 13233i, u_input.a.x, -1i) ^ select(vec4<i32>(var_0.a.x, var_0.a.x, -1i, 13972i), vec4<i32>(-2147483647i, var_0.a.x, -2147483647i, 20869i), true))).c, var_0.d);
    global0 = array<Struct_2, 30>();
    let var_2 = ~max(-2147483647i, firstLeadingBit(reverseBits(2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.c.a, 0u, 52095u, 0u), -29870i, _wgslsmith_f_op_vec2_f32(var_0.d.a * var_0.c.c.wy));
}

