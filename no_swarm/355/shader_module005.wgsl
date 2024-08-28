struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f)) - 1000f);
    let var_1 = arg_3.x & (~firstTrailingBit(_wgslsmith_div_u32(arg_0.a.a.x, arg_0.d.a.x)) ^ 1u);
    let var_2 = !(!(_wgslsmith_div_f32(var_0, arg_0.d.b) != arg_2.d.b)) == arg_0.b.x;
    return 0u;
}

fn func_2() -> f32 {
    var var_0 = !(!(!any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))));
    let var_1 = countOneBits(u_input.c.yyy << (~u_input.c.ywy % vec3<u32>(32u)));
    var var_2 = (max(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-72567i, 19626i, 1i, -37506i), vec4<i32>(1i, -7848i, 1i, 0i))), -2147483647i >> (u_input.b % 32u)) >> (u_input.c.x % 32u)) <= (firstLeadingBit(select(1i, 1i, true)) >> (_wgslsmith_div_u32(abs(4294967295u), ~func_3(Struct_4(Struct_2(var_1, 1000f), vec3<bool>(true, true, true), -30436i, Struct_2(u_input.c.zyx, -1000f)), Struct_5(2147483647i, 0u), Struct_4(Struct_2(var_1, -350f), vec3<bool>(false, false, false), 22158i, Struct_2(var_1, 301f)), var_1.zz)) % 32u));
    var var_3 = select(vec2<bool>(true, true), !vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), true), _wgslsmith_clamp_u32(~1u, u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.x, 9945u), ~75033u)) > _wgslsmith_div_u32(func_3(Struct_4(Struct_2(u_input.c.zxx, 160f), vec3<bool>(true, false, false), 1i, Struct_2(vec3<u32>(var_1.x, 0u, var_1.x), 113f)), Struct_5(70825i, u_input.a), Struct_4(Struct_2(vec3<u32>(34430u, u_input.b, 1u), 279f), vec3<bool>(false, false, true), 1i, Struct_2(vec3<u32>(u_input.c.x, 4294967295u, 73700u), -277f)), vec2<u32>(var_1.x, var_1.x)), abs(u_input.b << (u_input.c.x % 32u))));
    let var_4 = Struct_4(Struct_2(reverseBits(~u_input.c.xzw), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(f32(-1f) * -737f))))), select(select(!(!vec3<bool>(var_3.x, false, true)), !vec3<bool>(var_3.x, var_3.x, true), false), select(!select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(true, var_3.x, false), vec3<bool>(var_3.x, var_3.x, var_3.x)), select(vec3<bool>(true, true, true), !vec3<bool>(true, var_3.x, false), true), true), select(!var_3.x, var_3.x, var_3.x)), ~countOneBits(min(1i, _wgslsmith_div_i32(-20394i, 2147483647i))), Struct_2(~vec3<u32>(~var_1.x, ~var_1.x, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1748f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-973f)))))));
    return var_4.d.b;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> bool {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a), _wgslsmith_mod_u32(~max(u_input.a, _wgslsmith_mult_u32(u_input.b, 28770u)), u_input.c.x));
    var var_1 = !arg_1.xx;
    var var_2 = false;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-712f - _wgslsmith_f_op_f32(trunc(-457f))))), 748f, _wgslsmith_div_f32(_wgslsmith_div_f32(-2370f, 900f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(max(-1439f, _wgslsmith_f_op_f32(-1356f + 170f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(299f))), -514f)) - -1341f));
    var_2 = true;
    return !(!(arg_1.x || !any(vec4<bool>(arg_1.x, true, arg_2.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, false, func_1(-20737i, vec4<bool>(true, true, true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true)) | all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)));
    var_0 = !select(select(vec3<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), true, any(vec3<bool>(false, var_0.x, var_0.x))), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, any(vec3<bool>(false, var_0.x, var_0.x)))), select(select(!vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), true), !(!vec3<bool>(var_0.x, true, var_0.x)), u_input.b < _wgslsmith_div_u32(u_input.c.x, u_input.b)), select(!vec3<bool>(true, false, var_0.x), !vec3<bool>(var_0.x, false, var_0.x), !var_0.x));
    let var_1 = firstTrailingBit(~vec2<i32>(1i, 1i));
    var_0 = vec3<bool>(var_0.x, !var_0.x, any(vec4<bool>(true, select(var_0.x, false, var_0.x) && !var_0.x, !any(vec3<bool>(var_0.x, true, false)), any(vec4<bool>(false, false, var_0.x, var_0.x)))));
    var_0 = !(!vec3<bool>(!var_0.x, !(var_1.x > -30801i), false));
    var_0 = select(select(!vec3<bool>(any(vec3<bool>(false, true, false)), 30236i > var_1.x, var_0.x), !select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), firstLeadingBit(0i) < var_1.x), select(!(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, false), vec3<bool>(true, var_0.x, false))), !select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, var_0.x)), true), !vec3<bool>(true, !(!var_0.x), any(vec2<bool>(var_0.x, true)) && true));
    let x = u_input.a;
    s_output = StorageBuffer(0u, firstTrailingBit(vec4<u32>(u_input.c.x, ~1u, 6902u, u_input.a >> (49598u % 32u))), select(-select(vec3<i32>(-34012i, var_1.x, var_1.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, -2147483647i, var_1.x), vec3<i32>(var_1.x, var_1.x, var_1.x)), !vec3<bool>(true, var_0.x, false)), -vec3<i32>(0i, reverseBits(-20998i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -14375i), var_1)), var_0.x), u_input.c.x, var_1.x);
}

