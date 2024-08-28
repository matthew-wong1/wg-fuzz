struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(~vec2<i32>(~2147483647i, i32(-1i) * -12556i));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-397f))), 1f)));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~40930u, ~4294967295u, 3585u, 4294967295u), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 34544u, 21460u, 101947u), vec4<u32>(81250u, u_input.a, 1u, u_input.a)), vec4<u32>(14336u, 15707u, u_input.a, 0u), vec4<bool>(false, false, true, var_1))) >> (4294967295u % 32u), u_input.a << (98017u % 32u));
    let var_4 = Struct_1(~(_wgslsmith_mod_u32(u_input.a, 7662u) << ((_wgslsmith_sub_u32(4294967295u, u_input.a) & abs(u_input.a)) % 32u)), vec2<u32>(~firstTrailingBit(u_input.a), min(~16531u, ~(4294967295u & u_input.a))));
    return select(all(!(!vec4<bool>(var_1, var_1, var_1, var_1))), any(vec4<bool>(var_1, all(vec3<bool>(true, var_1, false)), (var_1 && false) & false, true)), all(!vec2<bool>(var_1, var_1)) & (_wgslsmith_div_u32(~13824u, var_4.a) == 1u));
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = !select(!vec2<bool>(false, false || arg_0.b), !vec2<bool>(func_3(), true), arg_0.b);
    var var_1 = u_input.a;
    var_1 = ~4294967295u >> (0u % 32u);
    var var_2 = -534f >= _wgslsmith_f_op_f32(-arg_0.c);
    var_1 = u_input.a;
    return ~arg_0.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, -1i, 43640i, -20774i), vec4<i32>(2147483647i, -31456i, 19941i, arg_1.x), vec4<i32>(15878i, arg_1.x, -19037i, 70385i)), firstTrailingBit(vec4<i32>(541i, 0i, -35879i, -9834i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, min(-55715i, arg_1.x), arg_1.x), -(~vec4<i32>(-2147483647i, -2147483647i, arg_1.x, 48118i)), -vec4<i32>(arg_1.x, 44005i, 11416i, 13925i) | _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 62441i, arg_1.x), vec4<i32>(arg_1.x, 0i, 11913i, arg_1.x)))), 2147483647i == (-(~80498i) >> (u_input.a % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(370f))));
    let var_1 = Struct_1(1u, ~(~(~(~vec2<u32>(1u, 22589u)))));
    var_0 = Struct_3(1i, var_0.b, var_0.c);
    var var_2 = Struct_1(~reverseBits(_wgslsmith_sub_u32(0u, ~var_1.b.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_sub_u32(var_1.b.x, 7534u)), _wgslsmith_sub_vec2_u32(~var_1.b, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(94812u, u_input.a)))), min(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(1u, var_1.a)), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u)), vec2<u32>(1u, ~0u ^ _wgslsmith_sub_u32(var_1.b.x, u_input.a))));
    var_2 = Struct_1(var_1.b.x, var_1.b);
    return 0u;
}

fn func_1() -> Struct_3 {
    var var_0 = ~(_wgslsmith_div_u32(14593u, 1u) >> (((~u_input.a ^ min(0u, u_input.a)) << (u_input.a % 32u)) % 32u));
    let var_1 = (22420u | firstTrailingBit(max(min(u_input.a, 53645u), _wgslsmith_mod_u32(58815u, u_input.a)))) << (func_4(vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), false, true, true), vec3<i32>(~(~(-64448i)), 1i, _wgslsmith_clamp_i32(min(42329i, 1i), func_2(Struct_3(1i, true, -250f)), 0i << (0u % 32u)))) % 32u);
    var var_2 = 0u;
    let var_3 = countOneBits(_wgslsmith_sub_u32(~var_1, ~var_1 >> (~u_input.a % 32u)));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-355f - 131f))))) + 377f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-732f, _wgslsmith_f_op_f32(min(-370f, _wgslsmith_f_op_f32(192f + 309f))))));
    return Struct_3(i32(-1i) * -1i, true, -152f);
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 104173u, arg_1)) << (~vec4<u32>(u_input.a, arg_1, u_input.a, arg_1) % vec4<u32>(32u)))), ~min(reverseBits(vec4<u32>(28884u, 19981u, u_input.a, 0u)) << (~vec4<u32>(u_input.a, arg_1, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(~arg_1, arg_1, ~1u, arg_1)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)), -1120f)), arg_3.c);
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i >> (~u_input.a % 32u), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), 1u, Struct_2(vec2<i32>(2147483647i, 17369i)), func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f + 1764f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -814f))) * -216f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1239f, -558f, 172f, 1107f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1975f, -1124f, 240f, -852f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(740f, 690f, 1016f, -416f), vec4<f32>(-236f, 477f, 1000f, -1673f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-557f, -699f, -415f, 1000f) * vec4<f32>(-348f, 546f, -1856f, 858f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-335f, 244f, 490f, 1432f), vec4<f32>(-1138f, -867f, -1000f, -731f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(-103f, -692f, 572f, -390f), vec4<f32>(506f, 441f, -273f, -587f)))), vec4<bool>(func_3(), true & all(vec3<bool>(true, false, false)), true, true))), -(~vec3<i32>(-35096i, -1i, ~(-43001i))));
}

