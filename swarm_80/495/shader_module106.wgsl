struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(0i, 26438i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 13101i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(0i, 0i, 43884i), vec3<i32>(-20801i, 39232i, 1i), vec3<i32>(-22421i, 34190i, 0i), vec3<i32>(71206i, 1i, -58903i), vec3<i32>(i32(-2147483648), 0i, 12906i), vec3<i32>(-14622i, -1i, 31617i), vec3<i32>(1i, -17616i, -6338i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(0i, 18048i, -18643i), vec3<i32>(1i, -8348i, 2147483647i), vec3<i32>(-64346i, 0i, 1i), vec3<i32>(-19494i, 42363i, 23484i), vec3<i32>(14559i, 32165i, -1i), vec3<i32>(i32(-2147483648), -5864i, 1i), vec3<i32>(i32(-2147483648), 26953i, -1i), vec3<i32>(-11683i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1577i, 1i, -49240i), vec3<i32>(9037i, i32(-2147483648), -6617i), vec3<i32>(49097i, 29168i, i32(-2147483648)), vec3<i32>(0i, 61320i, 14372i), vec3<i32>(2147483647i, -25257i, 2147483647i), vec3<i32>(1i, -10689i, 5653i), vec3<i32>(0i, 1i, 1i), vec3<i32>(0i, -42913i, -22963i), vec3<i32>(-28727i, -1i, 2147483647i), vec3<i32>(-20166i, i32(-2147483648), -2152i));

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec3<u32> {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.b)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b.x, global1.b.x, -1739f, global1.b.x)))), _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(global1.b.x, -1134f, global1.b.x, global1.b.x)), arg_2.x)))), global1.c, -global1.d, all(arg_2.zx));
    var var_0 = u_input.c.x;
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    let var_1 = select(vec3<bool>(firstTrailingBit(arg_1.x) <= arg_1.x, global1.e, global1.e), arg_2, select(_wgslsmith_dot_vec4_i32(-global1.a, _wgslsmith_add_vec4_i32(global1.d, vec4<i32>(global1.a.x, 15536i, global1.c, global1.a.x))), 2147483647i, _wgslsmith_f_op_f32(sign(-853f)) >= global1.b.x) != 8731i);
    return u_input.c.wxx;
}

