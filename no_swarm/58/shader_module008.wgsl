struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: vec2<f32> = vec2<f32>(566f, 234f);

var<private> global2: array<vec4<u32>, 15>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    return Struct_2(Struct_1(select(arg_1.a, !(!arg_1.a), vec2<bool>(true, arg_1.a.x | arg_1.a.x))), global1.x);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_5(arg_0, !(!vec2<bool>(arg_0.a.a.a.x, any(arg_0.a.a.a))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_2.x, countOneBits(0i), ~(~arg_2.x)), _wgslsmith_mod_i32(0i, 18467i)));
    let var_1 = firstLeadingBit(arg_2);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.a.b, -1371f, -616f, var_0.a.a.b), vec4<f32>(-1162f, var_0.a.a.b, 164f, -494f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.b, -369f, arg_0.a.b, var_0.a.a.b) - vec4<f32>(-1000f, -774f, -1354f, 326f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, var_0.a.a.b, arg_0.a.b, 873f) * vec4<f32>(-853f, 649f, arg_0.a.b, 1000f)))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * arg_0.a.b)), _wgslsmith_f_op_f32(func_2(arg_2.x, Struct_1(vec2<bool>(false, false)), vec2<f32>(var_0.a.a.b, var_0.a.a.b)).b + _wgslsmith_f_op_f32(-551f + -862f)), global1.x)));
    return _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1607f)) * _wgslsmith_div_f32(-889f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1858f))))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_4) -> vec2<i32> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1764f) * _wgslsmith_f_op_f32(func_3(Struct_4(func_2(arg_1.x, Struct_1(vec2<bool>(arg_2.a.a.a.x, false)), vec2<f32>(-805f, global1.x))), abs(_wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.c.xz)), arg_1.zx))), -1069f);
    global2 = array<vec4<u32>, 15>();
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -665f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - arg_0), _wgslsmith_f_op_f32(-210f + arg_0)))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-286f * _wgslsmith_div_f32(-776f, -1420f)))));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), 441f), vec2<f32>(756f, -1227f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(128f, 1000f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, arg_0), vec2<f32>(global1.x, -186f))))))));
    return vec2<i32>(arg_1.x, ~reverseBits(arg_1.x)) | -select(max(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.x, -1i), arg_1.zx), -arg_1.xy), vec2<i32>(arg_1.x, 2792i) & vec2<i32>(arg_1.x, arg_1.x), arg_2.a.a.a);
}

fn func_4(arg_0: i32, arg_1: bool) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_2(arg_0, Struct_1(vec2<bool>(arg_1, false)), vec2<f32>(-1000f, -1000f)).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    global3 = array<Struct_1, 3>();
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_mod_vec2_u32(select(u_input.a.wx, vec2<u32>(_wgslsmith_sub_u32(47271u, 1u >> (u_input.c.x % 32u)), u_input.a.x), arg_1), u_input.c.zz);
    global2 = array<vec4<u32>, 15>();
    return vec2<f32>(global1.x, _wgslsmith_f_op_f32(-860f + global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 15>();
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(-143f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-342f, global1.x)), _wgslsmith_f_op_f32(select(1000f, global1.x, false))))))), _wgslsmith_f_op_vec2_f32(func_4(-_wgslsmith_dot_vec2_i32(func_1(-1156f, vec3<i32>(2147483647i, 38102i, 2545i), Struct_4(Struct_2(global3[_wgslsmith_index_u32(0u, 3u)], -648f))), vec2<i32>(2731i, -2147483647i)), any(vec2<bool>(func_2(0i, global3[_wgslsmith_index_u32(1u, 3u)], vec2<f32>(global1.x, -858f)).a.a.x, true)))));
    let var_0 = Struct_5(Struct_4(func_2(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(1i, -1i)), 1i, _wgslsmith_sub_i32(2147483647i, 6741i)), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 80422i, 2147483647i, 42607i), vec4<i32>(18108i, -1i, -1i, 72359i)), Struct_1(vec2<bool>(false, true)), vec2<f32>(-450f, -219f)).a, vec2<f32>(_wgslsmith_f_op_f32(sign(2511f)), global1.x))), vec2<bool>(true, true), ~max(_wgslsmith_clamp_i32(2147483647i, ~(-22486i), 2147483647i), firstLeadingBit(1i)));
    var var_1 = vec3<bool>(any(select(select(select(vec4<bool>(false, false, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.a.a.a.a.x, var_0.b.x, var_0.a.a.a.a.x), vec4<bool>(false, false, true, true)), vec4<bool>(false, var_0.b.x, true, var_0.a.a.a.a.x), select(vec4<bool>(var_0.b.x, var_0.a.a.a.a.x, false, var_0.b.x), vec4<bool>(true, var_0.a.a.a.a.x, true, false), vec4<bool>(false, true, var_0.a.a.a.a.x, var_0.b.x))), select(select(vec4<bool>(false, var_0.b.x, false, false), vec4<bool>(var_0.a.a.a.a.x, var_0.b.x, true, false), true), !vec4<bool>(true, true, var_0.b.x, false), true), var_0.b.x)), true, !(!(false && var_0.a.a.a.a.x)) && false);
    var var_2 = Struct_4(func_2(var_0.c, global3[_wgslsmith_index_u32(u_input.a.x << (0u % 32u), 3u)], vec2<f32>(821f, _wgslsmith_f_op_f32(max(1335f, var_0.a.a.b)))));
    let var_3 = var_0;
    global0 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, var_3.c, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(7287i, 0i)), reverseBits(vec2<i32>(var_0.c, var_0.c))), -(~1i)), _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(20939i, 2147483647i), vec2<i32>(var_3.c, 39715i)) | firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(2147483647i, var_3.c))), -select(vec2<i32>(var_0.c, var_0.c), vec2<i32>(var_3.c, var_3.c), var_3.a.a.a.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(490f, var_2.a.b, -2039f, var_3.a.a.b) + vec4<f32>(var_0.a.a.b, 817f, -935f, 920f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-825f, 1137f, -696f, var_2.a.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a.b, global1.x, var_3.a.a.b, 1180f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.a.b, var_0.a.a.b, -158f)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 256f), var_3.a.a.b, var_3.a.a.b, var_2.a.b), ~(-(vec3<i32>(1080i, 2147483647i, 0i) & _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c, -2147483647i, 9343i), vec3<i32>(27886i, 29472i, var_3.c)))));
}

