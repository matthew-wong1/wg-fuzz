struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1337f)))), 1598f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(833f))) * 818f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-340f + 653f))))) * _wgslsmith_f_op_f32(-1033f - -1758f)));
    var var_1 = vec4<u32>(4294967295u, arg_1.x, min(select(firstTrailingBit(arg_2), 4294967295u, arg_2 < 27595u), arg_1.x), 15330u) ^ ~(~firstLeadingBit(vec4<u32>(arg_1.x, arg_2, arg_1.x, arg_2)));
    var var_2 = ~firstTrailingBit(_wgslsmith_dot_vec3_i32(select(~arg_3.a.yzy, arg_3.a.wxw << (var_1.wxw % vec3<u32>(32u)), false), ~vec3<i32>(u_input.d, 0i, arg_3.b.x)));
    let var_3 = Struct_1(arg_3.b);
    return firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(arg_3.a, arg_3.a) >> (~arg_2 % 32u), var_3.a.x, ~var_3.a.x | _wgslsmith_dot_vec3_i32(arg_3.a.xzw, vec3<i32>(arg_3.b.x, arg_3.a.x, arg_3.b.x))), reverseBits(arg_3.b.x) | 0i));
}

fn func_2() -> bool {
    var var_0 = true;
    let var_1 = u_input.d;
    var var_2 = Struct_3(~_wgslsmith_mult_vec4_i32(abs(-vec4<i32>(45477i, -2147483647i, -30166i, u_input.d)), -vec4<i32>(54577i, var_1, -2147483647i, var_1)), countOneBits(func_3(all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), u_input.a, 1572u, Struct_3(-vec4<i32>(var_1, 10278i, u_input.d, u_input.d), vec2<i32>(6510i, u_input.d)))));
    var_2 = Struct_3(max(reverseBits(var_2.a), vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, u_input.d, var_1), var_2.a.zwx), select(var_2.a.wwx, vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<bool>(true, true, true))), -var_2.a.x, 1i, 9006i)), var_2.b);
    var_0 = countOneBits(-3082i) >= ~_wgslsmith_sub_i32(min(~(-35363i), var_1), select(abs(-6076i), ~0i, false));
    return false;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = ~(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23090u, u_input.b.x, 84750u), vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.c)), ~4294967295u) ^ u_input.c) | 1u;
    var var_1 = countOneBits(u_input.c);
    var_1 = (countOneBits(var_0) << (_wgslsmith_mod_u32(u_input.a.x, 4294967295u | ~var_0) % 32u)) | reverseBits(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), vec2<u32>(u_input.c, 1u))), ~firstLeadingBit(7393u)));
    var_1 = _wgslsmith_mod_u32(~(~select(33724u, u_input.b.x, true)), firstTrailingBit(_wgslsmith_div_u32(~_wgslsmith_add_u32(var_0, u_input.b.x), _wgslsmith_dot_vec2_u32(select(u_input.b.zz, u_input.a, vec2<bool>(true, arg_1.x)), u_input.b.yz))));
    var var_2 = _wgslsmith_add_u32(reverseBits(reverseBits(37245u)), ~4294967295u);
    return Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(min(u_input.d, u_input.d), -2147483647i), vec2<i32>(u_input.d, u_input.d)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: f32) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(var_0.a);
    var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_3)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1087f, arg_3))))), select(!(!(!vec3<bool>(arg_2, arg_2, true))), vec3<bool>(func_2(), true, any(vec3<bool>(true, arg_2, arg_2)) & (u_input.a.x != 13524u)), false));
    var_0 = Struct_1(-firstTrailingBit(arg_0.a));
    let var_2 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))) - arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d << (reverseBits(u_input.c) % 32u);
    let var_1 = Struct_3(countOneBits(-firstLeadingBit(vec4<i32>(-12218i, -68215i, u_input.d, u_input.d)) | ~(-vec4<i32>(-5533i, u_input.d, u_input.d, u_input.d))), vec2<i32>((u_input.d & -23559i) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 15262u), ~u_input.a) % 32u), u_input.d));
    var var_2 = _wgslsmith_f_op_f32(select(1000f, -2166f, any(vec3<bool>(true, true, true))));
    var_2 = _wgslsmith_f_op_f32(func_1(Struct_1(-_wgslsmith_clamp_vec2_i32(var_1.a.ww, -vec2<i32>(-1i, var_1.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.b.x, u_input.d), vec2<i32>(-1i, 4421i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1034f))), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)))));
    let var_3 = abs(_wgslsmith_mult_vec2_u32(firstLeadingBit(abs(vec2<u32>(u_input.b.x, u_input.a.x))), u_input.a));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f * _wgslsmith_f_op_f32(min(-1386f, var_4))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4)))), var_1.a.wyx, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_4, _wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(0i, 1i)), _wgslsmith_f_op_f32(-var_4), true, -892f))))), ~(~(~vec2<u32>(u_input.b.x, 1u))), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(min(~vec2<i32>(1i, -2147483647i), min(var_1.a.ww, var_1.a.yw)), abs(vec2<i32>(u_input.d, -30504i) << (u_input.b.zx % vec2<u32>(32u))))));
}

