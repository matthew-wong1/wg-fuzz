struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    return _wgslsmith_div_f32(-104f, -875f);
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.c << (~68409u % 32u), _wgslsmith_clamp_u32(u_input.b.x, ~u_input.a.x, u_input.d)) & countOneBits(u_input.c), 4294967295u, u_input.d << (u_input.a.x % 32u), ~_wgslsmith_sub_u32(~u_input.b.x, u_input.b.x));
    var var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(select(_wgslsmith_div_vec4_u32(var_0 | vec4<u32>(var_0.x, u_input.b.x, 0u, var_0.x), abs(u_input.a)), u_input.a, any(vec4<bool>(false, true, false, false)) || all(vec2<bool>(false, false)))), vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(0u, var_0.x)), 59030u, var_0.x, u_input.d) ^ ~(~abs(u_input.a)));
    var var_2 = ~vec4<i32>(-_wgslsmith_div_i32(arg_0 | 1i, countOneBits(21188i)), ~firstTrailingBit(countOneBits(-4903i)), -56135i, ~(-2147483647i));
    var_2 = firstLeadingBit(vec4<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_2.x, 11859i))), var_2.x, _wgslsmith_sub_i32(2147483647i, min(-35547i, _wgslsmith_div_i32(-47845i, arg_0))), -18207i));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1030f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1262f + 973f))) * -926f) - -871f);
    return 1u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec2<f32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_u32(func_3(-2147483647i), countOneBits(~4294967295u)), _wgslsmith_f_op_vec3_f32(-arg_0)));
    var var_1 = Struct_1(~abs(~4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.b.x, arg_0.x, 1000f), arg_0, vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(round(var_0.a.b)))))));
    var var_2 = 4294967295u;
    let var_3 = 91409u < _wgslsmith_sub_u32(arg_1.x, ~(~(~46615u)));
    var var_4 = select(true, var_3, true);
    return vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-877f + -842f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.a.b.x)))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: u32) -> f32 {
    var var_0 = abs(arg_0.x);
    var_0 = ~arg_0.x;
    var_0 = abs(u_input.b.x) | 0u;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(-177f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(179f * 1299f), arg_1.x), arg_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, -132f, -364f)))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), -300f, 1445f)))));
    var var_2 = ~_wgslsmith_div_u32(u_input.c, arg_0.x | _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, 15079u), ~u_input.a.yy));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = true;
    let var_1 = vec2<i32>(~(~50355i), ~(~_wgslsmith_sub_i32(~(-1i), i32(-1i) * -15153i)));
    var_0 = all(vec3<bool>(true, true, true));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(func_1())) != _wgslsmith_f_op_f32(func_4(u_input.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -105f, 100f)), vec4<u32>(17758u, 63603u, u_input.a.x, 0u), var_1)))), u_input.b, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 1i), vec4<i32>(-1461i, -2147483647i, var_1.x, var_1.x)), _wgslsmith_mult_i32(var_1.x, -2147483647i))), u_input.a, vec2<u32>(u_input.a.x, firstLeadingBit(u_input.c & _wgslsmith_sub_u32(345u, 0u))), -1000f, firstTrailingBit(abs(-(vec4<i32>(var_1.x, var_1.x, var_1.x, -17040i) >> (vec4<u32>(0u, 29791u, u_input.a.x, 4294967295u) % vec4<u32>(32u))))));
}

