struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10>;

var<private> global1: array<vec3<f32>, 11>;

var<private> global2: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32) -> vec2<u32> {
    global1 = array<vec3<f32>, 11>();
    global2 = ~vec4<u32>(~_wgslsmith_mult_u32(u_input.b >> (global2.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(56828u, global2.x), global2.zw)), global2.x ^ ~0u, global2.x, 4294967295u);
    global0 = array<vec3<f32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(max(-104f, _wgslsmith_f_op_f32(-arg_0)));
    global1 = array<vec3<f32>, 11>();
    return global2.yy;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> u32 {
    global1 = array<vec3<f32>, 11>();
    var var_0 = Struct_5(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 31904u, 1u, 4294967295u), vec4<u32>(~(~1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global2.x, arg_2.a, 4294967295u)), _wgslsmith_div_vec3_u32(global2.wxz, vec3<u32>(4294967295u, arg_1.c.a, u_input.b))), 38046u, 58089u)));
    let var_1 = arg_1;
    var var_2 = u_input.c > min(2147483647i, -4948i);
    let var_3 = Struct_4(var_1.c);
    return 0u;
}

fn func_2() -> u32 {
    global2 = abs(vec4<u32>(func_3(true, Struct_3(Struct_2(vec4<bool>(false, false, true, false), vec3<i32>(1i, u_input.c, 0i), vec4<i32>(u_input.c, 0i, -605i, 1i), vec4<f32>(847f, 475f, 134f, 264f)), firstTrailingBit(22766u), Struct_1(u_input.b, vec4<bool>(false, true, false, true), -1417f, -1215f, -603f)), Struct_1(u_input.b, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(trunc(-450f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(170f))), global2.x), global2.x, _wgslsmith_mod_u32(func_1(-2200f).x, global2.x), 4294967295u));
    global0 = array<vec3<f32>, 10>();
    global1 = array<vec3<f32>, 11>();
    global0 = array<vec3<f32>, 10>();
    var var_0 = Struct_3(Struct_2(vec4<bool>(true, all(vec4<bool>(false, true, false, false)) | true, !all(vec3<bool>(false, false, false)), true), vec3<i32>(~u_input.c, u_input.a | u_input.a, u_input.a), max(vec4<i32>(u_input.a ^ u_input.a, 0i, 1i, 1i ^ u_input.a), vec4<i32>(u_input.c, ~1i, countOneBits(u_input.c), u_input.a)), vec4<f32>(799f, 1476f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2917f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2130f)), 1383f))), ~global2.x, Struct_1(abs(24856u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), -889f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-713f)) - _wgslsmith_f_op_f32(step(104f, 393f))), 659f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -810f)))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-391f))) * _wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_div_f32(var_0, var_0);
    var var_2 = (1u ^ ~_wgslsmith_mult_u32(select(45154u, global2.x, true), ~44997u)) > u_input.b;
    let var_3 = global2.x;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1528f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-547f, var_0)), var_0, all(vec3<bool>(true, true, true)))), -179f);
    var_2 = var_0 < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -190f)))));
    let var_5 = var_0;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1847f - var_0), var_5))));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_5, 1972f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(717f, -648f)) * _wgslsmith_f_op_f32(var_5 - var_5)), -1417f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-423f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f + var_5)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_5))), var_5));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, abs(min(_wgslsmith_mult_vec2_u32(global2.zz, func_1(256f)), ~vec2<u32>(4294967295u, u_input.b))), -4606i, -(-24625i >> (_wgslsmith_div_u32(u_input.b, global2.x) % 32u)), func_2());
}

