struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(107f, 690f), vec2<f32>(475f, -691f), vec2<f32>(460f, 1689f), vec2<f32>(321f, -793f), vec2<f32>(846f, -1491f), vec2<f32>(716f, 372f), vec2<f32>(300f, -588f), vec2<f32>(603f, 610f), vec2<f32>(1000f, -242f), vec2<f32>(401f, -881f), vec2<f32>(874f, 1000f), vec2<f32>(-379f, -843f), vec2<f32>(149f, -455f), vec2<f32>(-656f, -647f), vec2<f32>(1000f, -1251f), vec2<f32>(478f, -1772f), vec2<f32>(-602f, 1386f), vec2<f32>(1640f, 657f), vec2<f32>(-166f, -405f), vec2<f32>(1000f, -1255f), vec2<f32>(1462f, -1168f), vec2<f32>(-302f, -1331f), vec2<f32>(-229f, 519f), vec2<f32>(-1188f, -1796f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -196f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(898f, 1723f)), 1020f, true)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1671f + 689f) + 1026f)), 336f));
    var var_1 = Struct_2(abs(reverseBits(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.a.x) | u_input.a))));
    let var_2 = Struct_2(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, abs(u_input.a), ~vec4<u32>(0u, u_input.a.x, arg_1, 1u)), vec4<u32>(1u, arg_1 & 5821u, ~18840u, var_1.a.x), u_input.a));
    let var_3 = global0[_wgslsmith_index_u32(1u, 24u)];
    let var_4 = -arg_0;
    return _wgslsmith_mod_i32(arg_0, 22263i);
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = vec4<i32>(func_3(_wgslsmith_sub_i32(firstLeadingBit(-40564i >> (u_input.b.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(2263i, 1i, -2147483647i), vec3<i32>(-1i, 1i, -47426i))), 1u >> (_wgslsmith_dot_vec4_u32(u_input.a ^ u_input.a, vec4<u32>(1506u, 129548u, u_input.a.x, u_input.b.x)) % 32u), vec2<bool>((false && arg_0) || true, any(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, true, arg_0), arg_0)))), 1i, -1i, ~(~(~(~24620i))));
    var var_1 = select(vec2<bool>(false, !arg_0), !select(vec2<bool>(arg_0 & arg_0, true), !vec2<bool>(arg_0, true), vec2<bool>(u_input.b.x == u_input.a.x, 6654u >= u_input.a.x)), all(vec3<bool>(!(!arg_0), true, all(vec2<bool>(true, true)))));
    var var_2 = vec3<i32>(~var_0.x, 1i, -(~max(2147483647i, _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(-70305i, -24387i, var_0.x, var_0.x)))));
    var_1 = select(!vec2<bool>(select(true, true, all(vec2<bool>(true, false))), any(!vec4<bool>(arg_0, var_1.x, false, false))), vec2<bool>(arg_0, false), false);
    let var_3 = Struct_3(~abs(1u), Struct_2(~select(u_input.a, u_input.a | u_input.a, vec4<bool>(false, arg_0, arg_0, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1660f, -1165f)), Struct_2(vec4<u32>(u_input.b.x, 1u, 1u, max(u_input.b.x, u_input.a.x))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(261f, var_3.c) + vec2<f32>(219f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, var_3.c))))))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2((firstTrailingBit(~35372u) <= u_input.b.x) && all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, false, true))))));
    let var_1 = Struct_2(~(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(1u, u_input.a.x)), ~17149u, 0u, _wgslsmith_sub_u32(109454u, 60667u)) >> ((vec4<u32>(14039u, u_input.a.x, 43399u, 30638u) & vec4<u32>(u_input.b.x, 74468u, u_input.a.x, 1u)) % vec4<u32>(32u))));
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    return i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-18707i, 6592i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, 13056i), _wgslsmith_mod_i32(-2147483647i, 23228i), countOneBits(32702i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_1(vec2<bool>(any(vec2<bool>(true, select(false, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) - _wgslsmith_f_op_f32(-1107f - -1777f)) == _wgslsmith_f_op_vec2_f32(func_2(true)).x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1730f * -1073f), _wgslsmith_f_op_f32(select(-230f, 223f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f - -1171f) - 643f))))), ~max(u_input.b.x, 0u), arg_1);
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    let var_1 = _wgslsmith_div_f32(var_0.b, var_0.b);
    return Struct_2(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1694i, -2147483647i, -42976i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-11885i, -2954i, -63408i, 2147483647i), vec4<i32>(-41032i, -7538i, 1i, -10044i))), func_1(), ~(-82i), _wgslsmith_add_i32(22125i, _wgslsmith_div_i32(24413i, 5140i))), abs(66305u));
    global0 = array<vec2<f32>, 24>();
    var var_1 = -firstLeadingBit(-vec4<i32>(_wgslsmith_mod_i32(32725i, 2147483647i), -1i, -23608i, ~2147483647i));
    let var_2 = Struct_3(_wgslsmith_dot_vec3_u32(u_input.a.yyw, ~vec3<u32>(33785u, ~53987u, ~1u)), func_4(vec4<i32>(_wgslsmith_sub_i32(abs(var_1.x), var_1.x), 1i, _wgslsmith_add_i32(8723i, -1i), 1i), ~(~(var_0.a.x << (1u % 32u)))), _wgslsmith_f_op_f32(round(274f)), Struct_2(abs(u_input.a)));
    var_1 = -_wgslsmith_div_vec4_i32(~(~(~vec4<i32>(var_1.x, 1974i, 32991i, 0i))), ~_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_1.x, 1i, 20395i, 14976i), vec4<i32>(36902i, -1i, 21431i, -7748i), true), vec4<i32>(20888i, 0i, var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(~47482u, 24u)])) - vec2<f32>(-593f, _wgslsmith_f_op_f32(step(1000f, -469f))))), vec2<u32>(var_0.a.x, var_0.a.x), u_input.a, var_1.x, ~(var_0.a.xyx ^ max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 22637u, u_input.b.x), var_2.b.a.wzy), _wgslsmith_clamp_vec3_u32(vec3<u32>(2657u, var_0.a.x, 0u), vec3<u32>(1u, u_input.b.x, 19437u), var_0.a.xzx))));
}

