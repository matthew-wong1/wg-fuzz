struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: array<Struct_2, 10>;

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1034f, -597f, -1169f, -932f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(648f, 191f, -827f, -2511f) - vec4<f32>(-304f, 1000f, 775f, 565f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, -3110f, 829f, -484f) - vec4<f32>(-1349f, 672f, -560f, -332f))))), select(vec4<bool>(_wgslsmith_div_i32(global2.x, -1i) < 10869i, arg_0, any(vec3<bool>(arg_0, false, arg_0)) || true, true), vec4<bool>(any(vec4<bool>(true, false, arg_0, arg_0)), !(!arg_0), any(vec3<bool>(false, true, arg_0)), any(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, true, true, true), true))), !vec4<bool>(false, true, any(vec2<bool>(true, arg_0)), !arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1943f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1597f))))), _wgslsmith_f_op_f32(1885f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-127f, _wgslsmith_f_op_f32(-265f * 2342f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-369f, -2269f)) + _wgslsmith_f_op_f32(1051f + 286f))))));
    let var_1 = vec3<bool>(var_0.b.x, !any(!var_0.b.yy), !var_0.b.x);
    let var_2 = select(vec3<bool>(-_wgslsmith_mult_i32(26370i, global2.x) != -42561i, all(vec3<bool>(u_input.d.x == 4294967295u, true, all(vec4<bool>(true, false, var_1.x, false)))), false), select(var_0.b.wxy, var_0.b.wxw, vec3<bool>(all(vec2<bool>(true, false)), false, var_1.x)), !(!var_0.b.zxw));
    let var_3 = vec4<u32>(firstLeadingBit(u_input.d.x), u_input.d.x, ~4294967295u, u_input.d.x);
    let var_4 = Struct_4(~select(vec2<u32>(0u, 65272u) & _wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, var_3.x)), ~(~u_input.d), select(!var_1.yz, !vec2<bool>(true, var_0.b.x), var_1.x)));
    return vec3<bool>(any(!var_2), var_2.x, var_0.b.x);
}

fn func_2() -> bool {
    var var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !func_3(true)), !(!func_3(true)), vec3<bool>(true, true, true));
    var var_1 = -max(countOneBits(u_input.b.zz), ~vec2<i32>(-10759i, _wgslsmith_mod_i32(-97838i, u_input.a)));
    let var_2 = min(abs(u_input.d.x), firstTrailingBit(abs(73951u)));
    global1 = array<Struct_2, 10>();
    var var_3 = u_input.b ^ -global0[_wgslsmith_index_u32(0u, 19u)];
    return true;
}

fn func_1() -> vec4<bool> {
    let var_0 = reverseBits(u_input.d);
    let var_1 = 22105u;
    global1 = array<Struct_2, 10>();
    var var_2 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(108901u <= var_0.x, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))), !vec3<bool>(select(true, false, false) && true, func_2(), false), select(func_3(true), func_3(true && any(vec2<bool>(true, false))), vec3<bool>(-1i <= ~global2.x, min(global2.x, global2.x) >= ~2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -236f) <= _wgslsmith_f_op_f32(floor(390f)))));
    global2 = ~u_input.b;
    return !select(vec4<bool>(func_2(), true, true, !var_2.x), vec4<bool>(!var_2.x && true, !(!var_2.x), func_3(0i >= u_input.a).x, false), select(select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(var_2.x, false, var_2.x, true), var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true)), vec4<bool>(var_2.x, false, var_2.x, true), select(true, !var_2.x, all(vec2<bool>(var_2.x, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(-210f)))))));
    global2 = select(reverseBits(vec4<i32>(-9221i, _wgslsmith_sub_i32(global2.x, global2.x), _wgslsmith_mod_i32(-67973i, u_input.b.x), -2147483647i)) | (vec4<i32>(-global2.x, global2.x, min(u_input.a, 10667i), firstLeadingBit(-1i)) & (max(u_input.b, vec4<i32>(-2147483647i, 0i, u_input.c.x, 12757i)) & abs(vec4<i32>(-70723i, -2147483647i, global2.x, u_input.b.x)))), u_input.b, !(!func_1()));
    var var_1 = Struct_3(countOneBits(u_input.c.x), abs(-25293i), true);
    let var_2 = Struct_5(vec4<f32>(-741f, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x))), -514f), vec4<bool>(all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(var_1.c, var_1.c, true, true)), vec4<bool>(var_1.c, true, false, var_1.c), vec4<bool>(var_1.c, true, false, false))), true, !func_1().x, ~76864u <= ~u_input.d.x), 2566f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = Struct_4(~max(_wgslsmith_add_vec2_u32(countOneBits(u_input.d), vec2<u32>(0u, 1u)), vec2<u32>(~u_input.d.x, u_input.d.x)));
    var_1 = Struct_3(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(max(u_input.b.x, var_1.a), abs(5729i), 8688i), vec3<i32>(2147483647i, var_1.a, reverseBits(u_input.c.x)))), ~(-2147483647i), true);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(~104435u | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_3.a.x, u_input.d.x), vec4<u32>(46176u, u_input.d.x, 1u, u_input.d.x)), firstTrailingBit(var_3.a.x))), ~select(vec2<i32>(~(-2147483647i), var_1.b << (4294967295u % 32u)), u_input.b.yy, true), vec2<i32>(global2.x, u_input.a), u_input.b.x, u_input.b);
}

