struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = Struct_1(max(~u_input.a, ~u_input.c.x));
    let var_1 = 634f;
    var var_2 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.b.x, 2147483647i)), u_input.b.yx);
    var var_3 = u_input.b;
    return 4294967295u;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    let var_0 = Struct_1(~(~1u));
    let var_1 = Struct_1(var_0.a);
    let var_2 = var_0;
    var var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_2.a, var_2.a, 11317u)), ~u_input.c) | 21425u, u_input.c.x));
    return _wgslsmith_add_u32(4294967295u, reverseBits(var_3.a));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = u_input.c.x;
    var var_1 = u_input.c;
    var_1 = vec3<u32>(u_input.c.x, 4294967295u, 77252u);
    var_0 = min(func_3(vec4<i32>(-1i, -(~1i), u_input.b.x, -1i), arg_0), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_1.x, 4294967295u), u_input.c.yx, true), u_input.c.zy), ~u_input.c.zy | vec2<u32>(var_1.x, 41049u))));
    var_1 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(~var_1.x, 0u >> (var_1.x % 32u), 4294967295u), vec3<u32>(~(0u >> (0u % 32u)), ~max(57613u, 103886u), _wgslsmith_sub_u32(u_input.a, min(29005u, var_1.x))));
    return 43219u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = -firstLeadingBit(_wgslsmith_mod_i32(u_input.b.x, -20361i) << (arg_1 % 32u));
    let var_1 = ~arg_1;
    var var_2 = _wgslsmith_clamp_u32(arg_1, 33137u, 30104u);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1190f - -594f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-460f)), _wgslsmith_f_op_f32(f32(-1f) * -836f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 112f))))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(277f - -632f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(3133f * 197f), -294f, arg_1 >= arg_0.a)))));
    var var_4 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~((firstTrailingBit(u_input.a) << (func_1(false, -987f) % 32u)) | firstTrailingBit(~18660u)));
    let var_1 = var_0;
    var var_2 = func_4(Struct_1(69068u), func_2(true), select(vec4<bool>(true, true, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_0.a, 0u, 0u)) == (u_input.a >> (57830u % 32u)), select(true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), true)), -u_input.b.x);
    var_2 = func_4(Struct_1(4294967295u), ~4294967295u, select(vec4<bool>(true, true, false, false), !vec4<bool>(select(false, true, true), true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), all(vec3<bool>(true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), all(vec4<bool>(false, false, false, true))))), _wgslsmith_div_i32(u_input.b.x, u_input.b.x));
    var_2 = Struct_1(_wgslsmith_div_u32(26047u, _wgslsmith_div_u32(abs(min(u_input.c.x, var_0.a)), func_4(Struct_1(var_0.a), var_1.a, vec4<bool>(false, false, false, true), _wgslsmith_add_i32(2147483647i, u_input.b.x)).a)));
    var var_3 = 1f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2162f)));
    var var_4 = func_4(var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~24981u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 0u), 1u)), u_input.c), !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true)), _wgslsmith_div_i32(u_input.b.x, -(~0i)));
    let x = u_input.a;
    s_output = StorageBuffer(15922i);
}

