struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -1i) << (~vec2<u32>(37127u, 17281u) % vec2<u32>(32u)), arg_1), u_input.b, firstLeadingBit(3130i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(560f)) + 132f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-950f)), 1f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1477f - 1569f), -1116f))));
    var var_1 = 4294967295u;
    var_1 = _wgslsmith_sub_u32(~23733u, 25450u);
    let var_2 = ~(~abs(u_input.a.x));
    var var_3 = var_0.a.x;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(step(-818f, -998f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    let var_0 = ~u_input.a.wyy;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -617f);
    let var_2 = u_input.a;
    let var_3 = false;
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(u_input.d, _wgslsmith_mult_i32(u_input.c, 23035i)), countOneBits(u_input.d) >> (4294967295u % 32u), u_input.b) & vec3<i32>(0i, -1i, -u_input.c & -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * var_1)), _wgslsmith_f_op_f32(func_3(true, vec2<i32>(u_input.b, 41980i))), var_3))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 808f))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: i32) -> Struct_4 {
    var var_0 = vec4<f32>(arg_0.x, arg_2, -530f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(arg_0.wwz * vec3<f32>(_wgslsmith_f_op_f32(ceil(-3297f)), _wgslsmith_f_op_f32(func_3(false, arg_1)), _wgslsmith_f_op_f32(arg_2 - -1283f))), -357f)));
    return Struct_4(Struct_2(vec3<u32>(63477u, ~u_input.a.x, ~90809u)), select(vec2<bool>(true, select(var_0.x >= 124f, true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), any(vec3<bool>(false, true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), ~67057u < abs(u_input.a.x))), Struct_3(max(~arg_3, -14365i), -u_input.b >> (countOneBits(firstLeadingBit(u_input.a.x)) % 32u), true), Struct_2(u_input.a.zwz), arg_0);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-687f, 465f, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(-581f, 934f, arg_2, arg_1) * vec4<f32>(505f, -1000f, arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_div_f32(arg_2, 1369f), _wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(364f - -1142f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, arg_2, arg_2, arg_1))))));
    var var_1 = func_2(var_0, ~reverseBits(select(select(vec2<i32>(-34033i, u_input.c), vec2<i32>(arg_3, 2147483647i), vec2<bool>(false, true)), select(vec2<i32>(arg_3, 0i), vec2<i32>(arg_3, arg_3), true), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(-34143i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, arg_0), vec4<i32>(-1i, arg_0, 0i, -58843i))));
    var var_2 = select(select(vec4<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -899f) <= arg_1, true), !vec4<bool>(false, !var_1.c.c, true, select(var_1.b.x, var_1.c.c, var_1.b.x)), vec4<bool>(!all(var_1.b), _wgslsmith_f_op_f32(arg_1 * arg_1) == arg_2, (var_1.c.a & arg_3) <= _wgslsmith_mod_i32(34719i, 78376i), var_1.c.c)), vec4<bool>(~0u >= ~var_1.d.a.x, func_2(vec4<f32>(_wgslsmith_div_f32(653f, -266f), -224f, _wgslsmith_f_op_f32(ceil(-1419f)), var_0.x), ~abs(vec2<i32>(u_input.c, arg_0)), _wgslsmith_f_op_f32(trunc(1885f)), var_1.c.a).c.c, all(vec2<bool>(true, true)), var_1.b.x), true);
    var_1 = Struct_4(func_2(_wgslsmith_f_op_vec4_f32(step(var_1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0))))), vec2<i32>(min(_wgslsmith_mod_i32(-2147483647i, u_input.d), u_input.d), i32(-1i) * -var_1.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-181f)))), min(-12402i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c.a, u_input.d), vec2<i32>(u_input.b, var_1.c.a), vec2<i32>(arg_0, var_1.c.a)), ~vec2<i32>(17001i, 31763i)))).d, vec2<bool>(all(select(!vec4<bool>(true, true, var_2.x, true), select(vec4<bool>(true, true, var_1.c.c, true), vec4<bool>(true, var_1.b.x, true, var_2.x), false), select(vec4<bool>(var_1.c.c, var_2.x, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(true, true, var_1.b.x, false)))), select(var_2.x, any(vec4<bool>(var_1.c.c, var_2.x, true, true)), all(select(vec4<bool>(var_2.x, var_1.b.x, true, var_2.x), vec4<bool>(var_1.c.c, var_1.c.c, var_2.x, var_1.c.c), vec4<bool>(var_2.x, false, var_1.b.x, true))))), Struct_3(var_1.c.b, _wgslsmith_clamp_i32(~19667i, countOneBits(~u_input.c), _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -2147483647i, 2147483647i), vec3<i32>(arg_3, arg_3, 1i)))), any(var_1.b)), var_1.a, vec4<f32>(-1350f, _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(581f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(3128f)) * _wgslsmith_f_op_f32(-arg_2))), 688f));
    var_2 = !select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_1.c.c, var_2.x, false), vec4<bool>(var_2.x, var_1.c.c, var_1.c.c, true))), vec4<bool>(_wgslsmith_f_op_f32(step(arg_2, arg_2)) <= _wgslsmith_f_op_f32(func_4(vec3<f32>(arg_1, var_0.x, 700f), var_0.x)), any(!vec3<bool>(var_1.b.x, true, true)), !(var_1.c.b != var_1.c.a), select(4294967295u, 1u, false) < ~var_1.a.a.x), select(vec4<bool>(false && var_1.b.x, true, var_1.c.c, false), !(!vec4<bool>(var_1.b.x, true, true, true)), any(var_2.wy)));
    return _wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 1i, -1i, -1i), ~vec4<i32>(u_input.c, -23711i, 9949i, arg_0)), (vec4<i32>(arg_3, arg_0, -1i, var_1.c.b) ^ vec4<i32>(u_input.c, 1i, -26577i, -2147483647i)) >> (~u_input.a % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(~max(_wgslsmith_add_vec4_i32(vec4<i32>(-23932i, 5814i, 23581i, -2147483647i), vec4<i32>(-2147483647i, -1i, -2147483647i, arg_0)), firstTrailingBit(vec4<i32>(2147483647i, 22776i, 62870i, arg_0))), vec4<i32>(abs(var_1.c.a), arg_3, _wgslsmith_dot_vec2_i32(min(vec2<i32>(arg_0, 30775i), vec2<i32>(u_input.c, u_input.c)), -vec2<i32>(-2147483647i, 0i)), ~arg_0 ^ (i32(-1i) * -51669i)), countOneBits(~vec4<i32>(u_input.c, var_1.c.a, -1i, var_1.c.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -17061i, 34608i, u_input.c), vec4<i32>(u_input.b, 24177i, u_input.d, 13092i)), _wgslsmith_div_vec4_i32(func_1(38193i, var_0, var_0, u_input.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.d, u_input.b), vec4<i32>(-1i, u_input.b, 3478i, 1i), vec4<i32>(u_input.c, -1i, -76157i, u_input.b)))));
}

