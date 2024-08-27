struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f), -853f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(round(arg_0.a))) + -1000f)), -264f, -1000f);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.b, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))) - var_0.x)));
    let var_2 = Struct_2(!arg_1, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-405f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.b)))))), 887f), abs(reverseBits(u_input.b.x << (select(50244u, u_input.a, true) % 32u))));
    var var_3 = arg_0;
    var var_4 = (_wgslsmith_div_u32(u_input.d, 4294967295u) < ~u_input.d) & arg_1;
    return select(select(vec3<bool>(true, false, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1, true, var_2.a), vec3<bool>(false, true, var_2.a), vec3<bool>(false, arg_1, var_2.a)), select(vec3<bool>(var_2.a, arg_1, arg_1), vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(false, true, var_2.a))), false), !select(vec3<bool>(false, true, var_2.a), vec3<bool>(var_2.c >= 63046i, -223f < var_3.a, false), vec3<bool>(!var_2.a, true, u_input.a == 22339u)), !vec3<bool>(false, arg_1 && true, !(!arg_1)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = vec2<u32>(abs(~max(u_input.d, u_input.d) | _wgslsmith_mult_u32(u_input.d, u_input.d)), 21827u);
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-2049f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(234f + -960f) * -428f)), 518f), ~u_input.c.x);
    let var_2 = vec3<bool>(all(func_3(var_1.b, any(vec3<bool>(false, true, var_1.a)) && (false & var_1.a), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c, var_1.c, u_input.c.x, 55385i), u_input.c))), any(select(select(vec4<bool>(true, var_1.a, true, true), select(vec4<bool>(true, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, false, true, false), var_1.a), !vec4<bool>(false, true, true, var_1.a)), select(!vec4<bool>(true, true, var_1.a, var_1.a), vec4<bool>(true, true, var_1.a, var_1.a), any(vec2<bool>(false, var_1.a))), !select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, true, var_1.a, true), var_1.a))), !(var_1.b.b != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.b * 1000f) * _wgslsmith_f_op_f32(var_1.b.a * -771f))));
    var_0 = (~firstTrailingBit(max(vec2<u32>(29065u, 0u), vec2<u32>(var_0.x, 47504u))) << (abs(~(vec2<u32>(u_input.d, 1u) | arg_0)) % vec2<u32>(32u))) & arg_0;
    var_0 = ~arg_0;
    return Struct_3(all(select(!vec4<bool>(false, false, var_1.a, var_1.a), vec4<bool>(var_2.x, true, var_1.a, arg_0.x > arg_0.x), select(select(vec4<bool>(false, var_2.x, true, true), vec4<bool>(var_1.a, var_2.x, var_1.a, var_1.a), var_2.x), vec4<bool>(true, true, var_2.x, true), var_2.x))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: vec4<f32>) -> vec2<u32> {
    var var_0 = func_2(vec2<u32>(~u_input.a, 0u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_3);
    var_1 = arg_3;
    var_0 = Struct_3(!(!all(select(vec4<bool>(arg_2.a, false, arg_0, false), vec4<bool>(var_0.a, var_0.a, true, arg_0), vec4<bool>(arg_2.a, var_0.a, true, var_0.a)))));
    var var_2 = vec3<bool>(select(false, arg_0, true), u_input.b.x <= 44236i, !arg_0);
    return vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(u_input.a), ~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 432u), vec2<u32>(u_input.d, u_input.a))), ~u_input.a), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.d << (71542u % 32u)), ~(~(~countOneBits(vec2<u32>(50436u, u_input.d)))));
    var var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(24973u, u_input.a), func_1(true, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c) & ~u_input.c.x, Struct_3(false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(353f, 411f, 1000f, 545f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(956f, 958f, -343f, 420f) * vec4<f32>(-554f, -941f, 728f, -445f)))));
    var var_2 = vec2<u32>(6970u, ~_wgslsmith_mod_u32(var_0.x, ~(~9786u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(1f + 1067f), _wgslsmith_f_op_f32(1040f - -424f));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, var_3.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-718f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, var_3.a, var_3.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1088f, -1394f, var_3.a))))))));
    var_2 = ~_wgslsmith_clamp_vec2_u32(~firstLeadingBit(vec2<u32>(1u, var_1.x)), vec2<u32>(var_1.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_2.x, u_input.a), vec3<u32>(59351u, u_input.d, var_0.x)))), firstTrailingBit((vec2<u32>(var_0.x, var_2.x) & vec2<u32>(1131u, 0u)) & ~vec2<u32>(17141u, var_1.x)));
    let var_5 = !(!(!((u_input.b.x ^ u_input.c.x) <= (u_input.b.x & u_input.b.x))));
    let var_6 = 822f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(abs(u_input.a)), ~var_0.x << (~var_1.x % 32u), var_0.x), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(3983u, 24736u, 96566u), vec3<u32>(4294967295u, u_input.d, var_1.x)), ~vec3<u32>(u_input.d, 4294967295u, var_0.x)) << (select(~vec3<u32>(22057u, 39355u, var_1.x), vec3<u32>(3913u, var_0.x, 72785u), !vec3<bool>(var_5, true, true)) % vec3<u32>(32u))));
}

