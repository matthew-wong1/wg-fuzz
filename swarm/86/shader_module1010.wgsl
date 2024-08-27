struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(37942u, vec4<i32>(2147483647i, 1i, 27786i, 2147483647i)), Struct_4(1u, vec4<i32>(-65331i, 13167i, 1i, -1i)), Struct_4(48624u, vec4<i32>(-33017i, 46876i, i32(-2147483648), 0i)), Struct_4(0u, vec4<i32>(2147483647i, 3856i, 0i, 12318i)), Struct_4(0u, vec4<i32>(1i, -10196i, -31434i, 20787i)), Struct_4(0u, vec4<i32>(-12189i, -21126i, -25235i, 34374i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(min(arg_1.d, _wgslsmith_clamp_i32(~17196i | u_input.b.x, arg_1.c, -2147483647i)), arg_1, u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, 1000f)) + _wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1193f, -1765f))))), max(~(~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(64915u, 4294967295u) | arg_1.b, _wgslsmith_sub_vec2_u32(arg_1.b, vec2<u32>(0u, u_input.a)))), u_input.b.x, select(2147483647i, arg_1.d, arg_1.e.x), !arg_1.e));
    let var_1 = 0i;
    let var_2 = var_0.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.a.x, var_0.b.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(162f * 1186f), _wgslsmith_f_op_f32(f32(-1f) * -1242f), _wgslsmith_f_op_f32(select(arg_1.a.x, 1000f, arg_0.x))))), !arg_1.e.x))));
    var var_4 = arg_1;
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)))), arg_1.a.x, false)), var_0.b.a.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(false, true, true), Struct_1(vec2<f32>(1000f, 511f), vec2<u32>(0u, 41874u), u_input.b.x, u_input.b.x, vec4<bool>(true, true, false, true)))) + vec2<f32>(-1495f, -1000f))), vec2<u32>(abs(4294967295u << (u_input.a % 32u)), u_input.a), _wgslsmith_sub_i32(u_input.b.x, select(u_input.b.x, u_input.b.x, false) >> (u_input.a % 32u)), (u_input.b.x >> ((u_input.a << (u_input.a % 32u)) % 32u)) & u_input.b.x, !vec4<bool>(all(vec3<bool>(false, true, true)), true, true, false)), u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1089f, _wgslsmith_f_op_f32(sign(460f))))), select((vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 1u)) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, ~u_input.a), all(vec3<bool>(true, true, true))), countOneBits(_wgslsmith_mult_i32(~(-32812i), 0i)), (2147483647i >> (abs(u_input.a) % 32u)) >> (0u % 32u), vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), any(vec3<bool>(true, true, true)), !any(vec4<bool>(false, true, false, false)))));
    global0 = array<Struct_4, 6>();
    var var_1 = vec2<i32>(1i, -2147483647i);
    global0 = array<Struct_4, 6>();
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.b.a)));
    return var_0;
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = !any(vec4<bool>(true, true, true, true));
    global0 = array<Struct_4, 6>();
    let var_1 = func_2();
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    return var_1.b.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 6>();
    var var_0 = u_input.b.x;
    var var_1 = -vec4<i32>(u_input.b.x & _wgslsmith_mult_i32(_wgslsmith_div_i32(71345i, -2147483647i), u_input.b.x), abs(2147483647i), -_wgslsmith_mult_i32(reverseBits(u_input.b.x), -u_input.b.x), 1088i);
    let var_2 = select(vec3<bool>(true, true, true), vec3<bool>(true, func_1(Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-798f, -115f), vec2<f32>(-1111f, 1396f))), vec4<i32>(0i, 4865i, u_input.b.x, 0i), ~vec3<u32>(0u, u_input.a, 4294967295u))), false), all(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true)));
    let var_3 = vec4<bool>(any(!vec4<bool>(false, var_2.x, false, true)) || any(!vec4<bool>(var_2.x, true, var_2.x, var_2.x)), select(4294967295u <= u_input.a, false, !var_2.x), false || var_2.x, false);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(433f, -1374f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(780f, 816f) - vec2<f32>(-278f, -1218f)))))), ~(~(~vec2<u32>(u_input.a, 4294967295u))), var_1.x, _wgslsmith_mod_i32(-31924i, 22162i), !(!var_3));
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1786f)), -356f, false)))), ~(~vec2<u32>(~37259u, var_5.b.b.x)), var_4.a.x, 1i);
}

