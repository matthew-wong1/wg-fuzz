struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = min(71267u, _wgslsmith_mult_u32(~firstTrailingBit(1u), ~25364u));
    var_0 = 1u;
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(45938u, select(4294967295u, ~1u, !any(vec4<bool>(false, false, true, false))), ~(~(~113926u))), ~vec3<u32>(74424u, 56706u, countOneBits(select(0u, 52436u, true))), firstTrailingBit(select(vec3<u32>(firstTrailingBit(4294967295u), ~61648u, abs(29877u)), max(vec3<u32>(4294967295u, 5521u, 4294967295u), ~vec3<u32>(1u, 1u, 4294967295u)), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true))));
    var var_2 = !select(vec3<bool>(true, 4294967295u >= ~var_1.x, true), vec3<bool>(true, true, any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, select(true, true, true), true), false));
    let var_3 = vec3<i32>(7728i, firstTrailingBit(_wgslsmith_mod_i32(countOneBits(countOneBits(u_input.a)), ~(-u_input.a))), abs(_wgslsmith_div_i32(1i | ~u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.a), select(u_input.a, u_input.a, var_2.x)))));
    return ~min(((var_1.xx ^ var_1.xx) | (vec2<u32>(27596u, 0u) | var_1.xz)) | var_1.yy, var_1.zz);
}

fn func_2() -> vec2<u32> {
    var var_0 = ~firstTrailingBit(u_input.a);
    let var_1 = true;
    var var_2 = Struct_1(func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-871f, 802f)), vec2<f32>(908f, -1655f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-838f, -1296f))) + vec2<f32>(1000f, -1561f))))), _wgslsmith_f_op_f32(step(969f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-574f * 500f) * _wgslsmith_f_op_f32(select(108f, 1000f, true)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_2.b)), _wgslsmith_f_op_vec2_f32(var_2.b * vec2<f32>(238f, -202f)), u_input.a != -19730i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, var_2.b.x) - var_2.b)))));
    var_2 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 28700u, var_2.a.x), ~vec3<u32>(35618u, 19431u, 4294967295u)), var_2.a.x ^ var_2.a.x), var_2.b, _wgslsmith_f_op_f32(floor(var_3.x)));
    return abs(var_2.a);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(func_2(), vec2<u32>(50514u, ~37013u)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(578f, _wgslsmith_f_op_f32(-700f * _wgslsmith_div_f32(-1000f, 263f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1820f - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-854f * 452f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1832f, -1000f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(905f + 647f), _wgslsmith_f_op_f32(1000f + -1099f), select(true, false, true))))));
    let var_1 = -842f;
    var var_2 = ~select(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.a.x, 28092u, 66961u), var_0.a.x | 3614u, var_0.a.x), func_2().x, 4294967295u), select(vec3<u32>(0u, var_0.a.x, 3687u), vec3<u32>(var_0.a.x, abs(var_0.a.x), abs(0u)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), vec3<bool>(true, true, true)));
    var var_3 = -2147483647i;
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(22575u, ~(~var_2.x)), var_2.x);
    return Struct_1(firstTrailingBit(_wgslsmith_add_vec2_u32(var_2.yy, ~(~var_0.a))), _wgslsmith_f_op_vec2_f32(ceil(var_0.b)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = func_1(2147483647i, arg_0.a);
    let var_2 = func_1(u_input.a, _wgslsmith_mult_vec2_u32(var_0.a | var_1.a, _wgslsmith_div_vec2_u32(vec2<u32>(~arg_0.a.x, _wgslsmith_div_u32(arg_0.a.x, 1u)), (var_1.a << (var_0.a % vec2<u32>(32u))) >> (vec2<u32>(48593u, var_0.a.x) % vec2<u32>(32u)))));
    let var_3 = arg_1.x && !arg_1.x;
    var var_4 = var_0;
    return Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(212f)), var_2.c) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_1.c)) + _wgslsmith_f_op_vec2_f32(exp2(var_0.b)))))), var_4.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-74068i, _wgslsmith_div_vec2_u32(vec2<u32>(~64410u, ~4294967295u), ~firstTrailingBit(vec2<u32>(16466u, 4294967295u)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec2<bool>(true, false)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), all(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true))));
    var_0 = func_4(Struct_1(vec2<u32>(~abs(var_0.a.x), 4294967295u ^ var_0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -483f))), var_0.b.x), !select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec3<bool>(false, false, false)), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(1151f)), firstTrailingBit(firstLeadingBit(max(min(vec4<i32>(u_input.a, 5970i, u_input.a, u_input.a), vec4<i32>(-12549i, u_input.a, 18301i, u_input.a)), vec4<i32>(u_input.a, 1i, -13867i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))), u_input.a);
}

