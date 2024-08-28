struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-124f - -905f), _wgslsmith_f_op_f32(step(-1524f, -1621f))))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = !(!(!select(!vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x), true)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-363f)) * _wgslsmith_f_op_f32(-1189f + 1007f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-989f + 857f))))));
    let var_3 = false;
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c.x, arg_1.x ^ 1u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, ~50094u), vec2<u32>(_wgslsmith_div_u32(u_input.c.x, arg_1.x), 1u))) & vec2<u32>(firstLeadingBit(~0u) << ((78733u ^ _wgslsmith_dot_vec3_u32(arg_1, arg_1)) % 32u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, u_input.b, 29900u, arg_1.x), var_2), vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(68399u, 1u, 1u), arg_1), 4294967295u, ~4294967295u)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(func_3(arg_3, vec3<u32>(max(0u, u_input.a), u_input.b, ~45766u)), max(vec2<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 45264u, 58937u), vec3<u32>(u_input.c.x, 0u, u_input.c.x))), ~vec2<u32>(1u, 1u))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(max(u_input.c, vec2<u32>(u_input.a, u_input.b)), u_input.c ^ vec2<u32>(9801u, 1u)), u_input.c));
    var var_1 = _wgslsmith_f_op_f32(step(-711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1589f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) - _wgslsmith_f_op_f32(142f - 1055f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1052f)))))));
    var_1 = -1000f;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1523f)), _wgslsmith_f_op_f32(-695f - 1534f)), -811f) * _wgslsmith_f_op_f32(408f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)))), _wgslsmith_f_op_f32(f32(-1f) * -398f)));
    var var_3 = vec4<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_2))))))), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-288f)) + var_2));
    return u_input.c;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = true;
    var var_1 = func_2(Struct_1(firstLeadingBit(arg_0.a.a), vec2<i32>(_wgslsmith_dot_vec2_i32(~arg_0.a.a.xx, _wgslsmith_div_vec2_i32(vec2<i32>(-17264i, 15560i), arg_0.a.b)), 7058i)), false, Struct_1(countOneBits(max(vec3<i32>(-2147483647i, arg_0.b, 1i) | vec3<i32>(arg_0.b, -21970i, arg_0.a.a.x), firstTrailingBit(vec3<i32>(-25318i, 1i, 1i)))), abs(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a.b, arg_0.a.a.yx), vec2<i32>(742i, arg_0.a.b.x)))), arg_0);
    var_1 = u_input.c;
    var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(893f)))), -108f, all(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), all(vec3<bool>(true, false, false)))))) * _wgslsmith_f_op_f32(-1f));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(vec3<i32>(_wgslsmith_sub_i32(-1i, 1i), _wgslsmith_mult_i32(abs(-1979i), 0i), ~func_1(Struct_2(Struct_1(vec3<i32>(-15022i, 598i, 19858i), vec2<i32>(-4636i, -8053i)), -2147483647i)))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(0i, 2147483647i, 5873i), -2147483647i), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-32589i, 63064i), firstTrailingBit(vec2<i32>(1i, 12603i)), abs(vec2<i32>(-2147483647i, 36379i)))) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i) << (u_input.c % vec2<u32>(32u)), ~(~vec2<i32>(53172i, -16044i)), ~firstTrailingBit(vec2<i32>(-1i, -21377i))));
    let var_1 = Struct_3(select(countOneBits(vec4<i32>(var_0.a.x, func_1(Struct_2(var_0, 29423i)), select(var_0.b.x, var_0.a.x, false), 39476i)), vec4<i32>(91376i, var_0.b.x, max(_wgslsmith_dot_vec2_i32(var_0.b, var_0.b), ~0i), var_0.b.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c & u_input.c) << (~u_input.c % vec2<u32>(32u)), vec2<u32>(~reverseBits(u_input.b), u_input.b & u_input.a)), _wgslsmith_f_op_f32(sign(694f)), vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_sub_u32(~14730u, firstTrailingBit(u_input.c.x & 56550u)), 0u), -157f);
}

