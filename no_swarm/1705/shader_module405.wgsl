struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(0u), Struct_2(1u), Struct_2(14045u), Struct_2(1u), Struct_2(1u), Struct_2(57125u), Struct_2(5034u), Struct_2(20420u), Struct_2(35785u), Struct_2(5515u), Struct_2(0u), Struct_2(88825u), Struct_2(0u), Struct_2(1u), Struct_2(47096u), Struct_2(1u), Struct_2(4294967295u), Struct_2(16459u), Struct_2(1u), Struct_2(0u), Struct_2(35134u), Struct_2(69379u), Struct_2(31615u), Struct_2(4294967295u), Struct_2(51618u), Struct_2(4294967295u), Struct_2(28973u), Struct_2(4294967295u), Struct_2(7983u));

var<private> global2: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(i32(-2147483648), i32(-2147483648), 38289i), vec3<i32>(1i, 0i, -6562i), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 74475i));

var<private> global3: array<bool, 6> = array<bool, 6>(true, false, true, true, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>) -> Struct_4 {
    global1 = array<Struct_2, 29>();
    var var_0 = u_input.a ^ ~u_input.a;
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(-1640f, 422f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1017f), 408f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, 227f, 512f)), vec3<f32>(522f, -540f, -1000f))))));
    var var_3 = vec3<u32>(~(~select(_wgslsmith_mult_u32(u_input.b, var_1.x), _wgslsmith_div_u32(var_1.x, var_0.x), !global3[_wgslsmith_index_u32(var_1.x, 6u)])), _wgslsmith_mod_u32(~max(arg_1.x, select(var_1.x, var_1.x, global3[_wgslsmith_index_u32(50339u, 6u)])), var_1.x), 1u);
    return Struct_4(-(-arg_2.wy ^ vec2<i32>(arg_0, arg_0)), global3[_wgslsmith_index_u32(~var_3.x << (reverseBits(~(~34003u)) % 32u), 6u)], true, arg_1.x);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    global3 = array<bool, 6>();
    global3 = array<bool, 6>();
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xz, ~vec2<u32>(0u, u_input.b)), vec2<u32>(~u_input.a.x, 80770u)), 2729u);
    let var_1 = func_2(-abs(u_input.c.x), vec2<u32>(~_wgslsmith_clamp_u32(47653u, u_input.a.x, u_input.a.x), u_input.b), vec4<i32>(33384i, _wgslsmith_mult_i32(46636i, u_input.c.x & reverseBits(u_input.c.x)), u_input.c.x, ~(-arg_0)));
    return u_input.c.zz;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<bool>) -> Struct_1 {
    global2 = array<vec3<i32>, 4>();
    var var_0 = func_2(arg_1, ~(~(_wgslsmith_div_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 25863u)) | ~vec2<u32>(u_input.a.x, u_input.a.x))), arg_2);
    var var_1 = -27372i;
    global3 = array<bool, 6>();
    let var_2 = Struct_4(vec2<i32>(28129i, 47092i) | _wgslsmith_sub_vec2_i32(var_0.a, func_3(-1i, Struct_1(u_input.c.x, true))), true, select(true, all(!arg_3), arg_3.x), ~(~u_input.b));
    return Struct_1(_wgslsmith_dot_vec4_i32(arg_2, arg_2), false);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = ~vec3<i32>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-853f, 378f)), select(13610i, arg_2.a, global3[_wgslsmith_index_u32(26277u, 6u)]) >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u), reverseBits(vec4<i32>(-55175i, u_input.c.x, arg_1.a.x, 1i)), !select(vec2<bool>(false, global3[_wgslsmith_index_u32(70569u, 6u)]), vec2<bool>(arg_2.b, false), true)).a, -reverseBits(firstTrailingBit(0i)), -2147483647i);
    var var_1 = Struct_5(!(!select(select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(1u, 6u)], true), arg_1.c), vec2<bool>(global3[_wgslsmith_index_u32(14137u, 6u)], true), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2047f, 303f, -1417f))) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(773f, 493f, 1000f), vec3<f32>(-831f, -598f, 467f)))), countOneBits(vec4<i32>(1i, -_wgslsmith_mult_i32(-30707i, arg_1.a.x), arg_1.a.x, ~0i)), arg_1.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(469f, 877f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-994f + 1077f))), 884f)));
    let var_2 = func_2(arg_2.a, max(u_input.a.zx, _wgslsmith_add_vec2_u32(abs(max(vec2<u32>(u_input.b, 0u), vec2<u32>(23258u, 11888u))), u_input.a.yy)), var_1.c);
    global3 = array<bool, 6>();
    let var_3 = vec4<u32>(arg_1.d, 46167u, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(var_1.d, reverseBits(arg_3) ^ arg_0)), ~(~10740u));
    return !select(any(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(var_3.x, 6u)], false))), !(!any(vec3<bool>(true, var_2.c, false))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.zx - var_1.b.xx) + _wgslsmith_f_op_vec2_f32(-var_1.b.xz)), 2147483647i, -var_1.c, select(var_1.a, !var_1.a, true)).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global1 = array<Struct_2, 29>();
    let var_1 = u_input.a.x >= ~(~89260u);
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    let var_2 = Struct_1(53794i, func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 1u), ~u_input.a) << (~u_input.a.x % 32u), Struct_4(~u_input.c.yz, -u_input.c.x > u_input.c.x, !any(vec2<bool>(false, var_1)), abs(1u)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, -461f)), u_input.c.x, ~abs(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x)), vec2<bool>(38468i < u_input.c.x, false)), var_0));
    global0 = array<Struct_3, 8>();
    let var_3 = Struct_3(u_input.b, func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f * -954f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1621f)))), u_input.c.x, _wgslsmith_mult_vec4_i32(vec4<i32>(~var_2.a, u_input.c.x, 0i, _wgslsmith_mult_i32(u_input.c.x, var_2.a)), abs(vec4<i32>(-15006i, -2147483647i, 15809i, 18049i))), vec2<bool>(true, any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(76844u, 6u)], var_2.b, var_1)))), Struct_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, 4294967295u, 87968u, var_0), vec4<u32>(4294967295u, var_0, var_0, 0u))), -1447f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(182f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(479f))))), true)));
    global3 = array<bool, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(694f - 1891f))))), _wgslsmith_f_op_f32(-var_3.e))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, firstTrailingBit(16373u) << (~1u % 32u)), reverseBits(abs(u_input.b)) << (_wgslsmith_mod_u32(u_input.a.x, 0u) % 32u)), -vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.a, var_3.b.a), vec2<i32>(u_input.c.x, u_input.c.x)), min(u_input.c.yz, vec2<i32>(1i, var_3.b.a))), 0i, ~0i >> (~var_3.c.a % 32u)));
}

