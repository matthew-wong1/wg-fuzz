struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<bool, 7>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 45607i, -16527i, i32(-2147483648)), vec4<i32>(29660i, -1i, i32(-2147483648), -19571i), vec4<i32>(-1i, -51221i, 2147483647i, -74555i), vec4<i32>(15807i, 11916i, -69743i, 1i), vec4<i32>(-25629i, -1i, -54985i, 2147483647i), vec4<i32>(-26606i, 1i, -5291i, -16178i), vec4<i32>(-22777i, -1i, 8263i, -45696i), vec4<i32>(-19409i, -1i, -8662i, 1i), vec4<i32>(-28919i, 1i, -45934i, -1i), vec4<i32>(2147483647i, -1i, 1i, 0i), vec4<i32>(1i, -17301i, 8389i, 0i), vec4<i32>(6269i, 14742i, 2147483647i, 33454i), vec4<i32>(i32(-2147483648), 1i, 8319i, -1i), vec4<i32>(11227i, 26137i, -3632i, 29553i), vec4<i32>(i32(-2147483648), 0i, 68399i, 48477i), vec4<i32>(-4554i, 0i, 36847i, 1i), vec4<i32>(-1i, i32(-2147483648), 25285i, 1i), vec4<i32>(63592i, 1i, 2880i, 1i), vec4<i32>(2147483647i, -1i, 23152i, -41783i), vec4<i32>(-34857i, 0i, 30517i, 41462i), vec4<i32>(-893i, -7176i, i32(-2147483648), 0i), vec4<i32>(16447i, 2147483647i, 1i, -62472i), vec4<i32>(29943i, -942i, -11880i, i32(-2147483648)));

