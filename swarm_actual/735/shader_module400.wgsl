struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(15970u, vec4<u32>(6158u, 19738u, 4294967295u, 0u), vec3<bool>(true, true, false), false, vec2<bool>(true, false)), Struct_1(0u, vec4<u32>(0u, 10930u, 12977u, 52339u), vec3<bool>(false, true, false), true, vec2<bool>(false, true)), Struct_1(70715u, vec4<u32>(1u, 0u, 0u, 23676u), vec3<bool>(true, false, false), false, vec2<bool>(true, false)), Struct_1(62696u, vec4<u32>(1u, 1u, 117248u, 3635u), vec3<bool>(false, true, true), true, vec2<bool>(true, false)), Struct_1(803u, vec4<u32>(131492u, 29118u, 1u, 4294967295u), vec3<bool>(true, true, false), false, vec2<bool>(false, false)), Struct_1(68754u, vec4<u32>(1u, 15181u, 4294967295u, 12094u), vec3<bool>(false, true, false), true, vec2<bool>(false, true)), Struct_1(52656u, vec4<u32>(0u, 4294967295u, 0u, 27238u), vec3<bool>(true, true, false), false, vec2<bool>(false, true)), Struct_1(47884u, vec4<u32>(4294967295u, 14513u, 15900u, 0u), vec3<bool>(false, true, true), true, vec2<bool>(true, true)), Struct_1(52628u, vec4<u32>(52064u, 55574u, 4294967295u, 4294967295u), vec3<bool>(false, false, true), false, vec2<bool>(false, true)), Struct_1(1u, vec4<u32>(4294967295u, 0u, 4294967295u, 16953u), vec3<bool>(false, true, true), false, vec2<bool>(true, true)), Struct_1(1u, vec4<u32>(27876u, 4294967295u, 51314u, 46380u), vec3<bool>(true, false, true), true, vec2<bool>(false, true)));

var<private> global1: array<i32, 32>;

var<private> global2: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(4294967295u, 16584u, 14160u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(47824u, 52505u, 1726u), vec3<u32>(4294967295u, 23998u, 63704u), vec3<u32>(79528u, 4294967295u, 4294967295u), vec3<u32>(1u, 1382u, 1u), vec3<u32>(5844u, 0u, 4294967295u), vec3<u32>(20704u, 0u, 0u), vec3<u32>(1u, 0u, 8306u), vec3<u32>(4294967295u, 0u, 16200u), vec3<u32>(1u, 47519u, 37704u), vec3<u32>(0u, 4294967295u, 16488u), vec3<u32>(30546u, 27549u, 50250u), vec3<u32>(0u, 1u, 13304u), vec3<u32>(4294967295u, 19646u, 49797u), vec3<u32>(4294967295u, 34335u, 68171u), vec3<u32>(0u, 4294967295u, 5542u), vec3<u32>(4294967295u, 4294967295u, 22214u), vec3<u32>(7196u, 11022u, 23225u));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(4294967295u, vec4<u32>(4286u, 4294967295u, 1u, 1u), vec3<bool>(true, true, false), false, vec2<bool>(true, true)), Struct_1(4294967295u, vec4<u32>(1u, 28833u, 45478u, 4294967295u), vec3<bool>(false, true, false), true, vec2<bool>(true, true)), Struct_1(4294967295u, vec4<u32>(64321u, 4294967295u, 1u, 72661u), vec3<bool>(false, false, true), false, vec2<bool>(true, false)), Struct_1(1u, vec4<u32>(51406u, 1u, 13197u, 52678u), vec3<bool>(true, true, true), true, vec2<bool>(true, false)));

