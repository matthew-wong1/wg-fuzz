struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(true, Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 0u)), 1u), Struct_3(true, Struct_1(true, vec3<u32>(0u, 16834u, 55939u)), 32553u), Struct_3(false, Struct_1(false, vec3<u32>(0u, 1u, 1u)), 0u));

var<private> global1: array<u32, 19>;

var<private> global2: Struct_1 = Struct_1(false, vec3<u32>(2268u, 4294967295u, 1u));

var<private> global3: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(i32(-2147483648), 1i, 33126i, 2672i), vec4<i32>(2147483647i, i32(-2147483648), -27558i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i), vec4<i32>(-43331i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(44781i, 1i, 76252i, 2147483647i), vec4<i32>(0i, i32(-2147483648), -33213i, 35292i), vec4<i32>(0i, 2147483647i, 0i, 0i), vec4<i32>(-42100i, 17589i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, 21570i, i32(-2147483648)), vec4<i32>(-28992i, i32(-2147483648), 9607i, i32(-2147483648)), vec4<i32>(19095i, 5101i, 29295i, 0i), vec4<i32>(63771i, 39334i, 1i, -31505i), vec4<i32>(36624i, -1i, 47501i, -35137i), vec4<i32>(38636i, 21880i, 32008i, 0i), vec4<i32>(1i, -21778i, 2147483647i, 0i), vec4<i32>(-1i, -1i, 2147483647i, 28715i), vec4<i32>(0i, 35091i, 0i, 4022i), vec4<i32>(1i, i32(-2147483648), -21756i, 2147483647i), vec4<i32>(-22134i, -10304i, -12047i, -1i), vec4<i32>(i32(-2147483648), -28070i, 2147483647i, -63489i), vec4<i32>(12903i, 1i, -8910i, 6843i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -8832i), vec4<i32>(2147483647i, 2147483647i, -5930i, -60426i), vec4<i32>(53507i, 1i, -68819i, i32(-2147483648)), vec4<i32>(-1i, 0i, 0i, -28441i), vec4<i32>(i32(-2147483648), -29955i, 21517i, -1i), vec4<i32>(3173i, 56069i, -43675i, -14199i), vec4<i32>(1i, 0i, -60702i, i32(-2147483648)), vec4<i32>(-18165i, -16713i, 6082i, -1i), vec4<i32>(0i, -32514i, -6719i, 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = Struct_1(false, global2.b);
    let var_1 = vec4<bool>(var_0.a, true, any(select(!select(vec3<bool>(true, true, global2.a), vec3<bool>(arg_0.b.a, true, var_0.a), vec3<bool>(false, var_0.a, true)), vec3<bool>(true, false, !global2.a), !arg_0.b.a)), select(false, arg_0.b.a, !(34842i >= u_input.b.x)));
    global1 = array<u32, 19>();
    var_0 = arg_0.b;
    var var_2 = all(!vec4<bool>(!arg_0.b.a, (i32(-1i) * -51134i) == countOneBits(u_input.b.x), true, global2.a));
    return vec2<i32>(select(-u_input.b.x, max(u_input.b.x | u_input.b.x, u_input.b.x) ^ abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(-24399i, u_input.b.x))), true), u_input.b.x);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_4(vec4<bool>(global2.a, _wgslsmith_sub_i32(min(0i, u_input.b.x), -1i) < ~(-11610i), false, !global2.a), countOneBits(~u_input.b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(-483f)), _wgslsmith_f_op_f32(-1233f * -245f), -1090f, _wgslsmith_f_op_f32(trunc(-816f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1151f, -820f, -612f))) + vec4<f32>(_wgslsmith_f_op_f32(-432f - 149f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-123f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_3(Struct_3(all(vec3<bool>(global2.a, true, false)), Struct_1(select(global2.a, global2.a, false), global2.b & global2.b), ~global2.b.x)), 48460u);
    let var_1 = abs(reverseBits(global2.b));
    global0 = array<Struct_3, 3>();
    global1 = array<u32, 19>();
    global2 = Struct_1(any(!(!vec2<bool>(var_0.a.x, global2.a))), global2.b);
    return global2.b.x;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    var var_0 = ~_wgslsmith_add_u32(arg_1.b.b.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.b.x, func_2(~global2.b.x)), 19u)]);
    var_0 = arg_1.b.b.x;
    let var_1 = arg_2.a.x;
    var var_2 = _wgslsmith_mult_u32(global2.b.x, 4294967295u | arg_2.e);
    var var_3 = Struct_2(true, vec4<i32>(42102i, reverseBits(-_wgslsmith_dot_vec3_i32(arg_2.b.yzy, arg_2.b.xww)), select(u_input.b.x, firstLeadingBit(-8173i), false), _wgslsmith_add_i32(arg_2.d.x, arg_2.b.x & u_input.b.x)));
    return Struct_4(arg_2.a, abs(countOneBits(select(u_input.b, _wgslsmith_mod_vec4_i32(var_3.b, var_3.b), select(vec4<bool>(arg_2.a.x, true, true, true), arg_2.a, arg_2.a)))), arg_2.c, _wgslsmith_mult_vec2_i32(min(-(~vec2<i32>(2147483647i, var_3.b.x)), arg_2.b.xy), select(vec2<i32>(_wgslsmith_sub_i32(arg_2.b.x, -36309i), 1i), -(u_input.b.xx >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), select(arg_2.a.xy, vec2<bool>(var_1, var_1), !arg_2.a.wy))), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, select(arg_2.e, arg_1.c, false)) & 1u, firstTrailingBit(abs(1u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: f32) -> vec3<bool> {
    global1 = array<u32, 19>();
    var var_0 = arg_1;
    let var_1 = global2.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -707f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_3, 609f)), _wgslsmith_f_op_f32(f32(-1f) * -2408f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1301f), _wgslsmith_f_op_f32(-821f - 978f))) * var_0.c.wx)));
    global3 = array<vec4<i32>, 30>();
    return select(vec3<bool>(true, var_0.a.x, all(vec4<bool>(true, any(arg_1.a.xw), global2.a, !arg_1.a.x))), select(select(var_0.a.zzw, func_1(_wgslsmith_f_op_f32(var_2.x * -677f), Struct_3(true, Struct_1(false, vec3<u32>(0u, 48795u, 0u)), var_0.e), func_1(328f, arg_2, arg_1)).a.zxz, vec3<bool>(true, true, false)), vec3<bool>(var_0.a.x, var_0.a.x, true), 0u > ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c, 0u, 12624u), vec3<u32>(0u, global2.b.x, 112330u))), !arg_1.a.zxx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!(!func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)), func_1(755f, Struct_3(true, Struct_1(global2.a, global2.b), global1[_wgslsmith_index_u32(global2.b.x, 19u)]), Struct_4(vec4<bool>(global2.a, global2.a, true, false), vec4<i32>(u_input.b.x, u_input.b.x, -8833i, 1i), vec4<f32>(152f, 544f, 1000f, -222f), vec2<i32>(u_input.b.x, 40877i), 1u)), global0[_wgslsmith_index_u32(~4294967295u, 3u)], 352f)));
    var_0 = true;
    global2 = Struct_1(true, ~vec3<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 13373u), global2.b.xx), global2.b.x), _wgslsmith_add_u32(firstLeadingBit(4294967295u), u_input.a), global2.b.x));
    let var_1 = vec4<bool>(any(vec2<bool>(!any(vec2<bool>(false, global2.a)), false)), true || all(!(!vec3<bool>(false, global2.a, global2.a))), all(select(!select(vec4<bool>(global2.a, global2.a, true, true), vec4<bool>(true, false, global2.a, global2.a), vec4<bool>(global2.a, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(global2.a, global2.a, global2.a, true), vec4<bool>(global2.a, global2.a, global2.a, false)), !any(vec2<bool>(true, false)))), global2.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1124f, -110f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) - vec2<f32>(-500f, -469f)) - vec2<f32>(-1000f, -603f))))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(922f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 595f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, var_2.x) * vec2<f32>(var_2.x, -119f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-155f, var_2.x) * vec2<f32>(var_2.x, var_2.x)), vec2<f32>(-1000f, 694f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -290f))))))));
    let var_4 = global1[_wgslsmith_index_u32(global2.b.x, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(10851u, -961f);
}

