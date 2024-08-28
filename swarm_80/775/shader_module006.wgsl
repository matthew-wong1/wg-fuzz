struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(-1000f, 0u, vec4<bool>(false, true, false, true), -1107f, vec4<u32>(24232u, 94825u, 1u, 260u)), vec3<i32>(-49723i, -7423i, -21149i), vec2<bool>(false, false));

var<private> global2: u32 = 97037u;

var<private> global3: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(global1.a.e, global1.a.e), vec4<u32>(~abs(35551u), global0.a.b, ~select(global0.a.e.x, 36015u, global1.c.x), ~33351u >> (u_input.a % 32u))), ~(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 2128u), 45404u, 0u, ~global0.a.e.x) >> (vec4<u32>(~arg_0, _wgslsmith_dot_vec3_u32(global0.a.e.xwz, global0.a.e.ywx), select(u_input.a, global0.a.b, true), global0.a.b) % vec4<u32>(32u))));
    let var_1 = 43880i;
    global3 = arg_1.a;
    let var_2 = Struct_2(global0.a, global0.b, global1.c);
    global3 = -986f;
    return 1u;
}

fn func_3() -> u32 {
    global1 = Struct_2(Struct_1(-1985f, min(global0.a.b, func_1(35646u, Struct_3(global1.a.a)) << (~32674u % 32u)), !global1.a.c, -494f, firstLeadingBit(global1.a.e)), vec3<i32>(-1901i, ~_wgslsmith_sub_i32(firstTrailingBit(global0.b.x), global0.b.x), abs(~countOneBits(u_input.b))), global0.c);
    global2 = global0.a.e.x;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.d)) + global1.a.d), ~(~u_input.c.x), vec4<bool>(false, all(global1.a.c), false, !all(global1.a.c.wyw)), _wgslsmith_f_op_f32(-global1.a.d), select(vec4<u32>(global0.a.b, _wgslsmith_mult_u32(global1.a.e.x, global0.a.b), global1.a.e.x, ~51534u), max(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 8352u, global1.a.b), vec4<u32>(u_input.c.x, global0.a.b, 1u, 72153u)), ~vec4<u32>(49571u, global1.a.b, 1u, 61623u)), vec4<bool>(true, !global0.c.x, true, true))), abs(global0.b), !select(global1.a.c.wz, vec2<bool>(select(true, false, false), all(global1.c)), vec2<bool>(select(false, false, false), global0.a.c.x)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(select(458f, 590f, all(vec4<bool>(all(global1.a.c), var_0.a.c.x, false, true)))));
    var var_2 = Struct_3(var_1.a);
    return abs(~_wgslsmith_div_u32(1u, global0.a.e.x));
}

