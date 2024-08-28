struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(62057i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 48285i, 2147483647i), vec3<i32>(59755i, -75075i, i32(-2147483648)), vec3<i32>(-27004i, 2147483647i, 1i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(19109i, -54024i, 11484i), vec3<i32>(i32(-2147483648), 1i, 8935i), vec3<i32>(-1443i, 2147483647i, 2147483647i), vec3<i32>(56989i, 1i, 1i), vec3<i32>(6828i, 28483i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, -43042i), vec3<i32>(-3500i, -58979i, 5921i), vec3<i32>(542i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, -37690i, -1i), vec3<i32>(-24194i, 1453i, 0i), vec3<i32>(1i, -28566i, -24097i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-12189i, -1i, -47677i), vec3<i32>(i32(-2147483648), i32(-2147483648), -10012i), vec3<i32>(64413i, 0i, 78973i), vec3<i32>(-62805i, 26768i, 2147483647i), vec3<i32>(-5991i, 2147483647i, -11366i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    let var_0 = ~u_input.e;
    let var_1 = Struct_2(~1u, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstTrailingBit(1u), ~41448u, ~var_0.x), 22u)]);
    let var_2 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)));
    return _wgslsmith_f_op_f32(step(-1383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -661f))))));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec4<u32> {
    global0 = array<vec3<i32>, 22>();
    let var_0 = select(arg_0.c.b.zw, arg_0.c.b.yw, arg_0.e.b.x);
    var var_1 = Struct_2(~_wgslsmith_mult_u32(u_input.c, 109272u) | firstTrailingBit(arg_1), global0[_wgslsmith_index_u32(u_input.e.x, 22u)]);
    let var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 15398u), select(u_input.e.xz, vec2<u32>(u_input.c, 46715u), arg_0.c.b.x)), u_input.c, 21597u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 4294967295u, 1u, var_1.a), max(vec4<u32>(0u, 4294967295u, 3565u, var_1.a), vec4<u32>(arg_1, arg_1, 1u, 63756u)), _wgslsmith_add_vec4_u32(vec4<u32>(5405u, 1u, 45342u, 16017u), vec4<u32>(arg_1, 4294967295u, u_input.c, 60498u))) >> (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, arg_1, 28623u), vec4<u32>(u_input.c, 4294967295u, u_input.e.x, 54284u))) % vec4<u32>(32u)));
    let var_3 = Struct_2(57771u, var_1.b);
    return ~(~(var_2 | vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.yx, u_input.e.zy), 15457u, 7015u, var_2.x)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = array<vec3<i32>, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2528f), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(u_input.b != (arg_0.b.x >> (4294967295u % 32u)), true, false, true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1166f, 614f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 800f, 982f)) - vec3<f32>(-1295f, -693f, 1661f)))))));
    let var_1 = ~u_input.e.zx;
    let var_2 = !(u_input.b > ~(~(~3254i)));
    var var_3 = _wgslsmith_dot_vec4_u32(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, var_0.a, -876f, var_0.c.x))), false != var_2, Struct_1(1367f, var_0.b, var_0.c), -1i, Struct_1(var_0.a, vec4<bool>(false, var_0.b.x, var_0.b.x, true), vec3<f32>(-1225f, var_0.c.x, var_0.c.x))), 66608u) | (_wgslsmith_add_vec4_u32(func_3(Struct_3(vec4<f32>(303f, var_0.c.x, 390f, 226f), false, Struct_1(-401f, vec4<bool>(false, false, var_2, var_0.b.x), vec3<f32>(var_0.c.x, var_0.a, var_0.a)), arg_0.b.x, var_0), var_1.x), ~vec4<u32>(2279u, 4294967295u, 4294967295u, var_1.x)) >> (abs(vec4<u32>(1u, var_1.x, 11097u, 1u)) % vec4<u32>(32u))), select(max(vec4<u32>(_wgslsmith_mult_u32(arg_0.a, 1u), arg_0.a, max(var_1.x, u_input.e.x), _wgslsmith_mult_u32(arg_0.a, arg_0.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.c, 20764u), vec4<u32>(var_1.x, 10019u, arg_0.a, var_1.x)) & abs(vec4<u32>(49455u, 0u, var_1.x, u_input.e.x))), ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, arg_0.a, arg_0.a, 5764u), vec4<u32>(4294967295u, 58642u, arg_0.a, 0u)), vec4<u32>(1u, 4294967295u, arg_0.a, var_1.x) >> (vec4<u32>(0u, 4294967295u, var_1.x, u_input.e.x) % vec4<u32>(32u)), select(vec4<bool>(var_2, true, true, false), var_0.b, vec4<bool>(false, true, true, false))), select(var_0.b, !(!var_0.b), !select(var_0.b, var_0.b, true))));
    return ~(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    var var_0 = !(_wgslsmith_f_op_f32(func_1()) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f + 1000f) * _wgslsmith_f_op_f32(trunc(973f)))) & any(!vec2<bool>(true, all(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(653f * -804f)), !select(false, true, true))) - _wgslsmith_f_op_f32(-488f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1003f + -908f), _wgslsmith_f_op_f32(2011f + 285f))))));
    global0 = array<vec3<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_2(Struct_2(reverseBits(u_input.c), firstLeadingBit(vec3<i32>(u_input.b, -2633i, u_input.b)))), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e.x), u_input.e.yz), 27101u), ~(~u_input.c << ((u_input.c ^ 4294967295u) % 32u)), u_input.c), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(~u_input.d, reverseBits(2147483647i), reverseBits(u_input.b), select(u_input.b, u_input.d, false))), ~(-vec4<i32>(-2147483647i, u_input.d, 19308i, u_input.b))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-337f, 570f, -384f, 3278f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, 238f, -1000f, -1366f))))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-516f, -263f))), _wgslsmith_f_op_f32(-1f)), vec3<f32>(416f, 609f, 1f), vec3<bool>(any(vec3<bool>(true, true, true)), true & all(vec4<bool>(true, false, false, false)), true))));
}

