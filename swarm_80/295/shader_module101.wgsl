struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(1069f, 753f, -2023f), vec3<f32>(1127f, 162f, 1103f), vec3<f32>(671f, -283f, 1118f), vec3<f32>(130f, 311f, -533f), vec3<f32>(522f, 1000f, 1721f), vec3<f32>(-1000f, 298f, -1000f), vec3<f32>(-1143f, -1194f, 1734f), vec3<f32>(-168f, 664f, -1432f), vec3<f32>(612f, 1000f, -443f), vec3<f32>(-750f, -1095f, 1731f), vec3<f32>(121f, -658f, -227f), vec3<f32>(1538f, 370f, -2030f));

var<private> global2: Struct_3 = Struct_3(957f, vec2<f32>(522f, 464f), vec3<f32>(1081f, 2004f, 1165f), 5115u);

var<private> global3: vec3<u32> = vec3<u32>(0u, 4294967295u, 26853u);

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 79224u, 0u, 11055u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = global4.x > 55725u;
    let var_1 = -2147483647i;
    global3 = global4.wyz;
    let var_2 = 0i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1011f)) + -355f))));
    return vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~min(43265u, 4294967295u), arg_2.b.x), select(55411u, ~(~global2.d), true), ~48069u), ~arg_2.b.x & 24269u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    let var_0 = global4.yzy;
    global3 = countOneBits(global4.yyz);
    let var_1 = _wgslsmith_f_op_f32(-arg_1.c.x);
    global1 = array<vec3<f32>, 12>();
    let var_2 = Struct_1(~_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, 59782i, arg_2.x), vec3<i32>(select(23i, u_input.b, true), u_input.b, _wgslsmith_mod_i32(2147483647i, arg_2.x))), func_3(!arg_0.x, vec3<i32>(~arg_2.x, _wgslsmith_div_i32(arg_2.x, u_input.a), 1i), Struct_1(-countOneBits(arg_2.ywz), ~vec2<u32>(33250u, global2.d), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1.c + vec3<f32>(-1312f, global2.b.x, 884f)))), var_1, !select(vec3<bool>(true, false, arg_0.x), vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), arg_1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2524f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f)), false)))), vec3<bool>(true, true, true));
    return (~(~countOneBits(35098u)) ^ _wgslsmith_dot_vec3_u32(~global4.xww, global4.wyw)) ^ ~44703u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32((_wgslsmith_add_i32(1i, u_input.b) & reverseBits(arg_1.x)) & _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(arg_1.x)), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, 2147483647i), -12821i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.x, u_input.b), min(vec3<i32>(-17537i, 37732i, arg_1.x), arg_1)))), _wgslsmith_dot_vec4_i32(-abs(~vec4<i32>(arg_1.x, u_input.a, -1i, u_input.b)), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, arg_1.x, arg_1.x, u_input.a), vec4<i32>(u_input.a, 38640i, arg_1.x, u_input.b)))), -2147483647i, ~(-11463i));
    global2 = Struct_3(_wgslsmith_f_op_f32(global2.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.a)), _wgslsmith_f_op_f32(1000f - -561f))), global2.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(min(837f, 1174f))))), global2.c.x, _wgslsmith_f_op_f32(-global2.a)), ~((global4.x >> (~arg_0.x % 32u)) | ~func_3(false, vec3<i32>(-1i, -46103i, var_0.x), Struct_1(arg_1, vec2<u32>(arg_0.x, 58763u), global1[_wgslsmith_index_u32(global3.x, 12u)], 995f, vec3<bool>(true, true, false))).x));
    var var_1 = _wgslsmith_clamp_i32(arg_1.x, countOneBits(_wgslsmith_add_i32(var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.yyw, var_0.xyw), var_0.wyy))), _wgslsmith_dot_vec2_i32(min(_wgslsmith_mod_vec2_i32(var_0.wy, var_0.wy) ^ vec2<i32>(-1i, 14328i), select(var_0.wx, ~vec2<i32>(arg_1.x, -2147483647i), true)), arg_1.xy));
    global3 = ~vec3<u32>(max(_wgslsmith_sub_u32(abs(1u), func_3(false, vec3<i32>(25102i, var_0.x, arg_1.x), Struct_1(var_0.zzw, vec2<u32>(4294967295u, global3.x), vec3<f32>(global2.c.x, global2.c.x, global2.a), -689f, vec3<bool>(true, true, true))).x), min(global2.d, 1u)), 15780u, 1u);
    var_1 = u_input.a;
    return arg_0.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_1 {
    global2 = arg_1;
    global3 = vec3<u32>(1u, 0u, _wgslsmith_mod_u32(~52832u, 1u));
    let var_0 = all(vec2<bool>((-2147483647i ^ max(2147483647i, u_input.a)) == u_input.b, false & !(global2.b.x < -649f)));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 264f)) - 893f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f - -466f)), false), var_0);
    let var_2 = Struct_2(~(~4702u), vec4<u32>(18623u, global3.x, 47596u, func_4(vec3<u32>(func_2(vec2<bool>(var_0, var_1.x), Struct_3(934f, vec2<f32>(562f, global2.a), vec3<f32>(-675f, -1555f, global2.b.x), global3.x), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.b)), 0u, global4.x), -(~vec3<i32>(-2147483647i, u_input.b, -1i)))));
    return Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, -3431i, u_input.a, u_input.b)), -vec4<i32>(12506i, 13650i, u_input.a, 11019i)), _wgslsmith_div_i32(~(-2147483647i), 1i) | ~u_input.b, u_input.b ^ u_input.b), global3.xy, global1[_wgslsmith_index_u32(1u | arg_0.x, 12u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * arg_1.a) - _wgslsmith_f_op_f32(arg_1.b.x - 1000f)) - _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(global2.a * global2.a))))), select(select(vec3<bool>(false, true, var_0), !(!vec3<bool>(var_1.x, false, var_0)), select(select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, true, false), vec3<bool>(false, true, var_0)), vec3<bool>(true, false, var_1.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_0), vec3<bool>(true, var_1.x, true)))), select(vec3<bool>(var_1.x, false, !var_0), vec3<bool>(var_1.x, select(false, var_0, var_0), true), !(!vec3<bool>(var_1.x, false, var_1.x))), all(select(vec3<bool>(true, var_0, true), select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_1.x, false, true), vec3<bool>(false, true, var_1.x)), all(vec2<bool>(var_1.x, var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 12>();
    global0 = array<vec2<bool>, 2>();
    let var_0 = func_1(~(~_wgslsmith_div_vec2_u32(vec2<u32>(22256u, 1u), global3.yx)) | abs(~_wgslsmith_mult_vec2_u32(global4.zz, vec2<u32>(global2.d, 44051u))), Struct_3(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(global2.d, 12u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(0u), ~global2.d, _wgslsmith_add_u32(global2.d, global3.x), 0u), ~vec4<u32>(0u, 41303u, 0u, 25254u))));
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1519f - 1000f))), _wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), -2100f)), global2.c, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.b.x, global2.d, 0u), global4.xwy, var_0.e.x), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global2.d, 19659u, 1u)), ~vec3<u32>(global4.x, global2.d, global2.d))));
    global1 = array<vec3<f32>, 12>();
    let var_2 = var_0.a;
    let var_3 = Struct_3(-1271f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1729f, global2.c.x)) + var_1.c.zx)), var_1.b, func_1(vec2<u32>(var_1.d, 2040u), var_1).e.xz)), _wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_add_u32(_wgslsmith_mod_u32(func_4(min(vec3<u32>(0u, global2.d, var_1.d), vec3<u32>(var_1.d, 4294967295u, 1u)), _wgslsmith_div_vec3_i32(vec3<i32>(31158i, var_2.x, 38150i), var_0.a)), ~1u), var_0.b.x ^ ~(~global3.x)));
    global3 = _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, ~17861u, var_3.d), vec3<u32>(1u, global2.d, ~var_3.d << (var_0.b.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~firstTrailingBit(0i)), var_2.x, _wgslsmith_div_i32(var_2.x | _wgslsmith_mod_i32(var_2.x, -21934i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, var_0.a.x, var_2.x, 42607i)), vec4<i32>(var_2.x, -7177i, 67837i, -1i))), func_1(~reverseBits(global3.xz), Struct_3(_wgslsmith_f_op_f32(round(var_3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.a)), _wgslsmith_f_op_vec3_f32(-global2.c), var_0.b.x)).a.x));
}

