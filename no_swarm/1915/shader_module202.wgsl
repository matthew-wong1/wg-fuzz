struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = arg_1;
    var var_1 = Struct_1(abs(~arg_1.a), ~vec3<u32>(arg_1.b.x << (u_input.a % 32u), ~select(var_0.b.x, var_0.b.x, false), arg_2.x << (~53614u % 32u)));
    return vec3<u32>(_wgslsmith_mult_u32(1u, ~u_input.a), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(arg_2.zx << (arg_3.b.zy % vec2<u32>(32u)), vec2<u32>(arg_1.b.x, u_input.a)), var_1.b.x & select(var_1.b.x, ~0u, false)), ~(firstLeadingBit(0u) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(26927u, arg_1.b.x), vec2<u32>(arg_1.b.x, 6709u)) % 32u)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = Struct_1(abs(firstTrailingBit(min(29939i, i32(-1i) * -2147483647i))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(func_3(vec4<i32>(u_input.b, -4573i, arg_2.x, arg_1), Struct_1(-23796i, vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, 8360u, 56848u), Struct_1(1i, vec3<u32>(u_input.a, 12143u, 0u)))), vec3<u32>(u_input.a, u_input.a, u_input.a) >> (~vec3<u32>(1832u, u_input.a, u_input.a) % vec3<u32>(32u))), countOneBits(vec3<u32>(8014u, 47245u, ~u_input.a))));
    var var_1 = var_0.a;
    let var_2 = Struct_1(-4738i, var_0.b);
    var_1 = var_2.a;
    var var_3 = var_2.b.x;
    return _wgslsmith_mult_vec4_u32((firstTrailingBit(~vec4<u32>(u_input.a, 22839u, var_0.b.x, u_input.a)) ^ ~(~vec4<u32>(0u, 0u, 4294967295u, var_2.b.x))) | vec4<u32>(71083u, _wgslsmith_mod_u32(~26398u, max(0u, var_0.b.x)), u_input.a, 0u >> (_wgslsmith_add_u32(u_input.a, var_2.b.x) % 32u)), vec4<u32>(abs(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2.b.x), vec2<u32>(var_2.b.x, u_input.a)))), _wgslsmith_mult_u32(firstLeadingBit(29359u), ~(~60151u)), 1u, var_2.b.x));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(func_2(true, 0i, vec3<i32>(-29921i, ~(-35804i), u_input.b)) ^ ~vec4<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u), u_input.a | 1u, ~102349u, u_input.a));
    var var_1 = select(select(vec2<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true))), vec2<bool>(all(vec2<bool>(true, true)), select(true, true, any(vec4<bool>(true, false, true, true)))), false), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), !vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    let var_2 = _wgslsmith_dot_vec4_i32(select(select(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, -2147483647i, -26070i)), -vec4<i32>(-6080i, u_input.b, u_input.b, 20258i)), vec4<i32>(i32(-1i) * -1i, 12053i, -39677i, _wgslsmith_clamp_i32(43527i, 16114i, u_input.b)), select(all(vec3<bool>(var_1.x, var_1.x, false)), var_1.x, select(var_1.x, var_1.x, var_1.x))), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(1i, 1140i, u_input.b, u_input.b) & vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(-55672i, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.b, 899i, u_input.b, u_input.b)) >> (var_0 % vec4<u32>(32u)), abs(select(vec4<i32>(42367i, u_input.b, 21807i, u_input.b), vec4<i32>(u_input.b, u_input.b, -16997i, 4863i), vec4<bool>(var_1.x, var_1.x, false, false)))), true), -_wgslsmith_mult_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -27873i), vec4<i32>(-2147483647i, 0i, 2147483647i, u_input.b)), ~vec4<i32>(u_input.b, 0i, -18667i, u_input.b), !var_1.x), ~vec4<i32>(u_input.b, u_input.b, 38921i, u_input.b) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)));
    var var_3 = Struct_1(0i & _wgslsmith_dot_vec2_i32(vec2<i32>(~var_2, 1i), ~abs(vec2<i32>(-44017i, var_2))), var_0.xwy);
    let var_4 = ~(var_0 | vec4<u32>(1u >> (_wgslsmith_mod_u32(60363u, u_input.a) % 32u), var_3.b.x, abs(min(var_3.b.x, var_0.x)), var_3.b.x));
    return Struct_1(-5480i, var_4.yxx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(1370u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(32872u, 0u, u_input.a))), abs(4294967295u)));
    let var_1 = func_1();
    var var_2 = -11081i;
    var_0 = vec2<u32>(func_1().b.x, 4997u);
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1464f, 587f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-870f, -819f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, -149f, 1163f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -152f), 1151f, _wgslsmith_f_op_f32(trunc(-1000f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f * 1216f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -154f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1423f)))), vec3<bool>(true, !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false)), false)));
    let var_5 = vec4<bool>(true, !(50736i >= var_1.a), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(all(vec2<bool>(true, false)), false), all(vec2<bool>(false, true)))), any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true & any(vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, select(max(min(vec4<i32>(67336i, var_3.a, 0i, var_3.a), abs(vec4<i32>(var_1.a, var_3.a, var_1.a, var_3.a))), ~vec4<i32>(u_input.b, var_3.a, 1i, var_1.a)), max(vec4<i32>(var_1.a, u_input.b, u_input.b, 11535i) ^ min(vec4<i32>(-11538i, -60054i, var_3.a, 48913i), vec4<i32>(var_1.a, var_3.a, 78743i, -2147483647i)), ~firstLeadingBit(vec4<i32>(1i, -74721i, var_3.a, -5731i))), vec4<bool>(false, _wgslsmith_f_op_f32(abs(var_4.x)) <= _wgslsmith_f_op_f32(step(-652f, -765f)), var_5.x, true || any(var_5.zwy))), var_4.x, var_4, vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mod_i32(var_1.a, -1i)), 0i), var_1.a));
}

