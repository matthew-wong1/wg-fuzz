struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, true, false, true, false, true, true, false, true, false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !select(!vec3<bool>(global0[_wgslsmith_index_u32(46709u, 12u)], true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(~u_input.e, 12u)], true), !select(vec3<bool>(global0[_wgslsmith_index_u32(117075u, 12u)], arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, false))), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_0.x, true), vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(47590u, 12u)], true)))));
    var var_1 = Struct_1(max(~vec3<i32>(countOneBits(-2508i), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-11943i, -2147483647i, 2147483647i, 0i), vec4<i32>(-1i, u_input.d, u_input.d, u_input.c))), reverseBits(vec3<i32>(1i, _wgslsmith_clamp_i32(u_input.d, u_input.d, 0i), min(-1i, -2147483647i)))), !vec2<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, arg_0.x))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, abs(u_input.e)), 12u)]), vec2<u32>(u_input.e, u_input.e), firstTrailingBit(vec3<i32>(firstTrailingBit(u_input.c), u_input.b, -8979i)), -(~(-2147483647i)));
    let var_2 = Struct_1(vec3<i32>(2147483647i, -27996i, 19212i), var_0.yz, var_1.c, ~vec3<i32>(_wgslsmith_dot_vec3_i32(~var_1.d, -var_1.a), u_input.d, 25742i), _wgslsmith_dot_vec3_i32(-var_1.a, vec3<i32>(~(u_input.c ^ 57536i), 1i, 2147483647i)));
    var var_3 = reverseBits(_wgslsmith_div_vec4_u32(~abs(abs(vec4<u32>(34041u, 1u, 16627u, u_input.e))), abs(vec4<u32>(countOneBits(91225u), 40105u, ~var_2.c.x, u_input.a.x))));
    var var_4 = ~1i;
    return vec3<i32>(~(~var_1.a.x), var_1.d.x, abs(-77613i));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global0 = array<bool, 12>();
    var var_0 = Struct_1(func_3(vec2<bool>(true, true)) | ~select(-vec3<i32>(u_input.d, u_input.d, u_input.b), abs(vec3<i32>(2147483647i, u_input.c, u_input.b)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 12u)], true, global0[_wgslsmith_index_u32(4294967295u, 12u)])), select(select(!select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(arg_0.x, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 12u)], false)), !vec2<bool>(global0[_wgslsmith_index_u32(47522u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global0[_wgslsmith_index_u32(arg_0.x, 12u)]))), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(40374u, 12u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(51676u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 12u)], global0[_wgslsmith_index_u32(u_input.e, 12u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(24585u, 12u)])), global0[_wgslsmith_index_u32(58040u, 12u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-287f)), _wgslsmith_div_f32(-1739f, -311f))) <= 163f), arg_0.yz, _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, _wgslsmith_sub_i32(-28745i, 1i), 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.d, -28781i | u_input.d, 0i), select(~vec3<i32>(u_input.b, 2147483647i, u_input.d), vec3<i32>(u_input.d, -1i, 0i), true))), 2147483647i);
    let var_1 = var_0.b;
    var var_2 = Struct_2(~var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)), -452f)), ~(~max(var_0.c.x, 56473u) ^ 38868u), ~(~reverseBits(~1u)));
    let var_3 = select(vec3<bool>(false, var_1.x, any(select(vec2<bool>(false, var_0.b.x), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 12u)]), var_1.x))), vec3<bool>(true, true, true), false);
    return Struct_2(u_input.e, -1263f, ~arg_0.x, ~_wgslsmith_mod_u32(countOneBits(_wgslsmith_add_u32(0u, var_2.d)), firstTrailingBit(~u_input.a.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = arg_2;
    var var_2 = func_2(~vec3<u32>(26786u, ~(37857u | arg_1.d), min(_wgslsmith_mod_u32(85096u, 78353u), 0u)));
    let var_3 = 0u;
    var_2 = arg_1;
    return -abs(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 12226i, 2147483647i), vec3<i32>(u_input.d, -20225i, 63870i))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> f32 {
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    var var_0 = Struct_1(~max(~(-vec3<i32>(14621i, u_input.d, 0i)), func_4(496f, func_2(vec3<u32>(41449u, u_input.e, 9105u)), Struct_1(vec3<i32>(1i, u_input.c, -1i), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), u_input.a, vec3<i32>(u_input.c, -19187i, -1i), u_input.b))), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(arg_0.c | arg_0.a, 99685u, global0[_wgslsmith_index_u32(arg_0.c, 12u)]), 0u), 12u)], global0[_wgslsmith_index_u32(abs(countOneBits(71544u)), 12u)]), vec2<u32>(u_input.e, ~(~select(25238u, 1u, global0[_wgslsmith_index_u32(0u, 12u)]))), -(~(func_4(arg_0.b, Struct_2(arg_0.a, arg_1.x, 4294967295u, 12894u), Struct_1(vec3<i32>(1i, u_input.c, u_input.d), vec2<bool>(true, false), u_input.a, vec3<i32>(-2147483647i, u_input.b, u_input.d), -22665i)) ^ ~vec3<i32>(-1i, u_input.c, 1i))), -76792i);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.a.x & 45453u, _wgslsmith_f_op_f32(f32(-1f) * -549f), u_input.a.x, 22251u), _wgslsmith_div_vec2_f32(vec2<f32>(1156f, 1357f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1236f, 942f))))), _wgslsmith_f_op_f32(func_1(Struct_2(~u_input.e, _wgslsmith_f_op_f32(1000f + -391f), u_input.e, ~u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-522f, -549f) + vec2<f32>(449f, -1004f))))), global0[_wgslsmith_index_u32(u_input.a.x, 12u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-314f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1703f + 508f))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1792f), _wgslsmith_f_op_f32(floor(-482f)), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(0u, 23964u)), 12u)]));
    var var_2 = vec3<u32>(8333u, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.e, 1u), u_input.a.x), 4294967295u);
    var var_3 = true;
    var var_4 = ~select(~vec4<u32>(1721u, var_2.x, 4294967295u, 1u), countOneBits(vec4<u32>(1u, var_2.x, var_2.x, u_input.a.x)) & (vec4<u32>(u_input.e, 0u, 78111u, 0u) & vec4<u32>(3690u, u_input.a.x, 4405u, u_input.a.x)), true) ^ (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_2.x, 8377u, 0u), vec4<u32>(6851u, var_2.x, u_input.e, 4294967295u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(80528u, var_2.x, 66724u, 51189u), vec4<u32>(1u, 0u, 41290u, u_input.a.x)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 21940u, 0u, 4294967295u), vec4<u32>(14160u, 79087u, var_2.x, 18117u)))) & (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.x, u_input.a.x, u_input.a.x, var_2.x), abs(vec4<u32>(1u, 1u, 4294967295u, u_input.a.x))) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, var_2.x, u_input.a.x, 4294967295u), vec4<u32>(58294u, var_2.x, 37573u, 0u)), ~vec4<u32>(u_input.e, 74602u, var_2.x, var_2.x), select(vec4<bool>(false, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false, true, global0[_wgslsmith_index_u32(u_input.e, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true))) % vec4<u32>(32u))));
    global0 = array<bool, 12>();
    var_0 = _wgslsmith_f_op_f32(var_1 * -595f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(24956u, ~u_input.a.x, var_4.x, var_4.x >> (1u % 32u)), ~vec4<u32>(4294967295u, var_2.x, u_input.e, var_2.x) & ~vec4<u32>(33523u, 16750u, 56u, 0u), vec4<u32>(_wgslsmith_mult_u32(1u, 16590u), _wgslsmith_mod_u32(u_input.e, var_4.x), _wgslsmith_mult_u32(1u, 0u), var_2.x))), u_input.d, min(~(~vec4<u32>(var_2.x, 0u, 4294967295u, 11441u)), vec4<u32>(83087u, 0u, var_4.x, 1u)) | (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 51549u, var_2.x, var_4.x) >> (vec4<u32>(73966u, 1u, var_4.x, 4294967295u) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, 4294967295u, var_2.x, 25265u))) | vec4<u32>(0u, var_4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, var_2.x, var_2.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 14000u, 58836u)), _wgslsmith_add_u32(36881u, 50901u))), 4338u);
}

