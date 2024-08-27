struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(40201u, 0u, 66098u);

var<private> global1: array<Struct_2, 29>;

var<private> global2: Struct_2 = Struct_2(8974i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(~_wgslsmith_add_i32(-2147483647i, u_input.c), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(56251i, u_input.b.x), global2.a, _wgslsmith_sub_i32(-1023i, global2.a))), 1i) >> (vec2<u32>(~global0.x, ~firstTrailingBit(_wgslsmith_sub_u32(25309u, 21261u))) % vec2<u32>(32u));
    var var_1 = Struct_1(-562f, abs(global0.x), -u_input.b, -29297i);
    let var_2 = abs(~var_0.x | _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.x, -13966i >> (var_1.b % 32u)), 1i, -53855i));
    let var_3 = _wgslsmith_f_op_f32(1f + 421f);
    let var_4 = Struct_4(-611f, true);
    return var_1.b;
}

fn func_2() -> vec4<f32> {
    global2 = Struct_2(-select(-21397i, min(20600i, 0i), !(0u == global0.x)));
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, func_3(), countOneBits(4294967295u)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 0u, global0.x), vec3<u32>(5527u, global0.x, global0.x)) << ((vec3<u32>(0u, global0.x, 0u) | vec3<u32>(1u, 1064u, 0u)) % vec3<u32>(32u)))), firstLeadingBit(global0.x));
    let var_1 = -(vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-8507i, u_input.b.x, 1i), u_input.b.zzy), reverseBits(-2147483647i)), 1i) & (_wgslsmith_mod_vec3_i32(u_input.b.wxw, vec3<i32>(-34049i, u_input.b.x, u_input.b.x)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 0u, 46150u), vec3<u32>(var_0.x, 0u, 1u)) % vec3<u32>(32u))));
    var var_2 = ~(-_wgslsmith_mod_i32(var_1.x, -2147483647i));
    var_2 = _wgslsmith_mod_i32(-17089i, 2147483647i);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(885f, 1000f, -1457f, -973f), vec4<f32>(1526f, -1091f, 1020f, -1790f), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-564f, -203f, -397f, 1451f)), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1014f, -1000f, 679f, -1272f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(444f + 1000f), _wgslsmith_div_f32(506f, -555f), _wgslsmith_f_op_f32(1776f * -736f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 421f, 985f, 1090f))))), !(4294967295u == var_0.x)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_5(Struct_2(0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * 168f), 581f, _wgslsmith_f_op_f32(-arg_0.x), 1285f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 1561f, -635f) + vec4<f32>(arg_0.x, 1000f, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, arg_0.x, 780f, -1713f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, 195f, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(step(1029f, arg_0.x)))), arg_0.x)), 1u, u_input.b.yz);
    let var_1 = var_0;
    global0 = _wgslsmith_sub_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.d, 25251u), vec3<u32>(var_0.d, var_0.d, var_0.d)), 58760u), vec3<u32>(1u ^ var_0.d, 74411u, 53320u))), vec3<u32>(~global0.x, ~reverseBits(firstLeadingBit(var_0.d)), 25530u));
    global1 = array<Struct_2, 29>();
    var var_2 = u_input.b;
    return _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(~(-select(2147483647i, 6281i, false)), ~_wgslsmith_clamp_i32(arg_2.a, arg_2.a, abs(var_0.e.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(max(-28389i, var_0.a.a), arg_2.a), vec2<i32>(min(5521i, -2147483647i), 1i)), _wgslsmith_sub_i32(-28409i, 21008i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(global2.a, -global2.a << (global0.x % 32u)) | 1i, _wgslsmith_clamp_i32(11890i, 5797i | -global2.a, -(~(-2147483647i))) ^ -(~(i32(-1i) * -2147483647i)));
    let var_1 = select(_wgslsmith_mod_vec4_i32(select(vec4<i32>(1i, ~global2.a, -1i, func_1(vec3<f32>(-455f, 809f, -350f), global2.a, Struct_2(var_0.x))), vec4<i32>(1i, _wgslsmith_clamp_i32(global2.a, -1i, global2.a), -15474i, select(var_0.x, 1i, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), vec4<i32>(_wgslsmith_clamp_i32(global2.a, 1i, var_0.x), _wgslsmith_div_i32(i32(-1i) * -4606i, global2.a << (global0.x % 32u)), ~abs(global2.a), global2.a)), min(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, global2.a, 0i, 6149i), u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a, 0i, 55097i, 1i), u_input.b)), abs(vec4<i32>(~14251i, u_input.c << (global0.x % 32u), -4858i, i32(-1i) * -2147483647i))), !vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, false));
    var_0 = u_input.b.xw;
    var_0 = select(vec2<i32>(countOneBits(func_1(vec3<f32>(2012f, 1498f, -746f), var_1.x, Struct_2(var_1.x))), _wgslsmith_dot_vec2_i32(-u_input.b.wz, _wgslsmith_clamp_vec2_i32(var_1.ww, u_input.b.zw, vec2<i32>(var_1.x, -1i)) ^ _wgslsmith_sub_vec2_i32(var_1.yz, vec2<i32>(var_0.x, -1i)))), -abs(vec2<i32>(_wgslsmith_add_i32(24785i, u_input.b.x), 1i)), any(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true))));
    let var_2 = global1[_wgslsmith_index_u32(~global0.x ^ ~_wgslsmith_dot_vec2_u32(~vec2<u32>(110752u, global0.x), global0.yz), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2682f, -152f, -701f, 519f), vec4<f32>(1000f, -137f, -180f, -792f), vec4<bool>(false, false, true, false))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(741f, -587f, 1000f, 330f), vec4<f32>(-732f, -803f, 1000f, 309f), true)))))), ~(~global0.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, (u_input.b << (vec4<u32>(79647u, global0.x, 18924u, 35717u) % vec4<u32>(32u))) >> (max(vec4<u32>(54156u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 4294967295u, 1u, global0.x)) % vec4<u32>(32u)), u_input.b), var_1, -(~u_input.b)));
}

