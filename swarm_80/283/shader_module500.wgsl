struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 2147483647i, -27094i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_0.xz;
    let var_1 = reverseBits(~vec2<u32>(4294967295u, ~u_input.a)) >> (~vec2<u32>(~(51736u << (1u % 32u)), ~4294967295u) % vec2<u32>(32u));
    let var_2 = reverseBits((u_input.c & min(firstLeadingBit(u_input.a), ~u_input.a)) & ~reverseBits(4294967295u));
    var var_3 = arg_3;
    let var_4 = Struct_1(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_1.x, var_3.d.x)), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(arg_3.d, var_3.d))) & ~_wgslsmith_mult_vec2_u32(~var_1, max(var_1, vec2<u32>(3882u, 0u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~arg_3.d, vec3<u32>(var_3.a.x, ~70527u, countOneBits(var_3.d.x))), max(firstLeadingBit(abs(19911u)), ~(~u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), vec3<u32>(1u, var_2, firstLeadingBit(select(16981u, 37889u, true))), (vec2<i32>(_wgslsmith_clamp_i32(1i, 1i, 1i), 7460i) & _wgslsmith_mult_vec2_i32(max(vec2<i32>(-2147483647i, var_3.e.x), var_3.e), vec2<i32>(1i, 1i))) >> (vec2<u32>(~var_1.x, _wgslsmith_mult_u32(4294967295u, 1u)) % vec2<u32>(32u)));
    return var_4.d.zy;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(13056u, u_input.c), vec2<u32>(~_wgslsmith_add_u32(u_input.c, 4294967295u), 1u), _wgslsmith_sub_vec2_u32(~vec2<u32>(37919u, u_input.c) | func_3(vec3<f32>(2108f, arg_1, 290f), arg_0.yww, vec3<u32>(4294967295u, u_input.a, 2092u), Struct_1(vec2<u32>(u_input.a, 4294967295u), u_input.c, -282f, vec3<u32>(50093u, 21723u, u_input.c), vec2<i32>(2147483647i, global0.x))), vec2<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(32846u, u_input.c, 47443u))))), 1u, _wgslsmith_f_op_f32(f32(-1f) * -1318f), ~vec3<u32>(~35190u, u_input.c, abs(52534u)), abs(vec2<i32>(_wgslsmith_mod_i32(2147483647i, 5713i), -2893i) >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 27600u), vec2<u32>(33667u, u_input.a)) & (vec2<u32>(40285u, u_input.c) & vec2<u32>(u_input.a, 826u))) % vec2<u32>(32u))));
    let var_1 = -2147483647i;
    global0 = vec3<i32>(~var_1, -u_input.d.x, -2147483647i);
    let var_2 = true;
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(-var_0.c);
}

fn func_1(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(205f * -679f), -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-410f, -1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1412f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, arg_0, false, true), vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, false, arg_0, false)), -1251f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, -567f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, 433f), vec4<f32>(-263f, var_0.x, var_0.x, 769f))))))))));
    let var_2 = _wgslsmith_f_op_f32(floor(-1000f));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_0, arg_0, !arg_0 || (arg_0 & true), (false && arg_0) | any(vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -632f))))), _wgslsmith_f_op_f32(-var_1.x));
    var var_3 = vec3<i32>(~((i32(-1i) * -11378i) | global0.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d, firstTrailingBit(vec3<i32>(global0.x, global0.x, -20857i))), -(u_input.d << (vec3<u32>(1u, 54253u, 4294967295u) % vec3<u32>(32u)))), 1i) | _wgslsmith_div_vec3_i32(~u_input.d, ~(min(u_input.d, u_input.d) | (u_input.d >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1285f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(34609u << (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(407f))), u_input.d.x, vec4<f32>(_wgslsmith_f_op_f32(1197f * _wgslsmith_f_op_f32(func_1(true, 1i))), _wgslsmith_div_f32(-452f, -1931f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(747f - 1052f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(789f + 174f) + -1249f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -623f))))), vec3<f32>(1f, 1f, 1f));
}

