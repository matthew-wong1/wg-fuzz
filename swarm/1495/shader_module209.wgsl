struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: u32 = 1u;

var<private> global2: vec4<i32>;

var<private> global3: i32 = -25286i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = vec3<bool>(select(true, false, select(true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), any(vec3<bool>(true, true, true)))), true, !(!all(vec4<bool>(true, false, true, true))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~u_input.d, 24u)], firstLeadingBit(~u_input.b)), _wgslsmith_mod_i32(4174i, _wgslsmith_div_i32(-12068i, ~(-arg_1.x))), -(~_wgslsmith_clamp_i32(global2.x, u_input.e, ~2535i)));
    let var_2 = Struct_3(Struct_1(~vec2<u32>(_wgslsmith_clamp_u32(31392u, u_input.c.x, 0u), _wgslsmith_mod_u32(arg_3, arg_3)), _wgslsmith_f_op_vec3_f32(trunc(arg_0.xzy)), arg_0.xzy, 19571i), global2.x, vec3<u32>(arg_2, ~_wgslsmith_sub_u32(51836u, arg_3), arg_2) & u_input.c.wyw, Struct_2(true), _wgslsmith_div_vec4_u32(select(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(20137u, arg_2, arg_3, 7709u)), u_input.c, select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x))), vec4<u32>(u_input.d, ~arg_2, abs(4294967295u), 34190u)) ^ u_input.c);
    global3 = -2147483647i;
    global3 = u_input.b.x;
    return 108958u;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> f32 {
    global1 = firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(u_input.c.zzx), vec3<u32>(u_input.c.x, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1414f, -657f, -1000f, arg_2)), _wgslsmith_add_vec2_i32(vec2<i32>(-16670i, arg_0.x), global2.xw), select(1u, u_input.c.x, true), u_input.d), u_input.c.x)));
    global1 = u_input.c.x;
    global1 = u_input.a;
    global1 = 39808u;
    var var_0 = Struct_2((_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1379f - arg_2), _wgslsmith_f_op_f32(max(508f, -792f))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 + arg_2), -330f))) == true);
    return _wgslsmith_f_op_f32(172f - 916f);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = u_input.e;
    global1 = ~u_input.a;
    var var_1 = Struct_2(any(arg_0.zx));
    let var_2 = Struct_4(all(!select(!arg_0.xxw, !vec3<bool>(var_1.a, arg_1.x, false), !var_1.a)), _wgslsmith_f_op_f32(sign(844f)), abs(1u), reverseBits(vec3<i32>(u_input.b.x, -18371i >> (u_input.d % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.b.x, -2147483647i), vec4<i32>(var_0, var_0, var_0, -2147483647i)) << ((u_input.c.x & 4294967295u) % 32u))), u_input.d);
    var var_3 = Struct_2((!(arg_1.x | false) | !(!var_1.a)) | false);
    return select(!(!vec3<bool>(true, 1618f <= var_2.b, true)), !vec3<bool>(!var_1.a, any(vec4<bool>(true, var_3.a, true, arg_1.x)), false), false);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_i32(~_wgslsmith_mult_i32(833i, u_input.b.x) & _wgslsmith_add_i32(i32(-1i) * -20379i, 61724i), _wgslsmith_div_i32(u_input.e, u_input.e));
    let var_1 = global2.x;
    let var_2 = all(!(!(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)))));
    var var_3 = select(func_4(vec4<bool>(var_2, arg_0, 1f > _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(1u, 24u)], 6939i, -1298f)), false), select(vec4<bool>(true, arg_0, -2147483647i > u_input.e, true), !(!vec4<bool>(arg_0, false, arg_0, false)), true)), !vec3<bool>(arg_0, countOneBits(u_input.c.x) >= u_input.c.x, var_2), !all(vec2<bool>(true, true)));
    var var_4 = Struct_2(!(true && var_2));
    return Struct_1(u_input.c.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1397f, 1924f, 205f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-978f, -1462f, -1000f))))), u_input.b.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = 1u;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(min(_wgslsmith_div_u32(~u_input.d, 1u), 4294967295u), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(u_input.c >> (vec4<u32>(arg_1.x, 58305u, 21722u, 0u) % vec4<u32>(32u)), ~arg_3.e))), _wgslsmith_div_vec2_u32(u_input.c.xw, ~u_input.c.wz));
    let var_2 = vec4<i32>(arg_3.a.d, _wgslsmith_mult_i32(i32(-1i) * -(~(-31374i)), ~func_1(true, 15407u << (arg_1.x % 32u)).d), u_input.e, global2.x);
    var var_3 = arg_3.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.b.x)));
    return true & arg_3.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_add_u32(u_input.d | u_input.c.x, _wgslsmith_sub_u32(~u_input.c.x, countOneBits(48589u ^ u_input.c.x)));
    var var_0 = func_5(reverseBits(firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b.x, -7602i, global2.x), ~u_input.b.zwz))), ~u_input.c ^ vec4<u32>(u_input.c.x, u_input.d, ~abs(u_input.a), u_input.c.x), 681f, Struct_3(func_1(false, min(4294967295u, max(64239u, 4294967295u))), ~u_input.b.x, ~_wgslsmith_add_vec3_u32(~u_input.c.zyx, u_input.c.zzx), Struct_2(true), u_input.c));
    let var_1 = Struct_3(Struct_1(~_wgslsmith_add_vec2_u32(func_1(true, u_input.d).a, func_1(true, 1u).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2939f, 2870f, 702f), vec3<f32>(-931f, 398f, -1891f), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(426f, 315f, 757f) - vec3<f32>(-1000f, -290f, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-445f, 397f, -173f) + vec3<f32>(-548f, 1403f, -469f)), vec3<f32>(-477f, -565f, 1129f))), func_1(true, _wgslsmith_mod_u32(select(0u, 0u, false), _wgslsmith_mod_u32(u_input.d, 4294967295u))).d), ~func_1(func_4(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true)).x, (u_input.c.x & 26603u) >> ((u_input.a | 0u) % 32u)).d, firstLeadingBit(firstTrailingBit(firstLeadingBit(u_input.c.zxz)) >> (vec3<u32>(_wgslsmith_mult_u32(0u, 0u), u_input.c.x | 598u, ~u_input.d) % vec3<u32>(32u))), Struct_2(true), abs(u_input.c));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.b.x, var_1.a.b.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)), 833f)))));
    global1 = _wgslsmith_add_u32(max(1u, _wgslsmith_mod_u32(abs(57530u), func_1(true, _wgslsmith_sub_u32(91446u, var_1.c.x)).a.x)), ~abs(~u_input.a) << (1u % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(var_2.wzx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(394f * 327f), _wgslsmith_f_op_f32(-2380f * var_2.x), _wgslsmith_div_f32(-891f, 1286f)) * _wgslsmith_f_op_vec3_f32(-func_1(false, u_input.a).c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.a.b, vec3<f32>(489f, var_1.a.c.x, var_2.x))) * _wgslsmith_f_op_vec3_f32(-var_2.yzy)) + _wgslsmith_div_vec3_f32(var_2.xxz, vec3<f32>(-1084f, var_2.x, var_1.a.b.x))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -993f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353f * -1436f)))), _wgslsmith_div_f32(1700f, var_1.a.c.x), var_2.x);
    var_3 = func_1(!var_1.d.a, ~_wgslsmith_dot_vec3_u32(min(var_1.c, var_1.e.zzx), vec3<u32>(var_1.a.a.x >> (45689u % 32u), var_1.c.x, 56904u))).b;
    global3 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, global2.x), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstLeadingBit(-1i), 2147483647i), global2.x, max(1i, var_1.b))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-u_input.b, vec4<i32>(var_1.b << (~u_input.d % 32u), -1i, -_wgslsmith_mod_i32(-47150i, var_1.a.d), 1i)), max(vec2<u32>(var_1.e.x, ~1u), var_1.a.a));
}

