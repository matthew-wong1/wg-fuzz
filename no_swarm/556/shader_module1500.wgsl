struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, -164f);

var<private> global1: array<u32, 22> = array<u32, 22>(0u, 0u, 4294967295u, 4294967295u, 0u, 49879u, 125850u, 19981u, 0u, 4294967295u, 4294967295u, 16696u, 0u, 0u, 1u, 37795u, 16536u, 27282u, 0u, 71174u, 19337u, 4294967295u);

var<private> global2: i32;

var<private> global3: array<vec3<i32>, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b)))));
    var var_1 = !arg_0.e;
    let var_2 = arg_0.e;
    let var_3 = arg_0;
    global1 = array<u32, 22>();
    return var_3.e;
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_sub_u32(u_input.a, 22037u), _wgslsmith_f_op_f32(f32(-1f) * -235f));
    var var_1 = Struct_2(select(_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(-2147483647i, -18807i)), vec2<i32>(reverseBits(2147483647i), 2147483647i >> (global0.a % 32u))), firstTrailingBit(countOneBits(u_input.b.x & -2147483647i)), false), var_0.b, firstTrailingBit(vec3<i32>(select(u_input.b.x | u_input.b.x, ~1i, true), i32(-1i) * -1i, i32(-1i) * -1i)), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(max(1u, 66037u), select(3720u, 1u, true), _wgslsmith_mult_u32(1u, u_input.c))), vec3<u32>(global1[_wgslsmith_index_u32(global0.a, 22u)] ^ 1u, 65189u, 52112u) ^ vec3<u32>(23168u, ~31805u, min(1u, 110218u))), -31475i < _wgslsmith_add_i32(37269i, ~reverseBits(u_input.b.x)));
    global2 = max(_wgslsmith_clamp_i32(u_input.b.x, -6533i, u_input.b.x), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.b.x, -1i, u_input.b.x) | _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, var_1.a, -39070i, -3988i), vec4<i32>(1i, 0i, var_1.a, var_1.c.x)), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), 2147483647i, ~(-2147483647i))), reverseBits(0i)));
    let var_2 = ~(~var_0.a);
    var var_3 = vec3<bool>(true, func_2(Struct_2(~2147483647i | min(var_1.a, 1i), 965f, u_input.b, select(var_1.d, vec3<u32>(var_0.a, var_2, 4294967295u) >> (vec3<u32>(3524u, 0u, 58168u) % vec3<u32>(32u)), vec3<bool>(true, true, true)), (i32(-1i) * -2147483647i) > var_1.c.x), vec4<u32>(global1[_wgslsmith_index_u32(min(select(global1[_wgslsmith_index_u32(global0.a, 22u)], global1[_wgslsmith_index_u32(var_1.d.x, 22u)], false), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(22739u, 22u)], global0.a)), 22u)], global0.a, 1u, reverseBits(~global0.a)), Struct_1(~1u, _wgslsmith_f_op_f32(abs(-1299f)))), true);
    return all(!vec3<bool>(true, true, var_1.e));
}

