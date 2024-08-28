struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<i32>(i32(-2147483648), 0i), true), Struct_2(vec2<i32>(1i, -31603i), true), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), false));

var<private> global2: u32 = 1u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~reverseBits(select(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c), vec3<bool>(true, true, true))), ~vec3<u32>(~u_input.c, 64762u, ~50872u));
    var var_1 = u_input.a;
    let var_2 = ((_wgslsmith_clamp_u32(~37921u, u_input.c, 4294967295u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(47517u, u_input.c, var_0, u_input.c) & vec4<u32>(23206u, 1u, 13994u, 117903u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, var_0, u_input.c, u_input.c), vec4<u32>(u_input.c, var_0, 12352u, u_input.c))) % 32u)) << (369u % 32u)) <= 0u;
    var var_3 = var_1.zy;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(385f, 1618f)), _wgslsmith_f_op_f32(floor(855f)))))));
    return 619f;
}

fn func_3() -> i32 {
    let var_0 = vec3<bool>(false, any(vec2<bool>(true, any(vec4<bool>(true, false, true, false)))) || true, any(select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false)), vec3<bool>(false, true, all(vec4<bool>(true, false, true, false))), true)));
    let var_1 = Struct_1(1f);
    let var_2 = abs(_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 40858u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(17553u, 15693u)))), abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(25430u, u_input.c, 48550u, u_input.c)), ~u_input.c)), u_input.c));
    global1 = array<Struct_2, 3>();
    let var_3 = Struct_3(any(select(!(!vec2<bool>(true, var_0.x)), var_0.yx, select(!var_0.yx, var_0.xz, var_0.xy))), Struct_1(196f));
    return u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_4 {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-u_input.a.xx), vec2<i32>(u_input.a.x, func_3())), -4220i), select(all(vec4<bool>(true, false, false, true)), true, true) | (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(88641u, 4294967295u, u_input.c, 2362u)), ~vec4<u32>(u_input.c, arg_0, 1u, u_input.c)) <= 1u));
    var var_1 = all(select(vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(any(vec2<bool>(false, var_0.b)), !var_0.b), all(!vec4<bool>(var_0.b, true, false, false))), vec2<bool>(!var_0.b, false)));
    let var_2 = abs(u_input.c);
    var var_3 = var_0.b | (0i < -((arg_1 << (u_input.c % 32u)) | -16801i));
    global2 = 0u;
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1714f) * arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(~(~(~1u << (u_input.c % 32u))), 133i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 196f)));
    global1 = array<Struct_2, 3>();
    var var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), ~max(u_input.c, u_input.c << (24145u % 32u)), 0u));
    global0 = 1448f;
    let var_2 = all(!(!vec3<bool>(27265i >= u_input.b, true, true)));
    var var_3 = Struct_3(true, var_0.a);
    var var_4 = var_0;
    var_1 = ~vec3<u32>(~u_input.c, 55974u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(select(0u & var_1.x, 37581u >> (~(29805u << (var_1.x % 32u)) % 32u), false), 2147483647i, var_3.b.a);
}

