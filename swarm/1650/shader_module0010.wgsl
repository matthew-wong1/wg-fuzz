struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, true, true, true, true, true, true, true, false, true, true, true, true, false, true, false, false, false, true, false, false, false, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_4(Struct_3(Struct_2(118993u, -(u_input.a.zzx | u_input.a.ywx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.c)) * vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), ~(~(u_input.a.x | -2987i)), arg_0, arg_0), Struct_2(_wgslsmith_add_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c, select(vec3<u32>(25270u, 17997u, u_input.b), u_input.c, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)], false)))), vec3<i32>(u_input.a.x, firstLeadingBit(i32(-1i) * -2147483647i), countOneBits(~0i)), arg_1.xxy));
    var var_1 = !(!(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)]))));
    var var_2 = true;
    var_1 = !(!(!vec2<bool>(false || global0[_wgslsmith_index_u32(10154u, 25u)], true)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-257f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.d.c.zx) + vec2<f32>(var_0.b.c.x, 297f)))) * vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.c.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.a.c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, 198f, arg_1.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_0.d.x)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(360f, arg_0.c.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(var_0.a.d.d.x, -354f, var_1.x)))), var_0.b.c.x)));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-615f)), arg_0.a.c.x)))));
    global0 = array<bool, 25>();
    let var_1 = Struct_4(arg_0, Struct_2(4294967295u, u_input.a.zwy, _wgslsmith_f_op_vec3_f32(func_3(arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(353f, 153f, var_0, 187f) * vec4<f32>(var_0, -233f, -1000f, -104f)))))));
    let var_2 = ~select(~countOneBits(arg_0.a.a ^ 4294967295u), ~(~var_1.b.a), true);
    let var_3 = var_1.a;
    return Struct_5(min(min(vec3<u32>(var_2, ~var_3.a.a, var_1.a.a.a), u_input.c), u_input.c), Struct_3(arg_0.a, abs(i32(-1i) * -2147483647i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.c.x, 539f) - var_1.b.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.c.c.x, var_0), arg_0.d.d)) - _wgslsmith_f_op_vec2_f32(-var_3.a.c.zz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.d.c), var_3.c.c), arg_0.a.c.yy), arg_0.d));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c.d.x, -198f, arg_0.b.c.a, -924f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b.a.c.x, 561f, arg_0.b.d.c.x, 602f))), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(42530u, 25u)], false, global0[_wgslsmith_index_u32(arg_0.a.x, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false, false, global0[_wgslsmith_index_u32(arg_0.b.a.a, 25u)]), true), global0[_wgslsmith_index_u32(~69175u, 25u)])))), vec4<f32>(-1121f, arg_0.b.c.d.x, 968f, 1404f)));
    var var_1 = 598f;
    global0 = array<bool, 25>();
    var var_2 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.b.a.b.x ^ 12037i, 1i), _wgslsmith_clamp_i32(-u_input.a.x | min(arg_0.b.b, arg_0.b.a.b.x), _wgslsmith_div_i32(-7548i, u_input.a.x) ^ 2147483647i, u_input.a.x)));
    var var_3 = select(vec4<u32>(_wgslsmith_mult_u32(~u_input.c.x, abs(15332u)) ^ abs(arg_0.b.a.a), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, arg_0.b.a.a), ~vec3<u32>(u_input.c.x, arg_0.a.x, u_input.b))), u_input.c.x, _wgslsmith_mod_u32(countOneBits(4294967295u), 1u)), ~abs(max(vec4<u32>(arg_0.b.a.a, 17280u, 44470u, 67497u), firstLeadingBit(vec4<u32>(u_input.b, arg_0.b.a.a, 23340u, 0u)))), !select(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.b.a.a, 25u)], true, global0[_wgslsmith_index_u32(arg_0.b.a.a, 25u)]), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.a.x, 25u)], global0[_wgslsmith_index_u32(arg_0.a.x, 25u)]), global0[_wgslsmith_index_u32(u_input.c.x, 25u)]));
    return Struct_2(~(~firstTrailingBit(38771u)), select(_wgslsmith_clamp_vec3_i32(-(vec3<i32>(1i, 2147483647i, u_input.a.x) ^ vec3<i32>(u_input.a.x, 0i, -2147483647i)), vec3<i32>(arg_0.b.a.b.x ^ arg_0.b.a.b.x, ~u_input.a.x, arg_0.b.a.b.x), vec3<i32>(-50216i, arg_0.b.b, ~arg_0.b.a.b.x)), _wgslsmith_clamp_vec3_i32(max(u_input.a.xyy << (arg_0.a % vec3<u32>(32u)), -arg_0.b.a.b), vec3<i32>(-1i, ~(-20689i), _wgslsmith_dot_vec3_i32(u_input.a.ywz, arg_0.b.a.b)), u_input.a.wwz), vec3<bool>(select(false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 1u), 25u)], all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, global0[_wgslsmith_index_u32(44537u, 25u)], true))), !global0[_wgslsmith_index_u32(45367u, 25u)], true)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(875f, vec2<f32>(var_0.x, -257f), var_0.wzz, var_0.yy), var_0)).x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.d.d.x - 2252f), _wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + -1563f))));
}

