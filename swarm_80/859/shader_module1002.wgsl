struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_3, 19>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_4 {
    global1 = array<Struct_3, 19>();
    return Struct_4(true, ~u_input.a.x, _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(-arg_2.a)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-513f * 1000f), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(max(279f, -145f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-129f, -828f, true)), _wgslsmith_f_op_f32(arg_0.x - -486f), all(vec4<bool>(false, false, false, false))))))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(637f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1677f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-864f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -160f))))))))));
    return func_1(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(false, true))), -global0.x, Struct_1(_wgslsmith_f_op_f32(step(arg_0.x, -968f))));
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_3(abs(-((vec4<i32>(6481i, 0i, 8216i, global0.x) | vec4<i32>(-2147483647i, -14644i, -1i, 34324i)) | (vec4<i32>(global0.x, global0.x, global0.x, global0.x) & vec4<i32>(global0.x, global0.x, 1i, -1i)))));
    var var_1 = Struct_2(-2147483647i);
    global0 = var_0.a.xz;
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, global0.x, var_0.a.x, var_0.a.x) & var_0.a, var_0.a), ~abs(countOneBits(vec4<i32>(var_0.a.x, -1i, -33842i, 0i)))));
    var_2 = Struct_2(countOneBits(28184i) ^ firstLeadingBit(~_wgslsmith_dot_vec2_i32(var_0.a.wy, var_0.a.xx)));
    return arg_0.c;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_4 {
    var var_0 = Struct_5(arg_1.zxy, _wgslsmith_f_op_f32(func_4(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.c, 640f), vec2<f32>(570f, -856f)))), 64653u))), _wgslsmith_f_op_f32(-arg_2.c), Struct_1(_wgslsmith_f_op_f32(select(arg_2.c, 947f, arg_2.a | all(vec2<bool>(true, false))))));
    var var_1 = _wgslsmith_add_vec3_i32(var_0.a, max(arg_1.yxz, vec3<i32>(arg_1.x & (global0.x & arg_1.x), arg_1.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-28112i, 25583i, 1i), vec3<i32>(32382i, global0.x, global0.x)), firstLeadingBit(global0.x), ~global0.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.d.a + 879f), _wgslsmith_f_op_f32(-var_0.b), 539f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -1373f, arg_2.c) - vec3<f32>(869f, var_0.d.a, -231f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-414f, 822f, var_0.c) + vec3<f32>(arg_2.c, var_0.b, 117f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(807f, -1311f, 2398f), vec3<f32>(1982f, -1208f, arg_2.c), true)))))));
    global1 = array<Struct_3, 19>();
    var var_3 = ~(~reverseBits(arg_0));
    return func_1(!(!(!select(vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.a, true), arg_2.a))), ~abs(0i), Struct_1(var_2.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<i32>) -> u32 {
    global1 = array<Struct_3, 19>();
    var var_0 = Struct_1(arg_1.c);
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(4294967295u, func_5(~_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -2147483647i, global0.x), vec3<i32>(global0.x, global0.x, global0.x)), func_2(firstTrailingBit(vec4<u32>(11656u, 19056u, 20499u, u_input.b)), ~vec4<i32>(global0.x, 1i, global0.x, -56920i), func_1(vec2<bool>(false, true), 16610i, Struct_1(1927f))), ~vec2<i32>(global0.x, 3691i) << (~vec2<u32>(32731u, u_input.b) % vec2<u32>(32u))));
    var_0 = vec2<u32>(55259u, 82369u);
    let var_1 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.x, 1i, 1i, global0.x) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 1i, global0.x, global0.x), vec4<i32>(global0.x, -86571i, -3994i, 2625i), vec4<i32>(global0.x, global0.x, -14227i, global0.x)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 2147483647i, 2147483647i, -1i), vec4<i32>(2147483647i, global0.x, global0.x, 0i)), vec4<i32>(global0.x, -27898i, -1i, global0.x)), ~select(vec4<i32>(2147483647i, -34524i, global0.x, global0.x), vec4<i32>(-1i, 5524i, -1i, global0.x), vec4<bool>(true, false, false, true))), vec4<i32>(global0.x, -global0.x, countOneBits(-global0.x), min(global0.x << (0u % 32u), 1519i)), select(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(28081i, global0.x, 2147483647i, global0.x), vec4<i32>(-1i, 30732i, 0i, global0.x)), -vec4<i32>(2147483647i, global0.x, global0.x, global0.x)), ~vec4<i32>(global0.x, 1i, 65974i, global0.x) ^ abs(vec4<i32>(0i, global0.x, global0.x, global0.x)), vec4<bool>(true, true, true, true)));
    var var_2 = select(vec4<bool>(true, all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false)), any(vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(abs(-657f)) == _wgslsmith_f_op_f32(round(803f)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(func_2(vec4<u32>(20517u, 4294967295u, u_input.a.x, 8205u), vec4<i32>(var_1.x, var_1.x, -9208i, -2147483647i), Struct_4(false, u_input.b, 168f)).a, true, true, true)), vec4<bool>(true, !func_2(vec4<u32>(u_input.b, var_0.x, 1u, u_input.b), vec4<i32>(var_1.x, var_1.x, -21457i, global0.x), Struct_4(false, u_input.b, 1493f)).a, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(394f, 147f) + vec2<f32>(-306f, 343f)), u_input.b).a, true), ((4294967295u & var_0.x) & func_2(vec4<u32>(u_input.a.x, 40516u, 4294967295u, var_0.x), var_1, Struct_4(true, u_input.b, 963f)).b) != 14448u), true);
    let var_3 = select(!select(!vec4<bool>(true, var_2.x, var_2.x, false), !(!vec4<bool>(var_2.x, true, var_2.x, false)), var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, !(var_2.x || true)), select(select(!vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(true, true, true, false), !var_2.x), select(!vec4<bool>(true, true, var_2.x, var_2.x), select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, false, var_2.x)), any(vec4<bool>(var_2.x, var_2.x, true, true))), var_2.x), true), true);
    var var_4 = _wgslsmith_f_op_f32(-func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1564f, -1109f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(207f, -911f))))), ~(~u_input.a.x ^ _wgslsmith_add_u32(u_input.b, var_0.x))).c);
    var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(2003f, -2164f, var_3.x)))))), 1214f));
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(204f, 1422f, 1631f) * vec3<f32>(-1194f, 2001f, -469f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 1448f) * vec3<f32>(-628f, 459f, 1825f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(922f, 936f, -169f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1543f, 800f, 335f)))))), var_3.zxx)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1515f, -1111f, -615f) * vec3<f32>(-256f, 1571f, -143f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1272f, -296f, -684f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-161f, -979f, 239f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-245f, 1765f, 1494f))))))));
    var var_6 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(var_0.x, u_input.a.x, var_0.x) << (vec3<u32>(var_0.x, 4294967295u, 0u) % vec3<u32>(32u)))));
}

