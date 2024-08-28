struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: bool) -> vec3<bool> {
    global0 = _wgslsmith_dot_vec2_i32((firstTrailingBit(vec2<i32>(u_input.b.x, arg_1.x)) | -vec2<i32>(-2147483647i, arg_1.x)) >> (vec2<u32>(~u_input.a, u_input.a & 1u) % vec2<u32>(32u)), ~select(vec2<i32>(2147483647i, u_input.b.x), _wgslsmith_mult_vec2_i32(arg_1, vec2<i32>(-22393i, 2147483647i)), arg_2)) | countOneBits(2147483647i);
    var var_0 = Struct_3(Struct_1(vec2<i32>(firstTrailingBit(arg_1.x), abs(_wgslsmith_clamp_i32(arg_1.x, u_input.b.x, 8175i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0, _wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(-285f, arg_0.x)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -857f) * arg_0), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(795f, 127f))))), abs(1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), arg_0.x))), -250f, vec3<i32>(-6528i, _wgslsmith_mult_i32(-9793i, -41784i), ~2147483647i >> (_wgslsmith_sub_u32(15833u, u_input.d) % 32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 33051u, 24759u, u_input.a), u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, 6938u, 35158u), u_input.c) % vec4<u32>(32u)), ~u_input.c, firstLeadingBit(vec4<u32>(0u, u_input.c.x, 12823u, 30921u))) >> (abs(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(22690u, 0u, u_input.d, 42013u), vec4<u32>(u_input.d, 0u, 0u, 1u)), ~vec4<u32>(u_input.a, u_input.d, 0u, u_input.a))) % vec4<u32>(32u)), abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(83787i, u_input.b.x, 2147483647i), vec3<i32>(-1i, 49039i, 35107i))));
    let var_1 = !arg_2;
    var var_2 = Struct_3(Struct_1(_wgslsmith_mult_vec2_i32(~(vec2<i32>(-51533i, var_0.e.x) & var_0.c.xz), ~(~vec2<i32>(arg_1.x, 37909i))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-304f, 793f)), _wgslsmith_f_op_f32(1325f - -1014f))), 106f), ~(~4294967295u) ^ u_input.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(688f, -1070f)))), vec2<f32>(var_0.a.b.x, -894f)))), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_div_vec3_i32(vec3<i32>(-12191i, 21723i << ((u_input.d | var_0.a.c) % 32u), arg_1.x), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 2147483647i), _wgslsmith_add_i32(-2147483647i, var_0.c.x)), -12254i, u_input.b.x << (u_input.c.x % 32u))), u_input.c, vec3<i32>(-1i) * -vec3<i32>(2147483647i, min(12009i, 2147483647i), ~var_0.c.x));
    let var_3 = false;
    return select(!(!vec3<bool>(true, true, select(var_3, var_1, var_1))), select(vec3<bool>(all(select(vec2<bool>(var_1, false), vec2<bool>(false, var_1), vec2<bool>(arg_2, arg_2))), select(var_1, var_1, true), arg_2), select(vec3<bool>(var_3, arg_2, any(vec2<bool>(false, var_3))), select(select(vec3<bool>(var_3, false, true), vec3<bool>(true, var_3, var_1), vec3<bool>(arg_2, true, true)), !vec3<bool>(var_3, var_3, true), select(vec3<bool>(var_3, true, true), vec3<bool>(false, false, var_3), vec3<bool>(true, arg_2, false))), !select(vec3<bool>(true, arg_2, false), vec3<bool>(true, true, arg_2), vec3<bool>(var_3, var_1, true))), select(!(!vec3<bool>(true, arg_2, var_1)), !(!vec3<bool>(false, var_3, arg_2)), arg_2)), any(!vec2<bool>(var_1, var_3)));
}

