struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32>;

var<private> global2: u32 = 0u;

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    return -1000f;
}

fn func_2() -> Struct_2 {
    global1 = vec2<u32>(global1.x | min(global1.x, ~13341u), ~(global1.x | u_input.a.x));
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(516f + 185f) + _wgslsmith_f_op_f32(step(168f, 269f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(-106f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, _wgslsmith_add_u32(17562u, 0u))) - 1f), _wgslsmith_f_op_f32(927f * 1f)));
    global2 = 0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)));
    var var_2 = var_0;
    return var_0;
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = Struct_3(vec3<bool>(-646f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x))) != _wgslsmith_f_op_f32(-arg_0.a.x), any(vec2<bool>(!global3.x, false))), vec4<bool>(global3.x, true, any(select(vec4<bool>(global3.x, global3.x, global3.x, false), !vec4<bool>(false, global3.x, false, global3.x), vec4<bool>(true, global3.x, global3.x, false))), global3.x), Struct_1(-1829f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, -1546f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, -814f))), u_input.c.x | _wgslsmith_add_i32(~u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(min(1384f, _wgslsmith_f_op_f32(trunc(1332f)))) > arg_0.a.x, -45731i));
    let var_1 = !select(var_0.a, !(!(!var_0.b.wwx)), global3.x);
    let var_2 = arg_0;
    var var_3 = var_2;
    var var_4 = func_2();
    return select(vec2<u32>(~_wgslsmith_add_u32(u_input.e, 1u), 7355u), u_input.a.xy, var_1.x || any(select(!var_0.b, var_0.b, true)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global1 = func_4(func_2());
    global3 = select(select(!(!(!vec3<bool>(global3.x, global3.x, true))), select(vec3<bool>(global3.x, arg_0.x & true, !arg_0.x), select(!vec3<bool>(false, true, arg_0.x), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, true, global3.x)), select(vec3<bool>(true, false, false), vec3<bool>(global3.x, global3.x, arg_0.x), vec3<bool>(true, arg_0.x, false))), false), select(select(select(vec3<bool>(false, global3.x, false), vec3<bool>(true, arg_0.x, global3.x), arg_0.x), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(true, false, global3.x), false), select(vec3<bool>(arg_0.x, global3.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false))), vec3<bool>(arg_0.x, true, true), !any(vec4<bool>(arg_0.x, false, arg_0.x, true)))), !select(vec3<bool>(true, arg_0.x, true), vec3<bool>(true, true, true), vec3<bool>(true, global3.x, all(vec2<bool>(global3.x, arg_0.x)))), !select(vec3<bool>(any(vec4<bool>(global3.x, false, false, true)), all(arg_0), true), select(select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true)), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(global3.x, arg_0.x, false), vec3<bool>(true, arg_0.x, global3.x)), select(vec3<bool>(global3.x, arg_0.x, arg_0.x), vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, true, true))), !arg_0.x));
    global2 = u_input.e;
    global1 = reverseBits(u_input.a.zw);
    var var_0 = Struct_3(vec3<bool>(arg_0.x, true, all(select(select(global3.yy, global3.xx, global3.x), global3.xz, arg_0.x))), vec4<bool>(global3.x, arg_0.x, false | (global3.x == false), global3.x), Struct_1(463f, 103f, ~1i, true, -31179i));
    return Struct_3(!(!var_0.a), var_0.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.a * var_0.c.b))), -857f, firstTrailingBit(var_0.c.e), !arg_0.x, var_0.c.e));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(651f))) + 290f), arg_1, select(arg_0.a.x, arg_0.a.x, abs(-2147483647i) == _wgslsmith_sub_i32(20649i, arg_0.c.e)))));
    return func_2();
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    var var_0 = func_1(!vec2<bool>(any(func_1(vec2<bool>(false, false)).a), !global3.x));
    global3 = var_0.b.zwy;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(157f, _wgslsmith_f_op_f32(-1639f - 366f))) * _wgslsmith_f_op_f32(func_1(vec2<bool>(global3.x, global3.x)).c.b - _wgslsmith_f_op_f32(f32(-1f) * -782f)))), 1281f);
    global0 = global1.x;
    global2 = ~abs(~25269u);
    return func_1(vec2<bool>(var_0.c.a >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x) + -414f), u_input.e > ~global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1666f, 1280f), _wgslsmith_f_op_f32(trunc(-850f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(996f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) + _wgslsmith_f_op_f32(select(2531f, 1489f, true)))) + -153f));
    var var_1 = func_6(func_5(func_1(!vec2<bool>(global3.x, true)), _wgslsmith_f_op_f32(floor(-1000f))));
    global1 = min(~u_input.a.yz >> (_wgslsmith_sub_vec2_u32(u_input.a.ww, ~(~vec2<u32>(u_input.a.x, u_input.a.x))) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xxw, vec3<u32>(u_input.b, 28900u, 4294967295u)), global1.x ^ 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(global1.x, 4294967295u)) ^ vec2<u32>(0u, 16511u)));
    var var_2 = u_input.c.x;
    var var_3 = func_1(vec2<bool>(global3.x, true));
    global1 = (vec2<u32>(max(global1.x, u_input.a.x) >> ((u_input.b >> (37279u % 32u)) % 32u), global1.x) & u_input.a.xx) ^ ((vec2<u32>(~u_input.e, global1.x) | vec2<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.a.yww, u_input.a.xxw))) ^ firstTrailingBit(vec2<u32>(0u | u_input.a.x, u_input.e)));
    let var_4 = ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(57739u, u_input.a.x, global1.x, u_input.e)), countOneBits(global1.x), ~0u), _wgslsmith_div_vec3_u32(u_input.a.wzz, ~u_input.a.zzz)));
    var var_5 = func_6(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(var_4.x, var_4.x, u_input.e) & u_input.a.wxx), vec3<u32>(1u, _wgslsmith_div_u32(22904u, var_4.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 70585u), ~var_4.zx)), u_input.a.yxw), var_4);
}

