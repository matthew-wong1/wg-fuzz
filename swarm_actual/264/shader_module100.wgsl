struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(0i, -41162i, -34220i, 12851i, 32199i, 2147483647i, 57781i, 2147483647i, 1i, -22471i, 2625i, 1i, 33372i, 27017i, i32(-2147483648), 0i, 1i, 37244i, 0i, -15919i, 23591i, 1977i, -11181i, -8297i, -1721i, 1i, i32(-2147483648), -1i, -1i, i32(-2147483648));

var<private> global1: i32 = 2147483647i;

var<private> global2: array<i32, 3> = array<i32, 3>(8768i, 0i, 2147483647i);

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec3<u32>(1u, 40586u, 19070u), Struct_2(vec4<u32>(1u, 92961u, 4419u, 4294967295u), vec2<f32>(-374f, 1703f)), Struct_1(-254f, vec3<f32>(-416f, 904f, 718f), -680f)), Struct_4(vec3<u32>(68446u, 4294967295u, 39846u), Struct_2(vec4<u32>(5246u, 1u, 0u, 5584u), vec2<f32>(-670f, -712f)), Struct_1(553f, vec3<f32>(-1000f, -2321f, -698f), -929f)), Struct_4(vec3<u32>(4294967295u, 0u, 42738u), Struct_2(vec4<u32>(38179u, 1u, 85864u, 4294967295u), vec2<f32>(281f, -122f)), Struct_1(-844f, vec3<f32>(960f, 477f, -3174f), -1895f)), Struct_4(vec3<u32>(70719u, 23305u, 14320u), Struct_2(vec4<u32>(1u, 1u, 0u, 77190u), vec2<f32>(-547f, 1666f)), Struct_1(987f, vec3<f32>(200f, -1670f, -199f), 1489f)), Struct_4(vec3<u32>(42091u, 16350u, 4294967295u), Struct_2(vec4<u32>(1u, 35794u, 56573u, 36140u), vec2<f32>(-1065f, 623f)), Struct_1(2102f, vec3<f32>(-1089f, -220f, 1931f), 1364f)), Struct_4(vec3<u32>(64867u, 10672u, 1u), Struct_2(vec4<u32>(0u, 22774u, 1u, 50872u), vec2<f32>(-1000f, 938f)), Struct_1(-1000f, vec3<f32>(-2112f, -1361f, 473f), -171f)), Struct_4(vec3<u32>(1u, 77548u, 4294967295u), Struct_2(vec4<u32>(56026u, 0u, 1u, 7776u), vec2<f32>(345f, -1496f)), Struct_1(-374f, vec3<f32>(-485f, -629f, 823f), -1210f)), Struct_4(vec3<u32>(8380u, 4294967295u, 12554u), Struct_2(vec4<u32>(13100u, 4294967295u, 1965u, 0u), vec2<f32>(-756f, 659f)), Struct_1(1085f, vec3<f32>(809f, 819f, 1354f), 227f)));

