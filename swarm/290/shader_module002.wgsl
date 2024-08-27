struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, false, false, true, false, true, false, true, false, true, true, false, false, false, true, false, false, false, true, false, true, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), 0i, !vec4<bool>(true & any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), global0[_wgslsmith_index_u32(abs(u_input.b.x) & (63324u << (u_input.b.x % 32u)), 24u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b.x), 24u)], true), vec3<u32>(abs(u_input.b.x), ~abs(u_input.b.x) >> (0u % 32u), _wgslsmith_mult_u32(u_input.b.x & (u_input.b.x | u_input.b.x), ~(~33072u))), true);
    var var_1 = Struct_1(var_0.c.xx, var_0.b, var_0.c, vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(var_0.d.x)) ^ _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, var_0.d.x, u_input.b.x)), ~vec4<u32>(var_0.d.x, u_input.b.x, 11953u, var_0.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 0u, var_0.d.x, var_0.d.x), ~vec4<u32>(14225u, var_0.d.x, u_input.b.x, 3784u))), (6448u & u_input.b.x) > (0u & var_0.d.x));
    let var_2 = Struct_1(select(vec2<bool>(!select(var_0.a.x, true, var_0.e), all(var_0.c)), var_1.c.ww, vec2<bool>(504f != _wgslsmith_f_op_f32(step(1972f, 287f)), true)), var_1.b, select(!var_1.c, vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(countOneBits(var_1.d.x), 24u)]), vec4<bool>(var_0.e, any(!var_1.c), var_0.b == (var_1.b << (51838u % 32u)), 1u != max(29892u, var_0.d.x))), ~_wgslsmith_mod_vec3_u32(~abs(var_0.d), var_0.d), false);
    var var_3 = Struct_1(!select(var_0.c.yz, select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(84372u, 24u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], var_1.a.x), vec2<bool>(var_0.c.x, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], var_2.e)), true), !var_0.c.xy), var_0.b, !select(var_2.c, select(var_0.c, select(var_1.c, vec4<bool>(var_1.a.x, true, false, var_0.c.x), var_2.c), var_2.e), var_0.c), ~(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.d, var_0.d), vec3<u32>(var_0.d.x, var_2.d.x, var_1.d.x)) >> (var_0.d % vec3<u32>(32u))), !any(select(vec4<bool>(var_0.a.x, false, false, var_2.e), vec4<bool>(false, false, false, false), true)));
    var var_4 = (abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_3.d.x, 0u), vec4<u32>(var_2.d.x, 0u, 50841u, var_0.d.x)), vec4<u32>(var_0.d.x, var_3.d.x, 56303u, var_3.d.x))) << (~vec4<u32>(1u, var_0.d.x >> (19767u % 32u), var_2.d.x << (4294967295u % 32u), 0u ^ var_0.d.x) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(var_2.d.x, var_1.d.x, ~(~var_0.d.x), ~53562u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 46538u, 74280u, var_3.d.x), max(~vec4<u32>(0u, 0u, var_0.d.x, var_1.d.x), vec4<u32>(77201u, var_1.d.x, 0u, var_2.d.x) << (vec4<u32>(1u, 0u, 2870u, 29409u) % vec4<u32>(32u))), vec4<u32>(var_1.d.x << (var_3.d.x % 32u), u_input.b.x & 10202u, _wgslsmith_mod_u32(0u, 4294967295u), abs(4294967295u))));
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    var var_1 = arg_3;
    var_1 = Struct_1(arg_2.a, ~(-11931i), !select(vec4<bool>(arg_1.a.x, !global0[_wgslsmith_index_u32(arg_1.d.x, 24u)], all(arg_2.c), arg_0.x), vec4<bool>(false, any(arg_0), !var_1.a.x, var_1.a.x), !(!vec4<bool>(arg_3.e, arg_1.a.x, true, true))), vec3<u32>(select(_wgslsmith_add_u32(4577u, u_input.b.x), arg_3.d.x ^ 4294967295u, false), ~(~arg_1.d.x), arg_2.d.x) << (arg_3.d % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 183f)))) <= -693f);
    var_1 = Struct_1(vec2<bool>(!func_3(), var_1.a.x), -1i, !var_0.c, var_1.d, false);
    var_1 = arg_2;
    return global0[_wgslsmith_index_u32(~(~abs(arg_2.d.x)), 24u)];
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_1(vec2<bool>(true, false), u_input.a, !(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))), vec3<u32>(abs(24366u) >> ((u_input.b.x ^ _wgslsmith_div_u32(u_input.b.x, 55317u)) % 32u), 1u, 1u), true);
    let var_1 = all(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, var_0.d.x), 24u)], all(vec2<bool>(func_2(var_0.c, Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], false), var_0.b, vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], true, var_0.c.x), var_0.d, global0[_wgslsmith_index_u32(0u, 24u)]), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(var_0.d.x, 24u)]), -1i, var_0.c, vec3<u32>(var_0.d.x, 7019u, 1u), global0[_wgslsmith_index_u32(130708u, 24u)]), Struct_1(var_0.a, -57173i, var_0.c, u_input.b, var_0.a.x)), true)), -1i > _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 16196i, var_0.b, var_0.b)), vec4<i32>(-40787i, 26770i, u_input.a, u_input.a))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -914f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1022f * _wgslsmith_f_op_f32(floor(-1699f))) + _wgslsmith_f_op_f32(trunc(-333f)))), -117f);
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    return _wgslsmith_clamp_vec3_u32(min(u_input.b >> (vec3<u32>(countOneBits(u_input.b.x), ~var_0.d.x, var_0.d.x) % vec3<u32>(32u)), ~u_input.b), ~var_0.d, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 17663u, u_input.b.x, 79700u), vec4<u32>(67262u, u_input.b.x, 21087u, u_input.b.x)), vec4<u32>(4294967295u, 1u, 53269u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 53714u, 12386u, u_input.b.x), ~vec4<u32>(77110u, 37049u, 8308u, 11913u)), u_input.b.x), vec3<u32>(_wgslsmith_mult_u32(~u_input.b.x, 51217u), u_input.b.x, ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~abs(-u_input.a), _wgslsmith_mult_i32(-2147483647i, countOneBits(6973i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), -_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-7674i, -32487i)), vec2<i32>(55544i, -30450i) ^ vec2<i32>(u_input.a, -1i)), ~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1073f, 387f, -1824f) * vec3<f32>(-760f, 1224f, -1091f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1883f, 1387f, -937f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1073f, -801f, -2320f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2196f - 196f)), 299f, 397f)), vec3<u32>(31141u, 1u, _wgslsmith_add_u32(abs(u_input.b.x), ~u_input.b.x)), vec3<u32>(_wgslsmith_add_u32(u_input.b.x, ~abs(u_input.b.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) & (u_input.b ^ u_input.b), func_1()), u_input.b.x), _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(u_input.a, u_input.a, 1i), ~vec3<i32>(17445i, 1i, u_input.a)), vec3<i32>(~1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, 61075i), vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a))), _wgslsmith_sub_i32(1i << (0u % 32u), _wgslsmith_mult_i32(u_input.a, -2147483647i)))));
}

