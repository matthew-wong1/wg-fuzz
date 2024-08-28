struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(1u, 13903u), vec2<u32>(4294967295u, 72351u), vec2<u32>(1u, 59238u), vec2<u32>(4294967295u, 97295u), vec2<u32>(64487u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(57928u, 12409u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(13312u, 1u), vec2<u32>(0u, 1u), vec2<u32>(44230u, 39078u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = array<vec2<u32>, 12>();
    var var_0 = true;
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    var_0 = false;
    return Struct_1(arg_0);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec2<u32>, 12>();
    var var_0 = ~((vec2<u32>(1u, 27492u) | vec2<u32>(4294967295u, u_input.a.x)) ^ abs(reverseBits(u_input.a.zx))) ^ u_input.a.yy;
    var var_1 = Struct_3(vec2<i32>(u_input.c, 2147483647i << (~(~u_input.a.x) % 32u)), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(~34592i, _wgslsmith_mult_i32(-2147483647i, u_input.d), 17i, -44738i), vec4<i32>(select(2147483647i, 2147483647i, arg_0.a.x), _wgslsmith_mod_i32(u_input.c, u_input.c), u_input.d, u_input.c & 0i)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(step(-692f, _wgslsmith_f_op_f32(-2510f - -313f)))), arg_0, !select(vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1965f))), !(!(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, false))), all(vec3<bool>(!(u_input.d > 0i), false, arg_0.a.x & any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1617f, -394f, -767f, 1267f)), vec4<f32>(230f, 1199f, 623f, 797f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1025f, 626f, 1108f, 325f))))))));
    var_1 = Struct_3(var_1.a, Struct_2(var_1.b.a, var_1.e.wz, func_2(func_2(select(var_1.b.d.yw, arg_0.a, arg_0.a), ~u_input.a.yx, false, ~var_0.x).a, ~vec2<u32>(var_0.x, u_input.b), var_1.c.x, 41542u ^ ~u_input.a.x), select(var_1.c, select(select(var_1.c, vec4<bool>(arg_0.a.x, var_1.d, false, true), var_1.b.c.a.x), vec4<bool>(true, arg_0.a.x, false, var_1.d), var_1.c), select(var_1.c, select(var_1.c, var_1.c, var_1.b.d), !var_1.b.c.a.x)), var_1.b.b.x), !vec4<bool>(all(vec3<bool>(false, false, true)) | false, true & var_1.d, !arg_0.a.x, true), !(!var_1.b.c.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1369f, _wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(729f + -760f)), 1000f)));
    var_1 = Struct_3(-(~(var_1.a ^ var_1.a)) & ~abs(-var_1.a), var_1.b, var_1.c, all(vec2<bool>(all(vec4<bool>(arg_0.a.x, var_1.c.x, arg_0.a.x, arg_0.a.x)) && true, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.e)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.e, vec4<f32>(-1664f, var_1.b.e, -1000f, var_1.e.x))))));
    return !(!(!(!all(var_1.c))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<u32>, 12>();
    var var_0 = Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, true), func_3(func_2(vec2<bool>(false, false), ~vec2<u32>(21035u, 59261u), true, ~4294967295u))));
    let var_1 = -546f;
    var var_2 = select(!vec4<bool>(any(vec3<bool>(false, false, var_0.a.x)), var_0.a.x, true, !(var_0.a.x && false)), select(!vec4<bool>(!var_0.a.x, true, var_0.a.x, any(vec3<bool>(var_0.a.x, var_0.a.x, true))), vec4<bool>(true, func_3(func_2(vec2<bool>(var_0.a.x, false), vec2<u32>(u_input.a.x, u_input.a.x), var_0.a.x, 20860u)), all(vec3<bool>(false, var_0.a.x, var_0.a.x)), !all(var_0.a)), vec4<bool>(func_2(!vec2<bool>(var_0.a.x, var_0.a.x), min(u_input.a.xx, vec2<u32>(0u, 1u)), var_0.a.x, 0u).a.x, var_0.a.x, true, (false && var_0.a.x) || false)), var_0.a.x);
    global0 = array<vec2<u32>, 12>();
    return func_2(!var_0.a, vec2<u32>(12938u, 4294967295u), all(!select(vec4<bool>(var_2.x, var_2.x, var_0.a.x, false), vec4<bool>(var_2.x, var_0.a.x, true, var_2.x), u_input.a.x <= 56204u)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(40540u, 0u)), u_input.b) >> ((u_input.b | u_input.b) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_2 {
    global0 = array<vec2<u32>, 12>();
    let var_0 = 0i;
    let var_1 = func_3(func_1());
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    return Struct_2(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(10664i, u_input.c, u_input.c, -21308i) >> (vec4<u32>(u_input.b, 52858u, u_input.b, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(8351i, u_input.c, u_input.d, 1i)) | 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-419f - -206f) + _wgslsmith_f_op_f32(round(-535f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-798f + 417f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-441f * -814f), 944f) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-362f)), _wgslsmith_f_op_f32(select(-1339f, -1547f, arg_0.a.x))))), Struct_1(arg_1.a.a), !vec4<bool>(any(vec2<bool>(true, arg_0.a.x)), !arg_0.a.x, _wgslsmith_f_op_f32(923f * 1105f) == _wgslsmith_f_op_f32(select(-2314f, -1332f, false)), var_1), 522f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    let var_0 = vec4<bool>(true, all(vec2<bool>(!all(vec4<bool>(true, true, false, true)), true)), true, u_input.c == u_input.d);
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    let var_1 = Struct_3(vec2<i32>(-u_input.c, _wgslsmith_mult_i32(~(i32(-1i) * -1i), u_input.d)), func_4(func_1(), Struct_4(Struct_1(select(var_0.yz, vec2<bool>(true, true), false)), func_3(Struct_1(var_0.xz))), true), var_0, false, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -751f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-674f, 1558f)) - _wgslsmith_f_op_f32(trunc(-430f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2238f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(668f - 927f) * _wgslsmith_f_op_f32(f32(-1f) * -200f)))));
    let var_2 = u_input.d ^ _wgslsmith_mod_i32(u_input.c, 14798i);
    var var_3 = vec2<f32>(_wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x + 586f)))), _wgslsmith_f_op_f32(var_1.b.e - -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(60980u, 12u)], var_2);
}

