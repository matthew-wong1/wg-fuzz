struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: array<u32, 7> = array<u32, 7>(3051u, 0u, 99142u, 31238u, 62279u, 0u, 19326u);

var<private> global3: array<Struct_3, 11>;

var<private> global4: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(334f, -242f, 792f), vec3<f32>(152f, -1243f, -186f), vec3<f32>(-256f, 767f, 1075f), vec3<f32>(-392f, -147f, -229f), vec3<f32>(214f, -119f, 471f), vec3<f32>(-133f, -321f, -892f), vec3<f32>(340f, 1271f, -1877f), vec3<f32>(-690f, -1000f, 995f), vec3<f32>(476f, -360f, -2032f), vec3<f32>(-873f, 1319f, 1552f), vec3<f32>(110f, 1345f, 1709f), vec3<f32>(1687f, -388f, -584f), vec3<f32>(174f, 1000f, -904f), vec3<f32>(1020f, -381f, -297f), vec3<f32>(885f, 2179f, -685f), vec3<f32>(386f, 584f, -688f), vec3<f32>(-1028f, 173f, -1811f), vec3<f32>(1263f, 1000f, -2101f), vec3<f32>(974f, 1020f, -1422f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_1(countOneBits(-select(vec3<i32>(2147483647i, arg_0.c.e.a.x, 0i), vec3<i32>(arg_0.d.x, -115i, -1i), true)), ~vec3<u32>(~u_input.a, 43949u, firstTrailingBit(31819u)) & ~(vec3<u32>(global2[_wgslsmith_index_u32(70325u, 7u)], arg_3.x, 0u) | vec3<u32>(arg_2.c.d.d.x, 4294967295u, arg_2.c.d.d.x)), vec4<bool>(false, !global1.b.e.c.x, true, !(!arg_0.c.e.c.x)), _wgslsmith_clamp_vec2_u32(arg_0.c.a.wx, vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_3.x << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.e.d.x, global2[_wgslsmith_index_u32(54900u, 7u)], arg_3.x, 20289u), vec4<u32>(arg_2.c.c, arg_2.c.a.x, arg_3.x, 7418u))), global1.b.e.b.xx)));
    var var_1 = Struct_2(arg_0.c.a, any(select(vec3<bool>(true, false, global1.a.x), vec3<bool>(false, global1.b.d.c.x, true), arg_2.c.d.c.wyx)) && any(vec2<bool>(global1.a.x, true)), 44521u, global1.b.e, arg_0.c.e);
    var var_2 = arg_0.d.x;
    var_2 = -(~_wgslsmith_dot_vec4_i32(~global1.c, firstTrailingBit(-vec4<i32>(arg_1, -1i, arg_0.b, global1.c.x))));
    global2 = array<u32, 7>();
    return 1u;
}

fn func_2(arg_0: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-820f - 1163f), _wgslsmith_div_f32(1096f, 417f))))), _wgslsmith_f_op_f32(f32(-1f) * -1137f)));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 18361u, arg_0, global2[_wgslsmith_index_u32(36617u, 7u)]), global1.b.a), _wgslsmith_mult_vec4_u32(global1.b.a, vec4<u32>(4294967295u, global1.b.a.x, arg_0, u_input.a))), vec4<u32>(~u_input.a, max(3569u, arg_0), _wgslsmith_dot_vec2_u32(global1.b.d.d, global1.b.d.b.xy), min(u_input.a, arg_0)))), 11u)];
    global2 = array<u32, 7>();
    var var_2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(~reverseBits(arg_0), ~(~global1.b.e.b.x), func_3(Struct_5(-347f, var_1.c.x, var_1.b, var_1.c), _wgslsmith_clamp_i32(57405i, -67111i, -2147483647i), Struct_5(240f, var_1.b.e.a.x, global1.b, var_1.c), vec3<u32>(15722u, arg_0, arg_0))), var_1.b.d.b);
    var var_3 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -1436f), _wgslsmith_div_f32(781f, _wgslsmith_f_op_f32(round(988f))), !var_1.b.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-455f))))), -var_1.b.e.a.x, Struct_2(var_1.b.a, var_1.b.e.c.x != !var_1.a.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(19011u, var_2.x), vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(arg_0, 7u)])), max(var_2.yz, vec2<u32>(u_input.a, 22660u))), Struct_1(~(~global1.c.xxy), global1.b.a.zwy, global1.b.e.c, abs(vec2<u32>(global1.b.c, u_input.a))), Struct_1(var_1.b.e.a, ~var_1.b.d.b, vec4<bool>(var_1.b.d.b.x > var_1.b.c, var_1.a.x, global1.a.x, true), var_1.b.d.d << (global1.b.a.wz % vec2<u32>(32u)))), ~min(select(select(global1.c, vec4<i32>(1i, -3172i, 8760i, var_1.b.d.a.x), var_1.b.e.c), min(global1.c, var_1.c), !global1.b.d.c.x), global1.c));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(110f, var_3.a, -364f, var_3.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -1313f, -696f, -1000f)))))));
}

