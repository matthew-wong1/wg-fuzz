struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-115586i, -73i, i32(-2147483648), 2147483647i), vec4<i32>(-41573i, -3561i, -1i, 0i), vec4<i32>(44793i, 1i, i32(-2147483648), -27301i), vec4<i32>(-11328i, 20869i, 2147483647i, 53288i), vec4<i32>(-24162i, -25406i, 7429i, 2147483647i), vec4<i32>(-33628i, -27065i, 30384i, -32220i), vec4<i32>(-1i, i32(-2147483648), 21204i, -52908i), vec4<i32>(1i, 0i, 1i, i32(-2147483648)), vec4<i32>(-1i, -9974i, -76599i, -51109i), vec4<i32>(-1i, -1889i, 2147483647i, 12279i), vec4<i32>(-18416i, -15350i, 1i, 1i), vec4<i32>(0i, -43567i, -1i, -53429i), vec4<i32>(-1i, 1i, -31324i, 2147483647i), vec4<i32>(1i, 0i, -20087i, 1i), vec4<i32>(2147483647i, 2147483647i, -51856i, 0i), vec4<i32>(0i, -1i, 2147483647i, -30226i), vec4<i32>(48810i, -22497i, 6538i, 2147483647i), vec4<i32>(38494i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(9280i, 19999i, -36858i, 1i), vec4<i32>(9159i, 27449i, -1i, 24162i), vec4<i32>(1i, -32356i, i32(-2147483648), 1i), vec4<i32>(8001i, 2147483647i, 2147483647i, -17124i));

var<private> global3: vec4<u32> = vec4<u32>(144591u, 0u, 4294967295u, 1u);

