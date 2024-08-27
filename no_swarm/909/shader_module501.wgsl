struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(1i, -19251i), ~u_input.e.x) <= _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-4829i, 23312i, u_input.d.x) | _wgslsmith_clamp_i32(-u_input.d.x, u_input.e.x, _wgslsmith_sub_i32(-11868i, 1i)), 24668i, 1i);
    let var_1 = Struct_4(arg_1.yx, -(-(vec4<i32>(u_input.e.x, -2147483647i, u_input.e.x, 9308i) & vec4<i32>(9670i, u_input.e.x, u_input.d.x, u_input.e.x)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.d.x, u_input.e.x), vec4<i32>(0i, -44529i, 25946i, 2147483647i))));
    global0 = false;
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, ~(~u_input.c)), select(~(~vec3<u32>(1u, arg_0.x, u_input.c)), ~vec3<u32>(arg_0.x, arg_0.x, 8212u), !vec3<bool>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, arg_1.x, _wgslsmith_f_op_f32(sign(-361f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(var_1.a.x, -584f, arg_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(341f - var_1.a.x), arg_1.x, _wgslsmith_f_op_f32(floor(1000f))))), false)), vec4<u32>(~29920u, countOneBits(1u), ~_wgslsmith_sub_u32(u_input.a.x, reverseBits(53013u)), arg_0.x & ~(arg_0.x >> (23737u % 32u))), _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, arg_0.x), u_input.b.x) & 1u, var_0);
    let var_3 = firstTrailingBit(var_2.a.x);
    return _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 266f), 704f));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = vec2<u32>(min(_wgslsmith_dot_vec3_u32(max(firstLeadingBit(vec3<u32>(0u, 47545u, u_input.c)), vec3<u32>(arg_0, arg_0, 39434u)), vec3<u32>(0u, 36355u, arg_0)), _wgslsmith_clamp_u32(~arg_0, firstLeadingBit(4294967295u), arg_0)), ~arg_0);
    let var_1 = ~firstTrailingBit(~1u) & arg_0;
    var_0 = reverseBits(~(vec2<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, 48580u), 28203u & var_1) & ~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(111081u, 1u))));
    var_0 = u_input.a;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(ceil(875f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1671f, 139f), vec2<f32>(2685f, 702f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1259f, -947f) - vec2<f32>(135f, 1456f)))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<u32>(~var_0.x, ~var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(-118f, 1277f, -255f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, 1030f, -1061f))))), -219f));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + 392f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -313f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(601f))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec2_u32(u_input.b, ~u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1735f, var_2.x, -1123f)))))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_5 {
    let var_0 = abs(u_input.e.zx);
    var var_1 = Struct_1(vec3<u32>(u_input.b.x << (5908u % 32u), _wgslsmith_mult_u32(countOneBits(4294967295u), ~_wgslsmith_mod_u32(u_input.b.x, 199u)), ~0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, arg_0.x, -493f))))), ~abs(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 0u, u_input.c, 736u)), abs(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 12452u)))), ~u_input.c, abs(u_input.a.x) == ~min(1u, ~15470u));
    global0 = !any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.e, any(vec3<bool>(var_1.e, false, var_1.e)), any(vec4<bool>(var_1.e, true, true, false))), !(!vec3<bool>(var_1.e, true, var_1.e))));
    var var_2 = ~(~_wgslsmith_mult_i32(var_0.x | -3698i, -23184i ^ var_0.x) >> (4294967295u % 32u));
    let var_3 = -400f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.x)));
    return Struct_5(u_input.e.yy);
}

fn func_1() -> i32 {
    let var_0 = firstTrailingBit(u_input.e.x);
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(func_2(~(1u ^ ~u_input.c), vec4<bool>(true, true, true, !(25770u > u_input.b.x)), _wgslsmith_div_vec4_i32(-select(vec4<i32>(-1214i, -90158i, u_input.e.x, var_0), vec4<i32>(1i, -1i, 2147483647i, -2147483647i), vec4<bool>(true, true, false, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -240i, var_0, 1i), vec4<i32>(var_0, u_input.d.x, var_0, -1i) << (vec4<u32>(u_input.b.x, 30339u, 97323u, u_input.b.x) % vec4<u32>(32u)))))));
    var_1 = Struct_5(select(-max(-u_input.e.yz, -u_input.e.zz), firstTrailingBit(-(vec2<i32>(0i, var_0) & var_1.a)), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), all(vec3<bool>(false, false, false))), vec2<bool>(true, true), true)));
    var var_2 = _wgslsmith_sub_u32(~max(u_input.a.x, 1u << (u_input.c % 32u)) ^ ~(_wgslsmith_div_u32(4294967295u, 4294967295u) << (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u)), 15678u | _wgslsmith_mult_u32(u_input.b.x, 0u << (min(u_input.c, 38586u) % 32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-371f, 179f, -1296f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1784f, 184f, 789f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(320f, -473f, -342f), vec3<f32>(569f, -924f, -1763f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, 746f, -2388f))))))));
    return 24208i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -21021i, -25102i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, u_input.e.x, -38208i, u_input.d.x), vec4<i32>(-2147483647i, u_input.e.x, u_input.e.x, 1i))), u_input.e.x, -_wgslsmith_sub_i32(4800i, 1i), func_1())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-322f, -448f, -408f, 1312f) + vec4<f32>(-692f, -1064f, -744f, 922f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1174f, 1176f, 803f, 189f), vec4<f32>(1042f, 1000f, 366f, 388f), false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false))))));
}

