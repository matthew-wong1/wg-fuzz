struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = Struct_1(u_input.b.x < abs(30465u));
    let var_1 = abs(u_input.b >> (~countOneBits(u_input.b) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-545f, -114f)))));
    var var_3 = var_0;
    var var_4 = ~(vec3<u32>(78838u, 4294967295u | min(30878u, u_input.b.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_1.x, 28566u, u_input.b.x), var_1), u_input.b)) ^ firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 1u, 25167u) | vec3<u32>(8169u, 0u, 84537u), vec3<u32>(var_1.x, var_1.x, 1u))));
    return ~(1u << (~var_4.x % 32u));
}

fn func_2() -> bool {
    let var_0 = -1i;
    let var_1 = ~_wgslsmith_clamp_u32(~(~u_input.b.x) ^ u_input.b.x, 1u, _wgslsmith_sub_u32(u_input.b.x >> (func_3(vec4<bool>(false, false, false, false)) % 32u), u_input.b.x));
    var var_2 = Struct_1(select(true, select(any(vec3<bool>(false, true, false)), true, all(vec3<bool>(false, true, false))), true) | true);
    var_2 = Struct_1(true);
    var_2 = Struct_1(any(!select(vec4<bool>(true, true, var_2.a, var_2.a), vec4<bool>(true, var_2.a, false, true), any(vec4<bool>(var_2.a, true, var_2.a, false)))));
    return all(!vec4<bool>(var_2.a, var_2.a, !any(vec2<bool>(var_2.a, var_2.a)), false));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(all(select(vec4<bool>(true, arg_3.x, true, true), select(arg_3, select(vec4<bool>(arg_3.x, false, true, arg_0.x), vec4<bool>(false, arg_3.x, true, true), arg_3), arg_3), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_3.x), !vec4<bool>(false, arg_3.x, false, false), arg_3))));
    let var_1 = arg_0.x;
    var_0 = Struct_1(any(vec3<bool>(select(all(vec4<bool>(false, arg_3.x, false, var_0.a)), true, arg_3.x), var_1, true | var_0.a)));
    var var_2 = Struct_1(var_0.a);
    var var_3 = Struct_1(true);
    return Struct_1(var_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(!select(vec3<bool>(u_input.a <= u_input.a, !arg_1.a, !arg_1.a), vec3<bool>(false, false, u_input.b.x != 0u), true), _wgslsmith_dot_vec2_i32(~min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 0i)), vec2<i32>(-21708i, -2147483647i)), ((vec2<i32>(u_input.a, 2147483647i) ^ vec2<i32>(u_input.a, u_input.a)) >> (select(vec2<u32>(u_input.b.x, 33791u), u_input.b.xw, arg_1.a) % vec2<u32>(32u))) | vec2<i32>(u_input.a, i32(-1i) * -17003i)), ~u_input.b.x, select(vec4<bool>(true, u_input.b.x != u_input.b.x, func_2(), _wgslsmith_f_op_f32(f32(-1f) * -355f) > _wgslsmith_f_op_f32(-arg_0.x)), select(select(select(vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, true, true), vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a)), vec4<bool>(true, true, true, arg_1.a), arg_1.a), select(!vec4<bool>(false, true, true, arg_1.a), !vec4<bool>(false, arg_1.a, false, arg_1.a), vec4<bool>(false, false, arg_1.a, true)), !vec4<bool>(false, false, arg_1.a, arg_1.a)), !vec4<bool>(arg_1.a, all(vec4<bool>(true, arg_1.a, arg_1.a, true)), any(vec3<bool>(arg_1.a, true, false)), true)));
    var var_1 = -_wgslsmith_mult_vec4_i32(~(~vec4<i32>(1i, u_input.a, u_input.a, -47644i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 8299i, -2147483647i, u_input.a) >> (vec4<u32>(49957u, 5815u, u_input.b.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.a, -69422i, u_input.a, 15921i)) & reverseBits(~vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)));
    return func_4(vec3<bool>(var_0.a || true, var_0.a, true), reverseBits(1i), reverseBits(reverseBits(1u)), select(!select(!vec4<bool>(true, arg_1.a, false, var_0.a), !vec4<bool>(var_0.a, arg_1.a, arg_1.a, false), true), select(!vec4<bool>(false, var_0.a, true, arg_1.a), vec4<bool>(var_0.a, -304f < arg_0.x, true, arg_1.a), true), !(arg_1.a & any(vec2<bool>(arg_1.a, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = arg_0.a;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(578f + -910f), -684f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(929f, -1000f)) * -1580f), -503f))));
    var var_3 = Struct_1(var_0 & false);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -1529f));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_4)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - var_4))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i, -27930i, _wgslsmith_mult_i32(u_input.a, -2147483647i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1175f - _wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1124f, -342f, 1079f, 270f)), Struct_1(true)), _wgslsmith_mult_i32(2147483647i, var_0.x) & -24872i))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-488f, -730f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -813f)), _wgslsmith_f_op_f32(select(-149f, _wgslsmith_f_op_f32(579f + -600f), true))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2067f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1512f + _wgslsmith_f_op_f32(-1761f + -193f)) - 189f))));
    var_1 = 706f;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1764f, -1538f), vec2<f32>(1727f, 653f)))), vec2<f32>(_wgslsmith_f_op_f32(select(198f, -627f, true)), _wgslsmith_div_f32(140f, 798f))))))));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_i32(min(-14816i, ~u_input.a), -u_input.a)), countOneBits(_wgslsmith_add_vec3_i32(var_0, -reverseBits(vec3<i32>(-1i, u_input.a, var_0.x)))));
}

