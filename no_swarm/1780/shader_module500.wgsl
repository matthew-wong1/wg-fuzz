struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-1075f, 668f, -939f), vec3<f32>(669f, -1314f, -1272f), vec3<f32>(-586f, 701f, -310f), vec3<f32>(-1396f, -2225f, -220f), vec3<f32>(-894f, -574f, 1085f), vec3<f32>(-951f, 544f, 1000f), vec3<f32>(151f, -209f, -1000f), vec3<f32>(-1000f, 1654f, 624f), vec3<f32>(-1582f, 2245f, 344f), vec3<f32>(903f, -2002f, 411f), vec3<f32>(-386f, 313f, -575f), vec3<f32>(-220f, 1643f, -1000f), vec3<f32>(-1252f, -248f, 121f), vec3<f32>(2259f, -388f, 1679f), vec3<f32>(-1288f, 1306f, 153f), vec3<f32>(-1134f, -1287f, 727f), vec3<f32>(685f, 1832f, 134f), vec3<f32>(288f, 421f, -2025f), vec3<f32>(509f, 1763f, 503f), vec3<f32>(510f, -1589f, 2197f));

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: array<u32, 15>;

var<private> global3: Struct_3 = Struct_3(false, true, Struct_2(Struct_1(6314i, vec2<f32>(2060f, -104f), vec3<f32>(1049f, -568f, 210f), 486f), vec4<u32>(0u, 9142u, 4294967295u, 30874u), true, 1250f), Struct_1(-1i, vec2<f32>(696f, -585f), vec3<f32>(1669f, 1863f, -2407f), 2270f), vec2<bool>(true, true));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_3(select(!(!all(global1[_wgslsmith_index_u32(arg_3.x, 1u)])), !global3.c.c, global3.e.x), global3.c.c && any(vec3<bool>(!global3.c.c, any(vec3<bool>(false, true, true)), any(global1[_wgslsmith_index_u32(25349u, 1u)]))), Struct_2(Struct_1(select(arg_0.a, _wgslsmith_add_i32(global3.c.a.a, 0i), select(true, global3.b, global3.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.c.a.c.yy, arg_0.b, global3.e))), global0[_wgslsmith_index_u32(1u, 20u)], arg_1), global3.c.b, true, _wgslsmith_f_op_f32(arg_2.x + 231f)), global3.c.a, vec2<bool>(all(!vec4<bool>(global3.a, global3.b, false, global3.c.c)), true));
    var var_1 = any(!select(select(var_0.e, !global3.e, select(vec2<bool>(false, false), vec2<bool>(false, global3.a), vec2<bool>(var_0.c.c, var_0.c.c))), select(vec2<bool>(true, false), vec2<bool>(var_0.c.c, global3.a), vec2<bool>(false, global3.b)), !select(vec2<bool>(false, false), vec2<bool>(true, false), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2122f), _wgslsmith_f_op_f32(global3.c.a.b.x * -1092f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(1618f - _wgslsmith_f_op_f32(-global3.c.d)), !all(vec4<bool>(true, global3.b, var_0.e.x, true)))), -300f) + vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.c.a.b.x - 808f), _wgslsmith_f_op_f32(-arg_2.x)))), global3.d.b.x, -971f));
    let var_3 = var_0.c;
    global3 = Struct_3(var_0.b, global3.b, global3.c, var_3.a, !select(select(!global3.e, select(vec2<bool>(false, var_3.c), var_0.e, global3.e), var_0.a != global3.e.x), vec2<bool>(var_0.a && false, var_3.c), true));
    return select(select(vec2<bool>(all(vec3<bool>(var_0.b, true, false)), var_0.a), select(vec2<bool>(var_0.b, 139844u <= arg_3.x), select(vec2<bool>(false, false), !vec2<bool>(false, var_0.b), true), select(var_0.e, global3.e, global3.b)), !vec2<bool>(true, any(global1[_wgslsmith_index_u32(arg_3.x, 1u)]))), select(global3.e, vec2<bool>(var_0.c.c, select(all(vec3<bool>(var_3.c, global3.a, true)), var_3.c, true)), vec2<bool>(true, true)), vec2<bool>(!any(!var_0.e), select(true || var_3.c, var_3.c, _wgslsmith_f_op_f32(var_0.c.a.b.x + 1733f) < _wgslsmith_f_op_f32(-var_2.x))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    global3 = Struct_3(true, !arg_0.c, arg_0, arg_0.a, vec2<bool>(true, global3.e.x));
    global0 = array<vec3<f32>, 20>();
    global3 = Struct_3(all(!vec2<bool>(arg_0.c, global3.a)), select(arg_0.c, !global3.e.x, !global3.b), global3.c, global3.c.a, func_3(Struct_1(_wgslsmith_clamp_i32(global3.d.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -7256i, global3.d.a), vec3<i32>(global3.d.a, global3.d.a, 4787i)), _wgslsmith_clamp_i32(arg_0.a.a, global3.d.a, -34952i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, arg_1.x) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -191f), arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d, arg_1.x, global3.c.a.b.x), arg_0.a.c, vec3<bool>(global3.b, global3.b, global3.b))) - _wgslsmith_div_vec3_f32(arg_0.a.c, vec3<f32>(arg_1.x, 418f, 294f))), arg_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(661f, -716f, arg_0.d)) - arg_0.a.c) * vec3<f32>(-1221f, _wgslsmith_f_op_f32(arg_1.x * -834f), arg_1.x)), global3.c.b.xy | (vec2<u32>(global2[_wgslsmith_index_u32(global3.c.b.x, 15u)], u_input.d.x) << (~vec2<u32>(0u, global3.c.b.x) % vec2<u32>(32u)))));
    global3 = Struct_3(true, arg_0.c, arg_0, Struct_1(min(global3.d.a, arg_0.a.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, global3.c.a.d), _wgslsmith_f_op_vec2_f32(ceil(global3.d.c.yy))))), global3.d.c, -1000f), vec2<bool>(arg_0.c, !(!arg_0.c)));
    var var_0 = Struct_1(countOneBits(_wgslsmith_mod_i32(global3.c.a.a, 1i)) >> (global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(arg_0.b.x, 15u)], 1u, max(arg_0.b.x, u_input.b)), 15u)], 15u)] % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1432f, arg_0.d)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -1775f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.d)), _wgslsmith_f_op_f32(f32(-1f) * -984f), arg_0.d) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.d, arg_0.d, global3.d.d)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1290f, -187f, global3.d.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_1.x)))));
    return global3.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = ~arg_1.d.a;
    global0 = array<vec3<f32>, 20>();
    let var_1 = !global3.e;
    let var_2 = 0u;
    let var_3 = true;
    return func_2(Struct_2(Struct_1(-47251i, arg_0.a.b, arg_0.a.c, -553f), arg_1.c.b, !var_1.x, -534f), arg_1.c.a.c.yz).a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    global2 = array<u32, 15>();
    var var_0 = 4294967295u;
    global2 = array<u32, 15>();
    let var_1 = Struct_3(-1i != _wgslsmith_clamp_i32(-1103i, _wgslsmith_mod_i32(~(-1i), i32(-1i) * -64730i), ~0i), false, func_2(global3.c, vec2<f32>(_wgslsmith_f_op_f32(2712f - _wgslsmith_f_op_f32(arg_0.x + arg_2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - 174f), global3.c.d))), func_2(func_2(Struct_2(Struct_1(1i, vec2<f32>(237f, arg_1.d), global0[_wgslsmith_index_u32(26816u, 20u)], global3.d.c.x), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], 39246u, global3.c.b.x, global3.c.b.x) << (vec4<u32>(1u, global2[_wgslsmith_index_u32(global3.c.b.x, 15u)], 32644u, global2[_wgslsmith_index_u32(global3.c.b.x, 15u)]) % vec4<u32>(32u)), any(arg_3), _wgslsmith_f_op_f32(f32(-1f) * -764f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -991f), arg_1.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.d, 555f)))).a, !select(global3.e, select(global3.e, vec2<bool>(true, arg_3.x), arg_3.x), true));
    var var_2 = select(var_1.e, vec2<bool>(!(_wgslsmith_f_op_f32(var_1.c.a.c.x * arg_0.x) < _wgslsmith_f_op_f32(trunc(481f))), !(var_1.e.x & true)), arg_3);
    return abs(~40638u);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = ~1u | global3.c.b.x;
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    let var_1 = ~vec2<u32>(1u, func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(942f, global3.d.c.x))))), func_4(func_2(arg_0.c, vec2<f32>(arg_0.c.d, -348f)), Struct_3(arg_0.e.x, arg_0.a, global3.c, Struct_1(-16626i, arg_0.d.b, vec3<f32>(-1179f, 1149f, -966f), -742f), vec2<bool>(false, false))), Struct_1(-52589i, _wgslsmith_f_op_vec2_f32(global3.c.a.b + global3.c.a.b), vec3<f32>(-1667f, global3.c.d, arg_0.c.a.b.x), -868f), global3.e));
    global0 = array<vec3<f32>, 20>();
    return _wgslsmith_div_vec3_u32(~min(~_wgslsmith_mod_vec3_u32(arg_0.c.b.zwz, vec3<u32>(var_1.x, 1u, global2[_wgslsmith_index_u32(4294967295u, 15u)])), global3.c.b.yzy), arg_0.c.b.yyw);
}

