struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = 54338u;
    var var_1 = _wgslsmith_sub_vec3_u32(min(_wgslsmith_mod_vec3_u32(select(u_input.a.yyx, u_input.a.zyz, arg_0.c), ~u_input.a.wwz), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 46462u), u_input.a.x, u_input.a.x)) << (~u_input.a.yzw % vec3<u32>(32u)), ~select(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, var_0, var_0), u_input.a.yzy), vec3<u32>(u_input.a.x, u_input.a.x, var_0)), countOneBits(_wgslsmith_mult_vec3_u32(u_input.a.xzw, vec3<u32>(u_input.a.x, 46217u, 4294967295u))), select(arg_0.b.xwz, vec3<bool>(arg_0.a, arg_0.b.x, arg_0.a), vec3<bool>(arg_0.b.x, arg_0.c, false))));
    var var_2 = !(!any(arg_0.b.wzx) || true);
    var var_3 = u_input.a;
    var var_4 = select(_wgslsmith_sub_vec3_u32(var_3.wxw, ~(~vec3<u32>(var_0, 1u, var_1.x))), u_input.a.yxz, select(!select(!vec3<bool>(arg_0.c, arg_0.b.x, arg_0.a), arg_0.b.yxz, any(arg_0.b.wx)), vec3<bool>(!arg_0.b.x, true, true), !arg_0.b.wyx));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1091f - _wgslsmith_f_op_f32(sign(-245f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(864f))))));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    let var_0 = true;
    var var_1 = Struct_2(u_input.b.x, u_input.b.x, vec4<bool>(false, !select(false, var_0, false), true, !all(select(vec4<bool>(true, true, false, var_0), vec4<bool>(var_0, true, false, false), true))));
    var var_2 = Struct_2(-23733i, ~(~u_input.b.x), !(!(!select(vec4<bool>(false, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, true, true), vec4<bool>(true, var_0, var_0, var_0)))));
    var var_3 = Struct_2(-2147483647i, _wgslsmith_dot_vec4_i32(~(~firstLeadingBit(vec4<i32>(-1i, var_1.a, u_input.b.x, var_2.a))), countOneBits(vec4<i32>(var_1.a, -20432i, 2147483647i, var_1.b) ^ ~vec4<i32>(6792i, var_1.b, u_input.b.x, -2147483647i))), var_2.c);
    var var_4 = _wgslsmith_div_i32(var_3.b, u_input.b.x);
    return _wgslsmith_f_op_f32(trunc(1000f)) <= -732f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> vec4<bool> {
    global0 = false;
    global0 = true;
    global0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f + 756f)), _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.c, vec4<bool>(arg_1.c.x, true, arg_1.c.x, true), arg_1.c.x))), _wgslsmith_f_op_f32(-1959f - _wgslsmith_f_op_f32(f32(-1f) * -232f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(243f + -2354f) - _wgslsmith_f_op_f32(1464f - 1979f)))) & (abs(u_input.b.x >> (u_input.a.x % 32u)) < ~(-1i | ~u_input.b.x));
    global0 = true;
    global0 = arg_1.c.x != (true || (!arg_3.c.x & false));
    return select(vec4<bool>(arg_2.x, any(!(!vec4<bool>(arg_1.c.x, true, arg_2.x, arg_0.c))), true, _wgslsmith_f_op_f32(func_3(arg_0)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(661f, -462f, arg_3.c.x)) + _wgslsmith_div_f32(-505f, -1761f))), vec4<bool>(!(true & (-1i <= arg_3.a)), false, any(arg_1.c), _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, u_input.a.x)) <= 8155u), vec4<bool>((-arg_3.b | 0i) <= -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, arg_3.a, arg_1.b), vec4<i32>(64350i, 24853i, 36238i, arg_3.a)), all(!arg_2), arg_0.a, true));
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(true & (all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)) || true), true | any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_2(Struct_1(true, vec4<bool>(true, true, false, false), false), Struct_2(-2147483647i, 2147483647i, vec4<bool>(false, false, false, false)), vec3<bool>(false, false, false), Struct_2(u_input.b.x, u_input.b.x, vec4<bool>(false, false, true, true))))));
    let var_1 = ~firstLeadingBit(u_input.a);
    let var_2 = Struct_1(all(select(select(!vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(false, var_0.x, var_0.x), true & var_0.x), !(!vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(true, true, true))), vec4<bool>(false, false, 264f > _wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, vec4<bool>(false, var_0.x, false, var_0.x), var_0.x))), var_0.x || all(vec3<bool>(var_0.x, false, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, vec4<bool>(var_0.x, false, true, true), false))) * -127f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x))) - _wgslsmith_f_op_f32(min(-1000f, 1000f)))));
    global0 = u_input.b.x >= (40790i & _wgslsmith_dot_vec3_i32(-vec3<i32>(74573i, 14420i, u_input.b.x), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.b.x, -2147483647i, 30140i))));
    global0 = var_0.x;
    return Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, -846i), vec4<i32>(u_input.b.x, firstLeadingBit(1i), firstTrailingBit(u_input.b.x), 32276i)), u_input.b.x), _wgslsmith_div_i32(-2147483647i, -u_input.b.x), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = func_1();
    global0 = (true != (false || (false || func_1().c.x))) || var_0.c.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1442f)), _wgslsmith_f_op_f32(f32(-1f) * -837f), var_0.c.x)) * 1f)));
    global0 = _wgslsmith_clamp_i32(var_0.a ^ 2147483647i, -3312i, 0i) <= u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, u_input.a, -3339i, u_input.a.x);
}

