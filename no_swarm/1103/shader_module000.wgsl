struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
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

var<private> global0: vec3<f32> = vec3<f32>(-2001f, -522f, -997f);

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = select(u_input.a, _wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, 53418i, 1i, -2147483647i), u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, u_input.a)) << (~firstTrailingBit(vec4<u32>(4294967295u, arg_0.x, 76026u, 54003u)) % vec4<u32>(32u)), all(!(!vec4<bool>(true, arg_2, arg_2, true)))) >> (~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, arg_0.x, 50136u, u_input.c)), select(0u, u_input.c, false), _wgslsmith_mod_u32(980u, u_input.c), _wgslsmith_sub_u32(12640u, 0u))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1644f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, global0.x, arg_2)) - _wgslsmith_f_op_f32(419f + arg_1)), global0.x) + vec3<f32>(131f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 442f))));
    global1 = global0.x;
    let var_1 = _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2218f + 1675f))));
    let var_2 = firstTrailingBit(max(var_0.x, var_0.x));
    return countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 29072u, 1u), vec4<u32>(4294967295u, 29522u, arg_0.x, 4294967295u)), vec4<u32>(arg_0.x, u_input.c, 0u, arg_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(u_input.b.x, 11913u, 58682u, 8571u) & vec4<u32>(4294967295u, arg_0.x, 4294967295u, 9925u)))) >> (_wgslsmith_dot_vec3_u32(arg_0, arg_0) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = u_input.c;
    var var_1 = Struct_2(i32(-1i) * -(2147483647i & _wgslsmith_div_i32(31941i, u_input.a.x)), min(~u_input.b, ~u_input.b), select(abs((vec4<u32>(u_input.c, u_input.b.x, 0u, 0u) << (vec4<u32>(u_input.c, 49963u, var_0, u_input.c) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.c, var_0), vec4<u32>(81819u, u_input.b.x, 64008u, u_input.c))), (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, var_0, 19084u, var_0), vec4<u32>(u_input.c, u_input.b.x, 41417u, 1u)) ^ ~vec4<u32>(1u, 45515u, 14239u, u_input.b.x)) & vec4<u32>(~u_input.c, func_3(vec3<u32>(var_0, var_0, 0u), arg_0.a.x, arg_0.b.x), u_input.c >> (4294967295u % 32u), ~var_0), vec4<bool>(false, false, !arg_0.c & !arg_0.c, any(arg_0.b) | true)), arg_0, _wgslsmith_mult_u32(min(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 5475u), 49614u, select(7473u, 2678u, arg_0.b.x)), u_input.c), 0u));
    var var_2 = var_1.d.c | true;
    let var_3 = !(!(_wgslsmith_f_op_f32(select(global0.x, 340f, arg_0.c)) != var_1.d.a.x));
    var_1 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_add_i32(firstTrailingBit(var_1.a | u_input.a.x), 1i ^ _wgslsmith_add_i32(1i, var_1.a)), -firstLeadingBit(u_input.a.x & -7940i)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0, 40850u)), ~(~vec2<u32>(30540u, 4294967295u))) >> (select(vec2<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, u_input.b.x)), ~max(var_1.b, var_1.b), var_1.d.b.x) % vec2<u32>(32u)), select(reverseBits(~vec4<u32>(var_1.e, 17065u, u_input.b.x, 0u)), ~var_1.c, true), arg_0, 1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> bool {
    global1 = _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global0.x, 446f))))), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(sign(global0.x))));
    var var_0 = !vec4<bool>(func_3(vec3<u32>(1u, u_input.c, u_input.c), -165f, true) == _wgslsmith_div_u32(_wgslsmith_add_u32(58909u, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0, 1u, arg_0), vec4<u32>(u_input.c, 4294967295u, u_input.b.x, arg_0))), all(vec4<bool>(true, true, select(true, true, true), select(false, true, false))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false))), !select(all(vec2<bool>(false, false)), true, true));
    let var_1 = !select(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, arg_0, u_input.b.x), vec4<u32>(4294967295u, arg_0, arg_0, arg_0)) == u_input.c, all(var_0.zzw), var_0.x), var_0.xyz, vec3<bool>(any(vec4<bool>(true, var_0.x, false, var_0.x)), _wgslsmith_f_op_f32(global0.x * -140f) == _wgslsmith_f_op_f32(ceil(global0.x)), true));
    var var_2 = Struct_3(vec3<u32>(_wgslsmith_clamp_u32(~min(0u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, 0u), vec4<u32>(u_input.b.x, 1u, 24854u, u_input.c)), ~1u), ~(~1u), arg_0), _wgslsmith_div_vec2_f32(global0.yz, vec2<f32>(1408f, 543f)), global0.xy);
    global1 = 340f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec4<bool>(func_1(u_input.b.x, vec4<i32>(-1i, -19771i, u_input.a.x, u_input.a.x)), true, true, select(true, false, false)), vec4<bool>(true, true, true, true), func_1(abs(1u), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), func_1(_wgslsmith_sub_u32(60586u, u_input.c), u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 6488u != u_input.c), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)) | true, -151f <= _wgslsmith_f_op_f32(floor(819f)))), select(vec4<bool>(!(457f <= global0.x), !(global0.x != global0.x), false, true), vec4<bool>(true, select(true, all(vec4<bool>(false, true, false, true)), true), true, true), !any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_4(-13837i ^ max(-31241i, _wgslsmith_sub_i32(min(22663i, -4008i), u_input.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -605f), vec3<f32>(-128f, -1392f, -957f))), vec3<f32>(global0.x, global0.x, 2297f))), var_0.wz, var_0.x));
    global1 = global0.x;
    var var_2 = -u_input.a;
    let var_3 = reverseBits(_wgslsmith_mod_vec3_u32(select(select(~vec3<u32>(u_input.b.x, 21467u, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), true), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, u_input.c), vec3<u32>(69006u, 1u, u_input.b.x))), true), vec3<u32>(u_input.c, min(u_input.c, min(u_input.c, u_input.b.x)), u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

