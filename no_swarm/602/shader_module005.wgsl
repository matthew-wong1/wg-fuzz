struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(644f, 1825f, 168f, 926f), vec4<f32>(314f, 899f, 878f, -405f), vec4<f32>(-1864f, -1804f, -513f, -1000f), vec4<f32>(-249f, -1511f, 1866f, -1183f), vec4<f32>(816f, 508f, -247f, 982f), vec4<f32>(868f, 122f, 1495f, -1725f), vec4<f32>(-332f, 954f, 473f, 592f));

var<private> global1: array<f32, 26>;

var<private> global2: array<i32, 4> = array<i32, 4>(19708i, 1i, -35404i, -18708i);

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-2680i, i32(-2147483648)), Struct_1(9775i, 2147483647i), Struct_1(i32(-2147483648), 0i), Struct_1(-49141i, 2147483647i), Struct_1(i32(-2147483648), i32(-2147483648)), Struct_1(-3521i, 14255i), Struct_1(-22769i, -1i), Struct_1(57731i, 41800i), Struct_1(-12553i, -25014i), Struct_1(42911i, 2147483647i), Struct_1(2147483647i, 0i), Struct_1(1i, i32(-2147483648)), Struct_1(-1i, 19062i), Struct_1(23323i, 11838i), Struct_1(-1i, -1i), Struct_1(1i, 1i), Struct_1(-41403i, 4835i), Struct_1(i32(-2147483648), 0i), Struct_1(1i, -68137i), Struct_1(-18713i, 2147483647i), Struct_1(2079i, 1i), Struct_1(261i, 0i), Struct_1(-1559i, -42999i), Struct_1(i32(-2147483648), 12609i), Struct_1(29515i, -42830i), Struct_1(-467i, -38069i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> bool {
    global2 = array<i32, 4>();
    return arg_0 || arg_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    global1 = array<f32, 26>();
    var var_0 = Struct_2(~global2[_wgslsmith_index_u32(0u, 4u)], 37015u, ~u_input.c.x);
    global2 = array<i32, 4>();
    global1 = array<f32, 26>();
    global2 = array<i32, 4>();
    return Struct_1(~1i, ~var_0.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = func_3(vec4<bool>(func_2(true, Struct_2(_wgslsmith_div_i32(-33657i, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), u_input.b, 5254u)), (_wgslsmith_mod_u32(u_input.b, 4294967295u) != 0u) != false, true, true & all(vec4<bool>(true, true, true, true))), countOneBits(u_input.a.x | _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(120309u, u_input.a.x) << (vec2<u32>(40838u, 4294967295u) % vec2<u32>(32u)))));
    var_0 = global3[_wgslsmith_index_u32(abs(max(u_input.a.x, u_input.c.x) << ((u_input.b << (u_input.a.x % 32u)) % 32u)), 26u)];
    var var_1 = vec3<bool>(-424f == arg_1, (-1838f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, -1377f))))) != true, !any(vec2<bool>(true, true)));
    var_1 = select(vec3<bool>(var_1.x, func_2(var_1.x, Struct_2(-1902i, ~u_input.a.x, max(u_input.b, u_input.b))), any(vec3<bool>(any(vec3<bool>(var_1.x, var_1.x, true)), var_1.x | false, all(var_1.yx)))), select(vec3<bool>(var_1.x || !var_1.x, true, var_1.x), vec3<bool>(!(!var_1.x), any(vec2<bool>(true, false)), all(!vec3<bool>(var_1.x, var_1.x, true))), vec3<bool>(false, true, !(global1[_wgslsmith_index_u32(u_input.b, 26u)] < arg_1))), select(!(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false))), !vec3<bool>(true, true, all(vec3<bool>(true, false, var_1.x))), !select(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), true), true)));
    return Struct_2(-abs(abs(1i)), 59333u, ~(~13536u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-vec4<i32>(1i | ~global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -33225i, -global2[_wgslsmith_index_u32(u_input.b | 41436u, 4u)], firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 4u)])), global1[_wgslsmith_index_u32(0u, 26u)], -firstLeadingBit(1i));
    let var_1 = var_0.a;
    let var_2 = 5839u;
    var_0 = func_1(vec4<i32>(~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(15201u, 4u)], -2147483647i) & _wgslsmith_div_i32(var_0.a | 1i, ~2147483647i), ~var_0.a, -1i, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1083f))), _wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(-20271i, -23356i, -17283i, -2147483647i))), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(var_0.a, global2[_wgslsmith_index_u32(var_2, 4u)], global2[_wgslsmith_index_u32(var_0.c, 4u)], global2[_wgslsmith_index_u32(25484u, 4u)])), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, 1i, var_0.a, -1i), vec4<i32>(-4865i, -16282i, -2147483647i, -51628i)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, var_0.b), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1129f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(var_0.b, 26u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(13199u, 26u)], 331f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-576f, global1[_wgslsmith_index_u32(3549u, 26u)]))))));
    global2 = array<i32, 4>();
    global3 = array<Struct_1, 26>();
    global0 = array<vec4<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-countOneBits(vec4<i32>(1i, var_0.a, 7255i, global2[_wgslsmith_index_u32(var_2, 4u)]))));
}

