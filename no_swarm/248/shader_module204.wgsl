struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(15989i, 22692i, 35424i, 1i), vec4<i32>(0i, -28050i, -1i, -19338i), vec4<i32>(5056i, 3808i, 0i, 1i), vec4<i32>(0i, 8388i, 1i, 20742i), vec4<i32>(40780i, -1i, 35551i, 5979i), vec4<i32>(-1i, i32(-2147483648), 10989i, -1i), vec4<i32>(1i, 28128i, 1i, 12042i), vec4<i32>(2147483647i, 2147483647i, 1i, -2395i), vec4<i32>(0i, 49187i, -18561i, 2147483647i), vec4<i32>(-1i, 0i, -31364i, -1i), vec4<i32>(-1i, 0i, 2147483647i, -8715i), vec4<i32>(14499i, i32(-2147483648), -23436i, 38237i), vec4<i32>(-294i, i32(-2147483648), 68837i, -35260i), vec4<i32>(14511i, 4481i, 83008i, 0i), vec4<i32>(1787i, 3096i, 28378i, 0i), vec4<i32>(0i, 17225i, 0i, -78i), vec4<i32>(2147483647i, 28540i, 69083i, -15981i), vec4<i32>(-6819i, -18900i, i32(-2147483648), -16618i), vec4<i32>(14248i, -16755i, -4779i, -14729i), vec4<i32>(-1i, 2147483647i, -409i, i32(-2147483648)), vec4<i32>(2147483647i, -17051i, 34395i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, 59970i, i32(-2147483648)), vec4<i32>(-9865i, 2147483647i, -45204i, 1i), vec4<i32>(36804i, 44622i, -17564i, 50758i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -8273i), vec4<i32>(-855i, 0i, -7365i, 2147483647i), vec4<i32>(56968i, i32(-2147483648), -16469i, -2604i));

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(21086u, vec3<u32>(0u, 28347u, 0u)), Struct_1(0u, vec3<u32>(63054u, 1u, 4294967295u)), Struct_1(0u, vec3<u32>(65359u, 31120u, 4294967295u)), Struct_1(4294967295u, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(48147u, vec3<u32>(21741u, 15962u, 13907u)), Struct_1(0u, vec3<u32>(850u, 4418u, 1u)));

