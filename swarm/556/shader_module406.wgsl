struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-491f, -1462f, 229f), vec3<f32>(1000f, -478f, 323f), vec3<f32>(-1967f, -219f, 420f), vec3<f32>(963f, 982f, -1000f), vec3<f32>(-2089f, -236f, -486f), vec3<f32>(-378f, -1576f, -435f), vec3<f32>(-415f, 895f, 607f), vec3<f32>(-767f, 1144f, 685f), vec3<f32>(1000f, -247f, -188f), vec3<f32>(-203f, 344f, -673f), vec3<f32>(1222f, -399f, 539f), vec3<f32>(-2554f, -235f, 617f), vec3<f32>(290f, 218f, 1053f), vec3<f32>(725f, 1452f, 781f));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(-8619i, 58526i, -1i, 1i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(-1i, 1i, -13124i, 1i), vec4<i32>(57581i, 3630i, 1i, 0i), vec4<i32>(2147483647i, -4070i, -29254i, 12099i), vec4<i32>(14413i, 67024i, -1i, 36182i), vec4<i32>(-1i, 1i, 399i, 0i), vec4<i32>(-14799i, 20422i, -4964i, -18003i), vec4<i32>(1i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-43282i, 27069i, 47712i, -14920i), vec4<i32>(0i, 22691i, -19646i, i32(-2147483648)), vec4<i32>(-1i, -22903i, -1i, 83i), vec4<i32>(-1i, 0i, 2147483647i, 1i), vec4<i32>(1i, -28059i, -1i, -12091i), vec4<i32>(-6357i, 0i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 28227i, 2147483647i, 7370i), vec4<i32>(32874i, 942i, -1i, 44654i), vec4<i32>(-12853i, 1i, 21113i, 2147483647i), vec4<i32>(-13734i, 18949i, i32(-2147483648), -30466i));

var<private> global3: u32 = 66681u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(-605f);
    var var_1 = var_0;
    var_1 = Struct_1(-680f);
    var_1 = Struct_1(1000f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(-var_0.a), var_1.a >= var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-530f + 126f)))));
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = !any(global1.ywy);
    let var_1 = _wgslsmith_mult_i32(1i, ~_wgslsmith_div_i32(max(-9582i, i32(-1i) * -2147483647i), -_wgslsmith_clamp_i32(1i, 1i, 14369i)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_3.a))));
    global1 = vec4<bool>(true, true, true, true);
    var var_3 = Struct_1(arg_3.a);
    return !vec4<bool>(true && all(select(vec4<bool>(true, true, global1.x, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, global1.x, global1.x))), true, false, global1.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = select(!vec4<bool>(!(!global1.x), true, true, true), select(!func_4(Struct_1(arg_0), u_input.c, func_3(), Struct_1(216f)), !func_4(Struct_1(arg_0), 29158u, u_input.d.yy, Struct_1(arg_0)), select(func_4(Struct_1(-137f), ~52157u, vec2<u32>(50864u, 19976u), Struct_1(465f)), vec4<bool>(global1.x, true, u_input.d.x <= u_input.e, global1.x == global1.x), _wgslsmith_f_op_f32(ceil(arg_0)) > _wgslsmith_f_op_f32(arg_0 - -1932f))), vec4<bool>(any(vec3<bool>(true, !global1.x, true || global1.x)), !all(vec4<bool>(global1.x, false, true, global1.x)), global1.x, global1.x));
    global1 = !(!(!vec4<bool>(!global1.x, true, true, global1.x | global1.x)));
    global3 = 45054u;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-280f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-196f, arg_0), vec2<f32>(-1497f, arg_0), global1.xx))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, 2172f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1082f, arg_0), vec2<f32>(arg_0, arg_0)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0), vec2<f32>(arg_0, _wgslsmith_div_f32(-622f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1107f))));
    var var_1 = Struct_1(1430f);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_0) - var_0.x));
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-120f))))), -315f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -1131f))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1193f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1943f, var_1.a))), _wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(694f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), 120f)));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -387f))))), var_1.a));
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -1852f);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_add_u32(~(~(~u_input.b)), u_input.e) << (1168u % 32u);
    let var_2 = vec2<i32>(firstTrailingBit(-min(~(-31810i), 1i)), max(~(-(~(-15236i))), _wgslsmith_mod_i32(2147483647i, -1i)));
    let var_3 = arg_1;
    let var_4 = !all(select(vec3<bool>(!global1.x, false, any(global1.zwz)), select(vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global1.x, false), all(global1.yxz)), vec3<bool>(global1.x & global1.x, func_4(arg_2, 12901u, u_input.a, Struct_1(1000f)).x, all(global1.xx))));
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(-233f)));
    global3 = u_input.c;
    let var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1080f, -757f) + var_0.a) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, -735f), var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-2147483647i, 1i)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f)))), var_0, var_0);
    global2 = array<vec4<i32>, 19>();
    let var_2 = global2[_wgslsmith_index_u32(21546u, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(39877u, u_input.d.x, u_input.a.x), min(vec3<u32>(u_input.e, 38362u, u_input.a.x), u_input.d)), u_input.d) << (firstTrailingBit(vec3<u32>(7557u, u_input.b, 1u) ^ ~vec3<u32>(u_input.d.x, 1u, 0u)) % vec3<u32>(32u)), var_0.a, -2142f, u_input.b | _wgslsmith_div_u32(4294967295u, ~u_input.e), ((vec3<i32>(-2147483647i, 64504i, var_2.x) ^ -var_2.wzx) ^ select(vec3<i32>(var_2.x, var_2.x, -1i), firstLeadingBit(var_2.yxw), vec3<bool>(global1.x, true, global1.x))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 31343u, 1u), countOneBits(_wgslsmith_add_vec3_u32(u_input.d, u_input.d))) % vec3<u32>(32u)));
}

