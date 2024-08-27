struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: f32;

var<private> global2: f32 = 1439f;

var<private> global3: Struct_2 = Struct_2(false, 80051u, vec3<f32>(-453f, -1496f, 1581f), false, Struct_1(-2364i, vec2<bool>(false, true)));

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-616f)) * -1000f);
    return vec2<bool>(true, all(vec4<bool>(true, false, false & global4.a, -1807f != _wgslsmith_f_op_f32(global3.c.x + global3.c.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_1(2147483647i, !func_3());
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -790f);
    global1 = global3.c.x;
    return ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(75808u, _wgslsmith_dot_vec2_u32(vec2<u32>(2723u, 4801u), arg_1.zy), abs(17054u)), global0[_wgslsmith_index_u32(abs(~81564u), 28u)]), _wgslsmith_mod_u32(arg_1.x ^ 4294967295u, global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 28u)], 4294967295u)), 28u)]), ~45253u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(select(global3.d != global4.a, true, true), firstTrailingBit(46306u), vec3<f32>(_wgslsmith_f_op_f32(-1918f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.x), 372f)), _wgslsmith_f_op_f32(-4080f * -1271f), global3.c.x), true, Struct_1(i32(-1i) * -(~global3.e.a), select(global3.e.b, vec2<bool>(!global3.d, true), _wgslsmith_f_op_f32(sign(277f)) > _wgslsmith_div_f32(global3.c.x, 318f))));
    let var_1 = var_0.b;
    var var_2 = global3.e;
    global1 = var_0.c.x;
    var var_3 = var_0.e;
    return Struct_2(func_3().x, min(1u, abs(_wgslsmith_div_u32(21926u, 21730u))), global4.c, func_3().x, var_0.e);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_f32(arg_2.c.x, -2494f);
    global4 = func_4(_wgslsmith_clamp_vec3_u32(func_2(select(!vec4<bool>(true, arg_0.x, true, global3.d), !vec4<bool>(global4.d, false, false, true), arg_0), max(vec3<u32>(0u, arg_1.b, arg_1.b), vec3<u32>(2060u, 76599u, 6326u)) >> (vec3<u32>(arg_1.b, arg_1.b, arg_1.b) % vec3<u32>(32u))), select(abs(select(vec3<u32>(arg_2.b, 40534u, 7028u), vec3<u32>(59080u, 4294967295u, 28975u), vec3<bool>(false, false, true))), abs(vec3<u32>(arg_2.b, 35252u, global0[_wgslsmith_index_u32(95903u, 28u)]) | vec3<u32>(global4.b, 9201u, global0[_wgslsmith_index_u32(15220u, 28u)])), vec3<bool>(!arg_2.a, global4.c.x < -106f, 0u < global0[_wgslsmith_index_u32(arg_1.b, 28u)])), ~(~(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], arg_2.b, 0u)))), ~firstTrailingBit(~(~vec4<i32>(u_input.b, -2147483647i, 32853i, 2147483647i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(-arg_2.c.x)));
    var var_2 = arg_1;
    global0 = array<u32, 28>();
    return select(var_2.e.b.x, false, 1453f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.c.x * arg_1.c.x), _wgslsmith_div_f32(-863f, -1147f), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.e;
    global4 = Struct_2(all(select(vec3<bool>(true, func_1(vec4<bool>(var_0.b.x, global3.d, global4.e.b.x, global4.a), Struct_2(global3.d, 4294967295u, global4.c, var_0.b.x, global4.e), Struct_2(var_0.b.x, global3.b, global3.c, true, global4.e)), false), select(select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.b.x, global4.e.b.x, true), vec3<bool>(true, global3.d, true)), !vec3<bool>(true, global4.d, global3.e.b.x), func_3().x), vec3<bool>(true, true, true))), global4.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.c.x, global3.c.x))), _wgslsmith_div_f32(-993f, _wgslsmith_f_op_f32(max(-1000f, 1583f))), _wgslsmith_f_op_f32(f32(-1f) * -395f)))), 1425f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.c.x, 465f))))), func_4(vec3<u32>(global0[_wgslsmith_index_u32(52605u, 28u)], global4.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(56326u, global3.b, 4667u), vec3<u32>(27015u, 1u, global3.b)), vec3<u32>(global4.b, 0u, 8354u) >> (vec3<u32>(18896u, 11948u, global0[_wgslsmith_index_u32(global3.b, 28u)]) % vec3<u32>(32u)))), vec4<i32>(0i | -global3.e.a, abs(abs(29569i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(23832i, -2147483647i), vec2<i32>(global3.e.a, global4.e.a)), countOneBits(-2147483647i), 6699i), max(~global4.e.a, 30555i))).e);
    let var_1 = vec2<u32>(_wgslsmith_clamp_u32(~(~global4.b), ~26714u, 57062u), 4294967295u);
    var var_2 = Struct_2(any(vec3<bool>(global3.c.x == _wgslsmith_f_op_f32(sign(525f)), func_3().x, true)), var_1.x, _wgslsmith_f_op_vec3_f32(-global3.c), var_0.b.x, Struct_1(-2147483647i, vec2<bool>(all(vec2<bool>(false, global3.a)), var_0.b.x)));
    var_0 = func_4(func_2(select(select(!vec4<bool>(false, var_2.e.b.x, global3.e.b.x, true), select(vec4<bool>(false, true, false, global4.d), vec4<bool>(true, true, true, var_0.b.x), true), select(vec4<bool>(var_2.d, var_0.b.x, true, global3.d), vec4<bool>(global3.e.b.x, false, var_0.b.x, false), vec4<bool>(false, var_0.b.x, false, var_2.d))), vec4<bool>(global4.d, any(vec4<bool>(true, var_2.e.b.x, true, false)), true, global4.a), vec4<bool>(true, var_0.b.x | global4.e.b.x, func_4(vec3<u32>(4294967295u, 1u, 43320u), vec4<i32>(46513i, global4.e.a, var_2.e.a, 12361i)).d, !var_2.d)), vec3<u32>(reverseBits(~39149u), ~global0[_wgslsmith_index_u32(53617u, 28u)], 1u)), -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(0i, 0i, 9556i, 1i)) ^ ~vec4<i32>(-71443i, 2147483647i, global3.e.a, u_input.b), vec4<i32>(-1i, _wgslsmith_mod_i32(var_0.a, -22728i), 13986i, 0i))).e;
    global2 = var_2.c.x;
    var_0 = func_4(vec3<u32>(~0u, 1u, ~40443u), ~(~(~vec4<i32>(-42154i, 2147483647i, u_input.a, global3.e.a)) & vec4<i32>(u_input.b, 0i, 1i, -70552i))).e;
    var_0 = func_4(vec3<u32>(var_2.b & _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, var_2.b, var_2.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46367u, 28u)], 28u)]) ^ vec4<u32>(33152u, 4294967295u, var_1.x, 1u), countOneBits(vec4<u32>(69969u, var_1.x, var_2.b, 36474u))), ~func_2(select(vec4<bool>(false, var_2.e.b.x, global3.d, var_0.b.x), vec4<bool>(global3.a, global3.d, global3.e.b.x, var_2.d), true), ~vec3<u32>(8367u, global4.b, 9967u)).x, 55776u), _wgslsmith_mod_vec4_i32(min(~vec4<i32>(30322i, u_input.a, -11174i, u_input.a), vec4<i32>(global4.e.a, -6290i, -1i, 21134i)) | firstLeadingBit(vec4<i32>(var_0.a, 35940i, 1i, global3.e.a)), vec4<i32>(-abs(global4.e.a), var_0.a << (firstTrailingBit(global4.b) % 32u), u_input.a, _wgslsmith_add_i32(global4.e.a, -1i)))).e;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~(vec2<i32>(var_2.e.a, -28866i) | vec2<i32>(u_input.b, 1i)))), var_2.c.x, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.a, global4.e.a) << (countOneBits(11215u) % 32u), firstTrailingBit(abs(-2147483647i))));
}

