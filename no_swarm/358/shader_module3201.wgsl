struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    var var_0 = countOneBits(~abs(1u));
    let var_1 = true;
    var var_2 = firstTrailingBit(min(arg_0, ~arg_0));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))) + -311f)));
    var var_4 = true;
    return vec4<u32>(~4294967295u, 1u, 1u, 40522u << (firstLeadingBit(firstTrailingBit(16748u)) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)))))));
    let var_1 = min(reverseBits(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_0.d, arg_2.d, 39914u), vec4<u32>(arg_2.d, arg_2.d, 56069u, arg_2.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 94466u, 1u, arg_2.d), vec4<u32>(1u, 8062u, 65546u, arg_1.x)), all(vec2<bool>(true, arg_2.b.x)))), max(~(min(vec4<u32>(arg_2.d, arg_2.d, arg_1.x, arg_0.d), vec4<u32>(arg_0.d, 10522u, arg_1.x, 4294967295u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.d, arg_1.x, 11375u, arg_2.d), vec4<u32>(arg_0.d, 58700u, arg_1.x, 15077u))), ~func_2(vec4<i32>(55071i, arg_0.c.x, arg_2.c.x, arg_0.c.x))));
    let var_2 = -255f;
    var var_3 = arg_2;
    var var_4 = reverseBits(var_1.wz);
    return Struct_2(_wgslsmith_mult_vec4_i32(-vec4<i32>(firstLeadingBit(2147483647i), var_3.c.x, -2147483647i, arg_0.c.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -14726i, arg_0.c.x, -48043i), vec4<i32>(u_input.a, var_3.c.x, var_3.c.x, 0i)) >> ((arg_2.d >> (var_1.x % 32u)) % 32u), arg_0.c.x, ~(~u_input.a), -10012i)), arg_2.c.x, Struct_1(all(select(var_3.b, var_3.b, vec3<bool>(arg_2.a, true, false))) && any(vec4<bool>(true, arg_0.a, true, true)), !(!arg_2.b), countOneBits(~(-vec2<i32>(arg_2.c.x, 30837i))), var_3.d), arg_2);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2159f, -1013f, _wgslsmith_f_op_f32(abs(-166f)), -426f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1004f - 1000f), 1f, _wgslsmith_f_op_f32(-601f * -875f), -1079f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1383f, -1019f, 1823f, -1810f) + vec4<f32>(-512f, -1051f, 685f, -1465f)))), select(vec4<bool>(false, arg_0.c.a, arg_0.d.a, arg_0.c.b.x), !vec4<bool>(arg_0.c.b.x, arg_1, arg_0.d.a, arg_1), vec4<bool>(false, false, false, arg_1))))) * vec4<f32>(642f, 1f, 1f, -1402f));
    var var_1 = select(select(!(!(!vec4<bool>(arg_1, arg_2.x, arg_0.d.a, arg_0.d.a))), vec4<bool>(all(arg_0.d.b) && any(vec4<bool>(arg_2.x, true, arg_0.c.a, true)), var_0.x >= var_0.x, func_1(Struct_1(arg_1, arg_0.c.b, arg_0.c.c, arg_0.d.d), func_2(arg_0.a).ywz, Struct_1(arg_0.d.a, arg_0.c.b, arg_0.d.c, 1u)).c.a, func_1(arg_0.c, vec3<u32>(arg_0.d.d, 108025u, arg_0.c.d), Struct_1(false, vec3<bool>(true, arg_1, arg_2.x), arg_0.a.yw, 106873u)).c.a), vec4<bool>(false || arg_2.x, arg_1, any(arg_0.d.b), _wgslsmith_f_op_f32(var_0.x + -404f) < var_0.x)), select(select(!(!vec4<bool>(arg_2.x, false, false, arg_1)), select(!vec4<bool>(arg_0.d.b.x, arg_1, arg_2.x, false), select(vec4<bool>(false, arg_2.x, false, true), vec4<bool>(arg_1, arg_2.x, true, arg_2.x), true), true), true), vec4<bool>(any(vec2<bool>(arg_2.x, arg_2.x)), all(vec3<bool>(arg_1, arg_2.x, true)), all(!vec3<bool>(false, arg_2.x, arg_1)), arg_2.x), !(!(!vec4<bool>(arg_0.d.a, false, arg_1, true)))), true);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(631f, -190f, -510f, -1777f) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-359f, 1003f, var_0.x, -904f) - vec4<f32>(var_0.x, var_0.x, var_0.x, -254f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1448f, var_0.x, 1146f, 572f), vec4<f32>(994f, 1513f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, -1490f, 1249f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), arg_2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 1485f, 1000f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -2428f, var_0.x, 320f) * vec4<f32>(-1000f, var_0.x, var_0.x, -759f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1981f, var_0.x, -552f, var_0.x) + vec4<f32>(var_0.x, 965f, -159f, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1476f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-598f, -328f))), -1485f, var_0.x), vec4<f32>(1232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(floor(-1156f)), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 350f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-143f - -2249f) * _wgslsmith_f_op_f32(-551f + var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -367f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(954f * -418f))), !arg_0.c.b.x)), -524f);
    return arg_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(true != all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)))), vec3<bool>(func_3(func_1(Struct_1(false, vec3<bool>(true, false, true), vec2<i32>(u_input.a, 1i), 1u), min(vec3<u32>(0u, 4294967295u, 25904u), vec3<u32>(73845u, 4294967295u, 4294967295u)), Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(10190i, 30737i), 1u)), false, select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(-36605i, u_input.a), 1u), vec3<u32>(1u, 0u, 1u), Struct_1(false, vec3<bool>(true, true, true), vec2<i32>(u_input.a, u_input.a), 1u)).d.b.zy)), any(vec4<bool>(true, true, true, true)) | all(vec3<bool>(true, false, true)), false), vec2<i32>(u_input.a, _wgslsmith_div_i32(~_wgslsmith_add_i32(u_input.a, u_input.a), -_wgslsmith_clamp_i32(0i, u_input.a, -17273i))), firstLeadingBit(~1u));
    var var_1 = var_0;
    var var_2 = var_1.d;
    var var_3 = func_3(func_1(Struct_1(var_0.c.x >= _wgslsmith_clamp_i32(var_0.c.x, 0i, 31609i), vec3<bool>(true, all(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_1.a)), true), vec2<i32>(-1i, var_1.c.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.d, 1u, 28319u, var_0.d), vec4<u32>(var_1.d, 1u, 18405u, var_1.d), true), vec4<u32>(0u, var_0.d, var_0.d, 14669u))), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(var_0.d, var_0.d, var_1.d) ^ vec3<u32>(var_1.d, var_1.d, var_1.d)), select(firstTrailingBit(vec3<u32>(59119u, 1u, 4294967295u)), vec3<u32>(19297u, var_1.d, var_0.d), true), vec3<u32>(var_0.d, var_0.d, func_1(Struct_1(true, var_1.b, var_0.c, var_0.d), vec3<u32>(1u, 61843u, var_1.d), var_0).d.d)), func_1(var_0, _wgslsmith_div_vec3_u32(vec3<u32>(55492u, var_0.d, var_1.d), vec3<u32>(var_1.d, var_1.d, var_0.d)) << (reverseBits(vec3<u32>(var_1.d, 31766u, var_1.d)) % vec3<u32>(32u)), Struct_1(all(vec4<bool>(false, false, var_0.b.x, true)), var_0.b, ~vec2<i32>(u_input.a, var_0.c.x), _wgslsmith_div_u32(1u, 1u))).c), any(vec4<bool>(var_0.a, var_1.a & true, !var_1.b.x, any(vec4<bool>(var_0.b.x, true, true, false)))) || any(var_1.b), var_0.b.zz);
    var_1 = var_0;
    var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, 114f)), _wgslsmith_f_op_f32(f32(-1f) * -1057f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(3817f)), 1744f, var_1.a)), 1000f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -252f), 946f, _wgslsmith_div_f32(-955f, 334f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-702f, -443f), vec2<f32>(-1271f, 1059f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(194f, 895f) * vec2<f32>(-1712f, 1000f)))))));
}