fn func_2(arg_0: f32, arg_1: i32) -> bool {
    global0 = arg_1;
    let var_0 = !(!(!select(vec3<bool>(true, true, true), func_3(vec2<f32>(950f, arg_0), u_input.b, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    global0 = ~reverseBits(2147483647i);
    var var_1 = Struct_5(abs(u_input.a << (_wgslsmith_add_u32(u_input.c.x, 1u) % 32u)) >> (7288u % 32u), select(vec4<bool>(true, all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), any(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x))), var_0.x), vec4<bool>(false, var_0.x, false, -2147483647i != _wgslsmith_sub_i32(arg_1, u_input.b.x)), select(!(!vec4<bool>(true, false, true, var_0.x)), select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x), !vec4<bool>(true, false, false, var_0.x), select(true, false, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, all(vec2<bool>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -880f, -1000f) + vec3<f32>(450f, 259f, -772f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(398f, -938f, -708f)))))), ~vec3<u32>(~144229u, min(20202u >> (u_input.d % 32u), abs(4294967295u)), _wgslsmith_add_u32(~13079u, u_input.d)));
    var_1 = Struct_5(countOneBits(22043u), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(select(var_1.c.x, _wgslsmith_f_op_f32(-647f + arg_0), !(40545i <= u_input.b.x))), _wgslsmith_f_op_f32(-1f), -702f), u_input.c.wyy);
    return var_0.x;
}

