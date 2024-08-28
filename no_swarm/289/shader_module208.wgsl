struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: bool) -> vec3<f32> {
    let var_0 = u_input.c.x;
    var var_1 = Struct_3(arg_0.b, 54645u);
    var_1 = Struct_3(vec4<bool>(!global0.a.x, any(select(!vec3<bool>(arg_0.a.a.x, true, false), !arg_0.b.zxx, var_1.a.yxy)), true, true), _wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), select(arg_1, var_1.b, global0.a.x)));
    var var_2 = any(var_1.a.yxz);
    var var_3 = countOneBits(_wgslsmith_mod_u32(~arg_1, _wgslsmith_mod_u32(1u, ~(~arg_1))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(round(arg_0.a.b)), 986f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, arg_0.a.b, 1277f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2224f, -575f, 708f)) + vec3<f32>(-434f, global0.b, arg_0.a.b))), !vec3<bool>(all(arg_0.a.a), false || arg_0.b.x, !arg_3))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(vec2<bool>(true, !(global0.a.x | any(vec4<bool>(arg_3, arg_2, true, arg_2)))), arg_1);
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -115f))), vec4<bool>(!(global0.a.x | true), global0.a.x, true, all(select(vec2<bool>(global0.a.x, true), global0.a, false)))), firstLeadingBit(~4294967295u), 4294967295u, true));
    var var_1 = var_0.x;
    let var_2 = -1686f;
    return Struct_1(vec2<bool>(arg_2, !((3756i >= u_input.c.x) || (u_input.a.x > u_input.a.x))), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-arg_1)));
}

fn func_1() -> vec4<bool> {
    global0 = func_2(abs(max(u_input.c, abs(vec4<i32>(-34189i, 44648i, u_input.a.x, -3526i)))), 1051f, true, global0.a.x);
    let var_0 = global0.a.x;
    let var_1 = 11167u;
    var var_2 = vec3<bool>(true, false, global0.a.x);
    var var_3 = max(firstTrailingBit(var_1), 4294967295u);
    return vec4<bool>(all(select(vec3<bool>(!var_2.x, var_2.x == global0.a.x, var_2.x), !(!vec3<bool>(var_2.x, global0.a.x, var_2.x)), select(!vec3<bool>(false, global0.a.x, var_2.x), !vec3<bool>(false, var_2.x, true), true))), false, any(vec3<bool>(true, !var_2.x, false)) || (~u_input.e == ~u_input.b.x), global0.a.x);
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_2 {
    global0 = func_2(countOneBits(~vec4<i32>(-2147483647i, -u_input.d.x, ~u_input.c.x, -9386i)), 433f, true, arg_2.x);
    global0 = Struct_1(vec2<bool>(-487f > _wgslsmith_f_op_f32(sign(-1000f)), any(vec4<bool>(global0.a.x, false, true, true)) | true), 1000f);
    let var_0 = ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~40203u), ~(~4294967295u), 31859u, 0u) | countOneBits(u_input.b);
    var var_1 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(func_2(u_input.c, global0.b, false, false), select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), global0.a.x)), u_input.b.x, min(19434u, ~49203u), (global0.a.x || arg_2.x) | global0.a.x)).x))));
    var var_2 = u_input.d;
    return Struct_2(func_2(countOneBits(-abs(u_input.c)), _wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_f_op_f32(step(171f, _wgslsmith_f_op_f32(step(-1169f, 604f)))) != 648f, all(!select(vec3<bool>(false, true, true), arg_2.yzw, arg_2.x))), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    let var_1 = func_4(_wgslsmith_div_f32(-100f, _wgslsmith_f_op_f32(global0.b + global0.b)), vec2<u32>(~(~(~u_input.b.x)), 51074u), select(!select(vec4<bool>(var_0.x, global0.a.x, true, var_0.x), !vec4<bool>(true, false, var_0.x, true), var_0.x), vec4<bool>(!any(vec2<bool>(true, true)), any(!vec3<bool>(global0.a.x, var_0.x, var_0.x)), any(select(vec3<bool>(global0.a.x, false, var_0.x), vec3<bool>(var_0.x, global0.a.x, global0.a.x), vec3<bool>(var_0.x, var_0.x, true))), var_0.x), select(!select(vec4<bool>(global0.a.x, false, true, true), vec4<bool>(true, false, global0.a.x, false), vec4<bool>(var_0.x, false, true, var_0.x)), func_1(), vec4<bool>(true, false, any(vec4<bool>(true, true, global0.a.x, var_0.x)), all(vec3<bool>(var_0.x, var_0.x, true))))));
    var var_2 = u_input.a.x;
    let var_3 = 0u;
    let var_4 = 345f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec2<bool>(false, true), -100f), !var_1.b), 67952u, 14424u, select(u_input.d.x <= u_input.d.x, true, true))).xz), ~(~((u_input.b.zzw | u_input.b.zzx) ^ _wgslsmith_mult_vec3_u32(u_input.b.xxx, u_input.b.zzx))), u_input.d.x);
}

