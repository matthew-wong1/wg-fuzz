struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<bool>(arg_1.a.x, !arg_0.c.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1208f, _wgslsmith_f_op_f32(arg_1.d * 1526f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1096f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.x)), 1f)) * global1.x)), arg_0.d);
    var var_2 = arg_0;
    let var_3 = u_input.c;
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, _wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(1053f * -1194f)));
    return -19993i | u_input.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(1i, func_3(Struct_1(vec3<bool>(true, true, arg_1.x), true, vec3<bool>(arg_1.x, true, false), _wgslsmith_f_op_f32(f32(-1f) * -1363f), firstTrailingBit(0u)), Struct_1(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, false, false), arg_1.x), any(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), !vec3<bool>(true, arg_1.x, false), -1000f, u_input.a))) >= _wgslsmith_add_i32(u_input.d.x, ~(~24566i & _wgslsmith_mod_i32(1i, u_input.b.x)));
    var var_1 = Struct_1(select(vec3<bool>(all(vec2<bool>(true, true)), arg_1.x, all(vec4<bool>(arg_1.x, true, true, false))), vec3<bool>(true, arg_1.x, -1000f < global1.x), vec3<bool>(_wgslsmith_mod_u32(u_input.a, u_input.a) <= 84268u, !any(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), all(select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(true, false, arg_1.x, false), true)))), any(!select(select(vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(true, true, arg_1.x, arg_1.x)), select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, false), true), !vec4<bool>(arg_1.x, false, false, arg_1.x))), vec3<bool>(!(!arg_1.x), arg_1.x, all(!arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_div_f32(975f, global1.x)))), _wgslsmith_f_op_f32(global1.x - 1101f)), ~(~abs(u_input.c)));
    let var_2 = countOneBits(countOneBits(vec2<i32>(~(~0i), ~_wgslsmith_mod_i32(2820i, u_input.b.x))));
    let var_3 = ~(~min(u_input.a, ~max(arg_0, 1u)));
    var var_4 = _wgslsmith_add_vec2_i32(var_2, vec2<i32>(u_input.b.x, abs(u_input.d.x)));
    return Struct_1(select(select(var_1.a, var_1.a, all(vec3<bool>(true, false, arg_1.x))), select(var_1.c, !(!vec3<bool>(true, arg_1.x, true)), !select(vec3<bool>(var_1.a.x, true, arg_1.x), vec3<bool>(false, var_1.b, var_1.c.x), var_1.b)), !arg_1.x), var_1.c.x, select(select(!(!var_1.c), vec3<bool>(true, select(var_1.c.x, var_1.a.x, var_1.a.x), arg_1.x), false), vec3<bool>(true, false, !any(vec4<bool>(false, var_1.b, true, false))), var_1.c), var_1.d, max(var_1.e | min(_wgslsmith_clamp_u32(23129u, var_3, 28297u), 1u), ~(~_wgslsmith_add_u32(var_3, var_1.e))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_mult_vec4_i32(-vec4<i32>(func_3(Struct_1(arg_1.a, arg_1.b, vec3<bool>(true, false, arg_2), 974f, 80541u), Struct_1(arg_1.a, arg_2, arg_1.c, arg_1.d, u_input.a)) ^ (u_input.b.x ^ -2147483647i), i32(-1i) * -u_input.d.x, -u_input.d.x, -1i), u_input.d);
    var var_1 = any(!vec4<bool>(!arg_1.b, arg_2, true, arg_1.a.x));
    var_1 = ((0u ^ ~(~u_input.c)) << (_wgslsmith_mod_u32(~u_input.a, 28847u) % 32u)) != ~(~51436u);
    let var_2 = arg_1;
    return arg_1.d;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_1(arg_1.c, false, !vec3<bool>(all(!vec4<bool>(arg_2, arg_0, arg_1.b, true)), false, u_input.d.x > (u_input.b.x << (42004u % 32u))), arg_1.d, u_input.a);
    var_0 = Struct_1(vec3<bool>(false, !arg_1.a.x && all(arg_1.c), -919f >= global1.x), arg_2, !(!(!var_0.c)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 223f, -1085f, arg_1.d))))), func_2(1u, var_0.c.yz), false)), 44011u);
    let var_1 = !var_0.c.yx;
    var var_2 = func_2(~arg_1.e, vec2<bool>(any(!select(vec4<bool>(false, var_0.c.x, true, arg_1.a.x), vec4<bool>(false, arg_2, false, false), false)), any(vec2<bool>(arg_1.c.x, true))));
    var var_3 = arg_1;
    return vec3<bool>(arg_1.c.x, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(func_1(true, Struct_1(vec3<bool>(false, false, true), false, vec3<bool>(false, true, true), global1.x, u_input.c), false)), select(false, true, true)), vec3<bool>(true, true, !all(vec3<bool>(false, true, false))), all(vec3<bool>(52825i > u_input.d.x, true, func_2(11456u, vec2<bool>(true, false)).b))), true, vec3<bool>(func_1(_wgslsmith_f_op_f32(sign(global1.x)) > global1.x, func_2(u_input.c >> (u_input.a % 32u), vec2<bool>(false, false)), true).x, !(any(vec4<bool>(true, true, true, true)) || true), false & (func_2(u_input.a, vec2<bool>(false, true)).a.x & true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1086f, -154f, 1000f))), func_2(abs(4294967295u), vec2<bool>(true, true)), (u_input.a << (22789u % 32u)) != 1u))), 65370u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.e, 19714u, u_input.c >> (_wgslsmith_clamp_u32(~u_input.c, u_input.a, u_input.c) % 32u), _wgslsmith_div_u32(max(reverseBits(u_input.c), ~4294967295u), ~u_input.c)), abs(select(-u_input.d, u_input.d, !all(var_0.c.xy))), var_0.e);
}

