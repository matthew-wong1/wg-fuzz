struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29271u;

var<private> global1: bool = false;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> bool {
    global1 = !(false == arg_0.a.c.b.x);
    var var_0 = arg_0.a.a;
    var_0 = arg_0.a.a;
    var_0 = Struct_1(((vec3<u32>(86254u, var_0.a.x, 1u) ^ select(var_0.a, vec3<u32>(0u, arg_0.a.a.a.x, 20724u), var_0.b.x)) ^ var_0.a) ^ arg_0.a.c.a, !(!vec3<bool>(true, true, all(var_0.b))));
    let var_1 = vec3<bool>(var_0.a.x == firstLeadingBit(_wgslsmith_add_u32(~arg_0.a.c.a.x, var_0.a.x)), all(vec2<bool>(countOneBits(arg_0.a.a.a.x) <= 0u, !any(var_0.b.yy))), !any(select(!arg_0.a.c.b, arg_0.a.a.b, select(var_0.b, arg_0.a.a.b, arg_0.a.a.b.x))));
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_3(Struct_1(~reverseBits(vec3<u32>(1u, 113927u, 4294967295u)), vec3<bool>(true, func_3(Struct_4(Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<bool>(true, true, true)), vec4<i32>(u_input.a.x, u_input.a.x, 12236i, u_input.a.x), Struct_1(vec3<u32>(75801u, 14313u, 1u), vec3<bool>(true, true, true))), -2269f)), true)), vec4<i32>(_wgslsmith_mod_i32(1i, -u_input.a.x), ~u_input.a.x >> (_wgslsmith_mult_u32(9568u, 80797u) % 32u), _wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), -(~u_input.a.x)), Struct_1(vec3<u32>(~4294967295u, ~17859u, min(1u, 4294967295u)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), 1249f);
    let var_1 = abs(-1i);
    var_0 = Struct_4(Struct_3(Struct_1(~_wgslsmith_div_vec3_u32(var_0.a.a.a, vec3<u32>(var_0.a.a.a.x, 6651u, 4294967295u)), !select(vec3<bool>(var_0.a.c.b.x, var_0.a.c.b.x, false), var_0.a.a.b, vec3<bool>(var_0.a.c.b.x, var_0.a.a.b.x, var_0.a.a.b.x))), _wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.a.x, var_1, 0i, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -25101i, 36825i, var_0.a.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 0i, -1i, 0i), vec4<i32>(var_1, u_input.a.x, -45218i, -3326i)))), var_0.a.c), -259f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1426f))) * -1152f)));
    var var_3 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(16212u, var_0.a.a.a.x), var_0.a.c.a.x);
    return Struct_1(min(vec3<u32>(max(_wgslsmith_sub_u32(45560u, 35357u), _wgslsmith_dot_vec2_u32(var_0.a.a.a.xx, vec2<u32>(var_0.a.c.a.x, var_0.a.c.a.x))), countOneBits(firstLeadingBit(var_0.a.c.a.x)), _wgslsmith_dot_vec3_u32(var_0.a.c.a, vec3<u32>(var_0.a.c.a.x, var_0.a.a.a.x, 1u))), var_0.a.c.a >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.a.c.a.x), var_0.a.c.a, ~vec3<u32>(5433u, var_0.a.a.a.x, 33441u)) % vec3<u32>(32u))), !vec3<bool>(any(select(vec2<bool>(var_0.a.a.b.x, var_0.a.a.b.x), vec2<bool>(var_0.a.c.b.x, var_0.a.c.b.x), var_0.a.c.b.zz)), true, _wgslsmith_f_op_f32(-var_0.b) <= _wgslsmith_f_op_f32(min(var_2.x, var_2.x))));
}

fn func_1() -> vec3<u32> {
    global0 = ~1u;
    var var_0 = -735f;
    var var_1 = Struct_3(func_2(), ~(vec4<i32>(1i, u_input.a.x, abs(-46967i), 13174i << (0u % 32u)) & vec4<i32>(u_input.a.x & 2147483647i, _wgslsmith_mult_i32(-1i, 13598i), _wgslsmith_mult_i32(-27696i, u_input.a.x), u_input.a.x)), Struct_1(vec3<u32>(1u, 1u, 1u), vec3<bool>(false, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true)), any(vec2<bool>(true, true)))));
    var var_2 = Struct_2(vec4<bool>(!(false & var_1.a.b.x), select(all(!var_1.a.b.yx), func_2().b.x, var_1.a.b.x), (!var_1.c.b.x | (var_1.a.b.x || var_1.c.b.x)) & false, !(!var_1.c.b.x) || any(!vec4<bool>(true, false, var_1.c.b.x, false))), vec3<bool>(true | var_1.c.b.x, func_3(Struct_4(Struct_3(Struct_1(var_1.a.a, vec3<bool>(var_1.c.b.x, var_1.a.b.x, var_1.c.b.x)), var_1.b, var_1.a), _wgslsmith_f_op_f32(floor(1476f)))), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -116f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1664f, 661f)))), true)));
    let var_3 = true;
    return _wgslsmith_add_vec3_u32(var_1.a.a, ~vec3<u32>(var_1.c.a.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.c.a.x, var_1.a.a.x), min(4347u, 32554u)), _wgslsmith_add_u32(1u, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1u, 1u, 1u)), func_1());
    var var_1 = ~u_input.a.x <= u_input.a.x;
    let var_2 = func_2().b.yx;
    let var_3 = ~(~(~reverseBits(~vec3<u32>(var_0, 35702u, 51223u))));
    var_1 = !var_2.x || true;
    let var_4 = vec3<bool>(u_input.a.x <= u_input.a.x, !(!(!func_2().b.x)), any(select(!select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x)), select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), var_2.x), !vec3<bool>(var_2.x, var_2.x, false), !vec3<bool>(var_2.x, true, true)), !func_3(Struct_4(Struct_3(Struct_1(vec3<u32>(var_0, 0u, 67184u), vec3<bool>(true, var_2.x, true)), vec4<i32>(-1i, 2147483647i, 12459i, u_input.a.x), Struct_1(vec3<u32>(0u, var_0, var_0), vec3<bool>(false, true, var_2.x))), 310f)))));
    let x = u_input.a;
    s_output = StorageBuffer(759f, 4294967295u, select(~(~vec4<u32>(23747u, 33656u, var_0, var_0)) | ~_wgslsmith_div_vec4_u32(vec4<u32>(8355u, 1u, 43597u, var_0), vec4<u32>(79510u, 54059u, 4294967295u, var_0)), vec4<u32>(abs(var_0), ~46200u, 43879u, var_0 << (_wgslsmith_mod_u32(var_0, var_3.x) % 32u)), select(select(vec4<bool>(var_2.x, var_4.x, var_4.x, false), select(vec4<bool>(var_2.x, var_4.x, true, var_2.x), vec4<bool>(true, true, false, false), var_2.x), select(vec4<bool>(var_4.x, false, var_2.x, var_4.x), vec4<bool>(var_4.x, true, true, var_4.x), vec4<bool>(false, var_2.x, true, var_2.x))), !select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_4.x, var_4.x, true), var_2.x), select(!vec4<bool>(var_4.x, false, true, false), select(vec4<bool>(true, var_4.x, false, false), vec4<bool>(true, true, var_2.x, var_4.x), true), all(vec4<bool>(false, false, true, var_2.x))))), var_3.x, vec4<i32>(firstLeadingBit(select(u_input.a.x, -2147483647i, var_2.x)) << (func_1().x % 32u), -abs(min(u_input.a.x, u_input.a.x)), -(u_input.a.x ^ 1i), ~53438i));
}

