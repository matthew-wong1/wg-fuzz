struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<bool>;

var<private> global2: vec2<f32> = vec2<f32>(461f, -788f);

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

var<private> global4: f32 = -1172f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    global1 = !vec4<bool>(!global3.x, any(vec3<bool>(global3.x, !global3.x, true)), !all(vec4<bool>(global1.x, global3.x, true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -959f), _wgslsmith_div_f32(arg_0, arg_0))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1679f))));
    var var_0 = select(reverseBits(vec4<i32>(-(u_input.a.x | u_input.a.x), -_wgslsmith_clamp_i32(2147483647i, 877i, 18486i), -reverseBits(-13660i), reverseBits(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i)))), vec4<i32>(~(-8169i), 2147483647i | u_input.a.x, -1i, u_input.a.x), !vec4<bool>(any(!global3.yy), !global1.x | all(vec3<bool>(false, global3.x, false)), false, !global1.x | global1.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 798f, -2029f, arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, global2.x, 576f, 244f)))))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_div_f32(-1490f, arg_0), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(f32(-1f) * -1839f)))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1786f, var_1.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.zz), var_1.zw))));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global1 = select(select(select(!vec4<bool>(global1.x, false, global3.x, true), vec4<bool>(!global3.x, true, all(global1.zx), global1.x), global1.x), select(!(!vec4<bool>(global1.x, true, true, true)), !(!vec4<bool>(global3.x, global1.x, false, true)), false & global1.x), false), vec4<bool>(!any(select(global1.ww, global1.wz, global3.xy)), true, !global1.x, false), !(!(!(!vec4<bool>(true, true, global1.x, global1.x)))));
    global1 = vec4<bool>(!(false || !(!global3.x)), false, global1.x, global2.x < -1769f);
    global0 = global1.x;
    global2 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(exp2(global2.x))));
    global4 = _wgslsmith_f_op_f32(max(911f, -727f));
    return global3.x & global3.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = select(vec3<bool>(!func_2(vec4<f32>(arg_2.a.x, -1025f, 851f, global2.x)), global1.x, true || global3.x), arg_0, arg_0);
    let var_1 = global3.x;
    let var_2 = global3.x;
    let var_3 = Struct_2(arg_2);
    return arg_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(~u_input.c > 1u, false, global3.x, all(!(!vec3<bool>(global3.x, global1.x, false))));
    let var_1 = !vec3<bool>(true, true, false | !(!var_0.x));
    var var_2 = _wgslsmith_div_u32(u_input.c & _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, func_1(var_0.wwz, global2.x, Struct_1(vec4<f32>(global2.x, global2.x, 500f, global2.x), 38536i, 20558u, -249f, u_input.a), Struct_1(vec4<f32>(global2.x, -1363f, global2.x, global2.x), 1i, u_input.c, -690f, u_input.a))), u_input.c), u_input.b);
    global3 = vec3<bool>(!(global3.x || true), all(var_0), any(var_0) & !select(true, !var_0.x, false));
    var var_3 = ~select(~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(1289u, u_input.c, 0u)), vec3<u32>(u_input.c, u_input.b, 1u) << (vec3<u32>(u_input.b, 22117u, 95079u) % vec3<u32>(32u))), vec3<u32>(u_input.c, _wgslsmith_div_u32(0u, 1u), ~u_input.b) << (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(16096u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.c, u_input.b), vec3<bool>(global1.x, true, true)), ~vec3<u32>(36424u, u_input.c, u_input.b), vec3<u32>(4294967295u, u_input.c, u_input.b)) % vec3<u32>(32u)), !((global2.x == global2.x) && true));
    var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(max(~reverseBits(vec3<u32>(var_3.x, 1u, var_3.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(40278u, var_3.x, 15382u) >> (vec3<u32>(u_input.b, var_3.x, 1u) % vec3<u32>(32u)), ~vec3<u32>(14527u, u_input.b, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(var_3.x, var_3.x, 82317u), vec3<u32>(0u, 42216u, 51274u)))), vec3<u32>(reverseBits(~38925u), 1u, u_input.b)), vec3<u32>(~19435u, 1u, ~reverseBits(101549u)));
    var var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.x, -584f), global2.x, !func_2(vec4<f32>(global2.x, 1215f, global2.x, global2.x)))), _wgslsmith_f_op_f32(ceil(-980f)), 789f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_mult_i32(-_wgslsmith_div_i32(max(u_input.a.x, u_input.a.x), u_input.a.x), -20823i), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 1u, 0u, u_input.b), vec4<u32>(85834u, 29841u, 88120u, var_3.x), global1.x) << (min(vec4<u32>(53523u, 59535u, 0u, var_3.x), vec4<u32>(u_input.b, 0u, u_input.b, u_input.c)) % vec4<u32>(32u)), vec4<u32>(5585u, func_1(vec3<bool>(global1.x, true, var_0.x), 1337f, Struct_1(vec4<f32>(1447f, global2.x, -740f, 1008f), 0i, var_3.x, global2.x, u_input.a), Struct_1(vec4<f32>(global2.x, global2.x, 2246f, -1492f), u_input.a.x, u_input.b, 365f, vec4<i32>(u_input.a.x, u_input.a.x, 44337i, 9024i))), 1u, 63625u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), vec4<i32>(0i, -79955i, ~u_input.a.x, -11088i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3.yx), ~(_wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_div_i32(-1i, var_4.b), 2147483647i) | max(0i, _wgslsmith_add_i32(1i, 1i))), 1613f);
}

