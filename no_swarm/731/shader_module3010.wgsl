struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
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

var<private> global0: array<u32, 24>;

var<private> global1: f32 = -2049f;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_4 {
    let var_0 = vec2<i32>(max(~16949i, u_input.b.x), 0i);
    global1 = -951f;
    let var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(false, true), true));
    global0 = array<u32, 24>();
    var var_2 = Struct_5(arg_1.a);
    return Struct_4(-abs(arg_0 & -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-601f)) + _wgslsmith_f_op_f32(select(-831f, _wgslsmith_f_op_f32(select(1041f, -968f, false)), false | var_1.x)))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = select(vec2<bool>(true, true), select(select(vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(true, false))), true), select(vec2<bool>(893f > arg_0.x, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true), -954f >= arg_0.x), !vec2<bool>(global0[_wgslsmith_index_u32(89077u, 24u)] < 0u, all(vec4<bool>(true, true, true, true)))), all(vec2<bool>(all(vec3<bool>(true, false, true)) | (-773f > arg_0.x), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))))));
    var var_1 = ~(~(~(~vec4<u32>(47175u, 38511u, global0[_wgslsmith_index_u32(40743u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9947u, 24u)], 24u)]) | ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28383u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24350u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 46104u))));
    global0 = array<u32, 24>();
    var var_2 = Struct_2(arg_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1222f, arg_0.x, arg_0.x) * vec3<f32>(1205f, arg_0.x, 2573f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -834f, -510f), vec3<f32>(arg_0.x, arg_0.x, 398f)))))), _wgslsmith_mult_vec3_u32(var_1.wwx | ~vec3<u32>(31550u, global0[_wgslsmith_index_u32(var_1.x, 24u)], 4294967295u), ~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 24u)], 27548u, 0u))), _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(-2147483647i, u_input.b.x, 1i, 2147483647i)), select(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(1i, 2147483647i, -1i, u_input.a)), u_input.c | vec4<i32>(u_input.a, -1i, 1i, -1i), true))), !all(vec4<bool>(var_0.x & var_0.x, true, any(vec3<bool>(var_0.x, var_0.x, false)), true)), vec3<i32>(0i, 1i, -reverseBits(7840i)));
    var var_3 = abs(firstTrailingBit(var_2.b.b.zx));
    return global0[_wgslsmith_index_u32(var_1.x, 24u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_5 {
    var var_0 = Struct_4(-2147483647i, _wgslsmith_f_op_f32(-636f + -1236f));
    var_0 = Struct_4(~arg_0.x, var_0.b);
    var_0 = func_2(0i, Struct_5(vec3<u32>(_wgslsmith_mult_u32(1u, 4294967295u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], reverseBits(1u))));
    global0 = array<u32, 24>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1504f, -2060f, var_0.b)), vec3<u32>(1u, abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(43796u, 1u, 1u, 27632u), vec4<u32>(global0[_wgslsmith_index_u32(55856u, 24u)], global0[_wgslsmith_index_u32(29979u, 24u)], global0[_wgslsmith_index_u32(37835u, 24u)], 80084u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51302u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 82042u, global0[_wgslsmith_index_u32(4294967295u, 24u)])), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29027u, 24u)], 24u)], 20291u, 57313u, global0[_wgslsmith_index_u32(4294967295u, 24u)])))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)] & 1u, func_3(vec2<f32>(1755f, -705f))), 24u)], func_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-208f, var_0.b)))))), 1i);
    return Struct_5(~var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a), 27957i | u_input.c.x), -countOneBits(u_input.b.zx)) >= _wgslsmith_mod_i32(abs(i32(-1i) * -27759i), -20249i | u_input.b.x)) | false;
    let var_1 = func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 33844i, u_input.c.x) | firstLeadingBit(u_input.b.yxw), max(vec3<i32>(u_input.a, -1i, u_input.a) ^ vec3<i32>(u_input.a, 1671i, -2147483647i), -vec3<i32>(22695i, u_input.c.x, 47748i)) >> (~(~vec3<u32>(38365u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(5237u, 24u)])) % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(2759f, -1858f)))))), select(select(vec2<bool>(any(vec4<bool>(false, false, false, false)), true), vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(true, false, true)) == false, true), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)))));
    let var_2 = var_1;
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(1277f + 1804f))) + _wgslsmith_f_op_f32(round(1115f))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(592f + 2229f), 1100f, _wgslsmith_f_op_f32(-221f + -215f)), ~(~vec3<u32>(global0[_wgslsmith_index_u32(var_1.a.x, 24u)], 4294967295u, 63035u)), _wgslsmith_mult_i32(0i, u_input.c.x)), (i32(-1i) * -59082i) == _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, u_input.a, 13087i), select(u_input.b.zww, u_input.c.zwz, true)), ~(~u_input.b.zww)), ~reverseBits(func_1(~u_input.c.xxz, _wgslsmith_f_op_f32(f32(-1f) * -382f), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))).a), vec3<bool>(var_2.a.x < (_wgslsmith_add_u32(89525u, var_2.a.x) >> (var_2.a.x % 32u)), false, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(47504u, 24u)], var_1.a.x), var_1.a.x >> (var_1.a.x % 32u)) == ~var_1.a.x), vec4<f32>(-316f, _wgslsmith_f_op_f32(select(-727f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-307f * 350f), _wgslsmith_f_op_f32(f32(-1f) * -576f), false)), !(global0[_wgslsmith_index_u32(0u, 24u)] < var_1.a.x))), func_2(_wgslsmith_mod_i32(1i ^ u_input.c.x, -9787i), Struct_5(firstTrailingBit(vec3<u32>(63494u, var_2.a.x, 18745u)))).b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-672f + _wgslsmith_f_op_f32(floor(1000f))), -217f))));
    let var_4 = Struct_4(~(~(-1i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_f_op_f32(step(325f, var_3.a.b.a.x))))));
    global0 = array<u32, 24>();
    let var_5 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(var_3.a.d, vec3<i32>(var_4.a, -18005i, var_3.a.b.c) | vec3<i32>(0i, u_input.b.x, var_3.a.d.x)), func_2(u_input.c.x, Struct_5(vec3<u32>(64482u, global0[_wgslsmith_index_u32(29313u, 24u)], var_1.a.x))).a), firstLeadingBit(~((vec2<i32>(var_4.a, var_4.a) & u_input.c.yw) ^ countOneBits(vec2<i32>(-88907i, var_3.a.b.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_2.a.x));
}