fn func_1() -> f32 {
    let var_0 = func_4(func_2(Struct_3(Struct_2(u_input.c.x, u_input.a.yyx, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1144f, 493f) + vec3<f32>(-807f, 1472f, 1159f))), u_input.a.x, Struct_1(_wgslsmith_f_op_f32(trunc(-811f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-584f, -917f) - vec2<f32>(-218f, 631f)), _wgslsmith_div_vec3_f32(vec3<f32>(-263f, -817f, 471f), vec3<f32>(271f, -771f, 640f)), vec2<f32>(175f, -278f)), Struct_1(_wgslsmith_div_f32(-407f, 704f), _wgslsmith_div_vec2_f32(vec2<f32>(-2264f, 435f), vec2<f32>(476f, 162f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(531f, 634f, -822f) * vec3<f32>(449f, 925f, 1249f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-103f, 1592f)))), u_input.b));
    global0 = array<bool, 25>();
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.c.x & u_input.c.x, ~0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 58792u, 45218u), vec3<u32>(var_0.a, 0u, u_input.b)), 25u)]) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.c.x), 4294967295u) % 32u), 60541u, _wgslsmith_sub_u32(func_4(func_2(Struct_3(var_0, 0i, Struct_1(554f, var_0.c.zz, vec3<f32>(-431f, 820f, -586f), var_0.c.zy), Struct_1(var_0.c.x, var_0.c.yz, var_0.c, vec2<f32>(var_0.c.x, 1141f))), 1u)).a, ~1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(~var_0.a, abs(30667u)), countOneBits(_wgslsmith_mod_u32(u_input.c.x, 1u)))), _wgslsmith_clamp_vec4_u32(select(select(countOneBits(vec4<u32>(1u, 1u, 28293u, 5654u)), vec4<u32>(var_0.a, 0u, 0u, u_input.b), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(45805u, 25u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 25u)], true, global0[_wgslsmith_index_u32(40235u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(53290u, 25u)], global0[_wgslsmith_index_u32(39353u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 137285u, var_0.a, var_0.a) ^ vec4<u32>(var_0.a, 70723u, u_input.b, u_input.b), ~vec4<u32>(48021u, 1u, 1u, var_0.a)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 25u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(26013u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], false, true), !global0[_wgslsmith_index_u32(40340u, 25u)])), ~(vec4<u32>(10373u, 0u, var_0.a, 46980u) << (vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, var_0.a) % vec4<u32>(32u))) | vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 1u), 73148u >> (u_input.b % 32u), ~12887u, _wgslsmith_mod_u32(111732u, 4294967295u)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0.a, var_0.a, 49933u), vec4<u32>(15591u, 22253u, u_input.c.x, u_input.b)) | (vec4<u32>(var_0.a, 0u, u_input.b, var_0.a) << (vec4<u32>(8269u, 15588u, var_0.a, 0u) % vec4<u32>(32u))))));
    var var_2 = var_0.b.x;
    var var_3 = Struct_1(533f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1273f, var_0.c.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x), var_0.c.yx)))), vec3<f32>(var_0.c.x, -1000f, _wgslsmith_f_op_f32(sign(1353f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.c.xz)))));
    return -2363f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1181f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(593f + 1401f)))))));
    var var_1 = 19195i;
    global0 = array<bool, 25>();
    var_1 = u_input.a.x;
    var_1 = ~(-_wgslsmith_clamp_i32(-1891i, u_input.a.x, -u_input.a.x >> (6349u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(u_input.c, u_input.c));
}

