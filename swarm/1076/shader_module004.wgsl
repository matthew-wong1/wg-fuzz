struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 20>;

var<private> global3: array<Struct_1, 10>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<f32> {
    global4 = 339f;
    global1 = global3[_wgslsmith_index_u32(0u, 10u)];
    global2 = array<Struct_2, 20>();
    global3 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(f32(-1f) * -158f))))) * 311f) + _wgslsmith_f_op_f32(-1f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(floor(var_0)), var_0) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 635f, var_0) + vec3<f32>(-779f, var_0, var_0)))))));
}

fn func_2() -> u32 {
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-760f)), _wgslsmith_div_f32(-911f, 521f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(468f, 540f, 154f) * vec3<f32>(979f, -1379f, 1146f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -381f, -1000f) * vec3<f32>(355f, -1473f, -1190f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(315f, 1457f, -692f), vec3<f32>(483f, 546f, 1448f), false))) + vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(func_3()))));
    let var_3 = _wgslsmith_dot_vec4_u32(max(~vec4<u32>(~0u, 1u, u_input.c, ~1u), vec4<u32>(~u_input.c, ~(~16491u), u_input.c, _wgslsmith_sub_u32(2350u, u_input.c << (4294967295u % 32u)))), ~select(vec4<u32>(u_input.c, firstLeadingBit(u_input.c), 880u, _wgslsmith_dot_vec3_u32(vec3<u32>(23151u, u_input.c, 90333u), vec3<u32>(u_input.c, 87488u, 54861u))), (vec4<u32>(u_input.c, 4294967295u, u_input.c, 4294967295u) & vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)) << (vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), vec4<bool>(!global1.a.x, !global1.a.x, !global1.a.x, global1.a.x || global1.a.x)));
    var var_4 = ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, ~u_input.c), vec2<u32>(var_3, 27085u) | ~vec2<u32>(u_input.c, var_3)) ^ _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, ~67289u)), _wgslsmith_div_vec2_u32(~(vec2<u32>(var_3, var_3) ^ vec2<u32>(0u, 4294967295u)), vec2<u32>(var_3, _wgslsmith_div_u32(u_input.c, 0u))));
    return ~(~var_3);
}

fn func_1() -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 29041u), 9u)];
    let var_1 = vec2<i32>(abs(abs(~(-44759i))), u_input.a.x);
    global0 = array<Struct_1, 9>();
    let var_2 = global2[_wgslsmith_index_u32(u_input.c, 20u)];
    let var_3 = !vec4<bool>(false, 501f != _wgslsmith_f_op_f32(trunc(267f)), false, global1.a.x);
    return vec2<u32>(31672u, u_input.c) ^ vec2<u32>(func_2(), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-340f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-736f * _wgslsmith_f_op_f32(f32(-1f) * -838f)), -1000f)));
    var var_1 = Struct_1(vec3<bool>(false, !(~u_input.c >= _wgslsmith_mod_u32(u_input.c, u_input.c)), select(!all(vec4<bool>(false, global1.a.x, false, false)), true, u_input.b < _wgslsmith_sub_i32(u_input.b, u_input.b))));
    let var_2 = 5645u;
    var var_3 = false;
    global3 = array<Struct_1, 10>();
    global2 = array<Struct_2, 20>();
    var var_4 = vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1303f * _wgslsmith_f_op_f32(ceil(var_0))))));
    global3 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(1u, u_input.c, 8423u) & (max(vec3<u32>(23080u, 1u, var_2), vec3<u32>(21975u, u_input.c, 4294967295u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(98u, 1u, 4294967295u), vec3<u32>(var_2, u_input.c, 1u)))), var_0, max(firstLeadingBit(~func_1()), ~vec2<u32>(var_2, var_2) | ~vec2<u32>(0u, 0u)));
}