fn func_4(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = vec3<i32>(~(-27749i), 0i, global1.c.x);
    let var_1 = -563f;
    let var_2 = ~(~_wgslsmith_mult_vec2_i32(min(max(global1.c.ww, global1.b.e.a.yx), vec2<i32>(var_0.x, -42482i)), vec2<i32>(-1i, reverseBits(24532i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1592f)) - var_1), var_1, _wgslsmith_f_op_f32(-1101f * 139f), -694f));
    let var_4 = Struct_1(~(global1.c.xzz & vec3<i32>(-83780i, -1i, firstLeadingBit(-1i))), global1.b.d.b, !select(!select(vec4<bool>(global1.a.x, true, global1.b.b, global1.a.x), vec4<bool>(true, global1.b.e.c.x, global1.a.x, global1.b.e.c.x), global1.b.e.c), vec4<bool>(global1.b.b, true, global1.a.x, global1.b.d.c.x), global1.b.e.c), vec2<u32>(global2[_wgslsmith_index_u32(global1.b.e.b.x ^ _wgslsmith_div_u32(28379u, global2[_wgslsmith_index_u32(u_input.a, 7u)] >> (4294967295u % 32u)), 7u)], ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 10774u), vec3<u32>(global2[_wgslsmith_index_u32(58599u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], global1.b.e.b.x))));
    return global1.c;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = 2147483647i;
    global3 = array<Struct_3, 11>();
    let var_1 = ~(~func_4(_wgslsmith_f_op_vec4_f32(func_2(~u_input.a))));
    let var_2 = _wgslsmith_f_op_f32(sign(arg_0));
    global1 = global3[_wgslsmith_index_u32(global1.b.e.b.x, 11u)];
    return Struct_3(vec3<bool>(!arg_1.x, true, false), global1.b, -select(~countOneBits(vec4<i32>(global1.c.x, -2147483647i, var_0, global1.b.e.a.x)), var_1, !arg_1.x));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(max(0i << (0u % 32u), 16714i >> (global2[_wgslsmith_index_u32(0u, 7u)] % 32u))), _wgslsmith_mod_i32(-18224i, _wgslsmith_mult_i32(32171i, arg_2.c.x)), abs(max(arg_2.c.x, firstLeadingBit(arg_1.a.x)))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.d.a.x >> (arg_2.b.d.b.x % 32u), _wgslsmith_dot_vec2_i32(arg_1.a.xy, vec2<i32>(8324i, arg_1.a.x)), -12825i, _wgslsmith_mod_i32(32028i, arg_1.a.x)), vec4<i32>(-1i, ~arg_1.a.x, global1.b.e.a.x, -global1.c.x)), 19575i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-12604i, 1i) & -global1.c.x, _wgslsmith_add_i32(reverseBits(arg_2.c.x), i32(-1i) * -1i))));
    let var_1 = func_1(arg_0, select(vec3<bool>(false, arg_2.a.x, any(!vec3<bool>(global1.a.x, arg_2.a.x, global1.a.x))), func_1(_wgslsmith_f_op_f32(ceil(arg_0)), !vec3<bool>(global1.a.x, arg_1.c.x, arg_2.b.e.c.x)).a, false));
    var var_2 = Struct_3(arg_1.c.xxy, arg_2.b, _wgslsmith_add_vec4_i32(var_1.c, reverseBits(vec4<i32>(-var_1.c.x, ~19936i, _wgslsmith_clamp_i32(arg_1.a.x, -4809i, global1.b.e.a.x), -1i))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(271f + 1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(177f, arg_0));
    var var_3 = _wgslsmith_mod_vec2_u32(var_2.b.d.b.zz, arg_1.d);
    return arg_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global4 = array<vec3<f32>, 19>();
    global3 = array<Struct_3, 11>();
    let var_1 = -295f;
    let var_2 = any(vec4<bool>(any(select(global1.b.e.c, global1.b.e.c, global1.a.x)) | global1.b.d.c.x, global1.a.x, func_5(_wgslsmith_f_op_f32(-var_1), global1.b.d, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !vec3<bool>(global1.b.e.c.x, true, global1.a.x))), false));
    global3 = array<Struct_3, 11>();
    global3 = array<Struct_3, 11>();
    let var_3 = global1.b.e.c.wz;
    global2 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(956f)) + _wgslsmith_f_op_f32(ceil(var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(~global1.b.e.b.x ^ countOneBits(global1.b.a.x), 19u)]) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -281f) + global4[_wgslsmith_index_u32(select(global1.b.d.b.x, 4294967295u, var_3.x), 19u)]) * vec3<f32>(-366f, var_1, _wgslsmith_f_op_f32(f32(-1f) * -917f)))), global4[_wgslsmith_index_u32(4294967295u, 19u)], firstTrailingBit(~global2[_wgslsmith_index_u32(4294967295u, 7u)]));
}