var<private> global4: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(-2183i, 49667i, u_input.e.x >> (u_input.a.x % 32u), 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(u_input.b.x), -41081i, u_input.b.x, 1i), u_input.b), u_input.b);
    var var_1 = global0[_wgslsmith_index_u32(arg_0.x >> (~max(~(~40057u), 4294967295u) % 32u), 11u)];
    let var_2 = vec3<f32>(204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-720f)) * _wgslsmith_f_op_f32(step(331f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-849f)), -934f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-158f + _wgslsmith_f_op_f32(f32(-1f) * -186f)))));
    let var_3 = select(all(select(var_1.c, vec3<bool>(var_1.c.x, false, false), var_1.e.x)) != var_1.e.x, var_1.c.x == all(select(var_1.c.zy, vec2<bool>(false, true), vec2<bool>(var_1.d, false))), true) && any(vec3<bool>(var_1.d & var_1.d, var_1.c.x, (var_2.x < var_2.x) || all(vec3<bool>(false, var_1.d, var_1.c.x))));
    let var_4 = ~(~(~58998u << (u_input.a.x % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-201f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~_wgslsmith_div_u32(13839u, 17710u), 67511u) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 27343u, arg_2.b.x, u_input.a.x), countOneBits(vec4<u32>(arg_2.b.x, 53292u, arg_2.a, 1u))), firstLeadingBit(30719u >> (arg_2.b.x % 32u)), 7551u) % vec3<u32>(32u)), arg_2.b.zxy);
    global0 = array<Struct_1, 11>();
    return select(max(u_input.d.yy, vec2<i32>(-1i) * -vec2<i32>(1i, 0i)), u_input.d.xx, true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f - _wgslsmith_f_op_f32(-454f + -995f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.a.x, arg_0.a))))), 1104f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.b.zz))), -1382f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f - 286f) + -1642f), _wgslsmith_f_op_f32(floor(250f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1745f + 1421f))))))), arg_1);
    return 4294967295u;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_1.x, arg_1.x), vec4<u32>(u_input.a.x, arg_1.x, 10500u, 39134u)) | 3061u), ~min(~4267u, countOneBits(63794u)))), 4u)];
    var var_1 = countOneBits(vec3<i32>(-25477i, _wgslsmith_mod_i32(-global1[_wgslsmith_index_u32(83307u, 32u)], -arg_2), -1i)) | vec3<i32>(~_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(arg_1.x, 32u)], reverseBits(arg_2), 6724i << (arg_1.x % 32u)), _wgslsmith_clamp_i32(firstLeadingBit(-3658i) << (~var_0.b.x % 32u), 0i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_0.b.x, _wgslsmith_mod_u32(70411u, arg_1.x)), 32u)]), -_wgslsmith_dot_vec4_i32(vec4<i32>(3267i, 2147483647i, u_input.b.x, global1[_wgslsmith_index_u32(var_0.b.x, 32u)]), ~vec4<i32>(-26124i, 26337i, global1[_wgslsmith_index_u32(var_0.b.x, 32u)], -1i)));
    return _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_div_u32(func_2(Struct_1(4294967295u, vec4<u32>(13542u, u_input.a.x, 4294967295u, u_input.a.x), var_0.c, arg_0, var_0.c.zz), Struct_1(1u, vec4<u32>(u_input.a.x, 27137u, var_0.a, arg_1.x), vec3<bool>(false, false, var_0.e.x), false, vec2<bool>(var_0.d, true)), !var_0.e) << (4294967295u % 32u), ~1u | u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    var var_1 = Struct_1(~u_input.a.x, ~reverseBits(min(min(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 57008u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 23650u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 0u, 34103u, u_input.a.x) % vec4<u32>(32u)))), !global4[_wgslsmith_index_u32(~func_1(true, vec4<u32>(u_input.a.x, 12125u, 32525u, 1u), u_input.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 120f))), 24u)], true & (((var_0.x | 29620i) >= (0i << (u_input.a.x % 32u))) | true), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), u_input.a.x == u_input.a.x), vec2<bool>(false, any(!global4[_wgslsmith_index_u32(35570u, 24u)])), (select(false, false, false) || false) && false));
    let var_2 = global3[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 8188u) ^ var_1.b, vec4<u32>(var_1.a, var_1.b.x, 4294967295u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 1u, var_1.b.x, 64473u)), 23168u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 54728u, 824u, 21924u), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.b, var_1.b), firstLeadingBit(vec4<u32>(73750u, 0u, 28085u, 256u)))))), 4u)];
    global1 = array<i32, 32>();
    var_1 = global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(u_input.a.x, func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.b.zw, u_input.a.yy), 4u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.b.yyy, vec3<u32>(var_1.b.x, var_2.a, 37773u)), 4u)], !vec2<bool>(var_1.c.x, var_2.e.x)))) & ~(~u_input.a.x), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1035f - 1164f)), var_0.x, 14210u, ~var_2.b, 81102u);
}

