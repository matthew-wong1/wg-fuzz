struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec3<i32> {
    let var_0 = -2966i;
    var var_1 = ~28277u;
    return vec3<i32>(-_wgslsmith_add_i32(-1i, 7683i), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(5751i, 0i, -2147483647i, 0i)) << (_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(26008u, u_input.c.x, 1u, 9708u)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_0, u_input.a, -2147483647i), vec4<i32>(-2147483647i, -27278i, u_input.a, 0i)), min(min(vec4<i32>(-1i, u_input.a, var_0, 37943i), vec4<i32>(var_0, 1i, u_input.a, -2147483647i)), vec4<i32>(u_input.a, u_input.a, var_0, 1i) | vec4<i32>(-63594i, u_input.a, -33912i, u_input.b)), (vec4<i32>(var_0, var_0, -10172i, 0i) | vec4<i32>(-17474i, var_0, -38312i, var_0)) & _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b, -4928i, u_input.b), vec4<i32>(var_0, 0i, 7381i, u_input.a)))), _wgslsmith_mult_i32(countOneBits(-20970i), var_0) & ~(~14920i));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(~u_input.a, _wgslsmith_mod_i32(u_input.a, 0i))), max(~arg_0.xy, select(~arg_0.xy, _wgslsmith_mult_vec2_i32(-vec2<i32>(-45749i, arg_0.x), ~arg_0.xy), true)));
    var var_1 = func_3(select(true, false, true));
    let var_2 = ~vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(17814u, 4294967295u, arg_1, 61425u), vec4<u32>(arg_1, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 47030u, arg_1)), vec4<u32>(63903u, 4294967295u, 32414u, u_input.c.x)), abs(_wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(arg_1, u_input.c.x))));
    var var_3 = Struct_2(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec3<bool>(false, true, true)))));
    var_1 = -_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(2147483647i & arg_0.x, _wgslsmith_div_i32(var_1.x, -16555i), -44052i), min(~9279i, firstTrailingBit(var_0.x)), _wgslsmith_mult_i32(1i, -21822i)), _wgslsmith_mult_vec3_i32(arg_0, _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -37656i, -13542i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, -2147483647i, var_1.x), vec3<i32>(var_0.x, -15544i, 0i)))));
    return Struct_2(select(select(vec2<bool>(arg_1 > 0u, !var_3.a.x), var_3.a, !var_3.a), var_3.a, var_3.a.x & true));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = u_input.c.x;
    let var_1 = Struct_1(select(!(!select(vec2<bool>(true, arg_3), vec2<bool>(arg_3, false), arg_3)), func_2(abs(arg_1), abs(98u)).a, arg_2.a), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0) != arg_0, arg_2.a.x, !func_2(vec3<i32>(u_input.a, 33828i, arg_1.x), ~77592u).a.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_1.x, i32(-1i) * -26507i, u_input.a), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, arg_1.x, -44524i, u_input.b) >> (vec4<u32>(u_input.c.x, u_input.c.x, var_0, var_0) % vec4<u32>(32u)), -vec4<i32>(1i, arg_1.x, 2147483647i, -49233i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, 1i, u_input.a, 2168i), vec4<i32>(-2147483647i, 1i, u_input.b, 1i)))), ~(~u_input.c.x), min(firstTrailingBit(1u), ~var_0));
    var var_2 = Struct_1(func_2(var_1.c.zzw, 4294967295u).a, select(vec3<bool>(true, min(var_1.c.x, 1i) <= 2147483647i, arg_2.a.x), var_1.b, !(!vec3<bool>(false, arg_3, true))), var_1.c, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, var_1.d), vec4<u32>(var_1.e, 4294967295u, u_input.c.x, 0u)) | 1u), ~var_1.d | min(u_input.c.x, var_0));
    let var_3 = arg_2.a.x & ((any(vec3<bool>(var_1.a.x, true, true)) & (_wgslsmith_f_op_f32(-arg_0) >= arg_0)) || (-156f < _wgslsmith_f_op_f32(-1000f + arg_0)));
    var_2 = var_1;
    return ~_wgslsmith_add_u32(var_0, var_0);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = Struct_1(!arg_1.a, arg_1.b, arg_1.c | max(_wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, arg_1.c.x, -1i, u_input.a), arg_1.c, vec4<bool>(arg_1.b.x, false, false, arg_1.a.x)), ~arg_1.c), max(~vec4<i32>(u_input.a, 2147483647i, -2147483647i, 1i), vec4<i32>(u_input.a, -27156i, arg_1.c.x, 27937i) >> (vec4<u32>(9166u, 17601u, u_input.c.x, 64376u) % vec4<u32>(32u)))), ~_wgslsmith_div_u32(12361u, min(firstTrailingBit(11450u), 25860u | arg_1.d)), ~10309u);
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c | vec2<u32>(8084u, 4294967295u), vec2<u32>(var_1.e >> (var_1.e % 32u), _wgslsmith_mult_u32(0u, var_1.d))), u_input.c >> (~vec2<u32>(41287u, u_input.c.x) % vec2<u32>(32u))), vec2<u32>(var_1.d, func_4(arg_0, _wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, 1i, -41230i), -vec3<i32>(arg_1.c.x, u_input.b, arg_1.c.x)), func_2(max(arg_1.c.yzz, var_1.c.xxx), ~30709u), true)));
    var var_3 = vec3<bool>(true, true, true);
    var var_4 = arg_1.c.x;
    return Struct_1(func_2(var_1.c.zww, ~arg_1.e << (~_wgslsmith_mod_u32(4294967295u, 14289u) % 32u)).a, vec3<bool>((select(0i, var_1.c.x, arg_1.b.x) >> (4294967295u % 32u)) <= (i32(-1i) * -706i), true, false), -var_1.c, arg_1.d, ~(~max(arg_1.d, min(15042u, arg_1.d))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> f32 {
    return 1000f;
}

fn func_6(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(all(!select(vec3<bool>(arg_1.a.x, arg_0, false), vec3<bool>(arg_0, false, arg_0), !vec3<bool>(arg_0, arg_0, false))), arg_0, all(select(select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_0)), select(vec4<bool>(arg_0, true, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, false, true, arg_0), vec4<bool>(arg_1.a.x, true, arg_0, arg_1.a.x)), true), !select(vec4<bool>(true, arg_1.a.x, arg_0, true), vec4<bool>(true, arg_1.a.x, arg_0, false), arg_0), true)));
    let var_1 = all(!func_1(_wgslsmith_f_op_f32(round(-132f)), func_1(-861f, func_1(1484f, Struct_1(vec2<bool>(arg_0, arg_1.a.x), vec3<bool>(true, true, false), vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a), u_input.c.x, 0u), Struct_2(arg_1.a)), func_2(vec3<i32>(u_input.a, u_input.a, u_input.b), u_input.c.x)), func_2(firstLeadingBit(vec3<i32>(u_input.a, -3011i, 10172i)), select(44766u, u_input.c.x, true))).b);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(770f)) + _wgslsmith_f_op_f32(-1134f * -1079f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_f32(f32(-1f) * -128f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-823f, -598f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-615f, 1360f) + vec2<f32>(190f, 111f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1320f, -741f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2110f, 925f))))));
    let var_3 = Struct_2(arg_1.a);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-877f, -222f) * vec2<f32>(var_2.x, 314f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(352f, var_2.x)))));
    return func_1(_wgslsmith_f_op_f32(ceil(var_2.x)), Struct_1(!var_0.xz, var_0, abs(max(reverseBits(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a)), -vec4<i32>(-22763i, u_input.a, u_input.a, u_input.b))), u_input.c.x << (~select(21790u, u_input.c.x, false) % 32u), 1u), func_2(vec3<i32>(abs(u_input.a), -26107i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-36784i, u_input.a), vec2<i32>(1i, u_input.b)), -2147483647i, 84314i)), 65132u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(vec2<bool>(true, (u_input.b >= u_input.b) && true), vec2<bool>(true, true), true));
    let var_1 = func_6(select(true, var_0.a.x && var_0.a.x, false) == (614f == _wgslsmith_f_op_f32(func_5(func_1(1000f, Struct_1(var_0.a, vec3<bool>(true, var_0.a.x, true), vec4<i32>(u_input.a, 1i, 19478i, -39488i), u_input.c.x, u_input.c.x), Struct_2(vec2<bool>(var_0.a.x, false))), 0i != u_input.a, Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), vec3<bool>(true, true, false), vec4<i32>(68104i, u_input.a, -37422i, u_input.a), 86033u, u_input.c.x), 55869u))), func_2(vec3<i32>(23590i, 18514i, -1i | u_input.a), u_input.c.x));
    var_0 = func_2(~vec3<i32>(reverseBits(select(-95i, 0i, true)), _wgslsmith_add_i32(19886i, var_1.c.x), -21785i), ~(countOneBits(49848u) << (~(~u_input.c.x) % 32u)));
    let var_2 = abs(select(~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.d, u_input.c.x), countOneBits(u_input.c)), select(vec2<u32>(1u, 18323u), ~u_input.c, true), !vec2<bool>(true, any(var_1.b))));
    let var_3 = 15676i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(880f - _wgslsmith_f_op_f32(f32(-1f) * -1858f)));
}

