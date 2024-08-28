struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = Struct_2(global1.a << (global1.c.b % vec4<u32>(32u)), abs(arg_2), arg_1.c, vec3<u32>(_wgslsmith_dot_vec3_u32(global1.c.b.xzx, ~(~arg_1.c.b.zyx)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(26112u, 118879u, 153836u, 52971u), vec4<u32>(0u, 74260u, 0u, 35976u)), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(~global1.d.x, _wgslsmith_mod_u32(u_input.e, global1.d.x)))), !(false | global1.e));
    global0 = reverseBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(~(~arg_0.a), max(35297i, 1473i)), u_input.d));
    let var_1 = vec3<bool>(!(!(_wgslsmith_f_op_f32(sign(360f)) == _wgslsmith_f_op_f32(f32(-1f) * -1324f))), any(vec3<bool>(any(!vec4<bool>(global1.e, false, global1.e, false)), all(!vec3<bool>(true, var_0.e, var_0.e)), true | all(vec4<bool>(false, var_0.e, arg_1.e, var_0.e)))), all(select(vec2<bool>(global1.d.x != 1u, false), select(select(vec2<bool>(global1.e, global1.e), vec2<bool>(true, global1.e), false), vec2<bool>(arg_1.e, var_0.e), var_0.e), global1.e)));
    global1 = Struct_2(arg_1.c.c, -27728i, var_0.c, arg_1.d, true);
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(446f)) + _wgslsmith_f_op_f32(select(726f, -1201f, true))));
}

