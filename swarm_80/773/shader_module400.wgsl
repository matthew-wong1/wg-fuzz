struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-2131f, 1000f), -23053i, 0u);

var<private> global2: vec3<i32> = vec3<i32>(0i, -3343i, 2147483647i);

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i);

var<private> global4: i32 = 1i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_3(_wgslsmith_clamp_i32(-24677i, global2.x & ~(-6180i), _wgslsmith_add_i32(firstTrailingBit(0i), -1i)), select(vec4<bool>(global0.a, true, global0.a, !(!global0.a)), select(select(select(vec4<bool>(global0.a, global0.a, false, false), vec4<bool>(true, true, global0.a, global0.a), true), select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global0.a, global0.a), false), vec4<bool>(true, global0.a, true, global0.a)), vec4<bool>(4294967295u > u_input.b.x, global0.a, all(vec2<bool>(false, global0.a)), global0.a || global0.a), vec4<bool>(true, false, 0i > global1.b, -1i <= global2.x)), !(!select(vec4<bool>(global0.a, true, global0.a, false), vec4<bool>(global0.a, global0.a, false, true), global0.a))), _wgslsmith_mod_u32(0u, abs(min(~global0.b.x, _wgslsmith_mod_u32(global0.b.x, global0.b.x)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_f_op_f32(-428f + _wgslsmith_f_op_f32(min(global0.c, 186f)))))), _wgslsmith_f_op_f32(f32(-1f) * -936f));
    global2 = vec3<i32>(-1i) * -global3.wxz;
    var var_2 = var_0;
    var var_3 = Struct_2(global0.a, u_input.b, _wgslsmith_f_op_f32(-743f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(ceil(global1.a.x)))))));
    return true;
}

fn func_2() -> u32 {
    var var_0 = global3.wx >> (u_input.b.zz % vec2<u32>(32u));
    global0 = Struct_2(!func_3(), global0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.a.x, global0.c))))));
    var var_1 = -83690i;
    global0 = Struct_2(!all(vec2<bool>(true, true)), u_input.b, global0.c);
    global2 = vec3<i32>(countOneBits(-3718i), -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 1i, u_input.a), global3.zyw, global3.wzy)), global3.www), 74852i));
    return u_input.b.x;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    global0 = Struct_2(true, vec3<u32>(func_2(), _wgslsmith_clamp_u32(u_input.b.x, ~(u_input.b.x | u_input.b.x), arg_0), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, arg_0), vec4<u32>(u_input.b.x, u_input.b.x, 14288u, 4294967295u)) | ~4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1404f, _wgslsmith_div_f32(1183f, 1000f), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-235f)))))));
    let var_0 = arg_1;
    let var_1 = ~(~global0.b.xx);
    let var_2 = global1.b;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -384f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), -1035f))), min(~_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global1.b), global2.zz), u_input.a) >> (~1u % 32u), arg_0);
    return 48196u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true | all(!(!vec2<bool>(global0.a, global0.a))), all(vec4<bool>(false, !(!global0.a), false, global0.a)), global0.a, !select(global0.a, true, func_1(1u, Struct_2(global0.a, global0.b, 2439f), vec3<f32>(global1.a.x, 632f, global1.a.x)) >= global1.c));
    let var_1 = select(var_0.wx, var_0.xz, var_0.xw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -1176f, global1.a.x, -982f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2347f, global1.a.x, -159f, -933f)))), global0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, _wgslsmith_div_f32(322f, -462f), 2115f, _wgslsmith_f_op_f32(global0.c - -2516f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.a.x, global1.a.x, 306f))))), _wgslsmith_dot_vec2_u32(u_input.b.zz, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(0u, global0.b.x)), u_input.b.xz), firstTrailingBit(global0.b.yz), vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c), global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))));
}

