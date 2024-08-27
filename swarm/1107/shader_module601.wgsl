struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = false;
    var var_1 = any(!arg_1.ww);
    var var_2 = vec2<bool>(!all(vec4<bool>(arg_3.d, select(true, false, arg_1.x), true, true)), true);
    var_1 = true;
    var_1 = !(reverseBits(arg_3.a.c) <= ((~arg_3.c.c ^ ~4294967295u) ^ firstLeadingBit(23045u)));
    return _wgslsmith_f_op_f32(arg_3.a.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.c.d.x - arg_3.c.d.x))) - -238f)));
}

fn func_2() -> Struct_3 {
    var var_0 = ~_wgslsmith_mod_u32(~(~(~30230u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, 107848u, u_input.a.x), ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u)));
    var_0 = ~u_input.a.x;
    var var_1 = Struct_1(0i, vec2<f32>(1f, 1f), ~abs(_wgslsmith_mult_u32(19693u, 1u)) >> (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1000f - -2079f), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-404f, 114f)), _wgslsmith_f_op_f32(select(-868f, -439f, true)))), 582f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-312f, 439f, 829f, 293f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1465f, 521f, 548f) * vec4<f32>(-1366f, 1532f, -530f, -304f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1334f, 495f, -235f, -414f) + vec4<f32>(-1433f, 138f, -257f, 1101f)))))));
    var_1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b, min(abs(var_1.a), var_1.a), ~var_1.a), 0i, 2147483647i >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1023f, -408f), var_1.d.yy) - _wgslsmith_div_vec2_f32(vec2<f32>(108f, -219f), var_1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.d.zw, var_1.b) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-610f, var_1.b.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(883f, var_1.b.x), vec2<f32>(var_1.b.x, var_1.b.x), vec2<bool>(false, true)))) - vec2<f32>(var_1.b.x, -260f))), 4294967295u, vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), var_1.d.x, var_1.d.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-1i, vec2<f32>(var_1.b.x, var_1.b.x), u_input.a.x, vec4<f32>(var_1.b.x, -402f, -998f, -1318f)), vec3<i32>(u_input.b, var_1.a, 3196i), Struct_1(1i, vec2<f32>(-1042f, 1868f), 38886u, vec4<f32>(474f, 868f, -471f, 1520f)), false), vec4<bool>(true, false, true, true), Struct_1(u_input.b, var_1.b, var_1.c, vec4<f32>(1398f, var_1.d.x, 601f, var_1.b.x)), Struct_2(Struct_1(-2147483647i, vec2<f32>(var_1.b.x, var_1.d.x), 23318u, vec4<f32>(701f, var_1.b.x, 869f, 2514f)), vec3<i32>(17931i, u_input.b, 1i), Struct_1(39914i, var_1.b, 4294967295u, var_1.d), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.d.x, -538f)))) + var_1.d.x) * -664f);
    return Struct_3(513f);
}

fn func_1() -> Struct_2 {
    var var_0 = firstTrailingBit(_wgslsmith_mod_i32(-firstTrailingBit(~u_input.b), 0i));
    var var_1 = func_2();
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)) - _wgslsmith_f_op_f32(round(var_1.a)))));
    var_0 = u_input.c;
    let var_2 = !vec3<bool>(!(var_1.a < var_1.a), true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))));
    return Struct_2(Struct_1(_wgslsmith_mod_i32(~u_input.b, max(-11261i, firstLeadingBit(30889i))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(round(var_1.a))))), _wgslsmith_clamp_u32(10370u, ~(u_input.a.x >> (11315u % 32u)), u_input.a.x | 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-var_1.a), 975f, _wgslsmith_f_op_f32(round(-651f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, var_1.a, -358f, -625f), vec4<f32>(var_1.a, 2139f, var_1.a, -960f), vec4<bool>(var_2.x, var_2.x, true, var_2.x)))))), select(-vec3<i32>(min(u_input.b, u_input.b), ~u_input.b, _wgslsmith_mult_i32(-9472i, -1i)), firstTrailingBit(vec3<i32>(u_input.c & 0i, _wgslsmith_sub_i32(u_input.b, u_input.c), i32(-1i) * -17624i)), !select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, var_2.x, var_2.x), true)), Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 840f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1252f, var_1.a) * vec2<f32>(var_1.a, var_1.a)))), 30214u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(227f * 1117f), 153f, -788f, _wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 258f, -432f, var_1.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, var_1.a, var_1.a, var_1.a))))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = u_input.c;
    var var_2 = var_0;
    var_2 = func_1();
    var_2 = Struct_2(Struct_1(~abs(u_input.c) >> (1u % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_2.a.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.d.x, 1000f))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.a.c, u_input.a.x, 36757u, 17001u)) >> (u_input.a % vec4<u32>(32u)), ~vec4<u32>(var_0.c.c, u_input.a.x, 19843u, 10121u)), _wgslsmith_f_op_vec4_f32(exp2(var_2.c.d))), -vec3<i32>(_wgslsmith_add_i32(-var_2.b.x, ~(-2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.b, vec3<i32>(2147483647i, u_input.c, var_0.c.a)), var_2.b), -35262i), func_1().a, true);
    var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.c.b.x, _wgslsmith_f_op_f32(func_3(Struct_2(var_0.a, vec3<i32>(var_2.c.a, var_1, var_1) >> (vec3<u32>(35580u, var_2.a.c, 1u) % vec3<u32>(32u)), var_2.c, true), !(!vec4<bool>(var_0.d, var_0.d, true, var_2.d)), var_2.c, Struct_2(Struct_1(var_2.a.a, var_0.c.b, u_input.a.x, vec4<f32>(144f, -577f, -1495f, var_2.a.b.x)), vec3<i32>(var_2.a.a, u_input.c, u_input.c), var_0.c, var_2.d))), var_2.a.b.x, var_2.c.b.x)));
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) + -733f)), -1348f, var_3.x));
    var_3 = var_2.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(func_1().a, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -18535i, -1i), vec3<i32>(1i, var_1, u_input.b)), var_0.a, false), select(!vec4<bool>(var_2.d, true, var_2.d, false), !vec4<bool>(true, false, var_2.d, var_2.d), vec4<bool>(false, true, var_2.d, true)), func_1().a, func_1())) * var_3.x), var_2.a.b.x, _wgslsmith_add_i32(-firstTrailingBit(-1i), ~_wgslsmith_div_i32(2147483647i, var_0.b.x)) << (0u % 32u), ~abs(-var_1));
}

