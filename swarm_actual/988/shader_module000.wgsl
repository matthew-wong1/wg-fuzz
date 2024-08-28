struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, vec2<u32>(0u, 13805u), vec3<f32>(-986f, -506f, -814f), vec3<i32>(-35524i, -1489i, 40098i)), Struct_1(false, vec2<u32>(37896u, 1u), vec3<f32>(-1040f, -1524f, -198f), vec3<i32>(48816i, i32(-2147483648), -41255i)), Struct_1(true, vec2<u32>(88592u, 4294967295u), vec3<f32>(-981f, 1000f, 489f), vec3<i32>(-1i, 0i, -59605i)), Struct_1(false, vec2<u32>(0u, 0u), vec3<f32>(-1000f, 1000f, 1231f), vec3<i32>(1i, -47341i, 39726i)), Struct_1(false, vec2<u32>(0u, 6210u), vec3<f32>(-439f, 362f, -448f), vec3<i32>(-20567i, -39047i, -1i)), Struct_1(true, vec2<u32>(24189u, 1u), vec3<f32>(-1350f, -2029f, -1022f), vec3<i32>(i32(-2147483648), -66069i, i32(-2147483648))), Struct_1(true, vec2<u32>(24076u, 28357u), vec3<f32>(-1084f, -717f, 947f), vec3<i32>(i32(-2147483648), -44266i, -1i)), Struct_1(true, vec2<u32>(1u, 30300u), vec3<f32>(815f, -470f, -253f), vec3<i32>(i32(-2147483648), -30063i, -10401i)), Struct_1(true, vec2<u32>(4294967295u, 26973u), vec3<f32>(-448f, 586f, 647f), vec3<i32>(-1i, -1i, 1i)), Struct_1(false, vec2<u32>(1u, 4294967295u), vec3<f32>(640f, 122f, -598f), vec3<i32>(-1i, -42314i, 2147483647i)), Struct_1(true, vec2<u32>(56737u, 4294967295u), vec3<f32>(-479f, 219f, -1142f), vec3<i32>(-41656i, 16427i, 13475i)), Struct_1(true, vec2<u32>(52022u, 4294967295u), vec3<f32>(-104f, -1027f, -1141f), vec3<i32>(36873i, -1i, -30712i)), Struct_1(true, vec2<u32>(72696u, 79270u), vec3<f32>(2602f, 613f, -501f), vec3<i32>(102931i, 11713i, 34247i)), Struct_1(true, vec2<u32>(1u, 1u), vec3<f32>(-2399f, -2485f, -356f), vec3<i32>(1i, 2147483647i, i32(-2147483648))), Struct_1(false, vec2<u32>(1u, 0u), vec3<f32>(-1656f, 1629f, -1000f), vec3<i32>(2147483647i, 2147483647i, -1i)), Struct_1(false, vec2<u32>(1u, 4294967295u), vec3<f32>(1902f, 528f, 328f), vec3<i32>(46971i, 25704i, -22227i)), Struct_1(false, vec2<u32>(90335u, 0u), vec3<f32>(305f, 1000f, -425f), vec3<i32>(19547i, -53674i, 2147483647i)), Struct_1(false, vec2<u32>(36661u, 1u), vec3<f32>(875f, 161f, 1423f), vec3<i32>(-1i, -21614i, i32(-2147483648))));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = array<vec4<u32>, 27>();
    var var_0 = vec3<i32>(u_input.a | _wgslsmith_dot_vec3_i32(-vec3<i32>(29255i, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a) >> (~vec3<u32>(arg_0, u_input.b, 1u) % vec3<u32>(32u))), ~(-9792i), ~u_input.a);
    var var_1 = var_0.x;
    let var_2 = 13054u;
    return u_input.b;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = max(firstLeadingBit(~0u), 67383u);
    var var_1 = firstLeadingBit(~abs(firstLeadingBit(vec2<u32>(9627u, 1u)))) >> (~(~(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(9368u, 0u)) | ~vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u));
    var var_2 = global1[_wgslsmith_index_u32(0u, 18u)];
    var var_3 = -2147483647i;
    let var_4 = select(select(!vec2<bool>(all(vec3<bool>(var_2.a, false, var_2.a)), var_2.a), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_2.a, false), var_2.a), vec2<bool>(true, true)), vec2<bool>(false, !var_2.a), (var_2.b.x | 43812u) > _wgslsmith_add_u32(0u, 1705u)), false), !(!vec2<bool>(var_2.a, var_2.a)), any(vec4<bool>(_wgslsmith_div_i32(u_input.a, 24609i) <= min(0i, arg_1.x), true, var_2.a, select(1387f == var_2.c.x, var_2.a, var_2.a))));
    return vec3<bool>(all(!var_4), _wgslsmith_clamp_i32(~14991i ^ -u_input.a, -39266i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_0, -2147483647i), ~vec3<i32>(-1i, var_2.d.x, -2147483647i))) > ~(~_wgslsmith_add_i32(arg_1.x, arg_0)), all(select(select(vec2<bool>(var_4.x, true), !var_4, var_4), select(vec2<bool>(false, var_2.a), vec2<bool>(true, var_4.x), select(var_4, var_4, var_2.a)), !(var_2.a && var_2.a))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<i32>) -> vec3<bool> {
    global1 = array<Struct_1, 18>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, 19583u) >> (~(_wgslsmith_mult_vec2_u32(vec2<u32>(19655u, 68310u), vec2<u32>(1u, u_input.b)) & ~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), min(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, u_input.b)))), 0u)), 18u)];
    var_0 = global1[_wgslsmith_index_u32(46899u, 18u)];
    var var_1 = countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(reverseBits(u_input.b), _wgslsmith_sub_u32(var_0.b.x, u_input.b)), func_2(u_input.b)), ~(vec2<u32>(2218u, u_input.b) ^ var_0.b)));
    var var_2 = 824f;
    return func_3(select(firstTrailingBit(arg_0), abs(firstLeadingBit(arg_0)), true) >> (4294967295u % 32u), vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.d.xz, arg_2.zx), _wgslsmith_add_i32(1i, var_0.d.x)), -arg_1, -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(53094i, arg_0, 0i, 0i)), vec4<i32>(41248i, -14534i, var_0.d.x, -1i))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(u_input.b, ~u_input.b), u_input.b, u_input.b) >> (max(vec3<u32>(~u_input.b, 0u, _wgslsmith_mod_u32(u_input.b, 82641u)), vec3<u32>(1u, ~0u, ~u_input.b)) % vec3<u32>(32u)), vec3<u32>(~u_input.b, u_input.b, u_input.b ^ firstTrailingBit(u_input.b))), 18u)];
    global0 = array<vec4<u32>, 27>();
    var var_1 = Struct_1(true, abs(select(vec2<u32>(~var_0.b.x, 4294967295u), (var_0.b >> (var_0.b % vec2<u32>(32u))) >> (~var_0.b % vec2<u32>(32u)), true)), _wgslsmith_f_op_vec3_f32(min(var_0.c, vec3<f32>(796f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, -1316f, arg_0.x)))))), var_0.d);
    var var_2 = ~67530i;
    global0 = array<vec4<u32>, 27>();
    return Struct_1(var_1.a, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_1.b.x, var_0.b.x), 25205u), ~var_0.b & vec2<u32>(0u, 20753u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), ~var_0.b)), var_0.c, reverseBits(vec3<i32>(-21019i, -var_0.d.x & u_input.a, ~2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 27>();
    var var_0 = func_4(select(!(!func_1(0i, 1i, vec3<i32>(-1i, u_input.a, -2147483647i))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), !func_3(reverseBits(1i), abs(vec3<i32>(-7151i, 0i, -2147483647i)))));
    var_0 = Struct_1(!any(!select(vec4<bool>(true, true, var_0.a, true), vec4<bool>(false, true, true, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x))))), func_4(!(!vec3<bool>(var_0.a, true, var_0.a))).d);
    global1 = array<Struct_1, 18>();
    var var_1 = 5038u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_dot_vec2_u32(select(~_wgslsmith_add_vec2_u32(var_0.b, var_0.b), _wgslsmith_sub_vec2_u32(var_0.b, vec2<u32>(4294967295u, 25078u)) >> ((var_0.b >> (vec2<u32>(4294967295u, var_0.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), !vec2<bool>(var_0.a, var_0.a)), var_0.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(575f, -477f) - var_0.c.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.c.xy - var_0.c.zx), _wgslsmith_f_op_vec2_f32(trunc(var_0.c.yy)), func_1(u_input.a, u_input.a, vec3<i32>(1i, -37511i, -1i)).yy))), true)));
}

