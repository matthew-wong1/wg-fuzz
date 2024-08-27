struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-3370i, -32493i, 1i), vec3<i32>(2147483647i, -3070i, 1i), vec3<i32>(8055i, 43962i, -52461i), vec3<i32>(i32(-2147483648), -42265i, 0i), vec3<i32>(0i, 24017i, 53091i), vec3<i32>(1713i, 40424i, i32(-2147483648)), vec3<i32>(-37604i, 0i, 2147483647i), vec3<i32>(-40964i, -1i, 1i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 0i, -6953i), vec3<i32>(-156i, 1i, -1i), vec3<i32>(13776i, 2200i, 1i), vec3<i32>(1i, -32717i, -54081i), vec3<i32>(-20239i, 1i, -1i), vec3<i32>(2147483647i, 16562i, 2147483647i), vec3<i32>(2147483647i, 51174i, 2147483647i), vec3<i32>(39443i, i32(-2147483648), 14409i), vec3<i32>(-63987i, 2147483647i, -1i), vec3<i32>(-14889i, 21982i, 32506i), vec3<i32>(i32(-2147483648), 0i, -8744i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(-16619i, 7546i, 11850i), vec3<i32>(0i, 18467i, 2147483647i), vec3<i32>(25065i, -1i, -17486i), vec3<i32>(20355i, 2147483647i, 9080i), vec3<i32>(2147483647i, -39141i, -26171i), vec3<i32>(-18909i, 0i, 1i), vec3<i32>(0i, -1i, 6259i), vec3<i32>(26939i, 32787i, 30072i), vec3<i32>(2147483647i, i32(-2147483648), 11112i));

var<private> global1: vec2<i32> = vec2<i32>(21182i, i32(-2147483648));

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> bool {
    global0 = array<vec3<i32>, 30>();
    var var_0 = -14872i;
    global2 = reverseBits(_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 30u)], -(~(vec3<i32>(95518i, 0i, global2.x) << (vec3<u32>(u_input.a, 1u, u_input.c.x) % vec3<u32>(32u))))));
    let var_1 = Struct_2(Struct_1(u_input.e, u_input.c.x), abs(19189i));
    return false;
}

fn func_3() -> u32 {
    global2 = vec3<i32>(firstTrailingBit(~1i), global1.x, select(~firstTrailingBit(global1.x), select(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(437i, 4746i), global2.zz, global2.xy), vec2<i32>(-8450i, u_input.e)), _wgslsmith_mult_i32(u_input.e, -26899i) << (u_input.d.x % 32u), all(vec4<bool>(false, false, false, true))), !all(vec3<bool>(false, true, true)) | true));
    var var_0 = any(select(select(vec3<bool>(true, all(vec2<bool>(false, false)), any(vec4<bool>(true, false, true, false))), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true), vec3<bool>(!(u_input.c.x <= u_input.d.x), true, u_input.e > -44908i), select(true, all(vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(11427u, 4294967295u, u_input.b.x)) <= u_input.d.x)));
    let var_1 = !all(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), all(vec3<bool>(false, false, false))), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false))));
    global2 = abs(abs(global0[_wgslsmith_index_u32(1u, 30u)]));
    let var_2 = _wgslsmith_f_op_f32(ceil(-221f));
    return u_input.d.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_i32(max(vec3<i32>(-global2.x, -global1.x ^ countOneBits(-2147483647i), ~global2.x), global0[_wgslsmith_index_u32(arg_2, 30u)]), vec3<i32>(u_input.e, 25280i, 0i));
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~(-22352i & firstTrailingBit(global1.x)));
    let var_2 = Struct_2(Struct_1(36879i, arg_1), u_input.e);
    global1 = global2.xx;
    var var_3 = Struct_3(var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2029f, 632f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1699f, -436f, 892f) - vec3<f32>(870f, -684f, 202f)) + vec3<f32>(331f, -1453f, -1625f))))), min(var_0, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-global0[_wgslsmith_index_u32(arg_2, 30u)], -global0[_wgslsmith_index_u32(23137u, 30u)]), global0[_wgslsmith_index_u32(countOneBits(0u), 30u)])), Struct_2(var_2.a, var_0.x), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0.yz, global2.zy), vec2<i32>(-63497i, -22611i)), _wgslsmith_mod_u32(u_input.c.x, u_input.a)), ~58176i));
    return Struct_2(Struct_1(_wgslsmith_mod_i32(var_0.x, ~u_input.e), ~func_3()), -39453i);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec3<i32>(-52417i, -(_wgslsmith_sub_i32(global1.x, 1i) >> (u_input.c.x % 32u)), firstLeadingBit(~(u_input.e << (61017u % 32u)) << (u_input.d.x % 32u)));
    var var_1 = -firstTrailingBit(countOneBits(vec4<i32>(-1i) * -vec4<i32>(-22626i, arg_0.a.a, var_0.x, 1i)));
    global1 = -((abs(-vec2<i32>(-2147483647i, 2147483647i)) ^ var_0.xz) << (vec2<u32>(_wgslsmith_mod_u32(~42940u, ~0u), _wgslsmith_clamp_u32(~1u, 4294967295u, u_input.d.x | 0u)) % vec2<u32>(32u)));
    let var_2 = Struct_3(func_1(vec3<bool>(false, true, any(vec4<bool>(true, false, true, false))), u_input.d.x, 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(956f, 532f, 2509f))), _wgslsmith_div_vec3_f32(vec3<f32>(416f, 2359f, -274f), vec3<f32>(127f, 498f, 1383f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-596f, 1200f, -1665f)), vec3<f32>(-403f, -1000f, 202f))), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.a), 4294967295u), 30u)], Struct_2(Struct_1(min(countOneBits(1i), -2147483647i), 1u), u_input.e), Struct_2(Struct_1(_wgslsmith_add_i32(var_0.x | arg_0.a.a, -48676i), ~(~u_input.c.x)), var_1.x));
    global2 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -6870i, ~(-28390i), _wgslsmith_clamp_i32(var_2.c.x, ~701i, -1i)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, global1.x, var_0.x) | var_2.c, var_0))), var_2.c);
    return Struct_2(func_1(vec3<bool>(true, true, true), ~36088u, var_2.a.a.b).a, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), all(vec4<bool>(true, false, true, false))), 7817u, u_input.b.x));
    global2 = global0[_wgslsmith_index_u32(42576u, 30u)];
    var var_1 = !(!(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)))));
    var var_2 = var_1.x;
    var_2 = !(-1248f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1429f, -594f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-18382i, var_0.a.a >> (4294967295u % 32u), func_1(var_1.wyx, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a.b, 0u), vec3<u32>(u_input.c.x, u_input.d.x, 4294967295u)), func_1(vec3<bool>(var_1.x, true, var_1.x), ~49226u, _wgslsmith_sub_u32(var_0.a.b, 1u)).a.b).a.a), global2.yx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1329f), _wgslsmith_f_op_f32(min(-1000f, 868f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) - -133f), true)))), ~vec4<i32>(~(-1i), countOneBits(global2.x) >> (u_input.b.x % 32u), ~firstLeadingBit(18717i), ~_wgslsmith_sub_i32(2147483647i, 0i)), (func_3() & 1u) & ~(~var_0.a.b));
}

