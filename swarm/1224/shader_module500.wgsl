struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_3,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<vec3<i32>, 25>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: Struct_5;

var<private> global3: array<i32, 22> = array<i32, 22>(-11987i, i32(-2147483648), 2147483647i, 1i, -15893i, 77370i, i32(-2147483648), 0i, -67784i, 1i, -38470i, 0i, 0i, 28795i, -1i, 65186i, 8213i, 1i, 1i, 35579i, 1i, 53153i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<i32>, 25>();
    global3 = array<i32, 22>();
    let var_0 = u_input.a;
    global1 = global2.e.d;
    let var_1 = ~global2.c.b.x;
    return Struct_1(global2.d.x, global1.x, ~vec3<u32>(~_wgslsmith_div_u32(global2.e.c, var_0), _wgslsmith_div_u32(var_0, 1u), max(38637u, u_input.a)), select(vec4<bool>(false, global2.e.d.x, _wgslsmith_sub_i32(global2.c.d.x, -2513i) >= 0i, true), select(vec4<bool>(!global1.x, global1.x, var_1 > 0i, 1u != global2.e.c), vec4<bool>(true, -532f == global2.c.c, any(global2.e.d), true), vec4<bool>(global1.x & false, global2.c.b.x == -18169i, all(global2.e.d.zz), global1.x)), !select(select(true, global1.x, global2.e.d.x), global2.c.a, false)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2();
    global1 = select(!(!(!func_2().d.xzy)), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -317f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(686f, arg_0))), !func_2().b, true), vec3<bool>(true, _wgslsmith_f_op_f32(-503f * -1000f) >= _wgslsmith_f_op_f32(-arg_0), false));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.e.x, arg_0) - global2.c.e))) - vec2<f32>(global2.c.c, _wgslsmith_f_op_f32(select(-879f, global2.a.a.x, global2.e.d.x))))), _wgslsmith_f_op_vec2_f32(sign(global2.c.e)));
    var var_2 = global3[_wgslsmith_index_u32(~(~27312u), 22u)];
    var var_3 = select(abs(u_input.b), u_input.b, false) ^ u_input.b;
    return func_2();
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = global2.a;
    var var_1 = true;
    var var_2 = Struct_3(!(!arg_0.b), ~(~vec4<i32>(1i, -45231i, reverseBits(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 22u)], 7345i, global2.c.b.x), global2.c.b.yyw))), var_0.a.x, global2.c.b.xxw, _wgslsmith_f_op_vec2_f32(-global2.c.e));
    var var_3 = _wgslsmith_clamp_vec3_i32(-abs(var_2.d), vec3<i32>(~u_input.b, -max(u_input.b, abs(global2.c.d.x)), _wgslsmith_dot_vec4_i32(global2.c.b, vec4<i32>(_wgslsmith_add_i32(u_input.b, global3[_wgslsmith_index_u32(1u, 22u)]), global3[_wgslsmith_index_u32(~0u, 22u)], ~global2.c.b.x, -u_input.b))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(abs(global2.c.b.wxw)), -(~vec3<i32>(var_2.d.x, var_2.b.x, var_2.d.x))), vec3<i32>(_wgslsmith_dot_vec2_i32(global2.c.d.yz, vec2<i32>(global3[_wgslsmith_index_u32(global2.e.c, 22u)], var_2.d.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, global3[_wgslsmith_index_u32(u_input.a, 22u)], global3[_wgslsmith_index_u32(26033u, 22u)]), var_2.b), abs(-23494i))));
    var var_4 = Struct_5(global2.a, var_2.c, Struct_3(arg_0.b, abs(select(~vec4<i32>(var_2.b.x, global2.e.b, -2147483647i, 1i), vec4<i32>(var_3.x, var_3.x, global3[_wgslsmith_index_u32(32467u, 22u)], global3[_wgslsmith_index_u32(14528u, 22u)]) ^ global2.c.b, !arg_0.d)), _wgslsmith_f_op_f32(global2.e.a + -889f), global2.c.b.xxx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.e) - vec2<f32>(-261f, 1000f)))), vec3<u32>(arg_1.a, _wgslsmith_clamp_u32(22621u, firstLeadingBit(1u), arg_0.a), 15010u) | (abs(vec3<u32>(0u, 2529u, 0u)) << (arg_0.c % vec3<u32>(32u))), global2.e);
    return ~_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.a, 1u, arg_1.a))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c.x, arg_0.a, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, global2.d.x), global2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 25>();
    let var_0 = func_3(func_1(global2.e.a), Struct_1(_wgslsmith_dot_vec2_u32(~global2.d.zy, vec2<u32>(reverseBits(global2.e.c), global2.d.x | u_input.a)), all(!vec2<bool>(global2.e.d.x, false)), func_2().c, select(select(select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(true, false, global1.x, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, global2.c.a, false, false), vec4<bool>(global2.e.d.x, global2.c.a, true, false), global2.c.a), !vec4<bool>(false, global1.x, global2.c.a, true)), func_1(_wgslsmith_f_op_f32(floor(global2.e.a))).d, !vec4<bool>(global1.x, false, false, global2.c.a))));
    var var_1 = global0[_wgslsmith_index_u32(0u, 25u)];
    global0 = array<vec3<i32>, 25>();
    global2 = Struct_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1250f * global2.c.e.x) * _wgslsmith_f_op_f32(trunc(global2.e.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1891f), -251f)), -1510f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.e.x, 2230f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1203f)), _wgslsmith_f_op_f32(global2.a.a.x * 952f))), 1108f, Struct_3(all(func_2().d), vec4<i32>(1i, -_wgslsmith_dot_vec2_i32(global2.c.d.zz, vec2<i32>(var_1.x, -1i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(40018i, 2147483647i), global2.e.b), u_input.b), 284f, vec3<i32>(29444i, var_1.x, -17185i), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -1658f)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, var_0, global2.d.x), global2.d) >> (~vec3<u32>(~global2.e.c, 4294967295u, var_0) % vec3<u32>(32u)), Struct_2(global2.b, max(firstTrailingBit(~1i), u_input.b), func_2().a, select(!vec3<bool>(global2.c.a, global1.x, false), select(select(global2.e.d, vec3<bool>(false, global1.x, global1.x), global1.x), !vec3<bool>(true, global2.e.d.x, global1.x), global2.e.d), !vec3<bool>(global1.x, global1.x, true))));
    global0 = array<vec3<i32>, 25>();
    global1 = vec3<bool>(false, !global2.c.a, !select(true, true, global1.x) && global1.x);
    global2 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1078f, _wgslsmith_f_op_f32(global2.c.e.x + -1000f), -295f, 1603f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, -1888f, global2.c.c, 727f))), global2.c.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_3(global2.e.d.x, vec4<i32>(_wgslsmith_div_i32(~(-24791i), global2.e.b), var_1.x & abs(u_input.b), -2147483647i, var_1.x), _wgslsmith_div_f32(global2.b, -1000f), global2.c.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-861f, global2.a.a.x) + vec2<f32>(global2.e.a, global2.b)) + _wgslsmith_f_op_vec2_f32(-global2.c.e))))), vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~3406u, global2.e.c << (88472u % 32u), 4294967295u), reverseBits(global2.d ^ global2.d)), _wgslsmith_add_u32(~_wgslsmith_div_u32(var_0, var_0), var_0)), global2.e);
    let var_2 = Struct_1(~firstLeadingBit(~(~u_input.a)), true, vec3<u32>(~var_0, global2.e.c, select(~u_input.a, var_0, global1.x) | ~(~2766u)), vec4<bool>(true, true, false, !all(func_2().d.yzz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.e.a - 612f))));
}