var<private> global4: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(11770u), Struct_4(0u), Struct_4(4294967295u), Struct_4(4580u), Struct_4(13853u), Struct_4(4294967295u), Struct_4(55654u), Struct_4(30955u), Struct_4(4294967295u), Struct_4(52078u), Struct_4(19709u), Struct_4(4294967295u), Struct_4(0u), Struct_4(57328u), Struct_4(4294967295u), Struct_4(0u), Struct_4(37500u), Struct_4(81815u), Struct_4(4294967295u), Struct_4(42539u), Struct_4(89681u), Struct_4(1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(floor(arg_0));
    global4 = array<Struct_4, 22>();
    var var_2 = 1687f;
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(691f, _wgslsmith_f_op_f32(var_1 * -1486f)) + arg_1.b.xx)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1)))), _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-736f, arg_1.b.x)) + 512f))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(f32(-1f) * -611f)), global1[_wgslsmith_index_u32(1u, 7u)]), global0[_wgslsmith_index_u32(1u, 10u)], -844f, Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1526f + _wgslsmith_f_op_f32(trunc(-858f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(816f)) + _wgslsmith_f_op_f32(step(-435f, -558f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(1000f, Struct_1(vec3<f32>(-710f, -2463f, -379f), vec4<f32>(1000f, -1120f, 839f, 414f), vec3<u32>(0u, 18832u, 0u), 0u, vec3<i32>(global0[_wgslsmith_index_u32(16219u, 10u)], u_input.a, u_input.a)), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(trunc(-1165f)), _wgslsmith_f_op_f32(1518f * 1067f), _wgslsmith_f_op_f32(f32(-1f) * -625f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1037f, 179f, -482f, 580f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-429f, -1459f, 414f, 201f) - vec4<f32>(-1333f, 1153f, 290f, -348f))))), ~vec3<u32>(0u, 1u, select(4294967295u, 49726u, false)), ~1u, ~(-vec3<i32>(u_input.a, 2147483647i, 2147483647i))));
    global3 = array<vec4<i32>, 24>();
    var var_1 = !any(vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(var_0.d.d, 7u)], true, false, var_0.a.b)), !all(vec3<bool>(true, global2.x, global1[_wgslsmith_index_u32(1u, 7u)])), false));
    global4 = array<Struct_4, 22>();
    var var_2 = abs(firstLeadingBit(vec4<u32>(var_0.d.c.x, 40982u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.d, 29403u, var_0.d.d, 62666u), vec4<u32>(var_0.d.c.x, 62705u, var_0.d.d, var_0.d.d)), vec4<u32>(20671u, 15085u, 87337u, var_0.d.c.x) >> (vec4<u32>(43169u, 1u, 1u, 116101u) % vec4<u32>(32u))), var_0.d.c.x)));
    return Struct_3(Struct_2(var_0.d.b.x, true), var_0.d.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) + _wgslsmith_f_op_f32(-621f - -157f))))), var_0.d);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = select(select(!select(vec2<bool>(true, true), !vec2<bool>(global2.x, true), vec2<bool>(true, global1[_wgslsmith_index_u32(9932u, 7u)])), !select(vec2<bool>(true, true), vec2<bool>(false, arg_0.a.b), global1[_wgslsmith_index_u32(arg_0.d.d, 7u)] || false), select(!vec2<bool>(true, global2.x), select(vec2<bool>(false, true), !vec2<bool>(false, global2.x), !vec2<bool>(global2.x, false)), all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, global1[_wgslsmith_index_u32(arg_0.d.d, 7u)])))), !vec2<bool>(true, any(vec4<bool>(arg_0.a.b, false, true, arg_0.a.b))), func_2().a.b);
    global3 = array<vec4<i32>, 24>();
    global0 = array<i32, 10>();
    var var_1 = _wgslsmith_clamp_vec3_i32(func_2().d.e, arg_0.d.e, func_2().d.e);
    global0 = array<i32, 10>();
    return func_2().d;
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = func_4(func_2());
    let var_1 = ~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(24494u, var_0.d) << (vec2<u32>(var_0.d, 1u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(81762u, var_0.d))), 30552u, var_0.d), _wgslsmith_clamp_u32(func_4(Struct_3(Struct_2(arg_0, false), u_input.a, arg_0, Struct_1(var_0.b.wyy, var_0.b, var_0.c, var_0.c.x, vec3<i32>(var_0.e.x, -2147483647i, u_input.a)))).c.x, ~var_0.c.x, abs(var_0.d)) & 106511u, 53112u);
    let var_2 = abs(1i);
    let var_3 = Struct_3(func_2().a, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(max(arg_0, func_4(Struct_3(Struct_2(1222f, global2.x), -2147483647i, -925f, Struct_1(vec3<f32>(var_0.b.x, arg_0, -1250f), var_0.b, vec3<u32>(var_0.c.x, var_1.x, 67238u), var_0.c.x, vec3<i32>(var_2, 18380i, u_input.a)))).b.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(512f, var_0.a.x, arg_0), _wgslsmith_div_vec3_f32(var_0.b.ywx, vec3<f32>(arg_0, arg_0, arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -677f, -1036f) + vec3<f32>(arg_0, 1000f, 411f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2().d.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, arg_0, var_0.b.x, 1325f)))), ~(vec3<u32>(0u, var_0.d, var_0.d) >> ((var_0.c & vec3<u32>(var_1.x, var_1.x, 12258u)) % vec3<u32>(32u))), var_0.d, var_0.e));
    var var_4 = vec2<bool>((false || var_3.a.b) & (global2.x || true), true);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(reverseBits(~(global0[_wgslsmith_index_u32(~1u, 10u)] & ~u_input.a)), countOneBits(u_input.a), u_input.a ^ _wgslsmith_clamp_i32(0i, global0[_wgslsmith_index_u32(37077u, 10u)], _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(min(4294967295u, 57450u), 10u)], 25520i, i32(-1i) * -2147483647i)));
    global0 = array<i32, 10>();
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -515f));
    global0 = array<i32, 10>();
    var var_2 = -38904i;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~var_1.d.e.zy | abs(var_0.zz)), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(597f + 621f))), -431f)).d.c, var_1.d.d ^ ~(var_1.d.c.x | var_1.d.d), 1000f, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, ~u_input.a, -38630i), var_1.d.e));
}

