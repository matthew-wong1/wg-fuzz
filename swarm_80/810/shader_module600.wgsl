struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(517f, -873f, 280f, -1000f), -640f, vec3<bool>(false, true, true), 8462u, 4294967295u);

var<private> global3: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(955f, 1464f, -216f), vec3<f32>(-307f, 233f, 823f), vec3<f32>(1010f, 1088f, 245f), vec3<f32>(-602f, 1155f, -261f), vec3<f32>(1901f, 1456f, -922f), vec3<f32>(-333f, -1000f, 433f), vec3<f32>(-532f, 496f, -625f), vec3<f32>(1022f, -288f, -733f), vec3<f32>(-460f, 359f, 639f), vec3<f32>(-2854f, 211f, 1902f), vec3<f32>(504f, 2034f, 1176f), vec3<f32>(-310f, 1075f, 141f), vec3<f32>(1172f, -972f, 850f), vec3<f32>(-420f, 1802f, -616f), vec3<f32>(-1599f, -1797f, 660f));

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = !(!vec4<bool>(true, true, any(select(vec4<bool>(false, global1.x, false, false), vec4<bool>(false, global1.x, global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_1.c.x), vec4<bool>(false, arg_1.c.x, global1.x, true))), false));
    global1 = vec3<bool>(!all(global1.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, 378f)) + _wgslsmith_div_f32(370f, -191f)) <= arg_1.b, (~(global2.d ^ 9895u) | 39142u) > u_input.c);
    return any(!(!global2.c));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = select(!select(vec4<bool>(false, arg_0.e.c.x, !global0[_wgslsmith_index_u32(u_input.c, 2u)], true), vec4<bool>(global1.x, true && global1.x, true, false), vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.c, 2u)], global0[_wgslsmith_index_u32(global2.d, 2u)], global1.x)), vec4<bool>(false, all(select(vec2<bool>(arg_0.e.c.x, false), arg_0.e.c.xy, global0[_wgslsmith_index_u32(global2.e, 2u)])) & (true | (global4.x > 2467f)), true, !(countOneBits(global2.d) != countOneBits(1u))), select(!(!(!vec4<bool>(arg_0.b.c.x, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(arg_0.d.x, 2u)], true))), !(!(!vec4<bool>(arg_0.b.c.x, global2.c.x, global0[_wgslsmith_index_u32(global2.e, 2u)], global2.c.x))), vec4<bool>(false, _wgslsmith_dot_vec2_u32(arg_0.d.zx, vec2<u32>(2334u, u_input.c)) < 13988u, !func_2(vec2<i32>(0i, arg_0.c), arg_0.e, 208f), true)));
    var var_1 = arg_0.b;
    global3 = array<vec3<f32>, 15>();
    global3 = array<vec3<f32>, 15>();
    let var_2 = arg_0;
    return Struct_1(arg_0.e.a, 1279f, select(var_1.c, var_2.e.c, !var_2.b.c.x), arg_0.b.e, ~_wgslsmith_div_u32(var_2.b.e, var_1.e));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = !(!select(!select(arg_2.c.xz, vec2<bool>(false, false), vec2<bool>(true, true)), !vec2<bool>(global2.c.x, true), true));
    let var_1 = vec4<bool>(true, true, true, arg_0);
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-672f + -193f) + _wgslsmith_f_op_f32(arg_1.a.x + global2.b))), _wgslsmith_f_op_f32(-global4.x)), arg_2, -4379i, ~(~u_input.d) | ~u_input.d, arg_1);
    global1 = func_1(var_2, abs(_wgslsmith_mod_vec2_u32(firstTrailingBit(~u_input.d.ww), vec2<u32>(global2.e, countOneBits(u_input.d.x))))).c;
    global2 = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(var_2.b.a.zz - vec2<f32>(_wgslsmith_f_op_f32(min(1093f, var_2.e.b)), 572f)), arg_1, u_input.a.x, vec4<u32>(var_2.b.d & abs(24402u), ~global2.d, 4294967295u, ~(~var_2.d.x)), arg_2), abs(~countOneBits(var_2.d.xy)) << ((u_input.d.wz & (vec2<u32>(0u, 12874u) & vec2<u32>(var_2.d.x, 45134u))) % vec2<u32>(32u)));
    return max(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-1i, -1i, u_input.b.x, u_input.e.x) >> ((~u_input.d & _wgslsmith_mult_vec4_u32(var_2.d, vec4<u32>(var_2.e.e, 0u, u_input.c, var_2.d.x))) % vec4<u32>(32u))), vec4<i32>(-(~41889i & _wgslsmith_clamp_i32(var_2.c, -23977i, 784i)), u_input.b.x, abs(~_wgslsmith_mult_i32(-13168i, 0i)), u_input.e.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = arg_3.e;
    global4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(global2.b)))));
    var var_1 = ~(~firstLeadingBit(~1u));
    return StorageBuffer(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b))))), -arg_2.x, func_3(arg_3.b.c.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(-1005f, 1996f)), _wgslsmith_f_op_f32(trunc(-588f)), _wgslsmith_f_op_f32(max(-506f, 819f)), arg_3.e.a.x), global4.x, vec3<bool>(!global0[_wgslsmith_index_u32(2648u, 2u)], true, false), abs(~var_0.e), 4294967295u), func_1(arg_1, vec2<u32>(_wgslsmith_mult_u32(1u, global2.e), 12309u))).zxz, arg_1.e.a, _wgslsmith_mod_u32(firstTrailingBit(u_input.d.x), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    let x = u_input.a;
    s_output = func_4(global4.x, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1475f, global4.x)), _wgslsmith_f_op_f32(464f + 1000f)) - global4.zx), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.x, -581f, -111f, global2.b))))), _wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(global4.x + global2.a.x)), vec3<bool>(false | global1.x, true || global2.c.x, true), _wgslsmith_mult_u32(0u & global2.d, ~31695u), ~global2.e), 29976i, abs(vec4<u32>(~20653u, ~0u, ~84899u, 4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1078f, 400f, global4.x, global2.b)), _wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(-2219f, 534f, global2.a.x, 480f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-769f * -949f), global2.b, global1.x)), !global2.c, _wgslsmith_clamp_u32(~u_input.c, _wgslsmith_sub_u32(u_input.c, 4294967295u), 1u), 45022u)), _wgslsmith_clamp_vec4_i32(func_3(global1.x, func_1(Struct_2(global2.a.xz, Struct_1(global2.a, global2.b, vec3<bool>(false, true, global0[_wgslsmith_index_u32(global2.e, 2u)]), 46625u, u_input.c), -4620i, vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u), Struct_1(vec4<f32>(global4.x, -287f, -1634f, 878f), 298f, global2.c, 80065u, global2.d)), u_input.d.wy), Struct_1(global2.a, global4.x, global2.c, u_input.d.x, u_input.c)), vec4<i32>(~39706i, min(u_input.e.x, u_input.a.x), 54514i ^ u_input.e.x, i32(-1i) * -1i), ~(vec4<i32>(38440i, u_input.b.x, u_input.b.x, u_input.a.x) ^ vec4<i32>(-1i, u_input.e.x, 1i, u_input.b.x))) & max(vec4<i32>(u_input.b.x, -36357i, u_input.b.x, 52065i) << (~u_input.d % vec4<u32>(32u)), vec4<i32>(~(-1i), ~u_input.a.x, ~(-22228i), _wgslsmith_mult_i32(-5998i, u_input.e.x))), Struct_2(global2.a.yx, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(global2.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b, -1000f, -774f, 333f), vec4<f32>(1000f, -682f, global4.x, -848f))), !vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], false))), _wgslsmith_f_op_f32(-global4.x), func_1(Struct_2(vec2<f32>(global4.x, global4.x), Struct_1(global2.a, 719f, global2.c, u_input.d.x, global2.e), u_input.e.x, u_input.d, Struct_1(vec4<f32>(-318f, global2.b, -202f, -1248f), 1018f, global2.c, u_input.d.x, u_input.d.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, global2.e), u_input.d.yw)).c, u_input.c, ~(global2.d << (1u % 32u))), ~(i32(-1i) * -1i), ~abs(vec4<u32>(u_input.c, 67755u, 8945u, u_input.d.x)), func_1(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(622f, -666f) + global2.a.ww), Struct_1(global2.a, -837f, vec3<bool>(global1.x, true, global2.c.x), 1u, 84472u), ~0i, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 14691u, u_input.c, global2.d), vec4<u32>(43402u, 36527u, u_input.d.x, 23151u)), func_1(Struct_2(global4.zz, Struct_1(vec4<f32>(global4.x, global4.x, 1911f, 1023f), global4.x, global2.c, 4294967295u, u_input.d.x), u_input.b.x, vec4<u32>(global2.e, 8388u, global2.e, 4294967295u), Struct_1(global2.a, -1000f, vec3<bool>(false, global1.x, global0[_wgslsmith_index_u32(global2.e, 2u)]), 16719u, u_input.d.x)), u_input.d.wx)), select(u_input.d.xz, vec2<u32>(1u, 1u), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global2.c.x), global2.c.zy, false)))));
}

