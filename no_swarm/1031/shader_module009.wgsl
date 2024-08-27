struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(15657i, -5970i, 6186i, -39130i), vec4<i32>(18707i, 7525i, 1i, 2147483647i), vec4<i32>(1i, i32(-2147483648), -1i, 27053i), vec4<i32>(-31327i, 1i, 1i, 11973i), vec4<i32>(2147483647i, -5244i, 0i, 1i), vec4<i32>(i32(-2147483648), -4802i, -42130i, 0i), vec4<i32>(0i, -31183i, 19989i, 41732i), vec4<i32>(2147483647i, -54504i, 0i, 0i));

var<private> global1: array<f32, 29> = array<f32, 29>(-498f, -162f, 1862f, -583f, -808f, -722f, -2673f, 527f, -596f, 1019f, 1000f, 942f, -484f, -666f, 101f, 1610f, -594f, 986f, 1533f, -1225f, 461f, 617f, 735f, -361f, -756f, 2066f, -343f, 519f, 806f);

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: i32) -> vec4<bool> {
    global0 = array<vec4<i32>, 8>();
    let var_0 = arg_0.b.c;
    var var_1 = vec4<bool>(all(vec3<bool>(!(arg_1 || true), !any(arg_0.b.e), ~1u >= (4059u | arg_0.e.x))), false, -2147483647i >= (-16937i << (reverseBits(_wgslsmith_mult_u32(26541u, arg_0.b.a.x)) % 32u)), any(select(select(arg_0.d, !vec2<bool>(arg_1, global2.x), arg_0.b.e.yz), select(select(arg_0.d, vec2<bool>(global2.x, global2.x), vec2<bool>(arg_0.d.x, arg_1)), vec2<bool>(global2.x, true), select(vec2<bool>(false, arg_0.c), arg_0.b.e.zy, arg_1)), any(!vec3<bool>(arg_0.a, true, arg_1)))));
    let var_2 = _wgslsmith_add_u32(0u & max(~arg_0.b.a.x, ~arg_0.e.x), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.b.b.x, 46924u) << (23941u % 32u), ~firstTrailingBit(31925u)), ~(~1605u)));
    global2 = select(vec2<bool>(any(vec3<bool>(false, any(var_1.xxz), any(vec3<bool>(false, true, false)))), false), var_1.yx, !var_1.zx);
    return !vec4<bool>(arg_1, true, false, select(true, global2.x, !(arg_0.b.c.x == -70901i)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(select(select(func_3(Struct_2(true, Struct_1(arg_1.a, vec4<u32>(1u, 29009u, arg_1.a.x, 26826u), arg_1.c, 813f, arg_1.e), arg_1.e.x, arg_1.e.zx, vec3<u32>(24326u, 15350u, 0u)), global2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_1.a.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], arg_1.d)), arg_1.c.x), select(vec4<bool>(true, false, true, arg_1.e.x), vec4<bool>(false, true, global2.x, global2.x), arg_1.e.x), select(!vec4<bool>(false, false, arg_1.e.x, arg_1.e.x), func_3(Struct_2(global2.x, arg_1, arg_1.e.x, arg_1.e.ww, vec3<u32>(arg_1.b.x, 4294967295u, arg_1.a.x)), false, vec4<f32>(arg_1.d, -659f, -1230f, global1[_wgslsmith_index_u32(52509u, 29u)]), -2147483647i), true)), arg_1.e, true), arg_1);
    let var_1 = ~_wgslsmith_mod_u32(4294967295u, firstLeadingBit(var_0.b.a.x));
    global2 = arg_1.e.zx;
    var_0 = Struct_4(select(!select(var_0.a, func_3(Struct_2(global2.x, arg_1, var_0.a.x, vec2<bool>(global2.x, true), arg_1.a), false, vec4<f32>(var_0.b.d, global1[_wgslsmith_index_u32(12793u, 29u)], var_0.b.d, var_0.b.d), arg_1.c.x), any(arg_1.e.xzy)), !select(vec4<bool>(arg_1.e.x, arg_1.e.x, false, arg_1.e.x), var_0.b.e, arg_1.e.x), select(!arg_1.e, !select(vec4<bool>(true, true, arg_1.e.x, true), vec4<bool>(global2.x, var_0.b.e.x, global2.x, global2.x), global2.x), true)), Struct_1(arg_1.b.wzx, vec4<u32>(1u, abs(var_1 & 45498u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.b.x, var_0.b.b.x), arg_1.b.ww), 1u), ~(-(~arg_1.c)), _wgslsmith_f_op_f32(1744f - _wgslsmith_f_op_f32(ceil(-686f))), var_0.b.e));
    var var_2 = !(!select(vec3<bool>(true, global2.x, global2.x || arg_1.e.x), vec3<bool>(false, var_0.a.x, global2.x | false), true));
    return Struct_2(any(vec2<bool>(true, func_3(Struct_2(var_2.x, Struct_1(vec3<u32>(4294967295u, var_1, 15618u), vec4<u32>(var_0.b.a.x, 1u, 1u, arg_1.a.x), u_input.a, 596f, vec4<bool>(false, false, true, var_0.a.x)), true, var_0.a.wz, var_0.b.b.xyy), var_0.a.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.d, -1098f, -1000f, arg_1.d))), var_0.b.c.x).x)), Struct_1(firstTrailingBit(firstTrailingBit(var_0.b.a)), ~vec4<u32>(reverseBits(arg_1.b.x), abs(var_0.b.a.x), abs(29155u), ~arg_1.a.x), -global0[_wgslsmith_index_u32(var_0.b.a.x, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_1.b.x, 29u)])))), vec4<bool>(false, all(vec3<bool>(true, var_0.a.x, arg_1.e.x)), global2.x, arg_1.e.x)), arg_1.e.x, !var_0.a.yy, var_0.b.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(firstLeadingBit(1i), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~arg_1, ~arg_2.e.x, arg_2.b.a.x), _wgslsmith_sub_vec3_u32(~arg_2.b.a, reverseBits(vec3<u32>(arg_2.b.a.x, 1u, arg_1)))), vec4<u32>(arg_2.b.a.x, 0u, abs(firstLeadingBit(4294967295u)), _wgslsmith_add_u32(4294967295u, arg_1) | abs(arg_1)), -global0[_wgslsmith_index_u32(35116u, 8u)], 1000f, !vec4<bool>(arg_2.b.e.x | true, !global2.x, arg_2.c, global2.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f + var_0.b.d)), -2025f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.b.b, vec4<u32>(88068u, arg_2.b.a.x, arg_1, arg_1)), 29u)])), arg_2.b.d)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-func_2(var_0.b.c.x, var_0.b).b.d), _wgslsmith_f_op_f32(ceil(-902f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f), 703f), -151f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(arg_2.e.x, 29u)])), _wgslsmith_f_op_f32(f32(-1f) * -1862f), _wgslsmith_f_op_f32(-var_0.b.d), arg_2.b.d) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1967f, func_2(arg_2.b.c.x, Struct_1(vec3<u32>(arg_1, 69421u, 3706u), var_0.b.b, vec4<i32>(arg_2.b.c.x, u_input.b.x, arg_2.b.c.x, 1i), -348f, arg_2.b.e)).b.d, 1108f))));
    global1 = array<f32, 29>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493f + arg_2.b.d) - _wgslsmith_f_op_f32(-arg_2.b.d)) - var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(u_input.b.x, Struct_1(arg_2.b.b.yxx, arg_2.b.b, vec4<i32>(u_input.a.x, -5154i, -1i, arg_2.b.c.x), arg_2.b.d, vec4<bool>(arg_2.d.x, false, arg_2.c, arg_2.a))).b.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d - 1080f)))));
    var var_3 = var_0.b.e.wzx;
    return Struct_2(true, func_2(-6497i, func_2(0i, func_2(u_input.b.x, Struct_1(var_0.e, vec4<u32>(arg_1, 1u, arg_1, 4294967295u), arg_2.b.c, -442f, var_0.b.e)).b).b).b, false, vec2<bool>(false, false), ~var_0.e);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    global0 = array<vec4<i32>, 8>();
    global2 = arg_0.b.e.xz;
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_0.e.x, 4294967295u), arg_0.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.b.x, arg_2.e.x, arg_2.b.b.x) & vec3<u32>(arg_2.e.x, arg_2.e.x, arg_2.e.x), vec3<u32>(arg_0.b.a.x, arg_0.e.x, 27515u))), vec3<u32>(_wgslsmith_add_u32(func_2(arg_2.b.c.x, arg_0.b).b.a.x, func_4(vec2<f32>(arg_1.a, 569f), 1u, arg_0).b.a.x), 0u, 1u), ~(~(arg_2.e & vec3<u32>(12607u, arg_0.e.x, arg_2.b.a.x)))), ~_wgslsmith_mod_vec4_u32(min(vec4<u32>(37429u, arg_0.b.a.x, 37367u, 82795u) & vec4<u32>(4294967295u, arg_0.e.x, arg_0.e.x, 4294967295u), arg_0.b.b), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(80811u, 1u, 5034u, 42352u), vec4<u32>(1u, 64940u, arg_0.e.x, arg_2.b.b.x)), vec4<u32>(arg_2.b.b.x, arg_2.e.x, 4294967295u, 1u))), vec4<i32>((~u_input.b.x ^ (arg_2.b.c.x | 21659i)) & -_wgslsmith_mod_i32(u_input.a.x, 16822i), ~_wgslsmith_add_i32(-arg_0.b.c.x, -u_input.a.x), max(_wgslsmith_mod_i32(-63104i, -1i), firstTrailingBit(-31341i)), ~_wgslsmith_mod_i32(~arg_2.b.c.x, 1i >> (0u % 32u))), global1[_wgslsmith_index_u32(arg_2.e.x, 29u)], arg_0.b.e);
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(var_0.b.xww, reverseBits(arg_2.e) | ~(~vec3<u32>(arg_2.e.x, 6837u, var_0.a.x))), vec4<u32>(arg_2.b.b.x, 0u, 1u, ~4294967295u), abs(arg_2.b.c), _wgslsmith_f_op_f32(885f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d, -1736f))))), var_0.e);
    global1 = array<f32, 29>();
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = func_5(Struct_2(func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_2)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a, global1[_wgslsmith_index_u32(4294967295u, 29u)]))))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 22449u, 13051u, 9896u)), func_2(_wgslsmith_div_i32(u_input.b.x, u_input.a.x), Struct_1(vec3<u32>(16831u, 33953u, 1u), vec4<u32>(4294967295u, 23031u, 14562u, 4294967295u), u_input.a, arg_2, vec4<bool>(true, true, global2.x, false)))).d.x, Struct_1(vec3<u32>(firstLeadingBit(0u), _wgslsmith_div_u32(1u, 4294967295u), 0u), ~reverseBits(vec4<u32>(0u, 1u, 68482u, 4294967295u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, -92i, 33254i), firstTrailingBit(u_input.a), global0[_wgslsmith_index_u32(1u, 8u)]), func_2(u_input.b.x ^ u_input.b.x, func_2(u_input.b.x, Struct_1(vec3<u32>(29586u, 1786u, 6079u), vec4<u32>(93150u, 1u, 60398u, 47732u), vec4<i32>(1i, 2147483647i, u_input.a.x, -36846i), -889f, vec4<bool>(false, false, global2.x, false))).b).b.d, vec4<bool>(true, global2.x, !global2.x, global2.x)), global2.x, vec2<bool>(true, true), ~(~countOneBits(vec3<u32>(1u, 44161u, 20037u)))), Struct_3(_wgslsmith_f_op_f32(round(-1645f))), func_2(_wgslsmith_div_i32(select(u_input.b.x ^ u_input.b.x, u_input.a.x << (1u % 32u), true), 13325i), func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.zz + vec2<f32>(-468f, 583f)))), ~abs(8999u), func_4(arg_1.wx, _wgslsmith_mod_u32(92834u, 15405u), func_4(arg_1.xz, 75627u, Struct_2(global2.x, Struct_1(vec3<u32>(1u, 20277u, 63161u), vec4<u32>(13693u, 35217u, 86235u, 0u), global0[_wgslsmith_index_u32(4294967295u, 8u)], -348f, vec4<bool>(false, global2.x, global2.x, false)), true, vec2<bool>(global2.x, true), vec3<u32>(4294967295u, 59066u, 33202u))))).b));
    var var_1 = reverseBits(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 72512u, 4294967295u, 79536u), vec4<u32>(1u, 0u, 1u, 23163u)), ~1u));
    var var_2 = 1i;
    var_0 = func_5(Struct_2(any(vec3<bool>(func_3(Struct_2(false, Struct_1(vec3<u32>(var_1.x, var_1.x, var_1.x), vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x), vec4<i32>(u_input.a.x, 2147483647i, 1i, -2147483647i), 837f, vec4<bool>(global2.x, global2.x, false, false)), false, vec2<bool>(false, global2.x), vec3<u32>(13017u, var_1.x, var_1.x)), global2.x, arg_1, u_input.b.x).x, false, true)), Struct_1(vec3<u32>(var_1.x, var_1.x, 4294967295u), ~vec4<u32>(1u, var_1.x, 38057u, 1u), ~(-vec4<i32>(u_input.a.x, 2147483647i, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(step(307f, -623f)), vec4<bool>(false, all(vec2<bool>(true, false)), true, true)), !global2.x, vec2<bool>(true, true), vec3<u32>(0u, 12705u, var_1.x)), arg_0, Struct_2(!(!(!global2.x)), func_2(select(-u_input.b.x, func_2(u_input.b.x, Struct_1(vec3<u32>(var_1.x, 0u, 30797u), vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), vec4<i32>(19258i, 2147483647i, u_input.a.x, u_input.b.x), 943f, vec4<bool>(global2.x, true, true, true))).b.c.x, global2.x || global2.x), func_4(_wgslsmith_f_op_vec2_f32(-arg_1.xw), _wgslsmith_div_u32(var_1.x, var_1.x), func_4(vec2<f32>(-2308f, 2823f), 1u, Struct_2(global2.x, Struct_1(vec3<u32>(1u, var_1.x, 1u), vec4<u32>(0u, 0u, var_1.x, var_1.x), vec4<i32>(26i, -53096i, u_input.a.x, 2147483647i), var_0.a, vec4<bool>(global2.x, global2.x, global2.x, false)), global2.x, vec2<bool>(false, false), vec3<u32>(0u, var_1.x, var_1.x)))).b).b, false, select(!vec2<bool>(true, global2.x), select(vec2<bool>(true, false), vec2<bool>(global2.x, false), !vec2<bool>(true, global2.x)), global2.x), func_2(u_input.b.x, Struct_1(~vec3<u32>(var_1.x, 4294967295u, var_1.x), select(vec4<u32>(29369u, 0u, var_1.x, 9397u), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), global2.x), u_input.a, global1[_wgslsmith_index_u32(var_1.x, 29u)], !vec4<bool>(global2.x, global2.x, global2.x, global2.x))).b.b.xxz));
    var var_3 = min(~countOneBits(~vec4<u32>(var_1.x, var_1.x, var_1.x, 0u)), ~(~min(vec4<u32>(var_1.x, 0u, var_1.x, 1u), vec4<u32>(var_1.x, var_1.x, var_1.x, 18647u)))) >> (~func_2(u_input.b.x >> (1u % 32u), func_4(arg_1.xz, 1u << (var_1.x % 32u), Struct_2(false, Struct_1(vec3<u32>(15032u, var_1.x, 0u), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), u_input.a, arg_0.a, vec4<bool>(global2.x, false, true, true)), false, vec2<bool>(global2.x, false), vec3<u32>(var_1.x, var_1.x, var_1.x))).b).b.b % vec4<u32>(32u));
    return Struct_2(true, Struct_1(~(~(~var_3.yzw)), vec4<u32>(_wgslsmith_add_u32(~4294967295u, var_3.x), var_1.x, ~var_1.x, countOneBits(20686u)), reverseBits(func_2(0i >> (1u % 32u), func_4(vec2<f32>(-294f, arg_2), var_1.x, Struct_2(global2.x, Struct_1(var_3.yyw, vec4<u32>(var_1.x, var_3.x, var_1.x, 45816u), vec4<i32>(-43430i, -1i, u_input.a.x, u_input.a.x), 606f, vec4<bool>(global2.x, true, global2.x, global2.x)), global2.x, vec2<bool>(true, true), var_3.yzw)).b).b.c), global1[_wgslsmith_index_u32(33564u, 29u)], !func_2(~2147483647i, Struct_1(vec3<u32>(1u, var_1.x, 20473u), vec4<u32>(13969u, var_1.x, var_1.x, var_1.x), u_input.a, -504f, vec4<bool>(global2.x, false, global2.x, global2.x))).b.e), any(func_2(~abs(u_input.b.x), Struct_1(var_3.zxx | var_3.zyw, ~vec4<u32>(2933u, 4294967295u, 0u, var_1.x), vec4<i32>(u_input.b.x, 9881i, 17489i, 2147483647i), _wgslsmith_f_op_f32(-arg_1.x), func_2(u_input.b.x, Struct_1(var_3.yyw, vec4<u32>(var_1.x, 91056u, 25834u, 36552u), u_input.a, -420f, vec4<bool>(false, true, false, false))).b.e)).d), !func_2(2513i, func_2(_wgslsmith_div_i32(u_input.a.x, -25831i), Struct_1(vec3<u32>(var_3.x, 0u, 8916u), vec4<u32>(var_1.x, 47078u, var_3.x, var_3.x), vec4<i32>(1i, -21394i, u_input.a.x, 1i), 738f, vec4<bool>(true, global2.x, true, global2.x))).b).d, vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, 79054u, 106380u), vec3<u32>(4252u, 46078u, 0u)), var_3.wyz), ~(var_3.x ^ ~4294967295u), min(var_1.x, 0u)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 29u)], 1986f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(106509u, 29u)]) * _wgslsmith_f_op_f32(-122f - 644f)))) * _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 29u)]))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~0u, 29u)], _wgslsmith_f_op_f32(f32(-1f) * -468f), false)));
    let var_1 = func_6(func_5(func_4(vec2<f32>(global1[_wgslsmith_index_u32(max(0u, 73818u), 29u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 29u)] + global1[_wgslsmith_index_u32(33668u, 29u)])), ~firstLeadingBit(10396u), func_2(1i, Struct_1(vec3<u32>(10276u, 1u, 87772u), vec4<u32>(49248u, 0u, 19902u, 1u), u_input.a, 1000f, vec4<bool>(true, false, true, global2.x)))), Struct_3(_wgslsmith_f_op_f32(-2576f * global1[_wgslsmith_index_u32(57097u, 29u)])), Struct_2(true, func_2(u_input.a.x, Struct_1(vec3<u32>(11932u, 0u, 4294967295u), vec4<u32>(16913u, 16778u, 0u, 0u), global0[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(1u, 29u)], vec4<bool>(true, false, true, false))).b, global2.x, vec2<bool>(true, false && global2.x), select(vec3<u32>(9653u, 0u, 1992u), vec3<u32>(4294967295u, 1u, 4294967295u), false) & _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 27632u), vec3<u32>(85886u, 4294967295u, 1u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-686f, -1175f, global1[_wgslsmith_index_u32(0u, 29u)], -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(12755u, 29u)], global1[_wgslsmith_index_u32(20174u, 29u)]))) * vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_f_op_f32(f32(-1f) * -493f), 220f, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(43759u, 0u), 29u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-929f, 548f, global1[_wgslsmith_index_u32(17433u, 29u)], global1[_wgslsmith_index_u32(13162u, 29u)]), vec4<f32>(global1[_wgslsmith_index_u32(10935u, 29u)], global1[_wgslsmith_index_u32(29795u, 29u)], global1[_wgslsmith_index_u32(17361u, 29u)], global1[_wgslsmith_index_u32(13094u, 29u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-273f, 1769f, global1[_wgslsmith_index_u32(26923u, 29u)], global1[_wgslsmith_index_u32(10282u, 29u)]))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-379f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8916u, 29u)] * 563f), func_4(vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]), 4294967295u, Struct_2(global2.x, Struct_1(vec3<u32>(0u, 17166u, 1u), vec4<u32>(17617u, 27986u, 1u, 4294967295u), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, -2147483647i), global1[_wgslsmith_index_u32(1u, 29u)], vec4<bool>(global2.x, global2.x, true, global2.x)), true, vec2<bool>(true, global2.x), vec3<u32>(18026u, 45563u, 0u))).b.d, _wgslsmith_f_op_f32(154f - global1[_wgslsmith_index_u32(1499u, 29u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -442f)))))));
    var var_2 = any(!select(vec3<bool>(func_2(u_input.b.x, var_1.b).b.e.x, var_1.c, func_2(-1i, Struct_1(vec3<u32>(76151u, var_1.e.x, 8290u), vec4<u32>(68489u, var_1.b.a.x, 1u, 1u), global0[_wgslsmith_index_u32(4294967295u, 8u)], var_1.b.d, var_1.b.e)).b.e.x), var_1.b.e.wxx, func_6(Struct_3(var_1.b.d), vec4<f32>(var_1.b.d, var_1.b.d, -918f, 445f), global1[_wgslsmith_index_u32(96813u, 29u)]).b.b.x < var_1.b.b.x));
    let var_3 = -2147483647i;
    var var_4 = global2.x;
    return -min(-36179i, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1294f - global1[_wgslsmith_index_u32(16956u, 29u)]))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(min(-1477f, 1589f)))), _wgslsmith_div_f32(226f, 369f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 29u)] - 929f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(2541u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(20804u, 29u)]), vec4<f32>(347f, -305f, 1000f, -992f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1290f, 629f, -134f, 366f)))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(10008u, 1u), 29u)], _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(753f, 127f))))))) == -702f;
    let var_2 = vec2<bool>(true, _wgslsmith_add_i32(func_1(), -_wgslsmith_add_i32(u_input.b.x, u_input.a.x)) < -9128i);
    let var_3 = vec4<i32>(1i, u_input.b.x, u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -1i));
    global2 = vec2<bool>(global2.x, select(var_2.x && var_2.x, true, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec4_f32(-var_0));
}

