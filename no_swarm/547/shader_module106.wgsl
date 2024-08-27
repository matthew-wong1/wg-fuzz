struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global1 = _wgslsmith_div_i32(global0.d.x, -u_input.d.x);
    global0 = Struct_1(_wgslsmith_mod_u32(min(~28272u, ~u_input.b), u_input.e.x) > 0u, 1i, reverseBits(abs(_wgslsmith_sub_i32(u_input.d.x, 1i))), countOneBits(global0.d));
    let var_0 = !any(vec2<bool>(false, !global0.a));
    global0 = Struct_1(var_0, min(global0.c, -52626i) & -((10360i ^ global0.c) << ((u_input.e.x ^ u_input.c) % 32u)), global0.c, -firstTrailingBit(abs(global0.d & vec4<i32>(-3996i, 1i, u_input.d.x, 1021i))));
    var var_1 = (~(-(-45225i & u_input.d.x)) << (~u_input.b % 32u)) ^ _wgslsmith_dot_vec4_i32(global0.d, global0.d);
    return global0.c;
}

fn func_2() -> vec2<i32> {
    global0 = Struct_1(true, _wgslsmith_clamp_i32(global0.c, global0.b, _wgslsmith_div_i32(reverseBits(u_input.a.x), 1i)), func_3(), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(select(2147483647i, u_input.d.x, global0.a), select(global0.b, global0.b, global0.a)), min(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(global0.d.x, 32591i, 306i)), _wgslsmith_add_i32(global0.b, -1i))), _wgslsmith_dot_vec3_i32(max(abs(global0.d.wxz), max(vec3<i32>(global0.c, u_input.a.x, -416i), vec3<i32>(u_input.d.x, global0.b, -1i))), u_input.d), 1i, countOneBits(min(-39027i, select(global0.c, -12677i, true)))));
    let var_0 = global0.c;
    global0 = Struct_1(any(select(vec2<bool>(all(vec3<bool>(global0.a, global0.a, global0.a)), true), select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, true), vec2<bool>(true, global0.a)), !vec2<bool>(false, global0.a), true), select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a)), select(vec2<bool>(false, global0.a), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec3<bool>(true, false, global0.a))))), global0.b, 1i, vec4<i32>(reverseBits(-14223i), ~u_input.a.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d.x, -2147483647i)), vec2<i32>(25890i, -1i)), (global0.c & (i32(-1i) * -15788i)) << (u_input.b % 32u)));
    global1 = _wgslsmith_clamp_i32(25510i, select(~(u_input.a.x ^ (u_input.d.x >> (u_input.b % 32u))), _wgslsmith_div_i32(u_input.d.x, u_input.a.x), global0.a), u_input.d.x ^ u_input.d.x);
    var var_1 = Struct_1(false, u_input.d.x, -46854i, -(~min(-vec4<i32>(-2147483647i, 0i, u_input.d.x, -98809i), global0.d)));
    return global0.d.zw;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    global1 = firstTrailingBit(global0.b);
    global1 = 0i;
    let var_0 = Struct_1(true == arg_1, -13136i, -global0.c, firstLeadingBit(~(~(-global0.d))));
    let var_1 = var_0;
    var var_2 = select(vec4<u32>(select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(19456u, u_input.b, 49825u), vec3<u32>(u_input.c, u_input.e.x, 0u)), 1854u, 8194u), arg_3.x, global0.a), 25429u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 57326u, 51435u), _wgslsmith_div_vec3_u32(vec3<u32>(86448u, 0u, 4294967295u), vec3<u32>(1u, u_input.b, 52419u))), ~(min(arg_3.x, arg_3.x) ^ ~4294967295u)), firstTrailingBit(_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 58332u, u_input.c, 20847u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_3.x, 5092u, arg_3.x, 74106u) >> (vec4<u32>(18626u, 51946u, u_input.c, 56852u) % vec4<u32>(32u)), ~vec4<u32>(arg_3.x, 46135u, u_input.b, arg_3.x)))), select(vec4<bool>(true, all(vec2<bool>(false, var_0.a)), all(select(vec3<bool>(true, true, false), vec3<bool>(arg_2.a, arg_1, arg_2.a), false)), !arg_2.a | (true && var_1.a)), !(!(!vec4<bool>(var_1.a, true, global0.a, false))), select(select(vec4<bool>(true, true, arg_1, arg_1), select(vec4<bool>(false, false, var_0.a, arg_2.a), vec4<bool>(var_1.a, global0.a, arg_2.a, false), global0.a), vec4<bool>(true, true, true, false)), select(!vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(true, true, arg_1, var_1.a), vec4<bool>(global0.a, var_1.a, var_0.a, var_0.a)), any(select(vec3<bool>(true, arg_1, false), vec3<bool>(true, true, global0.a), arg_2.a)))));
    return var_1;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    var var_0 = func_4(select(u_input.a, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_1, 179i)), vec2<i32>(global0.c, global0.d.x)), func_2()), arg_2.x), any(arg_2.zz), Struct_1(true, -u_input.a.x, 0i, ~global0.d), abs(~firstLeadingBit(u_input.e >> (u_input.e % vec2<u32>(32u)))));
    var_0 = Struct_1(true, arg_1, global0.c, -(~(-(var_0.d & vec4<i32>(-1i, -1i, var_0.c, global0.b)))));
    let var_1 = Struct_1(!(var_0.a && (global0.a || global0.a)), -30083i, u_input.d.x, vec4<i32>(1i, u_input.d.x, var_0.d.x | max(global0.c, reverseBits(arg_1)), _wgslsmith_mult_i32(-u_input.d.x ^ (i32(-1i) * -2147483647i), ~u_input.a.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0), global0.d.wy))));
    var var_2 = var_1;
    global0 = func_4(~abs(-vec2<i32>(global0.c, -1i)), any(arg_2.xzw), Struct_1(arg_2.x, var_0.c, arg_0, _wgslsmith_mult_vec4_i32(var_1.d, var_2.d & vec4<i32>(global0.d.x, var_2.b, var_2.b, u_input.a.x))), u_input.e);
    return -1514f;
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(reverseBits(_wgslsmith_mult_u32(~arg_1 | 4294967295u, ~(arg_1 & 5942u))), _wgslsmith_dot_vec2_u32(~(~u_input.e), vec2<u32>(_wgslsmith_mod_u32(4294967295u, 1u), 1u) << (reverseBits(firstTrailingBit(u_input.e)) % vec2<u32>(32u))), min(8211u, arg_1) & ~(firstLeadingBit(arg_1) >> (0u % 32u)));
    var var_1 = func_4(arg_0.xx, firstLeadingBit(u_input.c) != firstLeadingBit(1u), arg_2, firstTrailingBit(~u_input.e));
    global0 = func_4(-(-_wgslsmith_add_vec2_i32(global0.d.xw, vec2<i32>(arg_2.d.x, -13037i)) & reverseBits(u_input.a << (u_input.e % vec2<u32>(32u)))), true, arg_2, ~u_input.e);
    var var_2 = Struct_1(false, abs(firstLeadingBit(arg_2.c)), arg_2.d.x, reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, var_1.b, 18722i, -1i), vec4<i32>(1i, 28850i, arg_0.x, var_1.c | 1i), global0.d)));
    var_1 = Struct_1(false, u_input.d.x, var_2.c, -_wgslsmith_mod_vec4_i32(~var_1.d ^ var_2.d, _wgslsmith_mod_vec4_i32(-var_2.d, var_1.d & vec4<i32>(-9795i, var_1.d.x, arg_2.d.x, arg_0.x))));
    return Struct_1(arg_2.a, -1i, abs(u_input.a.x), vec4<i32>(29570i, firstTrailingBit(-(1i ^ var_2.c)), ~(1i >> (_wgslsmith_clamp_u32(1u, var_0, 134u) % 32u)), arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, global0.c, ~(global0.d.x << (_wgslsmith_div_u32(78198u, u_input.b) % 32u)), vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_add_i32(u_input.d.x, 0i), u_input.a.x));
    var var_1 = !vec4<bool>(false & global0.a, var_0.a & true, select(u_input.e.x <= (u_input.c & u_input.e.x), true, select(true, all(vec3<bool>(false, global0.a, true)), any(vec3<bool>(global0.a, false, global0.a)))), false);
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, select(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e), u_input.b, true)), _wgslsmith_div_vec2_u32(vec2<u32>(825u, 0u) >> (u_input.e % vec2<u32>(32u)), ~(u_input.e << (u_input.e % vec2<u32>(32u))))));
    var var_3 = func_5(~(~vec3<i32>(global0.d.x, -2147483647i, ~global0.d.x)), _wgslsmith_mod_u32(u_input.c, ~u_input.b), Struct_1(true, ~(-38734i), -(~(-u_input.a.x)), abs(reverseBits(vec4<i32>(0i, global0.c, u_input.d.x, 2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(-456f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(var_0.d.x, u_input.a.x, vec4<bool>(var_0.a, var_0.a, var_0.a, global0.a))), _wgslsmith_f_op_f32(floor(1431f)))), _wgslsmith_div_f32(-1318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1436f) * 1f)), 1f));
    var_1 = !select(!select(vec4<bool>(var_3.a, false, var_0.a, false), select(vec4<bool>(var_0.a, true, var_3.a, false), vec4<bool>(false, var_0.a, true, global0.a), var_1.x), vec4<bool>(var_3.a, var_1.x, true, true)), !select(select(vec4<bool>(var_0.a, false, var_3.a, true), vec4<bool>(false, var_0.a, false, global0.a), false), vec4<bool>(true, var_1.x, false, var_3.a), select(vec4<bool>(false, false, false, global0.a), vec4<bool>(false, true, var_1.x, var_1.x), global0.a)), 4294967295u > _wgslsmith_add_u32(~u_input.c, u_input.e.x));
    var var_4 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.b, global0.b, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, var_3.d.x), vec3<i32>(0i, -1i, -26862i)), ~u_input.d.x), countOneBits(vec4<i32>(-1i, var_0.d.x, -2147483647i, -36882i)) << (vec4<u32>(~var_2.x, 4294967295u, u_input.c, u_input.b) % vec4<u32>(32u))));
}

