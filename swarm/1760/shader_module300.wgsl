struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: vec4<i32>;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(0u, 67348u, 4294967295u), vec4<u32>(1u, 77751u, 6262u, 117077u), -1211f, 75077u, i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    var var_0 = Struct_1(global1.a, abs(vec4<u32>(global1.a.x, u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global4.b, vec4<u32>(global1.a.x, arg_1.x, 0u, global4.d)), ~arg_1), 17854u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1077f - global4.c))), ~0u, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(select(global3.x, global1.e, global0[_wgslsmith_index_u32(global1.b.x, 3u)]), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, -7147i, -9308i)), ~2147483647i) & 1i, -1911i));
    var var_1 = true;
    global0 = array<bool, 3>();
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_add_u32(1u << (global1.a.x % 32u), ~6645u), abs(global4.a.x), arg_1.x), ~vec4<u32>(u_input.c, abs(~789u), _wgslsmith_clamp_u32(global1.a.x, firstTrailingBit(global1.a.x), 46686u), firstTrailingBit(~global1.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c)) * _wgslsmith_f_op_f32(step(arg_0, var_0.c))) - 294f))), u_input.c, select(1i, ~(-10141i), global0[_wgslsmith_index_u32(1u & u_input.c, 3u)]));
    var var_3 = Struct_1(vec3<u32>(global1.d | 4294967295u, var_2.b.x, 32008u), global1.b, global4.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(1u, 72612u, 0u), global1.a.x >> (34800u % 32u), u_input.c, 1u), ~vec4<u32>(global1.d, 0u, u_input.c, global4.b.x) & (select(vec4<u32>(global1.b.x, var_0.a.x, u_input.c, 53433u), global1.b, true) ^ select(arg_1, vec4<u32>(13001u, arg_1.x, 4294967295u, var_2.a.x), vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)])))), _wgslsmith_div_i32(_wgslsmith_mult_i32(countOneBits(global4.e ^ var_0.e), -6811i), 1169i));
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global4.b.x, 65649u), ~49437u), ~(~vec2<u32>(arg_1.x, 1u)) << (var_3.a.yz % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = min(~(-vec2<i32>(17960i, arg_0.e)) >> ((arg_0.b.yw | ~(~vec2<u32>(62513u, global4.b.x))) % vec2<u32>(32u)), u_input.a.xx | -global3.wz);
    var var_1 = arg_0;
    return !(!vec3<bool>(any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(39781u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), global0[_wgslsmith_index_u32(1u, 3u)])), global0[_wgslsmith_index_u32(firstTrailingBit(124850u) & func_3(-820f, vec4<u32>(global1.a.x, 21094u, 4294967295u, var_1.d)), 3u)], global0[_wgslsmith_index_u32(6063u, 3u)]));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_4(vec3<f32>(global4.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.c, 262f)) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1562f, global1.c))), Struct_1(vec3<u32>(~global4.d, _wgslsmith_mod_u32(u_input.c, 4294967295u), global1.d), ~vec4<u32>(1u, 0u, global1.d, global1.b.x) ^ select(min(vec4<u32>(u_input.c, global1.d, global4.b.x, global1.b.x), global1.b), ~global4.b, global0[_wgslsmith_index_u32(1u, 3u)] & false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-968f * global4.c) + _wgslsmith_f_op_f32(max(-1341f, global4.c)))), ~(~global1.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, global4.e, global3.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, global1.e, 26252i, global4.e), vec4<i32>(global1.e, u_input.b.x, 40843i, 1i), vec4<i32>(u_input.b.x, 1i, -1i, -2147483647i)))), !select(func_2(Struct_1(global4.a, vec4<u32>(58529u, global4.a.x, 1u, u_input.c), global4.c, u_input.c, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.c, -991f) * vec3<f32>(-235f, 183f, global1.c))), select(vec3<bool>(true, false, false), !vec3<bool>(global0[_wgslsmith_index_u32(global1.b.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(global1.d, 3u)], global0[_wgslsmith_index_u32(global1.d, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.a.x, 3u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.a.x, 3u)], global0[_wgslsmith_index_u32(global1.b.x, 3u)]))), !(global0[_wgslsmith_index_u32(59662u, 3u)] | global0[_wgslsmith_index_u32(562u, 3u)])), Struct_1(firstTrailingBit(vec3<u32>(func_3(-122f, global4.b), ~76187u, 38855u)), select(~vec4<u32>(global4.a.x, 0u, 15504u, 1u), abs(global4.b), global0[_wgslsmith_index_u32(83018u, 3u)]) << (_wgslsmith_mod_vec4_u32(global4.b, abs(global1.b)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(global4.c + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, 529f))), global1.d, i32(-1i) * -2147483647i));
    global1 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(func_4(vec3<f32>(global1.c, 642f, -584f), Struct_1(var_0.a, vec4<u32>(u_input.c, var_0.a.x, 11852u, 32134u), var_0.c, u_input.c, -111477i), vec3<bool>(false, global0[_wgslsmith_index_u32(22807u, 3u)], global0[_wgslsmith_index_u32(global4.b.x, 3u)]), Struct_1(global4.a, global4.b, global1.c, u_input.c, 33533i)).b.wwx), select(~vec3<u32>(4294967295u, global1.d, global4.b.x), select(var_0.a, global4.b.wwz, global0[_wgslsmith_index_u32(global1.b.x, 3u)]), !global0[_wgslsmith_index_u32(29816u, 3u)]), vec3<u32>(72700u, ~u_input.c, select(u_input.c, u_input.c, global0[_wgslsmith_index_u32(18088u, 3u)]))), firstTrailingBit(~var_0.a)), global1.b | (~firstLeadingBit(vec4<u32>(global1.d, 43181u, u_input.c, 55258u)) & ~global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f + global1.c)), ~35882u, var_0.e);
    var var_1 = Struct_1(global4.a << (~(~(~vec3<u32>(var_0.d, var_0.b.x, 0u))) % vec3<u32>(32u)), var_0.b, -302f, ~1u, max(countOneBits(var_0.e), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.c, global1.c)), Struct_1(countOneBits(var_0.a), global1.b, _wgslsmith_f_op_f32(-var_0.c), max(65074u, 99296u), global1.e), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(2568u, var_0.d), 3u)], true, true), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -1376f, var_0.c)), func_4(vec3<f32>(global4.c, -1100f, -257f), Struct_1(vec3<u32>(var_0.a.x, 854u, 83049u), global4.b, -257f, 1u, u_input.a.x), vec3<bool>(global0[_wgslsmith_index_u32(global4.d, 3u)], false, global0[_wgslsmith_index_u32(36699u, 3u)]), Struct_1(global1.b.zzy, global1.b, -486f, u_input.c, -34406i)), func_2(Struct_1(global1.a, global1.b, 608f, 32126u, global4.e), vec3<f32>(-441f, -375f, -1162f)), func_4(vec3<f32>(1069f, 949f, -200f), Struct_1(vec3<u32>(global4.b.x, var_0.b.x, var_0.d), vec4<u32>(1u, 54821u, 45832u, global4.d), global1.c, u_input.c, global4.e), vec3<bool>(global0[_wgslsmith_index_u32(76261u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], false), Struct_1(var_0.b.wwz, var_0.b, global1.c, u_input.c, global1.e)))).e));
    var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(var_1.c * global4.c), 472f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global4.b.yzy, _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.d, 4294967295u, 3092u), var_0.b.zzx)), ~var_1.b.zww), vec4<u32>(~_wgslsmith_dot_vec4_u32(global4.b, vec4<u32>(18016u, 12207u, 1u, global1.d)), 3826u, 1u | func_3(-303f, var_0.b), 0u), 1f, var_1.a.x, -var_1.e), func_2(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, var_1.c, var_0.c)), func_4(vec3<f32>(-948f, -502f, global4.c), Struct_1(var_1.b.zwz, vec4<u32>(global1.b.x, 2335u, global4.a.x, 21185u), global4.c, global1.a.x, 2147483647i), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), func_4(vec3<f32>(global1.c, var_1.c, 1491f), Struct_1(vec3<u32>(global4.d, global4.b.x, u_input.c), global1.b, -284f, 85244u, 0i), vec3<bool>(global0[_wgslsmith_index_u32(28474u, 3u)], false, true), Struct_1(vec3<u32>(1u, global4.b.x, var_1.b.x), vec4<u32>(global4.d, 1u, var_1.b.x, 4294967295u), 1018f, global4.d, global1.e))), select(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 3u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.d, 3u)], true), all(vec4<bool>(global0[_wgslsmith_index_u32(global4.a.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(global1.a.x, 3u)], global0[_wgslsmith_index_u32(31962u, 3u)]))), Struct_1(~vec3<u32>(u_input.c, 14269u, var_0.b.x), ~vec4<u32>(4294967295u, 43925u, var_0.a.x, 4294967295u), var_1.c, _wgslsmith_div_u32(global1.d, var_1.a.x), ~1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(965f, 1908f, -1030f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.c, -479f) - vec3<f32>(174f, var_0.c, -163f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c, 1481f, global4.c)))))), func_4(vec3<f32>(_wgslsmith_f_op_f32(1462f + _wgslsmith_f_op_f32(-2236f + global1.c)), _wgslsmith_f_op_f32(global4.c - -868f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c)))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, global1.a.x, 1u), max(var_0.a, var_0.b.yzy)), var_0.b, var_0.c, ~(var_0.b.x | 50885u), -(-1i | var_0.e)), vec3<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(global1.b.x, 3u)], global0[_wgslsmith_index_u32(global1.a.x, 3u)], global0[_wgslsmith_index_u32(5564u, 3u)])), all(vec3<bool>(false, global0[_wgslsmith_index_u32(20033u, 3u)], true)), false), func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1421f, var_1.c, -922f) - vec3<f32>(-319f, -2126f, var_1.c)))), func_4(vec3<f32>(1444f, -843f, 1130f), func_4(vec3<f32>(-399f, 1473f, global1.c), Struct_1(vec3<u32>(0u, var_1.b.x, 4294967295u), global1.b, global1.c, var_0.a.x, -44653i), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(27496u, 3u)]), Struct_1(var_1.a, var_0.b, var_1.c, 4294967295u, -49349i)), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 3u)], global0[_wgslsmith_index_u32(global1.d, 3u)], false), Struct_1(vec3<u32>(0u, global4.b.x, 4294967295u), var_0.b, global1.c, 4294967295u, 0i)), func_2(Struct_1(vec3<u32>(0u, var_1.b.x, u_input.c), vec4<u32>(0u, var_0.d, 23852u, 2149u), var_1.c, 4294967295u, var_0.e), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1150f, -1305f, global4.c)))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1289f, -2229f, global1.c) * vec3<f32>(var_1.c, -468f, global1.c)), Struct_1(var_0.b.yyw, var_0.b, -1881f, 97964u, var_1.e), vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false, global0[_wgslsmith_index_u32(6881u, 3u)]), Struct_1(vec3<u32>(var_1.a.x, global1.d, global1.a.x), var_1.b, 1719f, var_0.d, global1.e)))));
    var_1 = Struct_1(~firstLeadingBit(_wgslsmith_sub_vec3_u32(var_0.b.wyx, max(vec3<u32>(var_1.d, var_0.d, 15490u), var_0.b.wxw))), min(var_1.b, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(global1.b, min(vec4<u32>(global4.a.x, u_input.c, u_input.c, 0u), vec4<u32>(107270u, 1u, 4294967295u, 4294967295u))), firstLeadingBit(vec4<u32>(var_1.d, u_input.c, global1.a.x, 64305u)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), firstTrailingBit(_wgslsmith_mod_u32(func_4(vec3<f32>(-1125f, var_0.c, var_0.c), func_4(vec3<f32>(970f, var_0.c, -236f), Struct_1(global4.a, vec4<u32>(var_1.d, global1.d, 22164u, var_0.d), global1.c, 46467u, 9858i), vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 3u)], true, global0[_wgslsmith_index_u32(var_1.b.x, 3u)]), Struct_1(vec3<u32>(u_input.c, global1.d, 4294967295u), var_1.b, 507f, var_0.b.x, global3.x)), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], false, true), func_4(vec3<f32>(var_0.c, var_1.c, -838f), Struct_1(global1.b.xyw, vec4<u32>(14835u, 0u, 18039u, 1u), 686f, 4294967295u, 45298i), vec3<bool>(false, false, global0[_wgslsmith_index_u32(global1.b.x, 3u)]), Struct_1(vec3<u32>(global1.d, global4.d, var_1.a.x), global4.b, 607f, u_input.c, u_input.b.x))).b.x, ~func_3(-1149f, vec4<u32>(32251u, 50809u, global1.d, 1u)))), global1.e);
    return StorageBuffer(0i, global1.b.x, _wgslsmith_sub_vec2_i32(vec2<i32>(17887i, min(var_1.e, -11350i) >> (~var_1.b.x % 32u)), -countOneBits(~vec2<i32>(1i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

