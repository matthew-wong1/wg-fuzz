struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-14491i, 22135i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, arg_1.x), 1i, -11165i)), abs(vec3<i32>(11181i, -14732i, max(global0.c.x, global0.a.x)))), select(~select(vec3<u32>(0u, global0.b.x, 42408u) | u_input.b, _wgslsmith_mod_vec3_u32(u_input.b, u_input.b), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_u32(~(vec3<u32>(global0.b.x, global0.b.x, u_input.b.x) << (vec3<u32>(146603u, global0.b.x, global0.b.x) % vec3<u32>(32u))), u_input.b), vec3<bool>(true, ~4294967295u > u_input.b.x, true)), firstLeadingBit(vec2<i32>(-select(global0.a.x, -2147483647i, true), 2147483647i)));
    let var_1 = _wgslsmith_div_f32(-221f, arg_0);
    global0 = var_0;
    let var_2 = Struct_1(_wgslsmith_div_vec3_i32(global0.a, vec3<i32>(2147483647i, reverseBits(var_0.c.x), -37960i)) ^ _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, -3584i, 1i), _wgslsmith_mult_vec3_i32(var_0.a, vec3<i32>(29427i, 1i, u_input.a))), _wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(-58805i, var_0.c.x, -56892i))), firstTrailingBit(firstLeadingBit(~(~global0.b))), var_0.c);
    global0 = Struct_1(global0.a << (firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(81722u, 1u, 4294967295u), u_input.b) & abs(global0.b)) % vec3<u32>(32u)), ~abs(vec3<u32>(56571u, 1u, global0.b.x)), ~_wgslsmith_mod_vec2_i32(-var_0.a.xy, var_2.c));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-arg_0)))))), -1000f, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))))), 1572f);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -675f))))) + _wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1, arg_1, vec4<bool>(false, false, true, false)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(-1138f, arg_0.c)))))));
    var_0 = Struct_1(select(arg_0.a, var_0.a, !vec3<bool>(arg_1.x >= -1000f, true, true)), var_0.b, global0.a.xx);
    let var_2 = Struct_1(reverseBits(vec3<i32>(firstTrailingBit(1i), 0i, 0i)), select(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.b.x, 0u, 42553u), vec3<u32>(arg_0.b.x, ~u_input.b.x, countOneBits(4294967295u))), var_0.b, select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), vec3<bool>(true, any(vec3<bool>(true, false, true)), false), vec3<bool>(true, true, true))), ~select(vec2<i32>(min(arg_2, arg_0.a.x), global0.a.x), ~vec2<i32>(arg_0.a.x, arg_2), firstLeadingBit(2147483647i) == -arg_0.c.x));
    let var_3 = -479f;
    return !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)))) < _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(-vec3<i32>(select(u_input.a, reverseBits(-2147483647i), func_2(Struct_1(vec3<i32>(global0.a.x, -1i, 461i), vec3<u32>(65366u, global0.b.x, global0.b.x), global0.c), vec4<f32>(-1000f, 500f, 465f, 136f), global0.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(24369i, 47018i), vec2<i32>(u_input.a, 0i))), _wgslsmith_sub_i32(2147483647i, 2147483647i)), u_input.b, global0.c);
    var var_1 = _wgslsmith_div_vec2_u32(u_input.b.xz, vec2<u32>(0u, 1u));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-741f * _wgslsmith_f_op_f32(f32(-1f) * -326f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-129f * 1597f), -509f)))));
    var_2 = var_0;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = select(select(select(vec4<bool>(1u <= global0.b.x, true, !arg_1, true), vec4<bool>(all(vec2<bool>(arg_1, false)), arg_1, all(vec3<bool>(true, false, true)), true), select(vec4<bool>(false, arg_1, arg_1, arg_1), !vec4<bool>(true, false, false, arg_1), true)), vec4<bool>(all(!vec3<bool>(arg_1, true, arg_1)), false, !any(vec3<bool>(true, arg_1, true)), true), arg_1), vec4<bool>(false, all(select(vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(false, true, true), vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, false, false)), !vec3<bool>(false, false, arg_1))), any(select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), arg_1), !vec2<bool>(false, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1))), any(vec4<bool>(arg_1, arg_1, arg_1 & true, true))), arg_1);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, (u_input.b.x << (u_input.b.x % 32u)) | arg_0.b.x, ~(~u_input.b.x)), ~vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~global0.b.x, 4294967295u)) << (arg_0.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~global0.a), vec3<u32>(~(~88062u >> (global0.b.x % 32u)), func_4(func_1(), _wgslsmith_f_op_f32(-575f * -521f) < _wgslsmith_f_op_f32(round(-1302f))), _wgslsmith_clamp_u32(func_1().b.x, countOneBits(firstTrailingBit(1u)), 26066u >> ((u_input.b.x << (global0.b.x % 32u)) % 32u))), vec2<i32>(~min(_wgslsmith_mod_i32(u_input.a, global0.a.x), _wgslsmith_clamp_i32(0i, u_input.a, 1i)), -8680i));
    var var_1 = _wgslsmith_f_op_f32(-1149f + _wgslsmith_f_op_f32(1000f - -663f));
    let var_2 = func_2(Struct_1(_wgslsmith_add_vec3_i32(global0.a, _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global0.a, vec3<i32>(51290i, var_0.c.x, var_0.a.x)), vec3<i32>(0i, 0i, var_0.a.x) & vec3<i32>(global0.a.x, 9195i, -34387i))), u_input.b, var_0.a.xy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(119f, _wgslsmith_f_op_f32(-1650f + _wgslsmith_f_op_f32(-1000f * 768f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1657f)) * _wgslsmith_f_op_f32(ceil(174f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(754f, -292f)))))), _wgslsmith_div_i32(-35758i, _wgslsmith_dot_vec4_i32(reverseBits(select(vec4<i32>(global0.a.x, global0.a.x, -47497i, 60056i), vec4<i32>(var_0.a.x, 24408i, var_0.a.x, -16733i), true)), -vec4<i32>(var_0.a.x, -18556i, global0.a.x, -40572i) ^ ~vec4<i32>(3645i, u_input.a, var_0.c.x, -11428i))));
    global0 = func_1();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, var_0.c.x);
}