var<private> global2: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(816f, 368f, 827f, -516f), vec4<f32>(620f, -122f, -208f, -153f), vec4<f32>(1109f, -799f, 1355f, 351f), vec4<f32>(341f, -1381f, -703f, -1293f), vec4<f32>(-1640f, 829f, -741f, 3098f), vec4<f32>(151f, 116f, -708f, -1211f), vec4<f32>(1095f, 638f, 2172f, -1104f), vec4<f32>(-1854f, -226f, -1388f, 2055f), vec4<f32>(628f, -638f, 730f, 988f), vec4<f32>(-252f, 410f, -409f, 927f), vec4<f32>(244f, 907f, -1377f, -940f), vec4<f32>(687f, -867f, 1776f, -385f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 6>();
    var var_0 = Struct_1(u_input.b, firstLeadingBit(_wgslsmith_div_vec3_u32(abs(~vec3<u32>(u_input.b, 58300u, 0u)), ~vec3<u32>(655u, u_input.b, 0u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-287f, 992f)), -485f, _wgslsmith_f_op_f32(select(-1167f, 495f, false)), _wgslsmith_f_op_f32(step(-488f, -270f))), global2[_wgslsmith_index_u32(reverseBits(firstTrailingBit(0u)), 12u)]) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(724f, 317f), _wgslsmith_f_op_f32(767f - 298f), 468f, _wgslsmith_f_op_f32(-2710f * 495f)), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.b, 12u)]), 34164u <= var_0.b.x))));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1900f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(856f - var_1.x)))))));
    var var_2 = _wgslsmith_div_f32(-1816f, var_1.x);
    return var_0.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    global2 = array<vec4<f32>, 12>();
    let var_0 = Struct_1(0u, min(~(~vec3<u32>(u_input.b, 79267u, arg_1.b.x)), vec3<u32>(_wgslsmith_mod_u32(arg_0.a, 27275u), ~56709u, arg_1.a)) | ((countOneBits(vec3<u32>(4294967295u, arg_0.a, arg_1.b.x)) & arg_1.b) | _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, arg_0.a, u_input.b), vec3<u32>(u_input.b, 4294967295u, 3141u))));
    let var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(20519u, arg_1.a), vec2<u32>(53598u, arg_1.a)) & (~arg_1.a << (0u % 32u)), (_wgslsmith_sub_u32(arg_0.b.x, 4294967295u) & select(arg_0.b.x, u_input.b, arg_3.x)) ^ 1u), ~select(~vec3<u32>(55644u, arg_0.b.x, var_0.b.x) & vec3<u32>(46906u, 45854u, arg_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a, arg_0.b.x, var_0.a), arg_0.b >> (arg_1.b % vec3<u32>(32u))), true));
    global0 = array<vec4<i32>, 27>();
    var var_2 = global1[_wgslsmith_index_u32(func_3(), 6u)];
    return var_0.b.x ^ abs(firstLeadingBit(~71740u ^ var_2.b.x));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_sub_u32(u_input.b, 19657u), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(49656u, 27263u), ~u_input.b, 1u) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(5449u, u_input.b, u_input.b)) % vec3<u32>(32u)), vec3<u32>(~u_input.b, max(86481u, firstTrailingBit(u_input.b)), func_4(global1[_wgslsmith_index_u32(func_3(), 6u)], Struct_1(u_input.b, vec3<u32>(1u, 0u, 1u)), -273f, select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(699f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-249f - 186f), -850f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1632f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(178f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(141f, 272f, false)), -421f))), 1f));
    let var_2 = Struct_1(~var_0.a, reverseBits(~(~vec3<u32>(var_0.b.x, u_input.b, 1u) & _wgslsmith_mod_vec3_u32(var_0.b, var_0.b))));
    global1 = array<Struct_1, 6>();
    global2 = array<vec4<f32>, 12>();
    return vec2<u32>(_wgslsmith_sub_u32(~4294967295u, ~_wgslsmith_add_u32(max(var_2.b.x, 1u), _wgslsmith_mult_u32(u_input.b, 61916u))), 22187u);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(true, arg_3.x >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + 1666f), _wgslsmith_f_op_f32(arg_3.x * -643f))), any(arg_2.xz), true);
    let var_1 = var_0.x;
    let var_2 = arg_0;
    global0 = array<vec4<i32>, 27>();
    return Struct_1(40384u, vec3<u32>(6460u, _wgslsmith_clamp_u32(select(30317u >> (arg_0.a % 32u), arg_0.b.x, true), func_2().x, 1u), ~(~var_2.a)));
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    global2 = array<vec4<f32>, 12>();
    var var_0 = (1u > u_input.b) && !any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)));
    let var_1 = select(~_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.b, 0u, u_input.b, 19579u) << (vec4<u32>(u_input.b, 29791u, u_input.b, 0u) % vec4<u32>(32u))), ~vec4<u32>(1u, 42342u, u_input.b, u_input.b) >> ((vec4<u32>(u_input.b, 0u, u_input.b, 28765u) >> (vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))), ~(~firstTrailingBit(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))), ~u_input.b >= 4294967295u);
    let var_2 = ~(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_1.x, u_input.b), ~72309u) ^ ~1u);
    var var_3 = func_5(global1[_wgslsmith_index_u32((4294967295u & (~u_input.b >> (var_1.x % 32u))) | _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(61593u >> (var_2 % 32u), _wgslsmith_add_u32(var_1.x, u_input.b))), 6u)], func_2(), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(823f, 486f, 277f), vec3<f32>(1000f, 1836f, -703f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1451f, 1015f, 591f)), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-915f, -1039f, -703f))))))));
    return abs(vec3<u32>(_wgslsmith_div_u32(4294967295u, var_2), ~abs(~13896u), ~abs(_wgslsmith_sub_u32(var_2, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    var var_0 = Struct_1(16999u, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, ~59371u, u_input.b), firstTrailingBit(select(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(1u, 6387u, u_input.b), true)), ~vec3<u32>(4294967295u, u_input.b, u_input.b) & func_1(u_input.a.xxx)), ~(~(~vec3<u32>(0u, 33726u, u_input.b)))));
    global2 = array<vec4<f32>, 12>();
    let var_1 = func_5(global1[_wgslsmith_index_u32(var_0.b.x, 6u)], _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(reverseBits(1u)), abs(u_input.b)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(41812u, 0u)), vec2<u32>(18915u, u_input.b) << (var_0.b.zz % vec2<u32>(32u)), vec2<u32>(u_input.b, 1u) << (var_0.b.zx % vec2<u32>(32u))), ~(~vec2<u32>(0u, 90987u))), select(var_0.b.yx, func_1(u_input.c.wwy).xz, !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), vec3<bool>(false, !all(vec2<bool>(false, true)), true), !all(vec4<bool>(false, true, false, false)) | true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, -1091f, -1540f)))));
    let var_2 = u_input.c.x > _wgslsmith_dot_vec3_i32(vec3<i32>(-4911i, u_input.c.x, 34749i << ((u_input.b >> (48784u % 32u)) % 32u)), -(~(-vec3<i32>(u_input.c.x, u_input.a.x, 0i))));
    global1 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1935f, 1528f, 2239f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, 216f, -1815f) + vec3<f32>(468f, 1594f, 1117f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 895f, -1942f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(580f, -2675f, -1568f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, -622f, 567f)) - vec3<f32>(-1291f, 450f, 854f)))), -vec3<i32>(u_input.c.x, -(~(-35517i)), u_input.a.x));
}

