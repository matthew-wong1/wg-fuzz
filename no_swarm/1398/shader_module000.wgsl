struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
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

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 29>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> u32 {
    let var_0 = arg_2.b;
    let var_1 = ~min(arg_1.x, 46462u ^ (~61943u | arg_1.x));
    global1 = array<vec3<f32>, 29>();
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))))));
    global1 = array<vec3<f32>, 29>();
    return ~arg_1.x;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    global0 = _wgslsmith_f_op_f32(step(-1141f, _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(select(623f, 185f, any(!vec4<bool>(arg_0.b.e, true, true, arg_0.b.e))))))));
    var var_0 = ~arg_0.b.d.yx;
    global1 = array<vec3<f32>, 29>();
    let var_1 = Struct_2(~u_input.a.x);
    let var_2 = _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(-12200i, -2453i, 1i)), countOneBits(vec3<i32>(0i, arg_0.d, u_input.d)) >> (vec3<u32>(u_input.b.x, 34204u, func_3(_wgslsmith_f_op_f32(-arg_1), ~u_input.b.ywz, arg_0, global1[_wgslsmith_index_u32(arg_0.b.d.x, 29u)])) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_1.a, var_1.a, var_1.a), countOneBits(vec3<i32>(arg_0.d, var_1.a, 1i)), vec3<i32>(2147483647i, arg_0.d, -21435i)), ~_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d, 2147483647i, -2147483647i)), select(vec3<i32>(2147483647i, -24015i, var_1.a), vec3<i32>(28358i, u_input.e, arg_0.d), vec3<bool>(true, true, false)))));
    return _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(~(-1i)), var_2.x), arg_0.d), _wgslsmith_dot_vec4_i32(vec4<i32>(select(-38560i, -1i, true), abs(var_1.a ^ -2147483647i), ~u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, 23972i, 19419i) >> (arg_0.b.d % vec4<u32>(32u)), vec4<i32>(-28105i, var_2.x, arg_0.d, -4924i))), ~(~(vec4<i32>(var_1.a, 58492i, arg_0.d, 2147483647i) | vec4<i32>(arg_0.d, u_input.a.x, var_1.a, var_2.x)))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = Struct_1(3045f, !arg_1, firstLeadingBit(u_input.c), countOneBits(countOneBits(select(~vec4<u32>(0u, 1u, 1u, u_input.c), abs(vec4<u32>(u_input.b.x, 1u, 0u, 1u)), false))), !arg_1);
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-262f - 114f), -1000f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(559f, var_0.a)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 1330f))))))));
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(98774u, ~(~(var_0.c ^ 72658u))), 4294967295u, ~u_input.c, 1u);
    var var_4 = vec4<bool>(false, var_0.e, select(var_0.b, true, true), !arg_1);
    return firstLeadingBit(2147483647i);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<i32>) -> vec3<i32> {
    global0 = 1f;
    global0 = 1735f;
    let var_0 = (-35882i & func_4(abs(select(arg_2.x, 1i, arg_1.x)), arg_1.x, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, func_2(Struct_3(vec2<f32>(-2283f, 655f), Struct_1(176f, true, arg_0, u_input.b, false), arg_1.xw, 7227i), -1972f, vec4<f32>(806f, 209f, 1108f, -1233f))))) < (-arg_2.x & (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, u_input.a.x) ^ u_input.a) & (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, 18774i, 20687i), arg_2) << (13911u % 32u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-971f - _wgslsmith_f_op_f32(floor(1569f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(408f, _wgslsmith_f_op_f32(floor(491f)), all(vec3<bool>(var_0, false, false)))))))));
    let var_1 = ~abs(select(~u_input.b.yzx, ~u_input.b.xxy, any(!vec3<bool>(var_0, true, false))));
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(-3323i, _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(arg_2.x, arg_2.x)) | _wgslsmith_mod_i32(func_2(Struct_3(vec2<f32>(1220f, 554f), Struct_1(226f, var_0, arg_0, vec4<u32>(u_input.b.x, u_input.c, arg_0, var_1.x), var_0), arg_1.xx, arg_2.x), 631f, vec4<f32>(1513f, -684f, 353f, -1000f)), _wgslsmith_div_i32(-3061i, u_input.d)), func_4(arg_2.x, false, -(~(-2147483647i)))), _wgslsmith_mult_vec3_i32(firstTrailingBit(arg_2.zxy), abs(~arg_2.xwx)), -select(arg_2.yzx, vec3<i32>(_wgslsmith_mod_i32(u_input.e, -1i), ~arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-7729i, 4873i, arg_2.x), vec3<i32>(0i, -1i, 2147483647i))), !select(arg_1.wxy, vec3<bool>(var_0, arg_1.x, false), arg_1.yzy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(21736i, reverseBits(u_input.d), _wgslsmith_mult_i32(~u_input.e, ~u_input.e)), ~abs(~vec3<i32>(2752i, 25919i, u_input.a.x) >> (u_input.b.yyx % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1023f);
    var_0 = vec3<i32>(~1i, ~(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, -21496i, var_0.x), vec3<i32>(u_input.a.x, var_0.x, u_input.a.x)), func_1(0u, vec4<bool>(false, true, false, true), vec4<i32>(130i, -1i, -58577i, var_0.x)))), u_input.d);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(541f, -1763f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-389f, -140f, 1941f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1247f, -743f, 1622f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(4294967295u, 29u)] - vec3<f32>(-334f, 156f, 1045f)), vec3<f32>(1972f, -364f, 1997f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 29u)])))), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

