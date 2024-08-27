struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(1161i, 11361i, -16129i), vec3<i32>(0i, 18807i, 2519i), vec3<i32>(-93763i, 2147483647i, 32974i), vec3<i32>(i32(-2147483648), 2147483647i, 98697i), vec3<i32>(17573i, 2147483647i, 29832i), vec3<i32>(37909i, -72437i, 0i), vec3<i32>(0i, -12846i, -9803i), vec3<i32>(0i, 1i, 1i), vec3<i32>(37369i, 22164i, -42858i), vec3<i32>(-46996i, -1i, -10190i), vec3<i32>(33756i, i32(-2147483648), -21500i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-1i, 9589i, -2924i), vec3<i32>(-1i, 1i, 20862i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(2147483647i, -29235i, -1i), vec3<i32>(0i, 12197i, 2147483647i), vec3<i32>(10061i, 67879i, -36931i), vec3<i32>(7128i, 493i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -1i, -10045i), vec3<i32>(-17986i, 1i, -1i), vec3<i32>(0i, 58899i, -3547i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), -56786i, 1i), vec3<i32>(51732i, -72018i, 23346i), vec3<i32>(-1i, 1i, 26786i));

var<private> global1: array<bool, 16> = array<bool, 16>(true, true, false, false, false, false, true, true, false, false, true, true, true, false, true, false);

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = !(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.b.a.x, 16u)], global1[_wgslsmith_index_u32(16735u, 16u)], true, global1[_wgslsmith_index_u32(arg_1.b.a.x, 16u)]), !vec4<bool>(true, arg_1.a, true, false), select(vec4<bool>(arg_1.a, global1[_wgslsmith_index_u32(33312u, 16u)], true, global1[_wgslsmith_index_u32(14415u, 16u)]), vec4<bool>(arg_1.a, false, global1[_wgslsmith_index_u32(1u, 16u)], true), false)), vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(arg_1.a, arg_1.a, false)), true, arg_1.a), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(arg_1.b.a.x, 8398u, 8068u), 16u)]));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.b.c.x);
    return arg_2.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(select(1u, ~min(89251u, func_3(-1469f, Struct_2(false, Struct_1(vec4<u32>(4294967295u, 3019u, 1u, 67817u), u_input.a.x, vec3<f32>(-485f, 484f, 988f)), u_input.a.x), vec4<u32>(65230u, 17393u, 1u, 34870u), vec2<i32>(u_input.a.x, 2147483647i))), !any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true)) & (_wgslsmith_mult_i32(-2147483647i, u_input.a.x) <= 1532i)), 16u)], Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), -u_input.a.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(1214f)), _wgslsmith_f_op_f32(1096f * -826f), _wgslsmith_f_op_f32(1000f + -773f)), vec3<f32>(1f, 1f, 1f)))), -u_input.a.x);
    global2 = 1u;
    let var_1 = global0[_wgslsmith_index_u32(~(~min(~var_0.b.a.x >> (_wgslsmith_clamp_u32(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x) % 32u), 1u)), 28u)];
    let var_2 = Struct_1(var_0.b.a, -u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, var_0.b.c.x, 886f) * vec3<f32>(var_0.b.c.x, var_0.b.c.x, -1026f)) + vec3<f32>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x)), _wgslsmith_f_op_vec3_f32(min(var_0.b.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-539f, -1385f, var_0.b.c.x), vec3<f32>(var_0.b.c.x, 1057f, var_0.b.c.x), false)))))));
    var_0 = Struct_2(any(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 16u)], false))), var_2, max(_wgslsmith_sub_i32(var_1.x, -var_2.b >> (var_2.a.x % 32u)), ~(-53542i)));
    return Struct_2(any(select(select(vec2<bool>(var_0.a, global1[_wgslsmith_index_u32(11096u, 16u)]), vec2<bool>(true, true), !vec2<bool>(var_0.a, true)), vec2<bool>(global1[_wgslsmith_index_u32(~17938u, 16u)], global1[_wgslsmith_index_u32(select(var_0.b.a.x, var_2.a.x, var_0.a), 16u)]), !select(vec2<bool>(false, var_0.a), vec2<bool>(false, true), global1[_wgslsmith_index_u32(var_0.b.a.x, 16u)]))), var_0.b, 1i);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_1 {
    global1 = array<bool, 16>();
    global2 = reverseBits(~1u);
    var var_0 = func_2();
    global0 = array<vec3<i32>, 28>();
    var var_1 = (vec2<i32>(func_2().b.b, var_0.c) & vec2<i32>(var_0.c, var_0.b.b)) << (~vec2<u32>(var_0.b.a.x, _wgslsmith_sub_u32(4294967295u | var_0.b.a.x, var_0.b.a.x << (var_0.b.a.x % 32u))) % vec2<u32>(32u));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 28>();
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-176f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -120f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2026f), -982f, -204f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1648f), -1172f, 1f)))), !vec4<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(34561u, 16u)], true, global1[_wgslsmith_index_u32(44943u, 16u)]), vec3<bool>(false, true, false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(106706u, 16u)], global1[_wgslsmith_index_u32(8515u, 16u)]))), true, any(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true, false, false)), all(vec3<bool>(false, false, false)) & false));
    var var_1 = select(_wgslsmith_add_i32(-_wgslsmith_mult_i32(-5922i, var_0.b) & var_0.b, -(~37926i)), abs(var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-872f)), _wgslsmith_f_op_f32(var_0.c.x + -1514f))) * 1f) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), 1224f)));
    var var_2 = func_2();
    global0 = array<vec3<i32>, 28>();
    var var_3 = vec4<bool>(var_2.a, global1[_wgslsmith_index_u32(4294967295u, 16u)], select(all(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.a.x, 16u)], false, var_2.a), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 16u)], true, global1[_wgslsmith_index_u32(var_2.b.a.x, 16u)]), vec4<bool>(false, var_2.a, false, var_2.a)), select(vec4<bool>(true, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(var_2.b.a.x, 16u)], true, var_2.a, true), vec4<bool>(true, true, true, true)), vec4<bool>(global1[_wgslsmith_index_u32(25406u, 16u)], var_2.a, var_2.a, false))), any(vec2<bool>(global1[_wgslsmith_index_u32(18362u, 16u)], global1[_wgslsmith_index_u32(var_2.b.a.x, 16u)])) & (true && select(true, global1[_wgslsmith_index_u32(17615u, 16u)], var_2.a)), any(select(vec4<bool>(true, var_2.a, false, false), vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(4294967295u, 16u)]))), false || all(select(vec4<bool>(true, var_2.a, true, true), !vec4<bool>(var_2.a, true, global1[_wgslsmith_index_u32(var_0.a.x, 16u)], false), global1[_wgslsmith_index_u32(~var_2.b.a.x, 16u)])));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec3<f32>(var_0.c.x, -1439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(652f - var_2.b.c.x) - _wgslsmith_f_op_f32(-var_2.b.c.x))), !(!(!vec4<bool>(var_2.a, var_3.x, true, false)))).a.x);
}

