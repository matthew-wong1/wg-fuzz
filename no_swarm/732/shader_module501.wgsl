struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1177f, 933f, true)))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f - -589f) * -1110f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(941f, 1098f) - _wgslsmith_f_op_f32(sign(1000f))))));
    var var_2 = ~countOneBits(~vec4<u32>(abs(1u), u_input.b.x, countOneBits(4294967295u), 1u >> (1u % 32u)));
    var_2 = _wgslsmith_clamp_vec4_u32(~u_input.c, u_input.c, u_input.c);
    var_2 = u_input.c;
    return !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, var_1.a), vec2<bool>(var_0.a, true)), vec2<bool>(true, true), false), !vec2<bool>(var_0.a, any(vec2<bool>(true, false))), u_input.b.x <= 1u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-164f)))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1568f))))) - _wgslsmith_f_op_f32(-474f * -469f));
    var var_1 = arg_1;
    let var_2 = select(select(vec4<bool>(all(vec2<bool>(true, true)), true, !select(var_1.a, false, var_1.a), all(select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(var_1.a, false, arg_0.a), vec3<bool>(true, arg_1.a, arg_1.a)))), !(!(!vec4<bool>(false, arg_0.a, false, arg_0.a))), all(select(!vec2<bool>(arg_0.a, arg_1.a), func_3(), !vec2<bool>(arg_1.a, false)))), select(!vec4<bool>(any(vec4<bool>(arg_0.a, arg_1.a, true, var_1.a)), true, true, false), !select(select(vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, true, arg_0.a, var_1.a), arg_0.a), select(vec4<bool>(false, arg_1.a, arg_1.a, arg_0.a), vec4<bool>(true, arg_1.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_1.a, arg_0.a, false)), select(vec4<bool>(true, false, true, arg_1.a), vec4<bool>(false, var_1.a, true, arg_1.a), vec4<bool>(false, false, arg_0.a, arg_0.a))), !(!vec4<bool>(true, var_1.a, false, var_1.a))), select(!(!vec4<bool>(arg_0.a, true, true, false)), select(!vec4<bool>(arg_0.a, arg_1.a, true, false), select(!vec4<bool>(arg_0.a, arg_1.a, false, false), select(vec4<bool>(arg_0.a, var_1.a, false, true), vec4<bool>(true, var_1.a, arg_1.a, false), true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, select(true, arg_0.a, false), false, ~1u == ~u_input.d.x)));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-469i), _wgslsmith_mod_i32(-u_input.a, -1i), u_input.a, 1i), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), var_2), _wgslsmith_mult_vec4_i32(vec4<i32>(42390i, 4387i, -44387i, -1i), vec4<i32>(-20312i, -2147483647i, u_input.a, u_input.a))) >> (_wgslsmith_add_vec4_u32(abs(vec4<u32>(24549u, 1u, u_input.b.x, 0u)), vec4<u32>(23104u, u_input.c.x, 75963u, 1u)) % vec4<u32>(32u))) >= abs(select(_wgslsmith_mult_i32(u_input.a, u_input.a), ~(-10408i), false) & -_wgslsmith_dot_vec2_i32(vec2<i32>(22348i, u_input.a), vec2<i32>(u_input.a, u_input.a)));
    return ~_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -1698i, -1934i, -(u_input.a >> (u_input.c.x % 32u)), ~(-24679i >> (u_input.d.x % 32u))), vec4<i32>(~1i, u_input.a, 32027i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), 29080i)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_1(arg_3.x > (arg_3.x << (firstLeadingBit(u_input.c.x) % 32u)));
    var var_1 = arg_2;
    let var_2 = vec4<bool>(false, !(29664i == arg_3.x), all(vec2<bool>(false, arg_2.a)), !arg_2.a);
    var var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(-arg_1);
    return _wgslsmith_mod_i32(arg_3.x, ~1i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = true;
    let var_1 = min(_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), select(_wgslsmith_mod_u32(4294967295u, ~u_input.c.x), 56684u, true)), ~1u);
    var_0 = arg_0.a;
    var var_2 = abs(vec3<i32>(-7664i, _wgslsmith_div_i32(-6548i, func_4(_wgslsmith_div_i32(u_input.a, -21973i), arg_2.x, Struct_1(false), func_2(arg_0, Struct_1(true)))), u_input.a));
    let var_3 = vec4<bool>(arg_1.a, true, !(u_input.a >= -_wgslsmith_dot_vec3_i32(vec3<i32>(-54264i, var_2.x, var_2.x), vec3<i32>(-22953i, 3320i, u_input.a))), all(!select(vec2<bool>(true, true), vec2<bool>(arg_1.a, true), arg_1.a)));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(func_1(var_0, var_0, vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f))) + _wgslsmith_f_op_f32(-284f + 867f));
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.a, 2147483647i))), firstTrailingBit(vec2<i32>(u_input.a, -13383i)) << (vec2<u32>(~u_input.b.x, abs(u_input.b.x)) % vec2<u32>(32u))), (~(u_input.c >> (vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 1u) % vec4<u32>(32u))) | vec4<u32>(0u, ~u_input.b.x, u_input.d.x, u_input.c.x & u_input.b.x)) ^ firstTrailingBit(~vec4<u32>(4294967295u, 40486u, u_input.d.x, 69629u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1282f * -102f), _wgslsmith_div_f32(-884f, 449f)))));
}

