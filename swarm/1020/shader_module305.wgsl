struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 21619u;

var<private> global1: Struct_3 = Struct_3(-1000f, Struct_1(0i, 0u, vec2<u32>(0u, 1u)));

var<private> global2: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    global0 = 3449u;
    global2 = -min(~(~arg_0), (-arg_0 & firstTrailingBit(-16051i)) & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, global1.b.a), u_input.b));
    let var_0 = ~abs(vec4<i32>(102728i << (global1.b.b % 32u), arg_0, u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, arg_0)) ^ vec4<i32>(select(u_input.a, u_input.b.x, false), arg_0, 1i, u_input.b.x));
    return -1389f;
}

fn func_2() -> vec3<f32> {
    global1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(8754i)) * global1.a), _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(sign(-691f))))), Struct_1(global1.b.a & 0i, global1.b.c.x, global1.b.c));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1207f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1483f))), 481f)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-192f, 1882f, false))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-553f)), 1212f)) * vec3<f32>(_wgslsmith_f_op_f32(min(946f, global1.a)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1.b.a)) - _wgslsmith_f_op_f32(select(var_0.x, 480f, true))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> u32 {
    global1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) - -177f))), global1.b);
    global0 = 0u;
    global0 = _wgslsmith_dot_vec3_u32(select(~(~min(vec3<u32>(arg_1.c.c.c.x, 31443u, 22224u), vec3<u32>(0u, 1u, global1.b.c.x))), max(~vec3<u32>(1u, arg_1.c.b.c.x, 17807u), vec3<u32>(8583u ^ arg_1.c.c.b, 62389u >> (arg_1.c.c.c.x % 32u), 1347u)), vec3<bool>(all(select(vec4<bool>(arg_1.c.a.x, false, arg_1.c.a.x, arg_1.c.e), vec4<bool>(true, true, true, arg_1.c.e), arg_1.c.a)), true, arg_1.c.a.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(min(0u, global1.b.c.x), _wgslsmith_clamp_u32(global1.b.b, arg_1.c.b.b, arg_1.c.c.b), global1.b.c.x), ~vec3<u32>(arg_1.c.b.c.x, global1.b.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(91701u, arg_1.c.b.b, 0u, global1.b.c.x), vec4<u32>(4294967295u, arg_1.c.c.c.x, arg_1.c.b.b, 15970u)))));
    let var_0 = select(!vec2<bool>(arg_1.c.e, any(vec4<bool>(arg_1.c.a.x, arg_1.c.e, arg_1.c.a.x, false))), arg_1.c.a.xy, arg_1.c.a.xy);
    let var_1 = ~arg_1.c.b.c;
    return 0u;
}

fn func_1() -> Struct_1 {
    global0 = 29075u;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a, -1266f, global1.a, -192f))), vec4<f32>(global1.a, _wgslsmith_div_f32(global1.a, global1.a), _wgslsmith_f_op_f32(-global1.a), global1.a), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(996f, global1.a, -1584f, global1.a)))))));
    var var_1 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global1.a, global1.a)), _wgslsmith_f_op_f32(-2945f + global1.a), global1.a) - var_0.xxz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 300f, var_0.x))))), Struct_4(-561f, select(vec3<i32>(u_input.b.x, u_input.b.x | global1.b.a, min(global1.b.a, -8354i)), ~_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 56253i)), true), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)), Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(0i, -28631i)), 1u, ~vec2<u32>(global1.b.b, 34356u)), Struct_1(global1.b.a, max(global1.b.b, global1.b.b), global1.b.c), vec4<i32>(u_input.b.x, global1.b.a, countOneBits(u_input.b.x), u_input.b.x), false)));
    var_1 = 30011u;
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.c.x, 1u, global1.b.c.x, 4294967295u), vec4<u32>(global1.b.b, 82442u, global1.b.b, global1.b.b)), ~(~vec4<u32>(1u, global1.b.c.x, 1281u, 1u))) ^ (~_wgslsmith_add_vec4_u32(vec4<u32>(global1.b.b, 1u, global1.b.c.x, 77556u), vec4<u32>(global1.b.c.x, global1.b.c.x, 4294967295u, 14872u)) & vec4<u32>(global1.b.c.x, global1.b.b, ~0u, global1.b.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.b, 106336u, global1.b.b, 4294967295u) & (vec4<u32>(0u, 82698u, 4294967295u, global1.b.c.x) | vec4<u32>(4294967295u, 43316u, global1.b.c.x, global1.b.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(79628u, 69975u, global1.b.b, global1.b.c.x) ^ vec4<u32>(1u, 43986u, global1.b.b, 45133u), min(vec4<u32>(41072u, global1.b.b, global1.b.c.x, 1u), vec4<u32>(global1.b.c.x, global1.b.b, 24840u, global1.b.b))), ~vec4<u32>(global1.b.b, 17859u, 26628u, global1.b.b)));
    return Struct_1(global1.b.a, _wgslsmith_sub_u32(~abs(1201u), _wgslsmith_dot_vec2_u32(var_2.zx, var_2.yx)), ~global1.b.c >> ((firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.b.b, 4794u), vec2<u32>(69391u, 4294967295u))) << (firstTrailingBit(global1.b.c) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, true, true, u_input.b.x != u_input.a);
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.a)))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(126f, 1033f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a)))));
    let var_3 = Struct_2(vec4<bool>(var_0.x, !((false && var_0.x) & (global1.a == global1.a)), all(vec4<bool>(false, var_0.x, true, false)), all(vec3<bool>(any(var_0.yzw), true | var_0.x, 2439f != global1.a))), Struct_1(var_1.a >> (1u % 32u), select(select(1u, 1u, var_0.x), global1.b.b, true) << (4294967295u % 32u), ~(vec2<u32>(var_1.b, global1.b.c.x) | ~vec2<u32>(5046u, 3743u))), Struct_1(u_input.b.x, ~(~abs(global1.b.c.x)), var_1.c), ~(~(~(-vec4<i32>(var_1.a, 0i, global1.b.a, -38032i)))), (abs(func_1().c.x) < 12793u) == false);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-2187i), min(~(~vec4<i32>(var_4.b.a, var_3.b.a, 8306i, 1i)), var_4.d), ~var_4.c.c.x);
}

