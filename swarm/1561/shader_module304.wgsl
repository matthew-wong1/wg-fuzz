struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = ~(~vec4<u32>(u_input.d, _wgslsmith_sub_u32(~u_input.a, 68456u), u_input.d, u_input.a));
    var_0 = _wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, 4294967295u, u_input.d), vec4<u32>(var_0.x, 4294967295u, u_input.d, 65393u)) | vec4<u32>(var_0.x, var_0.x, 142429u, var_0.x), vec4<u32>(41762u, firstTrailingBit(var_0.x), _wgslsmith_div_u32(u_input.a, 13418u), 63064u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_0.wzz, _wgslsmith_clamp_vec3_u32(var_0.xyx, var_0.zwz, vec3<u32>(var_0.x, u_input.a, var_0.x))), _wgslsmith_dot_vec2_u32(var_0.yy, min(var_0.xy, vec2<u32>(var_0.x, 9970u))), 1u), vec4<u32>(firstLeadingBit(~30651u), 1u, u_input.a, select(min(u_input.d, u_input.d), _wgslsmith_mod_u32(u_input.a, u_input.d), true))));
    let var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(all(vec3<bool>(false, true, true)), true)), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, false)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), max(~5910u, 44988u) == reverseBits(~(~var_0.x)));
    let var_2 = select(select(vec2<bool>(var_1.x, true || var_1.x), vec2<bool>(true, (var_1.x && var_1.x) && var_1.x), false), select(!(!(!var_1)), !(!var_1), select(false, u_input.b > -2147483647i, false) & true), var_1);
    var var_3 = Struct_3(Struct_1(true, true, (~0u | var_0.x) | 62203u, vec2<f32>(1063f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(826f, -1732f, false))))), -2147483647i);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.a.d.x + var_3.a.d.x), _wgslsmith_div_f32(-490f, -940f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.yyy - vec3<f32>(arg_0.x, 1318f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, 418f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, arg_0.x, 364f)), !vec3<bool>(arg_1.x, false, arg_1.x)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2002f));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_0.a.x, -1000f) - arg_0.xyz) * _wgslsmith_f_op_vec3_f32(-arg_0.yzx)))));
    let var_3 = Struct_1(false, select(!any(select(vec2<bool>(arg_1.x, false), arg_1, true)), arg_1.x, all(vec2<bool>(!arg_1.x, arg_1.x))), u_input.d, vec2<f32>(_wgslsmith_f_op_f32(1041f + -2147f), _wgslsmith_f_op_f32(func_3())));
    var_0 = Struct_2(var_0.a);
    return u_input.e;
}

fn func_1() -> bool {
    let var_0 = abs(~(~firstTrailingBit(~vec2<u32>(u_input.a, u_input.a))));
    let var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -func_2(vec4<f32>(-104f, 328f, 795f, 356f), vec2<bool>(true, false))), ~vec2<i32>(_wgslsmith_div_i32(-15067i, u_input.b), u_input.b) & abs(vec2<i32>(_wgslsmith_div_i32(-1i, -1i), -2147483647i)));
    var var_2 = ~(~_wgslsmith_sub_u32(u_input.d >> (1u % 32u), abs(var_0.x)) << (_wgslsmith_div_u32(var_0.x, ~1u) % 32u));
    let var_3 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, -1000f, -608f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(933f, -531f, 165f), vec3<f32>(-319f, -1032f, 617f)))) * vec3<f32>(1f, 1f, 1f)), vec3<f32>(743f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1544f) - 1f))));
    let var_4 = Struct_1((6103i ^ -(~u_input.e)) < u_input.e, !(!all(vec2<bool>(true, true))), ~6758u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-250f)), _wgslsmith_f_op_f32(-var_3.a.x)) * var_3.a.zz) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.a.x)), _wgslsmith_f_op_f32(func_3())), vec2<f32>(_wgslsmith_f_op_f32(var_3.a.x * var_3.a.x), _wgslsmith_f_op_f32(step(-1000f, 211f))))));
    return any(!vec4<bool>(var_4.b, countOneBits(var_1) > -u_input.b, var_4.a, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!func_1()), any(vec3<bool>(true, true, true)), u_input.d >> (u_input.d % 32u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-282f, -399f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1265f, -822f), vec2<f32>(-1000f, 313f))))), vec2<f32>(377f, -824f), any(vec3<bool>(false, false, false)))))));
    let var_1 = !vec4<bool>(false, all(select(!vec2<bool>(false, var_0.b), select(vec2<bool>(var_0.a, var_0.b), vec2<bool>(false, false), true), select(vec2<bool>(var_0.a, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b)))), false, var_0.a);
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(-var_0.d.x))))), var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x - -793f), _wgslsmith_f_op_f32(abs(var_0.d.x))))));
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-602f, var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.d), vec2<u32>(133988u, var_0.c) | vec2<u32>(13098u, 20697u), select(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.a, var_0.c), vec2<bool>(false, var_0.b))), vec2<u32>(12782u, 10388u)), abs(u_input.d)), firstLeadingBit(-2147483647i));
}

