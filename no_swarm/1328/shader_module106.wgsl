struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_4,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    let var_0 = abs(reverseBits(firstLeadingBit(_wgslsmith_mod_u32(1u, ~56710u))));
    let var_1 = -540f;
    global0 = array<vec4<bool>, 22>();
    global1 = arg_1.yz;
    return 4294967295u;
}

fn func_2() -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-535f, -975f, _wgslsmith_f_op_f32(floor(-1343f)), _wgslsmith_f_op_f32(526f + -1989f)))));
    let var_1 = u_input.b;
    let var_2 = ~(-_wgslsmith_div_i32(u_input.a.x | u_input.a.x, ~31395i)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(vec4<u32>(1649u, u_input.b, 4294967295u, var_1), vec3<bool>(global1.x, global1.x, false), u_input.d.x), _wgslsmith_div_u32(u_input.b, var_1), _wgslsmith_sub_u32(var_1, 1035u), 4294967295u) >> (vec4<u32>(1u, _wgslsmith_div_u32(u_input.b, u_input.b), 63230u, ~36710u) % vec4<u32>(32u)), select(~abs(vec4<u32>(0u, 4294967295u, u_input.b, var_1)), vec4<u32>(_wgslsmith_div_u32(var_1, var_1), 20482u, ~1u, u_input.b), global1.x || true)) % 32u);
    global1 = select(select(select(!vec2<bool>(false, global1.x), !select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), vec2<bool>(global1.x, true)), -2147483647i < u_input.e), vec2<bool>(_wgslsmith_f_op_f32(-var_0.a.x) <= _wgslsmith_f_op_f32(1085f - var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, var_2, 0i), u_input.d) <= (var_2 & 64248i)), vec2<bool>(false, global1.x)), vec2<bool>(all(!vec3<bool>(global1.x, global1.x, global1.x)), true), any(!vec3<bool>(false, true, global1.x)) & any(select(!vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(false, false)))));
    global1 = select(vec2<bool>(true, all(vec2<bool>(!global1.x, false || global1.x))), select(vec2<bool>(all(vec2<bool>(global1.x, global1.x)), select(select(true, global1.x, true), true, any(global0[_wgslsmith_index_u32(u_input.b, 22u)]))), vec2<bool>(all(vec2<bool>(global1.x, global1.x)), global1.x & all(vec4<bool>(true, global1.x, true, global1.x))), !any(vec4<bool>(global1.x, true, global1.x, global1.x))), !global1.x);
    return var_1;
}

