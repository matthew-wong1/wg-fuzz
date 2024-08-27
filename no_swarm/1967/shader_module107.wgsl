struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = vec3<i32>(1i, _wgslsmith_add_i32(~((-2234i >> (global1.x % 32u)) << (_wgslsmith_sub_u32(4294967295u, 0u) % 32u)), ~1i), abs(select(_wgslsmith_mult_i32(-30547i, i32(-1i) * -12344i), -2147483647i, select(true, any(vec3<bool>(true, true, global0.x)), false))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2754f + -419f) - 1252f), 605f), _wgslsmith_f_op_f32(select(-142f, _wgslsmith_f_op_f32(-1142f - _wgslsmith_f_op_f32(1965f * 794f)), true)), true))));
    let var_2 = Struct_1(select(!(!(!vec4<bool>(true, global0.x, global0.x, global0.x))), vec4<bool>(!all(vec3<bool>(global0.x, true, global0.x)), !(!global0.x), global0.x, false), vec4<bool>(true || all(vec2<bool>(global0.x, false)), true, !all(vec3<bool>(true, global0.x, false)), select(!global0.x, any(vec2<bool>(global0.x, false)), global0.x & global0.x))), vec4<i32>(35148i, var_0.x, firstTrailingBit(1i), -select(var_0.x, 55570i, false)) << (~(~vec4<u32>(4294967295u, global1.x, 4294967295u, u_input.a)) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1005f * -896f), -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -1439f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-534f - 372f), _wgslsmith_f_op_f32(sign(-192f)), !var_2.a.x))), 1025f));
    var var_4 = global1.yy;
    return (-(~var_2.b.x) << (~_wgslsmith_clamp_u32(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_4.x, var_4.x, global1.x), vec4<u32>(19892u, var_4.x, 0u, global1.x)), _wgslsmith_div_u32(37069u, u_input.a)) % 32u)) << (min(_wgslsmith_clamp_u32(1u, min(101421u, min(u_input.a, var_4.x)), select(~global1.x, _wgslsmith_sub_u32(1u, u_input.a), false)), abs(~39927u)) % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: i32) -> bool {
    var var_0 = Struct_2(vec2<i32>(arg_3, 1i), -arg_3);
    global0 = !(!arg_1.wy);
    var var_1 = select(arg_1, arg_1, true);
    var var_2 = Struct_2(vec2<i32>(func_3(), firstLeadingBit(_wgslsmith_mod_i32(-2147483647i >> (u_input.a % 32u), var_0.b))), abs(var_0.b));
    var var_3 = Struct_3(-286f, vec4<bool>(true, true, all(arg_0.yy), (-arg_3 == -20111i) | any(select(vec4<bool>(arg_2, false, var_1.x, true), arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, global0.x)))), !(!arg_1.zyx), Struct_1(vec4<bool>(!arg_1.x, true, true, arg_2), -(vec4<i32>(1i, 1i, 1i, 1i) | vec4<i32>(1i, arg_3, arg_3, 8356i))));
    return var_1.x;
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-627f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -266f))))));
    global0 = select(!vec2<bool>(global1.x >= ~global1.x, true), select(select(select(!vec2<bool>(global0.x, false), !vec2<bool>(global0.x, global0.x), global0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), !(!vec2<bool>(true, global0.x)), global0.x), select(!vec2<bool>(func_2(vec3<bool>(global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, false), global0.x, arg_0.x), global0.x), !vec2<bool>(true, any(vec3<bool>(global0.x, global0.x, true))), global0.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-239f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1525f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -164f)))))));
    let var_2 = 0i;
    var var_3 = 0i;
    return true || any(select(!vec4<bool>(global0.x, global0.x, global0.x, false), !(!vec4<bool>(false, true, global0.x, global0.x)), !vec4<bool>(global0.x, false, true, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(vec2<bool>(true, true), vec2<bool>(false, global0.x), all(vec2<bool>(global0.x, false))), select(vec2<bool>(true, true), !select(!vec2<bool>(global0.x, false), select(vec2<bool>(true, false), vec2<bool>(true, true), global0.x), vec2<bool>(global0.x, global0.x)), func_1(-(~vec4<i32>(5247i, -1i, 2147483647i, -29152i)))), select(select(vec2<bool>(true, any(vec3<bool>(true, true, global0.x))), select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), !(!vec2<bool>(false, global0.x))), vec2<bool>(true, all(vec3<bool>(true, global0.x, global0.x)) & global0.x), select(select(vec2<bool>(global0.x, true), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), global0.x), select(vec2<bool>(true, global0.x), !vec2<bool>(global0.x, global0.x), global0.x), true)));
    global0 = vec2<bool>(true, false);
    let var_0 = vec3<u32>(24551u, _wgslsmith_mult_u32(0u, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global1.x, global1.x), _wgslsmith_sub_u32(u_input.a, u_input.a), 4294967295u)), global1.x);
    global0 = select(vec2<bool>(true, all(vec4<bool>(true, true, select(global0.x, false, global0.x), any(vec4<bool>(global0.x, false, global0.x, false))))), vec2<bool>(global0.x, func_1(vec4<i32>(-11887i, 52631i, abs(13745i), abs(-20894i)))), global0.x);
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(global1.yz, abs(vec2<u32>(var_0.x, 0u) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), false)), ~(~countOneBits(var_0) ^ vec3<u32>(global1.x, 13351u, global1.x)), 14552u, var_0);
}

