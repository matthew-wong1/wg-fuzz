struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<bool, 15>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = !select(vec3<bool>(!all(vec3<bool>(arg_0.x, true, false)), false, select(all(arg_0.ywz), arg_0.x, 354f > arg_1.b)), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], all(arg_0), global0.b.x >= 4294967295u), !vec3<bool>(false, false, global2[_wgslsmith_index_u32(1u, 15u)]), arg_1.b == _wgslsmith_f_op_f32(round(1000f))), global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, u_input.a.x))), 15u)]);
    var var_1 = var_0.xx;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(arg_1.b * -2299f);
    var var_4 = arg_1.a.x;
    return _wgslsmith_dot_vec4_i32(~(~max(~arg_1.a, min(vec4<i32>(global0.d, 2147483647i, arg_1.d.x, global0.d), vec4<i32>(u_input.c, global0.d, u_input.c, 2147483647i)))), vec4<i32>(_wgslsmith_add_i32(~u_input.c, global0.e.a), 2147483647i, 1i, global0.d));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = ~max(vec2<i32>(arg_0.a, -firstTrailingBit(0i)), vec2<i32>(min(countOneBits(global0.e.a), u_input.d), 21509i << (0u % 32u)));
    global2 = array<bool, 15>();
    global1 = global2[_wgslsmith_index_u32(~11411u, 15u)];
    global1 = false;
    let var_1 = ~firstTrailingBit(0i);
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.b ^ _wgslsmith_add_vec4_i32(u_input.b, u_input.b), -(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.d, u_input.d, 2147483647i, global0.d), u_input.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.e, 1u, global0.a), vec4<u32>(0u, 4294967295u, global0.c, u_input.a.x)) % vec4<u32>(32u)))), 0i);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = vec4<bool>(any(select(vec3<bool>(true, true, false), !select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 15u)], global2[_wgslsmith_index_u32(9139u, 15u)], false), false), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0, 15u)], global2[_wgslsmith_index_u32(arg_0, 15u)])))), all(!select(select(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(u_input.e, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], true, false, true), false), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 15u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], false, global2[_wgslsmith_index_u32(18616u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]))), !any(vec3<bool>(true, true, true)), false);
    let var_1 = global0.e;
    var var_2 = 1u;
    global2 = array<bool, 15>();
    global0 = Struct_2(_wgslsmith_sub_u32(u_input.e, min(global0.b.x, reverseBits(0u))), (abs(u_input.a) << (vec2<u32>(~1u, ~global0.b.x) % vec2<u32>(32u))) >> ((vec2<u32>(113197u, ~4294967295u) & reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global0.c), vec2<u32>(684u, u_input.e)))) % vec2<u32>(32u)), u_input.a.x, _wgslsmith_add_i32(~arg_1, _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.e.a, var_1.a), u_input.b.xy ^ u_input.b.xy) >> (~69170u % 32u)), global0.e);
    return abs(0u);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3, 198f, 995f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(891f, arg_3, 833f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -289f, arg_3) + vec3<f32>(-243f, arg_3, arg_3)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_3)) * vec3<f32>(arg_3, arg_3, 445f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1713f, _wgslsmith_f_op_f32(-726f + arg_3), arg_3) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, -1000f, 517f), vec3<f32>(arg_3, 3220f, arg_3), true)))));
    let var_1 = Struct_2(1907u, vec2<u32>(~abs(_wgslsmith_mult_u32(35621u, 37961u)), abs(0u >> (firstTrailingBit(4294967295u) % 32u))), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.b.x, u_input.a.x), ~select(~arg_2.b.x, ~u_input.e, global2[_wgslsmith_index_u32(u_input.e, 15u)] | false)), _wgslsmith_mod_i32(arg_1.a, 1i), Struct_1(arg_2.e.a));
    var var_2 = Struct_2(firstLeadingBit(var_1.a) >> (~_wgslsmith_clamp_u32(0u << (u_input.e % 32u), 49832u << (0u % 32u), global0.a) % 32u), global0.b, 36461u, 1i, arg_2.e);
    let var_3 = -1750f;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(456f, arg_3), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.zz - _wgslsmith_div_vec2_f32(vec2<f32>(669f, var_0.x), vec2<f32>(582f, var_0.x)))))), global2[_wgslsmith_index_u32(var_2.c, 15u)]));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> bool {
    global0 = func_5((-func_2(vec4<bool>(arg_1.x, false, arg_1.x, global2[_wgslsmith_index_u32(arg_0, 15u)]), Struct_3(vec4<i32>(u_input.c, 2147483647i, -5613i, 48973i), 781f, -2147483647i, u_input.b.xww)) | global0.e.a) & u_input.c, Struct_1(_wgslsmith_dot_vec3_i32(u_input.b.ywx, u_input.b.yyy)), Struct_2(~u_input.a.x >> (func_4(1u, func_3(global0.e), i32(-1i) * -1i) % 32u), max(_wgslsmith_div_vec2_u32(global0.b, vec2<u32>(arg_0, global0.c)), vec2<u32>(4294967295u, 1u)) >> ((firstTrailingBit(vec2<u32>(18542u, global0.c)) >> (~global0.b % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a.x, func_2(select(select(vec4<bool>(false, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], false, false), vec4<bool>(arg_1.x, true, true, global2[_wgslsmith_index_u32(1u, 15u)])), !vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 15u)], true, global2[_wgslsmith_index_u32(global0.c, 15u)], false), global2[_wgslsmith_index_u32(countOneBits(u_input.e), 15u)]), Struct_3(-u_input.b, _wgslsmith_div_f32(403f, -1225f), global0.e.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-13539i, 1i, 49056i), u_input.b.xzy))), global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(-557f, 996f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(657f)))))) - -1211f));
    global2 = array<bool, 15>();
    global2 = array<bool, 15>();
    var var_0 = -2147483647i;
    let var_1 = -184f;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_1(global0.b.x, vec2<bool>(false, true)) && true, true, true, all(select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(global0.b.x, 15u)]), global2[_wgslsmith_index_u32(0u, 15u)])) || (global0.a <= firstLeadingBit(u_input.e)));
    var var_1 = func_5(global0.e.a << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(12847u, 17114u, 1u, 23766u), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, 33228u, u_input.e, 0u), vec4<u32>(0u, 2004u, global0.b.x, 1u))), _wgslsmith_div_vec4_u32(vec4<u32>(global0.b.x, global0.c, u_input.a.x, global0.b.x), select(vec4<u32>(76803u, 1u, u_input.a.x, global0.a), vec4<u32>(u_input.a.x, 7621u, 72064u, 4294967295u), var_0.x))) % 32u), global0.e, Struct_2(22763u, select(_wgslsmith_clamp_vec2_u32(global0.b, abs(vec2<u32>(35867u, u_input.a.x)), u_input.a), vec2<u32>(abs(global0.b.x), func_4(u_input.a.x, -151i, global0.e.a)), select(vec2<bool>(var_0.x, var_0.x), !var_0.zz, vec2<bool>(false, true))), func_5(u_input.d, Struct_1(-2147483647i), func_5(func_5(19772i, Struct_1(u_input.c), Struct_2(1u, global0.b, u_input.e, global0.d, global0.e), -847f).d, global0.e, Struct_2(18146u, vec2<u32>(4294967295u, u_input.a.x), 46972u, u_input.c, Struct_1(u_input.b.x)), 1f), -1000f).b.x, global0.d, global0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1164f - 1090f) - _wgslsmith_f_op_f32(trunc(-409f)))));
    global0 = func_5(global0.e.a, Struct_1(_wgslsmith_div_i32(reverseBits(-var_1.e.a), func_5(_wgslsmith_dot_vec3_i32(u_input.b.xxy, u_input.b.wzw), func_5(global0.d, global0.e, Struct_2(var_1.b.x, vec2<u32>(35211u, 1u), u_input.a.x, -60985i, Struct_1(2706i)), 1316f).e, Struct_2(59163u, var_1.b, 0u, u_input.c, Struct_1(global0.d)), _wgslsmith_f_op_f32(step(1320f, 1835f))).d)), func_5(-(~func_2(var_0, Struct_3(u_input.b, 285f, 5215i, vec3<i32>(-3443i, 2147483647i, -1i)))), Struct_1(u_input.d), func_5(~var_1.d, func_5(0i, Struct_1(-17733i), func_5(-6559i, var_1.e, Struct_2(global0.b.x, var_1.b, 1u, global0.d, Struct_1(-17095i)), -443f), _wgslsmith_f_op_f32(824f + 135f)).e, Struct_2(~global0.c, _wgslsmith_div_vec2_u32(vec2<u32>(global0.a, u_input.e), global0.b), 4294967295u, -1i, func_5(3356i, var_1.e, Struct_2(5734u, u_input.a, u_input.e, -1i, var_1.e), -498f).e), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1693f)))), _wgslsmith_f_op_f32(abs(210f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = Struct_3(abs(vec4<i32>(u_input.d ^ ~global0.e.a, ~(u_input.c | global0.e.a), -2147483647i, global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2237f)), -2147483647i ^ firstTrailingBit(countOneBits(~global0.d)), firstLeadingBit(~u_input.b.zwy));
    var_1 = func_5(1i, global0.e, Struct_2(global0.c, u_input.a, 0u, _wgslsmith_mult_i32(global0.d, countOneBits(~global0.e.a)), Struct_1(u_input.c)), 522f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(34286i, -47213i));
}

