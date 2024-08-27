struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(79703u, 43470u, 46569u), vec3<u32>(105110u, 76072u, 4294967295u), vec3<u32>(19205u, 11114u, 9004u), vec3<u32>(19118u, 27750u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(33906u, 5226u, 1u), vec3<u32>(104056u, 14511u, 56435u), vec3<u32>(9514u, 31348u, 1108u), vec3<u32>(1u, 55987u, 1u), vec3<u32>(1u, 4294967295u, 43138u), vec3<u32>(72181u, 0u, 4294967295u), vec3<u32>(25809u, 8714u, 95557u), vec3<u32>(54069u, 49797u, 4294967295u), vec3<u32>(0u, 69095u, 4294967295u), vec3<u32>(82503u, 1u, 29182u), vec3<u32>(0u, 4294967295u, 17549u), vec3<u32>(10916u, 44778u, 4294967295u));

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: array<vec3<f32>, 26>;

var<private> global4: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -661f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(652f + _wgslsmith_f_op_f32(step(493f, 445f)))), false)), 1075f));
    return u_input.d;
}

fn func_3() -> f32 {
    var var_0 = 1u << (_wgslsmith_div_u32(672u, 101989u) % 32u);
    global0 = false;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(492f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f * -346f)))), -1000f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(-1778f, 371f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-891f, -131f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-380f, -1000f), vec2<f32>(-485f, -479f))))))), 1i, -u_input.a.x);
    global4 = u_input.b.x;
    return 671f;
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + var_0), var_0, -805f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 * 690f))))));
    var var_2 = countOneBits(reverseBits(u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-376f, var_1.x)));
    var var_4 = u_input.d;
    return vec4<i32>(~u_input.c, 12070i, -max(firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, 0i)), select(-47168i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -24159i), vec3<i32>(u_input.c, 1i, u_input.c)), true)), abs(-_wgslsmith_clamp_i32(u_input.e, -29440i, u_input.e | u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    let var_1 = ~(-(~func_2(func_1())));
    global4 = var_0;
    global0 = global2.x;
    var var_2 = Struct_3(var_1.zxy, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 4294967295u, 0u, var_0) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(35031u, var_0, var_0, u_input.d), vec4<u32>(1u, var_0, 6732u, var_0)), ~vec4<u32>(0u, var_0, var_0, 27296u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -572f), -389f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-163f, 1163f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(316f, -1000f))))), abs(38755i), u_input.e), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(145f, -1213f) * vec2<f32>(723f, -1009f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1275f) + vec2<f32>(-1139f, 151f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(166f, -733f))))), 2147483647i, min(_wgslsmith_sub_i32(-u_input.c, u_input.a.x), 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(347f, 1000f))), 1f, -667f, 418f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1692f, var_2.d.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(493f, var_2.c.a.x)) + var_2.d.a), all(select(vec2<bool>(true, global2.x), global2.zy, false)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.a.x, var_2.e.x) * _wgslsmith_f_op_vec2_f32(var_2.e.wz + vec2<f32>(-1000f, var_2.e.x))) - var_2.c.a)), func_2(u_input.b.x).yyw | -var_2.a);
}

