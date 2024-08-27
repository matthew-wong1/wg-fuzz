struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: u32;

var<private> global2: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>) -> i32 {
    global1 = u_input.c;
    var var_0 = abs(_wgslsmith_mod_u32(~30293u, _wgslsmith_dot_vec4_u32(abs(select(arg_1.a.d, arg_1.a.d, arg_1.b)), vec4<u32>(1u, u_input.a, 1u, _wgslsmith_add_u32(10501u, 19647u)))));
    global2 = arg_1.a.b;
    global0 = array<Struct_3, 11>();
    var var_1 = min(~_wgslsmith_mult_vec4_u32(max(~arg_1.a.d, arg_1.a.d), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13412u), vec2<u32>(arg_0, 46499u)), arg_1.a.d.x, 1u, ~arg_0)), arg_1.a.d & _wgslsmith_mod_vec4_u32(arg_1.a.d, ~arg_1.a.d));
    return u_input.d.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: f32) -> vec3<u32> {
    var var_0 = (u_input.c >> (~u_input.a % 32u)) & 1u;
    var var_1 = u_input.d.x;
    var var_2 = Struct_4(~firstLeadingBit(~vec3<u32>(78127u, arg_1.x, arg_1.x) << (vec3<u32>(9018u, arg_1.x, 58885u) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(4294967295u, 11u)], vec4<i32>(abs(~u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstLeadingBit(arg_0.x), _wgslsmith_mult_i32(arg_0.x, 1i)), abs(-2147483647i)), _wgslsmith_add_i32(func_3(arg_1.x, Struct_3(Struct_1(vec4<bool>(false, true, false, false), -1405f, true, arg_1), false, arg_0), vec3<i32>(2147483647i, -2147483647i, arg_0.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.d.x), u_input.d), vec2<i32>(u_input.d.x, -2147483647i))), firstLeadingBit(-2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x >> (arg_1.x % 32u), 36242u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(39147u, arg_1.x), vec2<u32>(u_input.a, 41232u), arg_1.zx)), _wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a, arg_1.x), ~vec2<u32>(1u, u_input.b.x), true), vec2<u32>(1u, abs(0u)))), 11u)], select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, false)), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(false, !all(vec2<bool>(true, false))), vec2<bool>(true, true)));
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.a.yy, min(u_input.b, select(arg_1.zy, vec2<u32>(4294967295u, 46662u), false))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_2.b.a.d, var_2.b.a.d), firstLeadingBit(9308u)), countOneBits(0u) | u_input.c)), abs(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(46074u, arg_1.x), u_input.b), max(~arg_1.wz, arg_1.wz))));
    global1 = var_2.a.x | _wgslsmith_sub_u32(var_2.b.a.d.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31401u, 35731u, 4294967295u), var_2.a) | arg_1.x, 71677u));
    return vec3<u32>(reverseBits(abs(_wgslsmith_clamp_u32(~var_2.d.a.d.x, 7813u, _wgslsmith_clamp_u32(4294967295u, 1u, 0u)))), 30653u, 26645u << (abs(1u) % 32u));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    let var_0 = abs(arg_0.d.a.d);
    let var_1 = Struct_2(!arg_0.d.a.a.wzy, (_wgslsmith_clamp_vec3_u32(func_2(u_input.d, var_0, arg_2.x), vec3<u32>(0u, 35770u, 0u), vec3<u32>(u_input.c, var_0.x, var_0.x)) >> (select(countOneBits(vec3<u32>(var_0.x, arg_3, arg_3)), var_0.xyw, arg_0.d.a.a.xyx) % vec3<u32>(32u))) | ~var_0.xwz);
    return -1889f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec3<bool> {
    return vec3<bool>(true, u_input.b.x == ~(~_wgslsmith_mult_u32(4294967295u, 0u)), !any(vec3<bool>(u_input.d.x > -1i, false, u_input.b.x > 29582u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 11>();
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(147f, 1203f, 229f))) + vec3<f32>(_wgslsmith_f_op_f32(-1078f - -551f), _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(func_1(Struct_4(vec3<u32>(u_input.b.x, 0u, u_input.b.x), global0[_wgslsmith_index_u32(u_input.a, 11u)], vec4<i32>(13463i, u_input.d.x, 2147483647i, -32555i), global0[_wgslsmith_index_u32(0u, 11u)], vec2<bool>(true, true)), vec2<f32>(518f, -1161f), vec3<f32>(-349f, 701f, -1063f), 31512u)))), select(vec2<bool>(all(vec3<bool>(true, true, true)), select(false, true, true)), vec2<bool>(true, true), all(vec3<bool>(true, false, false))), vec3<u32>(~abs(20016u), _wgslsmith_div_u32(~4294967295u, ~u_input.b.x), u_input.b.x)), ~(~(~vec3<u32>(u_input.a, 27769u, u_input.a)) | _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.a, 18596u))));
    let var_1 = -1430f;
    let var_2 = Struct_4(select(select(vec3<u32>(_wgslsmith_mult_u32(u_input.a, 0u), 1443u, var_0.b.x), vec3<u32>(max(0u, var_0.b.x), 0u, var_0.b.x), all(select(var_0.a, var_0.a, var_0.a.x))), ~(~vec3<u32>(u_input.c, var_0.b.x, 31235u)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 1000f, var_1), vec3<f32>(-442f, var_1, var_1))), vec2<bool>(var_0.a.x, select(false, var_0.a.x, false)), min(var_0.b, select(vec3<u32>(33453u, 0u, 23096u), var_0.b, true)))), global0[_wgslsmith_index_u32(u_input.b.x, 11u)], vec4<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-22890i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), u_input.d.x | -15697i)), u_input.d.x, u_input.d.x, -select(12717i, -1i, false)), Struct_3(Struct_1(vec4<bool>(var_0.a.x, true, any(vec3<bool>(true, true, false)), !var_0.a.x), _wgslsmith_f_op_f32(round(var_1)), var_0.a.x, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, var_0.b.x), vec4<u32>(1u, u_input.c, var_0.b.x, 66634u)), reverseBits(vec4<u32>(1u, var_0.b.x, 4294967295u, 1155u)))), false, vec2<i32>(select(u_input.d.x >> (u_input.b.x % 32u), u_input.d.x, true), -22433i)), var_0.a.zy);
    var var_3 = !var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(max(var_2.b.a.d, var_2.b.a.d), _wgslsmith_mod_vec4_u32(var_2.d.a.d, vec4<u32>(var_2.d.a.d.x, var_0.b.x, 69910u, u_input.c))), firstTrailingBit(~vec4<u32>(var_2.d.a.d.x, var_2.a.x, u_input.a, 33840u)), var_2.d.a.d), var_2.d.a.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-542f)), _wgslsmith_f_op_f32(floor(var_1)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), -203f), -(_wgslsmith_add_i32(u_input.d.x, -22571i) << (~var_2.d.a.d.x % 32u)));
}

