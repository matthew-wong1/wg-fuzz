struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(28572i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(30166i, -5942i), vec2<i32>(1i, 0i), vec2<i32>(-17635i, 15413i), vec2<i32>(1i, -41392i), vec2<i32>(-32893i, 5491i), vec2<i32>(2147483647i, 1i), vec2<i32>(-11717i, 3384i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(14931i, 16452i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(48779i, i32(-2147483648)), vec2<i32>(63863i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-24354i, 29399i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 24715i), vec2<i32>(2147483647i, -5602i), vec2<i32>(i32(-2147483648), -1i));

var<private> global1: Struct_2 = Struct_2(i32(-2147483648));

var<private> global2: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(2686f, 105f, 970f, -1129f), vec4<f32>(1887f, 1861f, 1988f, -870f), vec4<f32>(836f, -615f, -205f, 2274f), vec4<f32>(498f, -985f, 1000f, 361f), vec4<f32>(3112f, 482f, 269f, -278f), vec4<f32>(-875f, -1011f, -847f, -1000f), vec4<f32>(395f, 1086f, -319f, 756f), vec4<f32>(-741f, 371f, 830f, -1279f), vec4<f32>(496f, -769f, 233f, -748f), vec4<f32>(2124f, -840f, 923f, -1002f), vec4<f32>(-1769f, -1082f, 820f, 242f), vec4<f32>(1164f, 1040f, -1122f, 2392f), vec4<f32>(546f, -269f, -529f, -1502f));

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<i32>(-63233i, 10234i, 37449i, 0i), vec2<bool>(true, true), 1u), Struct_1(vec4<i32>(i32(-2147483648), -28510i, 42524i, 2147483647i), vec2<bool>(true, false), 101695u), Struct_1(vec4<i32>(2147483647i, -1i, 67718i, i32(-2147483648)), vec2<bool>(true, true), 62262u));

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~arg_0.x ^ firstLeadingBit(arg_0.x), u_input.e | arg_0.x, arg_0.x), global4.wwz), 3u)];
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a.xy ^ _wgslsmith_add_vec2_i32(min(u_input.a.yz, vec2<i32>(11102i, var_0.a.x)), ~vec2<i32>(global1.a, -1i) | _wgslsmith_mult_vec2_i32(var_0.a.yw, vec2<i32>(u_input.b.x, var_0.a.x))), u_input.b);
    var_1 = abs(-u_input.d);
    let var_2 = ~(~(~u_input.c));
    let var_3 = i32(-1i) * -2147483647i;
    return global3[_wgslsmith_index_u32(0u, 3u)];
}

