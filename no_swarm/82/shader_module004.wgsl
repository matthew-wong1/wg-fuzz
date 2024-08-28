struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    return Struct_2(true, 55079i, ~u_input.c.x);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-618f, _wgslsmith_f_op_f32(trunc(1941f)), true)));
    var var_2 = Struct_3(u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-135f + 380f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-390f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -414f))));
    let var_4 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(f32(-1f) * -1061f)))), vec4<bool>(!all(vec2<bool>(true, false)), false, !all(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x));
    return all(select(vec4<bool>(!global0.x, _wgslsmith_div_i32(var_2.a, var_4.b) == -u_input.a.x, all(vec2<bool>(global0.x, var_4.a)), false), select(vec4<bool>(true, true, select(var_4.a, global0.x, global0.x), all(vec3<bool>(false, false, false))), !(!vec4<bool>(true, false, global0.x, var_4.a)), true), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> vec2<bool> {
    global0 = select(!(!(!(!vec2<bool>(true, arg_1.x)))), !(!select(!arg_1.xz, arg_1.ww, !vec2<bool>(global0.x, true))), true);
    global0 = vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(any(arg_1.wxy), select(true, arg_1.x, false), arg_1.x), !select(arg_1.yxx, vec3<bool>(arg_0.a, arg_0.a, false), global0.x))), any(vec3<bool>(arg_0.a, true, false)));
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec2_i32(~(~u_input.a.xy) | vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.a.zx), firstTrailingBit(0i)), -(vec2<i32>(arg_0.b, -23818i) >> (select(u_input.b.yz, vec2<u32>(4294967295u, arg_0.c), vec2<bool>(arg_1.x, false)) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-295f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f - 638f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(508f))) - 909f))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1569f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1132f, -370f))))))) - _wgslsmith_div_f32(-447f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-961f, 535f) * _wgslsmith_f_op_f32(-1047f * 1110f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f) + _wgslsmith_f_op_f32(1711f + -198f))))));
    return vec2<bool>(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-685f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2660f)), -2261f)))), vec4<bool>(true, true, any(select(vec2<bool>(global0.x, true), arg_1.zw, vec2<bool>(global0.x, false))), false)).a, true);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = func_1(arg_3.x, !vec4<bool>(true, true && (global0.x & true), global0.x, all(vec3<bool>(global0.x, true, true)) || (global0.x && global0.x)));
    global0 = vec2<bool>(false, false);
    global0 = select(!func_4(Struct_2(func_3(14201u), 1i, arg_2.x), vec4<bool>(true, !var_0.a, global0.x, var_0.a | global0.x), reverseBits(2147483647i)), !select(!(!vec2<bool>(var_0.a, false)), vec2<bool>(false && global0.x, select(var_0.a, global0.x, false)), var_0.a), all(vec4<bool>(reverseBits(21348u) < var_0.c, global0.x, global0.x, var_0.a)));
    global0 = !(!select(select(select(vec2<bool>(false, true), vec2<bool>(global0.x, var_0.a), vec2<bool>(global0.x, true)), !vec2<bool>(false, global0.x), true), vec2<bool>(false, true && global0.x), var_0.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1315f, _wgslsmith_div_f32(arg_3.x, -2228f))), _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.x))))));
    return vec2<u32>(34791u, ~(~var_0.c));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(abs(u_input.a.xyx), 24657i);
    return Struct_2(!(!(!any(vec4<bool>(false, global0.x, global0.x, global0.x)))), var_0.b, ~23601u);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(1i, ~arg_0.b) << (0u % 32u), ~(-825i >> (_wgslsmith_clamp_u32(arg_0.c, u_input.c.x, 17624u) % 32u)) << (~18466u % 32u), arg_1.b & abs(_wgslsmith_dot_vec2_i32(u_input.a.wz, vec2<i32>(-6046i, 38036i)) | u_input.a.x));
    var var_1 = 59549u;
    var_0 = vec3<i32>(arg_1.b, abs(1i), u_input.a.x);
    global0 = !func_4(arg_1, vec4<bool>(all(!vec3<bool>(true, arg_1.a, arg_0.a)), false, arg_1.a, true), abs(-26916i));
    var_1 = arg_1.c;
    return arg_1;
}

fn func_7(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = func_1(278f, select(select(!(!vec4<bool>(arg_0.a, global0.x, global0.x, true)), !(!vec4<bool>(arg_0.a, true, false, arg_2.x)), vec4<bool>(true, global0.x || false, true, any(vec2<bool>(global0.x, true)))), !(!(!vec4<bool>(arg_0.a, arg_2.x, global0.x, global0.x))), all(vec3<bool>(false, global0.x, true)) & any(!vec2<bool>(arg_0.a, true))));
    var_0 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1214f - 1583f)))))), select(!(!(!vec4<bool>(arg_2.x, true, false, arg_2.x))), vec4<bool>(!arg_0.a, 35069i < func_1(-852f, vec4<bool>(false, false, false, global0.x)).b, var_0.a, !func_3(60486u)), !(!(!vec4<bool>(true, true, global0.x, true)))));
    global0 = arg_2;
    let var_1 = Struct_3(min(abs(-1i), abs(7707i) ^ select(0i, func_5(vec2<u32>(20373u, 1u), u_input.c).b, global0.x)));
    global0 = arg_2;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_7(func_6(func_1(-134f, vec4<bool>(true, false, global0.x, false)), func_5(func_2(u_input.a.xz, -2147483647i, u_input.c.zw, vec2<f32>(1091f, 168f)), ~u_input.c)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a.x), -vec2<i32>(-13284i, u_input.a.x)), vec2<bool>(all(!vec4<bool>(false, global0.x, true, false)), !global0.x | true));
    global0 = select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, any(vec4<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), all(vec4<bool>(true, false, true, false)), global0.x, all(vec4<bool>(false, global0.x, global0.x, global0.x))))), false);
    var var_1 = vec3<bool>(false, global0.x || (firstLeadingBit(_wgslsmith_add_i32(-10178i, -1i)) <= var_0.x), true);
    global0 = var_1.xy;
    var var_2 = func_6(Struct_2(true, var_0.x, 4294967295u), func_5(select(~min(vec2<u32>(u_input.c.x, 38737u), u_input.b.yx), ~u_input.c.zz, true), vec4<u32>(95027u, 62788u, _wgslsmith_dot_vec2_u32(~u_input.b.yx, func_2(vec2<i32>(u_input.a.x, -490i), u_input.a.x, vec2<u32>(u_input.b.x, 0u), vec2<f32>(-1000f, -1056f))), 0u)));
    let var_3 = Struct_3(firstLeadingBit(reverseBits(~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1493f)))) - _wgslsmith_f_op_f32(sign(-826f))));
}

