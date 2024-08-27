struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(220f)))))));
    return false;
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-375f)), -1894f))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696f * var_0.a))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a);
    var var_2 = _wgslsmith_clamp_i32(u_input.a.x & -abs(10554i), -u_input.c.x, 1i << (reverseBits(~u_input.d.x) % 32u));
    var var_3 = Struct_1(_wgslsmith_add_vec4_i32(select(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, 1i), abs(-2147483647i), -2147483647i, u_input.a.x ^ u_input.a.x), vec4<i32>(-u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 23351i, u_input.c.x)), u_input.a.x, u_input.c.x), true), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yxy >> (vec3<u32>(0u, u_input.e.x, 42336u) % vec3<u32>(32u)), -u_input.c.yzy), ~(~u_input.c.x), ~reverseBits(-1i), 56876i)), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -295f), _wgslsmith_f_op_f32(var_0.a - -691f)) < 731f, true, arg_0.x, arg_0.x), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(1367f + var_0.a)), vec2<i32>(-1i, u_input.a.x), min(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), countOneBits(u_input.a.x)), -1i, u_input.c.x, u_input.a.x & abs(1i)), u_input.a));
    return !vec3<bool>(any(vec4<bool>(var_3.e.x != u_input.a.x, any(arg_0), all(arg_0.wx), any(var_3.b.xw))), !(~1u >= u_input.d.x), all(!select(var_3.b, vec4<bool>(arg_0.x, true, true, var_3.b.x), arg_0)));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = u_input.b.x;
    var var_1 = !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var_1 = any(func_3(vec4<bool>(true, !select(true, false, true), false & func_2(730f), any(vec3<bool>(true, false, false)))));
    var_1 = all(vec2<bool>(true, !(!any(vec4<bool>(true, false, true, true)))));
    let var_2 = Struct_1(countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(select(u_input.c, u_input.a, vec4<bool>(false, true, false, true)), abs(vec4<i32>(-14342i, u_input.a.x, -2147483647i, u_input.c.x))), u_input.a)), vec4<bool>(any(vec2<bool>(false, true)), true, true, !func_3(vec4<bool>(true, true, true, true)).x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(486f, 683f) - vec2<f32>(942f, arg_0))))))), -vec2<i32>(_wgslsmith_add_i32(3875i, u_input.c.x), -1i), u_input.a);
    return ~_wgslsmith_add_vec3_u32(vec3<u32>(93595u, 62554u, ~(~var_0)), vec3<u32>(abs(0u), 1u, ~var_0) ^ vec3<u32>(1u, firstLeadingBit(4294967295u), 1u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: i32) -> Struct_3 {
    let var_0 = select(true, !(-(-2147483647i << (u_input.b.x % 32u)) != 1i), arg_0.x);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = -764f;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -766f))))))), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(65956u, u_input.b.x, 58610u, u_input.e.x), min(vec4<u32>(30572u, 4294967295u, arg_1.x, 32293u), vec4<u32>(1u, u_input.d.x, u_input.e.x, 1u))), arg_1.x)), Struct_1(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -22874i), vec2<i32>(-32192i, -25136i)), -u_input.c.x, ~(-32792i)), reverseBits(1i) << (max(u_input.d.x, 4294967295u) % 32u), 23379i, ~25697i), !(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, var_0, true, arg_0.x), true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-551f, _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_add_vec2_i32(-u_input.c.zx, _wgslsmith_clamp_vec2_i32(-vec2<i32>(3219i, arg_3), -vec2<i32>(u_input.c.x, 15717i), vec2<i32>(u_input.c.x, 0i))), select(u_input.c, -u_input.c, !(!vec4<bool>(var_0, arg_0.x, var_0, arg_0.x)))), var_1.a, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(44507u, u_input.b.x) | ~(~4294967295u), u_input.b.x, _wgslsmith_mod_u32(~firstTrailingBit(1u), 4294967295u)));
    var_2 = _wgslsmith_f_op_f32(-978f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1372f)) * var_3.c.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.c.x) - _wgslsmith_f_op_f32(330f - 971f))));
    return Struct_3(-1008f, max(0u, 16347u), Struct_1(var_3.c.e, select(!(!var_3.c.b), select(var_3.c.b, !var_3.c.b, select(var_3.c.b, var_3.c.b, var_0)), vec4<bool>(!var_0, all(vec4<bool>(arg_0.x, false, var_0, arg_0.x)), !var_0, any(vec3<bool>(false, var_0, var_0)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(-var_3.a)))), vec2<i32>(0i, u_input.c.x), max(firstTrailingBit(_wgslsmith_mod_vec4_i32(var_3.c.e, var_3.c.e)), reverseBits(u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), abs(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(562f);
    let var_1 = func_4(vec3<bool>(true, true, true), ~(func_1(-186f) & func_1(-200f)) & ~vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(1u, u_input.b.x), 10635u), _wgslsmith_clamp_vec2_i32(reverseBits(~u_input.c.yw & vec2<i32>(u_input.c.x, 0i)), vec2<i32>(40924i, -(~1i)), min(max(u_input.c.yz, u_input.a.zz) | u_input.c.xw, u_input.a.zz)), u_input.c.x);
    let var_2 = func_4(vec3<bool>(true, var_1.c.b.x, !var_1.c.b.x), ~vec3<u32>(4294967295u, ~7664u | u_input.b.x, firstLeadingBit(1u & var_1.e)), vec2<i32>(53386i, u_input.a.x), u_input.a.x).c;
    var var_3 = (i32(-1i) * -abs(var_1.c.a.x)) | -1i;
    let var_4 = -1i;
    var_3 = -34528i;
    var var_5 = Struct_4(var_0, var_2, var_1, true);
    let var_6 = vec3<u32>(~_wgslsmith_clamp_u32(var_1.b, 82965u, _wgslsmith_div_u32(firstTrailingBit(var_1.e), ~var_5.c.b)), abs(18786u >> (var_1.b % 32u)) | ~79605u, ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, 4294967295u << (var_1.e % 32u), firstLeadingBit(~1u)) ^ (vec3<u32>(_wgslsmith_dot_vec3_u32(var_6, var_6), var_5.c.b | u_input.e.x, 1u) & select(vec3<u32>(80744u, 56743u, 11732u), var_6, var_1.c.b.wzw)), u_input.e.x);
}

