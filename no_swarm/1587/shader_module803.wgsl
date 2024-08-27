struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1566f;

var<private> global1: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(36152u, 69750u, 18803u, 4294967295u), vec4<u32>(5159u, 1u, 1u, 0u), vec4<u32>(1u, 19268u, 0u, 199u), vec4<u32>(36988u, 95859u, 0u, 6099u), vec4<u32>(0u, 1234u, 1u, 0u), vec4<u32>(14049u, 50816u, 4294967295u, 13403u), vec4<u32>(1u, 22732u, 57408u, 1u));

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_3, 2>;

var<private> global4: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(42461u, 1u), vec2<u32>(36929u, 4294967295u), vec2<u32>(1u, 10662u), vec2<u32>(4084u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(12028u, 1u), vec2<u32>(37159u, 937u), vec2<u32>(58555u, 21330u), vec2<u32>(34646u, 1u), vec2<u32>(14667u, 1u), vec2<u32>(75111u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(31651u, 1u), vec2<u32>(16044u, 65290u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 34443u), vec2<u32>(1u, 1u), vec2<u32>(110391u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 5733u), vec2<u32>(3505u, 28146u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-561f, -432f, -1000f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(542f, 527f, -140f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1342f, -1000f, 576f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-738f, 2100f, 681f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-488f, 1000f, -1814f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, -1635f, 197f) - vec3<f32>(2073f, -1000f, -1316f))))) - vec3<f32>(_wgslsmith_f_op_f32(373f + _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2531f + 199f), _wgslsmith_f_op_f32(min(1460f, -1243f)))) - _wgslsmith_f_op_f32(floor(-387f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -355f)) * -517f))));
    let var_1 = true;
    var var_2 = 1256f;
    global1 = array<vec4<u32>, 7>();
    var var_3 = max(min(~firstTrailingBit(0u), u_input.a.x), 0u);
    return 767f;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    var var_0 = vec2<i32>(min(min(1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2116i, 29312i, -2147483647i), ~vec3<i32>(-37826i, -28884i, -1i))), 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 1i, 1i), vec3<i32>(33196i, firstTrailingBit(-7861i), ~(-48880i))), -(~(-vec3<i32>(-1i, 1i, 2147483647i)))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.a.b)), arg_1.a.c.x));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<vec4<u32>, 7>();
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-1016f + _wgslsmith_f_op_f32(func_3())), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, -849f, 1000f), vec4<f32>(arg_0, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-arg_0))), vec4<f32>(_wgslsmith_f_op_f32(216f * arg_0), _wgslsmith_f_op_f32(sign(-618f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + -519f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))))), Struct_3(_wgslsmith_mod_u32(u_input.a.x, ~(u_input.a.x >> (21079u % 32u))), true, _wgslsmith_f_op_f32(arg_0 + 1699f))));
    let var_0 = Struct_3(~u_input.a.x, true, _wgslsmith_f_op_f32(min(1040f, arg_0)));
    global2 = _wgslsmith_add_u32(~12027u, ~(~firstLeadingBit(0u)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.c * arg_0), _wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(-421f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(1590f + var_0.c), -541f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1424f, 675f, var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-818f)) + _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c))));
    return var_1.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global3 = array<Struct_3, 2>();
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1981f - -108f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f + -467f) - 1f))));
    global3 = array<Struct_3, 2>();
    let var_0 = Struct_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f + 221f)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1355f, -516f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-820f)), -399f)), -437f, any(vec3<bool>(false, true, false)) && all(vec4<bool>(false, false, false, false))))));
    let var_1 = Struct_3(56916u, (any(vec4<bool>(true, true, true, true)) | !(var_0.b > var_0.b)) | all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1468f, var_0.a.c.x))))));
    return func_2(_wgslsmith_f_op_f32(trunc(1645f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 2>();
    global0 = 663f;
    let var_0 = func_1(~1i);
    let var_1 = countOneBits(~_wgslsmith_add_vec3_u32(abs(select(vec3<u32>(27390u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, true, true))), abs(vec3<u32>(10302u, 5375u, u_input.a.x))));
    var var_2 = func_2(-238f);
    var var_3 = _wgslsmith_mod_vec3_i32(~(~vec3<i32>(1i, 1i, 1i)), -(select(countOneBits(vec3<i32>(-1i, -1i, 0i)), ~vec3<i32>(-5329i, 19760i, -1i), true) << (select(_wgslsmith_mod_vec3_u32(var_1, u_input.a.zyy), countOneBits(vec3<u32>(0u, u_input.a.x, var_1.x)), vec3<bool>(false, true, false)) % vec3<u32>(32u))));
    var var_4 = var_0.b;
    var_2 = Struct_1(var_0.c, var_0.c.x, vec4<f32>(1075f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f - 1082f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.c.x)) * _wgslsmith_f_op_f32(ceil(var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f - _wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_f32(select(1784f, 1586f, true))));
    var var_5 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1524f))), _wgslsmith_div_f32(-938f, var_2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(max(vec2<u32>(1u, 73188u), u_input.a.ww)), _wgslsmith_clamp_vec2_u32(var_1.xy & global4[_wgslsmith_index_u32(var_1.x, 23u)], u_input.a.zx, vec2<u32>(68386u, 0u)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))) & vec2<u32>(4294967295u, u_input.a.x), max(vec4<u32>(~3356u, reverseBits(u_input.a.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29209u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(var_1.x, var_1.x, u_input.a.x, u_input.a.x)), var_1.x & u_input.a.x), _wgslsmith_clamp_u32(16051u, firstTrailingBit(0u), 4294967295u)), ~(abs(u_input.a) & ~vec4<u32>(u_input.a.x, 1u, 31353u, 36945u))), _wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2.a.x, -1846f), var_5.b, _wgslsmith_f_op_f32(step(var_2.c.x, -1393f)), func_1(var_3.x).a.x))));
}

