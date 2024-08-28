struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = true;
    let var_1 = -arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(arg_1));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-999f, _wgslsmith_f_op_f32(-1000f + -1000f), -364f) - arg_1));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-129f - _wgslsmith_f_op_f32(-arg_1.x))))) == _wgslsmith_f_op_f32(-arg_1.x);
    return ~abs(~vec3<u32>(0u, u_input.a, u_input.a)) & vec3<u32>(4294967295u, 4294967295u, _wgslsmith_sub_u32(~(~1u), ~(u_input.a >> (1u % 32u))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(abs(vec2<u32>(~u_input.a, ~(64299u >> (0u % 32u)))), abs(_wgslsmith_sub_vec4_u32(abs(firstTrailingBit(vec4<u32>(46833u, u_input.a, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(58652u, 1u, 0u)), 22153u, select(u_input.a, 0u, false), u_input.a))), max(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(1u, ~0u, u_input.a)), ~func_3(_wgslsmith_add_i32(u_input.b.x, 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1777f, -909f)))), vec4<i32>(-1i, u_input.b.x, 50747i, _wgslsmith_dot_vec4_i32(min(u_input.b, ~u_input.b), vec4<i32>(reverseBits(u_input.b.x), countOneBits(-1i), 1i, -27114i))), 2147483647i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-905f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-735f, -587f)))))));
    var var_1 = abs(vec4<i32>(abs(var_0.e), _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(-1i, var_0.e, 63524i, -2147483647i)), vec4<i32>(-var_0.e, -4290i, 0i, 1i)), -(~(~(-2147483647i))), ~(~(~(-20136i)))));
    global0 = -107f;
    return firstTrailingBit(~var_1.x) & ~(~(var_0.e >> (1u % 32u)) ^ (_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) >> (var_0.c.x % 32u)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1298f);
    let var_0 = arg_1;
    global0 = arg_0;
    global0 = _wgslsmith_f_op_f32(trunc(arg_0));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-200f, 1160f, true)) * 1128f));
    return Struct_1(vec2<u32>(1u, _wgslsmith_mod_u32(~55290u, arg_1.b.x)), ~reverseBits(~(~vec4<u32>(arg_1.b.x, 1u, 11091u, 54877u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.b.zww, abs(abs(vec3<u32>(u_input.a, u_input.a, 115706u)))), ~countOneBits(vec3<u32>(1u, 4294967295u, 4294967295u)) >> (var_0.c % vec3<u32>(32u)), ~(~arg_1.c)), vec4<i32>(abs(~(-1i)), abs(func_2()), _wgslsmith_sub_i32(~var_0.e, arg_1.e) << ((var_0.b.x ^ u_input.a) % 32u), _wgslsmith_add_i32(2147483647i, u_input.b.x)), 14605i);
}

fn func_4(arg_0: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_f32(-1537f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1544f * _wgslsmith_f_op_f32(select(227f, -619f, true))))));
    let var_0 = Struct_3(Struct_2(1u, false, ~(arg_0.c | vec3<u32>(arg_0.c.x, 50747u, arg_0.c.x)) << (vec3<u32>(37246u, u_input.a, 1u) % vec3<u32>(32u))), ~(~270u), func_1(_wgslsmith_f_op_f32(ceil(-1994f)), func_1(-129f, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1130f), arg_0))), vec2<f32>(2404f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(388f * _wgslsmith_f_op_f32(trunc(-590f)))))));
    let var_1 = 412f;
    let var_2 = ~var_0.c.c.zx;
    var var_3 = (!(!select(var_0.a.b, var_0.a.b, var_0.a.b)) && true) || (var_0.a.b || false);
    return 27975u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(18320u, _wgslsmith_add_u32(u_input.a, u_input.a) == func_4(func_1(327f, Struct_1(vec2<u32>(49164u, 0u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.b.x, -4203i, u_input.b.x, 0i), u_input.b.x))), vec3<u32>(u_input.a, 46094u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(0u, 0u, u_input.a)))), u_input.a, Struct_1(vec2<u32>(_wgslsmith_mult_u32(4294967295u, ~u_input.a), u_input.a), _wgslsmith_div_vec4_u32(~select(vec4<u32>(4294967295u, u_input.a, 29802u, 66166u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, true, false)), vec4<u32>(1u, firstTrailingBit(1u), u_input.a, _wgslsmith_mult_u32(368u, 43624u))), vec3<u32>(61753u, 29526u, u_input.a), vec4<i32>(func_2(), -u_input.b.x, reverseBits(-1i), u_input.b.x), _wgslsmith_div_i32(_wgslsmith_mult_i32(~u_input.b.x, reverseBits(u_input.b.x)), _wgslsmith_dot_vec2_i32(-u_input.b.zy, firstTrailingBit(vec2<i32>(1i, u_input.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f))), 1f));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(select(var_0.a.c.xy << (vec2<u32>(var_0.a.a, var_0.a.a) % vec2<u32>(32u)), vec2<u32>(22764u, u_input.a), vec2<bool>(true, true))), var_0.c.a), var_0.c.d.x, 13530u, ~var_0.c.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), var_0.d.x, var_0.a.b)));
}

