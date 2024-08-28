struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> i32 {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + -270f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1693f)), 1499f, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-254f * -798f)))))));
    global0 = array<Struct_1, 14>();
    let var_1 = Struct_2(1550f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    return abs(u_input.b);
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_0 = countOneBits(_wgslsmith_add_u32(firstLeadingBit(~abs(4294967295u)), abs(1u)));
    var_0 = _wgslsmith_dot_vec4_u32(~(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) >> (select(reverseBits(vec4<u32>(4294967295u, 1u, 0u, 0u)), countOneBits(vec4<u32>(0u, 1u, 4294967295u, 0u)), all(vec2<bool>(true, true))) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(4294967295u, abs(1u), 26770u, 1u), firstLeadingBit(max(vec4<u32>(4294967295u, 3416u, 1u, 47362u), vec4<u32>(37398u, 31547u, 20584u, 0u)))), ~(~countOneBits(vec4<u32>(1048u, 4294967295u, 71348u, 8489u)))));
    return !select(select(vec2<bool>(u_input.b < 0i, false), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), any(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), vec2<bool>(true, true));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = vec2<bool>(func_3().x, arg_1.x | arg_3.x);
    let var_1 = arg_2.b.b;
    let var_2 = !vec3<bool>(false, all(select(!vec4<bool>(true, arg_1.x, arg_2.b.a, arg_1.x), select(vec4<bool>(false, var_0.x, false, arg_1.x), vec4<bool>(arg_2.b.c.x, arg_1.x, true, arg_3.x), vec4<bool>(arg_2.b.a, arg_2.b.c.x, false, false)), select(vec4<bool>(true, arg_3.x, true, arg_1.x), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_1.x, arg_3.x, false)))), true);
    let var_3 = vec3<u32>(~(~1u), 1u, ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(abs(arg_2.c), ~656u, min(73528u, 23125u)), arg_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, 86171u, 29417u) << (vec3<u32>(arg_2.c, arg_2.c, 22929u) % vec3<u32>(32u)), ~vec3<u32>(0u, arg_2.c, 19589u))));
    let var_4 = Struct_5(~18u, Struct_3(true, var_1, vec2<bool>(false, false), global0[_wgslsmith_index_u32(var_3.x, 14u)], _wgslsmith_mod_i32(u_input.b, -2147483647i)), ~(~5353u), _wgslsmith_f_op_vec2_f32(sign(arg_2.d)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~arg_2.c << (~0u % 32u)), countOneBits(~(var_3.x & 23105u))), 14u)]);
    return !vec4<bool>(any(vec2<bool>(true, any(var_0))), all(!select(vec4<bool>(false, var_4.b.a, arg_1.x, var_0.x), vec4<bool>(false, false, var_4.b.c.x, var_2.x), var_4.b.c.x)), any(select(vec4<bool>(false, false, var_0.x, arg_2.b.c.x), !vec4<bool>(arg_1.x, false, arg_1.x, false), arg_1.x & var_2.x)), arg_2.b.a);
}

