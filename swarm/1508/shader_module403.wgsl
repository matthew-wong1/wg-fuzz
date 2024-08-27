struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_1))))), ~arg_0.c, -14155i);
    return max(-6357i, countOneBits(_wgslsmith_add_i32(-2147483647i, -arg_0.d)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(1062f)), _wgslsmith_f_op_f32(min(1035f, _wgslsmith_f_op_f32(-1417f * -399f))), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-51773i, u_input.d, 2147483647i, 21970i), ~vec4<i32>(0i, -24560i, u_input.c, 18377i)), u_input.b, -firstLeadingBit(1i), abs(_wgslsmith_add_i32(u_input.b, u_input.c)))), firstTrailingBit(countOneBits(u_input.b)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, var_0.b))))), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a)))))), var_0.c, (func_3(Struct_1(1190f, -130f, vec4<i32>(-13637i, var_0.d, 2147483647i, -1i), 2147483647i), var_0.b, var_0.c.xx >> (vec2<u32>(5819u, 24524u) % vec2<u32>(32u))) ^ -43940i) >> (4294967295u % 32u));
    let var_2 = var_1.b;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(-1766f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-683f, -2112f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-519f, var_0.a)))))), var_0.c, select(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(min(36686i, 10910i), -2147483647i), var_0.d), !any(vec2<bool>(arg_1.x, arg_0.x))));
    var_1 = Struct_1(_wgslsmith_div_f32(1075f, -325f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(f32(-1f) * -1464f))))), -vec4<i32>(-15103i, _wgslsmith_add_i32(~var_1.c.x, 44507i), -min(var_0.d, var_3.d), var_0.d), select(max(countOneBits(-1i), 2147483647i), -9323i, !arg_0.x) << (_wgslsmith_div_u32(max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(78676u, 4294967295u, 78416u, 22464u), vec4<u32>(31427u, 1u, 1u, 0u))), 1u) % 32u));
    return ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(35123u, 9942u, 13593u, 8612u))));
}

fn func_1() -> vec2<u32> {
    let var_0 = abs(min(func_2(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(true, true)))), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1394f, _wgslsmith_f_op_f32(-1000f + -512f), _wgslsmith_f_op_f32(-1136f - -292f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(117f, -457f, 1000f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1279f, -462f, 608f), vec3<f32>(-289f, 647f, 432f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, 1577f, -466f)), vec3<f32>(-336f, -319f, 1138f), vec3<bool>(true, true, true)))))));
    var_1 = vec3<f32>(229f, 473f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(1059f * -734f))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-134f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(min(-1177f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(923f + 3006f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 206f, var_1.x)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, 663f)), var_1.x))))));
    return ~_wgslsmith_mult_vec2_u32(var_0.xz, ~var_0.yy) ^ var_0.xw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1986f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f) + -893f)))), -vec4<i32>(u_input.a.x, 5223i, ~u_input.d, -u_input.d), -u_input.d);
    var var_1 = max(~func_1(), min(max(vec2<u32>(~0u, 1u), func_2(vec2<bool>(true, false), vec2<bool>(true, true)).xw), vec2<u32>(~11911u, _wgslsmith_dot_vec4_u32(vec4<u32>(9441u, 0u, 21707u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 74737u))) & reverseBits(vec2<u32>(1u, 1u))));
    var var_2 = vec4<u32>(var_1.x, var_1.x ^ abs(_wgslsmith_sub_u32(var_1.x << (var_1.x % 32u), 16672u)), _wgslsmith_div_u32(var_1.x, 19901u), ~436u);
    var_2 = _wgslsmith_mult_vec4_u32(reverseBits(firstTrailingBit(max(vec4<u32>(1114u, 52195u, 0u, var_1.x), vec4<u32>(var_2.x, var_1.x, var_1.x, 4294967295u)) | reverseBits(vec4<u32>(var_2.x, var_1.x, 4294967295u, 1u)))), ~(~(~(vec4<u32>(26753u, 4294967295u, 52926u, 120806u) ^ vec4<u32>(0u, var_2.x, var_1.x, var_2.x)))));
    var_1 = ~(~var_2.xw);
    var_2 = ~(~vec4<u32>(18518u, 4294967295u, var_1.x, firstLeadingBit(_wgslsmith_mod_u32(var_2.x, 14767u))));
    let x = u_input.a;
    s_output = StorageBuffer(393f, vec2<u32>(func_2(vec2<bool>(true, true), vec2<bool>(true, true)).x, firstLeadingBit(func_2(vec2<bool>(true, false), vec2<bool>(true, true)).x)), vec3<u32>(min(var_1.x, min(~var_2.x, _wgslsmith_sub_u32(var_2.x, 0u))), var_2.x | _wgslsmith_dot_vec3_u32(vec3<u32>(18415u, var_2.x, var_2.x) & var_2.zxy, var_2.zwx), 41604u));
}

