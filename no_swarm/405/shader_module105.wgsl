struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_5 {
    return Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1511f, 1541f), vec2<f32>(834f, 1363f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(688f, 513f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, -602f))))));
}

fn func_3(arg_0: Struct_5) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = true & (all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false))) || true);
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(808f)))), arg_0.a.x)));
    var var_3 = Struct_1(58721u);
    var_1 = all(!vec4<bool>(all(vec2<bool>(false, true)), true, select(true, true, true), _wgslsmith_f_op_f32(-var_2.x) == var_2.x));
    return !select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(-468f > var_2.x, true, true)), select(any(vec2<bool>(false, false)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true));
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    var var_0 = vec4<f32>(-1152f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1691f + 464f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-225f, -640f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_div_f32(-819f, _wgslsmith_f_op_f32(floor(-831f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-778f)), 1f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-215f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-887f, var_0.x)))))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * -1820f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - var_0.x))))));
    var var_1 = reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(max(countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, -8661i)), vec4<i32>(u_input.c.x, 41659i, u_input.e.x, u_input.c.x) ^ vec4<i32>(u_input.e.x, 22827i, u_input.c.x, 25168i)), -_wgslsmith_add_vec4_i32(vec4<i32>(24773i, 14740i, -37570i, u_input.e.x), vec4<i32>(u_input.d, u_input.e.x, u_input.c.x, u_input.c.x))), u_input.c.x));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1000f, var_0.x, 702f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))));
    var_1 = u_input.d;
    return _wgslsmith_f_op_f32(trunc(var_0.x));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = vec4<u32>(abs(arg_1.d), min(~24261u, 62196u) | u_input.b, u_input.b, 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(-1728f * _wgslsmith_f_op_f32(func_4(select(func_3(func_2(vec3<i32>(11764i, -31204i, arg_3.x), Struct_2(true, vec4<bool>(arg_1.a, true, false, false), Struct_1(70773u), var_0.x, 1u))), select(arg_1.b.xyw, arg_1.b.wyz, !arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, false)))));
    var_1 = arg_0;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(889f + _wgslsmith_f_op_f32(arg_0 + arg_0)));
    let var_2 = _wgslsmith_mult_vec2_u32(var_0.yy, vec2<u32>(70270u, abs(countOneBits(u_input.b))));
    return Struct_4(vec2<u32>(5467u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 26032u, var_2.x, 1u), vec4<u32>(43261u, 4294967295u, var_0.x, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 20828u, arg_1.c.a, u_input.b), vec4<u32>(1u, 1u, 4294967295u, 47883u)))), _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(i32(-1i) * -71222i), ~countOneBits(-1i)), max(_wgslsmith_div_vec2_i32(arg_3, u_input.e.xx), u_input.e.yx)), true == any(arg_1.b.xwz));
}

fn func_5(arg_0: Struct_4) -> u32 {
    return firstTrailingBit(~1u) ^ _wgslsmith_dot_vec4_u32(~(~vec4<u32>(20289u, u_input.b, 42802u, arg_0.a.x)) >> (min(vec4<u32>(3714u, 0u, u_input.a.x, arg_0.a.x), abs(vec4<u32>(1u, u_input.a.x, u_input.a.x, 20033u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, ~u_input.b, func_1(-1000f, Struct_2(true, vec4<bool>(arg_0.c, arg_0.c, true, true), Struct_1(0u), u_input.b, arg_0.a.x), vec2<f32>(-2285f, -201f), vec2<i32>(1i, arg_0.b.x)).a.x, 38689u), min(vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.b, 1u) ^ vec4<u32>(arg_0.a.x, u_input.b, arg_0.a.x, arg_0.a.x), max(vec4<u32>(1u, 41833u, arg_0.a.x, 1u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.b, reverseBits(0u)), func_5(func_1(-1544f, Struct_2(false, vec4<bool>(true, true, false, true), Struct_1(u_input.b), u_input.b, 4145u), vec2<f32>(2138f, 2187f), vec2<i32>(u_input.e.x, -1i)))), u_input.b & _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), u_input.a.x)), _wgslsmith_add_u32(u_input.b, reverseBits(0u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2361f)));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1917f, 724f, -2409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-442f)) - _wgslsmith_f_op_f32(ceil(-207f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-521f, _wgslsmith_f_op_f32(467f * -510f), _wgslsmith_f_op_f32(sign(894f)), _wgslsmith_f_op_f32(max(-188f, 1160f))))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))))));
    let var_4 = -(_wgslsmith_clamp_i32(-14552i, _wgslsmith_mult_i32(u_input.c.x & 1i, ~u_input.c.x), _wgslsmith_sub_i32(-u_input.d, reverseBits(u_input.d))) << (~u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2650f - _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_div_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u))), ~1u));
}

