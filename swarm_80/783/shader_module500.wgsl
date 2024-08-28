struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-7948i, -51071i, 12168i, 2147483647i, -51532i, 1i, 2147483647i, 3887i, 0i, 2147483647i, 0i, 0i, -18084i, 1i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> i32 {
    return u_input.b;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(~1u, 18623u, 0u) != 23277u;
    global0 = array<i32, 14>();
    let var_1 = max(-min(i32(-1i) * -2147483647i, 21891i | func_2()), 1194i);
    let var_2 = -_wgslsmith_add_vec2_i32(u_input.d.yz, -u_input.d.yz);
    global0 = array<i32, 14>();
    return _wgslsmith_f_op_f32(-arg_0.a);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_5(Struct_3(firstLeadingBit(~_wgslsmith_div_vec2_u32(u_input.e.yy, vec2<u32>(u_input.e.x, 1u))), _wgslsmith_sub_i32(-select(-26507i, arg_0, false), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.e.x, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)] ^ u_input.d.x)), true, _wgslsmith_f_op_f32(-573f + -1881f), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true), true)), true, true, select(vec4<i32>(u_input.b, min(-37581i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(17497u, 14u)], u_input.d.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(41013u, 14u)], u_input.b), u_input.d.xz), -1i | -u_input.b), u_input.d, !any(vec3<bool>(false, false, true))));
    var var_1 = Struct_1(-1000f, select(select(select(!var_0.a.e, var_0.a.e, var_0.a.e.x), vec2<bool>(any(var_0.a.e), select(true, false, var_0.b)), !select(vec2<bool>(var_0.b, var_0.b), var_0.a.e, var_0.c)), !select(select(var_0.a.e, var_0.a.e, true), var_0.a.e, true), !any(select(vec2<bool>(var_0.c, var_0.a.e.x), vec2<bool>(true, var_0.c), false))), !var_0.a.e.x, 2067f);
    global0 = array<i32, 14>();
    let var_2 = vec2<u32>(var_0.a.a.x, u_input.a);
    let var_3 = Struct_4(~select(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.a.a, vec2<u32>(var_0.a.a.x, var_2.x)), u_input.e.xx), u_input.c.xz ^ _wgslsmith_mult_vec2_u32(var_0.a.a, vec2<u32>(u_input.a, 4294967295u)), true), Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(1f)), var_0.a.e, any(select(vec4<bool>(true, false, var_0.a.c, var_1.b.x), vec4<bool>(false, false, var_1.c, var_0.b), false)), var_1.d), Struct_1(var_0.a.d, select(vec2<bool>(true, var_1.b.x), vec2<bool>(var_1.b.x, false), select(vec2<bool>(var_0.a.e.x, false), vec2<bool>(true, true), var_1.b)), any(!vec4<bool>(var_1.c, true, false, var_1.b.x)), _wgslsmith_div_f32(var_1.a, var_1.a)), select(!select(vec3<bool>(var_1.b.x, false, var_1.c), vec3<bool>(false, var_1.b.x, true), false), select(!vec3<bool>(var_0.b, true, true), !vec3<bool>(true, var_0.c, true), select(vec3<bool>(var_0.b, true, var_1.b.x), vec3<bool>(true, true, var_0.b), vec3<bool>(false, var_0.c, true))), select(!vec3<bool>(true, true, var_1.c), vec3<bool>(false, var_0.c, var_0.b), any(vec3<bool>(var_1.b.x, true, false)))), Struct_1(_wgslsmith_f_op_f32(-356f * _wgslsmith_f_op_f32(round(1423f))), vec2<bool>(!var_1.b.x, any(vec3<bool>(true, false, false))), true || (var_1.c | false), _wgslsmith_f_op_f32(-var_1.d)), vec4<u32>(abs(~u_input.e.x), ~var_0.a.a.x, var_0.a.a.x, 13438u)), Struct_2(Struct_1(-535f, vec2<bool>(true, global0[_wgslsmith_index_u32(64932u, 14u)] <= var_0.d.x), var_1.c, 730f), Struct_1(var_0.a.d, var_0.a.e, reverseBits(arg_0) >= 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-373f, -144f)))), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -303f), var_1.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.d, -895f)) - _wgslsmith_f_op_f32(sign(var_1.a)))), max(~(vec4<u32>(3241u, 1u, var_0.a.a.x, var_2.x) >> (vec4<u32>(4294967295u, u_input.c.x, var_0.a.a.x, u_input.e.x) % vec4<u32>(32u))), vec4<u32>(var_0.a.a.x, abs(var_0.a.a.x), _wgslsmith_mult_u32(0u, 6835u), u_input.c.x))), var_0.a);
    return -1385f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-1612f, vec2<bool>(false, true), false, 730f))), _wgslsmith_f_op_f32(func_3(-37943i))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -922f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(countOneBits(-1i)))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_0 = any(vec4<bool>(!select(true, true, false), false, !(0i >= global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), true)) && (-(~countOneBits(1927i)) >= u_input.d.x);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1254f)), -787f, 675f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-287f)) + _wgslsmith_f_op_f32(ceil(355f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f)), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, -154f, 1158f, 1029f)));
    var_0 = false;
    var var_2 = Struct_5(Struct_3(vec2<u32>(~(~1u), u_input.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), u_input.d.xw), -_wgslsmith_sub_vec2_i32(u_input.d.xw, vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(25648u, 14u)]))), !(u_input.c.x != 0u) | (-73690i == u_input.b), _wgslsmith_f_op_f32(1f * var_1.x), vec2<bool>(_wgslsmith_f_op_f32(ceil(283f)) < _wgslsmith_f_op_f32(func_1(Struct_1(var_1.x, vec2<bool>(false, true), true, 109f))), false)), !all(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true, ~u_input.d);
    var_0 = var_2.b;
    var var_3 = -2147483647i;
    let var_4 = 1u;
    var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

