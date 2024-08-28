struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_vec4_u32(min(countOneBits(abs(u_input.d)), ~u_input.d) & max(firstTrailingBit(~vec4<u32>(arg_3.a, 1u, arg_3.c.x, 5879u)), vec4<u32>(1u, 5000u, 1u, _wgslsmith_div_u32(1u, 18728u))), select(u_input.d, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(27335u, 35622u, 0u, 30291u), vec4<u32>(arg_3.a, arg_0.c.x, 1u, 4898u) & vec4<u32>(4294967295u, 7690u, 1u, arg_3.c.x)), ~select(u_input.d.x, u_input.a.x, true), _wgslsmith_mod_u32(arg_3.c.x & 0u, 2527u), select(41086u, _wgslsmith_mult_u32(arg_3.a, arg_0.c.x), arg_1.x)), global1.x));
    let var_1 = arg_3;
    global0 = arg_1;
    let var_2 = select(firstTrailingBit(vec4<i32>(firstLeadingBit(-2147483647i), reverseBits(1135i), 163i, _wgslsmith_mult_i32(1i, u_input.e))) | -vec4<i32>(u_input.e, arg_2 << (4294967295u % 32u), arg_2, -arg_2), firstTrailingBit(-firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, -1181i, arg_2, arg_2), vec4<i32>(-19275i, u_input.e, arg_2, 2147483647i)))), vec4<bool>(true, true, true, true || any(vec4<bool>(true, global0.x, true, false))));
    let var_3 = Struct_1(~(~_wgslsmith_dot_vec2_u32(var_1.c, max(vec2<u32>(21604u, 3314u), vec2<u32>(37088u, 1u)))), arg_0.b, var_1.c);
    return abs(~var_3.c);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(-286f)), 874f)))), vec2<u32>(4294967295u, u_input.b));
    let var_1 = (vec4<i32>(-8615i, u_input.e, _wgslsmith_mod_i32(u_input.e | u_input.e, _wgslsmith_mod_i32(u_input.e, 1i)), 0i | u_input.e) | ~(-vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e) >> (u_input.d % vec4<u32>(32u)))) | reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.e, 2147483647i, u_input.e, u_input.e), _wgslsmith_sub_vec4_i32(vec4<i32>(-47086i, u_input.e, u_input.e, u_input.e), vec4<i32>(-6995i, 8791i, u_input.e, 2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-3279i, -40972i, 0i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, 13543i, u_input.e, 1i), vec4<i32>(u_input.e, 1i, 2147483647i, 1i)))));
    var var_2 = Struct_1(3401u, var_0.b, _wgslsmith_mod_vec2_u32(countOneBits(~func_3(var_0, vec2<bool>(global1.x, global1.x), -2147483647i, Struct_1(var_0.c.x, vec2<f32>(var_0.b.x, -1593f), u_input.a))), u_input.a));
    global1 = !vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.b.x)))) > _wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_div_f32(var_2.b.x, var_2.b.x))), false);
    let var_3 = global0.x;
    return 1u ^ (var_0.a << (58874u % 32u));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(func_2(), _wgslsmith_f_op_vec2_f32(-arg_0.b), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.a, u_input.b), _wgslsmith_add_vec2_u32(u_input.d.yx, ~(~arg_0.c))));
    let var_1 = var_0;
    let var_2 = global1.x;
    global1 = select(select(select(select(select(vec2<bool>(false, global1.x), vec2<bool>(true, global1.x), vec2<bool>(global1.x, global0.x)), select(vec2<bool>(true, global0.x), vec2<bool>(false, global1.x), global0.x), vec2<bool>(global1.x, true)), !vec2<bool>(global0.x, global0.x), select(!vec2<bool>(false, global0.x), select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), global0.x), vec2<bool>(false, true))), vec2<bool>(global0.x, all(vec4<bool>(global0.x, global1.x, global1.x, true)) == (arg_0.b.x > arg_0.b.x)), vec2<bool>(true, true)), select(!(!(!vec2<bool>(global1.x, false))), !(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), global0.x)), !vec2<bool>(global1.x, true)), (!(!global0.x) == true) || !global1.x);
    let var_3 = _wgslsmith_add_vec2_i32(~(select(select(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 8830i), global0.x), -vec2<i32>(u_input.e, -1i), !vec2<bool>(false, global0.x)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, var_0.c.x), vec2<u32>(185u, var_1.a)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(28704i, u_input.e, 15475i) ^ vec3<i32>(-2147483647i, u_input.e, u_input.e), abs(vec3<i32>(2147483647i, -23657i, u_input.e))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, u_input.e, -17417i) | vec3<i32>(25044i, u_input.e, -5753i), select(vec3<i32>(u_input.e, u_input.e, -32661i), vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<bool>(false, false, global1.x)))), u_input.e));
    return ~(var_1.a ^ (~4294967295u | ~_wgslsmith_mult_u32(var_1.c.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2555f), -1611f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(232f * 1931f), -275f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 325f, -363f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2890f, -398f, 547f))), select(global0.x, global0.x, true)))), u_input.c < 1u))));
    var var_1 = vec3<i32>(max(u_input.e, -33509i) & u_input.e, reverseBits(u_input.e), -2147483647i);
    var var_2 = Struct_1(func_1(Struct_1(u_input.b, var_0.zz, u_input.d.yx)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -136f)))), _wgslsmith_f_op_f32(f32(-1f) * -228f)), u_input.d.wy);
    let var_3 = var_0;
    global0 = vec2<bool>(!global1.x, !global1.x);
    var var_4 = vec3<i32>(1i, u_input.e, select(~(-u_input.e), u_input.e, global1.x));
    let var_5 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.x, var_3.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(260f, var_2.b.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b.x, var_0.x), vec2<f32>(370f, -461f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_3.x), var_0.yx))))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_2.c.x, 6268u), select(_wgslsmith_sub_vec2_u32(var_2.c, u_input.d.yz), vec2<u32>(75847u, u_input.a.x), global1.x)), firstTrailingBit(~u_input.d.ww ^ ~vec2<u32>(0u, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<i32>(u_input.e, var_1.x, var_1.x) | reverseBits(~vec3<i32>(var_4.x, 50324i, 26327i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3)));
}

