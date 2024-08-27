struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(259f, 1000f, 704f, 245f);

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    global2 = vec4<u32>(firstTrailingBit(~min(23685u, ~0u)), _wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.c, global2.x) & 4294967295u, ~4294967295u), 32554u, u_input.b);
    var var_0 = ~(reverseBits(firstLeadingBit(vec2<i32>(0i, -9675i))) & select(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), vec2<i32>(_wgslsmith_mod_i32(u_input.a, -2147483647i), reverseBits(u_input.a)), all(vec2<bool>(global1.x, global1.x))));
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(ceil(556f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-221f, _wgslsmith_f_op_f32(select(-292f, arg_2.b, true)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(878f * 114f)))))));
    var var_1 = Struct_2(Struct_1(~71303u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, -952f)))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(ceil(arg_0.c))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_2.b)))), global0.wwx);
    var var_2 = true;
    return global0.x;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, 1235f)), _wgslsmith_f_op_f32(2301f * 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(global2.x, 240f, 267f), 302f, Struct_1(0u, -600f, -1224f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), arg_0))));
    var var_1 = 56646u;
    return 575f;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_1.c)) - arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * arg_1.b)), _wgslsmith_div_f32(566f, -1013f))));
    var var_0 = false;
    var var_1 = (0i ^ _wgslsmith_sub_i32(min(2147483647i, 2211i), -u_input.a)) | ~_wgslsmith_mod_i32(-35365i, -(u_input.a << (4308u % 32u)));
    var var_2 = ~(~_wgslsmith_clamp_vec2_u32(~reverseBits(global2.xz), abs(~vec2<u32>(12120u, 37126u)), max(vec2<u32>(global2.x, 79925u), firstTrailingBit(vec2<u32>(1u, 21410u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -229f), _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-arg_2))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(global0.wz, vec2<f32>(2036f, -858f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, 1656f))))), vec2<bool>(select(true, !(false != global1.x), false), false)));
    return vec4<u32>(~arg_1.a, ~arg_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(select(arg_1.a, ~8417u, true), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 63517u, u_input.b, 23840u), ~vec4<u32>(global2.x, global2.x, 0u, 68369u))), ~(~global2.zxw)), _wgslsmith_clamp_u32(~firstLeadingBit(arg_1.a) & 4294967295u, arg_3.x & _wgslsmith_sub_u32(~global2.x, var_2.x | var_2.x), _wgslsmith_clamp_u32(min(~arg_1.a, _wgslsmith_mult_u32(arg_1.a, 0u)), 13178u, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, (global2.x ^ 1u) << (18250u % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(24957u, global2.x, 36906u, u_input.c), vec4<u32>(global2.x, u_input.b, 0u, global2.x)), max(global2.x << (global2.x % 32u), ~4294967295u)) << (vec4<u32>(41093u, 1u, 4294967295u << ((global2.x | 1u) % 32u), u_input.c) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, global2.x, 15551u, global2.x)), ~vec4<u32>(u_input.b, 0u, global2.x, global2.x) | min(vec4<u32>(u_input.c, u_input.b, 1u, global2.x), vec4<u32>(global2.x, 0u, u_input.b, u_input.b))));
    global2 = ~_wgslsmith_mult_vec4_u32(min(~vec4<u32>(global2.x, 4294967295u, 1u, 10036u), reverseBits(vec4<u32>(global2.x, 31104u, u_input.b, 0u))), reverseBits(vec4<u32>(global2.x, 54876u, u_input.c, 0u)) & (func_1(global1.x, Struct_1(u_input.c, global0.x, -900f), global0.x, global2.xy) | ~vec4<u32>(u_input.b, u_input.b, 0u, 1u)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 562f, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, 240f, global0.x))))))));
    let var_0 = !global1.zzz;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.yyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.wyz))) + _wgslsmith_div_vec3_f32(vec3<f32>(583f, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(abs(global0.zwz)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -360f), var_1.x), _wgslsmith_f_op_f32(step(-1185f, _wgslsmith_f_op_f32(step(-943f, global0.x)))), Struct_1(~0u, _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -525f)))), 451f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1711f, global0.x, u_input.e != -2147483647i)))), global0.x));
    let var_2 = Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1382f), global0.x)) * global0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(517f - 109f)))), global0.wzx);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(52250i), global2.xz);
}

