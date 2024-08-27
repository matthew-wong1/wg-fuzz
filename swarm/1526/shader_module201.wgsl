struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-1i, 22106i, -44235i), vec3<i32>(-1589i, -52490i, i32(-2147483648)), vec3<i32>(-8356i, 2147483647i, -7980i), vec3<i32>(-38444i, -2556i, i32(-2147483648)), vec3<i32>(-19075i, 42113i, 0i), vec3<i32>(70904i, 0i, 24471i), vec3<i32>(2147483647i, 17883i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), -25233i), vec3<i32>(23785i, 2147483647i, -1i), vec3<i32>(-35796i, 1i, -25412i), vec3<i32>(i32(-2147483648), -8738i, -1i), vec3<i32>(-1i, 0i, 42915i), vec3<i32>(28115i, -45120i, 1i), vec3<i32>(-37394i, 579i, 12967i), vec3<i32>(2147483647i, 22291i, 0i), vec3<i32>(24596i, -23803i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(1i, 29750i, 0i), vec3<i32>(0i, i32(-2147483648), -25473i), vec3<i32>(1800i, 54064i, -36771i), vec3<i32>(21264i, 19260i, 8509i), vec3<i32>(i32(-2147483648), -3028i, 17237i), vec3<i32>(60745i, 13785i, 36980i), vec3<i32>(15637i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 36187i, i32(-2147483648)), vec3<i32>(0i, -24620i, 15259i), vec3<i32>(2147483647i, 2147483647i, -10259i), vec3<i32>(-5826i, 0i, i32(-2147483648)));

var<private> global3: vec3<u32> = vec3<u32>(54874u, 1u, 64198u);

var<private> global4: Struct_4;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = select(~(-vec3<i32>(countOneBits(u_input.c.x), _wgslsmith_sub_i32(1i, 2147483647i), _wgslsmith_div_i32(u_input.c.x, 0i))), firstTrailingBit(u_input.c.wzz), !vec3<bool>(all(global4.e.d), global4.e.d.x, true));
    let var_1 = !(!select(select(!vec4<bool>(global4.e.a, true, global4.e.d.x, global4.e.d.x), vec4<bool>(true, false, global4.e.d.x, false), any(vec4<bool>(false, global4.e.d.x, global4.e.a, true))), vec4<bool>(false, global4.e.a, global4.e.a, true), !(!vec4<bool>(global4.e.d.x, global4.e.d.x, global4.e.d.x, true))));
    return global4.e.c;
}

