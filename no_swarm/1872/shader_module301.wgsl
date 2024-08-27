struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(false, false, false)), Struct_1(false, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(true, true, false)), Struct_1(false, vec3<bool>(true, true, false)), Struct_1(true, vec3<bool>(true, false, true)), Struct_1(false, vec3<bool>(true, false, true)), Struct_1(false, vec3<bool>(false, true, true)), Struct_1(false, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(false, true, true)), Struct_1(true, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(false, true, true)));

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-1610f, 781f, -246f, -548f), vec4<f32>(595f, -217f, 1168f, 1469f), vec4<f32>(1254f, 829f, 478f, -546f), vec4<f32>(-454f, 594f, -713f, 257f), vec4<f32>(1101f, 812f, -1000f, -257f), vec4<f32>(926f, 194f, 873f, 306f), vec4<f32>(217f, -221f, 1978f, -793f), vec4<f32>(558f, -351f, -895f, -669f), vec4<f32>(-1356f, 537f, -459f, 551f), vec4<f32>(2267f, -131f, -306f, -448f), vec4<f32>(1226f, 483f, -372f, -392f), vec4<f32>(-558f, 1000f, -1345f, -278f), vec4<f32>(743f, -1000f, 737f, -747f), vec4<f32>(949f, -1722f, -2461f, 1000f), vec4<f32>(-1000f, -1000f, -1000f, -1302f), vec4<f32>(-1000f, -508f, 851f, 971f), vec4<f32>(-304f, -1000f, 771f, -1000f), vec4<f32>(415f, 1059f, -1000f, -1108f), vec4<f32>(1123f, -876f, 128f, -1000f), vec4<f32>(-1372f, -1100f, 1259f, -491f), vec4<f32>(-158f, -453f, -194f, -1601f), vec4<f32>(-610f, 1000f, -332f, 456f), vec4<f32>(-1051f, -1000f, -695f, -880f), vec4<f32>(-622f, -195f, 1051f, 1954f), vec4<f32>(-1202f, -1547f, -133f, 312f), vec4<f32>(-242f, -1000f, 671f, -1270f), vec4<f32>(613f, 513f, -170f, 183f), vec4<f32>(-808f, -1400f, 1152f, -898f), vec4<f32>(712f, 1000f, -1720f, 2086f), vec4<f32>(-756f, -903f, -2242f, 1199f));

var<private> global3: array<Struct_2, 12>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-602f)) - 310f)));
    global2 = array<vec4<f32>, 30>();
    return _wgslsmith_mod_u32(23123u, ~(~u_input.a.x));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1475f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-936f)))));
    let var_1 = 2147483647i << ((global0.x | ~u_input.a.x) % 32u);
    var var_2 = ~reverseBits(4294967295u);
    let var_3 = ~vec2<i32>(-8557i, var_1);
    let var_4 = ~firstLeadingBit(abs(3013i ^ u_input.c.x) | -19434i);
    return select(select(!select(!vec2<bool>(global4.x, global4.x), select(vec2<bool>(false, false), vec2<bool>(global4.x, true), vec2<bool>(global4.x, true)), select(vec2<bool>(global4.x, false), vec2<bool>(false, global4.x), false)), select(vec2<bool>(!global4.x, any(vec2<bool>(global4.x, global4.x))), vec2<bool>(global4.x, true), all(select(vec4<bool>(true, global4.x, false, global4.x), vec4<bool>(false, false, false, false), vec4<bool>(true, true, global4.x, false)))), select(select(!vec2<bool>(global4.x, global4.x), select(vec2<bool>(global4.x, true), vec2<bool>(global4.x, false), vec2<bool>(global4.x, global4.x)), vec2<bool>(true, true)), select(vec2<bool>(global4.x, true), select(vec2<bool>(false, global4.x), vec2<bool>(false, false), vec2<bool>(global4.x, true)), !vec2<bool>(global4.x, global4.x)), global4.x)), !(!select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x), !vec2<bool>(global4.x, global4.x))), global4.x);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> vec3<bool> {
    global4 = !func_3();
    global2 = array<vec4<f32>, 30>();
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(218f, arg_0))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-310f, -479f)))) - vec2<f32>(829f, arg_0)), 30624i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(829f, -315f, 870f, -820f) + global2[_wgslsmith_index_u32(u_input.d.x, 30u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2.d, arg_1, -1038f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_2.b)))) - arg_2.b), arg_2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f * -1021f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1382f))), (i32(-1i) * -35519i) == firstTrailingBit(u_input.b))));
    global4 = !select(!func_3(), func_3(), any(vec3<bool>(true, true, true)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.a.x - var_0.d))))), arg_0);
    return select(!vec3<bool>(global4.x & global4.x, true, any(select(vec4<bool>(global4.x, global4.x, false, true), vec4<bool>(global4.x, false, global4.x, global4.x), global4.x))), select(!vec3<bool>(select(global4.x, true, false), all(vec2<bool>(false, global4.x)), true), !(!(!vec3<bool>(global4.x, global4.x, global4.x))), global4.x), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> StorageBuffer {
    global1 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_mod_u32(1574u, reverseBits(abs(~select(u_input.d.x, global0.x, true))));
    global1 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -907f) - _wgslsmith_f_op_f32(146f - arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x)))), arg_2)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(arg_2, vec4<f32>(_wgslsmith_f_op_f32(-1698f + arg_2.x), _wgslsmith_f_op_f32(sign(-740f)), _wgslsmith_f_op_f32(sign(946f)), -1059f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(-2067f)), -581f))))), 42616i);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.x)) - _wgslsmith_div_f32(821f, arg_2.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.a.x)), 1526f))), u_input.c.yz, _wgslsmith_sub_u32(u_input.d.x, countOneBits(var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-1342i, 41158i), _wgslsmith_clamp_i32(1i, 0i, 4000i)), vec2<i32>(u_input.b, min(-18419i, -4872i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i), u_input.c.zx & vec2<i32>(-1i, u_input.b), u_input.c.yy)) | ~(-abs(vec2<i32>(2147483647i, u_input.c.x))));
    let var_1 = 152u;
    global0 = ~_wgslsmith_add_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(93153u, u_input.a.x, 39572u, 55742u), vec4<u32>(var_1, 4294967295u, global0.x, 1u)) >> (vec4<u32>(u_input.a.x, global0.x, u_input.d.x, 49982u) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(~1300u, 4294967295u), func_1(), _wgslsmith_mod_u32(var_1, ~27249u)));
    var var_2 = u_input.d;
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = func_4(!(!(!func_2(-1637f, -517f, Struct_4(Struct_2(vec2<f32>(-828f, -248f), u_input.b), vec4<f32>(725f, -1000f, 856f, -1444f), Struct_3(Struct_2(vec2<f32>(-1016f, -1862f), u_input.c.x)), 599f)))), Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(-756f)), _wgslsmith_f_op_f32(-1102f + 654f)), _wgslsmith_div_vec2_f32(vec2<f32>(393f, -758f), vec2<f32>(257f, -800f)))), 45935i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~4294967295u, 30u)] + _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(7111u, 30u)])) * vec4<f32>(_wgslsmith_f_op_f32(round(410f)), _wgslsmith_f_op_f32(f32(-1f) * -1060f), -189f, _wgslsmith_div_f32(666f, -1159f))))), false);
}

