struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(59600u, 0u, 43372u, 1u);

var<private> global1: vec2<bool>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1462f, _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(select(-310f, _wgslsmith_f_op_f32(-325f - arg_0.a.b), all(vec4<bool>(global1.x, global1.x, false, global1.x))))), -294f));
    return select(true, true, select(true, true, all(vec2<bool>(true, true))));
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1250f, -1539f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(-1043f * -1097f), func_2(Struct_3(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), 594f), u_input.a.x, vec3<f32>(-802f, 142f, 1234f)), 550f))), -189f, _wgslsmith_f_op_f32(f32(-1f) * -279f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, -1920f, 640f, -701f))))), vec4<bool>(false, func_2(Struct_3(Struct_1(vec2<i32>(-75474i, u_input.a.x), -884f), u_input.a.x, vec3<f32>(798f, -2325f, 1614f)), _wgslsmith_f_op_f32(1011f * 136f)), global1.x, !(!global1.x)))));
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x << (global0.x % 32u), u_input.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.x)))));
    var var_2 = u_input.a;
    var var_3 = true;
    var_1 = Struct_1(var_1.a, -1000f);
    return var_0;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(func_1()).x);
    var var_1 = any(select(vec2<bool>(false, true), !select(vec2<bool>(global1.x, false), vec2<bool>(false, global1.x), false), vec2<bool>(false, global1.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-332f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    global0 = vec4<u32>(~0u, global0.x, global0.x, ~(~_wgslsmith_add_u32(~arg_2.x, global0.x << (13292u % 32u))));
    var var_3 = select(!(!vec2<bool>(global1.x, global1.x)), select(vec2<bool>(any(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), false)), func_2(Struct_3(Struct_1(vec2<i32>(47336i, -1i), 1178f), u_input.a.x, vec3<f32>(var_0.a, var_0.a, 2361f)), var_2)), !(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(false, false)), global1.x);
    return StorageBuffer(~global0.yw, ~u_input.a >> ((((arg_2 & vec3<u32>(global0.x, 41926u, 13131u)) >> (vec3<u32>(24452u, 40854u, arg_2.x) % vec3<u32>(32u))) >> (arg_2 % vec3<u32>(32u))) % vec3<u32>(32u)), select(global0.xww, ~max(vec3<u32>(arg_2.x, 106296u, global0.x), global0.zzw) | vec3<u32>(_wgslsmith_sub_u32(global0.x, 78747u), _wgslsmith_sub_u32(global0.x, 42191u), 4294967295u << (global0.x % 32u)), !all(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, true), vec2<bool>(var_3.x, true)))), u_input.a.x, arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(-1850f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_div_vec4_f32(vec4<f32>(-1422f, 1200f, -1142f, 1071f), vec4<f32>(503f, 1000f, -306f, -1350f)), select(vec4<bool>(global1.x, true, true, true), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x)))) - _wgslsmith_div_vec4_f32(vec4<f32>(538f, -1000f, 1104f, -1421f), _wgslsmith_f_op_vec4_f32(vec4<f32>(437f, 600f, 618f, 287f) - vec4<f32>(-1213f, 364f, -801f, -482f)))))), global0.zyx);
}

