struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a, -1318f, 1255f, arg_1.a), vec4<f32>(arg_1.a, arg_1.a, -1342f, arg_1.a)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1681f, 2065f, -1266f, arg_1.a) - vec4<f32>(546f, -345f, -765f, arg_1.a))))) - vec4<f32>(arg_1.a, 1096f, 298f, 1626f))));
    let var_1 = Struct_2(true);
    var var_2 = _wgslsmith_f_op_f32(floor(-521f));
    var var_3 = vec4<bool>(all(vec4<bool>(true && var_1.a, true, var_1.a, any(select(vec4<bool>(var_1.a, true, true, var_1.a), vec4<bool>(true, arg_2, false, arg_2), arg_2)))), false, !var_1.a, false);
    var_3 = vec4<bool>(false, !any(vec4<bool>(false, all(var_3.wy), any(vec3<bool>(false, var_1.a, false)), arg_2)), true, all(vec4<bool>(!var_1.a, _wgslsmith_sub_i32(arg_0, arg_0) >= u_input.a, var_3.x, -148f != arg_1.a)));
    return _wgslsmith_add_u32(~max(countOneBits(272u), _wgslsmith_mult_u32(1u, 1u)), _wgslsmith_sub_u32(0u << (1u % 32u), ~(~43589u) >> ((10907u & _wgslsmith_dot_vec4_u32(vec4<u32>(30910u, 4294967295u, 85092u, 0u), vec4<u32>(0u, 0u, 1u, 21824u))) % 32u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> bool {
    global0 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(min(select(0u, 4294967295u, true), 1u), func_3(u_input.a | 23870i, Struct_1(-123f), any(vec3<bool>(false, false, true))), ~(~0u)), ~0u), _wgslsmith_dot_vec2_u32(select(~max(vec2<u32>(16078u, 41867u), vec2<u32>(4294967295u, 0u)), vec2<u32>(min(4294967295u, 27696u), abs(33328u)), true), ~(~(~vec2<u32>(0u, 1u)))));
    global0 = firstTrailingBit(0u);
    global0 = 43033u;
    var var_0 = u_input.a;
    var_0 = u_input.a;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    global0 = _wgslsmith_clamp_u32(~4294967295u, ~(~max(29220u, 31088u)), 105940u) >> (~_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 31241u))) % 32u);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -808f));
    global0 = min(~52480u >> (0u % 32u), 0u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), 177f)))), _wgslsmith_f_op_f32(abs(arg_3.x)), arg_2)));
    var var_2 = 1340f;
    return Struct_2(all(!vec4<bool>(arg_2, func_2(vec2<f32>(1075f, -1000f), u_input.a), arg_0.x, true)));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = func_4(vec2<bool>(true, true && func_2(vec2<f32>(1240f, arg_0.a), u_input.a)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(arg_0.a + 279f)), 446f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f)) == arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(327f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1577f), _wgslsmith_f_op_f32(round(272f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1142f, -310f, -326f, arg_0.a) * vec4<f32>(arg_0.a, -1000f, 804f, -148f))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1266f, _wgslsmith_f_op_f32(100f + arg_0.a), _wgslsmith_f_op_f32(abs(arg_0.a)), arg_0.a)))));
    global0 = func_3(~(~0i) << (abs(0u) % 32u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-arg_0.a))) - -840f)), all(vec3<bool>(true, var_0.a, var_0.a)) && false);
    var var_1 = select(-2147483647i, ~2646i, true) << (1u % 32u);
    var var_2 = -reverseBits(vec2<i32>(u_input.a, u_input.a ^ ~u_input.a));
    var_2 = -_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(1i, 1i)), select(~max(vec2<i32>(var_2.x, 0i), vec2<i32>(u_input.a, var_2.x)), ~vec2<i32>(-53312i, u_input.a), var_0.a));
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(-613f)), _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(exp2(arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(_wgslsmith_f_op_f32(max(var_0, 541f)))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_0))), -620f, _wgslsmith_f_op_f32(f32(-1f) * -1018f)) * vec3<f32>(_wgslsmith_div_f32(-399f, var_0), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_0))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, var_1.x, 617f) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(1072f, var_1.x, 356f))))), true));
    var var_3 = !select(!vec2<bool>(any(vec4<bool>(false, false, false, false)), func_4(vec2<bool>(false, true), Struct_1(var_2.x), true, vec4<f32>(236f, var_2.x, -1243f, var_1.x)).a), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(select(false, false, false), true), true), false);
    var_3 = !(!select(vec2<bool>(var_3.x || var_3.x, !var_3.x), !(!vec2<bool>(var_3.x, true)), !(!vec2<bool>(var_3.x, var_3.x))));
    let var_4 = 13557i;
    var var_5 = vec4<bool>(any(!select(select(vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(true, true, true, false), var_3.x), select(vec4<bool>(var_3.x, true, var_3.x, false), vec4<bool>(false, var_3.x, false, true), vec4<bool>(false, var_3.x, true, var_3.x)), !var_3.x)), !var_3.x, true, true);
    let var_6 = Struct_1(_wgslsmith_f_op_f32(floor(638f)));
    let x = u_input.a;
    s_output = StorageBuffer(986f);
}

