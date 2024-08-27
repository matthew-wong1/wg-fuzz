struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<i32>(1i, i32(-2147483648), 2147483647i), vec4<bool>(true, true, false, true));

var<private> global1: Struct_1 = Struct_1(false, vec3<i32>(0i, -25023i, 28937i), vec4<bool>(true, false, false, true));

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = arg_1;
    let var_0 = global0.c;
    let var_1 = Struct_1(!all(select(global0.c, vec4<bool>(false, global1.a, true, global2.x), true)), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-26013i, u_input.b.x, arg_1.b.x, arg_1.b.x), vec4<i32>(arg_1.b.x, -2213i, 1i, 4090i)), firstTrailingBit(_wgslsmith_clamp_i32(-1i, u_input.b.x, 15358i)), arg_1.b.x), !global1.c);
    let var_2 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(arg_0.x)))) != 455f) | !global0.a;
    let var_3 = arg_0.x;
    return select(vec3<bool>(var_0.x, true, var_1.a), !select(select(select(global0.c.zwx, vec3<bool>(global0.c.x, true, false), var_0.x), arg_1.c.yzy, !global2.x), var_1.c.yzx, select(true, true, false) & all(vec2<bool>(false, false))), !global2.xxz);
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<i32> {
    let var_0 = global0.a;
    global2 = vec4<bool>(!(!global2.x), all(select(vec3<bool>(all(vec4<bool>(global2.x, global0.c.x, true, global1.a)), global2.x, true), global1.c.yyx, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1415f, -332f) - vec3<f32>(arg_1, arg_1, 621f)), Struct_1(global2.x, vec3<i32>(u_input.b.x, 18960i, global1.b.x), global0.c)))), true, true);
    var var_1 = vec4<i32>(22450i, ~(-34447i), abs(-4157i), u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, -1466f))));
    let var_3 = Struct_1(global0.a, abs(var_1.wwx) >> (_wgslsmith_clamp_vec3_u32(max(vec3<u32>(30794u, u_input.a, u_input.a), vec3<u32>(22280u, 4294967295u, 37152u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), select(vec3<u32>(u_input.a, 83368u, 11207u), vec3<u32>(13777u, u_input.a, u_input.a), false)), ~vec3<u32>(0u, u_input.a, 1u)) % vec3<u32>(32u)), vec4<bool>(!global0.c.x, any(vec2<bool>(!global1.c.x, true)), !any(global1.c), false));
    return vec3<i32>(global0.b.x ^ ~(~(~1i)), -6707i, _wgslsmith_clamp_i32(~var_3.b.x, -33057i, global1.b.x));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = global0.c;
    var var_0 = Struct_1(true, ~_wgslsmith_div_vec3_i32(abs(func_2(false, -245f)), vec3<i32>(1i, ~21062i, firstTrailingBit(0i))), vec4<bool>(all(!select(vec4<bool>(global2.x, false, false, true), arg_0.c, arg_0.c)), any(select(select(vec4<bool>(false, false, true, false), arg_0.c, arg_0.c), select(global0.c, vec4<bool>(true, false, global2.x, true), vec4<bool>(global2.x, false, true, true)), !arg_0.c.x)), 1u > u_input.a, global2.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(449f, _wgslsmith_f_op_f32(-385f - -280f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) - 1637f) - -435f)), _wgslsmith_f_op_f32(trunc(1475f)), _wgslsmith_f_op_f32(select(717f, -1560f, true)));
    global2 = select(!select(arg_0.c, !vec4<bool>(global0.a, false, false, arg_0.c.x), global2.x), !(!select(vec4<bool>(false, true, true, global1.c.x), select(var_0.c, var_0.c, vec4<bool>(true, var_0.a, global1.a, true)), vec4<bool>(false, arg_0.c.x, false, false))), select(any(arg_0.c), func_3(_wgslsmith_div_vec3_f32(var_1, vec3<f32>(var_1.x, var_1.x, -1637f)), arg_0).x, all(vec2<bool>(global2.x, var_0.a | false))));
    let var_2 = select(abs(arg_0.b), ~_wgslsmith_sub_vec3_i32(vec3<i32>(25190i, 16011i, _wgslsmith_clamp_i32(-14030i, global1.b.x, var_0.b.x)), ~(-global0.b)), global1.c.x);
    return _wgslsmith_f_op_f32(max(var_1.x, 107f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global0.a, global1.b, global1.c)))), _wgslsmith_f_op_f32(-1715f * _wgslsmith_f_op_f32(f32(-1f) * -1148f)))), _wgslsmith_f_op_f32(-913f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -533f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-172f - 1592f))))));
    let var_1 = max(~u_input.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(41685u, 125724u, u_input.a), vec3<u32>(1u, 35089u, u_input.a)), countOneBits(vec3<u32>(87105u, u_input.a, 4294967295u))), vec3<u32>(4294967295u, 60487u, ~u_input.a | (u_input.a | 5018u))));
    global2 = global1.c;
    let var_2 = !global0.c.x;
    let var_3 = _wgslsmith_div_f32(737f, _wgslsmith_f_op_f32(var_0.x * 1f));
    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3, -692f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(129f, 1152f) - vec2<f32>(-243f, var_3)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 2532f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-797f, -1000f) * vec2<f32>(130f, var_3))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1124f, var_0.x)))), global1.c.zw)))));
    var var_4 = reverseBits(firstLeadingBit(vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 87416u), ~(~91946u), u_input.a)));
    let var_5 = Struct_1(true, ~global1.b, vec4<bool>(!all(select(vec3<bool>(var_2, global1.a, global0.c.x), global2.yyx, global2.x)), true, any(vec2<bool>(false | global1.a, var_2)), any(select(select(global0.c, vec4<bool>(global0.c.x, false, var_2, global0.c.x), false), !global1.c, !vec4<bool>(global0.c.x, global0.a, false, global1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(countOneBits(1i), -17370i ^ (_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) | -1i)), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1049f, 807f, var_0.x), vec3<f32>(var_0.x, -1508f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 359f, var_0.x) - vec3<f32>(var_0.x, 1048f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(339f, var_3, -903f) * vec3<f32>(var_3, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(762f, var_3), -1491f))))));
}

