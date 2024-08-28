struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_3 = Struct_3(true, vec3<i32>(0i, 26734i, 0i), 1u, vec2<bool>(true, false), false);

var<private> global2: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-16232i, 2147483647i, -1i, 2147483647i), vec4<i32>(0i, 12667i, 2147483647i, -1i), vec4<i32>(38400i, 29114i, -23681i, 1i), vec4<i32>(-1i, -21477i, -1i, -1i), vec4<i32>(-35469i, -1i, -1i, 2147483647i), vec4<i32>(30761i, i32(-2147483648), 0i, -1i), vec4<i32>(-9146i, 2147483647i, i32(-2147483648), -16460i), vec4<i32>(-25710i, 33498i, -17115i, -15477i), vec4<i32>(i32(-2147483648), 4167i, 12634i, -21429i), vec4<i32>(24629i, 0i, 2147483647i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 0i, -63150i), vec4<i32>(1i, -2955i, -863i, 13327i), vec4<i32>(0i, i32(-2147483648), 8199i, -1i), vec4<i32>(0i, -1383i, -1i, 2147483647i), vec4<i32>(2147483647i, 1i, -27823i, 53807i), vec4<i32>(-51170i, -1i, 0i, 1i), vec4<i32>(i32(-2147483648), -30150i, 2147483647i, 17206i), vec4<i32>(47863i, 54776i, 1i, 13174i), vec4<i32>(-9397i, 1i, 0i, 9670i), vec4<i32>(-1i, 37648i, 3390i, -18753i), vec4<i32>(2147483647i, 31286i, 2147483647i, 2147483647i), vec4<i32>(1i, 0i, -23195i, -49003i), vec4<i32>(i32(-2147483648), 0i, -13040i, -17151i), vec4<i32>(56626i, 56582i, -6432i, 1i), vec4<i32>(1i, 2147483647i, 1i, 0i), vec4<i32>(1i, -5463i, 1i, 2147483647i), vec4<i32>(1i, 1i, 27361i, 1i), vec4<i32>(2147483647i, 1i, 1i, -36391i), vec4<i32>(1i, 10514i, 2147483647i, 34506i), vec4<i32>(12366i, 23369i, -1i, 0i), vec4<i32>(21032i, -5049i, -45666i, -1i), vec4<i32>(-3121i, 1i, 24274i, 2147483647i));

