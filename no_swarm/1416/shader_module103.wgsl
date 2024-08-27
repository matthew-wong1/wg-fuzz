struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, false, true, true, true, false, true, true, false, true);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = array<bool, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(457f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(820f + -1282f)))) - 837f);
    var var_1 = -(u_input.a ^ _wgslsmith_dot_vec2_i32(u_input.c.yz, ~vec2<i32>(u_input.c.x, -1582i)));
    global0 = array<bool, 11>();
    var var_2 = u_input.c.x;
    return ~(~_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(~u_input.b.x, _wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x), ~arg_0.a.x, ~4294967295u)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    let var_0 = arg_1.x;
    let var_1 = Struct_1(u_input.b & _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, abs(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x))), 25237u < _wgslsmith_clamp_u32(71039u, 1u, ~(~60038u)), -u_input.c.xwx);
    global0 = array<bool, 11>();
    let var_2 = _wgslsmith_f_op_f32(sign(341f));
    let var_3 = vec2<u32>(var_1.a.x, u_input.b.x);
    return ~19106u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = ~(~4294967295u);
    var var_1 = arg_1.a.x;
    return Struct_1(~vec4<u32>(func_3(1579f, min(vec4<i32>(arg_1.c.x, u_input.a, -1i, arg_0.c.x), u_input.c), all(vec3<bool>(false, true, false))), arg_0.a.x, arg_1.a.x, arg_1.a.x), (~(1u | arg_0.a.x) >> (~countOneBits(arg_0.a.x) % 32u)) >= ~(_wgslsmith_mod_u32(1u, arg_1.a.x) | func_1(arg_1, true)), arg_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = array<bool, 11>();
    var var_0 = !vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(arg_0.b, global0[_wgslsmith_index_u32(30780u, 11u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)])), select(vec2<bool>(true, false), vec2<bool>(arg_0.b, false), vec2<bool>(false, false)), vec2<bool>(true, false))), true, false);
    let var_1 = min(~u_input.a, select(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~u_input.c.yx, ~vec2<i32>(1797i, -1i)), _wgslsmith_sub_i32(select(arg_1, u_input.c.x, var_0.x), countOneBits(-39542i))), arg_0.c.x >> (u_input.b.x % 32u), true));
    let var_2 = !(!arg_0.b);
    var_0 = select(vec3<bool>(var_2, global0[_wgslsmith_index_u32(68544u, 11u)], var_2), vec3<bool>(!var_2, any(!(!vec4<bool>(false, false, false, var_2))), !global0[_wgslsmith_index_u32(~u_input.b.x, 11u)]), all(select(vec3<bool>(true, false, var_2), vec3<bool>(true, !var_0.x, var_2), !select(vec3<bool>(var_0.x, arg_0.b, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec3<bool>(var_2, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], var_0.x), var_0.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zx << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u));
    var var_1 = Struct_1(~u_input.b, any(vec2<bool>((53795u >= u_input.b.x) & global0[_wgslsmith_index_u32(func_1(Struct_1(vec4<u32>(39153u, 0u, 64318u, u_input.b.x), false, u_input.c.wwx), false), 11u)], global0[_wgslsmith_index_u32(0u, 11u)])), vec3<i32>(i32(-1i) * -1i, u_input.c.x >> (~_wgslsmith_div_u32(0u, var_0.x) % 32u), _wgslsmith_add_i32(~21126i, _wgslsmith_mod_i32(u_input.c.x << (u_input.b.x % 32u), _wgslsmith_sub_i32(-1i, u_input.a)))));
    var var_2 = countOneBits(~min(~firstTrailingBit(var_1.a), vec4<u32>(12611u, _wgslsmith_sub_u32(4294967295u, 18469u), 1u, _wgslsmith_add_u32(var_0.x, var_1.a.x))));
    let var_3 = !any(select(!vec2<bool>(var_1.b, false), select(vec2<bool>(false, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(17563u, 11u)]), vec2<bool>(false, true), false), vec2<bool>(var_1.b, global0[_wgslsmith_index_u32(0u, 11u)])), !select(vec2<bool>(global0[_wgslsmith_index_u32(46797u, 11u)], global0[_wgslsmith_index_u32(70639u, 11u)]), vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, false))));
    var var_4 = -(~(-_wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.c.x, var_1.c.x), -u_input.c.zy)));
    let var_5 = ~_wgslsmith_dot_vec4_u32(u_input.b | (u_input.b << (var_1.a % vec4<u32>(32u))), var_1.a) >> (~(~select(var_2.x, 4854u, false)) % 32u);
    var var_6 = vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.c.xx, _wgslsmith_add_vec2_i32(select(var_1.c.xx, var_1.c.zy, vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], var_3)) ^ u_input.c.zw, _wgslsmith_sub_vec2_i32(u_input.c.xz ^ u_input.c.xz, ~vec2<i32>(-64615i, var_1.c.x)))), var_1.c.x);
    var_0 = _wgslsmith_div_vec2_u32(var_1.a.xw, vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(max(64643u, u_input.b.x), abs(4294967295u)), var_5)));
    var_2 = ~select(~u_input.b, ~(~(~vec4<u32>(4294967295u, var_5, 15412u, var_5))), vec4<bool>(var_3, func_4(func_2(Struct_1(u_input.b, var_3, vec3<i32>(var_4.x, -16049i, var_6.x)), Struct_1(u_input.b, var_1.b, vec3<i32>(-7723i, var_1.c.x, var_1.c.x)), vec3<f32>(711f, 1111f, -505f)), var_4.x | u_input.c.x), global0[_wgslsmith_index_u32(var_1.a.x, 11u)], true));
    let x = u_input.a;
    s_output = StorageBuffer(-1023f, var_1.c.x ^ var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1157f + -476f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(793f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1783f, 829f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1776f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1650f))))));
}

