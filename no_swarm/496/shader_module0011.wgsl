struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: array<i32, 18>;

var<private> global2: array<f32, 8>;

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = Struct_2(~(~max(min(vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.a, 7u)], 18u)], -13402i), vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74543u, 7u)], 7u)], 18u)], u_input.a)), vec2<i32>(-27797i, u_input.b))), arg_1.e, arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(54316u), 8u)]))));
    var var_1 = Struct_2(_wgslsmith_mult_vec2_i32(-var_0.a, vec2<i32>(-7784i, ~u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1040f, arg_1.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.zz - arg_1.e), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c.c.x, arg_1.c.x)))) * vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(select(var_0.d, -473f, true))))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-673f, var_0.c.e.x)))) - 1028f));
    var var_2 = -6808i;
    var var_3 = vec4<f32>(-2374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * -367f)))), var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-924f, _wgslsmith_f_op_f32(-arg_1.e.x))), var_0.d));
    return 1u;
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    var var_0 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), !select(false, false, true)), !select(vec4<bool>(false, true, true, any(vec2<bool>(true, false))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), all(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_2(-vec2<i32>(reverseBits(arg_1), -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-320f, 1218f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1808f, 1480f) + arg_2)))), Struct_1(4294967295u, 1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, vec4<bool>(false, false, var_0.x, var_0.x)))), false)), select(vec4<bool>(true, false, true, var_0.x), select(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, false, false, var_0.x)), vec4<bool>(false, var_0.x, false, true), false), !vec4<bool>(false, var_0.x, var_0.x, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-231f, global2[_wgslsmith_index_u32(u_input.c.x, 8u)]))), arg_0.yz, !vec2<bool>(var_0.x, var_0.x))) - vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(215f - arg_2.x)))), -1605f);
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(~(~1u), 7u)], 35354u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -805f))), _wgslsmith_f_op_f32(round(1959f)), _wgslsmith_f_op_f32(min(-172f, arg_0.x)), -284f)), !vec4<bool>(all(select(var_1.c.d, vec4<bool>(var_0.x, var_0.x, true, true), var_1.c.d.x)), all(var_1.c.d.wx), true, true), arg_0.yy);
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(27736i | arg_1, ~global1[_wgslsmith_index_u32(var_2.b, 18u)]) & 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, var_1.a.x, -14884i, u_input.b), vec4<i32>(2147483647i, arg_1, -2147483647i, 0i), var_1.c.d.x), vec4<i32>(u_input.b, 1i, 2147483647i, arg_1)), -2147483647i)), u_input.a);
    let var_4 = -vec3<i32>(~(~0i), -(arg_1 << (13089u % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(1u, 18u)], -34293i, arg_1, u_input.a), max(vec4<i32>(var_1.a.x, 2147483647i, -27684i, 15241i), vec4<i32>(604i, var_1.a.x, -1i, 2147483647i))) | -1i);
    return var_1.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = 42609u;
    var var_1 = 959f;
    var var_2 = var_0;
    let var_3 = select(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-595f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_3(arg_0.c.x, arg_0, arg_0.e.x), 7u)], 8u)], global2[_wgslsmith_index_u32(var_0, 8u)], global2[_wgslsmith_index_u32(u_input.c.x, 8u)])), reverseBits(arg_1), vec2<f32>(_wgslsmith_f_op_f32(select(-227f, _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x < arg_0.e.x)), global2[_wgslsmith_index_u32(53158u, 8u)])), 2147483647i, any(select(!arg_0.d.xyz, !vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.d.zzx)));
    var var_4 = -29351i;
    return -countOneBits(_wgslsmith_mult_i32(var_3, -2147483647i)) ^ var_3;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> StorageBuffer {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(select(-14734i, 2147483647i, true), func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 78585u, vec4<f32>(global2[_wgslsmith_index_u32(27688u, 8u)], -265f, 527f, 429f), vec4<bool>(false, true, true, false), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(1467u, 8u)])), u_input.b)), 1i) >> (abs(_wgslsmith_mod_u32(~0u, u_input.c.x)) % 32u), ~_wgslsmith_mod_i32(~u_input.b << (_wgslsmith_div_u32(arg_1, u_input.c.x) % 32u), i32(-1i) * -global1[_wgslsmith_index_u32(1u, 18u)]), ~func_2(Struct_1(10335u, ~arg_1, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28589u, 7u)], 8u)], arg_0.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36203u, 7u)], 7u)], 8u)]), vec4<f32>(global2[_wgslsmith_index_u32(0u, 8u)], arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, true, true, false))), vec4<bool>(true, false, true, false), vec2<f32>(1370f, 667f)), 0i), -2147483647i);
    global2 = array<f32, 8>();
    global3 = _wgslsmith_f_op_f32(-323f * _wgslsmith_f_op_f32(-arg_0.x));
    return StorageBuffer(-1533f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(37417u);
    global1 = array<i32, 18>();
    var var_1 = false;
    let var_2 = _wgslsmith_add_i32((1i << (firstLeadingBit(_wgslsmith_sub_u32(var_0, var_0)) % 32u)) << (12141u % 32u), u_input.b);
    var var_3 = Struct_1(var_0, ~47873u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_0, 8u)], 187f, global2[_wgslsmith_index_u32(38300u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)]))))), !vec4<bool>(true, all(vec3<bool>(true, true, false)) && false, true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(u_input.c.x, 91840u)), 8u)], global2[_wgslsmith_index_u32(~1u, 8u)])));
    var var_4 = _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.c.wwy) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0, 0u), vec3<u32>(var_0, 1u, var_3.b)) % vec3<u32>(32u)), ~min(u_input.c.zzy, vec3<u32>(var_3.b, var_3.a, 0u))), u_input.c.wwz >> ((select(u_input.c.xyw, vec3<u32>(4294967295u, u_input.c.x, 31198u) & u_input.c.xzz, var_3.d.xwx) | vec3<u32>(var_3.a, 16577u, ~u_input.c.x)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(-var_3.c.yyw), ~(~1u));
}

