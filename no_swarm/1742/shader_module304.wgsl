struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_4) -> f32 {
    var var_0 = vec2<bool>(!(1u < select(5887u << (u_input.a.x % 32u), select(100757u, 4294967295u, true), false)), arg_2);
    var var_1 = Struct_3(~u_input.b | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.d << (1u % 32u), -2147483647i, u_input.b), _wgslsmith_add_vec3_i32(-vec3<i32>(-26458i, 18899i, arg_3.a.d), vec3<i32>(u_input.b, arg_3.d.d, 1i))), vec4<bool>(arg_2, true, var_0.x, arg_2), Struct_1(all(!(!arg_3.a.c.yy)), vec4<u32>(select(_wgslsmith_div_u32(4294967295u, u_input.a.x), 0u, true), u_input.a.x, 1u, select(_wgslsmith_mod_u32(arg_3.a.b.x, arg_3.e), arg_3.c, arg_3.a.d < u_input.b)), vec4<bool>(false, !(arg_3.a.a || var_0.x), arg_3.b, true), 40460i));
    var_1 = Struct_3(-2147483647i, select(arg_3.a.c, select(vec4<bool>(!var_1.c.c.x, 11966u == arg_3.e, arg_3.e != var_1.c.b.x, false), select(select(var_1.b, var_1.c.c, var_1.c.c), vec4<bool>(arg_2, var_1.c.c.x, var_1.b.x, false), !arg_3.d.c), all(var_1.b.ywz)), !all(var_1.c.c)), arg_3.d);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(644f, -1652f)) - _wgslsmith_f_op_f32(sign(-277f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 199f));
    var var_3 = true;
    return arg_1.x;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1352f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1503f, 313f), vec3<f32>(-836f, 1471f, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 725f, -1005f) * vec4<f32>(arg_0, arg_0, 1339f, -219f))), true, Struct_4(Struct_1(false, u_input.a, vec4<bool>(false, false, false, true), u_input.b), false, u_input.a.x, Struct_1(false, u_input.a, vec4<bool>(false, true, false, false), 17427i), u_input.a.x)))));
    let var_1 = u_input.a.zy & u_input.a.yw;
    let var_2 = !any(select(vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    return -181f;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1107f)))), -241f)));
    let var_1 = false;
    let var_2 = _wgslsmith_mult_vec2_i32(select(max(vec2<i32>(-1i) * -vec2<i32>(48945i, 4726i), -reverseBits(vec2<i32>(arg_0.a.d, 0i))), vec2<i32>(~(u_input.b | 0i), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.d, arg_0.a.d, -20320i), vec3<i32>(0i, 32782i, -2147483647i))), select(select(select(arg_0.a.c.wy, vec2<bool>(arg_0.b, false), arg_0.b), select(arg_0.d.c.xz, vec2<bool>(arg_0.a.c.x, arg_0.d.c.x), arg_0.a.c.xw), !vec2<bool>(arg_0.d.a, true)), select(select(arg_0.d.c.zz, vec2<bool>(true, false), vec2<bool>(true, var_1)), select(arg_0.a.c.xw, arg_0.d.c.wy, vec2<bool>(false, true)), vec2<bool>(arg_0.a.a, true)), !arg_0.a.c.xz)), vec2<i32>(1i, arg_0.a.d));
    let var_3 = arg_0.d;
    return var_3.c;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(arg_1.c.x, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(8562u | arg_2.c, u_input.a.x ^ 0u), arg_2.d.b.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(23109u, arg_1.b.x), ~u_input.a.x), _wgslsmith_sub_u32(firstTrailingBit(4294967295u), u_input.a.x)), countOneBits(countOneBits(vec4<u32>(25063u, arg_2.d.b.x, u_input.a.x, 1u)))), func_1(Struct_4(Struct_1(false, vec4<u32>(arg_2.d.b.x, u_input.a.x, 39148u, 45640u), select(arg_2.b.c, vec4<bool>(true, false, true, arg_1.c.x), true), 1i), !arg_2.e.c.x, 32873u << (_wgslsmith_div_u32(1u, 10132u) % 32u), arg_1, ~(arg_2.b.b.x & u_input.a.x)), ~(~vec2<u32>(43397u, 1u))), abs(18398i));
    var_0 = arg_2.b;
    let var_1 = Struct_2(1000f, Struct_1(arg_1.a, vec4<u32>(~(~u_input.a.x), ~arg_1.b.x, 19596u, u_input.a.x), select(select(var_0.c, vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_2.e.a), select(vec4<bool>(arg_1.c.x, arg_1.a, arg_1.c.x, arg_1.a), var_0.c, arg_2.e.c.x)), arg_2.e.c, !vec4<bool>(true, arg_1.a, arg_2.d.c.x, true)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1.d, -1i), vec2<i32>(-1i, 1i), true) >> (arg_2.d.b.xw % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(-1i, arg_1.d), -58470i))), select(1u, ~(~(~17664u)), true), Struct_1(func_1(Struct_4(arg_2.b, any(arg_1.c), var_0.b.x, Struct_1(false, vec4<u32>(26549u, 1u, u_input.a.x, u_input.a.x), vec4<bool>(arg_1.c.x, var_0.a, arg_1.c.x, var_0.a), -27948i), arg_1.b.x), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.b.yx, arg_1.b.zz), ~arg_1.b.yz)).x, _wgslsmith_div_vec4_u32(arg_2.b.b, ~vec4<u32>(u_input.a.x, 30424u, 1u, 9731u)), !vec4<bool>(true == arg_2.d.a, true, !arg_1.c.x, true), arg_2.b.d), Struct_1((true || arg_2.d.c.x) & any(vec2<bool>(arg_2.d.a, arg_2.d.a)), ~(~vec4<u32>(89169u, u_input.a.x, 18684u, arg_1.b.x)), func_1(Struct_4(Struct_1(var_0.a, vec4<u32>(arg_1.b.x, 47424u, var_0.b.x, arg_2.e.b.x), vec4<bool>(arg_1.c.x, false, true, false), 1i), true, u_input.a.x | 0u, arg_2.b, var_0.b.x), ~var_0.b.xw), max(-1806i, arg_1.d & countOneBits(18644i))));
    var_0 = Struct_1(true, abs((countOneBits(var_0.b) | ~var_0.b) >> (vec4<u32>(arg_2.d.b.x, 54261u, ~0u, u_input.a.x) % vec4<u32>(32u))), select(select(!(!var_0.c), func_1(Struct_4(arg_1, true, u_input.a.x, var_1.d, 0u), vec2<u32>(u_input.a.x, var_0.b.x)), false), vec4<bool>(abs(68023i) <= u_input.b, select(true, var_1.e.a, var_0.a) && true, any(var_1.b.c), true != any(var_0.c)), all(vec3<bool>(true, any(vec2<bool>(var_0.a, arg_1.a)), true))), u_input.b);
    let var_2 = Struct_5(Struct_3(select(~27472i, -abs(arg_0), var_1.d.c.x), vec4<bool>(all(!vec3<bool>(var_1.b.c.x, var_1.b.c.x, arg_2.d.a)), !var_0.a, var_1.b.a, true), arg_1), Struct_1(func_1(Struct_4(arg_1, 4294967295u >= arg_2.b.b.x, ~20941u, Struct_1(arg_1.a, var_1.b.b, vec4<bool>(false, true, arg_2.e.a, true), arg_2.d.d), select(29634u, 70396u, true)), vec2<u32>(arg_2.c, var_1.c)).x, vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(123318u, 4294967295u), countOneBits(var_0.b.xy)), firstLeadingBit(var_0.b.x), _wgslsmith_add_u32(~u_input.a.x, abs(arg_2.e.b.x))), !select(func_1(Struct_4(Struct_1(true, var_1.b.b, vec4<bool>(false, true, true, true), -2188i), arg_2.e.a, 0u, arg_1, 0u), var_0.b.zw), select(vec4<bool>(false, true, true, arg_2.b.c.x), vec4<bool>(var_0.a, var_1.d.c.x, arg_2.b.a, true), var_0.a), any(var_1.d.c.xyz)), arg_0), 411f, Struct_3(-2147483647i, !select(vec4<bool>(true, true, arg_2.d.c.x, var_0.a), !vec4<bool>(true, false, var_1.b.c.x, arg_1.c.x), select(arg_1.c, arg_2.b.c, false)), Struct_1(true, max(abs(var_1.d.b), abs(var_1.e.b)), func_1(Struct_4(arg_1, true, 4294967295u, var_1.d, 4872u), arg_1.b.xx ^ vec2<u32>(arg_2.b.b.x, arg_1.b.x)), ~(-17466i))));
    return Struct_3(-62614i, !func_1(Struct_4(Struct_1(false, vec4<u32>(53837u, var_2.d.c.b.x, arg_1.b.x, 0u), vec4<bool>(arg_2.b.c.x, false, arg_1.c.x, arg_1.c.x), arg_1.d), true, var_2.b.b.x, Struct_1(var_2.b.c.x, arg_1.b, arg_1.c, arg_2.e.d), 47412u), vec2<u32>(~var_1.c, ~67041u)), var_1.d);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(func_4(u_input.b, Struct_1(all(arg_1.c.c.yxw), vec4<u32>(~13501u, 4294967295u, arg_1.c.b.x, func_4(arg_1.c.d, Struct_1(arg_0, arg_1.c.b, vec4<bool>(arg_1.c.c.x, false, arg_1.c.c.x, true), -6698i), Struct_2(arg_2.x, arg_1.c, arg_1.c.b.x, arg_1.c, arg_1.c)).c.b.x), !vec4<bool>(true, arg_1.c.c.x, true, true), -firstTrailingBit(-1i)), Struct_2(-2317f, func_4(0i, Struct_1(arg_1.b.x, vec4<u32>(7874u, arg_1.c.b.x, 65025u, u_input.a.x), vec4<bool>(true, false, arg_1.b.x, true), arg_1.a), Struct_2(817f, arg_1.c, u_input.a.x, arg_1.c, Struct_1(true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), arg_1.b, 2147483647i))).c, ~u_input.a.x << (_wgslsmith_dot_vec3_u32(arg_1.c.b.ywy, u_input.a.zxz) % 32u), arg_1.c, arg_1.c)).c.b.x, ~(u_input.a.x >> (4294967295u % 32u)));
    let var_1 = 1000f;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.zz)));
    let var_4 = arg_1.c.c.wxz;
    return func_4(2147483647i, arg_1.c, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + var_3.x)), Struct_1(true, u_input.a, select(arg_1.b, !vec4<bool>(true, false, false, arg_0), arg_1.b), countOneBits(-2147483647i)), 19175u, func_4(~(-1i), arg_1.c, Struct_2(_wgslsmith_f_op_f32(-1302f - -134f), Struct_1(var_4.x, u_input.a, arg_1.b, -1i), _wgslsmith_mod_u32(u_input.a.x, 54787u), func_4(-1182i, arg_1.c, Struct_2(var_3.x, Struct_1(var_4.x, vec4<u32>(1u, 4294967295u, u_input.a.x, 26575u), arg_1.b, -2147483647i), 39467u, Struct_1(arg_0, vec4<u32>(1u, u_input.a.x, 25974u, arg_1.c.b.x), vec4<bool>(false, true, var_4.x, arg_1.b.x), -35089i), Struct_1(true, arg_1.c.b, vec4<bool>(true, true, true, true), u_input.b))).c, func_4(-1i, Struct_1(true, vec4<u32>(arg_1.c.b.x, 15899u, arg_1.c.b.x, 0u), arg_1.c.c, -1i), Struct_2(-2342f, Struct_1(arg_0, u_input.a, arg_1.b, 1i), 71006u, arg_1.c, Struct_1(var_4.x, arg_1.c.b, arg_1.c.c, u_input.b))).c)).c, func_4(reverseBits(countOneBits(-42367i)), Struct_1(arg_0, _wgslsmith_add_vec4_u32(arg_1.c.b, vec4<u32>(1u, 57769u, arg_1.c.b.x, arg_1.c.b.x)), select(vec4<bool>(var_4.x, var_4.x, false, true), vec4<bool>(true, true, false, arg_1.c.a), arg_1.b), _wgslsmith_sub_i32(1i, -1i)), Struct_2(_wgslsmith_f_op_f32(-arg_2.x), func_4(1i, arg_1.c, Struct_2(var_1, arg_1.c, 54921u, Struct_1(false, arg_1.c.b, vec4<bool>(arg_1.b.x, arg_0, true, var_4.x), -18981i), arg_1.c)).c, arg_1.c.b.x & 10067u, func_4(-79226i, Struct_1(true, u_input.a, arg_1.b, -16485i), Struct_2(var_1, arg_1.c, 4294967295u, Struct_1(false, vec4<u32>(0u, arg_1.c.b.x, 1u, arg_1.c.b.x), arg_1.b, u_input.b), arg_1.c)).c, Struct_1(arg_0, vec4<u32>(arg_1.c.b.x, arg_1.c.b.x, arg_1.c.b.x, 1u), arg_1.b, u_input.b))).c)).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_3(select(~u_input.b, countOneBits(_wgslsmith_div_i32(u_input.b, 1i)), true), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), Struct_1(_wgslsmith_div_f32(196f, 566f) > _wgslsmith_f_op_f32(round(-151f)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u), _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(1u, u_input.a.x, 58059u, 1u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), abs(_wgslsmith_mult_i32(-44132i, u_input.b)))), func_5(all(vec3<bool>(false, true, true)), func_4(_wgslsmith_add_i32(u_input.b, i32(-1i) * -2147483647i), Struct_1(u_input.b < u_input.b, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), func_1(Struct_4(Struct_1(true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, false), u_input.b), false, 1u, Struct_1(true, u_input.a, vec4<bool>(true, false, true, true), u_input.b), u_input.a.x), vec2<u32>(u_input.a.x, 72618u)), select(u_input.b, u_input.b, false)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2405f), Struct_1(true, u_input.a, vec4<bool>(false, false, false, true), 16466i), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), Struct_1(false, vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, false), u_input.b), Struct_1(false, vec4<u32>(u_input.a.x, u_input.a.x, 22869u, u_input.a.x), vec4<bool>(true, false, false, true), u_input.b))), _wgslsmith_div_vec3_f32(vec3<f32>(1676f, _wgslsmith_div_f32(-486f, -289f), _wgslsmith_div_f32(-297f, -505f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-294f, 1129f, 816f), vec3<f32>(-1037f, -1036f, -129f)))))), 1000f, func_4(u_input.b, func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(63976i, u_input.b, u_input.b, -1i) >> (vec4<u32>(1u, u_input.a.x, 26655u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, -21682i, 10179i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), Struct_1(true, _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(1u, 4294967295u, 50664u, 21320u), u_input.a), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), -1i), Struct_2(397f, func_5(false, Struct_3(0i, vec4<bool>(false, true, false, false), Struct_1(false, vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), vec4<bool>(true, true, true, false), 2147483647i)), vec3<f32>(1789f, -1000f, -257f)), 1u, func_5(false, Struct_3(-1i, vec4<bool>(true, false, false, false), Struct_1(true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 6097u), vec4<bool>(false, true, false, false), -1i)), vec3<f32>(883f, 575f, -654f)), Struct_1(false, u_input.a, vec4<bool>(true, true, true, false), u_input.b))).c, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-160f))), func_4(u_input.b, Struct_1(true, u_input.a, vec4<bool>(false, true, true, true), u_input.b), Struct_2(-136f, Struct_1(true, vec4<u32>(u_input.a.x, 15593u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, false), 82284i), 15620u, Struct_1(false, vec4<u32>(87933u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, true, false, true), -14402i), Struct_1(true, u_input.a, vec4<bool>(false, false, false, false), -247i))).c, _wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, 1u), Struct_1(false, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), u_input.a), vec4<bool>(true, true, true, true), u_input.b), func_5(true, func_4(-15966i, Struct_1(true, u_input.a, vec4<bool>(true, true, true, false), u_input.b), Struct_2(126f, Struct_1(false, u_input.a, vec4<bool>(false, false, false, true), u_input.b), 0u, Struct_1(true, vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), vec4<bool>(false, true, true, true), 2147483647i), Struct_1(false, u_input.a, vec4<bool>(true, true, true, false), u_input.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1177f, 1216f, -404f) - vec3<f32>(-1200f, 376f, -531f))))));
    let var_1 = select(!(!func_1(Struct_4(var_0.a.c, true, u_input.a.x, var_0.d.c, 17065u), vec2<u32>(u_input.a.x, 0u) << (var_0.d.c.b.zy % vec2<u32>(32u)))), var_0.d.c.c, var_0.a.c.c);
    var_0 = Struct_5(Struct_3(var_0.d.a, vec4<bool>(true, any(var_1.wz), true, false), var_0.b), Struct_1(true, ~countOneBits(vec4<u32>(0u, 61695u, 0u, 52244u)), vec4<bool>(var_1.x, false, false, any(var_1.yy) || select(false, var_0.a.b.x, true)), select(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-113i, var_0.b.d), vec2<i32>(40993i, u_input.b)) ^ 2862i, (-21578i != var_0.d.a) & var_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -929f)))), var_0.d);
    let var_2 = !func_5(func_4(-_wgslsmith_mult_i32(23280i, -1903i), var_0.d.c, Struct_2(-320f, Struct_1(false, vec4<u32>(8465u, 97769u, u_input.a.x, u_input.a.x), var_1, -1i), var_0.a.c.b.x, Struct_1(var_1.x, u_input.a, var_1, 0i), Struct_1(false, vec4<u32>(var_0.a.c.b.x, u_input.a.x, var_0.b.b.x, var_0.b.b.x), var_1, -6822i))).c.c.x, Struct_3(_wgslsmith_add_i32(1i, -u_input.b), select(vec4<bool>(false, var_0.b.a, true, true), vec4<bool>(true, true, false, true), !var_0.a.b.x), func_5(true, Struct_3(47502i, var_1, var_0.b), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c, -675f, var_0.c))))), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - -101f) - _wgslsmith_f_op_f32(var_0.c + var_0.c)), _wgslsmith_f_op_f32(-var_0.c))).c.x;
    let var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d.c.d, -13113i, 18720i), vec3<i32>(-8863i, ~u_input.b, _wgslsmith_mult_i32(u_input.b, var_0.a.a))), ~_wgslsmith_sub_vec3_i32(max(vec3<i32>(29759i, -2147483647i, u_input.b), vec3<i32>(0i, 1i, u_input.b)), vec3<i32>(-1i, -1i, u_input.b))) >> (~_wgslsmith_div_vec3_u32((var_0.d.c.b.yzw << (vec3<u32>(84857u, u_input.a.x, 0u) % vec3<u32>(32u))) ^ var_0.d.c.b.xww, ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_0.d.c.b.x), u_input.a.www)) % vec3<u32>(32u));
    var var_4 = Struct_5(func_4(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b, 2147483647i, -1i)), _wgslsmith_sub_vec3_i32(~var_3, firstLeadingBit(var_3))), func_4(-2147483647i, Struct_1(func_5(var_0.a.b.x, var_0.a, vec3<f32>(var_0.c, var_0.c, 450f)).a, _wgslsmith_clamp_vec4_u32(var_0.a.c.b, var_0.a.c.b, vec4<u32>(36101u, 66501u, var_0.b.b.x, 1u)), vec4<bool>(true, true, true, true), -520i), Struct_2(_wgslsmith_f_op_f32(-var_0.c), Struct_1(true, vec4<u32>(0u, u_input.a.x, var_0.b.b.x, u_input.a.x), vec4<bool>(false, true, var_0.d.b.x, true), var_3.x), firstLeadingBit(u_input.a.x), func_5(var_1.x, Struct_3(8077i, vec4<bool>(false, var_0.a.c.a, false, var_2), var_0.b), vec3<f32>(var_0.c, 196f, var_0.c)), var_0.b)).c, Struct_2(-1084f, Struct_1(all(vec3<bool>(true, var_2, var_0.d.b.x)), u_input.a & vec4<u32>(1u, 16183u, var_0.d.c.b.x, 1u), func_5(false, Struct_3(var_0.a.c.d, var_0.b.c, Struct_1(false, vec4<u32>(var_0.b.b.x, u_input.a.x, 0u, u_input.a.x), var_0.b.c, var_3.x)), vec3<f32>(var_0.c, 663f, 802f)).c, _wgslsmith_mod_i32(u_input.b, 29976i)), _wgslsmith_add_u32(~var_0.b.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_0.b.b.x), u_input.a.yzz)), Struct_1(any(var_1), var_0.b.b, select(var_1, vec4<bool>(var_0.b.c.x, var_1.x, false, var_0.b.a), var_2), 1i), var_0.b)), Struct_1(false, abs(u_input.a | (vec4<u32>(10074u, 24805u, 13605u, var_0.a.c.b.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 20816u, var_0.a.c.b.x) % vec4<u32>(32u)))), var_1, firstLeadingBit(_wgslsmith_clamp_i32(abs(-1i), var_0.b.d, _wgslsmith_div_i32(1i, var_0.d.c.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-642f))), func_4(_wgslsmith_add_i32(~(-2147483647i), -1i), var_0.a.c, Struct_2(758f, func_4(45442i, func_5(var_1.x, Struct_3(u_input.b, vec4<bool>(false, true, var_1.x, false), var_0.d.c), vec3<f32>(-178f, 651f, 629f)), Struct_2(var_0.c, var_0.d.c, var_0.a.c.b.x, Struct_1(var_1.x, u_input.a, vec4<bool>(var_0.d.b.x, var_1.x, true, var_0.b.c.x), -2147483647i), Struct_1(true, vec4<u32>(0u, u_input.a.x, 0u, 4294967295u), var_0.b.c, var_3.x))).c, firstTrailingBit(~3560u), func_4(reverseBits(var_3.x), var_0.a.c, Struct_2(457f, Struct_1(true, vec4<u32>(0u, u_input.a.x, 53217u, var_0.d.c.b.x), vec4<bool>(true, true, true, var_1.x), u_input.b), 9715u, Struct_1(false, var_0.d.c.b, vec4<bool>(var_1.x, true, var_2, true), var_0.d.c.d), Struct_1(var_0.d.c.c.x, u_input.a, var_0.b.c, var_3.x))).c, func_5(u_input.b <= 1i, func_4(u_input.b, Struct_1(true, var_0.d.c.b, var_0.b.c, 2147483647i), Struct_2(-453f, Struct_1(false, u_input.a, vec4<bool>(true, false, var_0.b.a, var_0.a.b.x), 2147483647i), 18857u, var_0.b, var_0.d.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 187f, var_0.c))))));
    var var_5 = var_4.a.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

