struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_3, 17>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(746f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(select(arg_0.x, arg_1.a, false))) * -1233f), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-595f - arg_0.x), true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1816f, -536f, 122f, -1100f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, arg_0.x, arg_1.a, 309f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 258f, arg_1.a, arg_0.x) - vec4<f32>(arg_1.a, -1644f, -1603f, arg_0.x)))))));
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1.a, var_0.x)))))), 1050f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, -576f, 1367f)), vec3<f32>(arg_0.x, -1000f, -378f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, var_0.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_1.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, arg_1.b.x, -1173f) * vec3<f32>(arg_1.a, arg_0.x, -286f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_1.a))))));
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(35572i, 18159i) << (_wgslsmith_clamp_u32(1u, 1u, abs(86567u)) % 32u), countOneBits(~(~(-29444i))), u_input.a.x, arg_2), vec4<i32>(_wgslsmith_mod_i32(countOneBits(~(-2147483647i)), _wgslsmith_add_i32(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global0.x), vec3<i32>(global0.x, -6838i, global0.x)))), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), u_input.a)), arg_2, _wgslsmith_div_i32(38481i, abs(-global0.x))), vec4<i32>(-3245i, max(-52614i, -1i), min(i32(-1i) * -1i, firstTrailingBit(i32(-1i) * -3091i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_2, max(global0.x, u_input.a.x), 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-55902i, 2147483647i, -10234i, global0.x), vec4<i32>(global0.x, 1i, 0i, arg_2)))));
    let var_4 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(110470u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 71771u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_mod_vec3_u32(max(abs(vec3<u32>(4294967295u, 4294967295u, 0u)), ~vec3<u32>(1u, 1u, 20231u)), vec3<u32>(33695u, max(10680u, 0u), _wgslsmith_clamp_u32(0u, 96695u, 17443u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(34567u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(72149u, 4294967295u, 76852u), vec3<u32>(0u, 16839u, 0u))), ~vec3<u32>(1u, 0u, 4294967295u)));
    return select(true, true, select(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), false, true));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(~max(vec4<u32>(28764u, 1u, 0u, 0u), vec4<u32>(34206u, 34546u, 14813u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u) & firstTrailingBit(vec4<u32>(1u, 32200u, 44651u, 7309u)))), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), func_3(vec3<f32>(888f, -1000f, -335f), Struct_2(-679f, vec3<f32>(-1000f, -434f, 756f)), -5173i))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true), !any(vec2<bool>(true, false))), ~(~(~(~17912u))), 9426u, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-68297i, 0i, 1i, global0.x), vec4<i32>(2147483647i, -30093i, 22620i, global0.x) ^ vec4<i32>(global0.x, global0.x, global0.x, global0.x)) | (_wgslsmith_div_i32(-2147483647i, u_input.a.x) & ~1i)));
    return Struct_1(vec4<u32>(~var_0.c, _wgslsmith_clamp_u32(423u, 34774u, ~var_0.a.x) ^ 0u, firstLeadingBit(~(var_0.c << (var_0.a.x % 32u))), var_0.a.x), !var_0.b, ~1925u, ~reverseBits(_wgslsmith_add_u32(4294967295u, var_0.d)) >> (18943u % 32u), _wgslsmith_sub_i32(1i ^ var_0.e, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(max(var_0.e, 25287i), 1i))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = -1591f;
    var var_1 = func_2();
    let var_2 = var_1.a.x;
    var_1 = func_2();
    let var_3 = 0u;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)) * -860f), -1903f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 17>();
    var var_0 = firstLeadingBit(_wgslsmith_add_u32(~31374u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(46771u, 0u), vec2<u32>(68308u, 4294967295u)), vec2<u32>(1u, 1u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -511f), 924f)) + _wgslsmith_f_op_vec2_f32(func_1(-_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1553i, u_input.a.x, 16853i, global0.x)), abs(vec4<i32>(u_input.a.x, global0.x, 8234i, -7823i))), ~(~abs(vec3<u32>(103177u, 11979u, 0u))))));
    global0 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, func_2().e), vec2<i32>(-1i) * -u_input.a);
    var_0 = 39429u;
    global1 = array<Struct_3, 17>();
    let var_2 = select(vec2<bool>(false, func_3(vec3<f32>(-416f, 1136f, -994f), Struct_2(var_1.x, vec3<f32>(341f, var_1.x, 663f)), -1i) | true), vec2<bool>(-global0.x < ((global0.x | 0i) >> (60451u % 32u)), false), all(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(9521u, 4294967295u, 17588u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(~81095u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(58632u, 4294967295u, 1u, 65721u), vec4<u32>(41422u, 4294967295u, 4294967295u, 0u)))), ~(~vec3<u32>(1u, 0u, 4294967295u)))), 17u)];
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_3.d.d, var_3.e.d, ~(firstLeadingBit(1u) << (var_3.e.d % 32u))), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(func_2().a.x, select(502u, 1u, false)), var_4.e.a.xz), ~(var_4.d.a.zz << (select(var_4.e.a.wz, var_4.d.a.yz, var_2) % vec2<u32>(32u)))));
}

