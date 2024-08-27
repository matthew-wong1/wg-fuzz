struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(10854i, -3568i, -16002i, 9562i), vec4<i32>(i32(-2147483648), 0i, 57030i, -39202i), vec4<i32>(1i, 1i, -8840i, i32(-2147483648)), vec4<i32>(3106i, -1i, 0i, 1694i), vec4<i32>(0i, 1i, 23137i, -3593i), vec4<i32>(-22765i, -40954i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, -16099i, 21701i, -43371i), vec4<i32>(237i, -75832i, i32(-2147483648), -27229i), vec4<i32>(55330i, 2147483647i, i32(-2147483648), -78437i));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(1u, vec3<f32>(-2657f, -487f, 1519f), 19436i, false, vec3<bool>(true, true, false)), Struct_1(1u, vec3<f32>(-1306f, -1339f, 1074f), -1i, false, vec3<bool>(false, false, true)), Struct_1(2032u, vec3<f32>(1450f, 1154f, 1553f), 2147483647i, true, vec3<bool>(true, true, false)), Struct_1(4294967295u, vec3<f32>(594f, 1581f, -618f), 13113i, false, vec3<bool>(false, true, true)), Struct_1(28072u, vec3<f32>(-535f, -959f, -1000f), -1i, true, vec3<bool>(false, true, true)), Struct_1(1u, vec3<f32>(-684f, -2106f, 759f), 63325i, true, vec3<bool>(false, false, true)), Struct_1(76645u, vec3<f32>(570f, 1127f, -733f), 26878i, false, vec3<bool>(false, true, false)), Struct_1(58313u, vec3<f32>(-1965f, 798f, 1000f), 42679i, false, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<f32>(537f, 521f, 1767f), 0i, true, vec3<bool>(false, false, true)));

var<private> global2: bool;

var<private> global3: i32 = 1i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<bool>) -> bool {
    global2 = arg_3.x;
    let var_0 = _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i | arg_1.a, arg_1.a), vec2<i32>(abs(-21323i), select(0i, -2147483647i, arg_0) | 0i)));
    var var_1 = vec2<u32>((reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.zzy, vec3<u32>(4294967295u, 4294967295u, u_input.a.x))) >> (firstTrailingBit(4294967295u) % 32u)) & abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 11303u))), 53456u);
    var var_2 = 77254u;
    var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(max(u_input.a.x, 4989u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.a.x, var_1.x), vec3<u32>(18817u, 63463u, 0u)), u_input.a.x, u_input.a.x & 54914u) ^ vec4<u32>(~var_1.x, 4294967295u, 49476u, abs(u_input.a.x)), vec4<u32>(0u, 4294967295u, (1u >> (0u % 32u)) ^ ~(~u_input.a.x), max(countOneBits(u_input.a.x) | (u_input.a.x >> (var_1.x % 32u)), ~25430u)));
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(!(_wgslsmith_dot_vec2_i32(vec2<i32>(23401i, 1i), vec2<i32>(1i, 28436i)) <= 1i) | false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), false, all(vec3<bool>(false, false, false)), true), true)), all(vec4<bool>(true, func_3(true, Struct_2(1i, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-459f, 987f) - vec2<f32>(-247f, -846f)), vec3<bool>(true, false, true)), true, select(false, true, true))), !(!all(vec4<bool>(true, true, true, true))));
    let var_1 = u_input.a.yy;
    var var_2 = Struct_1(~(~0u << ((~var_1.x >> (~u_input.a.x % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1258f, 562f, 659f), vec3<f32>(-398f, -209f, 1017f), vec3<bool>(false, var_0.x, true)))))), -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(38557i, 2147483647i, 1i, -3368i) << (u_input.a % vec4<u32>(32u))), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x)), 9u)]), var_0.x, select(var_0.wyw, select(select(var_0.wyy, !vec3<bool>(false, var_0.x, var_0.x), true), vec3<bool>(var_0.x, var_0.x, select(true, var_0.x, var_0.x)), false), var_0.zyx));
    var var_3 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyw, vec3<u32>(18468u, 0u, 0u) << (vec3<u32>(3424u, 54511u, var_2.a) % vec3<u32>(32u))) << (4294967295u % 32u), var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.b))), var_2.c, !(~_wgslsmith_clamp_u32(var_1.x, var_2.a, u_input.a.x) <= u_input.a.x), !select(var_2.e, !select(vec3<bool>(false, true, true), var_0.zwx, vec3<bool>(var_0.x, var_2.d, true)), var_2.e));
    let var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.c, abs(var_2.c)), vec2<i32>(2147483647i, 11193i & _wgslsmith_mult_i32(-38188i, ~var_3.c)));
    return Struct_1(~_wgslsmith_add_u32(~(~0u), u_input.a.x), vec3<f32>(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(trunc(-1641f))), _wgslsmith_f_op_f32(347f - -1000f), var_2.b.x), 2147483647i, select(var_2.c < ~(-1i), !any(select(var_0.ww, vec2<bool>(true, var_3.e.x), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) + var_2.b.x) < _wgslsmith_f_op_f32(min(var_2.b.x, var_3.b.x))), vec3<bool>(var_2.d, var_2.d, var_2.d));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, arg_0, -1312f, -151f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 579f, var_0.b.x, 148f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.b.x, var_0.b.x, 2316f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(arg_0 - -1471f), arg_0, arg_0) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0.b.x, var_0.b.x, var_0.b.x) + vec4<f32>(var_0.b.x, -183f, arg_0, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1268f, arg_0, -482f, var_0.b.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -963f), var_0.b.x, -1178f))), false));
    var var_2 = global1[_wgslsmith_index_u32(~(~var_0.a), 9u)];
    var var_3 = _wgslsmith_f_op_f32(max(-261f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, true))))));
    var var_4 = Struct_2(1i, !var_0.d);
    return countOneBits(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 9>();
    global0 = array<vec4<i32>, 9>();
    global2 = any(vec2<bool>(false, true)) | true;
    global1 = array<Struct_1, 9>();
    global0 = array<vec4<i32>, 9>();
    var var_0 = Struct_1(func_1(-1921f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1643f, -666f, 1091f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-859f, 699f, 953f), vec3<f32>(-1243f, -286f, 374f), true))))), 1i, true, vec3<bool>(all(!func_2().e.xx), true, true));
    global2 = all(!(!var_0.e.xx));
    let var_1 = Struct_2(-(~(~(~var_0.c))), var_0.e.x | (var_0.e.x == all(func_2().e)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.a.x | 1u, ~(~(~_wgslsmith_add_vec4_u32(u_input.a, u_input.a))), u_input.a.wxz);
}

