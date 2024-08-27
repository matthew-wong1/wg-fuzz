struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(681f, -1026f, 1488f), vec3<f32>(-801f, 2384f, -116f), vec3<f32>(760f, 739f, 337f), vec3<f32>(-1000f, 1651f, -285f), vec3<f32>(320f, 477f, 1549f), vec3<f32>(-178f, -730f, -1355f));

var<private> global1: Struct_2 = Struct_2(-752f, vec3<u32>(66908u, 0u, 21211u), -228f, vec2<u32>(0u, 111555u), Struct_1(vec4<u32>(37054u, 1u, 1656u, 1u), vec3<u32>(0u, 24588u, 0u)));

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = vec3<bool>(any(select(select(select(vec3<bool>(false, arg_0, false), vec3<bool>(true, false, arg_0), true), vec3<bool>(true, true, true), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), all(!vec4<bool>(arg_0, arg_0, false, arg_0)))), true, arg_0 && (34739u >= _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x))));
    var_0 = select(!vec3<bool>(all(!vec3<bool>(false, var_0.x, true)), (u_input.c.x ^ global1.d.x) >= firstLeadingBit(global1.d.x), any(vec3<bool>(arg_0, false, arg_0))), vec3<bool>(var_0.x, var_0.x, var_0.x), !(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), select(false, arg_0, false))));
    var_0 = select(!select(vec3<bool>(true, any(vec3<bool>(arg_0, arg_0, true)), !arg_0), vec3<bool>(true, var_0.x, any(var_0.xy)), vec3<bool>(true, true, true)), vec3<bool>(!arg_0, true, var_0.x), arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1350f, global1.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(740f, 695f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-955f, global1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-671f, arg_1.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 291f))), var_0.zx)))));
    global0 = array<vec3<f32>, 6>();
    return global1.b.yy;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec4<u32> {
    global1 = Struct_2(-519f, ~((vec3<u32>(arg_0.d.x, u_input.c.x, arg_1) | vec3<u32>(arg_1, arg_0.d.x, arg_0.b.x)) << (arg_0.e.b % vec3<u32>(32u))), -327f, func_3(!all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)), arg_0), global2[_wgslsmith_index_u32(firstTrailingBit(~arg_0.d.x), 4u)]);
    var var_0 = arg_0.e;
    let var_1 = firstTrailingBit(_wgslsmith_clamp_i32(1i, -2147483647i, u_input.b | -(i32(-1i) * -10218i)));
    global1 = arg_0;
    global2 = array<Struct_1, 4>();
    return vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(arg_1, 16228u), u_input.c.x, 2472u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = 4294967295u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(364f + arg_2.a))), arg_3.x);
    let var_2 = ~(-1i);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 639f, -368f, -1734f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.c, -207f, arg_2.c, var_1.x), vec4<f32>(-367f, arg_3.x, 141f, -1987f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, 920f, 465f, global1.a)), vec4<f32>(279f, global1.a, arg_2.c, 1616f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(662f, 1166f, 1647f, -656f))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(-1326f, -1202f, false)), -627f, 1347f, arg_3.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1204f, var_1.x), vec4<f32>(global1.c, arg_3.x, -914f, -289f))))))));
    var var_4 = vec3<bool>(false, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * global1.c))) <= _wgslsmith_f_op_f32(-global1.a), true);
    return arg_2;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<Struct_1, 4>();
    global0 = array<vec3<f32>, 6>();
    let var_0 = Struct_1(~global1.e.a, vec3<u32>(~_wgslsmith_add_u32(global1.b.x, u_input.c.x) & 55309u, ~19474u, u_input.c.x));
    global0 = array<vec3<f32>, 6>();
    let var_1 = func_4(Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, global1.e.b.x, var_0.a.x) & global1.e.a, func_2(Struct_2(863f, global1.e.b, global1.c, vec2<u32>(0u, 1u), Struct_1(vec4<u32>(global1.e.b.x, 23521u, 13343u, 36857u), vec3<u32>(4294967295u, 20929u, 60758u))), u_input.c.x)), select(var_0.a.zww, vec3<u32>(var_0.a.x, 52941u, 1u), true) >> (global1.b % vec3<u32>(32u))), min(global1.e.a.x, ~func_3(true, Struct_2(-891f, vec3<u32>(u_input.c.x, var_0.a.x, u_input.c.x), global1.c, vec2<u32>(23978u, 0u), global2[_wgslsmith_index_u32(global1.b.x, 4u)])).x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1292f) + _wgslsmith_f_op_f32(step(-1583f, 311f)))), var_0.a.zyy, global1.c, _wgslsmith_mult_vec2_u32(reverseBits(global1.e.a.wx), global1.d), var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1295f), _wgslsmith_div_f32(-2268f, 818f))));
    return global2[_wgslsmith_index_u32(u_input.c.x, 4u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    global0 = array<vec3<f32>, 6>();
    global0 = array<vec3<f32>, 6>();
    return func_4(func_4(Struct_1(vec4<u32>(global1.b.x, 17808u, 1230u, arg_0.b.x) ^ vec4<u32>(u_input.c.x, 30867u, 40731u, 13530u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.b.x, 37032u, 0u), vec3<u32>(0u, u_input.c.x, 30638u))), ~28274u, Struct_2(-860f, global1.b, _wgslsmith_f_op_f32(-979f * arg_1), vec2<u32>(abs(arg_0.a.x), 12607u), Struct_1(select(global1.e.a, arg_0.a, false), _wgslsmith_sub_vec3_u32(arg_0.a.yzz, arg_0.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a, 346f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-258f, global1.c), vec2<f32>(-1104f, arg_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -241f)))).e, ~(~(~u_input.c.x)), func_4(Struct_1(vec4<u32>(~65692u, ~arg_0.a.x, 41257u, abs(10753u)), max(vec3<u32>(4294967295u, u_input.c.x, 4294967295u) >> (vec3<u32>(40243u, 61055u, 46805u) % vec3<u32>(32u)), vec3<u32>(1u, u_input.c.x, 32590u) & global1.b)), u_input.c.x << (u_input.c.x % 32u), func_4(func_1(-2147483647i), global1.d.x, func_4(global1.e, 4294967295u, func_4(global1.e, u_input.c.x, Struct_2(-114f, global1.e.b, -552f, vec2<u32>(0u, 1u), Struct_1(vec4<u32>(21679u, u_input.c.x, arg_0.a.x, global1.e.a.x), vec3<u32>(1u, arg_0.a.x, 1u))), vec2<f32>(arg_1, -123f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-807f, 1085f) * vec2<f32>(942f, -753f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(869f, 1397f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(570f, global1.c)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, arg_1), vec2<f32>(2618f, 127f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, global1.a))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(658f)), -497f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1151f, arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    var var_0 = func_5(func_1(~0i), 777f);
    global2 = array<Struct_1, 4>();
    let var_1 = vec3<u32>(13524u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~var_0.e.b.x, 12953u, func_3(true, func_5(Struct_1(global1.e.a, vec3<u32>(4294967295u, global1.b.x, global1.d.x)), -170f)).x), vec4<u32>(var_0.e.b.x & ~1u, func_2(Struct_2(-971f, var_0.b, -966f, u_input.c, var_0.e), 22885u).x | ~0u, _wgslsmith_mult_u32(u_input.c.x, min(6123u, 1u)), ~_wgslsmith_clamp_u32(31857u, u_input.c.x, 35752u))), var_0.b.x);
    var var_2 = Struct_1(vec4<u32>(~countOneBits(~var_1.x), _wgslsmith_clamp_u32(u_input.c.x, func_5(func_1(u_input.b), _wgslsmith_f_op_f32(var_0.c - global1.c)).b.x, _wgslsmith_sub_u32(~global1.b.x, 1u)), ~0u, ~4294967295u), var_1);
    var var_3 = max(-2147483647i ^ u_input.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b, -1i), select(u_input.a, u_input.a, false)), firstTrailingBit(vec2<i32>(u_input.b, u_input.a) | vec2<i32>(2147483647i, -36472i))));
    var var_4 = global1.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~var_4.x));
}

