struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(vec3<u32>(26154u, 40604u, 36313u)), Struct_4(vec3<u32>(66545u, 1u, 12993u)), Struct_4(vec3<u32>(4294967295u, 0u, 59266u)), Struct_4(vec3<u32>(0u, 4294967295u, 52013u)), Struct_4(vec3<u32>(1063u, 4669u, 4294967295u)), Struct_4(vec3<u32>(1u, 0u, 0u)), Struct_4(vec3<u32>(1u, 0u, 10807u)), Struct_4(vec3<u32>(23572u, 1u, 20186u)), Struct_4(vec3<u32>(4294967295u, 11318u, 10226u)), Struct_4(vec3<u32>(4294967295u, 43391u, 4294967295u)), Struct_4(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_4(vec3<u32>(77496u, 0u, 23014u)), Struct_4(vec3<u32>(60527u, 1u, 34861u)), Struct_4(vec3<u32>(23450u, 1u, 42433u)));

var<private> global1: f32 = 941f;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    global2 = true;
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-231f - 163f), -407f, -1000f, -230f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(135f, -1851f, 1771f, 769f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-450f, 1189f, -315f, -1361f) - vec4<f32>(119f, -615f, -1187f, -139f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1114f, -1516f, -663f, 1647f), vec4<f32>(451f, 764f, 638f, 1200f), false)))))));
    return true;
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~u_input.a, firstLeadingBit(31748u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), ~vec3<u32>(u_input.a, 4294967295u, 6104u))), ~vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a) & _wgslsmith_mult_u32(0u, u_input.a), u_input.a, firstLeadingBit(u_input.a) | (u_input.a | u_input.a), select(1u, u_input.a, true)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -391f), max(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b ^ u_input.b), vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.c.x), vec2<i32>(3732i, -4683i)), -34392i, ~u_input.c.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), reverseBits(1u)), u_input.a), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 6479i, u_input.c.x, -1i) | vec4<i32>(-41654i, u_input.c.x, -47794i, 85765i), vec4<i32>(1i, u_input.b.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(u_input.b.x, 2147483647i, u_input.c.x, u_input.c.x)), _wgslsmith_dot_vec4_i32(u_input.b, -u_input.b))), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c.x, u_input.b.x << (u_input.a % 32u), firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.c.x), vec3<i32>(u_input.b.x, 1i, 33536i))), reverseBits(abs(vec4<i32>(-9944i, u_input.c.x, u_input.c.x, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f + _wgslsmith_f_op_f32(ceil(-405f))))), vec4<bool>(false, true && any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), any(vec2<bool>(true, any(vec4<bool>(true, false, true, true)))), var_0.x >= u_input.a));
    let var_2 = min(_wgslsmith_div_vec3_u32(vec3<u32>(~var_0.x, _wgslsmith_mod_u32(var_0.x, var_1.a.c), 43343u), ~(~var_0.zxw)), vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u), var_0.x, _wgslsmith_clamp_u32(firstLeadingBit(var_0.x), ~0u, var_0.x))) << ((_wgslsmith_clamp_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, u_input.a, u_input.a), var_0.yyw), vec3<u32>(var_0.x, var_1.a.c, 4636u)), var_0.yxx, abs(vec3<u32>(var_1.a.c, var_0.x, 145505u))) << (var_0.zzx % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = var_1.a;
    var_3 = Struct_1(-1000f, countOneBits(var_3.b), u_input.a, var_1.b.x);
    return any(var_1.d.yxz);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: u32) -> vec4<bool> {
    let var_0 = select(!vec4<bool>(all(!vec4<bool>(false, arg_0, false, true)), true, true, true), !vec4<bool>(all(!vec3<bool>(arg_0, arg_0, arg_0)), arg_0, true, !all(vec3<bool>(arg_0, true, arg_0))), any(vec3<bool>(all(vec2<bool>(true, true)), arg_0, !arg_0)));
    var var_1 = var_0.zxy;
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 14u)];
    var var_3 = 1355f;
    var var_4 = _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mult_vec3_u32(var_2.a, ~var_2.a), vec3<u32>(countOneBits(_wgslsmith_div_u32(u_input.a, 4294967295u)), var_2.a.x, ~1u), !var_0.x), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_2.a.x, 0u), 1u) ^ arg_2, 1u, ~_wgslsmith_mult_u32(reverseBits(0u), var_2.a.x)), max(vec3<u32>(arg_2, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, u_input.a, 4294967295u), var_2.a), ~0u), _wgslsmith_mod_u32(118534u, ~0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 60163u), var_2.a.xy), 11935u, ~(4294967295u & u_input.a))));
    return vec4<bool>(!any(var_0.zww) & true, !(!all(vec3<bool>(false, var_1.x, false))), !var_1.x, select(true, var_1.x, true));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-arg_2.b.yxx, u_input.b.wzy, u_input.b.zzw), u_input.b.wxw) & -1i, ~arg_2.d);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1635f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-153f - arg_2.a))) * _wgslsmith_f_op_f32(select(623f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(513f, -529f)), arg_0.x))), arg_1.x));
    var_0 = u_input.c.x;
    var var_2 = firstLeadingBit(~(vec3<i32>(arg_2.d, arg_2.b.x ^ 0i, -1i) ^ (vec3<i32>(u_input.b.x, 16593i, -2147483647i) ^ vec3<i32>(u_input.c.x, 1i, -24350i))));
    return Struct_3(max(countOneBits(u_input.b.x), ~u_input.b.x), ~(~(~(~vec4<u32>(u_input.a, 4294967295u, 39616u, 4294967295u)))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    return func_5(select(select(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), func_2(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -21070i, u_input.b.x, u_input.c.x), u_input.b))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), any(vec4<bool>(false, false, true, false))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))), !(!any(vec2<bool>(true, true)))), func_4(func_2(vec4<i32>(u_input.b.x, -13335i, 15071i, 0i)) && func_3(), -1i, ~_wgslsmith_mult_u32(u_input.a, 1u) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 11887u, 16422u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1154u)) << (reverseBits(25895u) % 32u)) % 32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -1000f) - arg_0)), vec4<i32>(firstTrailingBit(-8560i) >> (u_input.a % 32u), 0i, u_input.c.x, abs(~(-1i))), 5068u, -17586i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_clamp_i32(~(-u_input.c.x), u_input.b.x, 1i) <= _wgslsmith_dot_vec2_i32(u_input.b.zw, firstLeadingBit(_wgslsmith_div_vec2_i32(firstTrailingBit(u_input.c), ~vec2<i32>(-1i, u_input.b.x))));
    global1 = -2027f;
    var var_0 = func_1(-1180f);
    var var_1 = Struct_1(1165f, vec4<i32>(-(~u_input.c.x), 1i, _wgslsmith_sub_i32(1i, firstLeadingBit(u_input.b.x)), ~1i) | -u_input.b, _wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(14365u, 1u, 4294967295u, 67784u)), vec4<u32>(10662u, 21187u, 31898u, 1u), vec4<bool>(false, false, false, false)), min(vec4<u32>(u_input.a, u_input.a, 18792u, 26534u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), var_0.b))) << (0u % 32u), var_0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1154f, var_1.a) + vec2<f32>(var_1.a, var_1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-152f, var_1.a))))));
    let var_3 = Struct_2(Struct_1(767f, _wgslsmith_clamp_vec4_i32(vec4<i32>(select(var_0.a, 50579i, false), -var_0.a, func_5(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), Struct_1(var_1.a, vec4<i32>(1i, var_0.a, u_input.c.x, u_input.b.x), u_input.a, 1i)).a, 0i ^ var_0.a), countOneBits(u_input.b), -u_input.b), _wgslsmith_mult_u32(u_input.a, 0u) | ~var_0.b.x, -1i), _wgslsmith_add_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(1i, 55437i, -50139i, 54785i), vec4<i32>(9091i, var_1.b.x, u_input.b.x, -2165i)), countOneBits(vec4<i32>(u_input.c.x, -4513i, var_0.a, 2147483647i))), var_1.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1695f, _wgslsmith_div_f32(var_1.a, 1186f), true)))), var_2.x)), vec4<bool>(false, true, func_2(vec4<i32>(var_0.a, var_0.a, -1i, u_input.b.x)), true));
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-select(-5988i, var_0.a, false) << (~var_1.c % 32u), ~u_input.b.x));
}

