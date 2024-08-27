struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    global0 = array<i32, 18>();
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(arg_1.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.x, -770f, arg_1.d, _wgslsmith_f_op_f32(max(arg_1.b.x, 1000f))))), vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(step(arg_1.b.x, arg_0.d)), 263f)), !(true == !select(true, true, true))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-106f, _wgslsmith_div_f32(-1517f, 1815f), -1162f, 1369f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, 131f, 166f, 1606f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1554f, -1038f, _wgslsmith_div_f32(-258f, 1524f), _wgslsmith_f_op_f32(min(1262f, 1000f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(-438f, 712f, -1267f, 1000f), vec4<f32>(-1588f, 1142f, 1000f, -744f))))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(-1i, vec4<f32>(149f, _wgslsmith_f_op_f32(f32(-1f) * -517f), -1163f, -1473f), 26961u, 778f), Struct_1(global0[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(130f, 436f, -1000f, -763f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1484f, 849f, 772f, -1195f))), 4294967295u, -266f))));
    global0 = array<i32, 18>();
    var var_1 = ~countOneBits(max(u_input.a, 1u)) & 14849u;
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-38330i, -31098i, global0[_wgslsmith_index_u32(u_input.a, 18u)]), min(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], -25150i, global0[_wgslsmith_index_u32(u_input.a, 18u)]))) & -19840i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -380f, var_0.x, 369f) - var_0))))), u_input.a, _wgslsmith_f_op_f32(-var_0.x)), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 18u)] << (u_input.a % 32u), reverseBits(~global0[_wgslsmith_index_u32(34632u, 18u)])) | vec2<i32>(~reverseBits(-2147483647i), min(global0[_wgslsmith_index_u32(u_input.a & 1u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)])), Struct_1(global0[_wgslsmith_index_u32(~(u_input.a ^ u_input.a) >> (u_input.a % 32u), 18u)], vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -946f), var_0.x, var_0.x), ~1u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(454f)) + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(644f - 953f) + _wgslsmith_f_op_f32(-1184f + 902f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(253f - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(468f + -437f), -860f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-443f, var_0.x))))))), Struct_1(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 18u)], -2147483647i, 0i), abs(-global0[_wgslsmith_index_u32(u_input.a, 18u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0))))), abs(min(1u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) * var_0.x))));
    var var_3 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(31061u, 18u)], var_2.e.b, ~min(~59467u, 1u), var_2.e.d), var_2.b, var_2.e, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0))), var_2.e);
    return var_3.a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>((~47932u << (_wgslsmith_add_u32(0u & u_input.a, u_input.a) % 32u)) < ~((arg_0.c & 4294967295u) | 0u), false);
    global0 = array<i32, 18>();
    let var_1 = func_2();
    var var_2 = var_1.c;
    var var_3 = Struct_2(func_2(), -(min(vec2<i32>(18942i, arg_0.a), vec2<i32>(arg_0.a, var_1.a)) | firstLeadingBit(vec2<i32>(arg_0.a, 11119i))) << (vec2<u32>(1u, _wgslsmith_div_u32(max(var_1.c, arg_0.c), 0u)) % vec2<u32>(32u)), var_1, var_1.b, var_1);
    return Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_3.b.x, -6383i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.a, global0[_wgslsmith_index_u32(1u, 18u)]), i32(-1i) * -33716i, select(21434i, global0[_wgslsmith_index_u32(61706u, 18u)], true) | _wgslsmith_sub_i32(var_1.a, var_3.e.a))), vec4<f32>(-302f, _wgslsmith_f_op_f32(ceil(-823f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a.b.x))), arg_0.d), _wgslsmith_add_u32(~firstLeadingBit(1359u) << (~arg_0.c % 32u), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(var_1, func_2())).x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<i32, 18>();
    var var_0 = 0u;
    var_0 = reverseBits(u_input.a);
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c, ~arg_0.c), ~reverseBits(vec2<u32>(~19876u, ~24096u)));
    global0 = array<i32, 18>();
    return min(abs(arg_0.a), -(~max(global0[_wgslsmith_index_u32(1u, 18u)], arg_0.a))) << (12682u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 163f) + -1380f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-352f, 506f)), _wgslsmith_f_op_f32(f32(-1f) * -182f), true)), -376f, _wgslsmith_f_op_f32(f32(-1f) * -419f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(-1316f + 1398f), -1805f, _wgslsmith_f_op_f32(step(-1762f, 617f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(900f, 878f, 157f, 284f), vec4<f32>(827f, 1000f, -1480f, 1936f), vec4<bool>(true, false, false, true))))))));
    var var_1 = Struct_1(func_4(Struct_1(global0[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0))), u_input.a, -1158f), func_1(Struct_1(global0[_wgslsmith_index_u32(43240u, 18u)] | global0[_wgslsmith_index_u32(0u, 18u)], var_0, _wgslsmith_div_u32(29470u, u_input.a), var_0.x))), vec4<f32>(-765f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 166f)), var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(func_1(Struct_1(48115i, var_0, 4294967295u, var_0.x)), Struct_1(global0[_wgslsmith_index_u32(22375u, 18u)], var_0, 4294967295u, var_0.x))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x)), ~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-692f * var_0.x))));
    let var_2 = -(~select(vec3<i32>(2771i, var_1.a, func_4(Struct_1(-1i, vec4<f32>(-145f, -1000f, -868f, var_0.x), 9976u, var_0.x), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 18u)], vec4<f32>(412f, var_0.x, -1403f, -1000f), var_1.c, -1444f))), select(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, var_1.a, -2147483647i), vec3<i32>(-4688i, -1i, global0[_wgslsmith_index_u32(u_input.a, 18u)])), vec3<i32>(var_1.a, 2147483647i, global0[_wgslsmith_index_u32(0u, 18u)]) << (vec3<u32>(var_1.c, u_input.a, u_input.a) % vec3<u32>(32u)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1(func_2()).d), 2036f, reverseBits(~select(vec4<u32>(1u, 4294967295u, var_1.c, 4294967295u) >> (vec4<u32>(u_input.a, var_1.c, u_input.a, 1u) % vec4<u32>(32u)), vec4<u32>(15595u, u_input.a, u_input.a, 13387u), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))), var_1.a);
}

