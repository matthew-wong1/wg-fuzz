struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(!select(vec4<bool>(false, arg_3.a.x, true, all(arg_1.a.xwx)), vec4<bool>(any(arg_3.a.wzx), true, select(arg_1.a.x, arg_3.a.x, arg_1.a.x), true), select(select(arg_3.a, vec4<bool>(arg_2.x, false, false, arg_1.a.x), false), select(arg_1.a, arg_1.a, vec4<bool>(true, arg_1.a.x, true, false)), !arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(317f)))))));
    let var_1 = ~(~firstLeadingBit(37256u >> (1u % 32u))) ^ (reverseBits(abs(~73282u)) << (select(abs(~4294967295u), ~31868u, true) % 32u));
    return -abs(-vec3<i32>(-1547i, -18468i, _wgslsmith_mod_i32(u_input.a, 17094i)));
}

fn func_2() -> bool {
    var var_0 = select(!any(vec4<bool>(true, true, true, true)), false, true);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(-(~func_3(vec2<f32>(-599f, 816f), Struct_1(vec4<bool>(false, true, false, true), -1204f), vec2<bool>(false, true), Struct_1(vec4<bool>(false, false, false, true), -1815f))), vec3<i32>(~reverseBits(1554i), _wgslsmith_clamp_i32(u_input.a, u_input.a, -1955i) & (i32(-1i) * -25292i), -select(-2147483647i, 24087i, false))), min(firstLeadingBit(-11588i), -1963i), u_input.a);
    let var_2 = vec4<u32>(reverseBits(reverseBits(0u)), reverseBits(min(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u))), reverseBits(66852u))), _wgslsmith_add_u32(11068u, 46463u) ^ _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(48842u, 24822u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 72556u)) | 1u), ~(~1u));
    var_0 = !(!(true & all(vec2<bool>(true, true)))) && any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(false, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(true, true)), true));
    let var_3 = _wgslsmith_dot_vec4_u32(var_2, var_2);
    return false;
}

fn func_1(arg_0: i32) -> bool {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(func_1(23558i), true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f - 1000f)))));
    let var_1 = vec2<bool>(false, var_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(abs(var_0.b));
    var var_3 = -(~vec4<i32>(u_input.a, u_input.a, 2147483647i, countOneBits(u_input.a)));
    var_3 = _wgslsmith_div_vec4_i32(abs((vec4<i32>(-1i) * -vec4<i32>(41766i, -13470i, 2147483647i, -1i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-34735i, var_3.x, 21724i, 28554i) << (vec4<u32>(0u, 0u, 6916u, 20152u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, var_3.x, 10091i, var_3.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-13493i, u_input.a, var_3.x, var_3.x), vec4<i32>(-2147483647i, 2147483647i, 2147483647i, u_input.a), vec4<i32>(u_input.a, 1i, 2147483647i, u_input.a)))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~max(vec4<i32>(u_input.a, var_3.x, var_3.x, 2147483647i), vec4<i32>(var_3.x, -2147483647i, 22456i, 67108i)), vec4<i32>(-1i, 24492i, var_3.x, 10231i)), abs(vec4<i32>(8770i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, u_input.a), var_3.xx), var_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-17787i, var_3.x, -53924i, u_input.a), vec4<i32>(2147483647i, -7491i, -7411i, var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b, 551f, _wgslsmith_f_op_f32(1540f - var_0.b)))), vec3<i32>(u_input.a, min(~u_input.a, 2147483647i), var_3.x), -49321i, var_3.yyz, ~max((i32(-1i) * -26512i) & _wgslsmith_sub_i32(-67822i, var_3.x), -1i));
}

