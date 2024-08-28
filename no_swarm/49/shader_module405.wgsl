struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_4(_wgslsmith_sub_vec3_u32(u_input.a.yxy >> (vec3<u32>(countOneBits(u_input.a.x), select(u_input.a.x, 0u, true), ~0u) % vec3<u32>(32u)), abs(vec3<u32>(arg_1.a.x, 4294967295u, arg_1.b.d.x))), !global0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(-633f)), _wgslsmith_f_op_f32(141f - arg_1.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1354f), _wgslsmith_div_f32(-426f, arg_1.b.a), _wgslsmith_f_op_f32(-684f - arg_1.b.a)))), vec3<f32>(_wgslsmith_f_op_f32(floor(457f)), _wgslsmith_f_op_f32(ceil(-1104f)), arg_1.b.a)), Struct_2(Struct_1(-3248f, select(arg_1.b.e, arg_1.b.b, !vec2<bool>(false, global0.x)), true, ~vec2<u32>(4294967295u, 0u), !vec2<bool>(true, global0.x)), arg_0.x));
    global0 = select(select(vec2<bool>(false, var_0.b), vec2<bool>(countOneBits(arg_0.x) == ~var_0.d.b, max(-7309i, 75696i) <= var_0.d.b), arg_1.b.e), vec2<bool>(var_0.d.a.c, !any(select(vec3<bool>(true, var_0.d.a.b.x, arg_1.b.c), vec3<bool>(true, var_0.d.a.c, global0.x), false))), select(arg_1.b.b, select(vec2<bool>(arg_0.x <= arg_0.x, true), select(vec2<bool>(true, true), !vec2<bool>(true, global0.x), true), select(!vec2<bool>(true, global0.x), arg_1.b.e, var_0.b)), vec2<bool>(global0.x, !all(vec3<bool>(var_0.b, false, true)))));
    var var_1 = _wgslsmith_sub_u32(~var_0.a.x, arg_1.a.x) << (abs(reverseBits(u_input.a.x)) % 32u);
    var_0 = Struct_4(vec3<u32>(abs(~16238u), var_0.a.x, arg_1.a.x), all(vec2<bool>(u_input.a.x != var_0.a.x, true)) || var_0.d.a.b.x, _wgslsmith_f_op_vec3_f32(floor(var_0.c)), Struct_2(Struct_1(arg_1.b.a, select(select(arg_1.b.b, vec2<bool>(false, var_0.b), var_0.d.a.b), select(vec2<bool>(arg_1.b.c, arg_1.b.e.x), vec2<bool>(var_0.d.a.e.x, global0.x), true), var_0.d.a.a >= -902f), all(select(vec3<bool>(global0.x, arg_1.b.b.x, false), vec3<bool>(var_0.d.a.e.x, true, var_0.b), vec3<bool>(false, var_0.d.a.b.x, arg_1.b.e.x))), arg_1.b.d, select(arg_1.b.b, arg_1.b.b, arg_1.b.b)), firstTrailingBit(12011i)));
    let var_2 = arg_1.b;
    return var_0.c.x;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global0 = !vec2<bool>(true || (true && all(vec2<bool>(global0.x, global0.x))), global0.x);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f + _wgslsmith_f_op_f32(func_3(abs(vec4<i32>(24113i, arg_0.x, arg_0.x, -1i)), Struct_3(vec2<u32>(54112u, u_input.a.x), Struct_1(-555f, vec2<bool>(true, global0.x), true, u_input.a.wx, vec2<bool>(global0.x, global0.x))))))), !(!select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(false, true)), !vec2<bool>(global0.x, global0.x), !vec2<bool>(true, global0.x))), global0.x, u_input.a.wy, !(!select(vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), global0.x), vec2<bool>(global0.x, global0.x))));
    let var_1 = _wgslsmith_mod_u32(var_0.d.x, ~69277u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1457f, var_0.a)))))) * 1819f));
    global0 = !(!(!select(select(var_0.b, var_0.e, global0.x), var_0.e, !vec2<bool>(var_0.e.x, var_0.e.x))));
    return u_input.a.x;
}

fn func_1() -> vec2<bool> {
    global0 = vec2<bool>(true, !(u_input.a.x != func_2(vec3<i32>(-2147483647i, 19438i, 0i))) || !global0.x);
    global0 = vec2<bool>(true, global0.x);
    let var_0 = select(_wgslsmith_div_vec3_u32(u_input.a.zyy, vec3<u32>(78100u, u_input.a.x, ~(~36829u))), _wgslsmith_mod_vec3_u32(u_input.a.wxy, abs(vec3<u32>(u_input.a.x, 1u, 1u)) >> ((select(vec3<u32>(4294967295u, 1u, 67148u), u_input.a.zzx, vec3<bool>(global0.x, global0.x, false)) ^ vec3<u32>(u_input.a.x, 0u, u_input.a.x)) % vec3<u32>(32u))), !select(select(vec3<bool>(true, global0.x, false), !vec3<bool>(false, global0.x, false), all(vec4<bool>(global0.x, global0.x, true, true))), vec3<bool>(true, true, true), vec3<bool>(global0.x, true, 26913u < u_input.a.x)));
    var var_1 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(max(abs(~vec2<u32>(0u, 535u)), ~reverseBits(u_input.a.xw))), vec2<u32>(~var_0.x, (4294967295u | ~var_0.x) | var_0.x), _wgslsmith_mult_vec2_u32(~(var_0.zz >> (max(u_input.a.zz, var_0.yy) % vec2<u32>(32u))), ~u_input.a.xx));
    let var_2 = abs(303u);
    return vec2<bool>(true, !(!(true | all(vec2<bool>(global0.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(), vec2<bool>(true, true), vec2<bool>(!global0.x, !global0.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(853f + -130f))), -279f) * _wgslsmith_div_vec2_f32(vec2<f32>(-1896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1315f)), -1066f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-463f, 315f)))))));
    global0 = vec2<bool>(all(!select(!vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(var_0.x, true, false, true), select(var_0.x, true, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1014f, var_1.x), _wgslsmith_f_op_vec2_f32(-var_1))), var_1.x, _wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, 1i), reverseBits(abs(vec2<i32>(u_input.b, u_input.b))) ^ abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(-28918i, -15617i)))), 24158u, _wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec3_u32(~u_input.a.zwx, ~u_input.a.zzy)));
}

