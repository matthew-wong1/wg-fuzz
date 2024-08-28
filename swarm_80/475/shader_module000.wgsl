struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<Struct_2, 11>;

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(1u, Struct_2(Struct_1(vec3<u32>(4294967295u, 36u, 17818u), true, -782f, true), Struct_1(vec3<u32>(4294967295u, 137713u, 4294967295u), false, 2681f, true), true)), Struct_3(4294967295u, Struct_2(Struct_1(vec3<u32>(5012u, 66241u, 26506u), false, -519f, false), Struct_1(vec3<u32>(1689u, 85866u, 1u), true, 549f, true), true)), Struct_3(1u, Struct_2(Struct_1(vec3<u32>(4294967295u, 4100u, 41549u), true, -913f, false), Struct_1(vec3<u32>(13719u, 66868u, 120202u), false, -465f, false), false)), Struct_3(20066u, Struct_2(Struct_1(vec3<u32>(71266u, 4294967295u, 1u), true, -1144f, false), Struct_1(vec3<u32>(1u, 1u, 27234u), true, 573f, true), true)), Struct_3(110143u, Struct_2(Struct_1(vec3<u32>(88211u, 55670u, 4294967295u), true, 1129f, true), Struct_1(vec3<u32>(1u, 1u, 47449u), false, -654f, true), false)), Struct_3(19641u, Struct_2(Struct_1(vec3<u32>(0u, 96487u, 414u), false, 233f, false), Struct_1(vec3<u32>(4294967295u, 69665u, 107508u), true, -165f, false), false)), Struct_3(0u, Struct_2(Struct_1(vec3<u32>(42232u, 4294967295u, 1u), false, -1593f, true), Struct_1(vec3<u32>(0u, 4294967295u, 2151u), true, 1322f, false), false)), Struct_3(4294967295u, Struct_2(Struct_1(vec3<u32>(12394u, 0u, 62970u), true, 270f, false), Struct_1(vec3<u32>(64617u, 4294967295u, 62513u), true, -372f, true), false)), Struct_3(4294967295u, Struct_2(Struct_1(vec3<u32>(45017u, 1u, 103254u), true, -1263f, true), Struct_1(vec3<u32>(37749u, 4294967295u, 1u), false, -2030f, false), true)), Struct_3(0u, Struct_2(Struct_1(vec3<u32>(4294967295u, 1046u, 0u), true, 777f, true), Struct_1(vec3<u32>(1u, 56134u, 4294967295u), false, -1000f, false), false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 24890u, u_input.e, u_input.b.x)), firstTrailingBit(~vec4<u32>(4294967295u, u_input.e, global0.a.x, global0.a.x))), 78852u)), 10u)];
    global3 = array<Struct_3, 10>();
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1900f), 654f), global0.c, !all(!vec3<bool>(var_0.b.a.d, global0.b, global0.b)) | !all(!vec2<bool>(true, global0.b))));
    global2 = array<Struct_2, 11>();
    global0 = Struct_1(vec3<u32>(select(var_0.a, var_0.b.a.a.x, false), ~(var_0.b.a.a.x << (~u_input.c % 32u)), _wgslsmith_add_u32(var_0.a, ~_wgslsmith_mod_u32(63349u, u_input.c))), ~global0.a.x >= 96867u, -2089f, global0.b | all(vec2<bool>(true, false)));
    return _wgslsmith_div_f32(-329f, -714f);
}

fn func_2() -> f32 {
    global1 = _wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)));
    let var_0 = ~global0.a.x;
    global0 = Struct_1(min(abs(~vec3<u32>(global0.a.x, global0.a.x, global0.a.x)), ~abs(global0.a)), global0.d, _wgslsmith_f_op_f32(-178f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + 816f) * -921f)), global0.d);
    global3 = array<Struct_3, 10>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(2051f + _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, 1i), -vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, -14573i))))), _wgslsmith_f_op_f32(f32(-1f) * -937f));
}

fn func_1() -> bool {
    var var_0 = vec4<f32>(-1826f, _wgslsmith_f_op_f32(f32(-1f) * -755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f))), _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1529f)) + _wgslsmith_f_op_f32(-global0.c)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(reverseBits(48938i), -2147483647i, -2147483647i, u_input.a.x)))), _wgslsmith_f_op_f32(-global0.c));
    var var_1 = !(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(global0.d, false, global0.d, global0.d), global0.b), select(vec4<bool>(false, true, global0.d, true), vec4<bool>(global0.b, global0.d, global0.d, global0.d), global0.b), false), !vec4<bool>(true, true, global0.b, true), _wgslsmith_div_u32(97944u, 41833u) < _wgslsmith_mod_u32(u_input.e, 23586u)));
    var var_2 = u_input.a.xz;
    var var_3 = global2[_wgslsmith_index_u32(abs(~(~global0.a.x)), 11u)];
    return !(!all(vec3<bool>(!var_1.x, var_3.b.b, !var_1.x)));
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.c, 10u)];
    let var_1 = _wgslsmith_mod_u32(~u_input.b.x, global0.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global0.a.x, 1u), 1u), ~(vec2<u32>(u_input.e, 1u) | vec2<u32>(u_input.e, var_0.a))));
    var var_2 = firstLeadingBit(116259u);
    let var_3 = min(select(firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, arg_0, -18045i, -1i))), abs(vec4<i32>(u_input.a.x, -2147483647i, arg_0, u_input.d)) & (vec4<i32>(u_input.d, -24760i, 13877i, u_input.d) ^ vec4<i32>(2147483647i, arg_0, arg_0, u_input.a.x)), false) ^ (abs(vec4<i32>(1i, u_input.d, arg_0, -1i)) & _wgslsmith_mod_vec4_i32(-vec4<i32>(-37985i, 0i, u_input.d, -1i), vec4<i32>(-1i, u_input.a.x, -2147483647i, arg_0))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.d, -55242i, 47972i, i32(-1i) * -1i), vec4<i32>(u_input.a.x, u_input.d, _wgslsmith_mod_i32(arg_0, 0i), -35544i), -firstLeadingBit(vec4<i32>(arg_0, 1i, 4074i, 42515i))));
    global1 = -580f;
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(-2147483647i), !func_1());
    global1 = var_0.c;
    let var_1 = reverseBits(vec4<u32>(countOneBits(1u), global0.a.x, 4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 5921u << (1u % 32u)), ~(~4294967295u))));
    let var_2 = func_4(u_input.a.x, true & !((var_0.b || false) & var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<u32>(_wgslsmith_dot_vec3_u32(~var_2.a, vec3<u32>(1u, 20471u, 4294967295u)), 0u) ^ vec2<u32>(~global0.a.x, ~_wgslsmith_mult_u32(29436u, 8091u)), _wgslsmith_f_op_f32(floor(1602f)), abs(u_input.d));
}

