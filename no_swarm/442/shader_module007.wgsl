struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = vec4<f32>(arg_1.x, arg_2.b, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -972f)), 541f)));
    var var_1 = arg_2.b;
    var var_2 = arg_2.a;
    var var_3 = arg_2;
    let var_4 = firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u));
    return _wgslsmith_mult_vec2_i32(~vec2<i32>(23509i, 11806i), -vec2<i32>(_wgslsmith_add_i32(-1i, u_input.a.x) & 1i, 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    let var_0 = Struct_1(false & (false || any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(542f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1991f + 996f), _wgslsmith_f_op_f32(282f - -1192f))))));
    var var_1 = u_input.a;
    var_1 = -max(~(-max(u_input.a, vec2<i32>(11810i, -2147483647i))), u_input.a);
    var_1 = reverseBits(vec2<i32>(47967i, abs(u_input.a.x)) & func_3(vec3<f32>(var_0.b, var_0.b, _wgslsmith_div_f32(-546f, var_0.b)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, var_0.b), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b, var_0.b))))), Struct_1(false, _wgslsmith_f_op_f32(1000f - var_0.b))));
    var var_2 = -(~_wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, 19070i, u_input.a.x, var_1.x), vec4<i32>(59102i, 36468i, arg_0.x, var_1.x), vec4<bool>(var_0.a, true, var_0.a, var_0.a)) >> (~vec4<u32>(21684u, arg_2, arg_1.x, arg_2) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(var_1.x, 78133i, arg_0.x, 21712i), vec4<i32>(-1i, var_1.x, -2147483647i, arg_0.x)), vec4<i32>(u_input.a.x, var_1.x, -2147483647i, -1i) | vec4<i32>(arg_0.x, u_input.b, 2147483647i, -1i))));
    return 154f;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = ~(abs(abs(~arg_2)) >> (select(max(~arg_2, arg_2), vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2, arg_2), countOneBits(28484u)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)) % vec2<u32>(32u)));
    var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-693f))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(0i, firstTrailingBit(0i)), arg_2, var_0.x)) + -1000f);
    var var_2 = var_0.x;
    return Struct_1(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), -2717f);
}

