struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-6908i, 1i), vec2<i32>(-1i, 10005i), vec2<i32>(70893i, 1876i), vec2<i32>(1640i, 20197i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(7083i, -80064i), vec2<i32>(42331i, 1i), vec2<i32>(27568i, 0i), vec2<i32>(-1054i, 0i), vec2<i32>(i32(-2147483648), -19230i), vec2<i32>(22305i, -23535i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -18509i), vec2<i32>(-1i, -1i), vec2<i32>(60604i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(-28462i, 2147483647i), vec2<i32>(-13454i, -9218i), vec2<i32>(0i, -2934i), vec2<i32>(-30865i, 70337i), vec2<i32>(1i, 28732i), vec2<i32>(15477i, -11292i), vec2<i32>(0i, -641i), vec2<i32>(2147483647i, 2056i));

var<private> global3: array<bool, 17> = array<bool, 17>(true, false, false, false, true, false, true, true, false, true, true, false, false, false, false, false, true);

var<private> global4: Struct_2 = Struct_2(Struct_1(-997f, vec4<u32>(1u, 14069u, 4294967295u, 66557u), vec2<f32>(-530f, -2316f), vec3<f32>(1028f, -337f, -1137f), false), vec2<i32>(-1i, 6570i), false, Struct_1(340f, vec4<u32>(64484u, 21794u, 0u, 33398u), vec2<f32>(1000f, -144f), vec3<f32>(-1176f, -998f, -601f), true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: i32) -> vec4<u32> {
    var var_0 = ~(~arg_0.a.d.b.wwx);
    global3 = array<bool, 17>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.a.a))), _wgslsmith_f_op_f32(-arg_0.d))), max(~(vec4<u32>(4294967295u, global0.b.x, arg_2, 68873u) ^ ~vec4<u32>(1u, 20994u, 17949u, 13871u)), ~global0.b), _wgslsmith_f_op_vec2_f32(-global4.d.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, 514f, 1602f)), true))), any(!(!vec2<bool>(arg_0.a.a.e, false))));
    var var_2 = 2147483647i;
    var var_3 = false;
    return vec4<u32>(var_1.b.x, _wgslsmith_mod_u32(u_input.c, _wgslsmith_mod_u32(_wgslsmith_add_u32(~29830u, u_input.b), ~var_1.b.x)), u_input.d.x, 9910u);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(global4.a, vec2<i32>(11424i, _wgslsmith_sub_i32(~(-2147483647i), -35305i ^ global4.b.x)), true && !select(global0.e, arg_0.x, arg_0.x), global4.a), global0.e, vec4<i32>(1i, u_input.a, ~(global4.b.x >> (global4.d.b.x % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -44933i, -1i), vec4<i32>(u_input.a, -2147483647i, global4.b.x, u_input.a))) >> (func_3(Struct_3(Struct_2(Struct_1(global4.a.d.x, vec4<u32>(global4.a.b.x, global0.b.x, global4.a.b.x, 0u), vec2<f32>(-1511f, global0.a), vec3<f32>(global0.a, -1004f, -2642f), global4.d.e), vec2<i32>(23912i, 1i), true, global4.a), !arg_0.x, ~vec4<i32>(-38360i, u_input.a, global4.b.x, -2147483647i), global4.d.a, global2[_wgslsmith_index_u32(32994u, 24u)]), _wgslsmith_f_op_f32(f32(-1f) * -2026f), _wgslsmith_add_u32(_wgslsmith_mod_u32(8377u, 1u), _wgslsmith_mod_u32(42933u, 4294967295u)), min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), global4.b), _wgslsmith_div_i32(global4.b.x, global4.b.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(408f - -781f), global0.c.x, false)), global2[_wgslsmith_index_u32(firstLeadingBit(global0.b.x), 24u)]);
    global2 = array<vec2<i32>, 24>();
    global0 = var_0.a.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * -357f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-340f, _wgslsmith_f_op_f32(-var_0.d))) + 247f));
    var var_2 = -16768i;
    return global4.a;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(func_2(!vec3<bool>(true, false, global0.e)), -select(-vec2<i32>(2147483647i, u_input.a), abs(global4.b), select(global0.e, true, global4.c)), any(!select(vec4<bool>(global0.e, global0.e, true, false), vec4<bool>(global4.c, false, global4.d.e, true), vec4<bool>(true, global4.c, global3[_wgslsmith_index_u32(14626u, 17u)], false))), func_2(vec3<bool>(!global4.d.e, true, func_2(vec3<bool>(global0.e, true, true)).e))), !(!any(vec2<bool>(false, true))), abs(max((vec4<i32>(28424i, 9819i, -30931i, global4.b.x) << (global4.a.b % vec4<u32>(32u))) >> (vec4<u32>(global0.b.x, 0u, global4.d.b.x, 9117u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(-1i, -1i), _wgslsmith_mult_i32(33370i, global4.b.x), _wgslsmith_clamp_i32(-11642i, u_input.a, global4.b.x), 2147483647i))), _wgslsmith_f_op_f32(min(-1341f, -654f)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(Struct_3(Struct_2(global4.a, vec2<i32>(25273i, global4.b.x), true, Struct_1(-481f, vec4<u32>(u_input.c, 1u, u_input.d.x, global0.b.x), global4.d.c, global0.d, true)), !global4.d.e, vec4<i32>(-52648i, global4.b.x, 1i, -2147483647i) << (global4.d.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(-491f + global0.d.x), vec2<i32>(u_input.a, -9838i)), 1524f, (global4.a.b.x | global4.a.b.x) ^ 19595u, -(~u_input.a)).x, abs(global4.d.b.x)), 24u)]);
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.b.x, _wgslsmith_mod_u32(0u & global0.b.x, 4294967295u), global4.a.b.x) << (~firstTrailingBit(vec3<u32>(0u, global0.b.x, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(~reverseBits(~0u), ~_wgslsmith_div_u32(global0.b.x, _wgslsmith_mod_u32(var_0.a.a.b.x, 22363u)), func_3(Struct_3(var_0.a, global0.e, var_0.c, _wgslsmith_div_f32(-123f, global4.d.a), vec2<i32>(var_0.e.x, var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * global0.a)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a.d.b.x, 11026u, 4294967295u), 0u), _wgslsmith_add_i32(global4.b.x, select(-17506i, 36207i, true))).x));
    var var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(abs(var_0.c.xy << (firstTrailingBit(vec2<u32>(137111u, 1672u)) % vec2<u32>(32u))), var_1.b), min(2147483647i, ~1i), -u_input.a);
    let var_4 = global0.b.xz;
    return vec4<bool>(var_1.d.e, firstLeadingBit(_wgslsmith_mod_i32(var_1.b.x, i32(-1i) * -2147483647i)) > abs(var_1.b.x), true, true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(global4.d, vec2<i32>(_wgslsmith_sub_i32(select(-2147483647i, -1i, true), ~global4.b.x), _wgslsmith_mult_i32(0i | global4.b.x, -52769i)), !all(vec3<bool>(global4.d.e, global0.e, true)), global4.a), func_1().x, _wgslsmith_add_vec4_i32(~(~select(vec4<i32>(u_input.a, 2147483647i, 29388i, -32540i), vec4<i32>(global4.b.x, global4.b.x, global4.b.x, 6909i), arg_0)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global4.b.x, 2147483647i, -17818i, u_input.a), vec4<i32>(global4.b.x, 0i, -1i, -35263i)), countOneBits(vec4<i32>(2147483647i, 2147483647i, -29457i, global4.b.x))) | (min(vec4<i32>(-42810i, global4.b.x, -1i, u_input.a), vec4<i32>(global4.b.x, global4.b.x, 0i, global4.b.x)) ^ vec4<i32>(u_input.a, -18731i, global4.b.x, -9806i))), 642f, -global2[_wgslsmith_index_u32(1u, 24u)]);
    global4 = var_0.a;
    global1 = !global3[_wgslsmith_index_u32(20671u, 17u)];
    var var_1 = var_0.a.d.b.xxy;
    var_0 = Struct_3(var_0.a, var_0.a.a.e, vec4<i32>(abs(var_0.e.x), global4.b.x, _wgslsmith_sub_i32(var_0.c.x, -14315i) | u_input.a, -1i) | max(var_0.c, var_0.c), var_0.a.a.a, abs(select(vec2<i32>(1i, _wgslsmith_sub_i32(u_input.a, u_input.a)), vec2<i32>(-1i) * -var_0.e, func_1().x)));
    return Struct_2(global4.d, ~vec2<i32>((global4.b.x | var_0.e.x) & max(1i, 2147483647i), 2147483647i), arg_0.x, Struct_1(_wgslsmith_f_op_f32(-var_0.d), vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(arg_1), arg_1), 44464u, u_input.c, 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.a.a.c, _wgslsmith_f_op_vec2_f32(-global4.a.d.xz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.xx * vec2<f32>(394f, 399f)))), vec3<f32>(216f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global4.d.a, global4.a.c.x), _wgslsmith_f_op_f32(var_0.d - -1151f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))), global3[_wgslsmith_index_u32(u_input.d.x, 17u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = func_4(select(!vec4<bool>(-1i >= global4.b.x, all(vec4<bool>(false, false, false, false)), !global0.e, false), func_1(), !(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 17u)], false, global3[_wgslsmith_index_u32(global0.b.x, 17u)], global4.a.e))), firstTrailingBit(vec4<u32>(4294967295u, 1u, 1u, ~1u)) ^ ~vec4<u32>(~global4.d.b.x, 8590u ^ u_input.c, min(u_input.b, 1017u), ~global0.b.x));
    let var_1 = true;
    global4 = Struct_2(var_0.d, -_wgslsmith_mod_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, 1i)), select(!(!all(vec2<bool>(false, var_1))), true, any(!vec3<bool>(true, global3[_wgslsmith_index_u32(global4.d.b.x, 17u)], var_0.a.e))), global4.a);
    var var_2 = global4.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.b.x, u_input.d.x), ~var_0.a.b.wy), reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global4.a.b.x, u_input.b), vec2<u32>(15718u, u_input.c), abs(var_0.d.b.ww)))), _wgslsmith_f_op_f32(step(global4.d.c.x, -622f)), u_input.a, var_0.b.x);
}

