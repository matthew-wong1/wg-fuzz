struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32> = vec2<f32>(486f, -625f);

var<private> global2: vec3<i32> = vec3<i32>(0i, -17129i, -1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_2.a)));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * -954f) * -467f))));
    var var_1 = select(vec2<bool>(true, global0.c.a), global0.c.b.zz, !arg_1);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(floor(-597f)), -904f, arg_0)))), _wgslsmith_add_i32(arg_2.b, ~(-_wgslsmith_mult_i32(global0.a.b, 0i))), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) >> ((u_input.a.x << (4294967295u % 32u)) % 32u), 0u, global0.a.c.x, _wgslsmith_mult_u32(1u, ~0u))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.a.x, 1314f), vec2<f32>(arg_2.a.x, 1345f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1215f, -1775f))));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = max(vec3<i32>(select(global0.a.b | (i32(-1i) * -2147483647i), global2.x, true), global0.a.b, global2.x), vec3<i32>(global2.x & _wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.a.b, global2.x), vec2<i32>(global0.a.b, global0.a.b), vec2<bool>(true, false)), vec2<i32>(global0.a.b, 0i)), -global2.x, global0.a.b));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(366f)), 675f, _wgslsmith_f_op_f32(-global1.x), -1000f)), -1i, vec4<u32>(~firstLeadingBit(3528u), ~global0.a.c.x, countOneBits(u_input.a.x), _wgslsmith_div_u32(4294967295u, u_input.a.x) << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(160f * -916f), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -407f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(692f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1465f * 329f) + _wgslsmith_div_f32(409f, 619f))), false)), Struct_2(!arg_0, select(select(global0.c.b, global0.c.b, !vec4<bool>(false, global0.c.b.x, arg_0, arg_2.b.x)), !select(vec4<bool>(false, arg_2.a, true, false), global0.c.b, arg_2.b), !global0.c.b)));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(-644f, -627f, 573f, -689f)))), firstTrailingBit(var_0.x), ~((vec4<u32>(u_input.a.x, global0.a.c.x, 0u, 12217u) | vec4<u32>(u_input.a.x, 1u, global0.a.c.x, u_input.a.x)) ^ ~u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_1.x)))), Struct_2(all(vec2<bool>(-1i != global2.x, true)), select(arg_2.b, vec4<bool>(global2.x > global0.a.b, true, false | arg_2.b.x, any(vec3<bool>(global0.c.a, arg_2.a, false))), arg_2.b.x)));
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(round(arg_1.x)), Struct_2(arg_0, global0.c.b));
    let var_1 = global0.a.c.zzy;
    return _wgslsmith_add_i32(-((_wgslsmith_mult_i32(var_0.x, var_0.x) << (global0.a.c.x % 32u)) >> (~u_input.a.x % 32u)), _wgslsmith_mult_i32(firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(-4690i, 42513i), global2.xy)), 0i));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_1 {
    global2 = ~vec3<i32>(-10430i, ~global0.a.b, ~(~_wgslsmith_mod_i32(18040i, global0.a.b)));
    let var_0 = ~vec4<u32>(~(4294967295u ^ global0.a.c.x), _wgslsmith_div_u32(firstTrailingBit(arg_0.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, arg_0.x), vec3<u32>(124088u, 4294967295u, global0.a.c.x))), 0u, ~u_input.a.x);
    global0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f) * _wgslsmith_f_op_f32(-global1.x)), -1953f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.x, 743f)))), _wgslsmith_div_f32(-315f, _wgslsmith_f_op_f32(f32(-1f) * -1139f))), -(~(~0i)), vec4<u32>(arg_0.x >> (0u % 32u), ~0u, var_0.x, _wgslsmith_mod_u32(91822u, u_input.a.x)) >> (~countOneBits(var_0) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(907f, 1750f)) + _wgslsmith_f_op_f32(210f - 2320f)), Struct_2(global0.c.b.x, !vec4<bool>(global0.c.a, 1i > arg_1.x, true, global0.c.a)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.a.a, vec4<f32>(1618f, global1.x, 196f, -383f))))), func_4(global0.c.b.x, _wgslsmith_f_op_vec4_f32(select(global0.a.a, global0.a.a, func_3(global0.a.a.x, vec2<bool>(global0.c.a, false), Struct_1(vec4<f32>(536f, global1.x, -975f, global0.a.a.x), arg_1.x, vec4<u32>(u_input.a.x, global0.a.c.x, arg_0.x, u_input.a.x)), global0.c.a))), global0.c), vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(58111u, 5992u)), 71760u << (u_input.a.x % 32u), 21796u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global0.a.a.x) * _wgslsmith_f_op_f32(122f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), global0.c);
    let var_2 = false;
    return global0.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(vec4<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f * -813f)), -859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f + -226f))), ~arg_2.a.b, arg_2.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), Struct_2(!(~1i != arg_0.a.b), arg_0.c.b));
    global0 = Struct_3(Struct_1(global0.a.a, ~arg_1.b, var_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), Struct_2(func_3(_wgslsmith_f_op_f32(f32(-1f) * -581f), arg_2.c.b.zx, func_2(vec4<u32>(arg_0.a.c.x, 109532u, u_input.a.x, 35972u), global2.yz), !(!global0.c.a)), vec4<bool>(var_0.c.a, func_3(-336f, vec2<bool>(true, global0.c.b.x), arg_1, true) && false, _wgslsmith_f_op_f32(var_0.a.a.x + -1104f) == _wgslsmith_f_op_f32(trunc(903f)), false)));
    var var_1 = arg_0.c;
    var var_2 = select(_wgslsmith_sub_i32(abs(1i), max(countOneBits(arg_0.a.b), _wgslsmith_mod_i32(-9013i, arg_1.b)) ^ arg_1.b), global2.x, any(!var_1.b));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, arg_2.a.a.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2(u_input.a, global2.zx).a.zy))));
    return Struct_2(var_1.b.x, vec4<bool>(!var_1.a, var_0.c.b.x, (select(arg_1.c.x, 13942u, true) ^ firstLeadingBit(1u)) <= ~countOneBits(arg_1.c.x), false));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> bool {
    let var_0 = func_5(arg_0, func_2(global0.a.c, ~(vec2<i32>(-2147483647i, -1i) & max(vec2<i32>(arg_0.a.b, 20581i), global2.zz))), arg_0);
    global1 = global0.a.a.zx;
    let var_1 = vec2<bool>(all(vec2<bool>(func_3(_wgslsmith_f_op_f32(-102f + arg_0.a.a.x), !global0.c.b.yx, global0.a, true), (21637u << (u_input.a.x % 32u)) != abs(68687u))), var_0.b.x);
    let var_2 = false && (abs((global2.x << (arg_0.a.c.x % 32u)) ^ -26413i) < arg_0.a.b);
    var var_3 = var_2;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0.a.a.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1786f, global0.b)) + global0.a.a.yz)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(abs(global1.x)), true)) + global0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), global1.x, !global0.c.b.x)))));
    var var_0 = vec3<bool>(!(!func_1(Struct_3(global0.a, 1479f, global0.c), global1.x)) || (any(!global0.c.b.zx) == (any(vec2<bool>(false, global0.c.a)) == (global1.x >= global0.a.a.x))), all(select(global0.c.b, !select(global0.c.b, global0.c.b, false), select(vec4<bool>(true, false, global0.c.b.x, false), select(vec4<bool>(false, global0.c.a, global0.c.b.x, false), vec4<bool>(true, global0.c.b.x, true, true), global0.c.b.x), select(global0.c.b, global0.c.b, global0.c.a)))), false);
    var_0 = select(!global0.c.b.yyx, global0.c.b.zyx, !func_5(Struct_3(Struct_1(vec4<f32>(-1000f, 1049f, global1.x, 249f), global0.a.b, u_input.a), global1.x, global0.c), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1253f, -1288f, 2354f, 208f)), global2.x, u_input.a), Struct_3(global0.a, global0.a.a.x, global0.c)).b.wxx);
    var var_1 = -2147483647i;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(global0.b, -1441f), -1453f, _wgslsmith_f_op_f32(1279f * global0.a.a.x), _wgslsmith_f_op_f32(select(-150f, global0.b, false))))), min(-1i, -_wgslsmith_mult_i32(global2.x, -2147483647i)), min(select(abs(u_input.a), global0.a.c, global0.c.b), abs(u_input.a))), _wgslsmith_f_op_f32(-global1.x), Struct_2(var_0.x, global0.c.b));
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 1145f) + vec2<f32>(-848f, global0.a.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), func_5(var_2, Struct_1(vec4<f32>(694f, 483f, var_2.a.a.x, -812f), -2147483647i, vec4<u32>(var_2.a.c.x, 0u, 1u, 95194u)), var_2).b.wx)), global0.a.a.zw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_2.a.c.x, _wgslsmith_mod_u32(51684u, _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(global0.a.c.x, 37167u, var_2.a.c.x, 0u), vec4<u32>(4294967295u, global0.a.c.x, global0.a.c.x, 35855u))))), 23363i, var_2.a.b);
}

