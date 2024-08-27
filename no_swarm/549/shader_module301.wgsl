struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: bool = false;

var<private> global2: array<vec4<f32>, 12>;

var<private> global3: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_1.d.a, !(!vec3<bool>(false, arg_1.d.b.x | arg_1.a.b.x, true & arg_2.b.x)), _wgslsmith_f_op_f32(step(arg_2.c, 2808f)), _wgslsmith_clamp_u32(111757u, (1u & arg_1.b.d) ^ arg_1.b.d, arg_2.d));
    global0 = array<vec2<f32>, 20>();
    var var_1 = arg_1.a;
    let var_2 = arg_1.b.b.zy;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1542f, arg_0), var_0.c, _wgslsmith_f_op_f32(-2285f * -520f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-709f))), -1277f, arg_2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(106f * 1280f), arg_1.b.c, -1788f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -413f, arg_1.b.c)), vec3<f32>(-251f, arg_2.c, 1419f), false))))));
    return arg_2.c;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec2<u32> {
    let var_0 = ~arg_1.a.a.www;
    let var_1 = _wgslsmith_mod_u32(39107u, ~(~63886u));
    let var_2 = abs(~(_wgslsmith_div_u32(arg_1.a.d, ~54186u) | ~_wgslsmith_mod_u32(u_input.c, 19930u)));
    var var_3 = Struct_2(Struct_1(arg_3, !select(!vec3<bool>(arg_1.c.b.x, false, false), !vec3<bool>(arg_1.c.b.x, arg_1.b.b.x, arg_1.b.b.x), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.c + _wgslsmith_f_op_f32(-1366f * arg_1.c.c)) - 184f), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(16310u, u_input.b, 4294967295u, 0u)), u_input.b << (var_2 % 32u)) << (25169u % 32u)), Struct_1(countOneBits(~vec4<i32>(arg_3.x, arg_3.x, 0i, arg_3.x)), arg_1.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1627f)), arg_1.c.c), 2019u), Struct_1(select(arg_3, vec4<i32>(-1i) * -vec4<i32>(17208i, u_input.a, var_0.x, arg_3.x), !all(vec3<bool>(arg_1.c.b.x, false, false))), arg_1.c.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-499f)), _wgslsmith_f_op_f32(-arg_1.b.c))), reverseBits(1u)), Struct_1(max(-min(vec4<i32>(arg_1.d.a.x, arg_1.b.a.x, var_0.x, var_0.x), arg_1.a.a), _wgslsmith_mod_vec4_i32(arg_3, vec4<i32>(arg_3.x, u_input.e, arg_1.a.a.x, 25153i))), !(!select(arg_1.b.b, arg_1.a.b, arg_1.c.b.x)), _wgslsmith_f_op_f32(step(990f, arg_1.b.c)), u_input.b), arg_1.d.c);
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -346f), -585f)), 944f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.c)), var_3.c.c))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(-574f)), arg_1, Struct_1(vec4<i32>(arg_3.x, -1i, var_3.c.a.x, 0i), vec3<bool>(false, true, false), -356f, u_input.c))), 168f), var_3.b.c, arg_1.d.c, var_3.e)));
    return _wgslsmith_mod_vec2_u32(~min(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, 1u) ^ vec2<u32>(1u, 4294967295u), vec2<u32>(18632u, 4294967295u)), _wgslsmith_mult_vec2_u32(firstLeadingBit(arg_0), vec2<u32>(var_1, 3783u))), arg_2.wx);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, arg_0.x))))));
    var var_1 = abs(vec4<i32>(~(u_input.a << (func_3(vec2<u32>(69016u, 0u), Struct_2(Struct_1(vec4<i32>(-1i, -23465i, u_input.a, -2147483647i), vec3<bool>(false, false, true), arg_0.x, 47648u), Struct_1(vec4<i32>(u_input.e, 1i, 12699i, u_input.e), vec3<bool>(true, false, false), -1215f, arg_1.x), Struct_1(vec4<i32>(0i, -7i, u_input.a, u_input.a), vec3<bool>(false, true, false), arg_0.x, 0u), Struct_1(vec4<i32>(u_input.e, u_input.e, u_input.a, u_input.e), vec3<bool>(true, false, true), 110f, 2445u), 1209f), vec4<u32>(4294967295u, arg_1.x, u_input.b, arg_1.x), vec4<i32>(u_input.e, u_input.a, u_input.a, u_input.e)).x % 32u)), u_input.e, _wgslsmith_sub_i32(u_input.e, u_input.e & u_input.a) ^ select(abs(6117i), ~44050i, arg_1.x != 4294967295u), 0i));
    var var_2 = Struct_1(vec4<i32>(0i, abs(reverseBits(17044i)), -_wgslsmith_clamp_i32(19634i, u_input.a, u_input.a), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(-23005i, u_input.e))) << (vec4<u32>(u_input.b, 40222u, ~14523u, firstTrailingBit(~0u)) % vec4<u32>(32u)), !select(vec3<bool>(true, true, all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(551f + arg_0.x), Struct_2(Struct_1(vec4<i32>(var_1.x, u_input.a, var_1.x, var_1.x) ^ vec4<i32>(u_input.a, 0i, u_input.e, 35551i), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -365f), ~u_input.c), Struct_1(vec4<i32>(-35469i, -1i, u_input.a, 0i), vec3<bool>(true, true, true), 773f, _wgslsmith_add_u32(arg_1.x, 54026u)), Struct_1(~vec4<i32>(u_input.a, u_input.a, u_input.a, 30592i), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-arg_0.x), arg_1.x), Struct_1(firstTrailingBit(vec4<i32>(-1i, var_1.x, 0i, 4016i)), vec3<bool>(false, false, false), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_add_u32(4294967295u, arg_1.x)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-var_0.x))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, -1i, u_input.a, var_1.x), vec4<i32>(1i, -31561i, u_input.a, var_1.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(false, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -334f), max(countOneBits(4294967295u), u_input.d)))), abs(36282u));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -941f, arg_0.x) + vec3<f32>(-347f, 1000f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-659f, 976f, var_2.c)))), vec3<f32>(_wgslsmith_div_f32(var_0.x, 663f), -860f, _wgslsmith_f_op_f32(-arg_0.x)), true)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), 385f, _wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(arg_0.x - -952f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-136f, var_2.c, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, arg_0.x, var_0.x)), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1033f, 1862f, arg_0.x) * vec3<f32>(-128f, 1353f, arg_0.x)))))));
    let var_4 = min(-abs(vec3<i32>(_wgslsmith_clamp_i32(0i, 0i, -9956i), var_2.a.x, u_input.e)), _wgslsmith_mult_vec3_i32(~reverseBits(~vec3<i32>(2147483647i, 55079i, u_input.a)), vec3<i32>(var_1.x, _wgslsmith_mod_i32(2147483647i, var_1.x) ^ -1i, firstLeadingBit(-2147483647i) | u_input.a)));
    return vec4<u32>(min(0u >> (max(u_input.d, arg_1.x) % 32u), ~u_input.d) & var_2.d, ~_wgslsmith_div_u32(0u, 4294967295u & var_2.d) >> (reverseBits(var_2.d) % 32u), 12008u, u_input.d);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_2(420f, Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.e, u_input.e), vec3<bool>(true, true, false), -739f, arg_0.x), Struct_1(vec4<i32>(22845i, 1i, u_input.e, u_input.e), vec3<bool>(false, true, false), 116f, u_input.b), Struct_1(vec4<i32>(-2147483647i, 0i, -61880i, 22845i), vec3<bool>(true, false, false), -1527f, 4294967295u), Struct_1(vec4<i32>(u_input.e, u_input.e, 0i, u_input.a), vec3<bool>(false, true, true), -1276f, arg_0.x), -878f), Struct_1(vec4<i32>(u_input.e, u_input.e, u_input.e, -1i), vec3<bool>(false, false, false), -1216f, 22326u)))), _wgslsmith_f_op_f32(-1f)) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(max(vec2<u32>(4294967295u, u_input.c), arg_0), Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.e, u_input.e, u_input.e), vec3<bool>(false, false, false), 884f, 51052u), Struct_1(vec4<i32>(u_input.a, -2863i, -9767i, u_input.a), vec3<bool>(true, false, true), -404f, u_input.c), Struct_1(vec4<i32>(u_input.a, u_input.a, -68211i, u_input.a), vec3<bool>(false, false, true), -2148f, u_input.c), Struct_1(vec4<i32>(57484i, u_input.e, 2147483647i, -67816i), vec3<bool>(true, true, true), 1058f, arg_0.x), 1051f), vec4<u32>(44750u, 31758u, arg_0.x, 1u), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 0i, -29773i, 1i), vec4<i32>(33683i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, -1i))), abs(select(arg_0, vec2<u32>(34250u, 1u), vec2<bool>(false, true)))), 20u)]), ~((vec3<u32>(u_input.b, 5541u, arg_0.x) ^ vec3<u32>(12460u, u_input.c, 59441u)) & vec3<u32>(25529u, u_input.d, 0u)) | vec3<u32>(4962u, ~4294967295u, _wgslsmith_sub_u32(21098u, arg_0.x) ^ u_input.d));
    var var_1 = _wgslsmith_div_vec3_i32(((-vec3<i32>(u_input.a, 25078i, -1i) >> (~var_0.wxy % vec3<u32>(32u))) << (~(~vec3<u32>(4459u, 0u, 4294967295u)) % vec3<u32>(32u))) ^ max(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, 4901i, -25676i), vec3<i32>(u_input.a, 2147483647i, -4057i), false), countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.e)), _wgslsmith_add_vec3_i32(vec3<i32>(57693i, u_input.a, -2147483647i), vec3<i32>(u_input.e, u_input.e, -1i))), vec3<i32>(u_input.e, ~u_input.e, 2147483647i)), vec3<i32>(-16790i, select(43072i >> (reverseBits(u_input.d) % 32u), 1i, all(vec2<bool>(true, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.a), vec2<i32>(-1i, -58907i) >> (vec2<u32>(u_input.b, arg_0.x) % vec2<u32>(32u))) << (func_4(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(1u, 20u)]), ~vec3<u32>(arg_0.x, 4294967295u, 1u)).x % 32u)));
    var_1 = -(~_wgslsmith_add_vec3_i32(-countOneBits(vec3<i32>(-13932i, var_1.x, 42073i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.x, u_input.a, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(24252i, u_input.a, 2147483647i), vec3<i32>(u_input.a, var_1.x, u_input.a)))));
    let var_2 = ~47199u;
    var var_3 = any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec2<bool>(false, true))), vec3<bool>(any(vec4<bool>(true, false, false, true)), false, all(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), true));
    return Struct_2(Struct_1(max(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), max(u_input.a, -1i), -2147483647i, ~27093i), vec4<i32>(-18325i, u_input.e, firstLeadingBit(1i), firstTrailingBit(u_input.a))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(all(vec4<bool>(true, true, true, true)), u_input.a != 2147483647i, true)), 247f, func_3(var_0.zz | ~vec2<u32>(4294967295u, 0u), Struct_2(Struct_1(vec4<i32>(u_input.e, var_1.x, -14697i, u_input.a), vec3<bool>(false, true, true), 309f, var_2), Struct_1(vec4<i32>(1i, 2147483647i, -68406i, 21173i), vec3<bool>(false, true, true), 740f, 1u), Struct_1(vec4<i32>(var_1.x, -3787i, -19745i, 46278i), vec3<bool>(true, false, false), 562f, 75029u), Struct_1(vec4<i32>(16481i, var_1.x, var_1.x, -801i), vec3<bool>(false, false, false), 376f, 1u), _wgslsmith_f_op_f32(trunc(760f))), ~_wgslsmith_add_vec4_u32(var_0, var_0), min(vec4<i32>(var_1.x, -1i, u_input.a, 2147483647i), vec4<i32>(-6487i, u_input.a, -1i, 1i))).x), Struct_1(vec4<i32>(2147483647i, var_1.x, select(u_input.e, 27392i, true), -21521i) ^ ~(~vec4<i32>(u_input.a, 1i, -8380i, u_input.e)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(104f * -1230f))) - 439f), arg_0.x), Struct_1(vec4<i32>(reverseBits(u_input.a), var_1.x ^ 37868i, var_1.x, u_input.a), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), false), 1000f, 1u), Struct_1(_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(-95636i, 0i, u_input.e, var_1.x)), abs(~vec4<i32>(2147483647i, u_input.e, -2147483647i, -33699i))), vec3<bool>(any(vec2<bool>(true, true)), false, ~var_2 < 1u), 1f, u_input.d), -493f);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f * _wgslsmith_f_op_f32(-521f - -2262f))), any(!(!vec4<bool>(arg_1.b.x, false, arg_2.a.b.x, arg_1.b.x)))))));
    global2 = array<vec4<f32>, 12>();
    var var_1 = vec3<u32>(0u, arg_1.d, u_input.b);
    var var_2 = vec2<i32>(max(countOneBits(i32(-1i) * -44675i), _wgslsmith_sub_i32(arg_2.c.a.x & -1i, arg_2.a.a.x)), _wgslsmith_div_i32(arg_2.d.a.x ^ 1i, firstTrailingBit(1i)) | (~4478i ^ func_1(~var_1.yx).a.a.x));
    global3 = _wgslsmith_f_op_f32(-arg_2.c.c);
    return arg_2.d;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(var_0.a, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_0.a.x, 0i, 0i), arg_0.a)), vec4<i32>(-2147483647i, -u_input.a & -2147483647i, 10577i, abs(-5118i))), select(!(!vec3<bool>(true, var_0.b.x, arg_0.b.x)), !(!select(vec3<bool>(false, var_0.b.x, true), vec3<bool>(false, false, true), arg_0.b)), ((-467f != var_0.c) && func_5(var_0.d, arg_0, Struct_2(Struct_1(vec4<i32>(2147483647i, u_input.e, 2147483647i, var_0.a.x), var_0.b, 660f, var_0.d), Struct_1(vec4<i32>(u_input.a, 1i, 1i, 0i), vec3<bool>(var_0.b.x, true, false), arg_0.c, 11419u), arg_0, arg_0, arg_0.c)).b.x) != !(!var_0.b.x)), 283f, 4294967295u);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1833f), _wgslsmith_f_op_f32(arg_0.c * 148f));
    var var_3 = ~select(~(~vec2<u32>(4294967295u, 345u) & ~vec2<u32>(arg_0.d, 28451u)), vec2<u32>(var_0.d, u_input.c), var_1.b.xz);
    global1 = var_0.b.x;
    return arg_0;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<u32>(arg_0.d, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, arg_0.d)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)), vec3<u32>(arg_0.d, 4294967295u, 21002u)).xy), ~4294967295u), u_input.c);
    let var_1 = func_1(vec2<u32>(u_input.d, u_input.d));
    global3 = var_1.c.c;
    let var_2 = !vec4<bool>(49739i != arg_0.a.x, any(!select(vec4<bool>(arg_0.b.x, var_1.c.b.x, arg_0.b.x, true), vec4<bool>(var_1.c.b.x, true, false, arg_0.b.x), arg_0.b.x)), false, true);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1527f))))));
    return Struct_1(vec4<i32>(1i >> (u_input.d % 32u), _wgslsmith_add_i32(-63367i, 42403i), u_input.e, 2147483647i ^ u_input.a), vec3<bool>(select(func_5(~73692u, arg_0, func_1(vec2<u32>(var_0.x, var_0.x))).b.x, var_1.d.b.x, !var_2.x != true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.e)) + _wgslsmith_f_op_f32(var_1.e * -1000f)) == var_1.b.c, -arg_0.a.x >= -var_1.a.a.x), arg_0.c, var_1.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 12>();
    let var_0 = Struct_2(func_7(func_6(func_5(4100u, Struct_1(vec4<i32>(u_input.e, 0i, u_input.a, -16874i), vec3<bool>(true, true, false), 658f, 46340u), func_1(vec2<u32>(u_input.d, 1u))))), Struct_1(vec4<i32>(_wgslsmith_add_i32(-2147483647i, u_input.a << (u_input.b % 32u)), ~firstTrailingBit(-71151i), 1i, reverseBits(abs(u_input.a))), func_1(abs(~vec2<u32>(u_input.d, u_input.c))).b.b, _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b, 0u) << (vec2<u32>(26479u, u_input.b) % vec2<u32>(32u))).d.c + 1354f), 34655u), Struct_1(vec4<i32>(~(u_input.e | u_input.a), func_7(Struct_1(vec4<i32>(u_input.e, u_input.a, 0i, -2147483647i), vec3<bool>(true, false, true), 1513f, u_input.d)).a.x, -53946i, ~(-u_input.e)), vec3<bool>(!all(vec4<bool>(false, false, true, false)), true, true == (u_input.a != 26772i)), func_6(func_7(Struct_1(vec4<i32>(u_input.e, u_input.a, 2147483647i, 2646i), vec3<bool>(true, true, true), 1207f, u_input.c))).c, max(u_input.d, ~u_input.b)), func_1((firstLeadingBit(vec2<u32>(13301u, u_input.c)) & (vec2<u32>(u_input.c, u_input.d) | vec2<u32>(14635u, u_input.d))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.b, u_input.c))) % vec2<u32>(32u))).c, _wgslsmith_f_op_f32(step(1f, 1000f)));
    let var_1 = ~_wgslsmith_dot_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(4485u, 4294967295u), vec2<u32>(1u, u_input.d))), ~func_3(vec2<u32>(4294967295u, 0u), func_1(vec2<u32>(0u, 1u)), vec4<u32>(var_0.c.d, var_0.d.d, 0u, u_input.d) ^ vec4<u32>(u_input.c, var_0.b.d, var_0.d.d, 3133u), var_0.a.a));
    var var_2 = vec3<bool>(true, true, !(!(!var_0.a.b.x)));
    global2 = array<vec4<f32>, 12>();
    let var_3 = Struct_2(Struct_1(func_7(Struct_1(var_0.b.a, vec3<bool>(var_2.x, var_2.x, var_0.c.b.x), var_0.e, 53395u ^ var_1)).a, select(func_6(Struct_1(vec4<i32>(43355i, 25611i, -29868i, var_0.c.a.x), vec3<bool>(var_0.c.b.x, var_0.d.b.x, false), var_0.e, 4294967295u)).b, func_1(vec2<u32>(0u, 36603u)).c.b, var_0.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c) + -527f), ~func_3(~vec2<u32>(4294967295u, var_1), func_1(vec2<u32>(var_1, 61007u)), ~vec4<u32>(25415u, var_0.c.d, 2828u, 44474u), var_0.c.a).x), func_6(var_0.b), var_0.d, var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(func_6(Struct_1(vec4<i32>(var_0.d.a.x, -38968i, -1i, -30151i), vec3<bool>(true, true, var_2.x), var_0.c.c, var_1)).c)))));
    var var_4 = func_1(vec2<u32>(reverseBits(~(~55400u)), min(min(var_0.b.d | u_input.d, var_0.b.d), _wgslsmith_mult_u32(var_3.b.d, var_0.c.d)))).d.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(func_7(var_0.c).d, _wgslsmith_mult_u32(~0u, var_3.d.d ^ 100002u), func_7(func_7(Struct_1(var_3.b.a, vec3<bool>(true, false, true), var_3.c.c, 44489u))).d, _wgslsmith_div_u32(~var_3.b.d, ~55738u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(var_3.c.c, var_0.b.c), _wgslsmith_f_op_f32(func_2(var_3.d.c, var_3, Struct_1(var_0.b.a, vec3<bool>(false, false, true), 500f, u_input.d)))))))), vec4<u32>(var_0.b.d, ~(~func_5(u_input.d, Struct_1(var_0.d.a, var_3.a.b, var_0.d.c, 112688u), Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, u_input.e, 18190i), vec3<bool>(var_2.x, var_3.d.b.x, true), var_0.e, var_1), var_3.b, Struct_1(vec4<i32>(-1i, u_input.a, u_input.a, var_0.c.a.x), var_0.c.b, var_0.c.c, var_1), var_0.d, var_3.d.c)).d), var_3.c.d, max(countOneBits(_wgslsmith_mod_u32(0u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.d, var_1, 79345u, u_input.d), vec4<u32>(31773u, var_3.b.d, 26005u, var_0.a.d) | vec4<u32>(var_1, u_input.d, var_0.b.d, 4294967295u)))));
}

