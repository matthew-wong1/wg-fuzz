struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = vec3<u32>(max(61603u, global0.b.c), u_input.b, 4294967295u);
    global1 = vec4<bool>(global0.b.c >= 1u, global1.x, true, !(arg_0 > _wgslsmith_f_op_f32(-1000f + 1346f)));
    let var_1 = !global1.yzw;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0.d)))))));
    var var_3 = !(any(global1.xy) & false);
    return -683f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_mod_i32(select(0i, ~global0.b.d, all(select(global0.b.b.yz, select(vec2<bool>(global0.b.b.x, global0.b.b.x), global1.zy, global1.x), 11385u < global0.b.c))), -global0.b.d);
    var var_1 = _wgslsmith_sub_i32(1i, ~(-2147483647i));
    var var_2 = ~(vec4<u32>(27627u, abs(abs(47508u)), u_input.a, 1u << (0u % 32u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(514u, global0.b.c), 26482u, _wgslsmith_mod_u32(u_input.b, global0.b.c), _wgslsmith_mult_u32(global0.b.c, global0.b.c)), abs(select(vec4<u32>(global0.b.c, u_input.a, 36730u, 1u), vec4<u32>(63349u, 4294967295u, 0u, global0.b.c), global0.c))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1408f, -1691f) - _wgslsmith_f_op_f32(func_3(-1024f))) * arg_1.x)));
    var var_4 = ~vec3<i32>(1i, min(~(-20135i), 25048i), ~(-var_0) | var_0);
    return all(global1.wxz);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> Struct_4 {
    let var_0 = global1.zzz;
    var var_1 = arg_2.a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(299f))), global0.d);
    var_1 = global0.b.a;
    var var_3 = Struct_1(select(select(vec3<bool>(true, true, true), global0.b.b.wwy, select(!global1.wzx, vec3<bool>(var_1.a.x, var_1.a.x, true), vec3<bool>(arg_2.a.a.x, var_0.x, false))), global0.c.xzx, select(select(global1.ywx, var_1.a, select(var_1.a, global1.zwx, arg_2.a.a)), vec3<bool>(true, arg_2.a.a.x, global0.c.x), vec3<bool>(!global0.c.x, true, true))));
    return Struct_4(!func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d, -1189f, 420f, global0.d), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1089f, global0.d, -183f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(809f, -927f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.d, 2097f))))), global0.b, global0.b.b, _wgslsmith_f_op_f32(-global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(global1.wx, vec2<bool>(_wgslsmith_div_f32(global0.d, -352f) != _wgslsmith_f_op_f32(abs(global0.d)), all(select(global0.c, vec4<bool>(global1.x, global0.c.x, global0.a, false), global1.x))), false);
    global0 = func_1(~u_input.a, false, global0.b, ~(~firstLeadingBit(~global0.b.c)));
    let var_1 = !vec3<bool>(true, true, var_0.x && (~global0.b.d <= _wgslsmith_mod_i32(global0.b.d, global0.b.d)));
    var var_2 = !any(func_1(17994u, true, func_1(78492u, true, func_1(4294967295u, false, global0.b, u_input.a).b, global0.b.c >> (u_input.a % 32u)).b, ~_wgslsmith_mod_u32(global0.b.c, 15620u)).b.b);
    var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4246u, 67690u), vec2<u32>(106973u, u_input.a)), ~vec2<u32>(u_input.a, u_input.b), vec2<u32>(global0.b.c, global0.b.c))), ~vec2<u32>(0u, u_input.a & u_input.b)), global0.d);
}