fn func_2() -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f * -324f) + _wgslsmith_f_op_f32(select(128f, -1422f, global1.e))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_3(-36811i, ~global1.c.c.wz, ~u_input.e, ~global1.d), Struct_2(vec4<i32>(global1.b, u_input.c, 1i, global1.a.x), -15924i, global1.c, ~vec3<u32>(0u, 1u, u_input.e), true), 8589i)))), _wgslsmith_f_op_f32(f32(-1f) * -1583f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1352f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-875f + -923f)))))));
    let var_1 = true;
    global0 = global1.a.x ^ _wgslsmith_mod_i32(global1.a.x, select(countOneBits(-u_input.d), -1i, true));
    var var_2 = Struct_2(abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global1.a.x, i32(-1i) * -7173i, global1.c.c.x), min(-vec4<i32>(19557i, u_input.c, 54776i, u_input.b), vec4<i32>(31867i, 0i, -25614i, u_input.c) ^ vec4<i32>(u_input.d, 0i, 32239i, -5256i)))), ~(-u_input.a.x), global1.c, abs(countOneBits(_wgslsmith_mod_vec3_u32(global1.d, vec3<u32>(52560u, u_input.e, 42854u))) << (~global1.d % vec3<u32>(32u))), all(!(!select(vec4<bool>(true, false, var_1, true), vec4<bool>(true, global1.e, false, global1.e), false))));
    var var_3 = abs(abs(~(~(~u_input.e))));
    return ((firstLeadingBit(global1.a.x) < _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_2.c.c.x, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, -16336i, global1.c.c.x, var_2.c.c.x), global1.c.c))) || any(select(vec2<bool>(false, false), select(vec2<bool>(global1.e, true), vec2<bool>(var_2.e, global1.e), false), false))) | (var_1 || false);
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = vec3<i32>(i32(-1i) * -(global1.a.x ^ _wgslsmith_mult_i32(5011i, u_input.c)), i32(-1i) * -1i, firstLeadingBit(global1.c.c.x));
    var var_1 = arg_0;
    global1 = Struct_2(global1.c.c, 1i, global1.c, global1.c.a.zwx, func_2());
    global1 = Struct_2(_wgslsmith_sub_vec4_i32(global1.a, select(vec4<i32>(17783i, global1.c.c.x, -1i, var_0.x) ^ select(global1.a, vec4<i32>(1i, global1.b, u_input.b, var_0.x), global1.e), ~vec4<i32>(-2147483647i, u_input.d, var_0.x, -1i), select(vec4<bool>(global1.e, false, global1.e, global1.e), select(vec4<bool>(true, false, true, true), vec4<bool>(true, global1.e, global1.e, true), vec4<bool>(true, global1.e, global1.e, true)), !vec4<bool>(false, true, global1.e, true)))), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, countOneBits(1i), ~reverseBits(u_input.a.x), 0i), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_0.x, var_0.x, u_input.d, var_0.x)), -abs(global1.c.c))), Struct_1(abs(~(~global1.c.b)), abs(~vec4<u32>(4294967295u, u_input.e, global1.d.x, 7756u)), vec4<i32>(u_input.a.x >> (u_input.e % 32u), _wgslsmith_mod_i32(u_input.d, ~(-23764i)), u_input.c, -9645i)), select(~global1.d, _wgslsmith_add_vec3_u32(global1.c.a.xyy, max(vec3<u32>(global1.d.x, 72878u, u_input.e), global1.d) >> (~global1.d % vec3<u32>(32u))), !(!vec3<bool>(global1.e, global1.e, global1.e))), true);
    var var_2 = Struct_4(Struct_2(-_wgslsmith_mult_vec4_i32(global1.c.c, global1.c.c) | (select(global1.c.c, global1.a, vec4<bool>(false, true, true, global1.e)) << (abs(global1.c.a) % vec4<u32>(32u))), select(10070i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, -1i, 21523i), var_0), global1.c.c.x), true), Struct_1(global1.c.a, ~global1.c.b, vec4<i32>(abs(var_0.x), var_0.x, -2147483647i, 0i)), global1.c.a.wyy >> (countOneBits(firstLeadingBit(global1.c.b.xzx)) % vec3<u32>(32u)), !(all(vec4<bool>(global1.e, global1.e, false, global1.e)) & !global1.e)), 4294967295u, Struct_3(-var_0.x, ~select(max(var_0.zx, vec2<i32>(var_0.x, u_input.a.x)), vec2<i32>(u_input.a.x, -11863i), !global1.e), ~(~(13157u << (u_input.e % 32u))), select(select(vec3<u32>(4294967295u, u_input.e, 19820u), vec3<u32>(20945u, u_input.e, 45327u), false), global1.d, -707f == arg_0.x) ^ (_wgslsmith_mult_vec3_u32(global1.d, global1.c.b.zwx) & ~vec3<u32>(31282u, u_input.e, 1u))), Struct_3(reverseBits(var_0.x), u_input.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(global1.c.a.x & global1.c.b.x, global1.c.a.x << (4598u % 32u)), ~select(78404u, 4294967295u, false)), ~reverseBits(~global1.d)));
    return var_2.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global1 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.xy + vec2<f32>(-998f, -898f)), vec2<f32>(1f, 1f))), vec2<f32>(272f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x - 178f)))), !func_2())));
    global0 = 1i;
    global0 = -arg_2.c.x ^ (~(-49528i) << (global1.d.x % 32u));
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(max(arg_1.c.x, arg_2.c.x), arg_2.c.x), _wgslsmith_mod_i32(select(global1.a.x, -16341i, arg_0.x), 1i)), reverseBits(min(_wgslsmith_add_i32(1238i, 0i), u_input.c >> (global1.d.x % 32u)))), abs(arg_2.c.zz) | _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(global1.c.c.x, global1.a.x)), ~vec2<i32>(-30385i, u_input.d)), vec2<i32>(-21404i, 17000i));
    var var_1 = -270f;
    return func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1351f, 2048f) - arg_3.zy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, arg_3.x)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(arg_3.x + 247f)))).c;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<bool> {
    global1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-103f, 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1361f, 279f), vec2<f32>(-1839f, -697f), vec2<bool>(global1.e, global1.e))), _wgslsmith_div_vec2_f32(vec2<f32>(-140f, 327f), vec2<f32>(668f, 1318f)))))));
    let var_0 = select(all(!(!select(vec4<bool>(global1.e, false, false, true), vec4<bool>(false, false, false, arg_1.x), vec4<bool>(false, global1.e, false, arg_1.x)))), !arg_1.x, global1.e);
    global0 = -4862i;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f * -745f)) - -1254f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    let var_2 = vec2<i32>(global1.c.c.x, -_wgslsmith_mult_i32(arg_0.c.x, -u_input.c));
    return select(!vec3<bool>((1u < arg_0.b.x) && true, false, _wgslsmith_f_op_f32(var_1 * var_1) == 269f), arg_1, _wgslsmith_dot_vec3_u32(~abs(arg_0.a.zww), arg_0.a.ywy) == ~32843u);
}