fn func_1() -> bool {
    let var_0 = !vec2<bool>(any(vec2<bool>(true, true)), true);
    var var_1 = func_4(~(u_input.a >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) & select(_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.a), ~u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), u_input.a ^ u_input.a), vec2<bool>(!var_0.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.a.x, u_input.b << (48618u % 32u)), vec2<u32>(1u, 1u), ~(~4294967295u))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(287f, _wgslsmith_div_f32(529f, 610f))), -492f, !var_0.x))), vec2<u32>(_wgslsmith_add_u32(select(4294967295u, 1u, true), abs(7945u)) & 9929u, ~4408u));
    let var_2 = func_4(~u_input.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-625f + _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1011f + -124f))))), min(min(select(~vec2<u32>(79401u, 0u), ~vec2<u32>(0u, 1u), var_0.x), vec2<u32>(0u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~vec2<u32>(max(72263u, 1u), ~6136u)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + func_4(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - var_1.b) + _wgslsmith_f_op_f32(select(var_1.b, var_1.b, var_2.a))), select(vec2<u32>(0u, 93027u), vec2<u32>(4294967295u, 1u), var_2.a)).b), _wgslsmith_f_op_f32(420f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b)))));
    var_1 = var_2;
    return var_1.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_3.xwy, vec3<f32>(-580f, arg_2.b, arg_2.b), false)))) + _wgslsmith_f_op_vec3_f32(arg_3.yxw * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, arg_3.x) * arg_3.yxw))))));
    let var_1 = 1i;
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.zxy * _wgslsmith_f_op_vec3_f32(-arg_3.yxx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, var_0.x, var_0.x) + arg_3.zyx), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 119f, -297f) - vec3<f32>(arg_3.x, arg_3.x, arg_2.b)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(841f - arg_2.b), _wgslsmith_div_f32(var_0.x, -300f)))));
    var var_2 = _wgslsmith_div_f32(var_0.x, -1869f);
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.wzz);
    return vec4<u32>(36647u, abs(17247u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(56462u, 0u, 51541u, 0u), vec4<u32>(1u, 1u, 18010u, 0u))), countOneBits(firstLeadingBit(0u))) & ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(25862u, 1u, 4294967295u, 19671u), select(vec4<u32>(4294967295u, 68274u, 42586u, 0u), vec4<u32>(34079u, 0u, 66477u, 0u), vec4<bool>(arg_0.x, arg_1.x, true, false)), vec4<u32>(1u, 1u, 1u, 1u)) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_1.x;
    let var_1 = !select(select(vec4<bool>(true, true, true, -243f < arg_2), vec4<bool>(arg_1.x, all(vec3<bool>(false, arg_3.a, arg_1.x)), false, arg_3.a), !(!vec4<bool>(false, arg_1.x, arg_1.x, arg_3.a))), vec4<bool>(arg_0.x != 1u, arg_1.x, var_0, true), select(select(select(vec4<bool>(false, arg_1.x, arg_3.a, var_0), vec4<bool>(true, arg_3.a, false, var_0), vec4<bool>(var_0, arg_1.x, arg_3.a, false)), select(vec4<bool>(arg_1.x, var_0, arg_1.x, var_0), vec4<bool>(arg_1.x, var_0, true, arg_3.a), arg_1.x), true), !vec4<bool>(arg_1.x, arg_1.x, true, false), all(vec2<bool>(false, var_0)) || arg_1.x));
    var var_2 = !select(select(!(!vec3<bool>(false, arg_1.x, var_1.x)), vec3<bool>(true, !var_1.x, true), !select(true, false, false)), var_1.zwy, !select(arg_1, !arg_1, !vec3<bool>(true, true, var_0)));
    var var_3 = arg_3;
    let var_4 = arg_3;
    return vec4<u32>(arg_0.x | arg_0.x, 99294u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, arg_0.x, arg_0.x, 4294967295u), arg_0), ~arg_0), arg_0.x >> (1u % 32u));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.b)), _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -326f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, -1000f), vec4<f32>(-148f, arg_1.b, arg_1.b, 3228f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b, 410f, arg_1.b, arg_1.b), vec4<f32>(arg_1.b, 1000f, arg_1.b, -881f)))))));
    let var_2 = countOneBits(vec2<u32>(4294967295u, firstTrailingBit(_wgslsmith_div_u32(~25616u, arg_0.x))));
    let var_3 = Struct_1(all(select(select(vec4<bool>(arg_2, false, var_0, false), vec4<bool>(true, var_0, false, arg_2), var_0), select(vec4<bool>(false, false, false, true), !vec4<bool>(arg_1.a, false, true, true), !vec4<bool>(var_0, arg_1.a, false, var_0)), !vec4<bool>(arg_2, true, arg_2, arg_1.a))), var_1.x);
    let var_4 = var_3.b == -1808f;
    return func_4(min(_wgslsmith_add_vec2_i32(u_input.a, -u_input.a), abs(_wgslsmith_mod_vec2_i32(reverseBits(u_input.a), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(0i, u_input.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, -310f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1150f))))), var_1.x), arg_0.zw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1296f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(trunc(-1000f)))))))));
    var var_1 = func_7(func_6(func_5(vec4<bool>(false, true, func_1(), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), Struct_1(all(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(max(-469f, 267f))), vec4<f32>(-1625f, _wgslsmith_f_op_f32(select(-398f, var_0, false)), var_0, _wgslsmith_f_op_f32(-var_0))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), 957f, Struct_1(true, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(abs(-392f))))), Struct_1(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0, var_0)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-464f + var_0))))), true);
    var var_2 = vec4<bool>(any(select(!vec2<bool>(true, var_1.a), select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a)), any(vec4<bool>(var_1.a, true, true, false)))) & true, !(!var_1.a), func_4(u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -136f)), -1000f)), select(vec2<u32>(1u, 1u), ~vec2<u32>(71292u, 64769u), var_1.a)).a, true);
    let var_3 = vec4<i32>(reverseBits(-u_input.b), u_input.b, i32(-1i) * -_wgslsmith_dot_vec4_i32(max(vec4<i32>(16682i, u_input.a.x, u_input.a.x, -4330i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<i32>(37292i, u_input.b, u_input.a.x, u_input.b)), 2147483647i);
    var_1 = Struct_1(true, _wgslsmith_f_op_f32(1731f * _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1037f))));
    var var_4 = firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -(var_3.x ^ 1i), -2147483647i), vec3<i32>(1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_3.x, 0i), countOneBits(0i)), var_3.x)));
    var var_5 = var_4.x;
    let var_6 = _wgslsmith_f_op_f32(round(542f));
    var var_7 = max(firstTrailingBit(2147483647i), _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, u_input.b), 11109i | var_4.x, func_3(vec3<f32>(var_6, var_0, 2656f), vec2<f32>(-190f, 258f), Struct_1(var_2.x, var_0)).x), -52894i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-select(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, var_3.x), vec2<bool>(var_1.a, false)) | vec2<i32>(u_input.b, select(var_4.x, u_input.a.x, true))), select(max(0u, firstTrailingBit(~1u)), 41393u, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 * 643f), _wgslsmith_div_f32(-602f, var_0)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -905f, var_1.b, var_1.b), vec4<f32>(197f, var_1.b, var_6, 432f)))))), vec4<f32>(_wgslsmith_f_op_f32(-583f * var_6), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), var_0)), -254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_6, 1998f))), _wgslsmith_f_op_f32(func_4(u_input.a, 889f, vec2<u32>(112031u, 1u)).b - var_1.b)) * vec3<f32>(129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2080f)), -1000f)));
}