var<private> global3: Struct_3 = Struct_3(true, vec3<i32>(i32(-2147483648), 16859i, i32(-2147483648)), 4294967295u, vec2<bool>(false, true), false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = !(!vec3<bool>((global1.b.x << (7138u % 32u)) < global1.b.x, true, global1.d.x));
    let var_1 = global1.b.x;
    global3 = Struct_3(true, vec3<i32>(-20135i, _wgslsmith_dot_vec2_i32(global3.b.zz, ~vec2<i32>(global3.b.x, -1i)), global3.b.x), 41836u, !select(select(vec2<bool>(false, false), vec2<bool>(global3.a, var_0.x), var_0.yx), var_0.xx, global1.a & global3.a), false);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.x)))), ~1u, !vec3<bool>(global3.d.x, false, global1.a)), ~(abs(~1u) & global3.c), vec3<bool>(!all(vec3<bool>(true, false, global1.e)), !(any(vec3<bool>(global1.a, global1.a, false)) | !global1.d.x), global1.d.x), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))))), global1.c, vec3<bool>(global3.a & all(vec3<bool>(false, true, global3.d.x)), true, true)));
    let var_3 = vec3<i32>(select(_wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), ~select(2147483647i, 2147483647i, true)), global1.b.x, all(global3.d)), _wgslsmith_dot_vec2_i32(abs(max(~global1.b.xx, global1.b.zy)), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(17056i, u_input.b.x, global1.b.x), countOneBits(vec3<i32>(2147483647i, 0i, global3.b.x))), global3.b.x)), global1.b.x);
    return 23666u;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.x, -118f), global0.x, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(-1673f, -1701f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-169f, global0.x, global0.x))))));
    var var_0 = Struct_2(Struct_1(-771f, global3.c, !vec3<bool>(false, global3.b.x > -7940i, false)), _wgslsmith_mult_u32(func_3(4294967295u), select(2259u, u_input.a.x, all(!global3.d))), select(!vec3<bool>(!global3.d.x, global1.c >= global3.c, global3.a), vec3<bool>(!(arg_1.x <= global0.x), all(!vec3<bool>(arg_0, true, arg_0)), true), vec3<bool>(arg_0, arg_0, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x + arg_1.x)))), u_input.a.x << (~max(10971u, 0u) % 32u), !select(select(vec3<bool>(false, arg_0, true), vec3<bool>(true, global1.a, true), vec3<bool>(false, false, arg_0)), !vec3<bool>(global3.d.x, arg_0, true), vec3<bool>(true, true, true))));
    var var_1 = global1.d;
    return ~(13740i >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 23409u), u_input.a.ww) % 32u));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    global2 = array<vec4<i32>, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 866f, arg_1))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, 1726f, -761f), true))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -851f, arg_1) * vec3<f32>(-1000f, global0.x, global0.x)), vec3<f32>(-641f, global0.x, global0.x), select(vec3<bool>(global3.e, true, global3.e), vec3<bool>(global3.d.x, global3.d.x, true), vec3<bool>(global3.e, global3.a, global1.d.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1484f, arg_1, -1370f) + vec3<f32>(arg_1, 317f, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-322f, global0.x, -351f) + vec3<f32>(global0.x, 1323f, 1962f))))));
    let var_1 = false;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_sub_u32(88628u, 5848u), select(vec3<bool>(true, global1.a && !global1.e, true), vec3<bool>(global3.b.x <= (arg_0 >> (77087u % 32u)), global3.d.x & false, any(vec2<bool>(global3.a, true))), vec3<bool>(all(select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(true, global1.d.x, false, global1.a), vec4<bool>(global1.a, false, var_1, false))), var_1, any(!vec4<bool>(true, var_1, global1.e, true)))));
    var var_3 = vec2<bool>(true, global3.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(144f - -259f)))) - 1000f) - -1000f);
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = global3.b.x ^ global3.b.x;
    let var_1 = vec3<u32>(~u_input.a.x | 1u, global1.c, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x) >> (4294967295u % 32u), 9604u), arg_0.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-111f, 1000f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, -1960f, global0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(437f, -853f, -319f) + vec3<f32>(867f, 887f, 250f)))))) - vec3<f32>(_wgslsmith_f_op_f32(func_4(~func_2(global1.e, vec3<f32>(global0.x, 635f, -1425f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-848f + 1450f))), abs(u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))), global0.x));
    var var_2 = Struct_3(any(vec2<bool>((global3.d.x | global1.a) | (2012f >= global0.x), global3.e)), abs(global3.b & u_input.b), ~reverseBits(28153u), global1.d, false);
    let var_3 = 1435f;
    return Struct_3(true, ~((vec3<i32>(18979i, var_0, global3.b.x) << (abs(u_input.a.wxw) % vec3<u32>(32u))) ^ max(reverseBits(var_2.b), abs(vec3<i32>(global1.b.x, 0i, u_input.b.x)))), ~35373u, vec2<bool>(global1.e, ((global3.c ^ 18251u) | var_2.c) < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), min(arg_0, u_input.a.zy))), select(var_2.e, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-882f - global0.x))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(-182f, 770f) * global0.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec2<u32>(abs(~(~52035u)), ~u_input.a.x));
    let var_0 = vec4<i32>(i32(-1i) * -reverseBits(u_input.b.x), func_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -2047f, global0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, 1f))), -_wgslsmith_mult_i32(~max(global3.b.x, u_input.b.x), global1.b.x), 2147483647i);
    let var_1 = any(select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(global1.e, global3.d.x, global3.a, true), vec4<bool>(global1.a, true, global3.d.x, false)), !vec4<bool>(global1.e, true, true, true), global3.d.x), !select(select(vec4<bool>(true, false, global1.a, false), vec4<bool>(global1.d.x, false, global1.a, global3.d.x), global3.a), !vec4<bool>(global3.d.x, false, global1.a, false), vec4<bool>(true, false, global3.a, global3.e)), !vec4<bool>(true, false, false, global3.e)));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-491f, global0.x))) + _wgslsmith_f_op_f32(global0.x + global0.x)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -212f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1719f, _wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(floor(1787f))), -172f) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-243f)) - _wgslsmith_f_op_f32(global0.x * 2007f)))));
    let var_2 = select(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yw) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(32535u, 3254u, global3.c) & u_input.a.yxy, firstTrailingBit(u_input.a.www)) % 32u), u_input.a.x, _wgslsmith_dot_vec3_u32(select(u_input.a.zyz, vec3<u32>(1u, 18539u, global1.c), vec3<bool>(true, global3.d.x, var_1)) << (vec3<u32>(u_input.a.x, u_input.a.x, global3.c) % vec3<u32>(32u)), max(u_input.a.xzy, firstTrailingBit(vec3<u32>(7936u, global3.c, 3073u))))), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.c, 0u, global1.c) | vec3<u32>(1u, 5862u, 1u), ~vec3<u32>(0u, 0u, u_input.a.x)), 94298u, global3.c, global1.c << (min(max(1u, 1u), 49773u) % 32u)), !(!vec4<bool>(global3.b.x == 1i, !global1.d.x, global3.a, !global1.d.x)));
    let var_3 = -34553i;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -769f), global1.c, !vec3<bool>(true, true, _wgslsmith_f_op_f32(abs(1495f)) <= _wgslsmith_f_op_f32(min(global0.x, 631f))));
    var var_5 = var_2.zyz;
    var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-106f))) * _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, var_4.a, var_4.c.x)) + _wgslsmith_div_f32(638f, var_4.a)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.c), ~reverseBits(vec2<u32>(23025u, u_input.a.x))), select(select(!(!vec3<bool>(false, global3.d.x, true)), !select(vec3<bool>(var_4.c.x, var_4.c.x, global3.e), var_4.c, vec3<bool>(var_1, false, var_4.c.x)), (global3.e == false) || true), var_4.c, true || var_4.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, 1u) >> (~max(select(17586u, global1.c, true), 0u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(2147483647i, 1342f, vec3<i32>(0i, u_input.b.x, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -869f), 1f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, var_4.a, global0.x, -511f)))))));
}

