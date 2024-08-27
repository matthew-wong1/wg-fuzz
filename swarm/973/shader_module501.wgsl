struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_4(_wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(7915u, u_input.c.x), abs(u_input.a), 1u, ~u_input.a), reverseBits((vec4<u32>(u_input.c.x, 9334u, u_input.c.x, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.c.x, 6537u)) & reverseBits(vec4<u32>(35564u, 1u, 1u, 1u)))), u_input.d, vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(32630u, u_input.a), 1u)), u_input.a, u_input.c.x), select(~vec4<u32>(46059u, 17009u, u_input.a, u_input.c.x) << (~vec4<u32>(41572u, u_input.a, u_input.a, 31332u) % vec4<u32>(32u)), vec4<u32>(~u_input.c.x, u_input.a, abs(u_input.a), u_input.c.x), vec4<bool>(false, true, (i32(-1i) * -1i) <= u_input.b.x, all(vec2<bool>(true, true)))), min(-select(-vec3<i32>(-2147483647i, u_input.b.x, 1421i), u_input.d.xwz ^ u_input.d.wwy, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), select(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), u_input.b), u_input.d.xxw, select(any(vec4<bool>(true, false, false, true)), false, true))));
    global0 = array<Struct_1, 9>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-875f, _wgslsmith_f_op_f32(trunc(502f)), _wgslsmith_f_op_f32(2796f * 602f)), vec3<f32>(_wgslsmith_f_op_f32(686f + -1000f), _wgslsmith_f_op_f32(floor(925f)), _wgslsmith_div_f32(-1000f, -150f)))), Struct_2(var_0.a, Struct_1(-select(var_0.b.x, u_input.d.x, true), all(vec2<bool>(true, false)), vec4<bool>(true, true, true, true), var_0.e.yx), firstTrailingBit(var_0.a.xwy), global0[_wgslsmith_index_u32(reverseBits(~countOneBits(4886u)), 9u)], var_0.c.x), Struct_2(var_0.a, Struct_1(_wgslsmith_sub_i32(0i, var_0.e.x) | 0i, false, vec4<bool>(true, true, true, true), abs(max(var_0.e.yx, var_0.b.yy))), vec3<u32>(_wgslsmith_clamp_u32(u_input.a << (var_0.a.x % 32u), min(u_input.a, var_0.a.x), _wgslsmith_add_u32(u_input.c.x, u_input.a)), ~17301u, _wgslsmith_dot_vec4_u32(var_0.d, var_0.a)), global0[_wgslsmith_index_u32(1u ^ reverseBits(_wgslsmith_mod_u32(u_input.a, var_0.d.x)), 9u)], _wgslsmith_mod_u32(firstLeadingBit(~71201u), ~28045u)));
    global0 = array<Struct_1, 9>();
    var var_2 = ~min(var_0.e, reverseBits(var_0.b.zwz) | -var_0.b.zww);
    return (firstTrailingBit(-abs(vec2<i32>(14339i, 1i))) | var_2.yz) | (vec2<i32>(-1i) * -vec2<i32>(~u_input.d.x, -56015i));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f))));
    var var_2 = func_3();
    var_0 = !(!select(!vec2<bool>(var_0.x, true), !select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x))));
    var var_3 = !select(!vec2<bool>(false, var_0.x), select(vec2<bool>(true, var_0.x), select(!vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, false), any(vec4<bool>(var_0.x, var_0.x, var_0.x, true))), all(select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x)))), vec2<bool>(any(!vec2<bool>(var_0.x, var_0.x)), true));
    return select(vec4<bool>((var_2.x >= u_input.b.x) & true, true, !var_3.x, all(vec3<bool>(true, var_0.x, var_0.x))), !(!vec4<bool>(var_3.x, var_3.x, true, any(vec4<bool>(false, var_3.x, true, true)))), !select(select(!vec4<bool>(var_3.x, var_0.x, true, var_0.x), select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(var_0.x, true, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_0.x, true)), vec4<bool>(true, false, var_0.x, false)), !(!vec4<bool>(true, var_3.x, var_0.x, true)), true));
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = 0i;
    let var_1 = Struct_1(-20566i, any(select(func_2(), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(true, true, true, true), func_2(), vec4<bool>(true, false, false, true)))), vec4<bool>(true, any(vec2<bool>(true, true)), true, true), arg_0.b.xw);
    global0 = array<Struct_1, 9>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, -2445f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(919f, -807f)), _wgslsmith_f_op_f32(select(-786f, 1349f, var_1.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-644f, 885f) + vec2<f32>(608f, -135f))), vec2<bool>(u_input.a < 0u, true)))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(921f)), var_2.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 2655f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, 727f)))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1725f))))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_sub_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(94965u, u_input.c.x, 4294967295u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(45914u, u_input.c.x, u_input.a, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(71975u, 12481u, u_input.a, u_input.c.x), vec4<u32>(28325u, 4294967295u, u_input.c.x, u_input.c.x))), vec4<u32>(~u_input.c.x, 38806u >> (1u % 32u), 60618u, u_input.a)) | vec4<u32>(1u, u_input.a, max(u_input.a, u_input.c.x) << (46749u % 32u), firstLeadingBit(76303u)), vec4<u32>(func_1(Struct_4(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, 1u), vec4<i32>(-2147483647i, u_input.b.x, 50063i, -2147483647i), vec3<u32>(u_input.c.x, 57896u, 16949u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x))) ^ min(12829u, 1u), u_input.a, _wgslsmith_mult_u32(max(func_1(Struct_4(vec4<u32>(u_input.a, 8477u, u_input.c.x, 78123u), vec4<i32>(u_input.b.x, u_input.b.x, u_input.d.x, u_input.d.x), vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), vec4<u32>(0u, u_input.c.x, 62107u, u_input.c.x), u_input.b)), 4294967295u), 52266u), ~u_input.c.x));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1132f) * _wgslsmith_f_op_f32(682f - 1388f)), -1507f, _wgslsmith_f_op_f32(floor(1211f))))), Struct_2(var_0, Struct_1(u_input.d.x, any(func_2()), vec4<bool>(true, true, false, u_input.d.x > u_input.b.x), u_input.d.xx), ~(~_wgslsmith_add_vec3_u32(var_0.zzx, vec3<u32>(u_input.a, 18254u, u_input.c.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(var_0.yzz ^ vec3<u32>(u_input.a, u_input.c.x, 4294967295u)), ~abs(var_0.xxy)), 9u)], _wgslsmith_add_u32(~0u, reverseBits(var_0.x)) << (1u % 32u)), Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 23919u), u_input.c), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 1u), _wgslsmith_div_u32(4294967295u, u_input.c.x), 1u) ^ ~var_0, Struct_1(~_wgslsmith_mod_i32(u_input.b.x, -36602i), -u_input.d.x != -u_input.b.x, func_2(), vec2<i32>(~u_input.b.x, -1i)), reverseBits(~vec3<u32>(1u, u_input.c.x, 15358u)), Struct_1(u_input.b.x, true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), u_input.d.wx), 6370u >> (~_wgslsmith_add_u32(4294967295u, var_0.x) % 32u)));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_2 = vec3<bool>(var_1.b.d.b, false, false);
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-728f, -1273f, -1410f)), Struct_2(vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x & var_0.x, ~var_0.x, func_1(Struct_4(var_1.b.a, u_input.d, var_0.wzz, vec4<u32>(u_input.c.x, 33509u, 4294967295u, 1u), vec3<i32>(2147483647i, var_1.c.d.d.x, 1i)))), ~u_input.c.x, u_input.c.x, countOneBits(1u)), global0[_wgslsmith_index_u32(var_0.x, 9u)], var_0.xxz, Struct_1(u_input.b.x, !(!var_2.x), var_1.c.b.c, vec2<i32>(-1i, ~2147483647i)), 0u), var_1.c);
    let var_3 = max(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(u_input.b.x, u_input.d.x, 5186i)), select(-u_input.d.xwx & ~u_input.d.xyx, u_input.d.zyw, all(!var_1.c.b.c.zz))), vec3<i32>(0i, u_input.d.x, abs(~(~var_1.c.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(u_input.b.x, u_input.d.x));
}