fn func_3() -> i32 {
    let var_0 = 516f;
    global2 = array<vec4<f32>, 13>();
    let var_1 = ~global1.a;
    let var_2 = ~global4.x;
    let var_3 = Struct_3(~vec3<i32>(-1i, global1.a, _wgslsmith_div_i32(global1.a, firstTrailingBit(-12861i))), -(vec2<i32>(max(32612i, 37401i), _wgslsmith_clamp_i32(0i, 0i, -1i)) & vec2<i32>(13344i, _wgslsmith_clamp_i32(-41543i, var_1, var_1))));
    return -global1.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_0.b.x;
    global2 = array<vec4<f32>, 13>();
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(countOneBits(global1.a), func_3()), arg_1.b), arg_0.a.x), vec2<i32>(-2147483647i, countOneBits(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, -1i, u_input.a.x, arg_0.a.x), vec4<i32>(-27321i, arg_0.a.x, -1i, u_input.a.x))))));
    let var_2 = Struct_3(-vec3<i32>(global1.a | arg_0.a.x, -24400i, ~(-2147483647i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.b.x), arg_3.a, -41761i), _wgslsmith_div_vec3_i32(select(vec3<i32>(arg_1.b, var_1.x, -2147483647i), vec3<i32>(global1.a, u_input.a.x, -432i), vec3<bool>(arg_1.a, false, arg_1.a)), abs(vec3<i32>(u_input.b.x, 0i, global1.a)))), firstLeadingBit(vec2<i32>(4134i, 11349i)));
    global3 = array<Struct_1, 3>();
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(-max(_wgslsmith_add_vec4_i32(arg_1.a, arg_1.a), arg_1.a) << (~vec4<u32>(arg_1.c, func_2(global4.zx, vec2<f32>(-392f, -358f), false).c, ~arg_1.c, select(1u, arg_1.c, arg_1.b.x)) % vec4<u32>(32u)), !(!func_4(global3[_wgslsmith_index_u32(~global4.x, 3u)], Struct_4(arg_1.b.x, global1.a, u_input.e), global4.xx & vec2<u32>(u_input.e, 10447u), Struct_2(1i)).b), global4.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -999f, 154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1343f, -918f, false)), _wgslsmith_f_op_f32(-820f - 593f), true)))));
    global3 = array<Struct_1, 3>();
    let var_2 = -204f;
    var var_3 = -1211f;
    return Struct_2(~_wgslsmith_mod_i32(global1.a, global1.a));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_4 {
    let var_0 = arg_0;
    global0 = array<vec2<i32>, 22>();
    global2 = array<vec4<f32>, 13>();
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(~(-16330i), -19994i, arg_0.a, -(global1.a ^ var_0.a)), vec4<i32>(var_0.a, reverseBits(-42725i), (0i | arg_0.a) & arg_0.a, -1i)), !(!vec2<bool>(func_4(global3[_wgslsmith_index_u32(u_input.e, 3u)], Struct_4(true, u_input.a.x, u_input.e), vec2<u32>(arg_1, 14976u), arg_0).b.x, any(vec3<bool>(false, false, false)))), arg_1);
    global3 = array<Struct_1, 3>();
    return Struct_4(var_1.b.x && var_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a, select(abs(-42916i), _wgslsmith_dot_vec4_i32(var_1.a, var_1.a), true)), var_1.a.wz), _wgslsmith_div_u32(1u, u_input.c & 1u));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = true;
    var var_1 = func_6(func_5(!var_0, func_4(func_2(_wgslsmith_div_vec2_u32(global4.yx, global4.yw), _wgslsmith_f_op_vec2_f32(vec2<f32>(2173f, -611f) - vec2<f32>(138f, 839f)), var_0), Struct_4(true | var_0, func_3(), firstLeadingBit(u_input.c)), ~global4.xx, arg_1)), ~global4.x);
    var var_2 = ~vec4<i32>(u_input.d, arg_1.a & (countOneBits(arg_0) ^ ~2147483647i), -21466i, abs(abs(-u_input.a.x)));
    var var_3 = func_5(var_0, global3[_wgslsmith_index_u32(abs(~firstTrailingBit(_wgslsmith_mod_u32(var_1.c, global4.x))), 3u)]);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1023f)), _wgslsmith_f_op_f32(ceil(1147f)))), _wgslsmith_f_op_f32(1129f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -663f), -160f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(439f)) - -192f))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~(~vec4<u32>(~1u, _wgslsmith_sub_u32(func_1(global1.a, Struct_2(global1.a)), u_input.e), 1u, 14268u));
    var var_0 = func_6(Struct_2(i32(-1i) * -(~global1.a)), ~global4.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1529f, -1920f)) + -115f))));
    global2 = array<vec4<f32>, 13>();
    var_0 = Struct_4(any(vec4<bool>(func_2(vec2<u32>(4294967295u, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -2023f) + vec2<f32>(var_1, var_1)), var_0.a).b.x, var_0.a, -1242f < _wgslsmith_f_op_f32(-var_1), !var_0.a & any(vec2<bool>(var_0.a, true)))), (u_input.d ^ _wgslsmith_mod_i32(~global1.a, _wgslsmith_mult_i32(58256i, 1i))) & global1.a, _wgslsmith_sub_u32(1u, ~var_0.c | 1u));
    let var_2 = 344f;
    let var_3 = _wgslsmith_f_op_f32(select(563f, 1677f, _wgslsmith_div_u32((global4.x | global4.x) | _wgslsmith_div_u32(u_input.e, 10210u), 0u) != global4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), -950f)), 506f, vec4<u32>(~1u, 0u | reverseBits(func_2(global4.zw, vec2<f32>(var_1, 815f), var_0.a).c), 24286u, ~1u));
}