fn func_4(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = select(!func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1636f, 1085f), vec2<f32>(2753f, 526f))), vec2<i32>(-2147483647i, 5453i), true), vec3<bool>(false, true, false), true);
    let var_1 = Struct_2(Struct_1(abs(vec2<i32>(-u_input.b.x, i32(-1i) * -1i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-694f, 197f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(494f, -687f))))))), u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1110f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-282f, 884f), vec2<f32>(-708f, -425f), false))))), Struct_1(vec2<i32>(arg_0, -(3065i >> (u_input.c.x % 32u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -632f), -692f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2080f, 763f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(136f, 1912f)))), false)), ~u_input.c.x & 0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2478f, -334f, false)) - -755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1430f)))), vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x >> (u_input.a % 32u), u_input.d, _wgslsmith_sub_u32(1u, u_input.c.x))) ^ vec2<u32>(u_input.a, u_input.a));
    var var_2 = !vec4<bool>(true, (34137u | ~var_1.b.c) == 0u, false, true);
    let var_3 = select(vec3<bool>(!var_2.x, var_0.x & func_3(_wgslsmith_f_op_vec2_f32(-var_1.b.b), reverseBits(vec2<i32>(-2147483647i, var_1.b.a.x)), true).x, select(false, true, true)), !func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(max(1304f, var_1.a.b.x))), countOneBits(var_1.b.a) & var_1.a.a, _wgslsmith_add_i32(var_1.b.a.x, 58785i) < -arg_0), var_2.x);
    let var_4 = vec2<i32>(abs(arg_0), min(var_1.b.a.x, 0i)) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32((var_1.a.a ^ var_1.b.a) | u_input.b, ~_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 20053i))), abs(_wgslsmith_add_vec2_i32(max(u_input.b, var_1.b.a), vec2<i32>(46965i, arg_0))));
    return _wgslsmith_clamp_i32(countOneBits(var_1.a.a.x), ~62881i, abs(-u_input.b.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    global0 = (arg_1 & abs(-1771i)) << (4294967295u % 32u);
    global0 = -reverseBits(func_4(32688i, func_2(_wgslsmith_f_op_f32(select(1506f, arg_3.x, true)), -2302i)));
    let var_0 = vec3<bool>(true, true, true);
    global0 = min(14333i, i32(-1i) * -16934i);
    var var_1 = vec4<bool>(true, var_0.x && any(select(vec4<bool>(var_0.x, false, var_0.x, false), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), false), vec4<bool>(true, true, true, true))), !all(!(!vec2<bool>(false, var_0.x))), false);
    return Struct_1(vec2<i32>(-2147483647i, countOneBits(arg_1)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.xy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1747f))) * vec2<f32>(_wgslsmith_f_op_f32(arg_3.x - -341f), _wgslsmith_f_op_f32(trunc(-1316f)))))), 1u, vec2<f32>(arg_2, _wgslsmith_f_op_f32(495f + _wgslsmith_f_op_f32(-arg_3.x))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_5 {
    let var_0 = vec3<i32>(func_4(-2299i, func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.d.x + 1000f))), arg_0.a.a.x)), -1i, _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(max(1i, arg_2.a.x), u_input.b.x), -(~arg_1.b.a.x))));
    global0 = select(-arg_2.a.x, -abs(arg_1.a.a.x >> (u_input.c.x % 32u)), true) | 2147483647i;
    let var_1 = _wgslsmith_div_u32(arg_2.c, ~(~arg_1.c.x)) >> (~arg_2.c % 32u);
    global0 = var_0.x;
    let var_2 = i32(-1i) * -_wgslsmith_dot_vec3_i32(firstLeadingBit(var_0), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 2210i, 10704i), vec3<i32>(arg_1.a.a.x, 1i, arg_2.a.x)));
    return Struct_5(~(~_wgslsmith_sub_u32(1u, var_1) >> (u_input.d % 32u)), vec4<bool>(all(!func_3(vec2<f32>(arg_1.b.b.x, arg_2.d.x), arg_2.a, true).xz), true, func_3(_wgslsmith_f_op_vec2_f32(-arg_0.a.b), _wgslsmith_sub_vec2_i32(arg_0.b.a, arg_0.a.a), true).x, select(true, !func_3(vec2<f32>(arg_1.a.b.x, -1400f), arg_2.a, true).x, false)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.b.x, arg_1.a.d.x, arg_1.a.d.x), vec3<f32>(1000f, 779f, arg_2.b.x)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.b.x, -480f, arg_1.b.b.x), vec3<f32>(-2608f, arg_1.b.d.x, -480f)))), vec3<f32>(_wgslsmith_div_f32(arg_1.a.b.x, arg_1.a.d.x), arg_1.a.d.x, _wgslsmith_f_op_f32(step(-455f, arg_0.a.b.x))))))), ~abs(countOneBits(u_input.c.yyz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    global0 = u_input.b.x;
    global0 = u_input.b.x;
    let var_1 = func_5(Struct_2(func_1(_wgslsmith_add_vec3_u32(u_input.c.wxz, u_input.c.wwx), -(2147483647i & u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-658f, 116f, 848f, -1426f) + vec4<f32>(-576f, 198f, -688f, -2305f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 573f, 385f, 534f)))), func_1(vec3<u32>(0u, countOneBits(1u), _wgslsmith_mult_u32(var_0, u_input.c.x)), ~u_input.b.x << (~0u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1781f, 1165f)) - 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1340f, -1135f, 584f, -366f))) + vec4<f32>(-1216f, -558f, 406f, -539f))), ~(~u_input.c.yx)), Struct_2(func_1(u_input.c.wwx, func_4(u_input.b.x, true) << (13762u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(152f, -1030f)), vec4<f32>(1674f, -1251f, -616f, 151f)), Struct_1(select(vec2<i32>(-2721i, 2147483647i), u_input.b, false) & select(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x), true), vec2<f32>(_wgslsmith_f_op_f32(min(1566f, 1115f)), _wgslsmith_f_op_f32(round(381f))), _wgslsmith_div_u32(0u, ~var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1131f, 718f), vec2<f32>(1000f, -1840f)))), ~firstTrailingBit(u_input.c.yz)), func_1(min((u_input.c.ywy >> (u_input.c.yyz % vec3<u32>(32u))) | vec3<u32>(26543u, u_input.d, u_input.a), u_input.c.zzx), (-1i << (u_input.d % 32u)) & u_input.b.x, _wgslsmith_div_f32(358f, 620f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(177f, 451f, 1603f, -2284f)), vec4<f32>(358f, 124f, -478f, 460f)))))));
    let var_2 = vec2<u32>(0u, 21055u);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~_wgslsmith_div_vec4_i32(min(abs(vec4<i32>(41685i, u_input.b.x, -4360i, u_input.b.x)), vec4<i32>(-2147483647i, u_input.b.x, 1i, 3570i)), ~(~vec4<i32>(0i, -2147483647i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1243f)), var_1.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(622f - -1360f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-860f)) + _wgslsmith_f_op_f32(509f * 291f)), var_1.c.x)), 548f);
}

