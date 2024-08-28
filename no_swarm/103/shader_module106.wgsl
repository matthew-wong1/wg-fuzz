struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(1u, 31783u, 4294967295u, 1u), vec4<u32>(30426u, 40355u, 61339u, 34045u), vec4<u32>(105695u, 35861u, 0u, 4294967295u), vec4<u32>(0u, 62010u, 16949u, 68171u), vec4<u32>(8425u, 11369u, 0u, 0u), vec4<u32>(9973u, 40983u, 4294967295u, 28231u), vec4<u32>(31001u, 60502u, 107617u, 4294967295u), vec4<u32>(0u, 55783u, 1u, 85197u), vec4<u32>(361u, 1u, 0u, 4294967295u), vec4<u32>(34382u, 27133u, 1u, 4294967295u), vec4<u32>(18025u, 24897u, 2046u, 1u), vec4<u32>(86100u, 19419u, 47281u, 0u));

var<private> global1: Struct_4;

var<private> global2: bool = false;

var<private> global3: array<vec4<u32>, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> vec3<bool> {
    global3 = array<vec4<u32>, 5>();
    var var_0 = vec3<u32>(u_input.a.x, ~59129u & (~arg_1.b.b ^ _wgslsmith_mult_u32(u_input.a.x, 378u)), arg_0) | (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b.b, ~arg_0, global1.b.b & 0u), u_input.a) >> (~vec3<u32>(~arg_0, max(arg_0, arg_0), global1.b.b) % vec3<u32>(32u)));
    var var_1 = ~min(vec3<u32>(~firstLeadingBit(34815u), ~25819u, ~1034u), u_input.a);
    global1 = Struct_4(arg_2.a, global1.b);
    let var_2 = arg_2.a;
    return select(!(!select(select(vec3<bool>(global1.b.c, false, false), vec3<bool>(true, arg_2.b.c, arg_1.b.a), vec3<bool>(true, arg_2.b.a, true)), select(vec3<bool>(arg_1.b.c, arg_1.b.a, arg_2.b.e), vec3<bool>(arg_2.b.e, true, global1.b.e), false), vec3<bool>(arg_1.b.a, false, arg_2.b.a))), vec3<bool>(any(!(!vec2<bool>(global1.b.a, true))), arg_2.b.e, arg_2.b.a), vec3<bool>(all(select(select(vec2<bool>(false, global1.b.c), vec2<bool>(false, global1.b.e), false), !vec2<bool>(global1.b.e, global1.b.a), select(global1.b.a, arg_1.b.e, arg_1.b.c))), all(select(!vec4<bool>(arg_2.b.a, true, arg_1.b.c, global1.b.a), select(vec4<bool>(true, false, true, global1.b.c), vec4<bool>(true, true, arg_1.b.c, arg_2.b.e), arg_2.b.a), all(vec3<bool>(arg_2.b.c, false, true)))), all(select(vec4<bool>(arg_2.b.e, true, arg_2.b.e, global1.b.e), vec4<bool>(global1.b.c, global1.b.a, true, true), arg_1.b.e)) == true));
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = true;
    global2 = true;
    global2 = global1.b.a | any(!vec2<bool>(select(global1.b.a, false, global1.b.c), global1.b.a));
    global2 = false;
    global0 = array<vec4<u32>, 12>();
    return all(select(func_3(31181u, Struct_4(Struct_3(global1.a.a), global1.b), Struct_4(Struct_3(global1.a.a), Struct_1(false, 4294967295u, global1.b.a, global1.b.d, global1.b.a))), select(func_3(u_input.a.x, Struct_4(Struct_3(-2212i), Struct_1(global1.b.c, 34915u, true, vec2<i32>(-1i, global1.b.d.x), global1.b.a)), Struct_4(arg_0, Struct_1(global1.b.a, 0u, false, global1.b.d, global1.b.c))), func_3(18331u, Struct_4(Struct_3(global1.a.a), global1.b), Struct_4(Struct_3(-29030i), global1.b)), vec3<bool>(global1.b.c, global1.b.a, true)), select(any(vec3<bool>(global1.b.a, global1.b.e, global1.b.e)), u_input.a.x == global1.b.b, true))) || all(select(!func_3(u_input.a.x, Struct_4(Struct_3(arg_0.a), global1.b), Struct_4(arg_0, global1.b)).yz, select(!vec2<bool>(global1.b.a, global1.b.a), vec2<bool>(global1.b.a, false), false | global1.b.c), func_3(_wgslsmith_mod_u32(global1.b.b, 13558u), Struct_4(arg_0, Struct_1(true, u_input.a.x, global1.b.a, vec2<i32>(1i, global1.a.a), global1.b.c)), Struct_4(global1.a, Struct_1(false, u_input.a.x, global1.b.a, global1.b.d, false))).xy));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = select(vec4<bool>(!global1.b.c, true, arg_0, true), vec4<bool>(true, select(func_2(global1.a) | !global1.b.c, true, false), true, all(select(vec2<bool>(true, arg_0), !vec2<bool>(true, arg_0), all(vec2<bool>(true, arg_0))))), all(func_3(~(global1.b.b | 0u), Struct_4(global1.a, global1.b), Struct_4(Struct_3(-16004i), Struct_1(true, 29115u, global1.b.a, vec2<i32>(global1.b.d.x, -22160i), true))).zy));
    global3 = array<vec4<u32>, 5>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1777f) * _wgslsmith_f_op_f32(-609f + -472f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f - 128f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(492f)) - _wgslsmith_f_op_f32(floor(-596f)))))));
    global3 = array<vec4<u32>, 5>();
    global3 = array<vec4<u32>, 5>();
    return StorageBuffer(vec2<i32>(1i, select(global1.a.a | global1.a.a, firstTrailingBit(-18340i), any(vec4<bool>(global1.b.e, true, arg_0, false)))) ^ ~(-countOneBits(vec2<i32>(global1.b.d.x, global1.a.a))), abs(global1.a.a), ~78581u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(351f, -461f, 699f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2284f, 1663f, 521f))), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1404f, -461f, -203f), vec3<f32>(-2302f, -138f, 1303f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, 1168f, 820f) + vec3<f32>(-210f, -1263f, -1080f)), select(vec3<bool>(true, global1.b.c, var_0.x), var_0.xzz, global1.b.c))))), true)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(577f - -958f), 149f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1366f - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) * _wgslsmith_f_op_f32(1311f - 716f))), -891f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!global1.b.e);
}

