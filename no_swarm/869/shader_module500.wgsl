struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = 1i;
    let var_1 = Struct_2(arg_1, Struct_1(countOneBits(max(~vec3<u32>(41011u, 58833u, arg_1.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, 4294967295u), arg_1.a))), arg_1.c.x, arg_1.c), countOneBits(vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(1i), -14708i), u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, arg_1.c.x, 125f) * arg_1.c));
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = var_1;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, var_2.d.x, var_1.b.b, var_2.b.c.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b, var_2.d.x, 1688f, -703f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 2094f, var_1.d.x, var_2.b.b))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-553f - arg_1.c.x), var_2.a.b, arg_1.b, 303f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(917f, -1000f, 1000f, -1440f) * vec4<f32>(344f, arg_1.b, arg_1.b, -1000f)), vec4<f32>(-1011f, 1150f, arg_1.b, 1295f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.c.x, 968f, 354f, 190f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, arg_1.b, 868f, 1338f)))))), !vec4<bool>(~arg_1.a.x > _wgslsmith_dot_vec2_u32(vec2<u32>(71644u, 0u), vec2<u32>(4294967295u, 3416u)), all(vec3<bool>(true, false, false)) || false, true, true && all(vec3<bool>(false, false, false)))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 27963i, u_input.a, u_input.a), vec4<i32>(u_input.a, 6949i, -11004i, u_input.a)), select(vec4<i32>(u_input.a, 0i, 62141i, -30898i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), true))), Struct_1(abs(vec3<u32>(52707u, 4294967295u, 60637u)), 354f, vec3<f32>(_wgslsmith_f_op_f32(-334f + 142f), _wgslsmith_f_op_f32(min(-998f, -1450f)), _wgslsmith_div_f32(-1580f, 757f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(423f * 1604f) + -530f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2391f * _wgslsmith_f_op_f32(ceil(603f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(0i, u_input.a, u_input.a, -1i), Struct_1(vec3<u32>(0u, 18390u, 1u), -1217f, vec3<f32>(1439f, -289f, 951f)))).x * 251f)), -245f));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~countOneBits(16146u), 27717u), abs(vec3<u32>(~0u, min(1u, 65733u), ~64754u))), var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zww - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.xyx, var_0.xww))) * _wgslsmith_f_op_vec3_f32(-var_0.zwz)));
    var var_2 = Struct_2(Struct_1(countOneBits(~vec3<u32>(var_1.a.x, 39845u, var_1.a.x)), -1024f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1541f, 378f)))), Struct_1(vec3<u32>(1u, _wgslsmith_div_u32(reverseBits(41653u), var_1.a.x ^ 4294967295u), var_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -199f))), vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-946f * 375f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b - 786f), _wgslsmith_f_op_f32(-766f + var_0.x))))), select(min(vec2<i32>(2147483647i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-33505i, 1i))), vec2<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -6810i, u_input.a, 71979i), vec4<i32>(u_input.a, 0i, u_input.a, 35854i))), false) >> ((var_1.a.yz >> (abs(var_1.a.zz) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-791f)))), _wgslsmith_f_op_f32(-653f * _wgslsmith_f_op_f32(var_1.b * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -638f) + var_1.b)) + _wgslsmith_f_op_vec3_f32(-var_0.wwy)));
    var_2 = Struct_2(var_2.b, Struct_1(vec3<u32>(30387u, 84686u, 72888u), _wgslsmith_f_op_f32(320f + _wgslsmith_f_op_f32(-var_0.x)), var_1.c), firstTrailingBit(~(-(~var_2.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_div_f32(var_2.d.x, 1163f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(195f + var_1.c.x))))));
    let var_3 = reverseBits(-1i);
    return Struct_2(var_2.a, Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.c.x) + _wgslsmith_f_op_f32(-1000f - -437f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_1.b, -1175f))), var_0.xxw))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(var_2.c, var_2.c)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.c, var_2.c), vec2<i32>(-29565i, 1347i))), _wgslsmith_clamp_vec2_i32(~firstLeadingBit(var_2.c), -(~var_2.c), select(vec2<i32>(var_2.c.x, var_2.c.x) >> (var_2.b.a.xx % vec2<u32>(32u)), vec2<i32>(var_3, -29480i), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))))), _wgslsmith_f_op_vec4_f32(func_3(min(vec4<i32>(39953i, i32(-1i) * -5774i, var_2.c.x, 2762i ^ var_2.c.x), (vec4<i32>(-79371i, var_2.c.x, var_2.c.x, var_2.c.x) >> (vec4<u32>(21536u, 1u, var_2.a.a.x, var_2.a.a.x) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3, 7842i, 34365i, 14436i), vec4<i32>(2147483647i, var_2.c.x, 19498i, -1i), vec4<i32>(869i, 2147483647i, var_3, -1i))), var_2.a)).xxy);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(min(var_0.a.b, _wgslsmith_f_op_f32(select(func_2().a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(var_0.d.x * -389f))), false))));
    var var_2 = !arg_0;
    var_2 = true;
    let var_3 = ~(vec2<u32>(countOneBits(37327u), max(var_0.a.a.x ^ var_0.b.a.x, 90959u)) | var_0.b.a.zy);
    return Struct_2(var_0.a, Struct_1(~firstTrailingBit(var_0.b.a & vec3<u32>(var_0.b.a.x, var_3.x, 0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.c.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b.c)))), firstLeadingBit(var_0.c), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!(~u_input.a <= -37005i)));
    var var_1 = Struct_1(min(~vec3<u32>(var_0.b.a.x, 0u, 0u), abs(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), var_0.a.a.x, var_0.b.a.x))), -266f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.c - vec3<f32>(1000f, -206f, 104f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.b, 622f, 1027f)))) * vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(floor(-1621f)), -355f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(3057f + -983f), var_0.d.x) * var_0.a.c), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) + func_1(true).a.c.x), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.d.x)), _wgslsmith_f_op_f32(-1079f * -1517f), true)), 645f)))));
    let var_3 = vec2<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(-1788f - var_2.x))));
    let var_4 = _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, u_input.a), firstLeadingBit(~vec2<i32>(u_input.a, var_0.c.x))), _wgslsmith_div_vec2_i32(var_0.c, vec2<i32>(abs(2974i), u_input.a) << (var_0.a.a.yy % vec2<u32>(32u))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_3.x))));
    var var_6 = -37862i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, select(-abs(-vec4<i32>(408i, 7371i, 2147483647i, -1i)), select(select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, var_4.x, 1594i), vec4<i32>(1i, var_0.c.x, var_4.x, -2147483647i)), -vec4<i32>(16106i, -44753i, 27647i, 50737i), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_i32(~vec4<i32>(var_4.x, 12744i, 0i, var_4.x), vec4<i32>(var_4.x, -2147483647i, 0i, u_input.a)), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), var_0.b.b != var_2.x), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)))));
}

