struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = min(countOneBits(~4294967295u), ~(~(~_wgslsmith_mod_u32(u_input.a, u_input.c))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + 428f), _wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-148f))))))), ~(~(~abs(1u))), u_input.b);
    var var_2 = Struct_1(arg_0.a, 16135u, u_input.b);
    var var_3 = _wgslsmith_f_op_f32(ceil(var_1.a.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.zz) + arg_0.a.zy);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1926f, 352f), var_2.a.x, global0.x))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1182f, arg_1, -300f) - vec3<f32>(941f, arg_0.a.x, 2267f)))), ~var_0, u_input.b)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(arg_0.a)), 14994u, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-907i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-17062i, u_input.b), vec2<i32>(15590i, -1i))) ^ ~arg_0.c, 5007i, 19816i));
    let var_3 = ~(~firstTrailingBit(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(5420u, 31324u), vec2<u32>(arg_0.b, 21915u)))));
    let var_4 = global0.yzw;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1326f, _wgslsmith_f_op_f32(-var_2.a.x))) - -1358f)));
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_add_u32(select(abs(u_input.c), u_input.c, global0.x & (u_input.b >= ~2147483647i)), 2426u);
    var var_1 = !(!global0.wyy);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, 895f, -218f) * vec3<f32>(1081f, -1181f, -2365f)), u_input.c, u_input.b), _wgslsmith_f_op_f32(920f * _wgslsmith_f_op_f32(trunc(1056f))), 28497u)) * -731f), 845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(351f - 1139f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(firstLeadingBit(u_input.a), ~select(~firstLeadingBit(u_input.a), 1u, global0.x || false), 17749u, ~(_wgslsmith_div_u32(u_input.c, ~1u) << (~(~28983u) % 32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-497f, -1770f, -1000f), vec3<f32>(257f, 1052f, 1403f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -827f, 1029f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-937f, -1176f, 341f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-464f, 715f, 942f), vec3<f32>(-1523f, -1182f, -691f)))))))), ~12854u, u_input.b);
    global0 = select(select(vec4<bool>(global0.x, !(global0.x == global0.x), true, all(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, false, true), false))), select(select(!vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true)), true), select(vec4<bool>(true, global0.x, true, false), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), vec4<bool>(true, false, global0.x, false)), any(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, false, global0.x, false)))), vec4<bool>(false, true, global0.x & all(vec4<bool>(global0.x, false, global0.x, global0.x)), select(!global0.x, global0.x, true))), vec4<bool>(var_1.b != firstLeadingBit(abs(var_1.b)), true, global0.x, global0.x), !select(!vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(all(vec2<bool>(false, global0.x)), false || global0.x, true, var_1.c >= u_input.b), vec4<bool>(false, !global0.x, global0.x, any(global0.yz))));
    global0 = !select(select(select(vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(global0.x, true, global0.x, global0.x), !vec4<bool>(false, global0.x, global0.x, global0.x)), select(!vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x)), select(vec4<bool>(true, global0.x, false, true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(true, false, global0.x, global0.x))), select(!(!vec4<bool>(false, global0.x, global0.x, false)), select(vec4<bool>(global0.x, global0.x, false, false), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, global0.x, global0.x, false)), vec4<bool>(global0.x, false, global0.x, false)), firstTrailingBit(4294967295u) != var_1.b), vec4<bool>(false, !global0.x, (var_0.x & var_0.x) > var_1.b, false));
    let var_2 = !(!(!(!select(global0.zz, global0.yx, global0.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-757f, 1091f, var_1.a.x), vec3<f32>(1000f, 312f, var_1.a.x)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.a))))), u_input.c, -2147483647i);
    var var_4 = var_1;
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_4.a.x + var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x), _wgslsmith_f_op_f32(func_2(var_1, _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_dot_vec4_u32(var_0, var_0))))), ~4294967295u, (~2723i | _wgslsmith_mult_i32(u_input.b, max(var_1.c, 69877i))) ^ u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(max(var_1.c, 40126i), u_input.b), _wgslsmith_sub_i32(-22456i, 1i)) >> (vec2<u32>(~(2310u ^ var_3.b), 15922u) % vec2<u32>(32u)), ~countOneBits(vec3<i32>(2147483647i, 9783i, min(2147483647i, u_input.b))), select(vec3<i32>(u_input.b, countOneBits(-24515i), ~0i) ^ vec3<i32>(2147483647i, 38510i, -26361i), -(~vec3<i32>(var_1.c, u_input.b, -1i)), true), u_input.c);
}