fn func_2(arg_0: vec3<u32>) -> vec3<u32> {
    global0 = array<vec3<i32>, 29>();
    let var_0 = Struct_1(global1.b.x);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1445f * -1574f)))), 1630f));
    var var_2 = global1.a;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-global1.b.x));
    return ~(~_wgslsmith_clamp_vec3_u32(arg_0, arg_0, func_3(u_input.c, u_input.c, vec3<bool>(false, global1.e, global1.e))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(89174u, arg_0.x), _wgslsmith_sub_vec2_u32(u_input.c.xz, vec2<u32>(arg_0.x, 10866u))), 4294967295u | ~arg_0.x, _wgslsmith_div_u32(~4294967295u, _wgslsmith_add_u32(0u, u_input.c.x))) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global1 = Struct_2(-firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(global1.d, arg_2.d), _wgslsmith_add_vec4_i32(global1.a, vec4<i32>(-40121i, 27370i, -3199i, 43957i)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - global1.b.x) + _wgslsmith_f_op_f32(ceil(-1195f))) - _wgslsmith_f_op_f32(f32(-1f) * -1071f)), arg_2.b.x, _wgslsmith_f_op_f32(step(arg_2.b.x, global1.b.x)), arg_2.b.x), arg_2.d.x, ~(-_wgslsmith_mod_vec4_i32(global1.a, arg_2.d)), arg_2.e && false);
    let var_0 = ~u_input.d;
    global1 = arg_2;
    var var_1 = true;
    var_1 = !arg_2.e;
    return Struct_1(global1.b.x);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(4294967295u, func_2(vec3<u32>(u_input.c.x, u_input.c.x, min(56940u, u_input.c.x) << (~u_input.c.x % 32u))), Struct_2(vec4<i32>(1i, global1.d.x, global1.a.x, _wgslsmith_dot_vec4_i32(global1.d, select(global1.a, vec4<i32>(45157i, -1i, -34943i, u_input.b), global1.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(-global1.b.x), 876f, _wgslsmith_f_op_f32(342f + 667f))), _wgslsmith_sub_i32(24821i >> (_wgslsmith_div_u32(4294967295u, u_input.c.x) % 32u), ~max(-27274i, u_input.b)), ~global1.a, -global1.a.x != u_input.b), min(~u_input.c.x >> (u_input.c.x % 32u), u_input.c.x) | 4652u);
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))), -2095f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -44346i, _wgslsmith_sub_i32(1i, -94886i), ~(-_wgslsmith_mult_i32(-1i, 8296i)), arg_2.c), vec4<i32>(-global1.a.x, arg_2.c, abs(58715i), u_input.a), _wgslsmith_mod_vec4_i32(arg_2.d, _wgslsmith_mod_vec4_i32(~vec4<i32>(-59058i, -2147483647i, u_input.d, -32020i), ~vec4<i32>(global1.d.x, arg_2.c, global1.d.x, global1.c))) & vec4<i32>(max(global1.d.x, global1.a.x << (57161u % 32u)), global1.a.x, -10866i, _wgslsmith_mod_i32(u_input.a << (u_input.c.x % 32u), -2147483647i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_1.x, arg_0.a)))));
    global1 = arg_2;
    let var_2 = arg_1.xy;
    let var_3 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~global1.d, vec4<i32>(arg_2.c, 26052i, global1.a.x, -30103i) << (u_input.c % vec4<u32>(32u))), reverseBits(global1.a << (vec4<u32>(1u, u_input.c.x, 4294967295u, 60160u) % vec4<u32>(32u)))) | _wgslsmith_sub_vec4_i32(arg_2.a & vec4<i32>(-1i, -2147483647i, 2899i, var_0.x), arg_2.a), vec4<f32>(-1000f, global1.b.x, arg_2.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.a)), arg_0.a))))), arg_2.c, abs(select(firstTrailingBit(select(vec4<i32>(-1i, global1.c, var_0.x, u_input.b), vec4<i32>(global1.a.x, -25298i, 2147483647i, arg_2.c), vec4<bool>(global1.e, true, arg_2.e, false))), ~arg_2.a & vec4<i32>(var_0.x, 1i, global1.a.x, 1176i), vec4<bool>(true, global1.e, false, false))), true);
    return Struct_1(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(global1.a.xz);
    let var_1 = func_5(func_1(), _wgslsmith_f_op_vec3_f32(global1.b.xwx + global1.b.yzw), Struct_2((vec4<i32>(2147483647i, -2147483647i, 14364i, -48448i) << ((vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.c.x, u_input.c.x, 42755u, 11674u)) % vec4<u32>(32u))) ^ -global1.a, _wgslsmith_f_op_vec4_f32(select(global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(324f, 427f, global1.b.x, global1.b.x))), !global1.e)), 0i, vec4<i32>(-1i) * -(global1.a & global1.d), true));
    let var_2 = var_1;
    var var_3 = -abs(vec2<i32>(-2147483647i, _wgslsmith_add_i32(16934i, 32129i | u_input.d)));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global1.b.x + func_1().a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * var_1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.x + -593f), func_4(4294967295u, vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), Struct_2(vec4<i32>(u_input.a, u_input.d, u_input.b, -1i), vec4<f32>(1425f, global1.b.x, global1.b.x, 1079f), var_3.x, global1.d, global1.e), 1u).a))), var_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135f, var_2.a, -1268f, 1195f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.b, global1.b, vec4<bool>(true, global1.e, global1.e, global1.e))) - _wgslsmith_f_op_vec4_f32(step(global1.b, vec4<f32>(var_2.a, global1.b.x, var_1.a, 1588f)))) + vec4<f32>(-1949f, func_5(var_1, global1.b.xzy, Struct_2(vec4<i32>(-66910i, u_input.d, 0i, var_0.x), vec4<f32>(global1.b.x, -1707f, -642f, -1602f), 19694i, vec4<i32>(global1.a.x, var_0.x, 1i, var_0.x), false)).a, var_2.a, _wgslsmith_f_op_f32(global1.b.x * -1373f))))));
    let var_5 = ~u_input.c;
    global1 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-31014i, _wgslsmith_dot_vec4_i32(~global1.a, vec4<i32>(1i, 0i, var_0.x, global1.a.x)), _wgslsmith_dot_vec2_i32(~var_0, var_0), var_3.x), vec4<i32>(firstLeadingBit(-17140i), var_0.x, u_input.b, u_input.b)), vec4<f32>(-1663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(178f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.x, var_4.x))), _wgslsmith_f_op_f32(sign(var_1.a))), 2147483647i, vec4<i32>(global1.a.x, 13584i, _wgslsmith_dot_vec2_i32(-(vec2<i32>(61257i, -29710i) & global1.d.xx), vec2<i32>(-8178i, 1i)), -(~(-2147483647i))), ((5939i ^ var_0.x) > _wgslsmith_sub_i32(-var_3.x, 0i)) | select(select(!global1.e, true, any(vec4<bool>(true, true, global1.e, false))), any(!vec4<bool>(true, false, false, global1.e)), true));
    global0 = array<vec3<i32>, 29>();
    let var_6 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(var_6)), var_5.x, 2147483647i, var_4.x, ~(countOneBits(_wgslsmith_div_i32(u_input.a, var_6)) << (abs(_wgslsmith_mod_u32(67262u, var_5.x)) % 32u)));
}

