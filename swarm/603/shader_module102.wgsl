struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = u_input.a;
    var_0 = vec2<i32>(-_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, 19545i, -1i, 6229i)), ~vec4<i32>(u_input.a.x, -25733i, -1i, 1i)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.wy << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 4294967295u)), u_input.b.xx) % 32u), arg_0.x);
    var_0 = arg_0.yx;
    var_0 = u_input.a;
    var var_1 = ~u_input.b.wxy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1351f, _wgslsmith_f_op_f32(abs(-1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f * -1281f))) * _wgslsmith_f_op_f32(f32(-1f) * -359f)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(1u, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1414f, -485f, -1154f, -2158f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, 623f, 754f, 1157f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1800f, -142f, 470f, -1815f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, -184f, -1110f, 1708f) + vec4<f32>(919f, 145f, 1079f, 659f)), !vec4<bool>(var_0.b, true, true, var_0.b)))))));
    var var_2 = 0i;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.b.yyw | u_input.b.www, u_input.b.wwy), ~u_input.b.wzy), var_0.b);
    let var_4 = Struct_1(~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_0.a, 0u), _wgslsmith_mod_u32(~25203u, ~u_input.b.x)), any(select(!vec3<bool>(false, arg_0.b, var_0.b), select(vec3<bool>(arg_0.b, true, false), vec3<bool>(true, true, var_0.b), true), !var_0.b)) && any(!select(vec4<bool>(var_3.b, arg_0.b, false, false), vec4<bool>(false, true, false, true), arg_0.b)));
    return _wgslsmith_f_op_f32(func_3(vec3<i32>(firstTrailingBit(~(~u_input.a.x)), i32(-1i) * -1i, -46659i)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = 1584u;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(242f, -1156f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1521f, _wgslsmith_f_op_f32(140f + -1521f))))));
    var_3 = _wgslsmith_f_op_f32(ceil(-237f));
    return Struct_1(~4294967295u, any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = any(vec3<bool>(_wgslsmith_mod_i32(1i, 1i) < ~u_input.a.x, true, !any(vec3<bool>(true, true, true))));
    var var_1 = func_1(Struct_1(~(~u_input.b.x), !all(vec4<bool>(true, false, true, true))));
    var var_2 = !(!func_1(func_1(Struct_1(0u, var_1.b))).b);
    var_2 = any(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(0u, var_1.a, var_1.a), vec3<u32>(1062u, 34295u, 1u) & u_input.b.xyy), max(~u_input.b.xyz, vec3<u32>(u_input.b.x, 0u, 52724u)) & _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, var_1.a), ~vec3<u32>(31442u, u_input.b.x, 10164u))), _wgslsmith_sub_vec2_i32(vec2<i32>(max(_wgslsmith_mod_i32(u_input.a.x, u_input.c), u_input.a.x), -u_input.a.x), firstTrailingBit(~_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(20333i, u_input.c)))), _wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(-6931i, u_input.c, u_input.c) & vec3<i32>(5975i, 0i, u_input.a.x)), vec3<i32>(-1i) * -select(vec3<i32>(1i, u_input.c, 0i), vec3<i32>(-1i, -99172i, u_input.c), var_1.b)), 4657u, ~(_wgslsmith_mult_u32(~0u, abs(var_1.a)) & countOneBits(var_1.a)));
}

