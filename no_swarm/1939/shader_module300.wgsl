struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = !(all(vec3<bool>(any(vec3<bool>(false, false, true)), false, any(vec2<bool>(true, true)))) || (min(_wgslsmith_mult_i32(-704i, u_input.a.x), -17307i) == ~(-1i)));
    var_0 = (any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false)) || all(!select(vec2<bool>(true, true), vec2<bool>(true, false), true))) || true;
    global0 = array<u32, 5>();
    let var_1 = global0[_wgslsmith_index_u32(8672u, 5u)];
    global0 = array<u32, 5>();
    return -2147483647i;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<u32, 5>();
    var var_0 = -vec4<i32>(u_input.a.x, u_input.a.x, 1i, ~(u_input.a.x << (~58303u % 32u)));
    let var_1 = Struct_1((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_2.a.x), vec2<u32>(arg_3.a.x, 1u)) ^ reverseBits(vec2<u32>(4294967295u, 31454u))) | arg_2.a, (~(vec3<u32>(69583u, 4294967295u, 583u) | arg_2.b) ^ ~arg_3.b) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.b.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 5u)], 0u), ~u_input.b), _wgslsmith_sub_vec3_u32(~arg_3.b, max(arg_3.b, arg_2.b)), vec3<u32>(0u, arg_2.b.x, arg_3.a.x) | vec3<u32>(1u, 59615u, arg_3.a.x)) % vec3<u32>(32u)));
    var_0 = ~select(vec4<i32>(_wgslsmith_sub_i32(var_0.x >> (arg_2.a.x % 32u), countOneBits(-1i)), ~_wgslsmith_add_i32(21159i, u_input.a.x), ~max(1i, u_input.a.x), _wgslsmith_mult_i32(~(-3650i), 0i)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, var_0.x), func_3(vec3<u32>(arg_2.a.x, 0u, 4294967295u))), ~var_0.x, 42112i, -_wgslsmith_dot_vec2_i32(var_0.yx, u_input.a)), !vec4<bool>(true, true, true, -14224i == var_0.x));
    global0 = array<u32, 5>();
    return Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.a.x, 1u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 26342u, arg_3.a.x)) | _wgslsmith_dot_vec2_u32(arg_2.a, vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(var_1.a.x, 5u)])), 32466u) << (_wgslsmith_clamp_vec2_u32(abs(~arg_2.b.yz), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_2.b.x), vec2<u32>(u_input.b, 1u)), _wgslsmith_mod_vec2_u32(arg_3.b.yy, vec2<u32>(13969u, 28333u))), ~arg_3.a | ~arg_2.b.xz) % vec2<u32>(32u)), vec3<u32>(~99513u, global0[_wgslsmith_index_u32(72236u, 5u)], 18188u));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<u32, 5>();
    var var_0 = 0u;
    var_0 = 1u;
    var var_1 = Struct_1(vec2<u32>(49139u, u_input.b >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_2.b, ~arg_2.b), 5u)], 5u)], 5u)] % 32u)), reverseBits(~arg_2.b));
    var_0 = _wgslsmith_add_u32(1u >> (global0[_wgslsmith_index_u32(~(~arg_2.b.x), 5u)] % 32u), ~_wgslsmith_dot_vec3_u32(arg_2.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 5u)], 0u, u_input.b), _wgslsmith_div_vec3_u32(arg_2.b, arg_2.b), var_1.b)));
    return select(select(vec2<u32>(arg_2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 34943u, 34534u), vec3<u32>(1u, u_input.b, 1u))), arg_2.b.xy, select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false)))), var_1.b.zz, select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, any(vec4<bool>(false, false, false, false))), vec2<bool>(true, true)), vec2<bool>(false, true), true | all(vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_2.zww;
    let var_1 = u_input.a.x;
    global0 = array<u32, 5>();
    let var_2 = _wgslsmith_clamp_vec2_u32(~func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(10486i, var_1, 2147483647i) ^ vec3<i32>(-1i, u_input.a.x, 1i), vec3<i32>(var_1, -1i, var_1) ^ vec3<i32>(var_1, 0i, u_input.a.x), -vec3<i32>(u_input.a.x, 0i, u_input.a.x)), arg_1.x, func_2(-1000f, vec4<f32>(480f, arg_1.x, 778f, -976f), Struct_1(vec2<u32>(u_input.b, arg_0.x), arg_0.zzw), Struct_1(arg_0.yx, vec3<u32>(u_input.b, u_input.b, arg_0.x)))), ~(~arg_0.xx ^ vec2<u32>(53846u, 4294967295u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(101742u, 38689u), _wgslsmith_sub_vec2_u32(arg_0.yw, vec2<u32>(4294967295u, u_input.b))) & ~firstTrailingBit(func_2(arg_1.x, vec4<f32>(-1248f, 1578f, 651f, arg_1.x), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(16717u, 5u)], arg_0.x), vec3<u32>(global0[_wgslsmith_index_u32(arg_0.x, 5u)], 29275u, arg_0.x)), Struct_1(vec2<u32>(74866u, global0[_wgslsmith_index_u32(1u, 5u)]), vec3<u32>(38293u, 22853u, 1u))).a));
    let var_3 = ~(~abs(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.b, 4294967295u, var_2.x, 39286u)), reverseBits(arg_0))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 17315u, global0[_wgslsmith_index_u32(47919u, 5u)], 43878u), vec4<u32>(4294967295u, u_input.b, 4294967295u, 54488u)), vec3<f32>(-862f, 1902f, -236f), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, false, false, true)), 51495u == global0[_wgslsmith_index_u32(u_input.b, 5u)], true, any(vec4<bool>(false, true, false, true))), vec4<bool>(false, false, any(vec2<bool>(true, false)), false)), select(!vec4<bool>(select(true, false, true), any(vec4<bool>(false, true, true, true)), true, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), select(true, true, any(vec4<bool>(true, true, false, false)))), func_1(min(abs(~vec4<u32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(1u, 5u)], 16965u)), vec4<u32>(28364u, firstTrailingBit(u_input.b), u_input.b, u_input.b)), vec3<f32>(358f, -427f, _wgslsmith_f_op_f32(-456f - -198f)), vec4<bool>(~u_input.a.x < u_input.a.x, true, !(-1946i <= u_input.a.x), func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 5u)], 1435u, 4294967295u, u_input.b), vec4<u32>(4294967295u, 4294967295u, 65017u, u_input.b)), vec3<f32>(1f, 1f, 1f), vec4<bool>(true, true, true, true)).x)).x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2405f * -842f), 543f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1262f, -1339f) - _wgslsmith_f_op_f32(377f + -1224f))))) + 383f);
    let var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a), ((vec2<i32>(1i, 1i) | countOneBits(u_input.a)) << (vec2<u32>(u_input.b ^ 1u, ~56309u) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(abs(u_input.a), ~(~u_input.a)));
    var var_3 = 597f;
    var_3 = -408f;
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    let var_4 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1, var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * -2090f), _wgslsmith_f_op_f32(404f * -1049f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -160f, 1000f, var_1) - vec4<f32>(var_1, 1234f, var_1, -1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 408f, var_1)))))), Struct_1(_wgslsmith_div_vec2_u32((vec2<u32>(u_input.b, 48707u) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)])) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(32309u, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<u32>(16931u, u_input.b))), ~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 5u)], 5u)], 0u))), func_2(-807f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -1406f, var_1, -366f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-868f, 692f, 1631f, -345f)), all(var_0.yz))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, -357f))))), func_2(_wgslsmith_f_op_f32(-1499f + _wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, 953f, -2666f, var_1))))), Struct_1(~vec2<u32>(4294967295u, 75202u), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)])), Struct_1(min(vec2<u32>(1u, global0[_wgslsmith_index_u32(89830u, 5u)]), vec2<u32>(1u, u_input.b)), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], u_input.b, u_input.b)))), Struct_1(reverseBits(~vec2<u32>(u_input.b, u_input.b)), reverseBits(vec3<u32>(0u, global0[_wgslsmith_index_u32(7490u, 5u)], u_input.b)) >> (~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49116u, 5u)], 5u)], 56438u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(max(~(-1i), u_input.a.x), -_wgslsmith_mod_i32(u_input.a.x, 1i), -1i, firstTrailingBit(1i | u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(-419f - 1077f)), _wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1, -537f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1 + -382f)))), false)));
}

