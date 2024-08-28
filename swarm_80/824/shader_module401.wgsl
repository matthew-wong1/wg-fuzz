struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f * -1000f) + _wgslsmith_f_op_f32(round(-1025f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-863f, -352f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2796f, 1451f)) + _wgslsmith_f_op_f32(f32(-1f) * -1917f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-672f)), _wgslsmith_f_op_f32(1168f - -878f))))) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-771f)))));
    var var_3 = arg_1;
    var_0 = arg_1;
    return vec2<bool>(var_0.a, any(select(vec2<bool>(true, var_0.a), vec2<bool>(!var_3.a, true), all(vec3<bool>(false, var_0.a, var_3.a)))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(all(select(func_3(true, Struct_1(true)), vec2<bool>(any(vec2<bool>(true, false)), u_input.c.x < 4294967295u), any(vec3<bool>(false, false, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(428f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) * _wgslsmith_f_op_f32(sign(1133f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(step(164f, -263f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1844f, -846f))))), var_0.a)))));
    let var_2 = countOneBits(_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(~(-13631i), -1i), min(11100i, firstTrailingBit(0i)))));
    let var_3 = var_0;
    let var_4 = true | all(!select(!vec4<bool>(var_0.a, false, var_3.a, var_0.a), select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(true, false, var_3.a, var_0.a), true), select(vec4<bool>(var_3.a, var_3.a, false, true), vec4<bool>(var_3.a, false, true, false), var_3.a)));
    return reverseBits(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, 4085i, var_2), reverseBits(vec3<i32>(var_2, 2147483647i, 0i))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    var var_0 = ~vec4<i32>(-1i, -(func_2() | 1i), i32(-1i) * -max(0i, -1i), ~func_2());
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(-763f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-170f, _wgslsmith_f_op_f32(round(-139f)), all(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a)))) - -246f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -771f)))), _wgslsmith_f_op_f32(trunc(701f)), 165f);
    var_0 = (select(~reverseBits(vec4<i32>(-15222i, 0i, 0i, var_0.x)), select(vec4<i32>(var_0.x, 7070i, -33327i, 31092i), vec4<i32>(var_0.x, 15367i, var_0.x, 0i), arg_0.a) >> (min(u_input.a, arg_1) % vec4<u32>(32u)), !(!vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a))) >> (~countOneBits(_wgslsmith_mod_vec4_u32(u_input.a, u_input.c)) % vec4<u32>(32u))) & reverseBits(-firstTrailingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)) | vec4<i32>(abs(2147483647i), ~var_0.x, i32(-1i) * -27886i, 2147483647i ^ var_0.x));
    var var_2 = 0i;
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-586f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(func_1(Struct_1(false), max(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, 22226u, u_input.c.x)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1139f + 1112f) + _wgslsmith_f_op_f32(select(431f, -694f, false)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(349f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(861f, 558f, true))))), -1344f);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - -1794f), _wgslsmith_f_op_f32(f32(-1f) * -1732f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -837f) * -926f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-977f - -1192f), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)))) + vec2<f32>(var_1.x, var_1.x)));
    let var_2 = !vec3<bool>((true & (var_0.a && var_0.a)) && (any(vec3<bool>(var_0.a, true, true)) | !var_0.a), true, var_0.a);
    var var_3 = var_0;
    var var_4 = var_2.xz;
    var var_5 = _wgslsmith_add_u32(max(19086u, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b), vec2<u32>(57274u, u_input.b.x))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_i32(~min(2147483647i, -1i), ~min(2147483647i, 45514i), ~_wgslsmith_mult_i32(-11545i, -48404i))), _wgslsmith_add_vec3_i32(max(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(2147483647i, 1i, 2147483647i)), vec3<i32>(35003i, -2147483647i, -1i) >> (vec3<u32>(0u, u_input.a.x, 9420u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(min(vec3<i32>(-21810i, -1i, -2147483647i), vec3<i32>(27472i, 2147483647i, -38779i)), vec3<i32>(29729i, -1i, -41549i))), ~vec3<i32>(~1i, -26587i, -2147483647i)), u_input.c.x, 4294967295u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), var_1.x)))));
}

