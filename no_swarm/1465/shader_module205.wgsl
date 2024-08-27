struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(80184u, 18108u, 0u), vec3<u32>(1u, 1u, 0u), vec3<u32>(990u, 0u, 0u), vec3<u32>(0u, 65366u, 1u), vec3<u32>(24885u, 100417u, 0u), vec3<u32>(53892u, 1u, 34084u), vec3<u32>(53374u, 0u, 41639u), vec3<u32>(4294967295u, 1u, 54068u), vec3<u32>(1u, 24529u, 4294967295u), vec3<u32>(0u, 10313u, 0u), vec3<u32>(0u, 3833u, 116383u), vec3<u32>(1u, 18496u, 11214u), vec3<u32>(82235u, 0u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(123f, _wgslsmith_f_op_f32(-arg_0.d.a.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(step(arg_2, 1194f))) * 992f) * _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(round(973f)))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-822f, arg_1.a.x, 278f, -1071f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a.x - _wgslsmith_div_f32(arg_2, arg_0.d.a.x))), _wgslsmith_f_op_f32(round(arg_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-153f + arg_2) + arg_1.a.x), -1710f)));
    let var_2 = arg_1;
    let var_3 = vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.d, ~(-vec2<i32>(-2147483647i, -13213i))), _wgslsmith_sub_i32(-firstLeadingBit(arg_0.c.x), -2147483647i), u_input.a, countOneBits(u_input.a));
    return arg_0.b.zwy;
}

fn func_2() -> i32 {
    global0 = array<vec3<u32>, 13>();
    var var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2066f))) + -303f), Struct_4(Struct_3(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-22164i, 11246i, u_input.a, u_input.b), vec4<i32>(u_input.a, 8194i, u_input.d.x, u_input.b)), vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, u_input.d.x))), select(-firstLeadingBit(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.d.x)), select(vec4<i32>(u_input.d.x, u_input.d.x, 0i, 2147483647i), vec4<i32>(u_input.d.x, -2147483647i, u_input.a, u_input.a), false) << (abs(vec4<u32>(47813u, 17769u, 8759u, u_input.c.x)) % vec4<u32>(32u)), false), func_3(Struct_4(Struct_3(vec4<i32>(u_input.b, -12603i, u_input.a, u_input.b)), vec4<i32>(1i, u_input.b, u_input.b, 41420i), select(vec3<i32>(u_input.d.x, -1i, u_input.a), vec3<i32>(-2147483647i, 2147483647i, -19797i), vec3<bool>(false, false, false)), Struct_1(vec3<f32>(-1000f, -657f, -1485f), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), false), Struct_1(vec3<f32>(825f, -1264f, -1044f), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), 340f), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(381f, 1502f, 1531f)), vec3<f32>(291f, -1234f, 1217f)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), -(65453i ^ u_input.d.x) == (u_input.a << (~u_input.c.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(378f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(945f, 624f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(239f)) + 429f))));
    let var_1 = -2757i;
    var var_2 = u_input.c.x;
    global0 = array<vec3<u32>, 13>();
    return ~firstTrailingBit(select(-23436i, u_input.d.x, _wgslsmith_f_op_f32(-var_0.b.d.a.x) > _wgslsmith_f_op_f32(956f + var_0.c)));
}

