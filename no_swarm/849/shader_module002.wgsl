struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 763f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(-(~u_input.e), u_input.a.x >> (u_input.c.x % 32u)), -11186i, u_input.e);
    global0 = -290f;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1104f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(756f * _wgslsmith_div_f32(-773f, 736f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(786f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(777f - 344f))))));
    let var_1 = max(u_input.d.x, 4294967295u);
    let var_2 = Struct_2(~vec4<u32>(10203u, var_1, max(1u, select(var_1, u_input.c.x, arg_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 0u, var_1), ~vec4<u32>(var_1, 1u, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, 1206f, -163f, -475f) * vec4<f32>(223f, 106f, -657f, -129f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-838f, 722f, 2498f, 1000f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -779f, 648f, -1532f)))))), Struct_1(any(!vec3<bool>(false, false, arg_0.x)), ~(~(~vec3<i32>(-2147483647i, -28519i, 10488i)))), Struct_1(true, ~vec3<i32>(-2147483647i, u_input.e, u_input.e) | select(~vec3<i32>(var_0.x, u_input.a.x, 43810i), select(vec3<i32>(var_0.x, u_input.a.x, u_input.a.x), var_0, arg_0.yzw), arg_0.zzz)));
    return !(!vec2<bool>(false, all(vec4<bool>(false, true, false, false))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(-20266i, u_input.b.x), u_input.a.x), ~(-2147483647i)) >= (i32(-1i) * -20261i), ~((min(vec3<i32>(1i, u_input.e, -30041i), vec3<i32>(u_input.e, 18301i, 9562i)) | vec3<i32>(-15263i, u_input.a.x, 0i)) >> (~u_input.d % vec3<u32>(32u))));
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, select(~vec2<i32>(-2147483647i, 9673i), vec2<i32>(-u_input.b.x, 1i), var_0.a)), -countOneBits(-abs(vec2<i32>(0i, u_input.b.x))));
    let var_2 = _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_0.b.x, 54368i, -69000i), ~vec4<i32>(var_1.x, 46587i, 2147483647i, var_1.x)) ^ -(~vec4<i32>(2147483647i, -14223i, var_0.b.x, var_1.x))), reverseBits(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, -16384i, u_input.b.x, 9125i) >> (vec4<u32>(u_input.c.x, 20758u, u_input.d.x, u_input.c.x) % vec4<u32>(32u)), min(vec4<i32>(-12641i, u_input.b.x, 0i, 5654i), vec4<i32>(30333i, 69385i, var_1.x, 1334i))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-465f, -879f, 1352f) + vec3<f32>(-667f, -395f, -1096f)) + vec3<f32>(1040f, 837f, 155f)) * vec3<f32>(_wgslsmith_f_op_f32(924f - 298f), _wgslsmith_f_op_f32(-2262f - -1000f), -848f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(780f, -1002f, _wgslsmith_f_op_f32(f32(-1f) * -1638f)) * vec3<f32>(-719f, 213f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_4 = select(!(!func_3(vec4<bool>(true, var_0.a, var_0.a, false), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_0.a)))), !(!select(select(vec2<bool>(false, true), vec2<bool>(var_0.a, true), false), select(vec2<bool>(true, false), vec2<bool>(var_0.a, false), var_0.a), any(vec4<bool>(false, var_0.a, var_0.a, false)))), true);
    return _wgslsmith_sub_u32(u_input.d.x, min(4679u, 43314u));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(-226f * 1285f);
    var var_0 = vec4<bool>(!((-u_input.a.x > u_input.a.x) & (func_2() >= u_input.c.x)), (_wgslsmith_dot_vec2_u32(countOneBits(u_input.c.zz), u_input.c.xz) ^ 1u) == ~1u, -1540f < _wgslsmith_f_op_f32(select(-125f, -303f, false)), false & func_3(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true)).x);
    return -1331f;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> StorageBuffer {
    var var_0 = Struct_2(vec4<u32>(51978u, arg_0, min(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 17706u, u_input.c.x, 15964u), vec4<u32>(4294967295u, arg_0, 10893u, 4294967295u)), min(vec4<u32>(44963u, arg_0, 1u, 4294967295u), vec4<u32>(2717u, arg_0, 10618u, u_input.c.x)))), min(countOneBits(u_input.d.x), min(firstTrailingBit(92612u), 816u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, arg_1, arg_1), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_1, arg_1, -1133f), vec4<f32>(-1529f, arg_1, arg_1, arg_1)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_div_f32(arg_1, -115f))))), Struct_1(max(~15476u, func_2()) != func_2(), reverseBits(arg_2)), Struct_1(~arg_2.x < arg_2.x, -countOneBits(arg_2)));
    var_0 = Struct_2(var_0.a, var_0.b, var_0.d, var_0.c);
    let var_1 = !var_0.c.a;
    var var_2 = vec3<u32>(57559u, firstLeadingBit(~1u), reverseBits(arg_0));
    var var_3 = Struct_2(firstLeadingBit(var_0.a), var_0.b, Struct_1(var_0.c.a, var_0.c.b), Struct_1(true, vec3<i32>(arg_2.x, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(-21436i, 14759i, 26528i)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, u_input.e, arg_2.x), vec3<i32>(u_input.a.x, arg_2.x, u_input.e)), vec3<i32>(-15577i, arg_2.x, var_0.c.b.x)))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1510f)))) * 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x)))), ~var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())))) * _wgslsmith_f_op_f32(f32(-1f) * -1862f)), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, u_input.e, u_input.a.x)) & firstLeadingBit(vec3<i32>(-1i, 33137i, 4210i)), ~vec3<i32>(~(-68470i), -20968i, -20982i & u_input.a.x)));
}

