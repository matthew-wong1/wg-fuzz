struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(-514f, true, 2054f), Struct_4(-830f, false, -918f), Struct_4(-229f, false, -412f), Struct_4(-1118f, false, -1000f), Struct_4(-288f, true, 1355f), Struct_4(948f, false, -1000f), Struct_4(1229f, false, 172f), Struct_4(1050f, true, 339f), Struct_4(-1281f, true, -1734f), Struct_4(640f, false, -1446f), Struct_4(972f, true, 224f), Struct_4(218f, true, 975f), Struct_4(236f, false, -132f), Struct_4(1334f, true, 954f), Struct_4(163f, false, 132f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = min(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -15985i, _wgslsmith_clamp_i32(arg_2.x, -3i, u_input.e)), -(vec3<i32>(-28418i, 2147483647i, 28051i) & vec3<i32>(arg_2.x, 2147483647i, u_input.b)))), arg_2.ywy);
    global0 = array<bool, 19>();
    return vec2<bool>(all(vec4<bool>((arg_1.x ^ arg_1.x) != max(1u, 42336u), !select(true, arg_0.x, arg_0.x), arg_0.x, any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)], arg_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], arg_0.x, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(arg_1.x, 19u)])))), global0[_wgslsmith_index_u32(1u, 19u)]);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> i32 {
    global0 = array<bool, 19>();
    global1 = array<Struct_4, 15>();
    global0 = array<bool, 19>();
    global1 = array<Struct_4, 15>();
    let var_0 = ~(~abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u) & u_input.c, u_input.c << (u_input.a % vec2<u32>(32u)))));
    return max(-24814i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, u_input.b, u_input.e), vec3<i32>(u_input.b, 0i, -2696i) >> (vec3<u32>(36425u, u_input.a.x, 658u) % vec3<u32>(32u)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(-2147483647i, u_input.e)), _wgslsmith_mod_i32(17882i, u_input.b)), -28839i), ~u_input.b));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: Struct_5) -> i32 {
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global1 = array<Struct_4, 15>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(-1669f, arg_0), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 19u)]))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-232f, arg_3.b.a), vec2<f32>(159f, -1000f), vec2<bool>(false, true)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2357f, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(615f, -1034f)))))))));
    var var_1 = vec4<i32>(-2147483647i, u_input.b, select(2147483647i, func_4(Struct_3(true, !arg_2, _wgslsmith_f_op_f32(f32(-1f) * -148f), vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 19u)], false, arg_3.a.b)), select(func_3(vec2<bool>(arg_2, false), u_input.d, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false)), vec2<bool>(true, true))), func_3(func_3(func_3(vec2<bool>(arg_2, arg_2), u_input.d, vec4<i32>(u_input.e, 2147483647i, u_input.e, 0i)), reverseBits(vec3<u32>(u_input.d.x, 18075u, u_input.d.x)), min(vec4<i32>(-9266i, 7481i, u_input.b, u_input.e), vec4<i32>(-1i, 31877i, 69764i, u_input.b))), (u_input.d >> (vec3<u32>(arg_1, u_input.c.x, arg_1) % vec3<u32>(32u))) << (~vec3<u32>(1u, 3156u, 32432u) % vec3<u32>(32u)), -vec4<i32>(u_input.b, 42546i, u_input.b, -2147483647i)).x), ~0i);
    return u_input.e ^ ((-11147i | var_1.x) | 1i);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    global0 = array<bool, 19>();
    var var_0 = 61720u;
    let var_1 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(0u >> ((73026u | u_input.c.x) % 32u), reverseBits(4294967295u >> (u_input.d.x % 32u))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, u_input.c.x)), 0u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(68123u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.d.x, u_input.a.x, 24270u))))), _wgslsmith_dot_vec3_u32(max(~u_input.d, u_input.d), select(u_input.d, u_input.d, select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(38410u, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global0[_wgslsmith_index_u32(10267u, 19u)], true)), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(47693u, 19u)], false), global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), true))), 70407u, firstTrailingBit(0u));
    let var_2 = global1[_wgslsmith_index_u32(73563u, 15u)];
    global0 = array<bool, 19>();
    return 1000f;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_5 {
    global1 = array<Struct_4, 15>();
    var var_0 = Struct_1(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(23782u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), global0[_wgslsmith_index_u32(u_input.c.x, 19u)])), select(vec3<bool>(-2147483647i < u_input.e, global0[_wgslsmith_index_u32(~u_input.c.x, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x), vec3<u32>(u_input.d.x, 79073u, u_input.a.x)), 19u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], false), vec3<bool>(false, false, true), !vec3<bool>(global0[_wgslsmith_index_u32(28613u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)])), select(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 19u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 19u)], false, true), true), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(6144u, 19u)]))), vec3<bool>(global0[_wgslsmith_index_u32(min(1u | u_input.c.x, ~4181u), 19u)], true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false), global0[_wgslsmith_index_u32(0u, 19u)])))), 4294967295u, u_input.d, !vec3<bool>(true, global0[_wgslsmith_index_u32(2537u, 19u)], global0[_wgslsmith_index_u32(~u_input.c.x, 19u)]));
    var var_1 = vec2<i32>(u_input.b, _wgslsmith_mult_i32(u_input.e, -2147483647i) & func_4(Struct_3(global0[_wgslsmith_index_u32(12957u, 19u)] & true, all(var_0.a), arg_0.x, var_0.d), vec2<bool>(true, var_0.d.x)));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(countOneBits(16568i), ~func_2(-1065f, 4294967295u, any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(43497u, 19u)], var_0.a.x)), Struct_5(Struct_4(-635f, global0[_wgslsmith_index_u32(4294967295u, 19u)], 796f), global1[_wgslsmith_index_u32(u_input.d.x, 15u)]))), -28327i);
    global1 = array<Struct_4, 15>();
    return Struct_5(Struct_4(_wgslsmith_f_op_f32(arg_0.x * arg_1.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d.x, var_0.c.x), vec2<u32>(var_0.b, 0u)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), var_0.c.xx, var_0.c.yz), _wgslsmith_mult_vec2_u32(var_0.c.yx, vec2<u32>(u_input.c.x, 25163u)))), 19u)], _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1345f, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -408f), true))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1299f)))), !(!(!global0[_wgslsmith_index_u32(var_0.c.x, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f)))));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(vec3<u32>(u_input.d.x, 1u, 44243u));
    let var_1 = arg_1.b;
    var var_2 = Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, ~82057u, _wgslsmith_sub_u32(var_0.a.x, var_0.a.x)) | _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, var_0.a.x, 1u)), _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, var_0.a.x, u_input.a.x)), select(u_input.d, vec3<u32>(u_input.d.x, var_0.a.x, var_0.a.x), arg_0.d)), ~reverseBits(vec3<u32>(4294967295u, var_0.a.x, u_input.d.x)), vec3<u32>(12223u, var_0.a.x, ~1u)));
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.c.x), _wgslsmith_clamp_u32(0u, var_2.a.x, 15117u)), ~15148u), var_2.a.yx) ^ ~(vec2<u32>(0u, _wgslsmith_sub_u32(var_2.a.x, var_0.a.x)) & ~var_2.a.zz);
    var_3 = _wgslsmith_mod_vec2_u32(var_2.a.xz, min(reverseBits(vec2<u32>(_wgslsmith_sub_u32(var_3.x, 6128u), ~var_2.a.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, var_3.x), vec2<u32>(var_2.a.x, 1u))));
    return Struct_1(!select(select(arg_0.d, !vec3<bool>(arg_1.b.b, true, false), false || global0[_wgslsmith_index_u32(24940u, 19u)]), !vec3<bool>(arg_0.d.x, arg_0.a, arg_1.a.b), arg_0.a & arg_0.d.x), abs(8370u & (~1u << (u_input.a.x % 32u))), abs(reverseBits(abs(vec3<u32>(var_3.x, 1u, var_0.a.x) << (vec3<u32>(var_2.a.x, var_3.x, 9912u) % vec3<u32>(32u))))), !vec3<bool>(func_3(arg_0.d.zz, var_2.a, vec4<i32>(14955i, -33510i, 0i, u_input.e)).x | any(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 19u)], var_1.b, false)), select(false, arg_0.b, true) | all(arg_0.d.xy), false == global0[_wgslsmith_index_u32(var_2.a.x, 19u)]));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_2(vec3<u32>(~((0u >> (arg_2.x % 32u)) ^ arg_0.a.x), ~38219u, arg_0.a.x));
    var var_1 = !all(!(!vec2<bool>(arg_1, arg_1)));
    let var_2 = func_7(Struct_3(true, true, -748f, !select(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 19u)], true, arg_1), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_1), false)), func_6(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_2(-1026f, 28155u, arg_1, Struct_5(Struct_4(-457f, true, -654f), global1[_wgslsmith_index_u32(0u, 15u)])), u_input.e >> (1u % 32u), max(vec3<i32>(1i, 18878i, 8574i), vec3<i32>(1i, 1i, -1351i)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_5(u_input.b, 30152i, vec3<i32>(u_input.b, u_input.e, u_input.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(510f - -1159f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-640f, -1927f) * vec2<f32>(157f, -540f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1430f, -1284f) - vec2<f32>(984f, 662f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-750f, 313f), vec2<f32>(-262f, -498f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(467f, -895f)) + _wgslsmith_f_op_f32(round(1f)))));
    global1 = array<Struct_4, 15>();
    let var_3 = abs(vec2<u32>(_wgslsmith_clamp_u32(select(20490u, 0u, var_2.d.x), 42679u, 1u), 4294967295u) & vec2<u32>(78792u, ~1u));
    return -(select(~vec4<i32>(19554i, -8536i, 16385i, u_input.e) << (select(vec4<u32>(var_0.a.x, arg_2.x, 58003u, var_0.a.x), vec4<u32>(2861u, arg_0.a.x, 51363u, var_2.b), true) % vec4<u32>(32u)), -(~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), select(select(vec4<bool>(false, var_2.a.x, var_2.d.x, false), vec4<bool>(false, arg_1, arg_1, arg_1), global0[_wgslsmith_index_u32(arg_2.x, 19u)]), select(vec4<bool>(false, false, false, var_2.d.x), vec4<bool>(false, false, false, false), arg_1), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 19u)], false, arg_1), vec4<bool>(false, arg_1, global0[_wgslsmith_index_u32(var_3.x, 19u)], global0[_wgslsmith_index_u32(var_3.x, 19u)]), vec4<bool>(var_2.d.x, false, true, var_2.a.x)))) | countOneBits(min(min(vec4<i32>(0i, -2147483647i, u_input.e, u_input.b), vec4<i32>(u_input.b, -1i, 10181i, u_input.e)), ~vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 15>();
    global0 = array<bool, 19>();
    let var_0 = vec3<i32>(u_input.b, (_wgslsmith_add_i32(-2147483647i, u_input.b | u_input.e) | (i32(-1i) * -u_input.b)) >> (73664u % 32u), u_input.e);
    var var_1 = vec2<i32>((firstTrailingBit(-13991i) & _wgslsmith_add_i32(abs(6766i), 22691i)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.d.x), abs(u_input.a.x), ~4294967295u), _wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, u_input.d) ^ ~u_input.d) % 32u), -24521i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_1(Struct_2(u_input.d | u_input.d), true, ~(u_input.d >> (vec3<u32>(0u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))))));
}

