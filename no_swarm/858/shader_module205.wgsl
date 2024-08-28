struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: vec2<bool>;

var<private> global2: vec4<f32>;

var<private> global3: array<f32, 26> = array<f32, 26>(-360f, -102f, -1271f, -195f, 121f, -435f, 1000f, -1345f, 851f, 666f, -604f, 522f, -710f, 186f, -602f, -3144f, 923f, 1098f, 966f, -1146f, 128f, -208f, -969f, -438f, -212f, 1451f);

var<private> global4: array<vec2<bool>, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    var var_0 = -(~(u_input.a << (~0u % 32u)));
    let var_1 = Struct_2(abs(-arg_2.d.x | _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.d, global0[_wgslsmith_index_u32(27709u, 26u)], vec2<i32>(-12113i, u_input.b.x)), vec2<i32>(arg_2.b, -2147483647i))), arg_0);
    let var_2 = Struct_3(var_1, ~(~51470u) | _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(1u, arg_1.b, 4294967295u, 3414u)), ~(~vec4<u32>(7763u, arg_1.b, 38129u, arg_1.b))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a.b.a.x * arg_0.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) + -1856f)));
    var_3 = _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1242f)))))));
    return 19330u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<u32>) -> i32 {
    global1 = global4[_wgslsmith_index_u32(abs(func_3(Struct_1(global2.xx, -9579i, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(arg_2.x, 26u)])), vec2<i32>(~arg_1.a.a, arg_1.a.b.b)), arg_1, arg_1.a.b)), 21u)];
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -232f), -284f)));
    let var_1 = arg_1.a.b;
    global2 = vec4<f32>(-888f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-419f - arg_0.x))), _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(floor(var_0.x))) + _wgslsmith_f_op_f32(f32(-1f) * -512f)), _wgslsmith_f_op_f32(-global2.x)));
    var var_2 = Struct_2(~arg_1.a.a >> (4294967295u % 32u), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1000f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, -553f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -906f), _wgslsmith_div_f32(825f, 1000f)), _wgslsmith_f_op_f32(floor(1825f)) > _wgslsmith_f_op_f32(abs(var_1.c)))), -2147483647i >> ((arg_1.b << (arg_2.x % 32u)) % 32u), 676f, firstLeadingBit(abs(arg_1.a.b.d | var_1.d))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(2056i, var_1.b), ~global0[_wgslsmith_index_u32(arg_1.b, 26u)]);
}

fn func_1() -> Struct_2 {
    let var_0 = 44399u;
    let var_1 = vec3<bool>(_wgslsmith_add_i32(_wgslsmith_sub_i32(22745i, u_input.b.x), -21939i) >= _wgslsmith_sub_i32(1i, min(-u_input.b.x, abs(-1i))), global1.x, any(vec2<bool>(true, !select(global1.x, false, global1.x))));
    var var_2 = Struct_2(~(~select(abs(18937i), func_2(global2.zw, Struct_3(Struct_2(u_input.a, Struct_1(vec2<f32>(global2.x, 517f), 40091i, -1139f, global0[_wgslsmith_index_u32(4294967295u, 26u)])), 31465u), vec2<u32>(30937u, var_0)), true)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(var_0, 26u)], -500f) + vec2<f32>(687f, 664f)))))), u_input.b.x << (1u % 32u), global3[_wgslsmith_index_u32(30625u, 26u)], vec2<i32>(u_input.b.x, 21069i)));
    let var_3 = false;
    return Struct_2(u_input.b.x, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), 18690u);
    global3 = array<f32, 26>();
    var var_1 = global3[_wgslsmith_index_u32(19582u, 26u)];
    var var_2 = -_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, ~var_0.a.a, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(var_0.b, 26u)], vec2<i32>(u_input.b.x, var_0.a.a))), vec3<i32>(firstLeadingBit(12126i), func_1().a, var_0.a.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(4294967295u, ~var_0.b, var_0.b, 1u ^ var_0.b) ^ (~vec4<u32>(var_0.b, var_0.b, 59798u, 1u) >> (vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b) % vec4<u32>(32u)))), var_0.a.b.c, var_0.a.b.c, 9158u | abs(~_wgslsmith_add_u32(4294967295u, var_0.b)), var_2.x);
}

