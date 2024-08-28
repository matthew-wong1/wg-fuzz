struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = -1867f;
    let var_1 = arg_2.x;
    var var_2 = vec4<bool>(!arg_2.x, all(!(!vec4<bool>(false, arg_0, var_1, arg_0))) || var_1, countOneBits(-1i) != ~(u_input.b << (0u % 32u)), var_1 && false);
    var var_3 = -abs(vec4<i32>(i32(-1i) * -42355i, _wgslsmith_mod_i32(-2147483647i, -1i), u_input.a.x, u_input.b) & vec4<i32>(_wgslsmith_div_i32(1i, -1i), firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, -16944i), min(u_input.b, -2147483647i)));
    var var_4 = ~vec4<u32>(arg_1.x | _wgslsmith_mult_u32(4294967295u, arg_1.x << (arg_1.x % 32u)), arg_1.x, 1u, ~(~arg_1.x & countOneBits(4294967295u)));
    return 491f;
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), (arg_0.x != arg_0.x) | any(vec4<bool>(false, false, true, false))), select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = !(!vec2<bool>(1u == select(3080u, arg_0.x, var_0), false));
    var_1 = vec2<bool>(var_0, var_1.x);
    var_1 = vec2<bool>(var_0, var_1.x & false);
    var var_2 = vec3<bool>(47307i <= u_input.a.x, any(select(!(!vec3<bool>(var_0, false, var_0)), !(!vec3<bool>(var_1.x, var_1.x, true)), var_1.x)), any(vec4<bool>(any(select(vec2<bool>(var_0, false), vec2<bool>(true, var_1.x), vec2<bool>(var_0, var_0))), true, select(var_1.x, false, false) & var_0, true)));
    return countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_0, ~vec2<u32>(4294967295u, 1u)), select(abs(arg_0), vec2<u32>(arg_0.x, arg_0.x), !var_0)) >> (arg_0 % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(352f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a)))), _wgslsmith_f_op_f32(-718f - var_0.a))), vec3<bool>(arg_0.b.x, !var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -411f) > var_0.a), _wgslsmith_dot_vec2_u32(((vec2<u32>(28238u, var_0.c) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) ^ firstLeadingBit(vec2<u32>(92031u, 4294967295u))) & vec2<u32>(arg_0.c, ~arg_0.c), func_3(select(vec2<u32>(1u, 0u), vec2<u32>(1u, 42119u), true))));
    var var_1 = arg_0.c << (~(~17475u | arg_0.c) % 32u);
    let var_2 = u_input.a.yx;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-645f))))));
    return _wgslsmith_f_op_f32(-var_0.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> StorageBuffer {
    let var_0 = 276f;
    let var_1 = countOneBits(~arg_1.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-205f, -218f, -212f) - _wgslsmith_f_op_vec3_f32(arg_3.yww - vec3<f32>(-1050f, arg_3.x, var_0))) * vec3<f32>(arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(959f)), _wgslsmith_f_op_f32(func_1(true, arg_1.zzy, vec3<bool>(false, false, false)))), 1f)));
    let var_3 = arg_1;
    let var_4 = Struct_1(var_2.x, select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), vec3<bool>(_wgslsmith_sub_u32(arg_1.x, arg_1.x) >= select(50525u, 0u, true), all(vec2<bool>(true, true)), !all(vec4<bool>(true, false, false, true))), true), var_3.x);
    return StorageBuffer(-24116i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_1(select(true, true, false), ~vec3<u32>(17148u, 62100u, 4294967295u), vec3<bool>(true, true, true))), -647f)))));
    var var_1 = ~1u;
    var var_2 = firstTrailingBit(1u);
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -844f))), -923f)), var_0.x)));
    var_1 = 43778u;
    let x = u_input.a;
    s_output = func_4(u_input.a.yy, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~abs(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 993f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, var_3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1431f, -948f, var_3.x))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-1034f)), var_0.x, _wgslsmith_f_op_f32(func_2(Struct_1(1826f, vec3<bool>(true, true, false), 1u), -3135i)), -285f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)))));
}