fn func_1(arg_0: vec3<bool>) -> vec4<u32> {
    return select(abs(vec4<u32>(4294967295u, max(u_input.b, u_input.b), _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), 1945u)) & vec4<u32>(u_input.b, u_input.b, u_input.b, 12014u), select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u >> (1u % 32u), ~u_input.b, 4294967295u, 1u), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.b, 0u)), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) % vec4<u32>(32u)))), ~(~vec4<u32>(31690u, 14727u, 4294967295u, 50340u)), global0[_wgslsmith_index_u32(u_input.b, 22u)]), global1.x | (~(u_input.b >> (u_input.b % 32u)) <= _wgslsmith_sub_u32(func_2(), u_input.b)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(arg_1.d.a.x, _wgslsmith_f_op_f32(-868f * _wgslsmith_f_op_f32(max(arg_1.d.a.x, arg_1.d.a.x))))), ~vec3<u32>(_wgslsmith_clamp_u32(90545u >> (arg_0.x % 32u), u_input.b, ~2917u), 4294967295u, _wgslsmith_sub_u32(~35298u, _wgslsmith_clamp_u32(23295u, u_input.b, arg_1.e.x))), max(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.a, countOneBits(u_input.a)), abs(countOneBits(u_input.d.x)), 0i, ~(-u_input.e)), firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(arg_2, arg_2), u_input.e, ~(-71505i), i32(-1i) * -78942i))));
    global1 = select(vec2<bool>(global1.x, global1.x & global1.x), select(vec2<bool>(global1.x, !global1.x), select(vec2<bool>(!global1.x, global1.x | global1.x), select(!vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), global1.x), all(!vec3<bool>(false, true, global1.x))), vec2<bool>(true, true)), global1.x);
    var var_1 = firstTrailingBit(var_0.c.x);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-1311f + -1595f), ~vec3<u32>(0u, 19600u, u_input.b), var_0.c), vec3<bool>(!global1.x || global1.x, global1.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, false, true), vec3<bool>(true, true, global1.x))))), reverseBits(vec2<i32>(67356i, (7134i ^ arg_2) | -u_input.e)));
    let var_3 = Struct_3(var_2.a, select(select(select(!vec3<bool>(var_2.b.x, var_2.b.x, true), var_2.b, vec3<bool>(false, true, global1.x)), vec3<bool>(any(var_2.b), true, all(var_2.b)), var_2.b), vec3<bool>(!(-2147483647i < var_0.c.x), true, true), _wgslsmith_f_op_f32(-var_0.a) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1310f + -291f))), -vec2<i32>(36964i, -12502i) >> (arg_1.b.zy % vec2<u32>(32u)));
    return Struct_1(!(!select(!global0[_wgslsmith_index_u32(var_0.b.x, 22u)], global0[_wgslsmith_index_u32(8913u >> (var_3.a.b.x % 32u), 22u)], vec4<bool>(var_3.b.x, var_2.b.x, var_2.b.x, global1.x))), !vec2<bool>(true, select(global1.x, var_3.a.b.x != 0u, -19538i <= var_3.a.c.x)), 201f, !vec2<bool>(var_2.b.x, var_3.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = vec4<bool>(global1.x, true, false, true);
    var var_1 = firstTrailingBit(_wgslsmith_add_i32(u_input.d.x, arg_2.a.x));
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.c.x))), _wgslsmith_mult_vec3_u32(~(~firstTrailingBit(vec3<u32>(1u, 0u, 4294967295u))), _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(0u, arg_3.x, arg_2.e.x), arg_2.e.xxz, true), func_1(var_0.xzz).wwy, ~select(arg_2.e.xxy, vec3<u32>(arg_2.e.x, arg_2.e.x, arg_2.b.x), true))), ~select(firstLeadingBit(vec4<i32>(arg_2.a.x, arg_2.a.x, 0i, 1i)), u_input.d, !select(vec4<bool>(true, true, arg_0.a.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, arg_1.x), arg_1.x)));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> StorageBuffer {
    global0 = array<vec4<bool>, 22>();
    global1 = !(!func_4(vec4<u32>(~u_input.b, ~u_input.b, ~72641u, ~arg_1), Struct_5(firstLeadingBit(u_input.c.zy), func_1(vec3<bool>(false, global1.x, global1.x)).xyy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), Struct_4(vec4<f32>(1078f, 234f, 2036f, arg_0.a)), reverseBits(vec4<u32>(11114u, u_input.b, 0u, arg_1))), _wgslsmith_mod_i32(firstTrailingBit(28312i), 24045i)).b);
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1558f, -601f, arg_0.a, 1041f))))));
    let var_1 = Struct_5(~_wgslsmith_mult_vec2_i32(vec2<i32>(max(u_input.a.x, u_input.a.x), arg_0.c.x ^ -3501i), min(min(vec2<i32>(arg_2, u_input.c.x), u_input.c.yz), vec2<i32>(u_input.a.x, -48521i) >> (arg_0.b.zx % vec2<u32>(32u)))), vec3<u32>(_wgslsmith_mod_u32(arg_1, u_input.b), u_input.b >> (_wgslsmith_clamp_u32(u_input.b, 96247u, _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(115743u, arg_1, 1u))) % 32u), abs(4294967295u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(ceil(var_0.a))))), _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, var_0.a.x, -324f) - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -412f)))))), var_0, firstLeadingBit(reverseBits(vec4<u32>(arg_0.b.x, func_1(vec3<bool>(false, global1.x, true)).x, _wgslsmith_div_u32(1u, u_input.b), _wgslsmith_mod_u32(57432u, arg_1)))));
    let var_2 = var_1.d.a.xyz;
    return StorageBuffer(min(arg_2 << (reverseBits(0u) % 32u), var_1.a.x), _wgslsmith_f_op_f32(-func_5(Struct_1(vec4<bool>(global1.x, global1.x, false, true), vec2<bool>(false, true), -412f, func_4(var_1.e, var_1, 1i).b), vec2<bool>(arg_1 == 4294967295u, !global1.x), Struct_5(var_1.a, vec3<u32>(17711u, 1u, 31754u), var_0.a, var_0, var_1.e), vec2<u32>(u_input.b, ~4294967295u)).a), ~4294967295u, -2147483647i, ~vec3<i32>(_wgslsmith_mult_i32(~u_input.d.x, -2147483647i), 10634i, min(arg_2, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~5728i;
    var var_1 = 46559u;
    let x = u_input.a;
    s_output = func_6(func_5(func_4(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 34039u), vec4<u32>(u_input.b, u_input.b, u_input.b, 54888u)) >> (vec4<u32>(1u, 28709u, u_input.b, 14638u) % vec4<u32>(32u)), Struct_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 9897u)), vec4<f32>(822f, 1330f, 660f, -541f), Struct_4(vec4<f32>(-698f, -1042f, -443f, -836f)), func_1(vec3<bool>(true, global1.x, global1.x))), u_input.c.x), !func_4(vec4<u32>(1u, 4294967295u, 15640u, u_input.b), Struct_5(u_input.d.wx, vec3<u32>(26695u, 4294967295u, u_input.b), vec4<f32>(740f, -523f, 499f, -476f), Struct_4(vec4<f32>(-142f, -920f, 911f, 1000f)), vec4<u32>(0u, u_input.b, 1u, u_input.b)), u_input.e).a.zw, Struct_5(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, var_0, var_0), u_input.d), _wgslsmith_mult_i32(-1i, var_0)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.b, 34268u, u_input.b)), select(vec3<u32>(u_input.b, u_input.b, 56716u), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<bool>(global1.x, global1.x, false)), vec3<u32>(0u, 55442u, u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-835f, 442f, -534f, -1299f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1079f, 1000f, 408f, 204f) + vec4<f32>(-1487f, 634f, -163f, 624f))), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1640f, -981f, -1000f, -1000f))), firstTrailingBit(vec4<u32>(u_input.b, 45106u, 0u, u_input.b))), reverseBits((vec2<u32>(8666u, u_input.b) << (vec2<u32>(52515u, u_input.b) % vec2<u32>(32u))) & ~vec2<u32>(u_input.b, 12295u))), ~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(~var_0), ~u_input.a.x ^ ~(-2147483647i)), ~(-countOneBits(vec2<i32>(var_0, -50351i)))));
}

