struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(ceil(global0.b)), global0.a, u_input.c.x);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    global0 = func_1(vec3<bool>(all(vec3<bool>(true, true, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), false));
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(round(global0.a)), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28736i, u_input.b.x), min(u_input.c, vec2<i32>(-1i, global0.c)))));
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)), 703f)) * -816f), arg_1);
    global0 = func_1(vec3<bool>(true, !all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true)), !any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~abs(~27257u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(max(vec3<u32>(arg_0.x, arg_0.x, 133119u), vec3<u32>(arg_0.x, 3526u, 98621u)), select(vec3<u32>(arg_0.x, 4294967295u, 5421u), vec3<u32>(arg_0.x, 75933u, 885u), true)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 23436u, 1u), vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(0u, 0u, 20102u))), ~_wgslsmith_mod_u32(firstTrailingBit(0u), _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 29815u)), select(max(arg_0.x, arg_0.x | 0u), select(arg_0.x, 28742u, true) >> ((arg_0.x << (12404u % 32u)) % 32u), true)), countOneBits(select(vec4<u32>(1u, 111726u, 34272u, 50239u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u) | vec4<u32>(arg_0.x, 83347u, arg_0.x, 4294967295u), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true))) ^ ~(select(vec4<u32>(1u, 4786u, arg_0.x, arg_0.x), vec4<u32>(0u, 86950u, 13611u, 52540u), true) | abs(vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x))));
    return -16920i;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global0 = arg_1.b;
    let var_0 = func_1(!vec3<bool>(!(global0.a <= -835f), true, false | all(vec4<bool>(arg_2, false, arg_2, arg_2))));
    var var_1 = 4294967295u;
    let var_2 = var_0;
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_3(arg_1.a, _wgslsmith_add_i32(arg_1.b.c, ~var_0.c)), firstLeadingBit(2147483647i), 1i), _wgslsmith_clamp_vec3_i32(arg_1.c, reverseBits(arg_1.c), ~vec3<i32>(arg_1.e.c, 2147483647i, abs(global0.c))));
    return Struct_2(firstTrailingBit(countOneBits(~arg_1.a)), func_1(!vec3<bool>(all(vec4<bool>(true, false, false, true)), false, false)), vec3<i32>(min(~_wgslsmith_clamp_i32(2147483647i, var_2.c, global0.c), var_2.c), var_2.c, var_3.x), ~vec3<u32>(1u, ~_wgslsmith_dot_vec2_u32(arg_1.d.zy, arg_1.a), ~6343u), Struct_1(-134f, global0.a, -43593i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(~1u, Struct_2(select(select(~vec2<u32>(4294967295u, 19130u), vec2<u32>(1u, 0u), true), ~firstTrailingBit(vec2<u32>(65133u, 4294967295u)), (global0.b > global0.b) != select(false, true, false)), Struct_1(_wgslsmith_f_op_f32(-294f - -1822f), global0.a, -1400i), -vec3<i32>(min(global0.c, 2147483647i), -10822i, -40062i), select(~vec3<u32>(4294967295u, 58340u, 4294967295u), ~vec3<u32>(24771u, 34663u, 4294967295u), true), func_1(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), false);
    let var_1 = func_2(firstTrailingBit(min(countOneBits(50303u) ^ var_0.d.x, _wgslsmith_clamp_u32(func_2(16598u, var_0, false).a.x, ~var_0.a.x, abs(var_0.d.x)))), var_0, all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true))));
    let var_2 = func_2(~countOneBits(_wgslsmith_add_u32(109968u, min(68331u, var_0.a.x))), var_1, all(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) - var_2.b.a)) - -1525f), _wgslsmith_f_op_f32(-func_2(min(_wgslsmith_sub_u32(var_1.a.x, 4294967295u), var_2.d.x << (4294967295u % 32u)), func_2(var_1.d.x, var_2, any(vec4<bool>(false, false, false, false))), all(vec3<bool>(true, true, true))).e.b), -1i);
    var var_3 = var_1.c.xz;
    global0 = func_2(min(62606u, 18147u), func_2(_wgslsmith_add_u32(var_0.a.x, ~0u) | _wgslsmith_clamp_u32(29769u, var_2.d.x, _wgslsmith_sub_u32(var_2.a.x, 1u)), var_1, (_wgslsmith_f_op_f32(1843f + var_0.b.b) < _wgslsmith_f_op_f32(-var_0.e.b)) | false), _wgslsmith_mod_i32(-30490i, func_2(var_0.a.x, func_2(var_2.d.x, Struct_2(vec2<u32>(0u, var_0.d.x), var_0.e, vec3<i32>(-2147483647i, 0i, -1i), var_0.d, Struct_1(-134f, var_1.b.a, global0.c)), false), true).b.c) != var_3.x).e;
    var var_4 = 24822u;
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f - var_0.b.a) + _wgslsmith_f_op_f32(global0.b * -1014f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(floor(global0.b))))) * _wgslsmith_f_op_f32(max(global0.b, -1104f)))));
    global0 = func_2(~(~func_2(var_1.a.x, Struct_2(vec2<u32>(var_1.d.x, var_1.d.x), Struct_1(var_0.b.a, var_1.e.a, 9277i), var_1.c, var_0.d, var_0.b), false).d.x | abs(var_1.a.x)), var_0, all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))) | select(all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), true, !select(false, true, false))).b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(13777u), 337f, var_0.e.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a, global0.a, var_2.b.b) + vec3<f32>(var_5, var_1.e.a, var_5)), vec3<f32>(_wgslsmith_f_op_f32(step(var_5, -370f)), -680f, _wgslsmith_f_op_f32(-var_5))))), vec3<f32>(var_5, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(767f - var_5)), global0.b)), func_1(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).a));
}

