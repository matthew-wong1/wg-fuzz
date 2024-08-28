struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-348f, 1123f);

var<private> global1: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-632f, -1175f, 820f, 876f), vec4<f32>(1751f, 160f, 1000f, 313f), vec4<f32>(-660f, -148f, 350f, -1000f), vec4<f32>(848f, 424f, -743f, -519f), vec4<f32>(-326f, -1402f, -393f, 1132f), vec4<f32>(-1100f, 1243f, -215f, -900f), vec4<f32>(527f, -730f, -1238f, 118f), vec4<f32>(578f, -133f, 284f, -1113f), vec4<f32>(190f, -1385f, 864f, -1411f), vec4<f32>(-1571f, -137f, -655f, -1471f), vec4<f32>(-1005f, -575f, 1329f, 1000f), vec4<f32>(-1000f, -1329f, -797f, 225f), vec4<f32>(285f, 861f, 470f, -980f), vec4<f32>(558f, 1517f, 139f, 669f), vec4<f32>(-198f, -1000f, -955f, 1600f), vec4<f32>(-1833f, -415f, 367f, -538f), vec4<f32>(1000f, 150f, -739f, -1785f), vec4<f32>(-283f, -1616f, -1670f, -506f), vec4<f32>(239f, -290f, 452f, 1808f), vec4<f32>(559f, -175f, -1948f, 583f), vec4<f32>(2058f, 942f, 583f, -901f), vec4<f32>(935f, -340f, 479f, -1692f), vec4<f32>(-432f, -298f, 651f, -253f), vec4<f32>(1824f, -663f, 1086f, -747f));

var<private> global2: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_sub_u32(0u, 0u);
    var var_1 = global2.b.a;
    var var_2 = (min(~min(var_0, 1u), 3210u) > reverseBits(_wgslsmith_mod_u32(var_0, ~4294967295u))) | var_1.b.b;
    let var_3 = Struct_4(false, global2.b);
    let var_4 = var_3.b.e;
    return var_4.a;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(2147483647i, global2.b.a.b.b);
    global2 = arg_0;
    var var_1 = Struct_1(select(_wgslsmith_add_i32(-15161i, arg_1.a) ^ 0i, func_3(!vec4<bool>(true, var_0.b, var_0.b, true)), any(!vec2<bool>(arg_0.a, true))) << (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(36642u, 4294967295u))) % 32u), true);
    var var_2 = vec2<u32>(~firstLeadingBit(max(~50560u, select(19722u, 0u, arg_1.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(max(~6233u, 49232u), abs(_wgslsmith_div_u32(9640u, 19034u))), vec2<u32>(~0u, 4294967295u)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1329f, _wgslsmith_f_op_f32(floor(global0.x)))))) + _wgslsmith_f_op_vec2_f32(global2.b.c.xy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.c.yx))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(349f)), global2.b.c.x) - -705f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 1000f), _wgslsmith_f_op_f32(max(arg_0.b.c.x, 415f)))) * _wgslsmith_f_op_f32(-global2.b.c.x))));
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_div_vec2_f32(global2.b.c.yz, _wgslsmith_f_op_vec2_f32(-global2.b.c.zz));
    var var_0 = global0.x;
    let var_1 = ~vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), ~4294967295u), 1u, 1u, 0u);
    global0 = vec2<f32>(-805f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(global2.a, global2.b), Struct_1(global2.b.e.a, true))) - global2.b.c.x)) * global0.x));
    let var_2 = var_1.x;
    return global2.b.b;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global1 = array<vec4<f32>, 24>();
    return Struct_1(global2.b.d, !(!func_1().b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global2.b.b, Struct_2(32376i, Struct_1(u_input.a, !(1i < global2.b.e.a))), _wgslsmith_f_op_vec3_f32(-global2.b.c), 1i, func_4(global0.x, vec3<f32>(-196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f * -1000f)), _wgslsmith_f_op_f32(-384f + 988f)), Struct_3(func_1(), Struct_2(min(u_input.a, -2147483647i), func_1().b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global2.b.c))), _wgslsmith_clamp_i32(-13180i, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 24563i, 0i, -2147483647i), vec4<i32>(u_input.a, -37886i, -1i, u_input.a))), func_1().b), global2.b.c.x));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) - var_0.c.x)));
    let var_2 = 4294967295u;
    let var_3 = ~max(~vec3<u32>(_wgslsmith_div_u32(0u, var_2), min(var_2, 74922u), ~56811u), vec3<u32>(countOneBits(4294967295u), ~5670u, ~var_2) | reverseBits(vec3<u32>(var_2, var_2, var_2)));
    let var_4 = func_1().b;
    var var_5 = _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 1235f) + -590f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -1512f)), _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(step(-135f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.b.c.x, var_0.c.x), var_0.c.x) + _wgslsmith_f_op_f32(ceil(-1000f))))), var_3.xy);
}

