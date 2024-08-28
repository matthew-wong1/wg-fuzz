struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(0i, i32(-2147483648), 106491i, -39822i), vec4<i32>(60337i, 20098i, -14050i, 22459i), vec4<i32>(-61054i, 2147483647i, -635i, 2147483647i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec3<i32> {
    global0 = array<vec4<i32>, 3>();
    global0 = array<vec4<i32>, 3>();
    global0 = array<vec4<i32>, 3>();
    global0 = array<vec4<i32>, 3>();
    global0 = array<vec4<i32>, 3>();
    return vec3<i32>(u_input.a.x, ~(-1446i), u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_4 {
    var var_0 = true;
    let var_1 = 437u;
    var var_2 = func_3(Struct_3(~(~(~vec2<u32>(var_1, 18905u))), 14084u), Struct_3(~u_input.c.yx, var_1));
    let var_3 = select(select(select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, true)), select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(arg_0, arg_0)), !vec2<bool>(arg_0, arg_0)), vec2<bool>(all(vec2<bool>(true, true)), arg_0), vec2<bool>(var_1 != 4294967295u, any(vec2<bool>(arg_0, false)))), !vec2<bool>(arg_0, false), !(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), true))), vec2<bool>(all(vec4<bool>(arg_0, arg_0, true, var_2.x < var_2.x)), true), vec2<bool>(true, true));
    global0 = array<vec4<i32>, 3>();
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> bool {
    let var_0 = u_input.c;
    var var_1 = ~38141u;
    var_1 = var_0.x;
    var_1 = abs(var_0.x);
    return false;
}

fn func_1() -> Struct_2 {
    let var_0 = -41367i;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(691f, 875f) - vec2<f32>(839f, -692f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1420f, -979f) * vec2<f32>(306f, -510f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(599f, -711f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2134f, 490f)), func_4(-1553f, func_2(true, Struct_4(vec3<i32>(-2147483647i, 22901i, u_input.b), 237f))))))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1027f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 351f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(912f, 1000f, var_1.x, var_1.x) + vec4<f32>(973f, -251f, var_1.x, -1000f)), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, 194f, -656f, var_1.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -1173f, 2378f, -266f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-787f, var_1.x, -1204f, 1178f))), var_2))))));
    global0 = array<vec4<i32>, 3>();
    return Struct_2(_wgslsmith_clamp_vec2_u32(~(~(u_input.c.wy ^ vec2<u32>(1u, 55466u))), u_input.c.zz, abs(vec2<u32>(u_input.d, u_input.d)) & (_wgslsmith_add_vec2_u32(u_input.c.ww, vec2<u32>(59715u, 29247u)) & ~vec2<u32>(u_input.c.x, u_input.d))), 1000f, _wgslsmith_f_op_vec3_f32(-var_3.zyy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_5(Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(var_0.b, var_0.c.x), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.b, var_0.b)))), _wgslsmith_f_op_f32(-func_1().b), _wgslsmith_f_op_f32(step(-700f, _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_vec3_f32(var_0.c * var_0.c)), vec2<i32>(~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 31041i), u_input.a)), -43203i));
    let var_2 = all(!select(!vec2<bool>(var_1.a.a.x, true), !vec2<bool>(var_1.a.a.x, var_1.a.a.x), var_1.a.a)) | (~_wgslsmith_mult_i32(var_1.b.x, 2147483647i) == min(0i, -40759i));
    let var_3 = vec3<f32>(403f, _wgslsmith_f_op_f32(-1f), 830f);
    var_0 = Struct_2(~(~u_input.c.xw), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -866f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2147f, 256f, 639f)) + vec3<f32>(1043f, 1000f, var_3.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.b.x)) + 213f), var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(154f, 612f)))));
    var var_4 = !vec4<bool>(all(vec2<bool>(!var_1.a.a.x, false)), true, var_2, select(false, false, true) || any(vec3<bool>(true, true, true)));
    let var_5 = u_input.c.x;
    var var_6 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~countOneBits(vec3<u32>(12463u, 1u, var_0.a.x)))), vec3<u32>(var_5 & 23948u, var_5, firstTrailingBit(var_0.a.x)) | abs(vec3<u32>(95881u, var_0.a.x << (var_5 % 32u), 33194u)));
}

