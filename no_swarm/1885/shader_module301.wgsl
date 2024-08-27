struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: f32 = -2258f;

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4758u, 1u), vec2<u32>(1u, 53447u), vec2<u32>(0u, 0u), vec2<u32>(3261u, 20847u), vec2<u32>(56718u, 30031u), vec2<u32>(1u, 9031u), vec2<u32>(49654u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(70304u, 1u), vec2<u32>(19853u, 1u), vec2<u32>(4137u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 50797u), vec2<u32>(0u, 24965u), vec2<u32>(107134u, 19415u), vec2<u32>(0u, 20982u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 35357u), vec2<u32>(0u, 17940u), vec2<u32>(26566u, 1563u), vec2<u32>(4294967295u, 1u), vec2<u32>(62989u, 4294967295u), vec2<u32>(37818u, 20418u), vec2<u32>(0u, 1u), vec2<u32>(1u, 18770u), vec2<u32>(21691u, 37554u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 60562u), vec2<u32>(4294967295u, 51651u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 3409u, 1u, 45848u), false, vec2<bool>(true, true), vec3<bool>(false, true, true), 612f), 571f, vec2<u32>(0u, 11588u), vec3<f32>(343f, -640f, 587f), 2281f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_2(global3.a, arg_1, u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d) + global3.d), vec3<f32>(-1542f, global3.b, arg_1)) + _wgslsmith_f_op_vec3_f32(select(arg_0.d, arg_0.d, select(global3.a.d, select(vec3<bool>(arg_0.a.b, true, arg_0.a.d.x), global3.a.d, arg_0.a.c.x), global3.a.d.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global3.a.e) - _wgslsmith_f_op_f32(-arg_0.d.x))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(965f)))));
    global2 = array<vec2<u32>, 31>();
    return ~_wgslsmith_div_vec4_u32(countOneBits(var_0.a.a), vec4<u32>(49610u, ~var_0.a.a.x, _wgslsmith_div_u32(~u_input.d.x, 1u), _wgslsmith_sub_u32(global3.a.a.x & 4294967295u, 0u ^ var_0.c.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    var var_0 = global3.a.a;
    let var_1 = vec4<i32>(u_input.b.x ^ (countOneBits(u_input.a) | -1i), 2147483647i, u_input.a, -25001i);
    let var_2 = _wgslsmith_add_u32(~var_0.x, global3.a.a.x);
    let var_3 = _wgslsmith_dot_vec4_u32(func_2(Struct_2(arg_0, global3.b, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a.a.x, 1u, var_2), vec4<u32>(23349u, arg_2.a.x, 47125u, 4294967295u)), 30u)], global3.d, arg_0.e), _wgslsmith_f_op_f32(-arg_2.e)), _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(4294967295u, 0u), select(88067u, 38793u, global3.a.b), ~1u, arg_1.a.x), ~(~vec4<u32>(arg_1.a.x, arg_2.a.x, 0u, 4294967295u))));
    return var_1.zz;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = all(!(!(!select(arg_0.c, global3.a.c, arg_0.b))));
    var var_1 = Struct_1(vec4<u32>(u_input.e, (~arg_0.a.x | u_input.d.x) & ~func_2(Struct_2(global3.a, arg_0.e, u_input.d, arg_2, -1185f), -554f).x, global3.a.a.x, 78667u), global3.a.d.x, arg_0.d.yy, !(!(!(!vec3<bool>(arg_0.d.x, global3.a.b, true)))), _wgslsmith_f_op_f32(f32(-1f) * -603f));
    let var_2 = Struct_2(global3.a, global3.b, global2[_wgslsmith_index_u32(43999u, 31u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.e, -1000f, 658f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_2)))))), arg_0.e);
    var var_3 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, 28316u, var_2.c.x) ^ vec3<u32>(var_2.a.a.x, 51384u, 1u), global3.a.a.zyy) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(0u, var_1.a.x, 0u)), arg_0.a.zzz >> (vec3<u32>(var_1.a.x, 0u, var_2.c.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(1064u, global3.a.a.x, 33796u), global3.a.a.ywz)), arg_0.a.yyw, ~select(vec3<u32>(0u, u_input.c, global3.a.a.x) >> (vec3<u32>(u_input.d.x, global3.c.x, 41122u) % vec3<u32>(32u)), ~var_2.a.a.yzx, select(var_2.a.d, arg_0.d, global3.a.d)) >> (var_1.a.ywz % vec3<u32>(32u)));
    global0 = array<vec2<u32>, 30>();
    return 567f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(global3.d.yy + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.e, 2252f)), 881f));
    let var_1 = 82812u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b)));
    let var_3 = -_wgslsmith_add_i32(-3767i, max(1i, -1i)) >> (abs(_wgslsmith_mult_u32(u_input.c, _wgslsmith_mult_u32(u_input.d.x, 4294967295u) >> (~u_input.e % 32u))) % 32u);
    let var_4 = ~(~vec2<u32>(var_1, var_1));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(~global3.a.a, all(global3.a.d), select(vec2<bool>(true, true), global3.a.d.xz, true), !global3.a.d, global3.a.e), func_1(Struct_1(_wgslsmith_div_vec4_u32(global3.a.a, global3.a.a), false, global3.a.c, vec3<bool>(global3.a.d.x, global3.a.c.x, global3.a.b), 1f), global3.a, Struct_1(abs(global3.a.a), var_3 != u_input.a, select(vec2<bool>(true, false), global3.a.c, false), global3.a.d, var_0.x), global3.a.c.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), global3.e, 1278f))), global3.a.e);
    let var_5 = Struct_2(Struct_1(abs(global3.a.a) ^ (select(vec4<u32>(var_1, 68194u, var_1, var_4.x), global3.a.a, vec4<bool>(global3.a.d.x, true, global3.a.b, global3.a.c.x)) >> (vec4<u32>(u_input.d.x, 44591u, 31986u, 87047u) % vec4<u32>(32u))), false, !global3.a.d.xy, global3.a.d, global3.d.x), _wgslsmith_f_op_f32(1337f * -1322f), _wgslsmith_mod_vec2_u32(abs(countOneBits(vec2<u32>(global3.c.x, global3.c.x))), select(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(func_2(Struct_2(global3.a, global3.a.e, var_4, vec3<f32>(global3.a.e, -824f, 199f), -1484f), -1268f).x, 30u)], ~u_input.d), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global3.c.x, 0u), vec2<u32>(u_input.c, 0u)), all(global3.a.c))), global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(exp2(var_5.d.x)))), u_input.b >> (select(min(u_input.d ^ vec2<u32>(4294967295u, global3.c.x), var_4 ^ vec2<u32>(var_1, 63721u)), ~min(vec2<u32>(global3.a.a.x, 25658u), vec2<u32>(var_4.x, var_5.c.x)), vec2<bool>(false, !var_5.a.d.x)) % vec2<u32>(32u)));
}

