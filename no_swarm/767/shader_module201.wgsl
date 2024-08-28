struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_4(Struct_3(arg_0.a.a), arg_0.b);
    var var_1 = var_0.a.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-774f + _wgslsmith_f_op_f32(select(1060f, 131f, false)))) - _wgslsmith_div_f32(-3546f, 1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-456f, 1308f) - _wgslsmith_f_op_f32(select(448f, -284f, true))), 1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-959f, -420f, var_0.a.a.b.x)) + _wgslsmith_div_f32(-2041f, -910f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2624f * _wgslsmith_f_op_f32(-1184f + -1000f)), -1158f)), select(arg_0.a.a.a.a.x, true, arg_0.a.a.a.a.x || var_0.a.a.a.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(440f)))));
    return ((i32(-1i) * -2147483647i) ^ u_input.b.x) & _wgslsmith_mod_i32(abs(_wgslsmith_mod_i32(countOneBits(arg_0.b), -arg_0.b)), 2838i);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> bool {
    var var_0 = 4635i;
    var_0 = abs(~(-26875i));
    var var_1 = vec3<f32>(-734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1519f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 1769f))), 521f);
    let var_2 = u_input.a.x <= _wgslsmith_clamp_i32(func_3(Struct_4(Struct_3(arg_0.a), -u_input.c)), u_input.d.x, min(20466i, ~_wgslsmith_div_i32(-1i, 18180i)));
    let var_3 = !arg_2;
    return var_2;
}

fn func_1() -> Struct_1 {
    var var_0 = ~select(abs(~max(vec3<u32>(2934u, 22338u, 0u), vec3<u32>(48368u, 0u, 25511u))), ~firstLeadingBit(~vec3<u32>(53852u, 1u, 1u)), vec3<bool>(true, !any(vec3<bool>(true, false, false)), func_2(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, false), 1u, vec4<u32>(4294967295u, 4294967295u, 28446u, 0u))), 274f, true)));
    let var_1 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), true)));
    let var_2 = Struct_4(Struct_3(Struct_2(Struct_1(!vec4<bool>(true, false, var_1, var_1)), !select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(true, false, var_1, false)), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 92061u, var_0.x), vec4<u32>(0u, var_0.x, 1025u, 40500u))), vec4<u32>(69690u & var_0.x, var_0.x ^ var_0.x, var_0.x, var_0.x))), -2147483647i);
    var var_3 = (-(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, var_2.b), vec3<i32>(u_input.b.x, -2147483647i, u_input.a.x))) ^ _wgslsmith_sub_vec3_i32(abs(vec3<i32>(60306i, 4727i, -1i)), vec3<i32>(abs(-3707i), var_2.b, 494i))) ^ -max(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, 43785i, -27204i)), max(vec3<i32>(-17714i, u_input.b.x, 1i), vec3<i32>(2147483647i, var_2.b, -1i))), -(~vec3<i32>(var_2.b, u_input.d.x, 1i)));
    var_3 = _wgslsmith_mult_vec3_i32(countOneBits(~(~vec3<i32>(22551i, var_2.b, 1i))), -vec3<i32>(var_3.x | func_3(Struct_4(var_2.a, 1i)), ~var_3.x, _wgslsmith_mult_i32(-12240i, var_3.x)));
    return Struct_1(select(!vec4<bool>(true, var_2.a.a.b.x, var_1, var_1), select(!select(vec4<bool>(true, true, var_1, false), vec4<bool>(true, var_1, var_1, true), var_2.a.a.a.a), vec4<bool>(var_2.a.a.b.x, false, var_2.a.a.a.a.x, false), any(vec3<bool>(true, var_2.a.a.a.a.x, true))), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !var_0.a.x;
    let var_2 = Struct_4(Struct_3(Struct_2(func_1(), func_1().a, countOneBits(~101834u), vec4<u32>(15111u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(78583u, 0u, 38406u)), abs(6207u), 14810u))), u_input.d.x & max(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, -2147483647i, 7117i), vec4<i32>(u_input.d.x, 1644i, 1i, u_input.c))), 1i));
    let var_3 = select(_wgslsmith_mult_i32(var_2.b, -1i >> (var_2.a.a.d.x % 32u)), countOneBits(-2147483647i), any(vec4<bool>(any(vec3<bool>(true, true, true)), false, var_0.a.x, false)) != !var_0.a.x);
    var var_4 = var_2;
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(max(~vec2<u32>(var_2.a.a.c, var_2.a.a.d.x), ~vec2<u32>(var_2.a.a.c, 1u))) >> (~select(~vec2<u32>(var_2.a.a.c, var_4.a.a.c), countOneBits(vec2<u32>(var_2.a.a.c, 32324u)), !var_0.a.x) % vec2<u32>(32u)), -245f);
}