fn func_6(arg_0: vec3<bool>) -> Struct_2 {
    global1 = Struct_2(global1.c.c << (vec4<u32>(~_wgslsmith_dot_vec2_u32(global1.d.yz, global1.c.a.xx), 1u, global1.c.b.x, 1u) % vec4<u32>(32u)), _wgslsmith_sub_i32(firstTrailingBit(1i), -func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-272f, -974f))).b), global1.c, _wgslsmith_add_vec3_u32(vec3<u32>(6473u ^ u_input.e, u_input.e, u_input.e), abs(vec3<u32>(1u, 26948u, u_input.e))) & global1.c.a.xzw, arg_0.x);
    global0 = u_input.c;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-712f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2421f, 2148f), -126f, false)) * 1f)));
    global0 = (-392i & _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, -1i), abs(_wgslsmith_dot_vec2_i32(global1.a.wy, vec2<i32>(2147483647i, -16317i))))) | 51002i;
    global0 = global1.b;
    return Struct_2(_wgslsmith_sub_vec4_i32(func_1(!arg_0.zy, Struct_1(vec4<u32>(4294967295u, u_input.e, global1.c.b.x, 0u), vec4<u32>(u_input.e, global1.d.x, global1.c.a.x, 4294967295u), global1.c.c), Struct_1(global1.c.a, vec4<u32>(global1.c.b.x, 0u, 39318u, global1.c.a.x), vec4<i32>(global1.b, -2147483647i, u_input.d, -1768i)), vec3<f32>(415f, var_0, var_0)).c, vec4<i32>(-1i) * -vec4<i32>(31819i, global1.c.c.x, global1.a.x, u_input.c)) ^ _wgslsmith_add_vec4_i32(global1.c.c, global1.a), global1.b | _wgslsmith_mod_i32(reverseBits(max(global1.a.x, u_input.c)), global1.a.x), global1.c, vec3<u32>(global1.d.x, ~45113u, 1u), select(func_4(vec2<f32>(329f, _wgslsmith_f_op_f32(f32(-1f) * -112f))).e, !global1.e, all(vec2<bool>(!arg_0.x, -1234f > var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global1.e, false, false || (-1005f >= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1656f, 1980f)))), false & !all(vec3<bool>(false, false, false)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(select(-1092f, _wgslsmith_f_op_f32(trunc(-1707f)), global1.e)))), -278f);
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(global1.c.b, firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 99638u, 11396u, 113189u), ~global1.c.b)), ~global1.c.a), global1.c.a, ~(~min(global1.c.c, ~global1.a)));
    global1 = func_6(func_5(func_1(var_0.zw, global1.c, Struct_1(var_2.b, vec4<u32>(u_input.e, global1.c.a.x, var_2.b.x, 1u) ^ vec4<u32>(global1.c.a.x, var_2.b.x, 8842u, global1.d.x), vec4<i32>(var_2.c.x, u_input.b, global1.a.x, var_2.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1041f, 392f, -995f))), select(!vec3<bool>(true, var_0.x, true), !(!var_0.wyw), false)));
    let var_3 = false;
    global1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-242f * -704f), _wgslsmith_f_op_f32(-1129f - -283f))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(max(-637f, var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