var<private> global4: vec3<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec3<i32>) -> bool {
    global3 = array<Struct_4, 8>();
    var var_0 = ~_wgslsmith_div_i32(~(_wgslsmith_dot_vec3_i32(vec3<i32>(22271i, 2147483647i, global0[_wgslsmith_index_u32(arg_1.b.a.x, 30u)]), vec3<i32>(0i, 2147483647i, -31761i)) ^ select(38807i, 6072i, true)), -2147483647i);
    global0 = array<i32, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2572f), 1358f, arg_1.c.a, -857f)));
    global1 = _wgslsmith_sub_i32(-2260i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-15955i, 0i, -22359i, -1i), min(vec4<i32>(global4.x, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(0u, 3u)]), ~vec4<i32>(global2[_wgslsmith_index_u32(3034u, 3u)], 2147483647i, 30214i, -45562i))));
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(691f * -473f), Struct_2(~(~vec4<u32>(1u, 49781u, u_input.a, 4294967295u)) << (vec4<u32>(select(u_input.a, u_input.a, true), min(u_input.a, u_input.a), ~u_input.a, ~u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-676f, -1295f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(504f, 478f) + vec2<f32>(1469f, -1128f))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1409f + -1730f)), 532f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(762f)) - _wgslsmith_f_op_f32(select(177f, -438f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1390f + -220f) - _wgslsmith_f_op_f32(f32(-1f) * -869f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -271f), 739f))), -121f));
    let var_1 = var_0.b.a.yw;
    global3 = array<Struct_4, 8>();
    let var_2 = select(!(!func_3(false, Struct_4(vec3<u32>(var_1.x, 30097u, 1u), Struct_2(var_0.b.a, vec2<f32>(-1888f, var_0.c.c)), Struct_1(var_0.a, var_0.c.b, var_0.b.b.x)), var_0.b.a, _wgslsmith_div_vec3_i32(vec3<i32>(6659i, global4.x, global0[_wgslsmith_index_u32(var_1.x, 30u)]), vec3<i32>(-26122i, -4819i, global0[_wgslsmith_index_u32(var_1.x, 30u)])))), false, true);
    global2 = array<i32, 3>();
    return var_0.c;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-947f, -1284f))), vec2<f32>(arg_1.b.x, -1584f), vec2<bool>(arg_3.x, true)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 610f)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), arg_1.b.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.b), arg_0.b, all(arg_3)))))));
    global0 = array<i32, 30>();
    let var_1 = ~(~(~(countOneBits(arg_2.a.ww) & arg_1.a.zx)));
    var var_2 = arg_0.a.wwz;
    var var_3 = vec4<i32>(firstTrailingBit(-(-1i & -global0[_wgslsmith_index_u32(arg_0.a.x, 30u)])), max(-34523i, ~countOneBits(24943i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global4.zx, _wgslsmith_clamp_vec2_i32(-global4.yy, global4.xz << (arg_1.a.xw % vec2<u32>(32u)), reverseBits(global4.yx))), global2[_wgslsmith_index_u32(arg_2.a.x, 3u)]), 0i);
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> bool {
    global1 = firstTrailingBit(_wgslsmith_mod_i32(~(~(-16706i)), -2147483647i));
    var var_0 = ~vec3<u32>(u_input.a, abs(u_input.a), ~u_input.a);
    var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~min(vec3<u32>(var_0.x, var_0.x, u_input.a), vec3<u32>(0u, 0u, 11750u)), ~vec3<u32>(var_0.x, 1u, u_input.a) ^ ~vec3<u32>(u_input.a, 43957u, 1u)), vec3<u32>(u_input.a, 32369u, ~9221u) | firstLeadingBit(vec3<u32>(1u, u_input.a, u_input.a)), vec3<u32>(~reverseBits(u_input.a), _wgslsmith_dot_vec4_u32(max(vec4<u32>(42183u, var_0.x, var_0.x, u_input.a), vec4<u32>(4294967295u, 1u, 0u, var_0.x)), firstLeadingBit(vec4<u32>(var_0.x, 4294967295u, u_input.a, 65558u))), countOneBits(var_0.x))), ~(~vec3<u32>(var_0.x, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 116944u), vec3<u32>(0u, var_0.x, 29005u)))));
    var var_1 = all(vec2<bool>(true, true));
    global4 = ~vec3<i32>(_wgslsmith_add_i32(max(abs(-2147483647i), global4.x << (0u % 32u)), _wgslsmith_dot_vec2_i32(global4.yx & vec2<i32>(arg_2, 0i), _wgslsmith_clamp_vec2_i32(global4.xx, vec2<i32>(arg_0, 55853i), vec2<i32>(-1i, -25617i)))), global4.x, countOneBits(global0[_wgslsmith_index_u32(43460u, 30u)]));
    return !(!all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false))), true), vec2<bool>(func_4(max(global2[_wgslsmith_index_u32(45704u, 3u)], -53763i), func_1(Struct_2(vec4<u32>(u_input.a, 30885u, u_input.a, u_input.a), vec2<f32>(1002f, -3023f)), Struct_2(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec2<f32>(-228f, -393f)), Struct_2(vec4<u32>(0u, 41793u, 1u, 28964u), vec2<f32>(705f, 817f)), vec3<bool>(false, false, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(22552i, 0i, global4.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global4.x, global2[_wgslsmith_index_u32(u_input.a, 3u)]))), !any(vec2<bool>(true, true))), true), all(!vec2<bool>(u_input.a == u_input.a, func_3(true, Struct_4(vec3<u32>(4294967295u, u_input.a, u_input.a), Struct_2(vec4<u32>(1u, 62227u, 7594u, u_input.a), vec2<f32>(660f, -855f)), Struct_1(-789f, vec3<f32>(-1691f, -1385f, 681f), 1000f)), vec4<u32>(1u, u_input.a, 1u, 0u), vec3<i32>(1i, 7507i, 85036i)))));
    let var_1 = vec4<f32>(func_2().c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2083f)), -1411f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-529f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-217f)), func_2().a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f * 1000f)))), !(!var_0.x | !var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(361f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-685f * -406f) - _wgslsmith_f_op_f32(251f + -144f))))));
    var_0 = vec2<bool>(false, var_0.x);
    let var_2 = abs(min(vec3<i32>(-13671i, -2147483647i, max(-2147483647i >> (u_input.a % 32u), -global4.x)), vec3<i32>(70770i, -1i, global0[_wgslsmith_index_u32(5629u, 30u)] << (2721u % 32u))));
    let var_3 = reverseBits(abs(-reverseBits(-27601i)));
    global1 = -2147483647i;
    var var_4 = global3[_wgslsmith_index_u32(0u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_dot_vec2_i32(~var_2.zz, reverseBits(var_2.xx << (var_4.a.yy % vec2<u32>(32u))) ^ ~vec2<i32>(global0[_wgslsmith_index_u32(var_4.a.x, 30u)], 0i)));
}

