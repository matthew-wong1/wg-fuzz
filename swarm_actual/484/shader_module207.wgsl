struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = reverseBits(_wgslsmith_div_i32(u_input.c, u_input.a));
    var_0 = 42567i;
    var var_1 = 50365u;
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, 2147483647i, 3020i, u_input.a) ^ vec4<i32>(38072i, u_input.b, -2147483647i, 0i), vec4<i32>(u_input.c, _wgslsmith_mod_i32(u_input.a, 1i), -1i, 1i)), max(-vec4<i32>(4701i, 28567i, u_input.c, u_input.a) >> (~vec4<u32>(16869u, 19760u, 0u, 0u) % vec4<u32>(32u)), (vec4<i32>(u_input.a, 1i, u_input.b, -2147483647i) | vec4<i32>(u_input.b, 25347i, -44036i, -2147483647i)) | (vec4<i32>(u_input.a, u_input.c, u_input.a, -2147483647i) & vec4<i32>(-56506i, u_input.b, -2147483647i, 592i))), min(max(vec4<i32>(u_input.c, u_input.b, u_input.c, -88034i), vec4<i32>(u_input.c, u_input.c, 1i, 0i)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-18385i, 26353i, 2147483647i, u_input.c), vec4<i32>(-1i, u_input.c, u_input.b, u_input.b), vec4<i32>(-2147483647i, -2147483647i, u_input.c, -40300i)), vec4<i32>(u_input.a, u_input.a, -2147483647i, 36263i) | vec4<i32>(1481i, 16962i, u_input.b, u_input.c), vec4<bool>(true, false, false, true)))), vec4<i32>(max(u_input.b, 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.c), vec3<i32>(u_input.a, 27527i, 0i)), ~vec3<i32>(u_input.b, u_input.c, 16346i)), vec3<i32>(max(u_input.a, u_input.b), 1i, u_input.a >> (52062u % 32u))), 2147483647i, 0i));
    let var_3 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u), abs(vec4<u32>(20862u, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<u32>(13162u, 25521u, 1u, u_input.d.x)), firstLeadingBit(vec4<u32>(29393u, 6129u, 13139u, 0u)) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38459u, 16302u, 27447u), vec4<u32>(0u, 47954u, 11462u, 4294967295u)), ~72368u, 28487u, select(u_input.d.x, u_input.d.x, true)));
    return -2147483647i;
}

fn func_2(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = false;
    var_0 = false;
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), Struct_1(u_input.c ^ func_3(vec3<f32>(arg_0.x, arg_0.x, -1048f)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(247f))) == _wgslsmith_f_op_f32(-arg_0.x)), 1083f, ~45829u, vec2<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true), true);
    var_1 = Struct_4(var_1.a, _wgslsmith_div_f32(var_1.a.a, _wgslsmith_f_op_f32(ceil(1252f))), _wgslsmith_mult_u32(62465u, var_1.c), select(vec2<bool>(var_1.d.x, !(var_1.a.b.a != var_1.a.b.a)), !(!select(var_1.d, var_1.d, var_1.e)), var_1.e), var_1.d.x);
    let var_2 = vec4<f32>(-1016f, _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-112f, var_1.b))) * 1157f)), _wgslsmith_f_op_f32(450f - _wgslsmith_f_op_f32(-1088f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(max(var_1.b, var_1.a.a))))), _wgslsmith_f_op_f32(max(893f, _wgslsmith_f_op_f32(round(-1767f)))));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(arg_0.wxx, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - var_1.b), var_1.b, var_1.b) * var_2.zzx))));
}

fn func_1() -> vec4<i32> {
    var var_0 = max(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 30457i), vec2<i32>(0i, u_input.c)), abs(abs(vec2<i32>(-1i, 0i))), vec2<i32>(-1i) * -vec2<i32>(-43573i, 2147483647i)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(-14375i), ~u_input.c), -(~vec2<i32>(0i, u_input.a))), ~(-(vec2<i32>(u_input.a, u_input.b) << (u_input.d.zz % vec2<u32>(32u))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-513f, -1287f, -298f, 479f), vec4<f32>(1321f, -846f, -604f, -295f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -808f, -274f, 1496f) - vec4<f32>(283f, 117f, 433f, 439f))))) + vec4<f32>(-1061f, -1720f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(202f + -822f))))));
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) <= var_1.x, any(vec2<bool>(true, true)), u_input.b == var_0.x, any(select(vec2<bool>(true, all(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true), false)));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(sign(var_1.x))));
    let var_3 = -select(-vec4<i32>(_wgslsmith_mult_i32(var_0.x, 1i), 1i, firstTrailingBit(u_input.a), ~1i), ~(~vec4<i32>(1i, var_0.x, u_input.c, u_input.c)) | abs(-vec4<i32>(-39562i, 2147483647i, 2147483647i, 0i)), !any(select(vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.ywz, true)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(2203f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1056f * _wgslsmith_f_op_f32(select(1000f, -1400f, false))))), _wgslsmith_f_op_f32(sign(-377f))), _wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_3(var_1.x, Struct_1(18910i, vec2<bool>(_wgslsmith_f_op_f32(-var_1.x) <= -387f, select(var_0.b.x, true, true))), true);
    var_2 = Struct_3(-543f, Struct_1(-(var_2.b.a << (u_input.d.x % 32u)), var_0.b), true);
    let var_3 = -_wgslsmith_add_i32(var_2.b.a, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(min(~select(func_1(), vec4<i32>(var_0.a, var_0.a, 0i, 0i) << (vec4<u32>(94646u, u_input.d.x, u_input.d.x, 1u) % vec4<u32>(32u)), true), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -4847i, var_3, 0i) | vec4<i32>(var_0.a, var_3, 2147483647i, u_input.a), vec4<i32>(-18277i, -16728i, -1i, -1i) << (vec4<u32>(0u, 17321u, u_input.d.x, 4294967295u) % vec4<u32>(32u))))));
}

