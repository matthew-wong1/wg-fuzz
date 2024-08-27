struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_1(4294967295u, arg_1.e.a.x, 1028i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2)))), -1054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) - -218f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(-2322f - arg_2), arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -410f)))));
    return var_0.d.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> f32 {
    var var_0 = false;
    var var_1 = u_input.a;
    var_0 = arg_1.d.x;
    let var_2 = Struct_3(Struct_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(114440u, 1u) & vec2<u32>(arg_1.a.b, arg_1.b.a), vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(u_input.b, u_input.b))), 1392f, 1000f, Struct_1(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(arg_1.b.a, 11961u)), ~0u, select(u_input.b, u_input.b, true))), 32578u, ~(-(~0i)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1270f, _wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(u_input.b, 4294967295u)), Struct_3(Struct_2(vec2<u32>(arg_1.a.b, arg_1.a.b)), 174f, -498f, arg_1.b, Struct_2(vec2<u32>(4294967295u, arg_1.b.a))), -2855f, vec4<u32>(arg_1.b.b, 1u, u_input.b, 31117u))), -105f, _wgslsmith_f_op_f32(arg_0.x + 1769f))))), Struct_2(~select(vec2<u32>(u_input.b, arg_1.a.b), vec2<u32>(30912u, u_input.b), arg_1.d.yw) | vec2<u32>(_wgslsmith_div_u32(9620u, 90334u), reverseBits(arg_1.a.b))));
    var_1 = -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, arg_1.b.c, arg_1.b.c, var_1.x), u_input.a)), -_wgslsmith_add_vec4_i32(u_input.a, u_input.a)), min(-u_input.a, ~u_input.a));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, var_2.b))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -785f);
    var_0 = 1830f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-806f, -660f, 361f, -633f) * vec4<f32>(-295f, -2215f, -877f, -1697f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1641f, -678f, -372f, 1032f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-870f, 1262f, 630f, 2135f))))))) - vec4<f32>(_wgslsmith_f_op_f32(round(-1352f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -970f), 508f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(-1414f, 361f, 324f), Struct_4(Struct_1(28238u, 945u, u_input.a.x, vec4<f32>(-702f, 243f, -1000f, -2636f)), Struct_1(4294967295u, u_input.b, 2147483647i, vec4<f32>(-202f, -1534f, 1198f, -107f)), 260f, vec4<bool>(true, true, false, true), true)))))), _wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(520f, -132f, false)) * _wgslsmith_f_op_f32(step(-802f, -1318f))))));
    let var_2 = ~(-81254i);
    let var_3 = vec3<f32>(-148f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), 1319f);
    return Struct_1(select(~u_input.b, ~(~u_input.b), true), u_input.b, min(firstTrailingBit(-_wgslsmith_sub_i32(var_2, var_2)), firstTrailingBit(u_input.a.x)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(281f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1625f + -872f) - -2594f))), 558f), -686f);
    let var_1 = Struct_3(Struct_2(~reverseBits(vec2<u32>(u_input.b, 38349u))), 1219f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))), func_1(), Struct_2(vec2<u32>(~(u_input.b ^ u_input.b), u_input.b)));
    var var_2 = -6187i;
    var var_3 = countOneBits(vec2<i32>(firstTrailingBit(u_input.a.x | _wgslsmith_mult_i32(-8412i, var_1.d.c)), ~var_1.d.c));
    let var_4 = _wgslsmith_mult_u32(reverseBits(func_1().a | var_1.a.a.x), u_input.b);
    var_3 = vec2<i32>(abs(~(-(~18326i))), min(var_3.x, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, var_1.d.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))))), vec4<u32>(~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), var_1.a.a)), ~0u, 26356u, 51552u), vec2<f32>(var_1.b, _wgslsmith_f_op_f32(-var_0.x)));
}

