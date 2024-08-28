struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: array<vec4<f32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_4(vec4<bool>(true, !arg_1.a, arg_1.a, arg_1.a));
    let var_1 = arg_1;
    let var_2 = ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), vec3<u32>(u_input.b >> (_wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b) % 32u), 1u, u_input.b), min(~firstLeadingBit(vec3<u32>(0u, 88065u, u_input.b)), ~vec3<u32>(37619u, u_input.b, u_input.b)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_4 = var_0.a.zx;
    return _wgslsmith_add_i32(select(countOneBits(firstTrailingBit(u_input.a.x)) | ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, 4294967295u), var_2.yx), max(_wgslsmith_clamp_vec2_u32(var_2.xy, vec2<u32>(var_2.x, var_2.x), vec2<u32>(var_2.x, 0u)), var_2.xz)), 24u)]), ~(u_input.a.x << (~_wgslsmith_clamp_u32(24827u, 40004u, 28333u) % 32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(max(max(u_input.b, 1u), _wgslsmith_mult_u32(u_input.b, max(u_input.b, 2056u))), 24u)];
    let var_1 = vec3<u32>(1u, ~79381u, 4294967295u);
    let var_2 = all(!select(vec4<bool>(all(vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 24u)], false)), false, u_input.a.x < arg_0, false), select(select(vec4<bool>(arg_1.b.x, true, false, arg_1.b.x), vec4<bool>(arg_1.b.x, false, global0[_wgslsmith_index_u32(1u, 24u)], false), arg_1.b.x), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], arg_1.b.x, global0[_wgslsmith_index_u32(147328u, 24u)], true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 24u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], false, arg_1.b.x, false), all(vec2<bool>(arg_1.b.x, true)))));
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: f32) -> f32 {
    global1 = array<vec4<f32>, 30>();
    let var_0 = 488f;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), -723f))));
    let var_2 = u_input.b;
    var var_3 = vec4<bool>(global0[_wgslsmith_index_u32(var_2, 24u)], any(!func_4(func_3(global1[_wgslsmith_index_u32(u_input.b, 30u)], Struct_3(global0[_wgslsmith_index_u32(3814u, 24u)])), Struct_1(21988i, vec3<bool>(global0[_wgslsmith_index_u32(var_2, 24u)], global0[_wgslsmith_index_u32(17016u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), vec3<f32>(arg_0, arg_0, arg_0)))), true, any(select(func_4(~u_input.a.x, Struct_1(16399i, vec3<bool>(global0[_wgslsmith_index_u32(9061u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], true), vec3<f32>(852f, arg_0, var_0))).yz, func_4(2147483647i, Struct_1(u_input.a.x, vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 24u)]), vec3<f32>(-583f, -396f, arg_0))).zz, ~u_input.a.x < _wgslsmith_div_i32(-4167i, u_input.a.x))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -544f)));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: u32) -> vec3<bool> {
    let var_0 = u_input.a.wzz;
    let var_1 = -(u_input.a.x | ~8726i);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(298f))), -196f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 355f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1109f * -961f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, _wgslsmith_f_op_f32(round(716f)), -282f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(563f, 806f) - _wgslsmith_f_op_f32(f32(-1f) * -320f)), -994f, 383f))));
    var var_3 = Struct_2(true, Struct_1(max(39438i, -min(arg_1, 35925i)), vec3<bool>(!any(vec3<bool>(arg_0.a.x, false, false)), all(select(vec3<bool>(global0[_wgslsmith_index_u32(78722u, 24u)], true, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 24u)], global0[_wgslsmith_index_u32(12808u, 24u)], global0[_wgslsmith_index_u32(18148u, 24u)]), vec3<bool>(true, arg_0.a.x, false))), true), _wgslsmith_f_op_vec3_f32(-var_2)), Struct_1(~0i ^ ~_wgslsmith_add_i32(var_1, 2147483647i), func_4(12222i, Struct_1(_wgslsmith_dot_vec2_i32(var_0.yz, var_0.xz), func_4(var_1, Struct_1(-1i, vec3<bool>(arg_0.a.x, false, global0[_wgslsmith_index_u32(1u, 24u)]), var_2)), var_2)), vec3<f32>(941f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(248f - -1000f))), _wgslsmith_div_f32(var_2.x, var_2.x))), Struct_1(0i & -countOneBits(var_1), func_4(65389i, Struct_1(firstTrailingBit(arg_1), arg_0.a.zxw, _wgslsmith_f_op_vec3_f32(-var_2))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, -1442f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, var_2.x, var_2.x)))), vec3<f32>(1344f, -148f, _wgslsmith_f_op_f32(sign(var_2.x))), false))));
    let var_4 = 1i;
    return select(!vec3<bool>(arg_0.a.x, false, all(arg_0.a)), select(var_3.c.b, !var_3.b.b, any(func_4(~52481i, var_3.d).yy)), func_4(-408i, Struct_1(_wgslsmith_div_i32(var_0.x, var_0.x), !var_3.c.b, _wgslsmith_f_op_vec3_f32(var_2 * var_3.c.c))).x & true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!select(false, global0[_wgslsmith_index_u32(~u_input.b, 24u)], false && global0[_wgslsmith_index_u32(u_input.b, 24u)])), Struct_1(~u_input.a.x, !func_1(Struct_4(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)], false, global0[_wgslsmith_index_u32(u_input.b, 24u)])), -8788i, u_input.b, u_input.b & 36988u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(469f, -565f, _wgslsmith_f_op_f32(func_2(-1007f)))))), Struct_1(-2147483647i, select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)], false)), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u ^ u_input.b, reverseBits(4294967295u)), 24u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(523f, -211f, 868f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, 715f, -1611f)))))), Struct_1(1851i, !(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1025f, 525f, 144f)))));
    let var_1 = var_0.b.b;
    let var_2 = var_0.b.c;
    let var_3 = true;
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_4 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, 46818u), vec3<u32>(u_input.b, u_input.b, 0u)))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), ~vec3<u32>(u_input.b, u_input.b, 4294967295u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(max(u_input.b, u_input.b), u_input.b, firstLeadingBit(u_input.b)), vec3<u32>(u_input.b, ~1u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~select(_wgslsmith_sub_i32(~0i, ~0i), ~reverseBits(0i), true));
}