var<private> global4: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<f32>(598f, 780f, 353f), vec2<bool>(true, true), -3666i), Struct_4(vec3<f32>(-879f, 102f, -1103f), vec2<bool>(true, false), 1533i), Struct_4(vec3<f32>(2651f, 948f, -2238f), vec2<bool>(false, true), -4135i), Struct_4(vec3<f32>(-2174f, 233f, 271f), vec2<bool>(false, true), 2147483647i), Struct_4(vec3<f32>(-286f, -995f, 1514f), vec2<bool>(true, false), 25254i), Struct_4(vec3<f32>(-502f, 367f, -1311f), vec2<bool>(true, true), 20879i), Struct_4(vec3<f32>(498f, 1784f, -196f), vec2<bool>(false, true), -3141i), Struct_4(vec3<f32>(687f, -107f, -156f), vec2<bool>(true, true), -5932i), Struct_4(vec3<f32>(1000f, -1177f, 482f), vec2<bool>(true, false), 1i), Struct_4(vec3<f32>(798f, -797f, 105f), vec2<bool>(true, false), -12399i), Struct_4(vec3<f32>(693f, 124f, -817f), vec2<bool>(true, false), -16900i), Struct_4(vec3<f32>(1035f, -925f, -104f), vec2<bool>(false, true), 14900i), Struct_4(vec3<f32>(-768f, 884f, 845f), vec2<bool>(true, true), 1i), Struct_4(vec3<f32>(364f, -1583f, 1763f), vec2<bool>(true, true), 0i), Struct_4(vec3<f32>(724f, -617f, -1944f), vec2<bool>(false, true), -1i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<i32>) -> f32 {
    return arg_2.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec3<f32> {
    global2 = array<vec4<i32>, 22>();
    global0 = array<Struct_4, 14>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1278f)), _wgslsmith_f_op_f32(trunc(arg_1.b))) * 262f))) > arg_0;
    global3 = ~(~vec4<u32>(arg_1.a, ~global3.x, 39745u, _wgslsmith_dot_vec3_u32(vec3<u32>(23405u, 0u, arg_1.a), select(vec3<u32>(0u, 0u, 53758u), global3.wyy, arg_1.c.x))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.a.yz, vec2<u32>(1u, u_input.a.x), global3.wx))), _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a.ww, global3.yw), select(vec2<u32>(39344u, global3.x), abs(vec2<u32>(1u, arg_1.a)), select(vec2<bool>(arg_1.c.x, arg_1.c.x), arg_1.c.xz, vec2<bool>(false, arg_1.c.x))))) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(arg_1.a, 111906u, global3.x, select(arg_1.a, u_input.a.x, arg_1.c.x))), u_input.a) % 32u), 14u)];
    return vec3<f32>(533f, _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(f32(-1f) * -808f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + _wgslsmith_f_op_f32(select(226f, 177f, arg_1.c.x))))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-200f + _wgslsmith_f_op_f32(func_3(Struct_3(global3.x, 1000f, vec3<bool>(true, false, true)), Struct_1(0i), Struct_4(vec3<f32>(1411f, -247f, -1673f), vec2<bool>(true, true), global1.x), vec2<i32>(-1i, global1.x) | vec2<i32>(-8028i, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1548f))))), Struct_3(~global3.x, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-658f, -225f)) * _wgslsmith_div_f32(209f, 1000f))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true))));
    global3 = vec4<u32>(1u, u_input.a.x, ~48128u, global3.x);
    global0 = array<Struct_4, 14>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) + 851f)) * _wgslsmith_f_op_f32(abs(-1747f)));
    global1 = u_input.d.yzz;
    return u_input.d.x;
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_1(-min(func_2(), -1i));
    var var_1 = Struct_1(-u_input.d.x);
    global4 = array<Struct_4, 15>();
    global3 = u_input.a;
    var var_2 = any(vec4<bool>(false, true, true, arg_0.a.x));
    return !arg_0.a.wy;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = !vec4<bool>(false, true, all(!vec4<bool>(arg_0.c.x, true, arg_2.c.x, arg_2.c.x)), arg_1.x & true);
    var var_1 = 25354u;
    var var_2 = !select(!arg_0.c.yz, select(vec2<bool>(arg_0.c.x, false), arg_0.c.xx, (i32(-1i) * -45101i) >= (u_input.d.x << (arg_2.a % 32u))), true && (countOneBits(4294967295u) < arg_2.a));
    return _wgslsmith_sub_vec2_i32(-(vec2<i32>(~global1.x, global1.x) ^ _wgslsmith_sub_vec2_i32(~vec2<i32>(42926i, global1.x), vec2<i32>(global1.x, -14340i))), vec2<i32>(u_input.d.x, -(-12147i << (firstLeadingBit(arg_2.a) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 22>();
    var var_0 = Struct_1(u_input.d.x >> (_wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(u_input.a.x, global3.x, 0u) | countOneBits(63635u)) % 32u));
    let var_1 = Struct_3(60929u, 1f, select(!vec3<bool>(false, false, all(vec2<bool>(true, false))), vec3<bool>(true, true, false), vec3<bool>(true, !select(false, false, false), true)));
    var var_2 = ~u_input.a.x;
    var var_3 = ~(-func_5(Struct_3(77216u, var_1.b, vec3<bool>(false, false, var_1.c.x)), func_1(Struct_2(vec4<bool>(var_1.c.x, true, var_1.c.x, false), var_1.b)), var_1)) >> (((_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(var_1.a, u_input.a.x)), max(vec2<u32>(var_1.a, var_1.a), vec2<u32>(0u, global3.x))) << (~min(vec2<u32>(24393u, var_1.a), vec2<u32>(41559u, u_input.a.x)) % vec2<u32>(32u))) << (~countOneBits(global3.wz | vec2<u32>(4713u, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(vec2<i32>(~0i, select(-54253i, var_0.a, true)), ~max(vec2<i32>(-4611i, 0i), vec2<i32>(0i, global1.x)))), global2[_wgslsmith_index_u32(u_input.a.x >> (~95500u % 32u), 22u)] | u_input.d, 991f, select(abs(u_input.a), ~countOneBits(u_input.a), vec4<bool>(!any(vec3<bool>(false, var_1.c.x, var_1.c.x)), ~var_0.a > ~u_input.d.x, var_1.c.x, var_1.c.x)), ~56636u);
}