fn func_4(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = vec2<bool>(true, u_input.c.x != _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), (vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x) & vec4<u32>(31767u, u_input.c.x, 17996u, 1u)) << (~vec4<u32>(37826u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))));
    var var_1 = Struct_3(countOneBits(abs(-max(vec4<i32>(0i, u_input.b, arg_0.x, -2147483647i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 2147483647i)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, -143f, 875f) - vec3<f32>(368f, -2206f, 1157f))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-966f, 1225f, -1853f) * vec3<f32>(-1484f, -363f, 1426f))))), select(vec4<bool>(true || (u_input.c.x > u_input.c.x), var_0.x, false, any(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), select(vec4<bool>(all(vec2<bool>(var_0.x, true)), !var_0.x, u_input.c.x < 1u, arg_0.x <= u_input.b), vec4<bool>(true, !var_0.x, !var_0.x, all(vec2<bool>(var_0.x, true))), vec4<bool>(true, true, true, var_0.x)), vec4<bool>(false || var_0.x, (var_1.a.x ^ var_1.a.x) >= func_2(), false, var_0.x)), !select(!select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), any(vec3<bool>(var_0.x, var_0.x, true))), var_0.x));
    global0 = array<vec3<u32>, 13>();
    let var_3 = true;
    return Struct_3(max(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~var_1.a, vec4<i32>(var_1.a.x, var_1.a.x, 1i, var_1.a.x)), vec4<i32>(u_input.d.x, var_1.a.x, arg_0.x, -u_input.b)), var_1.a));
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    let var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(0u, 13u)], vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), ~1u, ~4294967295u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, 0u), vec4<u32>(0u, 68720u, u_input.c.x, u_input.c.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 36669u, 0u, 55425u), vec4<u32>(u_input.c.x, 59899u, u_input.c.x, 1u)))), 13u)];
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1866f))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, var_1, var_1), vec3<f32>(var_1, var_1, -918f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 791f)), true))))), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-536f))) > 943f, true, false), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, select(true, true, true), true, all(vec3<bool>(false, true, false))), (var_1 != var_1) && true));
    return Struct_4(func_4(vec2<i32>(firstTrailingBit(-arg_0.a.x), 1i | _wgslsmith_sub_i32(arg_0.a.x, u_input.b))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(arg_0.a.x, arg_0.a.x), 43159i, ~arg_0.a.x, u_input.b), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_0.a.x, -7800i, u_input.b, 0i), arg_0.a), _wgslsmith_mult_vec4_i32(arg_0.a, arg_0.a) ^ countOneBits(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, arg_0.a.x))) | ~(vec4<i32>(-1i) * -arg_0.a), ~(~firstLeadingBit(-vec3<i32>(arg_0.a.x, u_input.a, u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-977f, 353f, 984f)))), select(select(!vec4<bool>(var_2.c.x, true, var_2.c.x, var_2.b.x), select(vec4<bool>(var_2.b.x, true, false, true), vec4<bool>(true, false, true, var_2.c.x), var_2.c.x), var_2.b.x & var_2.c.x), select(!var_2.b, vec4<bool>(var_2.c.x, var_2.c.x, true, var_2.b.x), vec4<bool>(false, var_2.b.x, true, true)), _wgslsmith_f_op_f32(round(868f)) != _wgslsmith_f_op_f32(-var_2.a.x)), vec4<bool>((arg_0.a.x << (u_input.c.x % 32u)) < abs(2147483647i), var_2.c.x, var_2.c.x, true)), true);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_5(func_4(vec2<i32>(func_2(), u_input.b)));
    var var_1 = Struct_1(vec3<f32>(-1569f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-187f + var_0.d.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.a.x)) * 231f))), vec4<bool>(all(func_5(Struct_3(vec4<i32>(0i, u_input.d.x, u_input.b, -4389i))).d.b.ww), true, true, all(select(select(vec2<bool>(true, false), var_0.d.c.yz, vec2<bool>(true, false)), !vec2<bool>(true, var_0.d.b.x), !vec2<bool>(false, var_0.d.c.x)))), !vec4<bool>(var_0.d.b.x, all(var_0.d.c.xy), any(vec4<bool>(var_0.e, false, true, var_0.e)), all(vec3<bool>(false, true, var_0.e))));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, countOneBits(u_input.c)), abs(vec2<u32>(91056u, 0u))) >> (vec2<u32>(~(arg_0 << (4294967295u % 32u)), arg_0) % vec2<u32>(32u)), vec2<u32>(~u_input.c.x, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(37476u, 4294967295u), 4294967295u)));
    var_1 = var_0.d;
    var_2 = firstLeadingBit(~firstTrailingBit(u_input.c.x));
    return var_0.d;
}

fn func_6(arg_0: Struct_4) -> bool {
    var var_0 = arg_0.a;
    var var_1 = firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, 0i), ~arg_0.c.x, -arg_0.a.a.x, 2147483647i));
    var_1 = abs(~vec4<i32>(countOneBits(26048i), -2147483647i, u_input.d.x, func_3(arg_0, Struct_1(vec3<f32>(-703f, -214f, -349f), vec4<bool>(true, arg_0.e, arg_0.d.b.x, true), arg_0.d.b), arg_0.d.a.x).x) >> (countOneBits(~(~vec4<u32>(4294967295u, 15576u, u_input.c.x, 13537u))) % vec4<u32>(32u)));
    return true;
}

fn func_7(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> Struct_4 {
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    let var_0 = 1f;
    return func_5(func_5(Struct_3(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -9978i, arg_0), vec4<i32>(arg_0, u_input.a, -2147483647i, arg_0), vec4<i32>(-1i, 0i, -2147483647i, arg_1.x))))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(-(~(~(~u_input.b))), select(vec2<i32>(u_input.a, ~(-u_input.a)), vec2<i32>(21413i, 0i), func_6(Struct_4(Struct_3(vec4<i32>(-26114i, 58692i, u_input.b, 1467i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, u_input.a, -1i), vec4<i32>(48746i, u_input.a, 1i, 0i)), vec3<i32>(36935i, u_input.d.x, -8317i), func_1(71813u), u_input.b < 1i))), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x & 4294967295u, _wgslsmith_mod_u32(30141u, 6579u)), ~(~(~vec2<u32>(u_input.c.x, u_input.c.x)))));
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    let var_1 = 28255u;
    var var_2 = ~((vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, -34179i, u_input.d.x)) << (~(~(~vec4<u32>(0u, var_1, var_1, u_input.c.x))) % vec4<u32>(32u)));
    var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-15699i, var_0.b.x | var_0.b.x, var_0.b.x, 0i), ~vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, func_3(Struct_4(Struct_3(var_0.a.a), vec4<i32>(63598i, 6774i, 0i, var_0.c.x), var_0.a.a.zwz, var_0.d, true), Struct_1(var_0.d.a, var_0.d.b, vec4<bool>(var_0.e, true, false, var_0.d.b.x)), var_0.d.a.x).x, _wgslsmith_sub_i32(var_2.x, -1i)), var_0.c.x, 1i, u_input.a));
    global0 = array<vec3<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(u_input.c.x, var_1), u_input.c, vec2<f32>(var_0.d.a.x, _wgslsmith_f_op_f32(ceil(-215f))));
}

