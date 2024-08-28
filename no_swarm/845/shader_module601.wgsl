struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> i32 {
    global0 = 25303u;
    var var_0 = _wgslsmith_mod_u32(1222u, _wgslsmith_div_u32(26963u, ~(~1u)));
    return u_input.d.x;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> vec4<bool> {
    global1 = Struct_3(global1.a, select(select(arg_2.a.a.xx, arg_2.a.a.wx, ~u_input.d.x <= _wgslsmith_div_i32(-6042i, 2147483647i)), vec2<bool>(global1.b.x, !(true && arg_2.c)), global1.b), Struct_2(!(!(!arg_2.d.a.x)), Struct_1(select(global1.a.a, !arg_2.a.a, any(arg_2.a.a.zxx)))), global1.d);
    return arg_2.a.a;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = 29201i;
    let var_1 = Struct_2(_wgslsmith_mult_i32(u_input.c.x, -7625i) != -(-2147483647i >> (_wgslsmith_div_u32(u_input.a, 38102u) % 32u)), Struct_1(vec4<bool>(false, false, _wgslsmith_f_op_f32(-global1.d) < 708f, all(arg_0.a.zxx) | global1.b.x)));
    let var_2 = vec3<i32>(23902i, -_wgslsmith_mult_i32((i32(-1i) * -3655i) >> (_wgslsmith_mod_u32(0u, 1u) % 32u), firstTrailingBit(_wgslsmith_add_i32(u_input.b, u_input.b))), reverseBits(-1i));
    var var_3 = func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1243f, _wgslsmith_f_op_f32(-global1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, global1.d))), Struct_4(global1.a, -11258i, all(select(!arg_0.a.zw, vec2<bool>(var_1.a, global1.c.b.a.x), vec2<bool>(global1.a.a.x, arg_0.a.x))), arg_0));
    let var_4 = arg_0.a.wx;
    return !var_4.x;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    global0 = 1u;
    var var_0 = arg_3;
    var var_1 = firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(72626u, u_input.a))), 13289u), vec3<u32>(u_input.a, _wgslsmith_sub_u32(~93453u, firstTrailingBit(4294967295u)), ~countOneBits(62076u))));
    var var_2 = Struct_3(Struct_1(global1.c.b.a), select(select(select(!global1.a.a.xw, !arg_2.d.a.ww, !vec2<bool>(true, global1.c.a)), arg_2.a.a.wy, global1.b.x && (0u <= var_1.x)), !vec2<bool>(false & global1.b.x, true), global1.b), global1.c, arg_1.x);
    var var_3 = u_input.d.x;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(false, true, global1.c.b.a.x), global1.a.a.yyw, global1.b.x);
    let var_1 = !(!any(select(vec3<bool>(true, var_0.x, global1.c.b.a.x), vec3<bool>(true, true, false), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, global1.b.x), global1.c.b.a.wxy))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.d)), global1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) + -255f), 791f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1316f))));
    var var_3 = func_4(!(!global1.c.b.a.x), var_2.ww, Struct_4(global1.a, func_1(), !any(select(vec4<bool>(var_0.x, true, false, true), global1.c.b.a, global1.c.b.a)), Struct_1(select(select(global1.a.a, global1.a.a, vec4<bool>(true, var_0.x, true, var_1)), global1.c.b.a, vec4<bool>(global1.c.a, false, true, true)))), !(!func_2(Struct_1(vec4<bool>(global1.a.a.x, true, global1.b.x, var_1)))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(141f, -1439f, global1.d, _wgslsmith_f_op_f32(-global1.d)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1064f, 808f, -760f, 659f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1167f, global1.d, 705f, global1.d), vec4<f32>(301f, 1000f, var_2.x, var_2.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-289f, -1087f, 223f, -307f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -181f, global1.d, global1.d)))))));
    var_2 = vec4<f32>(-803f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) + _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1246f * 961f) + _wgslsmith_f_op_f32(trunc(-1587f))))), _wgslsmith_f_op_f32(-global1.d));
    global1 = Struct_3(Struct_1(select(!(!vec4<bool>(true, true, var_1, var_1)), vec4<bool>(func_4(var_1, var_2.yx, Struct_4(global1.c.b, -19494i, var_1, global1.c.b), var_3.d.a.x).d.a.x, true, !var_1, true), vec4<bool>(any(var_3.a.a), true, !var_0.x, all(global1.c.b.a.zxx)))), func_3(_wgslsmith_f_op_f32(224f - -1000f), global1.d, Struct_4(func_4(var_2.x < var_2.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-720f, var_2.x) * var_2.zz), Struct_4(global1.c.b, u_input.d.x, false, Struct_1(vec4<bool>(false, var_3.d.a.x, var_3.d.a.x, false))), select(true, false, var_3.c)).d, ~1i, var_0.x, func_4(var_3.a.a.x, _wgslsmith_f_op_vec2_f32(var_2.yz * var_2.zw), func_4(var_3.d.a.x, vec2<f32>(-185f, var_2.x), Struct_4(Struct_1(global1.a.a), u_input.c.x, var_3.c, Struct_1(vec4<bool>(global1.c.b.a.x, true, var_0.x, var_0.x))), global1.c.b.a.x), 0i < u_input.e).d)).zy, Struct_2(!global1.a.a.x, func_4(!any(vec3<bool>(global1.a.a.x, false, var_3.c)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(564f - global1.d)), func_4(u_input.a < 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-803f, 261f)), func_4(global1.c.b.a.x, vec2<f32>(global1.d, global1.d), Struct_4(var_3.a, u_input.e, var_3.a.a.x, global1.a), var_1), false), var_3.b > (u_input.c.x & 32107i)).a), var_2.x);
    var var_4 = vec2<u32>(~(~1u), max(max(0u, 4294967295u) | (u_input.a << (u_input.a % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 39842u, u_input.a), select(vec3<u32>(62872u, 33833u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), var_0))) | ~(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(52561u, var_4.x, 23289u, u_input.a), vec4<u32>(var_4.x, u_input.a, 0u, var_4.x)), u_input.a), ~(vec3<u32>(var_4.x, 72294u, u_input.a) ^ vec3<u32>(15485u, var_4.x, 0u))), ~firstLeadingBit(vec3<u32>(38119u, 1u, u_input.a))), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1558f + _wgslsmith_f_op_f32(select(1510f, var_2.x, any(var_0.zz)))) * -284f));
}

