struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-2059f, 705f, -327f), 2147483647i);

var<private> global1: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = ~(-2147483647i);
    let var_1 = ~firstLeadingBit(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, -1i, arg_1.x), vec3<i32>(u_input.b, 0i, arg_0), vec3<i32>(arg_1.x, u_input.b, 0i) ^ vec3<i32>(global0.b, -16284i, u_input.b))));
    var var_2 = global0.b;
    var_2 = _wgslsmith_mult_i32(countOneBits(0i), -select(arg_1.x << (~u_input.c.x % 32u), firstTrailingBit(arg_0), false));
    let var_3 = Struct_2(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c.x, 5823u), vec4<u32>(u_input.a, 46988u, u_input.c.x, u_input.c.x))) >> (_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(1u, 0u)), vec2<u32>(_wgslsmith_sub_u32(61212u, 50106u), ~u_input.c.x)) % 32u), Struct_1(vec3<f32>(_wgslsmith_div_f32(-355f, 1606f), -492f, global0.a.x), -2147483647i), _wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.c.x & u_input.c.x, u_input.c.x), u_input.c.x));
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2340f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(-669f * global0.a.x), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-315f + 1066f), _wgslsmith_f_op_f32(ceil(var_3.b.a.x)), all(vec4<bool>(true, true, false, false)))))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global0.b, -abs(vec2<i32>(-2147483647i, global0.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -1554f, -100f) + arg_1.a)), 29779i);
    let var_0 = Struct_4(select(vec4<bool>(true, !any(vec4<bool>(true, false, false, true)), false, -10656i <= arg_1.b), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false)), vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, false, true)), true, false), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false))), vec4<bool>(_wgslsmith_add_u32(1u, u_input.c.x) == (u_input.a << (1u % 32u)), false, all(vec4<bool>(true, true, false, false)), (global0.a.x > 499f) || true)), any(vec2<bool>(true, all(vec3<bool>(true, false, true)))), Struct_3(vec4<bool>(-405f == _wgslsmith_f_op_f32(-arg_1.a.x), true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, u_input.b, -2147483647i, global0.b), ~(vec4<i32>(arg_1.b, u_input.b, arg_1.b, 11555i) & vec4<i32>(-1i, 6713i, global0.b, 16555i)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b, 1i, global0.b), vec4<i32>(-1i, global0.b, u_input.b, 2147483647i))))), Struct_3(select(vec4<bool>(true, true, select(true, true, true), u_input.c.x <= 91458u), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, any(vec2<bool>(true, true)), true)), countOneBits(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-17796i, arg_1.b, u_input.b, global0.b)), vec4<i32>(global0.b, 1i, arg_1.b, 1i) >> (vec4<u32>(4294967295u, 1u, 1u, 43266u) % vec4<u32>(32u))))));
    var var_1 = arg_1;
    let var_2 = var_0;
    let var_3 = firstLeadingBit(vec3<u32>(12338u, reverseBits(~min(8399u, u_input.c.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, 54716u, 4294967295u, u_input.a)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.c.x, u_input.a), vec4<u32>(u_input.a, 1u, 4294967295u, u_input.c.x)), vec4<u32>(49623u, u_input.a, 82148u, u_input.a) | vec4<u32>(547u, u_input.c.x, 33956u, u_input.c.x)))));
    return _wgslsmith_mult_u32(81u, u_input.a) & _wgslsmith_add_u32(firstLeadingBit(~countOneBits(1u)), ~(~59633u));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global1 = true;
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = vec4<u32>(35824u, ~u_input.a, ~select(u_input.a, u_input.c.x, true), u_input.a);
    var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, abs(func_2(vec2<f32>(global0.a.x, 1910f), Struct_1(global0.a, arg_0))), 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(9018u, 4294967295u, 4036u, var_1.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_1.x, 0u, var_1.x), vec4<u32>(u_input.a, var_1.x, u_input.a, 1u)) % vec4<u32>(32u)), vec4<u32>(92195u, abs(0u), ~var_1.x, 1u)), u_input.c.x, _wgslsmith_mod_u32(reverseBits(u_input.c.x), 4294967295u), ~(~u_input.c.x)));
    var var_2 = var_0.zz;
    return vec3<bool>(all(select(!vec4<bool>(var_2.x, var_0.x, false, true), var_0, !all(var_0.ywx))), !var_2.x, var_2.x & true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec3<bool>(true, true, true), select(func_1(-1i), vec3<bool>(true, true, true), func_1(u_input.b)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), vec3<bool>(select(any(vec2<bool>(false, false)), true, all(func_1(u_input.b).zy)), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(ceil(global0.a.x))) <= global0.a.x, true), all(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), -u_input.b > _wgslsmith_mod_i32(-1i, -1i), 1u <= u_input.a)));
    let var_1 = Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(abs(u_input.b ^ u_input.b), ~(-vec2<i32>(u_input.b, global0.b)))), 2147483647i), 5413u);
    global1 = !(!any(func_1(abs(global0.b)).zz));
    var var_2 = false;
    var_2 = any(!vec3<bool>(var_0.x, 930f >= var_1.b.a.x, var_0.x)) | all(select(vec3<bool>(true, true, true), func_1(global0.b | 20103i), true));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.a.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.b.a.x, global0.a.x))))), global0.a.x, -257f), _wgslsmith_mult_i32(var_1.b.b, var_1.b.b));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)) - _wgslsmith_f_op_vec3_f32(-global0.a)), var_1.b.b);
    let var_4 = ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, var_3.b, -21018i, -61429i), -vec4<i32>(var_3.b, var_3.b, -30298i, global0.b)), vec4<i32>(~var_3.b, global0.b << (u_input.a % 32u), -u_input.b, reverseBits(global0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a.x)) + -445f), -509f);
}

