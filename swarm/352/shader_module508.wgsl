struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_add_vec2_u32(u_input.b.zz, u_input.b.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -586f)))));
    var var_1 = arg_2.x;
    var var_2 = vec3<bool>(true, true, false);
    var var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(u_input.a.yx), max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), abs(vec2<i32>(-11959i, u_input.a.x))), vec2<i32>(u_input.a.x, u_input.a.x))), vec2<i32>(u_input.a.x, u_input.a.x));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(~45559u, ~arg_2.x)), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(4294967295u, 20522u), 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 29424u, arg_2.x), vec3<u32>(1u, 15794u, arg_1)))), arg_1);
    return countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, ~(4294967295u >> (var_4 % 32u)), arg_1, _wgslsmith_div_u32(var_4, 30145u)), vec4<u32>(arg_1, 1u, 0u, abs(var_0.a.x)) >> (reverseBits(~vec4<u32>(0u, arg_2.x, 53090u, var_0.a.x)) % vec4<u32>(32u))));
}

fn func_2() -> bool {
    var var_0 = Struct_2(vec4<i32>(-10680i, -20532i, u_input.a.x, u_input.a.x), vec4<i32>(max(-20090i, i32(-1i) * -1i), -(u_input.a.x | -59348i), min(u_input.a.x, 40633i) ^ u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-4991i, 2147483647i, 1i, u_input.a.x), ~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))) << (~(~func_3(Struct_3(vec2<u32>(u_input.b.x, u_input.b.x), -577f), u_input.b.x, vec3<u32>(0u, u_input.b.x, 22141u))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1229f, -581f, _wgslsmith_f_op_f32(f32(-1f) * -1632f), -162f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1721f, -446f, -607f, 2493f) + vec4<f32>(-388f, 1798f, 824f, -189f)))), countOneBits(u_input.a), true), vec4<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true))), false, any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false));
    var_0 = Struct_2(_wgslsmith_mod_vec4_i32(var_0.b, _wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.a.x, -5578i, u_input.a.x, ~(-2545i)), (var_0.b >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 21519u) % vec4<u32>(32u))) & vec4<i32>(u_input.a.x, u_input.a.x, var_0.b.x, u_input.a.x))), vec4<i32>(~_wgslsmith_dot_vec2_i32(var_0.c.b.zz, vec2<i32>(u_input.a.x, var_0.a.x)), -13878i, -25833i & (_wgslsmith_div_i32(0i, 9167i) | -var_0.b.x), ~_wgslsmith_add_i32(u_input.a.x, 1i)), Struct_1(vec4<f32>(_wgslsmith_div_f32(-513f, _wgslsmith_f_op_f32(floor(var_0.c.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.a.x - var_0.c.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(var_0.a.x, 39822i, var_0.b.x), ~var_0.c.b), ~vec3<i32>(-6228i, var_0.b.x, 39501i)), var_0.c.c), !(!var_0.d));
    let var_1 = -(var_0.a | min(_wgslsmith_clamp_vec4_i32(var_0.a, var_0.a, vec4<i32>(1i, 1508i, -2147483647i, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_0.b.x, var_0.c.b.x, 33922i), vec4<i32>(2147483647i, -1i, var_0.a.x, var_0.a.x)))) | vec4<i32>(_wgslsmith_sub_i32(select(0i, _wgslsmith_sub_i32(-1i, 31273i), any(vec4<bool>(true, var_0.c.c, false, var_0.d.x))), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, 2915i, -2147483647i, -2147483647i), abs(var_0.b))), ~(~_wgslsmith_mult_i32(612i, u_input.a.x)), ~_wgslsmith_mult_i32(i32(-1i) * -36129i, min(0i, -16739i)), u_input.a.x);
    var var_2 = var_0.c.a.x > 1054f;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.a.x, -685f, 981f, var_0.c.a.x), vec4<f32>(var_0.c.a.x, -1430f, var_0.c.a.x, -422f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, 1533f) + vec4<f32>(var_0.c.a.x, 503f, var_0.c.a.x, var_0.c.a.x)), vec4<f32>(1935f, -318f, 325f, 693f))))) - _wgslsmith_f_op_vec4_f32(exp2(var_0.c.a)));
    return var_0.d.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32) -> vec4<bool> {
    let var_0 = vec3<bool>(true, true & func_2(), all(select(vec3<bool>(true, false, u_input.a.x > u_input.a.x), vec3<bool>(any(vec2<bool>(true, true)), false, all(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, false))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(-692f, _wgslsmith_f_op_f32(-arg_0)), 1669f, arg_0, 1079f), ~u_input.a ^ vec3<i32>(~u_input.a.x << (~arg_2 % 32u), u_input.a.x, u_input.a.x), all(!(!select(var_0.zx, var_0.xz, var_0.x))));
    let var_2 = -vec2<i32>(1i, abs((u_input.a.x ^ u_input.a.x) | 1i));
    let var_3 = Struct_5(Struct_4(Struct_3(select(u_input.b.xz, _wgslsmith_add_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, 33611u)), func_2()), arg_0), Struct_3(u_input.b.zz, _wgslsmith_f_op_f32(select(872f, _wgslsmith_f_op_f32(sign(102f)), var_1.c)))), Struct_4(Struct_3(_wgslsmith_mult_vec2_u32(u_input.b.yx & u_input.b.yz, u_input.b.yz), -235f), Struct_3(u_input.b.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x))))), abs(~(~vec3<u32>(1u, 0u, u_input.b.x))));
    var var_4 = vec3<u32>(22682u, ~(~1u), firstLeadingBit(~(~u_input.b.x)));
    return !(!select(vec4<bool>(false, false, any(var_0.xx), var_0.x && false), !select(vec4<bool>(var_1.c, var_1.c, var_0.x, var_0.x), vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(var_0.x, var_0.x, true, var_1.c)), false));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> Struct_2 {
    var var_0 = select(!select(vec4<bool>(true, arg_1.x, -1i <= u_input.a.x, !arg_1.x), vec4<bool>(true, true, arg_2 == 64703i, true), arg_0.d), arg_0.d, !vec4<bool>(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(-1i, -10510i, arg_2, u_input.a.x)) > ~arg_2, arg_0.c.c, true, _wgslsmith_add_i32(-4435i, arg_2) < (i32(-1i) * -1i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c.a.x, arg_3, arg_3)))), arg_0.c.a.yzw)))));
    var_0 = !func_1(_wgslsmith_div_f32(arg_0.c.a.x, 1472f), max(arg_0.b.x | ~0i, arg_0.c.b.x >> (113684u % 32u)), u_input.b.x);
    var_0 = !select(vec4<bool>(arg_1.x, func_2(), arg_1.x, func_1(arg_0.c.a.x, 47217i, u_input.b.x ^ u_input.b.x).x), vec4<bool>(!(!arg_0.d.x), select(u_input.b.x < u_input.b.x, true, arg_0.d.x), true, arg_0.c.c), any(arg_0.d.yx));
    var var_2 = var_0.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(vec4<i32>((2413i << (u_input.b.x % 32u)) << (u_input.b.x % 32u), u_input.a.x | u_input.a.x, 25422i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -6653i, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i)))), vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x) | vec4<i32>(-10717i, abs(0i), u_input.a.x, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, u_input.a.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1422f + 1029f), -517f, _wgslsmith_div_f32(-636f, -1169f), _wgslsmith_f_op_f32(step(-195f, -389f))), u_input.a, true), select(select(vec4<bool>(false, true, false, true), func_1(2245f, 59750i, 87827u), true), vec4<bool>(true, u_input.a.x <= 38626i, u_input.a.x > 4149i, true), vec4<bool>(true, true, true, true))), vec2<bool>(u_input.a.x > -1i, true), ~firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, -40161i) & _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)) * 351f)));
    let var_1 = !var_0.d.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(577f, _wgslsmith_f_op_f32(sign(var_0.c.a.x))));
    var var_3 = func_4(func_4(Struct_2(-var_0.a, _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, -2147483647i, -29471i, u_input.a.x), var_0.b), vec4<i32>(u_input.a.x, -44607i, u_input.a.x, var_0.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1119f, 119f, var_0.c.a.x, var_0.c.a.x)), ~vec3<i32>(-4196i, 29606i, -1i), var_0.d.x), !vec4<bool>(var_1, var_0.c.c, var_0.c.c, var_0.c.c)), !select(vec2<bool>(var_1, var_1), !vec2<bool>(var_1, true), var_0.d.wz), i32(-1i) * -15791i, _wgslsmith_f_op_f32(242f * _wgslsmith_f_op_f32(f32(-1f) * -720f))), !select(vec2<bool>(true, all(var_0.d)), vec2<bool>(var_1, !var_0.c.c), false), u_input.a.x, 967f);
    var var_4 = Struct_1(var_3.c.a, vec3<i32>(func_4(var_0, vec2<bool>(true, true), countOneBits(var_0.b.x), _wgslsmith_f_op_f32(var_0.c.a.x - var_2)).a.x, firstTrailingBit(_wgslsmith_mult_i32(var_3.a.x, var_0.c.b.x)), reverseBits(reverseBits(u_input.a.x))) | var_3.a.wxz, !any(vec2<bool>(false, var_0.c.c)) || false);
    var_4 = var_0.c;
    var var_5 = func_4(var_0, func_4(Struct_2(vec4<i32>(-1i) * -var_0.b, ~vec4<i32>(61058i, -63210i, -31559i, u_input.a.x), Struct_1(var_0.c.a, abs(var_0.b.xwz), var_4.b.x >= var_4.b.x), select(var_0.d, var_3.d, var_3.d)), var_3.d.yx, -16496i, var_2).d.xw, 0i, -1480f).c;
    var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c.a, var_4.a) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(241f, var_3.c.a.x, var_5.a.x, 959f) + var_4.a)), var_0.c.a))), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(-36403i, 24841i, var_0.a.x), abs(vec3<i32>(var_4.b.x, 54732i, var_0.a.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(20223u);
}

