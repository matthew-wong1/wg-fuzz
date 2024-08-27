struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<f32>(-971f, -2247f, 364f), 1u), Struct_1(vec3<f32>(384f, 193f, -1128f), 4294967295u), Struct_1(vec3<f32>(1342f, -211f, 619f), 1u), Struct_1(vec3<f32>(-134f, -1000f, -165f), 1u), Struct_1(vec3<f32>(-487f, 135f, -1000f), 4294967295u), Struct_1(vec3<f32>(-1091f, -2030f, 1881f), 4294967295u), Struct_1(vec3<f32>(-392f, -1038f, 462f), 4294967295u), Struct_1(vec3<f32>(-882f, 730f, -824f), 4294967295u), Struct_1(vec3<f32>(542f, -1619f, -215f), 15572u), Struct_1(vec3<f32>(-506f, -239f, -180f), 85147u));

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-738f, -1772f, -310f, -317f), vec4<f32>(305f, -563f, -848f, 434f), vec4<f32>(-124f, -1000f, -283f, -1291f), vec4<f32>(807f, 1749f, -220f, 3027f), vec4<f32>(345f, -1017f, 1000f, -1973f), vec4<f32>(271f, -1314f, 165f, -553f), vec4<f32>(2788f, -1141f, 1023f, -725f), vec4<f32>(-669f, -477f, 1079f, -749f), vec4<f32>(1502f, -1861f, -731f, 290f), vec4<f32>(102f, -447f, -180f, 1289f), vec4<f32>(-600f, -327f, 614f, -285f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> u32 {
    let var_0 = true;
    var var_1 = u_input.d.x;
    return reverseBits(1u);
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 23u)];
    var var_1 = firstLeadingBit(u_input.d.zyx);
    var var_2 = Struct_2(~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(abs(u_input.d), min(vec4<i32>(-27909i, var_1.x, 2147483647i, u_input.c.x), u_input.d)), vec4<i32>(var_1.x, -42598i, -8985i, 1i) << (~vec4<u32>(var_0.c.b, 4294967295u, 1u, u_input.a.x) % vec4<u32>(32u)), ~vec4<i32>(var_0.a.x, 1i, -2147483647i, 2147483647i)), -1i, var_0.c, var_0.c.a.x, func_2());
    let var_3 = global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(var_2.e, ~u_input.a.x) ^ var_2.c.b, ~func_2()), 11u)];
    global2 = array<vec4<f32>, 11>();
    return Struct_4(Struct_3(_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(4294967295u, var_2.c.b)) >> (53458u % 32u), ~(-2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-380f, 1074f, -1299f)), 1u), global1[_wgslsmith_index_u32(u_input.e, 10u)]), var_0.a.yzy);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_u32(select(~u_input.b.xwx, u_input.b.wyy, false), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_0.a.d.b, arg_0.a.a, arg_0.a.a), _wgslsmith_add_vec3_u32(u_input.b.yyx & vec3<u32>(0u, u_input.a.x, 4294967295u), ~vec3<u32>(u_input.a.x, arg_0.a.a, arg_0.a.a))));
    var var_1 = ~(-arg_0.a.b);
    let var_2 = vec4<bool>(any(!vec3<bool>(arg_0.a.c.b < u_input.e, arg_1.x > -53036i, true)), arg_0.a.b >= ~arg_0.b.x, all(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), any(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, false)), !(arg_0.a.d.a.x == arg_0.a.c.a.x))), all(!vec2<bool>(true, all(vec3<bool>(true, false, false)))));
    return arg_0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: f32) -> Struct_4 {
    var var_0 = arg_2.x;
    let var_1 = Struct_4(Struct_3(~firstTrailingBit(arg_1.d.b), arg_1.b, func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_3, -325f)))).a.d, arg_1.d), arg_0.xww | vec3<i32>(0i, 1i, _wgslsmith_add_i32(-arg_0.x, func_3(Struct_4(Struct_3(1u, 2147483647i, Struct_1(vec3<f32>(arg_3, arg_1.c.a.x, 1663f), 24406u), Struct_1(arg_1.c.a, 0u)), vec3<i32>(28353i, -2674i, u_input.d.x)), vec2<i32>(80969i, arg_0.x)).b)));
    let var_2 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.e, 46346u)), ~_wgslsmith_mult_u32(var_1.a.c.b, 37638u), ~_wgslsmith_div_u32(arg_1.a, 0u), 1u), u_input.b);
    var var_3 = func_3(var_1, u_input.d.yy).d;
    var var_4 = arg_2.x;
    return Struct_4(arg_1, arg_0.yzy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.d, func_3(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, 1477f, true))))), -u_input.d.wx), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), u_input.e <= 4294967295u)), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-var_0.b.x & ~var_0.b.x, ~(~_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(-15133i, 1i)))), func_1(var_0.a.c.a.x).a.c.b, -1029f);
}

