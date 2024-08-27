struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 19>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(658f, 303f, 1316f, 718f), vec4<f32>(878f, 375f, -1288f, 1281f), vec4<f32>(1171f, 1237f, 284f, -234f), vec4<f32>(1000f, -268f, 750f, -255f), vec4<f32>(216f, -898f, -1000f, -1620f), vec4<f32>(1501f, -1153f, -1996f, -893f), vec4<f32>(1116f, -643f, 721f, -894f), vec4<f32>(870f, 318f, -378f, 156f), vec4<f32>(625f, 742f, 604f, -1000f), vec4<f32>(325f, -579f, 870f, 2167f), vec4<f32>(-1732f, 3172f, -1250f, -1425f), vec4<f32>(-471f, -1108f, 149f, 1035f), vec4<f32>(333f, -194f, -902f, -600f), vec4<f32>(596f, 813f, 111f, -1336f), vec4<f32>(-1000f, 476f, -218f, 948f), vec4<f32>(-721f, 559f, 508f, 927f), vec4<f32>(1189f, 1177f, -377f, 1000f), vec4<f32>(1461f, -685f, -309f, 325f), vec4<f32>(-793f, 1464f, -991f, -1850f), vec4<f32>(-537f, -1675f, -1078f, 1194f), vec4<f32>(-280f, -398f, -854f, 251f), vec4<f32>(-1254f, -731f, 120f, 1547f), vec4<f32>(140f, -804f, 102f, -1000f), vec4<f32>(1591f, 1587f, 853f, -733f), vec4<f32>(-295f, -1093f, -547f, -1096f), vec4<f32>(1000f, -1521f, 673f, -448f), vec4<f32>(-878f, 628f, -851f, 982f), vec4<f32>(835f, 500f, 1158f, 403f), vec4<f32>(1578f, 1000f, -467f, -1695f));

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = -19357i;
    let var_1 = arg_0.b.c.a;
    let var_2 = arg_0.b.d;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1337f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.c))), !select(all(!vec2<bool>(false, arg_0.a)), arg_0.b.a.b, false), var_1, -62395i);
    var var_4 = max(max(vec3<i32>(u_input.c.x, -var_0, (u_input.c.x << (u_input.b % 32u)) ^ _wgslsmith_add_i32(var_2, 1i)), arg_0.b.b.xzw), vec3<i32>(45537i, -28709i, _wgslsmith_sub_i32(min(firstLeadingBit(8230i), -u_input.c.x), 1i)));
    return var_3.b;
}

fn func_2() -> Struct_2 {
    var var_0 = select(!select(vec4<bool>(true, any(vec3<bool>(true, false, true)), true, false), vec4<bool>(true, true, func_3(Struct_3(false, Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.c, Struct_1(116f, false, 816f, 33590i), u_input.c.x))), true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true))), vec4<bool>(true & all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)), false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true))), false), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(~u_input.a.x, 29u)] - vec4<f32>(_wgslsmith_f_op_f32(round(1350f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-604f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1169f)), _wgslsmith_div_f32(745f, 206f), var_0.x)), !(!var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(926f, _wgslsmith_f_op_f32(abs(-949f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1074f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -510f))))));
    let var_2 = Struct_2(global4[_wgslsmith_index_u32(min(_wgslsmith_add_u32(52590u, firstTrailingBit(82462u)), max(1u, 5183u)), 30u)], vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-8033i, 1i, countOneBits(u_input.c.x)), abs(~u_input.c.x)), u_input.c.x ^ 2147483647i, u_input.c.x, _wgslsmith_add_i32(u_input.c.x, -(~u_input.c.x))), global2[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), ~vec4<u32>(u_input.b, 3283u, 0u, u_input.b)) << (~1u % 32u)) & u_input.b, 25u)], -abs(~_wgslsmith_mod_i32(u_input.c.x, u_input.c.x)));
    var var_3 = abs(vec4<u32>(max(4294967295u, 0u), u_input.b, u_input.b, ~u_input.b));
    let var_4 = Struct_1(1296f, var_0.x, var_2.a.a, var_2.d);
    return Struct_2(var_2.c, vec4<i32>(reverseBits(-1i), var_4.d, firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.c << (vec4<u32>(var_3.x, var_3.x, 59293u, var_3.x) % vec4<u32>(32u)), vec4<i32>(0i, 13566i, -14308i, -154i) ^ vec4<i32>(u_input.c.x, -34080i, 2147483647i, -12054i))), 66830i), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x - var_4.a), var_4.c, true)))), !any(!vec3<bool>(var_2.a.b, false, var_0.x)), 1f, ~(~u_input.c.x) | firstTrailingBit(_wgslsmith_sub_i32(4021i, var_2.a.d))), firstLeadingBit(var_4.d));
}

fn func_1(arg_0: f32) -> u32 {
    global3 = array<vec4<f32>, 29>();
    var var_0 = 34960u;
    var var_1 = true;
    let var_2 = func_2();
    var var_3 = func_2().a.d;
    return 34646u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(11758u, u_input.a.x, u_input.b);
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -318f))) - -690f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(728f * 192f) * 1f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(974f, 477f)), -689f, any(vec4<bool>(false, true, true, false)))))), 0i);
    let var_2 = var_1.b;
    var var_3 = any(select(vec3<bool>(false, 0u <= _wgslsmith_mod_u32(u_input.a.x, 52425u), false), !vec3<bool>(var_1.b, false, var_1.b), ~(~1u) >= _wgslsmith_mult_u32(~4294967295u, ~u_input.a.x)));
    let var_4 = 1313f;
    let var_5 = func_1(var_4) >> (~u_input.b % 32u);
    var var_6 = _wgslsmith_clamp_i32(1i, 0i, 32410i);
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~reverseBits(var_1.d), vec2<f32>(-681f, var_4), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, var_1.a)))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, 513f) + vec2<f32>(1000f, -951f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(626f, var_1.c))))));
}

