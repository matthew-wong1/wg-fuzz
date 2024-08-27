struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(26327u, 0u, 4294967295u, 21049u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    global0 = _wgslsmith_mult_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global0.x, 1u, global0.x), ~vec4<u32>(global0.x, 105172u, 1u, global0.x), abs(vec4<u32>(98426u, global0.x, 4294967295u, 18975u)))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(2591u, 14251u, 17503u, global0.x), ~vec4<u32>(global0.x, 13229u, 0u, 1u)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(17343u, 4294967295u, global0.x, global0.x), vec4<u32>(137840u, global0.x, global0.x, global0.x)))), vec4<u32>(1u, global0.x, firstLeadingBit(global0.x), 15716u) & _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, 0u), vec4<u32>(26135u, 32670u, 24829u, 26034u)), vec4<u32>(1u, global0.x, 1u, 1u) >> (vec4<u32>(global0.x, global0.x, global0.x, 3870u) % vec4<u32>(32u)))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 556f))) + vec2<f32>(1415f, -1443f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2097f, -862f) * vec2<f32>(114f, -1014f)), all(vec3<bool>(false, true, true)))))), (~(~global0.xy) << (~(vec2<u32>(4294967295u, global0.x) << (global0.xw % vec2<u32>(32u))) % vec2<u32>(32u))) ^ ~global0.wz, abs(~((vec2<u32>(global0.x, 12060u) & global0.xw) ^ abs(vec2<u32>(global0.x, 4294967295u)))), u_input.a);
    let var_1 = _wgslsmith_mult_vec2_i32(arg_0, vec2<i32>(u_input.a, max(_wgslsmith_add_i32(arg_0.x, 1i), u_input.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, var_0.a.x), -1280f));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_0.a.x)), -227f), ~global0.wy, ~firstTrailingBit(select(var_0.b, _wgslsmith_sub_vec2_u32(global0.wz, global0.xw), var_2.x >= var_0.a.x)), var_0.d);
    return ~(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.b.x, var_0.c.x, 10823u, global0.x), vec4<u32>(var_0.b.x, 7653u, var_0.c.x, 65363u), vec4<u32>(var_3.b.x, var_3.b.x, global0.x, 4294967295u))) | ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 15275u, var_3.b.x), vec4<u32>(var_3.b.x, var_3.b.x, 1u, global0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.c.x, 1u, 1u, var_0.b.x), vec4<u32>(37137u, 72459u, 4294967295u, var_3.c.x))));
}

fn func_2() -> Struct_3 {
    global0 = func_3(min(vec2<i32>(-1i, -33981i), vec2<i32>(61435i, u_input.a)));
    var var_0 = _wgslsmith_div_i32((~1i | -_wgslsmith_div_i32(u_input.a, u_input.a)) >> (~global0.x % 32u), abs(u_input.a));
    var_0 = ~(~(-56008i & _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 15250i, u_input.a), vec4<i32>(u_input.a, 1i, -1i, u_input.a) ^ vec4<i32>(0i, u_input.a, u_input.a, -15219i))));
    let var_1 = ~(~(~vec3<u32>(0u << (global0.x % 32u), 1u, 4294967295u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -919f)))))), ~var_1.xy, ~var_1.yz, select(-43924i, -28261i, _wgslsmith_dot_vec2_i32(vec2<i32>(59405i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(16325i, u_input.a), vec2<i32>(u_input.a, u_input.a))) != -2147483647i));
    return Struct_3(Struct_2(var_2, ~2147483647i, var_2.a.x, true));
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = 1225f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1355f * -843f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.a.a.x)))));
    var_0 = func_2();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) * -783f) - -1506f));
    return select(!(!vec4<bool>(any(vec3<bool>(arg_0.x, var_0.a.d, true)), true, !arg_0.x, false)), vec4<bool>(_wgslsmith_f_op_f32(-func_2().a.c) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(280f, var_0.a.a.a.x, arg_0.x)) + var_0.a.c), all(arg_0), arg_0.x, true), all(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec4<bool>(true, true, true, u_input.a > 46986i), vec4<bool>(true, true, true, all(vec2<bool>(true, false))), !func_1(vec3<bool>(false, true, false))), !vec4<bool>(true, true, all(vec3<bool>(true, true, false)), any(vec3<bool>(false, false, false))), all(vec4<bool>(true, true, true, true)));
    var var_1 = -1864f;
    var var_2 = var_0.x;
    var_2 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -401f)))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 703f)), -676f);
    let var_4 = Struct_3(func_2().a);
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(598f, var_4.a.a.a.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-128f + _wgslsmith_f_op_f32(select(var_3.x, 2334f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(659f + var_4.a.a.a.x) + -1000f))) - 1478f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-979f, 1859f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1315f)), _wgslsmith_f_op_f32(f32(-1f) * -1295f))), 601f), vec3<i32>(-1i) * -(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, var_4.a.a.d), vec3<i32>(u_input.a, u_input.a, 26105i))), vec4<u32>(~(~global0.x), global0.x, 1u, abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a.a.b.x, 4294967295u), var_4.a.a.b), select(var_4.a.a.c.x, 4294967295u, true)))), ~vec3<u32>(countOneBits(4294967295u), abs(global0.x), global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_div_f32(926f, var_4.a.a.a.x), _wgslsmith_f_op_f32(172f * 530f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_4.a.c, var_4.a.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.c, var_3.x, var_3.x)))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-995f)), _wgslsmith_f_op_f32(exp2(var_4.a.a.a.x))), _wgslsmith_f_op_f32(var_4.a.a.a.x + _wgslsmith_f_op_f32(-var_4.a.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x * -804f), _wgslsmith_f_op_f32(trunc(1000f)))))));
}

