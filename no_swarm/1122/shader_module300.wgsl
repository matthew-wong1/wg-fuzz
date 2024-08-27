struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1588f, arg_0.c, _wgslsmith_f_op_f32(arg_0.c * 1140f), _wgslsmith_f_op_f32(1897f - 1101f)))));
    var var_2 = vec4<u32>(var_0.c.a, arg_1, ~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(0u, var_0.d.x, 0u), countOneBits(1u)), 0u);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.c.c, _wgslsmith_f_op_f32(-arg_2.c.c))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.c.c + -1069f), _wgslsmith_f_op_f32(sign(arg_2.c.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(var_1.x - arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(ceil(arg_0.c)))));
    var var_3 = Struct_1(min(_wgslsmith_mod_u32(20945u >> (arg_2.d.x % 32u), 56994u) >> (~4294967295u % 32u), 4294967295u), !select(!vec4<bool>(arg_3, true, true, true), select(select(vec4<bool>(false, true, false, arg_3), arg_0.b, true), select(vec4<bool>(false, arg_0.b.x, true, true), vec4<bool>(false, arg_2.c.b.x, true, var_0.c.b.x), false), !arg_0.b), arg_0.d == -5689i), _wgslsmith_div_f32(arg_2.c.c, -833f), arg_0.d);
    return _wgslsmith_f_op_f32(933f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f * 555f)));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b, vec4<bool>(false, false, false, false), 1505f, 2147483647i), u_input.b, Struct_2(49188i, vec2<bool>(true, true), Struct_1(26288u, vec4<bool>(true, true, true, false), 845f, u_input.a.x), vec4<u32>(30417u, 54764u, u_input.b, u_input.b)), false)) + 1672f)) * -575f);
    var var_1 = all(select(vec2<bool>(any(vec3<bool>(true, true, true)), u_input.b < (u_input.b >> (u_input.b % 32u))), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(vec3<bool>(true, true, true)) | true));
    var_1 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), _wgslsmith_dot_vec2_i32(u_input.a, countOneBits(u_input.a)) <= 1i));
    var var_2 = reverseBits(25490u);
    var var_3 = var_0;
    return any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, select(true, false, false), true)));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(1u, 0u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), func_2()), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -1306f), 1i);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, -1572f, -635f, _wgslsmith_f_op_f32(var_0.c - -888f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c, var_0.c, 220f, var_0.c))) - vec4<f32>(var_0.c, 595f, var_0.c, var_0.c)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1482f, var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(59320u, vec4<bool>(true, var_0.b.x, true, false), 242f, var_0.d), 1u, Struct_2(-2147483647i, var_0.b.wx, var_0, vec4<u32>(2413u, var_0.a, 4294967295u, var_0.a)), var_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c + -444f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))));
    let var_2 = ~(~abs(select(vec3<u32>(0u, u_input.b, 90668u) >> (vec3<u32>(1u, 36288u, var_0.a) % vec3<u32>(32u)), vec3<u32>(24382u, u_input.b, u_input.b), select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(false, true, false), false))));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.c)))), _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_div_f32(var_1.x, var_0.c), -229f, -808f);
    let var_4 = var_0;
    return (i32(-1i) * -var_4.d) << (1728u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), vec2<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), select(select(all(vec4<bool>(true, true, false, false)), true, true), max(u_input.a.x, 27620i) < u_input.a.x, true)), Struct_1(u_input.b, !vec4<bool>(true, true, all(vec2<bool>(true, true)), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(622f + 1000f), _wgslsmith_f_op_f32(-1000f * 423f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1575f, 540f, false)) + _wgslsmith_div_f32(-1256f, 1487f))), _wgslsmith_mod_i32(29747i, 18783i)), abs(vec4<u32>(reverseBits(1u), ~u_input.b, 15765u, reverseBits(~0u))));
    var_0 = Struct_2(~var_0.c.d & -2147483647i, !vec2<bool>(select(func_2(), true, var_0.b.x || true), true), Struct_1(~(~1u), select(!select(var_0.c.b, vec4<bool>(var_0.b.x, false, false, var_0.b.x), vec4<bool>(true, var_0.c.b.x, var_0.c.b.x, true)), vec4<bool>(func_2(), true, true, !var_0.b.x), var_0.c.b), 1366f, -2147483647i), reverseBits(vec4<u32>(min(20343u, u_input.b), var_0.c.a, abs(4294967295u), var_0.c.a) >> (_wgslsmith_mult_vec4_u32(var_0.d, ~vec4<u32>(var_0.c.a, 1u, u_input.b, var_0.c.a)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.c - var_0.c.c)))))));
    var_0 = Struct_2(u_input.a.x, !(!(!var_0.b)), Struct_1(~(firstLeadingBit(u_input.b) ^ _wgslsmith_dot_vec4_u32(var_0.d, vec4<u32>(111986u, var_0.c.a, 4294967295u, u_input.b))), vec4<bool>(true && !var_0.b.x, !var_0.b.x, !(!var_0.c.b.x), !any(var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1491f * -175f) - 493f), countOneBits(-44853i)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(69608u, _wgslsmith_dot_vec2_u32(var_0.d.wy, var_0.d.yw), 76090u & var_0.d.x, 0u), select(_wgslsmith_sub_vec4_u32(var_0.d, var_0.d), var_0.d, vec4<bool>(true, true, true, true)))));
    let var_2 = var_0.c.a;
    var var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c))), _wgslsmith_f_op_f32(110f - _wgslsmith_f_op_f32(exp2(var_3.c))), var_3.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.c, var_3.c, 1017f, -1399f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c, var_3.c, -385f, -1000f), vec4<f32>(-136f, -144f, var_3.c, 1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(967f, var_0.c.c, var_3.c, var_3.c), vec4<f32>(var_0.c.c, var_3.c, 422f, 611f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.c, -1781f, var_3.c, var_3.c))))));
}

