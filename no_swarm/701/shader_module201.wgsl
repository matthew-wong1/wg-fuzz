struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(vec4<bool>(false, true, true, false), 25738u), Struct_4(vec4<bool>(true, false, false, true), 35644u), Struct_4(vec4<bool>(true, false, true, false), 0u), Struct_4(vec4<bool>(false, true, true, false), 15920u));

var<private> global1: array<Struct_4, 31>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f) + _wgslsmith_f_op_f32(step(arg_2.b.c.x, 371f)))))), -724f, -880f);
    global0 = array<Struct_4, 4>();
    global1 = array<Struct_4, 31>();
    global0 = array<Struct_4, 4>();
    var var_1 = !arg_2.b.b;
    return countOneBits(u_input.d.x);
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_5(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-890f * 408f) * _wgslsmith_f_op_f32(step(-875f, 464f))), _wgslsmith_f_op_f32(f32(-1f) * -124f)), Struct_1(u_input.a.x, vec3<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false)), any(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-242f, 539f, -1000f, -239f), vec4<f32>(302f, -1000f, -351f, 653f), vec4<bool>(true, true, false, false))), vec4<f32>(1f, 1f, 1f, 1f)))), !vec4<bool>(false, true, true, all(vec2<bool>(false, true))), !vec3<bool>(any(vec2<bool>(false, true)), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-968f))) - -757f)), Struct_1(0i, vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-628f, -2055f, 868f, -1588f)))), vec4<f32>(-1065f, _wgslsmith_f_op_f32(step(-1000f, 697f)), 644f, _wgslsmith_f_op_f32(f32(-1f) * -281f)), true))), 4294967295u);
    global0 = array<Struct_4, 4>();
    global1 = array<Struct_4, 31>();
    global1 = array<Struct_4, 31>();
    var var_1 = ~arg_0;
    return !var_0.a.c;
}

fn func_2(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, -801f)))), Struct_1(_wgslsmith_dot_vec3_i32(~u_input.a, _wgslsmith_div_vec3_i32(u_input.a, u_input.d.wwz)), vec3<bool>(true, true, true), vec4<f32>(_wgslsmith_div_f32(790f, -163f), -292f, -1359f, _wgslsmith_f_op_f32(-1399f + -308f))), func_3(select(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x), vec3<i32>(-26785i, 0i, u_input.d.x), true), vec3<i32>(u_input.a.x, 10032i, u_input.a.x), vec3<bool>(true, true, true))), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), -843f, Struct_1(-30358i, !(!func_3(u_input.d.wyx).wxx), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-186f, -1587f, 927f, 1511f) - vec4<f32>(-182f, 1268f, 293f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, -1176f, 1398f, -1213f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1528f, 1000f, -562f, 265f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-895f, 156f, -602f, 182f))), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))))), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.c), u_input.e)) >> (select(~14645u | arg_0, u_input.e.x, true) % 32u));
    var var_1 = countOneBits(_wgslsmith_mod_u32(4294967295u, 1u));
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_f32(trunc(-1093f)), var_0.a.b, ~0u);
    var var_2 = var_0.c.b.yy;
    var var_3 = (-2518f > _wgslsmith_f_op_f32(-var_0.a.b.c.x)) || false;
    return ~u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(firstLeadingBit(-8494i), _wgslsmith_mod_i32(~(~u_input.d.x), ((i32(-1i) * -13496i) & func_1(u_input.b, u_input.e.x, Struct_2(vec2<f32>(-560f, -384f), Struct_1(-82630i, vec3<bool>(true, true, false), vec4<f32>(-1343f, 1101f, 553f, -1000f)), vec4<bool>(true, false, false, false), vec3<bool>(false, false, true)), false)) >> (reverseBits(func_2(28805u, 4294967295u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(404f, -573f, -826f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, 1000f, -881f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(3022f, 987f, -810f) + vec3<f32>(-1336f, -178f, -317f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-858f, -162f, 629f))), any(func_3(u_input.a).xxx))))), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.c, 0u, 116397u, 69328u)), vec4<u32>(u_input.e.x, _wgslsmith_div_u32(~2640u, ~497u), ~abs(57160u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 63917u), vec4<u32>(u_input.b, u_input.e.x, u_input.b, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1079f, _wgslsmith_f_op_f32(-520f + -1516f))) * _wgslsmith_f_op_f32(floor(1f)))), 69096u, u_input.b);
}

