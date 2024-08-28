struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = ~(~max(-firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 46823i, 8663i, 0i), -vec4<i32>(-2147483647i, -33441i, 2147483647i, 0i))));
    let var_1 = select(vec4<bool>(true, true, true, !any(vec2<bool>(true, true))), vec4<bool>(false, true, !((i32(-1i) * -2147483647i) == _wgslsmith_dot_vec3_i32(vec3<i32>(-7143i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, -497i, 1i))), !(any(vec4<bool>(true, true, true, true)) == true)), select(vec4<bool>(select(false, true, false) | true, select(false, true, any(vec2<bool>(true, false))), false, true), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))))));
    let var_2 = Struct_2(all(vec2<bool>(true, var_1.x)));
    var_0 = -2147483647i;
    var_0 = 2147483647i;
    return u_input.b.x << (_wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.a, ~abs(u_input.c.x)), u_input.b.x) % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = 17182u;
    let var_1 = true;
    var var_2 = _wgslsmith_add_i32(2147483647i, ~(~(-2147483647i)));
    var_2 = (1i << (func_3() % 32u)) >> (func_3() % 32u);
    let var_3 = 951f;
    return Struct_2(!((var_3 <= -1000f) & false));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = var_0.a;
    var_1 = _wgslsmith_f_op_f32(arg_0.x + -452f) <= arg_0.x;
    var var_2 = Struct_2(var_0.a);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), abs(vec2<i32>(-_wgslsmith_mod_i32(1i, 1i), _wgslsmith_mod_i32(1i, 1i))));
    return Struct_3(select(vec3<i32>(-var_3.b.x | -6849i, min(min(var_3.b.x, var_3.b.x), 1i), i32(-1i) * -49745i), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-23597i, var_3.b.x, -55842i), vec3<i32>(20629i, var_3.b.x, -36758i)), vec3<i32>(var_3.b.x, min(-35353i, var_3.b.x), var_3.b.x)), select(!vec3<bool>(true, false, var_0.a), select(!vec3<bool>(false, false, var_0.a), !vec3<bool>(false, var_2.a, var_2.a), var_0.a), true)), abs(firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.b, var_3.b), vec2<i32>(var_3.b.x, var_3.b.x)))), max(2147483647i, var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_dot_vec3_u32(abs(~u_input.c), ~vec3<u32>(0u, 57555u, 2278u)));
    let var_1 = Struct_2(true);
    var var_2 = ~vec4<i32>(1i, _wgslsmith_clamp_i32(1i, firstTrailingBit(-2147483647i), min(_wgslsmith_clamp_i32(2838i, 1i, -2147483647i), abs(-2147483647i))), _wgslsmith_sub_i32(firstTrailingBit(reverseBits(2147483647i)), ~0i), _wgslsmith_sub_i32(_wgslsmith_add_i32(294i, min(-28019i, -2147483647i)), ~1i));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-806f, -406f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(640f, -487f), 777f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1549f)) + _wgslsmith_f_op_f32(889f - -775f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f * -855f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(771f, -1241f, -254f, 632f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1758f, 1544f, 1891f, 474f)))))), !(!(!var_1.a)))));
    let var_4 = func_1(var_3.xz);
    let var_5 = _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-549f)))), var_3.wy);
    let var_6 = !vec4<bool>(func_2().a, true, true, true);
    var var_7 = 1u;
    var var_8 = Struct_1(-767f, var_4.a.yx);
    let x = u_input.a;
    s_output = StorageBuffer(var_8.b, 778f, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.a), u_input.c.x), ~38784u, (u_input.b.x >> (u_input.b.x % 32u)) >> (0u % 32u)), u_input.c.x));
}

