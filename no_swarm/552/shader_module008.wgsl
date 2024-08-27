struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
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

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-10972i, -57220i, 2147483647i, -45280i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = reverseBits(~vec2<i32>(_wgslsmith_div_i32(u_input.e.x, _wgslsmith_sub_i32(u_input.e.x, u_input.c)), ~2147483647i));
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(568f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1809f)))) - _wgslsmith_f_op_f32(floor(738f))), 1000f));
    var var_3 = 1i;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1143f, _wgslsmith_f_op_f32(floor(610f)), !any(vec3<bool>(true, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)));
    return all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), true & all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    let var_0 = vec2<bool>(arg_1, !(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3.x, 1327i), arg_3.yz) == 1428i));
    let var_1 = _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-62693i, -56591i, 29938i, arg_3.x), arg_3), -arg_3.x), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.c, 1i, arg_3.x) & vec4<i32>(arg_3.x, 0i, u_input.c, 24303i), _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], vec4<i32>(u_input.c, -7484i, -9110i, -2147483647i))), 27385i), 5965i));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b))))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -383f)));
    let var_3 = vec2<u32>(1u, reverseBits(~4294967295u));
    let var_4 = Struct_1(302f, 2171f);
    return -683f;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> f32 {
    global0 = array<vec4<i32>, 1>();
    var var_0 = ~select(-18004i, _wgslsmith_div_i32(u_input.c, ~(~u_input.e.x)), select(arg_2.x >= u_input.a.x, true, arg_0.x));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mult_i32(-18704i, _wgslsmith_mod_i32(24373i, u_input.e.x)) & ((u_input.e.x >> (u_input.a.x % 32u)) << (countOneBits(u_input.d.x) % 32u)), u_input.e.x), vec3<i32>(~u_input.c, firstTrailingBit(-u_input.e.x) >> (1u % 32u), -40364i));
    let var_2 = arg_2.x >= ~(~_wgslsmith_add_u32(70870u, u_input.a.x) | (arg_2.x << (countOneBits(32958u) % 32u)));
    var var_3 = _wgslsmith_f_op_f32(func_4(Struct_1(1526f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-420f))))))), !func_3(), ~(_wgslsmith_div_u32(17396u, _wgslsmith_sub_u32(17568u, u_input.a.x)) & _wgslsmith_div_u32(~1u, 28334u)), global0[_wgslsmith_index_u32(~1u, 1u)]));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1241f, -1370f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-842f, -1704f)) - -346f))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1394f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-511f))) * -178f));
    global0 = array<vec4<i32>, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1652f - -190f))), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a)), 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-1012f + -340f)), _wgslsmith_f_op_f32(func_2(select(vec4<bool>(arg_2.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_2.x, arg_1.x, arg_1.x, true), true), vec3<bool>(true, arg_1.x, false), u_input.d.zyy & vec3<u32>(30525u, 77399u, 1u)))))));
    var var_2 = !vec2<bool>(arg_1.x, (u_input.e.x ^ ~u_input.c) < ~_wgslsmith_add_i32(-1i, 0i));
    global0 = array<vec4<i32>, 1>();
    return _wgslsmith_div_vec2_u32(~vec2<u32>(20683u, 22759u & ~u_input.d.x), max(vec2<u32>(u_input.d.x & 1u, u_input.a.x), vec2<u32>(select(u_input.b.x, 4294967295u, select(arg_1.x, true, false)), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(true, any(vec2<bool>(true, true))), all(vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 0u)) < ~u_input.a.x, true)));
    var var_1 = u_input.d.zz;
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(func_1(vec3<i32>(0i, u_input.c, u_input.e.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false)), u_input.d.zz), 78609u), var_1.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(~var_1.x, _wgslsmith_sub_u32(11305u, 420u)), func_1(u_input.e, vec2<bool>(true, true), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x))).x)), vec4<u32>(_wgslsmith_clamp_u32(var_1.x, 35477u, _wgslsmith_mod_u32(abs(10823u), 148454u ^ var_1.x)), 24545u, func_1(vec3<i32>(u_input.c, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(var_1.x, 1u)], vec4<i32>(u_input.e.x, 49124i, u_input.c, u_input.e.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 1520i, u_input.e.x), vec3<i32>(-27502i, 2147483647i, 1i))), select(vec2<bool>(false, false), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x)), var_0.x), !select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false))).x, 0u), vec4<u32>((~u_input.b.x << (countOneBits(u_input.d.x) % 32u)) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.d.x, 0u), vec3<u32>(0u, u_input.b.x, u_input.b.x))), 4294967295u, 90204u, ~((u_input.a.x >> (var_1.x % 32u)) | min(4294967295u, var_1.x))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(-1186f, -148f), var_0.x, var_2.x, global0[_wgslsmith_index_u32(18039u, 1u)] >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 0u, 4294967295u, var_2.x)), u_input.d) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(step(-440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)))));
    let var_4 = _wgslsmith_sub_i32(-24836i, ~0i);
    var var_5 = vec4<bool>(!var_0.x, var_0.x || (_wgslsmith_sub_i32(abs(u_input.e.x), 1i) > abs(u_input.e.x)), var_0.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(-19347i);
}

