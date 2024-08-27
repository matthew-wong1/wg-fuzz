struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    var var_1 = vec3<i32>(_wgslsmith_add_i32(countOneBits(_wgslsmith_sub_i32(arg_2.x, 2147483647i)), -u_input.a.x) | -_wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(u_input.b.x, 2147483647i), -1i), arg_2.x, min(-2147483647i, ~abs(_wgslsmith_sub_i32(1i, u_input.b.x))));
    var var_2 = true;
    var_1 = vec3<i32>(var_1.x, -2147483647i, ~2365i);
    var_2 = any(vec3<bool>(arg_0.x, true, true));
    return any(!(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(!((func_3(vec3<bool>(false, true, false), arg_1, u_input.a, Struct_1(vec2<f32>(arg_1.a.x, -454f), 167f)) || any(vec2<bool>(true, true))) & true), true, true);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - arg_1.a.x))), arg_1.a.x)));
    let var_2 = vec2<i32>(firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.a) ^ _wgslsmith_mod_i32(u_input.a.x, u_input.b.x))), arg_0);
    let var_3 = arg_1;
    let var_4 = vec3<f32>(440f, _wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(-501f * arg_1.b));
    return var_3;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    var var_0 = vec4<bool>(true, arg_2, all(vec4<bool>(!(!arg_0), true && arg_2, arg_2, true & arg_0)), all(select(arg_1, select(vec2<bool>(true, arg_2), !arg_1, vec2<bool>(false, arg_0)), false)));
    var_0 = vec4<bool>(true, var_0.x, 4925u <= (1u | _wgslsmith_sub_u32(1u, u_input.c)), 1i > u_input.b.x);
    let var_1 = func_2(i32(-1i) * -(~1i), Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(214f, 408f, true)), _wgslsmith_f_op_f32(f32(-1f) * -885f)), 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, 752f, false)), _wgslsmith_f_op_f32(ceil(393f))))))));
    var_0 = !vec4<bool>(any(vec3<bool>(false, arg_1.x, true)), arg_2, any(!var_0.zy), true);
    var_0 = select(!select(vec4<bool>(var_0.x, var_0.x, arg_1.x, arg_0), vec4<bool>(!arg_2, false, true, any(var_0.yzx)), vec4<bool>(u_input.a.x < -1i, arg_1.x, func_3(vec3<bool>(var_0.x, false, arg_0), Struct_1(vec2<f32>(var_1.a.x, -1491f), var_1.b), vec2<i32>(-1i, 1i), var_1), arg_1.x | arg_0)), select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1.x, var_0.x, false, arg_1.x), vec4<bool>(var_0.x, true, arg_0, arg_2)), !vec4<bool>(false, var_0.x, false, true), !vec4<bool>(arg_2, var_0.x, arg_1.x, arg_0)), !select(vec4<bool>(true, arg_1.x, false, arg_2), vec4<bool>(var_0.x, true, false, true), all(var_0.wx)), all(!(!vec4<bool>(false, true, true, var_0.x)))), !(_wgslsmith_f_op_f32(f32(-1f) * -1310f) > _wgslsmith_f_op_f32(trunc(196f))) | arg_0);
    return _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(29438u, ~(~4294967295u)), _wgslsmith_sub_u32(~firstTrailingBit(u_input.d), _wgslsmith_sub_u32(u_input.c, 62719u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = countOneBits(abs(~(-vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x))));
    var_0 = ~(abs(vec4<i32>(21627i, ~(-2147483647i), 1i, 13580i)) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.c, u_input.d, u_input.c, u_input.c)), countOneBits(vec4<u32>(41184u, u_input.d, u_input.d, 4294967295u)) ^ vec4<u32>(u_input.d, 4294967295u, u_input.c, u_input.c)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(41795u, max(u_input.c, ~u_input.d), _wgslsmith_clamp_u32(u_input.d, 0u, u_input.d) ^ min(27985u, u_input.d), 48891u), vec4<u32>(~(~u_input.c), u_input.c, func_1(true, vec2<bool>(false, false), select(false, false, true)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 111731u), vec2<u32>(u_input.c, 16007u), vec2<bool>(false, false)), vec2<u32>(547u, 70541u) | vec2<u32>(0u, u_input.c)))) ^ ~max(vec4<u32>(1u, 1u, ~u_input.d, _wgslsmith_add_u32(u_input.c, 24504u)), ~abs(vec4<u32>(419u, u_input.d, u_input.d, 115385u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1041f, _wgslsmith_f_op_f32(f32(-1f) * -653f), -1173f, 819f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1095f, 1000f, 240f, 732f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(630f, 122f, 628f, -682f) - vec4<f32>(1107f, 1186f, 574f, 535f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1223f, 1337f, -165f, 1686f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, -644f, 798f, -1681f))))), 24948u, vec4<i32>(var_0.x, -abs(_wgslsmith_add_i32(47362i, 1i)), u_input.a.x, ~firstTrailingBit(16475i) | -10983i), -2147483647i);
}