fn func_3() -> vec2<f32> {
    global1 = global4.e.c;
    global3 = ~global4.b;
    var var_0 = select(!vec2<bool>(global4.e.a, all(vec2<bool>(global4.e.d.x, global4.e.a))), select(global4.e.d.zx, global4.e.d.yz, global4.e.d.xz), vec2<bool>(any(vec2<bool>(global4.e.d.x, !global4.e.a)), -1787f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(global4.e.b.x * global1.a.x))));
    var var_1 = -13840i;
    var var_2 = global1.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global4.c.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.x, global4.a.x), _wgslsmith_f_op_f32(sign(global4.e.b.x)))) * global4.e.b));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> vec2<u32> {
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    let var_0 = global4.e.d;
    var var_1 = ~min(~abs(reverseBits(vec4<u32>(1u, global3.x, 1u, 20811u))), firstTrailingBit(vec4<u32>(arg_3.d, ~global4.d, arg_0.x >> (29192u % 32u), 45300u)));
    var var_2 = arg_2.e;
    return ~(_wgslsmith_mod_vec2_u32(~arg_3.b.zx << (reverseBits(vec2<u32>(arg_2.d, 0u)) % vec2<u32>(32u)), global4.b.xy) | vec2<u32>(27320u, _wgslsmith_mult_u32(1u >> (arg_2.b.x % 32u), 4294967295u | arg_3.d)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> vec2<f32> {
    global0 = array<Struct_3, 22>();
    let var_0 = _wgslsmith_f_op_f32(select(915f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(449f - _wgslsmith_f_op_f32(select(arg_1.a.x, 776f, !global4.e.a))) + 170f), arg_2));
    var var_1 = select(vec4<bool>(any(vec4<bool>(any(vec2<bool>(arg_2, global4.e.a)), true, global4.e.d.x, global4.e.a)), false | any(vec3<bool>(global4.e.a, false, true)), all(vec2<bool>(true, global1.a.x < 1000f)), (-u_input.c.x < ~29757i) || any(vec2<bool>(false, arg_2))), select(vec4<bool>(!(!global4.e.a), false, -arg_3.x < global4.e.c.b, all(select(vec4<bool>(arg_2, true, true, global4.e.d.x), vec4<bool>(arg_2, global4.e.d.x, arg_2, true), vec4<bool>(true, true, arg_2, global4.e.a)))), vec4<bool>(~global3.x < ~4294967295u, !(!global4.e.d.x), true, false), !any(!global4.e.d.yy)), !global4.e.a);
    var var_2 = select(func_4(global4.b, Struct_3(true, _wgslsmith_f_op_vec2_f32(func_3()), global4.e.c, var_1.xzy), Struct_4(arg_1.a.yy, ~(~vec3<u32>(u_input.b.x, 1u, arg_0.x)), Struct_1(arg_1.a, reverseBits(global4.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1679f, arg_1.a.x, global4.c.c.x, var_0)), global1.b, u_input.c), firstTrailingBit(abs(u_input.b.x)), Struct_3(any(var_1.ww), _wgslsmith_f_op_vec2_f32(step(arg_1.a.yy, vec2<f32>(216f, -628f))), global4.e.c, select(global4.e.d, var_1.zzy, global4.e.d))), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.yy) * global1.a.yz), ~_wgslsmith_add_vec3_u32(vec3<u32>(global3.x, u_input.b.x, arg_0.x), vec3<u32>(4294967295u, u_input.b.x, 41660u)), Struct_1(arg_1.a, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, 1000f, 1297f)), 157i, -vec4<i32>(14161i, arg_1.b, -18152i, u_input.d.x)), ~0u, Struct_3(arg_2 && var_1.x, _wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, var_0), global4.e.c.a.xy), Struct_2(global1.a, 0i), vec3<bool>(global4.e.d.x, arg_2, var_1.x)))), global4.b.xz, any(select(vec2<bool>(var_1.x || arg_2, true), !global4.e.d.xx, true)));
    var var_3 = vec2<u32>(reverseBits(56890u), 4294967295u);
    return _wgslsmith_f_op_vec2_f32(global1.a.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, 628f), vec2<f32>(-387f, -807f))), _wgslsmith_f_op_vec2_f32(-global1.a.zx))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global4.e.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(~global4.b, func_1(global4.e.c.a.x, global1.a.xz), true, vec3<i32>(-1i) * -u_input.c.zxw))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 1029f)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -736f))))));
    global2 = array<vec3<i32>, 29>();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1029f * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -347f))))))));
    global0 = array<Struct_3, 22>();
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a.x, global1.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global4.a.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.xz), vec2<f32>(1067f, global1.a.x))))), select(~vec3<u32>(global4.b.x ^ u_input.a, _wgslsmith_add_u32(250u, 0u), 1u), select(vec3<u32>(global4.b.x, ~global4.d, 0u), max(~vec3<u32>(global4.b.x, global3.x, u_input.a), global4.b), vec3<bool>(true, all(vec4<bool>(true, false, global4.e.d.x, global4.e.a)), global4.e.a)), vec3<bool>(any(!vec2<bool>(false, global4.e.a)), select(true, false, true), true)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-160f, -896f, global1.a.x))) + vec3<f32>(global4.a.x, -808f, _wgslsmith_f_op_f32(-global4.c.a.x))), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.d, u_input.a), vec2<u32>(12080u, 4294967295u))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-174f, 596f, -377f, _wgslsmith_f_op_f32(floor(var_1.x))))), -8075i, vec4<i32>(~func_1(741f, vec2<f32>(-486f, 1000f)).b, 2147483647i, global4.c.e.x, u_input.d.x)), global4.b.x, global4.e);
    let var_4 = Struct_4(_wgslsmith_div_vec2_f32(global1.a.xz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1851f), _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1285f, -503f) - vec2<f32>(-681f, -174f)))), true))), ~(~_wgslsmith_mult_vec3_u32(var_3.b, _wgslsmith_mod_vec3_u32(var_3.b, global4.b))), global4.c, global4.c.b, Struct_3(all(!select(vec3<bool>(true, global4.e.a, true), var_3.e.d, global4.e.d.x)), vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(sign(1000f))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1850f, global1.a.x)), global4.e.b), global4.e.d));
    var var_5 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c.a.x, -1046f)))), _wgslsmith_mod_vec3_u32(~var_3.b, _wgslsmith_div_vec3_u32(~min(var_4.b, vec3<u32>(1u, u_input.a, 4294967295u)), ~(~var_4.b))), Struct_1(vec3<f32>(-1117f, global1.a.x, global4.a.x), select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(52451u, var_3.b.x, u_input.b.x, var_4.d), vec4<u32>(2934u, 88831u, var_4.c.b, 0u))), 4294967295u, var_3.c.e.x >= global4.e.c.b), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.e.b.x * -2282f), var_1.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1352f, global4.e.c.a.x)), 1885f, -543f), i32(-1i) * -32647i, ~vec4<i32>(i32(-1i) * -14736i, firstTrailingBit(global1.b), -1i, func_1(global1.a.x, global1.a.xy).b)), abs(global3.x), Struct_3(!select(false, !var_3.e.a, all(var_3.e.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global4.e.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.e.c.a.xy + var_3.a) * _wgslsmith_f_op_vec2_f32(global1.a.zz * global4.a))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.a, vec3<f32>(var_3.c.c.x, global4.c.a.x, global4.e.c.a.x)) - _wgslsmith_div_vec3_f32(global1.a, global4.c.c.wzx)), firstTrailingBit(41818i)), global4.e.d));
    var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(12180i), func_1(_wgslsmith_f_op_f32(var_5.a.x + _wgslsmith_f_op_f32(-1611f - var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_5.e.b - var_5.c.a.zx) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_3.c.a.xy))))).a.yy);
}

