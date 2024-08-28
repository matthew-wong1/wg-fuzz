struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = firstTrailingBit(select(~global0.a, ~global0.a ^ global0.a, select(vec4<bool>(true, true, false, global0.b.x), select(vec4<bool>(true, global0.b.x, arg_0, true), vec4<bool>(false, true, arg_0, global0.b.x), vec4<bool>(global0.b.x, false, true, false)), vec4<bool>(false, false, true, true)))) ^ vec4<u32>(32282u, firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(9915u, 4294967295u, u_input.b, 43346u)), global0.a)), global0.a.x, global0.a.x);
    let var_1 = Struct_2((~(vec4<u32>(u_input.b, 2854u, global0.a.x, global0.a.x) | global0.a) ^ countOneBits(global0.a)) << (vec4<u32>(4294967295u, global0.a.x, ~(~global0.a.x), ~(~1u)) % vec4<u32>(32u)), vec3<bool>(global0.b.x, false, !global0.b.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1196f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(921f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(149f)) * -251f))))) + _wgslsmith_div_f32(970f, 1108f));
    var var_3 = Struct_4(Struct_1(countOneBits(u_input.a.x) & ~u_input.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(576f, 292f), vec2<f32>(_wgslsmith_div_f32(-781f, -2314f), -1403f), ~var_0.x != _wgslsmith_div_u32(var_1.a.x, u_input.b))), true | any(!global0.b)), var_1.a, ~vec4<u32>(36879u, _wgslsmith_div_u32(0u, ~29326u), global0.a.x, 20720u), Struct_2(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, global0.a.x, var_1.a.x), vec4<u32>(u_input.b, 0u, global0.a.x, 15869u))), select(var_1.b, select(vec3<bool>(true, var_1.b.x, arg_0), var_1.b, false), select(vec3<bool>(var_1.b.x, false, var_1.b.x), var_1.b, true))));
    let var_4 = _wgslsmith_div_f32(345f, -894f);
    return _wgslsmith_mult_u32(~u_input.b, u_input.b >> (var_0.x % 32u));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(~vec4<u32>(u_input.b, 1u, func_3(global0.b.x), ~global0.a.x), vec3<bool>(global0.b.x, global0.b.x, global0.b.x && all(select(global0.b.yy, vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(true, false)))));
    var var_1 = Struct_4(Struct_1(u_input.c, 1581f, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1684f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-217f, 725f)))), u_input.b == firstTrailingBit(var_0.a.x)), select(var_0.a, abs(global0.a), !vec4<bool>(global0.b.x, !var_0.b.x, !global0.b.x, !global0.b.x)), vec4<u32>(~_wgslsmith_add_u32(var_0.a.x, var_0.a.x), ~(~u_input.b), select(_wgslsmith_mult_u32(var_0.a.x, ~u_input.b), 67178u, ~var_0.a.x != _wgslsmith_dot_vec2_u32(var_0.a.xz, vec2<u32>(u_input.b, 1u))), ~_wgslsmith_add_u32(u_input.b & u_input.b, var_0.a.x)), var_0);
    return Struct_4(var_1.a, var_0.a, _wgslsmith_mult_vec4_u32(var_0.a, firstTrailingBit(vec4<u32>(23996u, var_0.a.x, 72328u, global0.a.x) | vec4<u32>(0u, var_0.a.x, 1u, u_input.b))) ^ var_0.a, var_1.d);
}

fn func_1() -> Struct_2 {
    var var_0 = -16979i;
    var var_1 = func_2();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-541f, -1237f)) * _wgslsmith_div_f32(393f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a.b, var_1.a.b))))), var_1.d, all(vec2<bool>(!global0.b.x, false && !global0.b.x)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(~18741i, ~1i), ~(vec2<i32>(-2147483647i, u_input.c) | u_input.a)), -18356i));
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4) -> vec4<i32> {
    var var_0 = Struct_4(func_2().a, _wgslsmith_clamp_vec4_u32(abs(~select(vec4<u32>(arg_2.d.a.x, arg_0.a.x, arg_0.a.x, 4294967295u), arg_0.a, vec4<bool>(true, false, global0.b.x, false))), select(vec4<u32>(u_input.b, 14585u, 9130u, u_input.b) | arg_2.b, _wgslsmith_mod_vec4_u32(~arg_2.b, vec4<u32>(20688u, 103793u, 0u, arg_2.c.x)), !(!vec4<bool>(arg_2.a.d, true, false, arg_0.b.x))), arg_2.b), vec4<u32>(_wgslsmith_div_u32(min(85732u, 1u) ^ arg_2.d.a.x, 52644u), arg_2.c.x, ~(27486u & u_input.b), ~8120u), func_1());
    global0 = var_0.d;
    var_0 = arg_2;
    let var_1 = _wgslsmith_add_u32(~var_0.d.a.x, max(~global0.a.x, select(1u & arg_0.a.x, 0u, arg_1)));
    global0 = func_1();
    return ~vec4<i32>(firstTrailingBit(0i), -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, var_0.a.a, -70462i)), abs(vec3<i32>(arg_2.a.a, var_0.a.a, u_input.a.x))), u_input.a.x, _wgslsmith_add_i32(11842i, var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-596f, ~vec3<i32>(2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(-43905i, 0i)), i32(-1i) * -u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(946f, -1000f))) + -977f)), ~reverseBits(func_4(func_1(), any(vec2<bool>(true, global0.b.x)), func_2())));
}

