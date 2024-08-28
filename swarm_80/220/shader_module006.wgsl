struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(682f);

var<private> global1: vec4<bool>;

var<private> global2: f32;

var<private> global3: array<vec3<f32>, 19>;

var<private> global4: vec4<i32> = vec4<i32>(-19621i, 2147483647i, 49470i, 0i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = global0.a;
    global0 = Struct_1(_wgslsmith_f_op_f32(-arg_3.a));
    global3 = array<vec3<f32>, 19>();
    global1 = vec4<bool>(!global1.x, global1.x, false, false);
    let var_1 = !vec2<bool>(!(firstLeadingBit(u_input.a) <= u_input.a), any(vec4<bool>(true, false, global1.x, false)));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, ~global4.x << (((u_input.a & 4294967295u) << (26601u % 32u)) % 32u), -1i), _wgslsmith_div_vec3_i32(global4.wxw, _wgslsmith_sub_vec3_i32(~(~global4.xzx), vec3<i32>(firstLeadingBit(1946i), abs(1i), -9657i))));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_0))));
    global2 = 534f;
    global2 = arg_0;
    global4 = min(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(global4.x, 5602i, global4.x, global4.x)), abs(vec4<i32>(10934i, 20551i, 2147483647i, -2147483647i) ^ vec4<i32>(1i, -2482i, 29375i, global4.x))) | vec4<i32>(-46070i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global4.xz, vec2<i32>(-27413i, 0i)), -6217i), -37431i | func_3(Struct_1(-1462f), arg_0, Struct_1(arg_0), Struct_1(global0.a)), i32(-1i) * -global4.x), vec4<i32>(-1i) * -(~vec4<i32>(global4.x, global4.x, global4.x, global4.x)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(trunc(arg_0))))));
    return !select(select(!(!vec4<bool>(true, global1.x, global1.x, global1.x)), vec4<bool>(global4.x <= 16255i, true, global1.x, all(vec2<bool>(global1.x, true))), global1.x), select(vec4<bool>(all(vec4<bool>(false, false, global1.x, true)), global1.x, all(global1.xw), any(global1.ywy)), !select(vec4<bool>(false, false, global1.x, false), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, true)), false), !select(vec4<bool>(global1.x, global1.x, global1.x, false), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), true), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, true, global1.x, true), global1.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<i32>) -> i32 {
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)));
    var var_0 = all(vec2<bool>(all(global1.wz) & (!global1.x || any(global1.zx)), global1.x));
    let var_1 = arg_3;
    global1 = !func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 658f)))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global0.a))).ywz;
    return -3925i;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_2.a + arg_2.a));
    global1 = vec4<bool>(true, global1.x, global1.x, arg_0);
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(3971u, 76455u), select(~vec2<u32>(u_input.a, 1u), _wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.a, 1u), vec2<u32>(28090u, u_input.a)), ~(~vec2<u32>(4294967295u, 4294967295u))), !func_2(-140f).zw));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + var_0.a) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) - var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -301f))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 19>();
    var var_0 = func_4(global1.x, _wgslsmith_mod_i32(global4.x, min(func_1(vec2<i32>(global4.x, 0i), Struct_1(-418f), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(36146u, u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(global4.x, 0i, global4.x), global4.yxy)), global4.x)), Struct_1(global0.a), _wgslsmith_add_i32(global4.x, 79863i));
    var var_1 = ~min(68062u, _wgslsmith_mod_u32(4294967295u, ~min(4294967295u, u_input.a)));
    global3 = array<vec3<f32>, 19>();
    var var_2 = 87u;
    global1 = !vec4<bool>(min(~0i, global4.x) == global4.x, global1.x, all(global1.zwz), true);
    let var_3 = vec4<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f * _wgslsmith_f_op_f32(-1743f - _wgslsmith_f_op_f32(-global0.a)))), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(~0u, firstLeadingBit(1u), 1u)), _wgslsmith_f_op_f32(f32(-1f) * -452f), vec2<f32>(902f, global0.a), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), 855f, _wgslsmith_f_op_f32(global0.a * 2045f)));
}