fn func_1() -> vec2<i32> {
    global3 = array<vec3<i32>, 18>();
    global3 = array<vec3<i32>, 18>();
    let var_0 = select(select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), any(vec3<bool>(true, false, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, func_2(Struct_2(-28136i, 703f, vec3<i32>(-6971i, 35438i, -2274i), vec3<u32>(global0.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a, 22u)], 22u)], u_input.c), true), ~vec4<u32>(4294967295u, global0.a, u_input.a, u_input.c), Struct_1(0u, -451f))), true), vec2<bool>(any(vec4<bool>(all(vec3<bool>(true, true, true)), true, func_2(Struct_2(2147483647i, -198f, vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<u32>(global0.a, 3892u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]), false), vec4<u32>(82044u, global0.a, global0.a, 79250u), Struct_1(0u, global0.b)), any(vec4<bool>(false, true, false, false)))), !func_3() && true), func_3());
    var var_1 = 55860u;
    var var_2 = select(~(~_wgslsmith_add_u32(1u, ~u_input.a)), u_input.a, all(select(select(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, true)), !select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, var_0.x, false, false), false), vec4<bool>(true, var_0.x, all(var_0), true))));
    return vec2<i32>(_wgslsmith_add_i32(u_input.b.x, -7287i), u_input.b.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    global0 = Struct_1(7063u, 1113f);
    var var_1 = 498f;
    var var_2 = Struct_1(~var_0.d.x, _wgslsmith_f_op_f32(357f * -1000f));
    global1 = array<u32, 22>();
    return arg_2;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    return func_4(~(-select(select(u_input.b.zz, u_input.b.yz, vec2<bool>(arg_0.e, false)), -u_input.b.yy, !vec2<bool>(arg_0.e, arg_0.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2053f - _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(409f, 1222f)))), 429f)), func_4(select(_wgslsmith_div_vec2_i32(func_4(u_input.b.zy, vec3<f32>(arg_0.b, 214f, -537f), Struct_2(28067i, 314f, vec3<i32>(u_input.b.x, 5767i, 4039i), arg_0.d, arg_0.e)).c.zx, vec2<i32>(arg_0.c.x, arg_0.c.x)), _wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0.a, u_input.b.x), u_input.b.yx), vec2<bool>(true, func_4(u_input.b.xx, vec3<f32>(-615f, -717f, arg_0.b), arg_0).e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(max(arg_0.b, 1717f)), -311f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b, -630f, -688f)))), func_4(vec2<i32>(u_input.b.x, arg_0.c.x) | vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(467f, arg_0.b, arg_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 1349f, 695f) + vec3<f32>(322f, 1276f, arg_0.b))), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-743f, global0.b, global0.b) * vec3<f32>(2032f, 1405f, global0.b)), vec3<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(global0.b - global0.b), -508f))), Struct_2(_wgslsmith_mod_i32(-2147483647i, 39593i), _wgslsmith_f_op_f32(global0.b + _wgslsmith_div_f32(860f, 508f)), min(vec3<i32>(u_input.b.x, -51260i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 22u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 22u)], u_input.a, 0u)) | (vec3<u32>(10797u, global0.a, 0u) ^ vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 22u)], global0.a, 4294967295u)), !any(vec3<bool>(false, false, false)))));
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, firstLeadingBit(var_0.d.x) & global0.a), 22u)], global0.b);
    let var_2 = vec4<u32>(func_5(Struct_2(_wgslsmith_clamp_i32(u_input.b.x << (global0.a % 32u), u_input.b.x, firstLeadingBit(-2147483647i)), var_1.b, vec3<i32>(abs(-30121i), 1i, -2147483647i | var_0.a), ~(vec3<u32>(81908u, 4294967295u, u_input.c) << (vec3<u32>(43648u, global0.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.d.x, 22u)], 22u)]) % vec3<u32>(32u))), 0i > var_0.a)).d.x, 98653u, 4294967295u, 1u);
    global1 = array<u32, 22>();
    var_1 = Struct_1(select(14768u, var_0.d.x, var_0.e), 862f);
    var var_3 = func_5(var_0);
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))), -414f), vec2<f32>(1190f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(841f + 1047f), _wgslsmith_f_op_f32(-var_3.b))))));
    let var_5 = func_4(vec2<i32>(~max(~var_0.a, ~var_0.c.x), -4566i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -277f, 1198f) + vec3<f32>(var_0.b, var_3.b, var_0.b)) * vec3<f32>(global0.b, var_3.b, var_0.b))))), Struct_2(2147483647i, var_1.b, ~(~func_4(vec2<i32>(u_input.b.x, var_0.c.x), vec3<f32>(global0.b, var_1.b, 871f), var_0).c), ~vec3<u32>(18731u & global0.a, var_0.d.x, _wgslsmith_mult_u32(var_1.a, global1[_wgslsmith_index_u32(1u, 22u)])), var_0.e));
    let var_6 = vec4<bool>(var_5.e, !(!func_4(-u_input.b.xz, vec3<f32>(var_5.b, -496f, var_0.b), func_5(Struct_2(var_5.a, -366f, vec3<i32>(-40210i, 2147483647i, var_0.a), vec3<u32>(1u, var_5.d.x, 4294967295u), var_5.e))).e), any(vec3<bool>(func_5(var_5).e, !var_3.e, var_3.e)), var_5.a != (42873i ^ var_5.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec2<i32>(~_wgslsmith_mult_i32(u_input.b.x, var_3.a), var_0.c.x), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(sign(var_3.b)), func_5(Struct_2(var_3.a, global0.b, vec3<i32>(var_5.a, u_input.b.x, u_input.b.x), vec3<u32>(1u, var_3.d.x, var_0.d.x), var_6.x)).b), Struct_2(u_input.b.x, var_1.b, _wgslsmith_mult_vec3_i32(var_0.c, _wgslsmith_div_vec3_i32(vec3<i32>(var_5.c.x, var_3.a, var_5.a), vec3<i32>(var_3.c.x, var_5.c.x, 1i))), var_2.yzz, false)).d.x);
}