fn func_6(arg_0: u32) -> StorageBuffer {
    global0 = array<vec3<f32>, 20>();
    let var_0 = any(!vec3<bool>(false, global3.c.c, any(!vec2<bool>(global3.c.c, true))));
    global1 = array<vec4<bool>, 1>();
    let var_1 = global3.c;
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-48729i, global3.c.a.a, global3.c.a.a, var_1.a.a), vec4<i32>(global3.c.a.a, 1i, var_1.a.a, var_1.a.a), global3.b), vec4<i32>(var_1.a.a, 0i, var_1.a.a, 1i)), vec4<i32>(var_1.a.a, global3.c.a.a ^ 54087i, 8081i, -2147483647i)), global3.d.c.yz, _wgslsmith_f_op_vec3_f32(floor(func_2(func_2(Struct_2(global3.c.a, global3.c.b, true, 436f), var_1.a.b), vec2<f32>(-157f, -424f)).a.c)), _wgslsmith_f_op_f32(global3.d.c.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.d.b.x))))), u_input.d, !func_3(Struct_1(2147483647i, vec2<f32>(1f, 1f), vec3<f32>(-2299f, 1272f, global3.d.d), _wgslsmith_div_f32(525f, -1211f)), 695f, vec3<f32>(var_1.d, _wgslsmith_f_op_f32(trunc(-531f)), var_1.a.d), _wgslsmith_clamp_vec2_u32(u_input.c.yw | global3.c.b.wx, abs(vec2<u32>(1u, var_1.b.x)), ~global3.c.b.yy)).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -455f))));
    return StorageBuffer(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, var_2.b.x), abs(vec3<u32>(u_input.c.x, u_input.c.x, var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c.a;
    let var_1 = global3.e.x;
    global0 = array<vec3<f32>, 20>();
    global1 = array<vec4<bool>, 1>();
    let var_2 = -1416f;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~global3.c.b.x, 4294967295u, _wgslsmith_div_u32(4294967295u, 23425u)), abs(select(u_input.c.zyx, u_input.c.wzw, vec3<bool>(global3.b, true, true))), ~global3.c.b.wzy), ~func_1(Struct_3(global3.c.c, global3.e.x, global3.c, global3.c.a, vec2<bool>(global3.a, global3.c.c)), global3.c.b.x, vec2<i32>(global3.c.a.a, global3.d.a)) ^ vec3<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.c.b.x, 15u)], 15u)], ~22699u, reverseBits(12916u))));
}

