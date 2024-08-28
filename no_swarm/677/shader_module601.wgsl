struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec3<f32>(2326f, -104f, 1000f), -1599f);

var<private> global1: array<vec4<f32>, 25>;

var<private> global2: bool = false;

var<private> global3: f32 = 241f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global1 = array<vec4<f32>, 25>();
    global0 = Struct_1(!global0.a, global0.b, _wgslsmith_f_op_f32(-global0.c));
    var var_0 = max(33958i, countOneBits(u_input.a));
    var var_1 = (firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 1u, 27072u), select(vec3<u32>(u_input.b.x, 41883u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x), global0.a.x))) | ~_wgslsmith_mult_u32(62754u, 0u)) & ~select(26686u, _wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x)), -u_input.c <= u_input.c);
    var var_2 = Struct_2(_wgslsmith_mod_vec2_u32(max(u_input.b, ~vec2<u32>(u_input.b.x, 0u)) << (vec2<u32>(1u, u_input.b.x ^ u_input.b.x) % vec2<u32>(32u)), u_input.b), global0.a.yx, select(!(global0.c < _wgslsmith_f_op_f32(sign(-452f))), false, false));
    return global0.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(609f)), 2152f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1131f, 1196f)) * global0.b.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global0.b.x)));
    global2 = true;
    let var_1 = arg_0;
    global3 = -463f;
    return Struct_2(u_input.b, select(vec2<bool>(!(!arg_1.b.x), !global0.a.x != arg_1.b.x), arg_1.b, all(vec2<bool>(true, true))), ((false && (global0.c < -1000f)) & true) | any(vec2<bool>(global0.a.x, true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<f32>) -> bool {
    let var_0 = 0u;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, arg_3.x) - global0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-341f, -584f, arg_3.x))), vec3<f32>(283f, 987f, arg_3.x), !(!global0.a))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -1353f, -1871f)))), global0.b, vec3<bool>(true, global0.a.x, true)))), global0.c);
    let var_1 = -reverseBits(max(arg_2.x, u_input.c));
    var var_2 = -vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, var_1, arg_2.x), vec3<i32>(arg_2.x, 237i, var_1)), -u_input.a, abs(-20396i | u_input.a) | arg_2.x, -2147483647i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-global0.b);
    return true;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = ~abs(vec4<u32>(u_input.b.x, ~countOneBits(u_input.b.x), reverseBits(u_input.b.x), max(0u, u_input.b.x)));
    var var_1 = select(~(~(~vec4<u32>(1u, var_0.x, u_input.b.x, u_input.b.x) >> (abs(vec4<u32>(u_input.b.x, 41601u, var_0.x, 0u)) % vec4<u32>(32u)))), ~countOneBits(~vec4<u32>(69116u, var_0.x, 4294967295u, 99873u) >> (vec4<u32>(var_0.x, u_input.b.x, 8907u, var_0.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(423f * global0.c) - _wgslsmith_f_op_f32(trunc(global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.x))), any(select(global0.a.yz, global0.a.zy, global0.a.x)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    var var_2 = global0.a;
    return Struct_1(vec3<bool>(((1344f >= global0.c) & (arg_0.x > arg_0.x)) & true, select(func_4(func_2(vec2<i32>(u_input.a, u_input.a), Struct_2(var_1.yy, vec2<bool>(global0.a.x, var_2.x), true)), Struct_2(vec2<u32>(var_0.x, 56097u), vec2<bool>(true, true), false), vec2<i32>(-1895i, -60743i), arg_0.xy), u_input.c < min(u_input.a, -54712i), true), !(!(!global0.a.x))), arg_0, _wgslsmith_f_op_f32(-152f + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(713f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-169f - -1734f), _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global0.b.x, global0.c))), global0.b)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(global0.b))))));
    var var_1 = func_2(_wgslsmith_mult_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.c, 9671i)), ~vec2<i32>(u_input.a, 2147483647i), vec2<bool>(true, false)), vec2<i32>(-2147483647i, ~(-2147483647i))), func_2(select(vec2<i32>(u_input.c, -1i), max(vec2<i32>(u_input.c, u_input.a), firstLeadingBit(vec2<i32>(28824i, 1i))), vec2<bool>(all(vec2<bool>(false, true)), false)), Struct_2(~vec2<u32>(u_input.b.x, 4404u), vec2<bool>(true, false), !all(global0.a.xx))));
    let var_2 = Struct_2(~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_1.a.x, u_input.b.x), abs(vec3<u32>(1u, var_1.a.x, 440u))), ~(~u_input.b.x)), vec2<bool>(true, !(true || all(vec3<bool>(false, var_0.a.x, false)))), all(vec3<bool>(true, true, true)));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.b)) + _wgslsmith_f_op_vec3_f32(-var_0.b))), global0.b, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f * var_0.b.x)))));
    var var_3 = vec2<i32>(u_input.c, 46317i);
    global1 = array<vec4<f32>, 25>();
    let var_4 = var_2;
    var var_5 = global0.a.x;
    var var_6 = Struct_2(var_1.a, vec2<bool>(var_4.b.x, all(var_0.a)), _wgslsmith_div_i32(-(-7348i << (var_2.a.x % 32u)), (-25157i & u_input.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(48373u, var_4.a.x, u_input.b.x), vec3<u32>(var_4.a.x, var_2.a.x, 16101u)) % 32u)) < countOneBits(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(-14752i, max(-1i, -5821i))), _wgslsmith_add_u32(var_1.a.x, firstLeadingBit(_wgslsmith_add_u32(var_6.a.x, var_1.a.x))));
}

