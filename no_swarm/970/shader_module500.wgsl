struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<i32>(1i, i32(-2147483648), 45143i), vec3<i32>(0i, 17132i, -12033i), -225f), Struct_2(vec3<i32>(16861i, 1i, -25686i), vec3<i32>(-32718i, 51279i, -1i), 2021f), Struct_2(vec3<i32>(-7422i, -1i, -1i), vec3<i32>(-3152i, 55446i, -11893i), -731f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-877f, -2367f, -1396f, 184f) - vec4<f32>(448f, 708f, 1054f, 819f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, 131f, 151f, 421f) - vec4<f32>(-665f, -1000f, 1481f, 212f))))), u_input.c.x >> ((_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, 1u), ~0u, u_input.b) >> (40262u % 32u)) % 32u));
    let var_1 = abs(~(~vec4<u32>(~u_input.a, ~20289u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(43028u, 22885u)), abs(u_input.b))));
    let var_2 = -3012f;
    let var_3 = true;
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(139f, var_2, 2076f, var_0.a.a.x)), var_0.a.a, global0.x | global0.x)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -678f, 755f, var_0.a.a.x)))))), u_input.c.x);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-118f)) + _wgslsmith_f_op_f32(-348f - 846f)), _wgslsmith_div_f32(1504f, _wgslsmith_f_op_f32(-var_0.a.a.x)), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2248f + _wgslsmith_f_op_f32(step(var_0.a.a.x, 779f)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2()));
    var var_1 = var_0;
    var var_2 = Struct_2(vec3<i32>(2147483647i, u_input.c.x, _wgslsmith_div_i32(18980i & select(arg_2, 2185i, true), u_input.c.x)), select(vec3<i32>(arg_2, ~(-2147483647i ^ arg_2), firstLeadingBit(3916i)), firstTrailingBit(-u_input.c.zxx), true), 189f);
    var_2 = Struct_2(vec3<i32>(-var_2.b.x, firstTrailingBit(-(~arg_2)), abs(arg_1 & -35867i)), var_2.b, 567f);
    global1 = array<Struct_2, 3>();
    return vec3<i32>(arg_1, var_2.a.x, var_2.a.x);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = all(select(global0.yzz, global0.ywx, global0.xzy));
    let var_1 = !vec3<bool>(any(select(select(global0.zzy, vec3<bool>(true, var_0, global0.x), var_0), vec3<bool>(false, var_0, true), !vec3<bool>(global0.x, false, false))), global0.x, true);
    let var_2 = Struct_3(arg_2, arg_0.x);
    global1 = array<Struct_2, 3>();
    let var_3 = Struct_2(-u_input.c.zxz, countOneBits(min(arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(25451i, arg_0.x, 6992i), firstTrailingBit(vec3<i32>(-55197i, -2147483647i, u_input.c.x))))), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(var_2.a.a.x * var_2.a.a.x)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!vec4<bool>(true, true, global0.x, false)));
    global1 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(func_3(func_1(true, u_input.c.x, -9074i), u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(198f, 915f, -353f, 458f), vec4<f32>(-1659f, -853f, -201f, 157f)))), _wgslsmith_div_vec3_i32(vec3<i32>(-19498i, u_input.c.x, 1i), ~u_input.c.yxw)) | (~u_input.a << (func_3(vec3<i32>(u_input.c.x, 19340i, u_input.c.x), 0u << (0u % 32u), Struct_1(vec4<f32>(-1558f, -613f, -1000f, 1290f)), vec3<i32>(u_input.c.x, 1i, 2147483647i) & vec3<i32>(-67584i, -1i, u_input.c.x)) % 32u)), -77092i << (firstTrailingBit(4294967295u) % 32u));
}

