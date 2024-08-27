struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<i32> = vec3<i32>(4862i, -11462i, 2147483647i);

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> bool {
    let var_0 = arg_1.d;
    var var_1 = u_input.a.xy;
    var var_2 = _wgslsmith_f_op_f32(step(-1180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b), _wgslsmith_div_f32(arg_1.d.a.b.b, arg_1.a.a.b.b))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = Struct_2(global0.b, global0.a);
    let var_4 = arg_1.d;
    return arg_1.a.a.a.a.x;
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_4(Struct_2(global0.a, global0.a), ~select(2147483647i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(-10940i, global1.x), u_input.c.xz), -13695i, all(global0.b.a.zw)), func_3(14221u, Struct_5(Struct_4(Struct_2(global0.b, Struct_1(vec4<bool>(false, true, global0.b.a.x, global0.b.a.x), global0.a.b)), u_input.a.x, false), arg_0.a, arg_0.a, Struct_4(Struct_2(Struct_1(vec4<bool>(global0.b.a.x, global0.b.a.x, global0.a.a.x, global0.b.a.x), global0.b.b), Struct_1(vec4<bool>(global0.b.a.x, global0.b.a.x, true, false), -241f)), 2147483647i, global0.b.a.x)))), !(!any(!vec3<bool>(false, global0.b.a.x, global0.a.a.x))));
    global1 = -u_input.c;
    global1 = max(vec3<i32>(var_0.b, var_0.b, ~(-var_0.b)), u_input.a);
    var var_1 = u_input.b.wwx;
    global1 = -u_input.c;
    return abs(7292u);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> vec4<bool> {
    global1 = u_input.c;
    let var_0 = max(_wgslsmith_mod_i32(2147483647i << ((arg_2.a & 49797u) % 32u), global1.x), ((global1.x >> (52416u % 32u)) & arg_0) & firstLeadingBit(1i)) & _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 42828i, global1.x) | vec4<i32>(1i, arg_0, -11899i, u_input.c.x), -vec4<i32>(-1i, global1.x, arg_0, 0i)), global1.x));
    let var_1 = u_input.d.x;
    let var_2 = 47334i;
    var var_3 = vec4<bool>(!global0.a.a.x, global0.b.a.x, !global0.a.a.x, select(true, any(!(!global0.a.a)), select(!any(global0.b.a), select(u_input.d.x, 77584u, global0.b.a.x) >= ~var_1, !global0.b.a.x)));
    return !vec4<bool>(true, all(select(select(vec3<bool>(var_3.x, false, false), vec3<bool>(var_3.x, true, true), vec3<bool>(false, var_3.x, var_3.x)), vec3<bool>(true, global0.b.a.x, global0.b.a.x), var_3.zzw)), var_3.x, var_3.x);
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = u_input.b.x;
    global2 = -1i;
    return Struct_2(Struct_1(!select(!vec4<bool>(false, global0.b.a.x, false, false), global0.b.a, 242i <= global1.x), global0.b.b), Struct_1(func_4(global1.x, _wgslsmith_mult_u32(u_input.b.x, func_2(Struct_3(4294967295u))), Struct_3(~u_input.b.x)), 422f));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.b, global0.b.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b, global0.b.b)))), global0.a.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b, -1357f, arg_1.a.b, global0.a.b) * vec4<f32>(152f, 158f, 710f, var_0.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(881f, 1541f, 1671f, -223f), vec4<f32>(-487f, var_0.b, -723f, -547f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b, var_0.b, 1023f, -176f) - vec4<f32>(553f, arg_1.b.b, -1065f, global0.b.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, global0.b.b, var_0.b, global0.a.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.b, -587f, arg_1.b.b, 788f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1738f, -1215f, -445f, arg_1.a.b) - vec4<f32>(var_0.b, 163f, var_0.b, var_0.b)))))), var_0.a));
    var var_2 = global0.a.a.yxx;
    let var_3 = !var_2.x;
    var_0 = arg_1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-588f)))), _wgslsmith_f_op_f32(trunc(var_1.x)))) - 456f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.b, Struct_1(!select(!global0.a.a, global0.b.a, global0.b.a.x), _wgslsmith_f_op_f32(func_5(_wgslsmith_clamp_vec2_i32(reverseBits(global1.xz), abs(vec2<i32>(u_input.c.x, -240i)), vec2<i32>(-11492i, global1.x)), func_1(u_input.d.x, -1605f)))));
    var var_0 = ~_wgslsmith_add_vec2_u32(~u_input.d.zx, u_input.d.xx);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, max(~global1.x, 49556i), -12767i, _wgslsmith_dot_vec2_i32(vec2<i32>(15326i, global1.x), u_input.a.zx) ^ _wgslsmith_mult_i32(global1.x, u_input.c.x)), vec4<i32>(19793i, global1.x, u_input.c.x, min(1263i, _wgslsmith_mod_i32(2147483647i, global1.x)))) << (0u % 32u);
    var var_2 = _wgslsmith_mod_u32(max(_wgslsmith_mod_u32(var_0.x, var_0.x), 4523u), firstLeadingBit(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d.x, 0u), u_input.d.yxw), vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(0u, var_0.x), max(1u, 0u)))));
    let var_3 = true || !func_4(-37753i, _wgslsmith_mod_u32(4294967295u, 18205u), Struct_3(~49990u)).x;
    var var_4 = Struct_4(func_1(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2290f * -736f))))), ((i32(-1i) * -u_input.c.x) | 108187i) ^ _wgslsmith_add_i32(u_input.a.x << (1u % 32u), global1.x), !any(vec4<bool>(true, false, var_3, global0.a.a.x)));
    var_0 = u_input.b.yy;
    var_0 = u_input.d.ww;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -24316i);
}