fn func_2() -> Struct_3 {
    global3 = 797f;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d)), -326f, _wgslsmith_f_op_f32(f32(-1f) * -942f));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2864f))), func_3(), vec4<bool>(global0.c.x, any(vec2<bool>(global1.a.c.x, global1.a.c.x)), false, any(select(global1.c, global0.a.c.wx, global0.c))), global0.a.d, vec4<u32>(57037u, global1.a.b, 4294967295u, firstLeadingBit(global0.a.b))), -global1.b, global0.a.c.zw);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.d)) + global1.a.a)), global1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d) - 2748f), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3137f + 1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a, -1659f, 1000f, global1.a.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, -188f, 354f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1243f, 232f, global1.a.d, global1.a.a) - vec4<f32>(-900f, 526f, -926f, global0.a.a)))), vec4<bool>(global0.c.x, true, all(global1.a.c), true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(-1954f)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(global1.a.d + var_0.x))), all(select(global1.c, vec2<bool>(global0.c.x, global0.c.x), 62521u > u_input.c.x)))));
    return Struct_3(var_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_div_vec2_i32((vec2<i32>(1i, 1i) << (arg_0.a.e.wx % vec2<u32>(32u))) | firstTrailingBit(global1.b.xx), global1.b.yx);
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -443f, _wgslsmith_mult_i32(~select(var_1.x, global1.b.x, true), _wgslsmith_clamp_i32(arg_0.b.x ^ arg_0.b.x, 17760i, u_input.b)) <= max(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -1142i, arg_0.b.x), global0.b), global1.b), u_input.b)));
    let var_2 = select(min(vec4<u32>(_wgslsmith_add_u32(4294967295u, 0u), ~firstTrailingBit(var_0.b), 1u, 39871u), vec4<u32>(~firstLeadingBit(4294967295u), u_input.c.x, 13738u, global1.a.e.x)), abs(global1.a.e), !(!global1.a.c));
    let var_3 = vec4<bool>(var_0.c.x, true || (_wgslsmith_mult_u32(~var_2.x, _wgslsmith_sub_u32(123301u, 1u)) != func_1(abs(13543u), Struct_3(global1.a.d))), global0.a.c.x, any(!vec4<bool>(false, any(arg_2.yy), !global1.c.x, any(vec4<bool>(var_0.c.x, global1.c.x, arg_2.x, false)))));
    return Struct_1(arg_1.a, 2720u & u_input.c.x, global0.a.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * -137f))), ~max(vec4<u32>(reverseBits(0u), ~arg_0.a.b, ~24427u, ~arg_3), vec4<u32>(39578u, 1u, countOneBits(var_2.x), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(abs(~(~global1.a.e.x & 21465u)), u_input.a, global1.a.e.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1203f, _wgslsmith_f_op_f32(round(-1271f)))))), _wgslsmith_add_u32(func_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(83608u, 1u, 0u), global0.a.e.wzy), Struct_3(_wgslsmith_div_f32(global1.a.a, 743f))), global1.a.b & ~(~var_0)), !(!(!select(global0.a.c, vec4<bool>(true, global0.c.x, false, true), global1.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), _wgslsmith_div_vec4_u32(global0.a.e, global0.a.e));
    global1 = Struct_2(func_4(Struct_2(global0.a, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -15823i, global1.b.x), global0.b)), global1.a.c.yw), func_2(), vec3<bool>(!any(global1.a.c), !var_1.c.x, any(global0.a.c.wxx)), 1u), countOneBits(-(~global0.b) | firstLeadingBit(vec3<i32>(u_input.b, global1.b.x, 0i))), !(!select(var_1.c.xz, global1.a.c.ww, vec2<bool>(var_1.c.x, global1.c.x))));
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.d, -645f, global1.c.x)), global0.a.a), -2001f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(global0.a.a + func_4(Struct_2(Struct_1(2768f, 70560u, global0.a.c, 393f, vec4<u32>(0u, global1.a.e.x, u_input.c.x, 13302u)), vec3<i32>(global0.b.x, u_input.b, global1.b.x), global1.c), var_2, !vec3<bool>(var_1.c.x, var_1.c.x, false), select(11391u, 35568u, false)).d))));
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3 - var_2.a))))))));
    global3 = global0.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.b, select(global1.b, ~global0.b, var_1.c.wzw), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + 900f) + _wgslsmith_f_op_f32(ceil(812f))), -1442f, _wgslsmith_f_op_f32(global0.a.a + var_3)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.a, var_1.a, 816f, global1.a.d), vec4<f32>(-567f, var_1.a, var_2.a, global1.a.a))))), vec4<f32>(var_3, -107f, _wgslsmith_div_f32(-1000f, 1939f), _wgslsmith_f_op_f32(step(var_1.a, var_2.a)))))), ~((~vec3<u32>(4294967295u, 1u, 47179u) & global0.a.e.xwz) & _wgslsmith_add_vec3_u32(vec3<u32>(41181u, u_input.a, 49681u), ~vec3<u32>(35629u, var_0, var_0))), abs(-firstTrailingBit(select(vec4<i32>(2147483647i, global1.b.x, 37857i, 2147483647i), vec4<i32>(global0.b.x, -1i, -27793i, global1.b.x), vec4<bool>(global0.c.x, false, global0.c.x, true)))));
}

