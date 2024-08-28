struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = vec4<bool>(!arg_0, all(select(!vec2<bool>(arg_0, false), vec2<bool>(u_input.c == u_input.c, true | arg_0), vec2<bool>(true, false))), u_input.c < abs(-3253i), false);
    let var_1 = vec4<f32>(-314f, -1288f, 277f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(617f, 1f) + -2275f));
    var var_2 = Struct_2(vec4<i32>(~u_input.d, -min(_wgslsmith_mult_i32(u_input.d, 1185i), 2147483647i), 1i, 1i), _wgslsmith_sub_i32(52942i, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 89941i, 34598i, -2147483647i), vec4<i32>(u_input.b.x, u_input.c, 1i, 2147483647i))), ~(~vec4<i32>(u_input.d, 2147483647i, u_input.c, 33062i)))), vec2<bool>(true, true), _wgslsmith_div_i32(u_input.d, _wgslsmith_mod_i32(firstLeadingBit(-10103i), _wgslsmith_dot_vec3_i32(vec3<i32>(9997i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.d, u_input.d, -2147483647i)))) > _wgslsmith_div_i32(u_input.d, _wgslsmith_add_i32(u_input.d, -6386i)));
    let var_3 = countOneBits(u_input.a.x);
    let var_4 = select(var_0.wwx, vec3<bool>(any(vec2<bool>(false, true)) & var_0.x, true, !(arg_0 & !var_2.c.x)), select(vec3<bool>(false, var_2.d, true), var_0.yzw, !(!var_0.xwx)));
    return !var_0.xxw;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(select(~u_input.a, ~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(46354u, 111261u, 4294967295u)), func_3(true)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(2906u, arg_0.x, 4294967295u)), vec3<u32>(22020u, ~0u, ~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-586f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f))) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1688f, -1832f), _wgslsmith_f_op_f32(743f - 538f))), 428f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1635f, 881f) - vec2<f32>(-322f, 175f)))))));
    let var_2 = u_input.c;
    var var_3 = firstTrailingBit(firstTrailingBit(~(36794u << (_wgslsmith_dot_vec3_u32(arg_0, arg_0) % 32u))));
    var var_4 = var_2;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 1201f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - var_1.x), -1351f)) * _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(var_1.x)))), -152f)))));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(860f * _wgslsmith_f_op_f32(min(arg_0, arg_0))), -1000f, _wgslsmith_f_op_f32(-arg_0), 1100f), vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-1096f * -497f)));
    return _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 506f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec3<u32>(1u, u_input.a.x, 54482u))), 757f, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))))));
    let var_1 = Struct_1(2147483647i | -(u_input.c << (0u % 32u)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<u32>(0u, u_input.a.x, ~u_input.a.x), vec2<bool>(true, true));
    var_0 = _wgslsmith_f_op_f32(1782f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -810f) - 1181f));
    let var_2 = Struct_2(min(vec4<i32>(0i, -14083i, var_1.a, countOneBits(-15359i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, ~(-1i), -1i, ~var_1.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.d, u_input.d, u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, var_1.a, var_1.a, u_input.d), vec4<i32>(var_1.a, -1i, 25112i, 2147483647i))))), u_input.b.x, vec2<bool>(true, !var_1.b && any(func_3(false))), firstLeadingBit(~var_1.c.x) < 62954u);
    var var_3 = var_2.b >> (reverseBits(countOneBits(firstTrailingBit(u_input.a.x ^ 40451u))) % 32u);
    var var_4 = ~4294967295u;
    var var_5 = u_input.a.x;
    var var_6 = firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, var_2.a.x, var_1.a, u_input.d), var_2.a, vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.d)))) | reverseBits(reverseBits(select(vec4<i32>(1i, u_input.d, u_input.b.x, var_2.b), vec4<i32>(var_2.a.x, 19971i, 11237i, var_1.a), true)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 47301u, 1u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.c, u_input.d, var_1.a), u_input.a.x);
}

