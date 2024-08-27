struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = ~vec3<u32>(arg_1.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.d, 1u), arg_1.a.xw), 18315u);
    var_0 = ~(abs(~arg_1.a.www) | vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), arg_1.a.x, _wgslsmith_mult_u32(~82741u, arg_1.d & 77301u)));
    var var_1 = arg_1;
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(arg_1.a, vec4<bool>(!arg_1.c.x, !any(vec2<bool>(true, false)), false, true), vec4<bool>(!(true | func_3(vec4<f32>(581f, 597f, 505f, -1567f), Struct_1(arg_2.a, arg_2.c, vec4<bool>(false, true, arg_0, arg_2.b.x), 93641u, arg_0), arg_1.b.x)), !arg_2.b.x && (true == all(vec3<bool>(arg_0, true, arg_0))), _wgslsmith_sub_u32(~arg_2.a.x, ~2037u) != (reverseBits(arg_2.d) & _wgslsmith_div_u32(1u, 4294967295u)), true & all(select(vec2<bool>(false, arg_2.c.x), vec2<bool>(arg_1.c.x, false), vec2<bool>(false, true)))), 772u, !func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, 705f, -203f, -282f))), Struct_1(arg_1.a, vec4<bool>(arg_2.c.x, arg_2.e, false, arg_1.b.x), vec4<bool>(false, arg_0, false, arg_1.c.x), _wgslsmith_dot_vec3_u32(arg_2.a.yyy, arg_2.a.wyy), true), true));
    let var_1 = Struct_1(arg_1.a, arg_2.c, !(!arg_2.c), arg_2.d, false);
    var_0 = Struct_1(~vec4<u32>(abs(var_0.a.x), firstTrailingBit(var_1.a.x) ^ 1u, _wgslsmith_clamp_u32(arg_1.d, arg_2.a.x, arg_2.d) | ~9328u, abs(_wgslsmith_div_u32(var_0.a.x, 9869u))), arg_1.b, var_0.c, ~_wgslsmith_dot_vec2_u32(arg_1.a.yz << (vec2<u32>(0u, 28667u) % vec2<u32>(32u)), ~var_0.a.zz), true | any(select(arg_1.b.www, vec3<bool>(true, false, true), vec3<bool>(true, var_1.e, var_1.c.x))));
    var_0 = Struct_1(~_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(arg_2.a, arg_2.a), var_1.a), !arg_1.b, vec4<bool>(any(select(arg_2.c, var_0.b, var_1.b)), arg_2.b.x, true, var_0.c.x), var_0.a.x, true);
    let var_2 = ~u_input.a;
    return select(!(!(true != (true | arg_0))), true & arg_0, arg_0);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = !select(true, arg_1.c.x, !(any(vec4<bool>(true, arg_2.x, true, arg_1.b.x)) && func_2(false, arg_1, Struct_1(vec4<u32>(arg_1.d, arg_1.d, arg_1.a.x, 1u), arg_1.b, vec4<bool>(arg_2.x, false, false, true), 18956u, false))));
    var_0 = all(select(arg_1.b.xwx, select(select(vec3<bool>(arg_2.x, arg_1.b.x, arg_2.x), vec3<bool>(true, arg_2.x, arg_2.x), false), select(vec3<bool>(arg_1.e, true, false), arg_1.c.xwx, arg_1.c.x), true), arg_1.b.wxw)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(2697u, ~4294967295u, ~1u), ~arg_1.a.zxx ^ (vec3<u32>(arg_1.a.x, 0u, arg_1.a.x) >> (arg_1.a.wwx % vec3<u32>(32u)))) >= ~arg_1.a.x);
    let var_1 = vec4<u32>(4970u, countOneBits(_wgslsmith_mult_u32(select(arg_1.d, firstTrailingBit(arg_1.a.x), arg_2.x), countOneBits(abs(arg_1.a.x)))), max(~arg_1.d, ~(~abs(1u))), ~0u);
    var var_2 = -reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, 4282i, -30507i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i) >> (arg_1.a % vec4<u32>(32u))));
    let var_3 = _wgslsmith_dot_vec3_u32(arg_1.a.yyw, ~(~vec3<u32>(0u << (0u % 32u), 20365u, ~4294967295u)));
    return (var_1.x << (58507u % 32u)) << (~(1u ^ var_1.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(max(_wgslsmith_sub_u32(max(~42587u, func_1(1112f, Struct_1(vec4<u32>(51156u, 4294967295u, 18727u, 0u), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), 1u, true), vec2<bool>(false, true))), 1u), firstTrailingBit(~(~34235u))), ~(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(25921u, 16954u, 4294967295u, 9778u)), vec4<u32>(10019u, 11583u, 0u, 4294967295u)) | ~66389u));
    var var_1 = !all(vec2<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))));
    var var_2 = _wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(-2493f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2627f + -1046f), _wgslsmith_f_op_f32(ceil(235f)))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1017f), _wgslsmith_f_op_f32(sign(1f)), true)));
    var_1 = false;
    let var_3 = Struct_1(vec4<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(17150u, 1u), vec2<u32>(1u, 68199u)) >> (1u % 32u)), firstTrailingBit(min(~31741u, max(1u, 0u))), 42675u, _wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(24366u, 4294967295u), vec2<u32>(4294967295u, 4730u)), 1u))), vec4<bool>(true, !(true == func_3(vec4<f32>(381f, -1000f, -407f, -329f), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), 37947u, false), true)), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), !any(vec4<bool>(true, true, true, true))), vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), false, true), ~(~0u), any(vec2<bool>(u_input.a < (2147483647i >> (1u % 32u)), false)));
    var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, func_1(239f, Struct_1(var_3.a, vec4<bool>(var_3.e, var_3.b.x, true, var_3.c.x), var_3.b, 0u, var_3.e), var_3.c.ww) >> (~14305u % 32u)), _wgslsmith_mod_vec2_u32(var_3.a.zw, ~vec2<u32>(var_3.a.x, 4294967295u))) <= ~var_3.d;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1948f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(270f)), _wgslsmith_f_op_f32(-1040f + -236f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1211f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -366f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