fn func_1(arg_0: u32) -> Struct_5 {
    var var_0 = 46948i;
    var_0 = func_2();
    var var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(-256f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -613f)))), select(vec2<bool>(any(func_3()), false), vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(all(func_3()), true)), Struct_5(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0, arg_0)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(arg_0, arg_0))), Struct_3(any(vec3<bool>(true, true, true)), Struct_2(_wgslsmith_div_f32(1107f, -1000f), Struct_1(-144f)), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -334f)), u_input.b), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f + 1532f)), _wgslsmith_f_op_f32(step(1f, -1483f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(1u), 3518u, 1u, 1u), abs(vec4<u32>(arg_0, 0u, 12133u, arg_0) & vec4<u32>(1u, 4294967295u, arg_0, 10695u))), 14u)]), vec2<bool>(true, true));
    let var_2 = 0i;
    var var_3 = !func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-370f + -555f)))), vec2<bool>(var_1.x, false), Struct_5(min(arg_0 >> (74938u % 32u), reverseBits(arg_0)), Struct_3(any(vec2<bool>(var_1.x, var_1.x)), Struct_2(2589f, Struct_1(-1491f)), select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false)), global0[_wgslsmith_index_u32(14621u, 14u)], 51443i), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(51017u, 1u), vec2<u32>(arg_0, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-941f, 847f)))), global0[_wgslsmith_index_u32(48066u, 14u)]), !(!var_1.wz)).xyy;
    return Struct_5(firstLeadingBit(~arg_0), Struct_3(true, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1415f))), Struct_1(-335f)), !func_3(), global0[_wgslsmith_index_u32(37266u, 14u)], _wgslsmith_dot_vec4_i32(-(~vec4<i32>(5914i, 26982i, -60142i, -2147483647i)), ~vec4<i32>(0i, 22760i, -23343i, -10627i))), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1190f, -984f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1734f, 2168f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(136f, -1829f)), var_1.wx))))), Struct_1(1796f));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<f32>) -> i32 {
    global0 = array<Struct_1, 14>();
    var var_0 = min(~(~vec4<u32>(~4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(arg_0.c, 0u)), arg_0.c & 23802u)), ~(min(vec4<u32>(1u, arg_0.a, arg_0.a, arg_0.c) >> (vec4<u32>(arg_0.c, 31497u, 1u, arg_0.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(arg_0.a, arg_0.c, arg_0.c, 1746u))) & _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.c, arg_0.c, 34560u), vec4<u32>(arg_0.a, 55492u, arg_0.c, arg_0.c), vec4<u32>(4294967295u, 55889u, 15454u, arg_0.c)), vec4<u32>(64688u, arg_0.c, 4294967295u, 4294967295u))));
    let var_1 = func_1(~(~(~var_0.x)) ^ ~0u).d.x;
    var_0 = reverseBits(vec4<u32>(~arg_0.a, ~(~0u), _wgslsmith_mod_u32(var_0.x, 4294967295u), ~_wgslsmith_dot_vec3_u32(var_0.xwx, _wgslsmith_div_vec3_u32(var_0.xyw, var_0.xxw))));
    var var_2 = func_4(arg_1, !arg_0.b.c, arg_0, vec2<bool>(true, all(func_3()) || !arg_0.b.a)).wz;
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(max(4072i, func_5(func_1(4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-571f, 1780f)))), _wgslsmith_mult_i32(2147483647i, min(-2147483647i, -u_input.a))), _wgslsmith_sub_vec2_i32(-abs(vec2<i32>(0i, 22331i)), vec2<i32>(abs(1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 31267i), vec2<i32>(2147483647i, u_input.a)), ~vec2<i32>(0i, u_input.b)))));
    let var_1 = !(!func_1(1u).b.c);
    let var_2 = Struct_3(true, func_1(36140u).b.b, var_1, func_1(~(~1u)).e, var_0.x);
    let var_3 = (_wgslsmith_mod_u32(~(~21572u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 20871u, 4294967295u, 0u)), ~vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u))) << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 21379u), 1u) % 32u)) >> (_wgslsmith_mult_u32(select(0u, 1u, var_2.a), 0u) % 32u);
    global0 = array<Struct_1, 14>();
    let var_4 = _wgslsmith_clamp_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3, var_3), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, var_3), vec2<u32>(71519u, 51296u))), firstLeadingBit(vec2<u32>(19536u ^ var_3, select(48916u, 11703u, true)))), _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 24360u, var_3), vec3<u32>(var_3, 1u, var_3)), 4294967295u), ~(~reverseBits(vec2<u32>(4294967295u, 38690u)))), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_3, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(80593u, var_3), vec2<u32>(24044u, 1u), vec2<u32>(42662u, 0u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_3, var_3), vec2<u32>(29196u, 51635u)) % vec2<u32>(32u)), ~firstTrailingBit(vec2<u32>(var_3, var_3)))));
    var var_5 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-401f)), 410f)))));
    let x = u_input.a;
    s_output = StorageBuffer(18705u);
}

