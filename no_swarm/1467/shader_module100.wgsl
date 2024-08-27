struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(4294967295u, vec2<bool>(true, true));
    var_0 = Struct_1(~_wgslsmith_add_u32(48852u & abs(arg_1.x), abs(13107u)), select(var_0.b, vec2<bool>(var_0.b.x, var_0.a != _wgslsmith_mod_u32(u_input.a, 4294967295u)), false));
    let var_1 = Struct_1(0u, select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.b.x), var_0.b.x | false), var_0.b, !(!var_0.b)), var_0.b, select(vec2<bool>(any(vec4<bool>(true, false, true, true)), var_0.b.x & false), select(!vec2<bool>(var_0.b.x, true), select(vec2<bool>(var_0.b.x, true), vec2<bool>(false, var_0.b.x), true), any(vec4<bool>(true, true, true, var_0.b.x))), any(vec4<bool>(var_0.b.x, true, true, var_0.b.x)))));
    let var_2 = Struct_1(u_input.c.x, vec2<bool>(true, !var_1.b.x));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -533f), _wgslsmith_f_op_f32(f32(-1f) * -149f));
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -10851i;
    var var_1 = vec2<bool>(!((arg_1.a != 1u) == false) & true, select(any(!select(vec4<bool>(true, arg_1.b.x, true, arg_1.b.x), vec4<bool>(false, true, true, arg_1.b.x), arg_0.b.x)), all(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_1.b.x)), true));
    return Struct_1(_wgslsmith_dot_vec3_u32(u_input.c.wyy, _wgslsmith_mult_vec3_u32(~u_input.b.wwy, select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), u_input.b.zww), u_input.c.xyy, !vec3<bool>(true, arg_0.b.x, arg_0.b.x)))), select(select(vec2<bool>(arg_0.b.x, false), vec2<bool>(true, !var_1.x), func_2(-2124f, u_input.b.xw).b.x), !(!arg_0.b), arg_1.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, u_input.c.x, 18400u), vec4<u32>(98479u, 54079u, 83479u, 1u)), 44062u), vec2<bool>(!any(!vec4<bool>(true, true, arg_0.x, true)), true));
    var var_1 = Struct_1(u_input.c.x, arg_0.yx);
    var_1 = Struct_1(var_0.a, vec2<bool>(false, any(arg_0)));
    var var_2 = vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, -2147483647i)), ~vec2<i32>(44523i, u_input.d)), reverseBits(~u_input.d)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d << (u_input.c.x % 32u), u_input.d), countOneBits(-_wgslsmith_sub_i32(u_input.d, u_input.d))));
    var var_3 = func_3(Struct_1(~(~1u), !var_1.b), func_2(1180f, u_input.b.zw));
    return _wgslsmith_f_op_f32(step(-849f, _wgslsmith_f_op_f32(2314f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1123f)), _wgslsmith_f_op_f32(trunc(132f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = vec4<u32>(abs(~select(_wgslsmith_sub_u32(arg_3.a, arg_3.a), u_input.c.x, true)), u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(min(58120u | arg_3.a, arg_3.a ^ 6969u), 23428u, ~(~arg_3.a), func_3(arg_3, func_2(arg_0.x, vec2<u32>(arg_2.x, 4344u))).a), vec4<u32>(arg_3.a >> (96854u % 32u), ~48322u, arg_2.x, countOneBits(arg_3.a)) >> (vec4<u32>(~1u, _wgslsmith_mult_u32(arg_2.x, arg_2.x), 1u | arg_2.x, ~4294967295u) % vec4<u32>(32u))), func_3(arg_3, func_2(-542f, _wgslsmith_add_vec2_u32(arg_2.wx, vec2<u32>(arg_2.x, 36171u) ^ vec2<u32>(u_input.a, 67437u)))).a);
    var_0 = select(vec4<u32>(_wgslsmith_mod_u32(~4294967295u, ~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x | arg_2.x, var_0.x, 41626u, arg_2.x), arg_2), 1u, 4294967295u), min(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(97884u, 4294967295u, u_input.b.x, var_0.x), vec4<u32>(55245u, 35726u, 1393u, 14769u))), firstLeadingBit(countOneBits(~vec4<u32>(49408u, u_input.b.x, arg_3.a, arg_3.a)))), arg_3.b.x);
    var_0 = u_input.c;
    var_0 = min(vec4<u32>(~select(arg_2.x, 23319u, false), 28014u, 0u, _wgslsmith_dot_vec4_u32(abs(arg_2), vec4<u32>(4294967295u, u_input.c.x, arg_2.x, arg_3.a))) & vec4<u32>(func_2(145f, _wgslsmith_mod_vec2_u32(arg_2.zz, vec2<u32>(var_0.x, 4294967295u))).a, _wgslsmith_mult_u32(arg_3.a << (arg_2.x % 32u), 4294967295u), firstLeadingBit(u_input.e.x), ~arg_3.a), ~vec4<u32>(_wgslsmith_mult_u32(73729u, firstTrailingBit(28437u)), firstTrailingBit(u_input.a), 70341u, 1u));
    var_0 = vec4<u32>(~var_0.x, 0u, arg_2.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(max(u_input.a, ~arg_3.a), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_3.a), vec2<u32>(arg_2.x, 32142u)), abs(arg_2.x))), arg_3.a));
    return StorageBuffer(~u_input.c, ~abs(~var_0.xxw), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.e.x, 26992u, 64758u, u_input.e.x))) >= select(~u_input.b.x, _wgslsmith_dot_vec3_u32(~u_input.b.yzw, u_input.c.xwy), true));
    var_0 = vec2<bool>(any(!select(!vec4<bool>(true, var_0.x, true, false), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x)), true)), select(-1i, u_input.d, true) != 31919i);
    var_0 = vec2<bool>(true, var_0.x | (!all(vec2<bool>(true, var_0.x)) || select(all(vec2<bool>(true, var_0.x)), true, true)));
    let var_1 = Struct_1(_wgslsmith_sub_u32(u_input.b.x, u_input.e.x), !(!vec2<bool>(all(vec4<bool>(var_0.x, true, false, false)), true)));
    var_0 = var_1.b;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(f32(-1f) * -1754f), 1417f, 1f);
    var var_3 = var_1.a;
    var_0 = select(var_1.b, var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(281f, var_2.x))), 1f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(round(var_2.x)))) * 1371f));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1022f, var_2.x, var_2.x, var_2.x)), vec4<f32>(1000f, -588f, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1258f, -547f, _wgslsmith_f_op_f32(max(var_2.x, -963f)), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, var_1.b.x, var_0.x, true), 1u))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1108f, var_2.x) + vec4<f32>(var_2.x, 2104f, var_2.x, 1080f)))))), ~vec3<i32>(0i, u_input.d, 25211i), ~u_input.c, var_1);
}

