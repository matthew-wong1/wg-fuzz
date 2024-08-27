struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3 = Struct_3(Struct_1(0i), Struct_1(23303i));

var<private> global2: Struct_5;

var<private> global3: Struct_4;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> u32 {
    global0 = all(vec4<bool>(arg_2, all(!vec2<bool>(arg_0, true)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, global3.a), global3.a), !vec2<bool>(global3.a, false), !vec2<bool>(global3.a, true))), arg_0 == true));
    let var_0 = Struct_3(global1.b, arg_1.a);
    global1 = var_0;
    var var_1 = arg_1.b.a;
    let var_2 = true;
    return (~_wgslsmith_div_u32(u_input.b.x, u_input.d) << (~u_input.d % 32u)) & _wgslsmith_mod_u32(27884u, firstTrailingBit(4294967295u));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, 1148f))));
    let var_1 = vec4<i32>(global1.a.a, 1i, 1i, -(u_input.a << ((func_3(true, Struct_2(global1.a, global1.b, vec3<i32>(u_input.a, -2147483647i, u_input.a), global1.b, global1.a.a), global3.a) | abs(u_input.b.x)) % 32u)));
    let var_2 = 42964u;
    var var_3 = Struct_2(Struct_1(max(8211i, var_1.x)), global1.b, vec3<i32>(-53948i, global1.b.a, firstLeadingBit(global1.b.a)), Struct_1(1i), _wgslsmith_mod_i32(u_input.a, -(~(~1i))));
    return var_3.d;
}

fn func_1() -> u32 {
    let var_0 = -280f >= global2.a;
    var var_1 = firstTrailingBit((4294967295u << (_wgslsmith_div_u32(u_input.c, 4294967295u) % 32u)) | firstLeadingBit(4294967295u));
    global1 = Struct_3(global1.b, func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a, global2.a), vec2<f32>(-798f, 685f)))), vec2<f32>(_wgslsmith_f_op_f32(-522f * global2.a), _wgslsmith_f_op_f32(global2.a - 603f))))));
    let var_2 = u_input.b.x | reverseBits(min(_wgslsmith_div_u32(518u, 7584u) & (u_input.e | u_input.d), ~(u_input.e & u_input.c)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_5(global2.a);
    global2 = Struct_5(-901f);
    var var_0 = _wgslsmith_sub_vec3_u32(abs(~u_input.b) ^ ~(~_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(58507u, u_input.e, u_input.b.x))), vec3<u32>(u_input.d, min(u_input.e, 33968u), func_1()));
    let var_1 = countOneBits(~(vec3<i32>(-1i) * -(vec3<i32>(57622i, u_input.a, 24377i) << (u_input.b % vec3<u32>(32u)))));
    let var_2 = u_input.c;
    var_0 = countOneBits(u_input.b);
    var var_3 = select(global3.a, !(!global3.a), true);
    var var_4 = _wgslsmith_f_op_f32(-1000f - 784f);
    let var_5 = select(abs(_wgslsmith_sub_vec2_u32(u_input.b.yx, firstTrailingBit(var_0.yx)) >> (reverseBits(firstLeadingBit(u_input.b.xy)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 49617u, 4294967295u), countOneBits(vec4<u32>(var_2, var_2, u_input.c, u_input.b.x))), _wgslsmith_mod_u32(49618u, min(var_0.x, var_2))), firstLeadingBit(~u_input.b.zz)), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -(-2147483647i | u_input.a), global1.b.a, firstLeadingBit(var_1.x), var_1.x), vec4<f32>(global2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a + global2.a), global2.a, false)), global2.a, global2.a), _wgslsmith_f_op_f32(-1391f * _wgslsmith_f_op_f32(-global2.a)));
}

