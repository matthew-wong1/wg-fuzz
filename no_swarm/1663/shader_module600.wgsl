struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = select(vec2<i32>(-u_input.a, 23732i), vec2<i32>(0i, u_input.a | max(~u_input.a, i32(-1i) * -14263i)), vec2<bool>(true, -35904i > firstLeadingBit(u_input.a)));
    let var_1 = ~_wgslsmith_div_vec2_i32(var_0 & -(~vec2<i32>(u_input.a, -3139i)), var_0);
    var var_2 = Struct_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-570f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-238f)))), -1i), Struct_2(!vec3<bool>(true, all(vec4<bool>(false, true, true, true)), true), var_0, Struct_1(u_input.b.x), Struct_1(select(abs(u_input.b.x), firstLeadingBit(u_input.b.x), true)), abs(~vec4<u32>(29790u, 0u, u_input.b.x, 0u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1472f, -1093f)), 1000f)), u_input.b.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.a, var_2.c, 250f, var_2.c), vec4<f32>(-1058f, -552f, var_2.a.a, var_2.c))))), vec4<f32>(_wgslsmith_div_f32(1078f, -405f), _wgslsmith_f_op_f32(-var_2.c), -498f, var_2.a.a))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.a.a)), _wgslsmith_f_op_f32(exp2(var_2.c)), var_2.a.a, _wgslsmith_f_op_f32(floor(433f))))));
    var var_4 = _wgslsmith_f_op_f32(max(var_2.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(261f * var_2.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), u_input.a < min(-12672i, 0i))), var_3.x))));
    return var_3.x;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    let var_0 = ~_wgslsmith_sub_u32(~4294967295u, ~_wgslsmith_div_u32(~9291u, ~arg_0.d));
    let var_1 = arg_0;
    var var_2 = u_input.a;
    var var_3 = var_1.a;
    var_3 = Struct_3(-436f, _wgslsmith_sub_i32(50379i, _wgslsmith_dot_vec2_i32(var_1.b.b, vec2<i32>(-11021i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.b.x, 1i, 0i), vec3<i32>(-1i, 1i, -86499i))))));
    return ~_wgslsmith_add_u32(var_1.d, 30050u);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = func_4(Struct_4(Struct_3(_wgslsmith_f_op_f32(456f + arg_0.x), -(~u_input.a)), Struct_2(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(0i, 1i))), Struct_1(u_input.b.x), Struct_1(~u_input.b.x), ~vec4<u32>(10990u, 1u, 39759u, u_input.b.x) >> (vec4<u32>(116537u, 15640u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), arg_0.x, 1u), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(676f * _wgslsmith_f_op_f32(func_3())) + arg_0.x), i32(-1i) * -_wgslsmith_sub_i32(0i, -2147483647i)));
    var var_1 = ~vec4<u32>(0u, u_input.b.x, ~_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b), 1u);
    let var_2 = Struct_1(~abs(~5803u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    var_0 = ~1u;
    return -370f;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_u32(4294967295u, countOneBits(min(u_input.b.x, 77117u))) & u_input.b.x);
    return _wgslsmith_f_op_f32(func_2(vec3<f32>(-1120f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(453f - -383f), _wgslsmith_f_op_f32(f32(-1f) * -758f)) * 1775f), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -22148i, u_input.a), vec4<i32>(2147483647i, -11597i, 0i, -1i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-388f + -2766f), -1000f), true)), -1i), Struct_2(vec3<bool>(true, true, true), vec2<i32>(u_input.a, u_input.a), Struct_1(u_input.b.x), Struct_1(~(~1u)), firstTrailingBit(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 57690u, 30154u) >> (vec4<u32>(0u, 0u, 4294967295u, 1u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(func_1(select(u_input.a, u_input.a, (25440i ^ u_input.a) == abs(5470i)))), _wgslsmith_add_u32(71286u, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.b.x, 7397u, 59744u), u_input.b.x)));
    var var_1 = max(vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(0i), _wgslsmith_mult_i32(0i, var_0.b.b.x), abs(0i)), abs(-(~abs(vec3<i32>(24584i, var_0.a.b, 30976i)))));
    var_0 = Struct_4(Struct_3(var_0.c, firstLeadingBit(_wgslsmith_add_i32(-var_1.x, 29245i))), Struct_2(var_0.b.a, var_0.b.b, var_0.b.c, var_0.b.c, vec4<u32>(func_4(Struct_4(var_0.a, Struct_2(vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), vec2<i32>(var_0.a.b, var_1.x), Struct_1(1u), var_0.b.d, var_0.b.e), var_0.c, 1u), Struct_3(-215f, -23013i)), _wgslsmith_mult_u32(abs(var_0.b.c.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 101280u, 70405u), var_0.b.e.wzx)), u_input.b.x, _wgslsmith_dot_vec3_u32(var_0.b.e.xwx, ~var_0.b.e.xyy))), -634f, u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.a.a, var_0.c, -1000f))) - _wgslsmith_div_f32(490f, -1940f))), _wgslsmith_f_op_f32(927f + 1000f), _wgslsmith_f_op_f32(max(-1143f, _wgslsmith_f_op_f32(f32(-1f) * -651f))), _wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.a.a)))))));
    let var_3 = var_0.b.d;
    let var_4 = var_0.b;
    var var_5 = max(vec4<i32>(53574i, var_1.x, reverseBits(-2147483647i), 1i & abs(u_input.a)), vec4<i32>(~abs(u_input.a), var_0.a.b, _wgslsmith_mod_i32(_wgslsmith_div_i32(9146i, var_1.x), -var_4.b.x), abs(13784i >> (u_input.b.x % 32u)))) & vec4<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_4.b.x, var_0.b.b.x, 2147483647i), vec4<i32>(-1i, 2147483647i, -10634i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_4.b.x, var_4.b.x, -1114i), vec4<i32>(22998i, 2147483647i, 11829i, -12504i))), var_4.b.x, u_input.a, abs(var_1.x));
    let var_6 = Struct_3(var_0.a.a, ~var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.a, ~((var_3.a & 1u) << (select(27810u, 1u, true) % 32u))), 1i, ~u_input.b.x, var_3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xwz) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, -2002f, var_6.a) + vec3<f32>(227f, var_2.x, -1000f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.a, var_6.a, var_6.a)), var_2.xxw)), any(select(vec3<bool>(var_0.b.a.x, var_4.a.x, var_0.b.a.x), vec3<bool>(false, var_4.a.x, false), var_4.a.x))))));
}

