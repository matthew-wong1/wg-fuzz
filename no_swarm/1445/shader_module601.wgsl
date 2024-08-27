struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> u32 {
    return global0.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = vec4<u32>(~(~global0.a.x), global0.a.x, 0u, func_2());
    global0 = Struct_2(~global0.a);
    global0 = Struct_2(global0.a);
    let var_1 = arg_0;
    var var_2 = Struct_1(var_1.d, -1i, arg_0.c, ~(var_1.e ^ -_wgslsmith_sub_i32(17036i, 3795i)), arg_0.d);
    return Struct_1(arg_0.b, -2147483647i, var_2.c, max(var_2.a, _wgslsmith_mult_i32(2147483647i & var_2.b, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_1.a), vec2<i32>(var_1.d, u_input.a.x)), u_input.c))), 1i);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_div_vec2_u32(global0.a, ~_wgslsmith_mod_vec2_u32(~global0.a, firstLeadingBit(global0.a))));
    var var_0 = Struct_1(-25264i & arg_2.d, 0i, arg_1.c, _wgslsmith_mult_i32(countOneBits(reverseBits(arg_0)), abs(~_wgslsmith_mod_i32(arg_0, 9956i))), u_input.a.x | u_input.d.x);
    return Struct_1(18690i, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, (var_0.e ^ -55294i) ^ 1i), -1i), var_0.c, -countOneBits(~arg_2.d) << (countOneBits(1u) % 32u), ~_wgslsmith_dot_vec4_i32(-(vec4<i32>(-6360i, var_0.a, arg_2.a, 1i) ^ vec4<i32>(u_input.a.x, arg_0, 7625i, -1i)), vec4<i32>(-1i, 24051i, u_input.b.x, var_0.e) & vec4<i32>(arg_0, var_0.a, -13189i, 2147483647i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = i32(-1i) * -2147483647i;
    global0 = Struct_2(vec2<u32>(4294967295u, ~(~_wgslsmith_clamp_u32(global0.a.x, arg_2.a.x, 85532u))));
    var var_1 = ~(~firstTrailingBit(max(vec3<u32>(62620u, arg_2.a.x, 1u), vec3<u32>(1u, 20494u, global0.a.x)))) >> (~vec3<u32>(_wgslsmith_div_u32(~global0.a.x, ~0u), global0.a.x >> (select(58611u, arg_2.a.x, false) % 32u), reverseBits(select(arg_2.a.x, global0.a.x, arg_1.c.x))) % vec3<u32>(32u));
    var var_2 = u_input.b;
    let var_3 = Struct_1(u_input.b.x, var_0, func_1(func_3(_wgslsmith_sub_i32(var_0, var_0) & arg_1.b, func_1(func_3(5071i, arg_1, arg_1), firstLeadingBit(vec3<u32>(21601u, 21023u, 1u))), func_1(func_3(var_0, arg_1, arg_1), vec3<u32>(arg_2.a.x, 1u, 4294967295u))), vec3<u32>(~_wgslsmith_sub_u32(arg_2.a.x, 30617u), arg_2.a.x, ~1u)).c, -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-var_0, _wgslsmith_add_i32(-5864i, arg_1.e), 1i), u_input.d << (vec3<u32>(1u, 25852u, 0u) % vec3<u32>(32u))), vec3<i32>(1i, -1i, 1i)));
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_1.e, -2147483647i, var_0), ~var_0), _wgslsmith_dot_vec2_i32(-var_2.xz, vec2<i32>(1i, var_0))) & -54142i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_1.a, abs(_wgslsmith_mod_i32(var_3.e, 2147483647i))), _wgslsmith_div_i32(func_1(Struct_1(var_3.e, -2147483647i, vec2<bool>(false, var_3.c.x), u_input.d.x, u_input.a.x), ~vec3<u32>(35252u, var_1.x, arg_2.a.x)).b, u_input.d.x)), select(arg_1.c, arg_1.c, !select(arg_1.c, vec2<bool>(var_3.c.x, arg_1.c.x), true)), 2147483647i >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 77719u), ~vec2<u32>(arg_2.a.x, var_1.x)) % 32u), -max(i32(-1i) * -10830i, 1i));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    var var_0 = ~(abs(u_input.c.x) & -u_input.c.x);
    var var_1 = Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 28534u), ~global0.a), vec2<u32>(countOneBits(85848u), 4294967295u)), global0.a));
    var var_2 = Struct_2(global0.a);
    var_0 = _wgslsmith_dot_vec3_i32(max(max(vec3<i32>(-19031i, _wgslsmith_mod_i32(arg_0.d, 1i), max(-18909i, arg_0.e)), -(u_input.d ^ u_input.b)), _wgslsmith_div_vec3_i32(vec3<i32>(-u_input.b.x, arg_0.e, ~u_input.c.x), ~u_input.d)), (select(vec3<i32>(-2147483647i, -1i, -74413i), vec3<i32>(u_input.b.x, 1i, arg_0.a), arg_0.c.x || arg_0.c.x) | (vec3<i32>(-1i) * -u_input.b)) ^ u_input.b);
    let var_3 = arg_0.d;
    return vec2<bool>(true, any(vec3<bool>(select(arg_0.c.x, true, true), func_3(-26205i, arg_0, arg_0).c.x, !arg_1 || arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, -1000f, -568f, 384f)), func_3(u_input.a.x, Struct_1(-34118i, u_input.a.x, vec2<bool>(false, false), 1i, u_input.c.x), func_1(Struct_1(u_input.a.x, -2147483647i, vec2<bool>(true, true), u_input.c.x, 698i), vec3<u32>(global0.a.x, global0.a.x, global0.a.x))), Struct_2(_wgslsmith_div_vec2_u32(global0.a, vec2<u32>(51381u, 0u))), 1690f), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, 239f, 993f, -1240f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1704f, -382f, -1844f, -1908f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-864f, 1889f, -1000f, 596f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(864f, _wgslsmith_f_op_f32(step(607f, -1000f)), _wgslsmith_f_op_f32(abs(-362f)), _wgslsmith_f_op_f32(max(458f, -968f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(-448f - -887f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -501f))) * _wgslsmith_f_op_f32(f32(-1f) * -214f)), -210f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f - -730f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(839f))), true))));
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(abs(_wgslsmith_div_vec2_u32(global0.a, global0.a) << (~vec2<u32>(global0.a.x, 0u) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.x, 0u), global0.a)));
    global0 = Struct_2(vec2<u32>(abs(_wgslsmith_mod_u32(0u, 0u ^ global0.a.x)), 4294967295u));
    var_2 = Struct_2(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-498f, var_1.x)))), var_1.x, -534f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 673f) * var_1.x), _wgslsmith_f_op_f32(select(465f, var_1.x, var_0.x || false)))), 1135f);
}

