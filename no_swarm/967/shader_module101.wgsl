struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(15003u, 37872u, 4039u, 1u), vec4<u32>(6888u, 38833u, 1u, 0u), vec4<u32>(10936u, 1u, 18823u, 4294967295u), vec4<u32>(4294967295u, 29094u, 0u, 67498u), vec4<u32>(0u, 0u, 36741u, 1u), vec4<u32>(101188u, 1u, 0u, 0u), vec4<u32>(1u, 65322u, 1u, 45395u), vec4<u32>(60006u, 37412u, 54043u, 4294967295u), vec4<u32>(1u, 0u, 61342u, 39964u), vec4<u32>(0u, 4294967295u, 0u, 9329u), vec4<u32>(33576u, 20376u, 1u, 4294967295u), vec4<u32>(33206u, 15738u, 101396u, 1006u));

var<private> global1: array<bool, 11>;

var<private> global2: vec2<i32>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> i32 {
    global1 = array<bool, 11>();
    global3 = arg_0;
    var var_0 = _wgslsmith_mult_vec2_i32(-max(vec2<i32>(_wgslsmith_dot_vec2_i32(global3.b.d.wy, arg_0.b.d.yw), -2147483647i ^ global2.x), vec2<i32>(2147483647i, -arg_0.b.d.x)), vec2<i32>(-2147483647i, global2.x));
    global0 = array<vec4<u32>, 12>();
    var var_1 = vec3<i32>(-1i, -2147483647i, global2.x);
    return 41130i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec2<bool>) -> f32 {
    global2 = global3.d;
    global2 = ~min(~(~vec2<i32>(-22686i, global3.b.d.x)) ^ abs(~vec2<i32>(global2.x, 2147483647i)), -vec2<i32>(_wgslsmith_mult_i32(796i, global2.x), global2.x));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))) + global3.a.a);
    let var_1 = reverseBits(vec2<i32>(abs(29087i), 1i));
    global3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-312f, _wgslsmith_f_op_f32(f32(-1f) * -678f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + 725f), 951f))), !vec3<bool>(all(vec2<bool>(arg_3.x, false)), any(global3.b.e.b), global3.b.c <= 16839u)), Struct_2(global3.b.a, arg_0, 1u, min(firstLeadingBit(vec4<i32>(-14584i, global3.d.x, var_1.x, global2.x) & global3.b.d), vec4<i32>(-74542i << (global3.b.a.x % 32u), global3.b.d.x, global2.x, global2.x)), arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1479f)), global3.b.b.a)), global3.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<vec4<u32>, 12>();
    var var_0 = select(-_wgslsmith_add_i32(global2.x, min(-global2.x, _wgslsmith_sub_i32(-24160i, global2.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -21405i, min(-1i, -1i), _wgslsmith_mod_i32(global3.b.d.x, 1i)), vec4<i32>(func_2(Struct_3(Struct_1(global3.b.b.a, vec3<bool>(false, true, false)), Struct_2(u_input.b, Struct_1(arg_1, global3.b.e.b), u_input.b.x, vec4<i32>(global3.b.d.x, global3.b.d.x, 3220i, global3.b.d.x), global3.b.b), -569f, global3.b.d.xz), _wgslsmith_f_op_f32(ceil(global3.b.b.a))), global3.d.x, 1i, 8458i)), all(select(select(arg_2, arg_2, arg_2), vec4<bool>(global1[_wgslsmith_index_u32(~u_input.a, 11u)], arg_0, false, true), arg_2)));
    global1 = array<bool, 11>();
    var var_1 = ~global3.b.d.zyy;
    var var_2 = abs(vec4<i32>(max(~global2.x, 37462i), ~(~(~var_1.x)), 1i ^ var_1.x, ~(1i & (global2.x & 31064i))));
    return Struct_1(_wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(trunc(global3.c)), select(vec3<bool>(arg_0, false, arg_2.x), vec3<bool>(global3.b.b.b.x, global3.a.b.x, arg_2.x), vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], false, true))), Struct_4(~global0[_wgslsmith_index_u32(0u, 12u)]), vec2<f32>(_wgslsmith_f_op_f32(-global3.c), 332f), !global3.a.b.yy))), select(arg_2.xxy, global3.b.e.b, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = global3.b.a.x;
    global0 = array<vec4<u32>, 12>();
    var var_1 = vec4<u32>(~(~32157u), _wgslsmith_clamp_u32(~1u, firstLeadingBit(min(_wgslsmith_div_u32(arg_1.b.a.x, arg_1.b.a.x), max(70181u, 1u))), 57686u), _wgslsmith_mult_u32(4294967295u, global3.b.c), arg_1.b.a.x);
    global1 = array<bool, 11>();
    let var_2 = var_1.ywy;
    return Struct_2(~min(firstLeadingBit(vec2<u32>(86646u, 0u)), max(var_1.yx | var_2.yz, _wgslsmith_div_vec2_u32(global3.b.a, vec2<u32>(7270u, 12891u)))), func_1(!func_1(false, -480f, select(vec4<bool>(true, global1[_wgslsmith_index_u32(927u, 11u)], global1[_wgslsmith_index_u32(var_2.x, 11u)], true), vec4<bool>(arg_2.b.x, global3.a.b.x, true, global3.b.e.b.x), arg_0.x)).b.x, _wgslsmith_f_op_f32(func_1(global3.a.b.x, _wgslsmith_f_op_f32(sign(arg_3.a)), !vec4<bool>(arg_2.b.x, arg_3.b.x, true, true)).a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-731f, arg_3.a)))), select(vec4<bool>(func_1(true, -390f, vec4<bool>(global3.b.e.b.x, arg_0.x, false, true)).b.x, 54107i >= arg_1.b.d.x, func_1(arg_3.b.x, -1590f, vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_1.a.b.x)).b.x, arg_3.a <= global3.a.a), select(!vec4<bool>(arg_0.x, true, global3.b.e.b.x, true), !vec4<bool>(arg_1.b.e.b.x, false, arg_0.x, arg_3.b.x), select(vec4<bool>(arg_1.a.b.x, arg_3.b.x, global3.b.e.b.x, false), vec4<bool>(global1[_wgslsmith_index_u32(24235u, 11u)], true, arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<bool>(true, arg_2.b.x, true, false))), !(!vec4<bool>(false, false, arg_1.a.b.x, arg_1.b.e.b.x)))), var_1.x, vec4<i32>(arg_1.b.d.x, 2147483647i & -global2.x, min(i32(-1i) * -33976i, i32(-1i) * -42246i), global3.b.d.x) & select(vec4<i32>(-1i) * -vec4<i32>(10294i, -2147483647i, arg_1.b.d.x, global3.d.x), vec4<i32>(global2.x, _wgslsmith_div_i32(2147483647i, global2.x), 1i, max(global3.d.x, 44072i)), -1000f > arg_3.a), global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-548f * -527f), global3.b.e.b), func_4(!vec3<bool>(global3.b.e.b.x, true, true), Struct_3(func_1(global3.a.b.x, _wgslsmith_f_op_f32(max(2181f, global3.c)), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(54896u, 11u)], true, true), vec4<bool>(global3.a.b.x, global1[_wgslsmith_index_u32(global3.b.c, 11u)], true, global1[_wgslsmith_index_u32(global3.b.c, 11u)]), global1[_wgslsmith_index_u32(0u, 11u)])), Struct_2(~vec2<u32>(28884u, 1u), global3.b.b, 1u, _wgslsmith_add_vec4_i32(global3.b.d, global3.b.d), Struct_1(global3.b.b.a, vec3<bool>(true, global1[_wgslsmith_index_u32(26967u, 11u)], true))), global3.b.b.a, ~vec2<i32>(global3.b.d.x, global2.x)), global3.a, func_1(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.c))), select(vec4<bool>(global1[_wgslsmith_index_u32(49093u, 11u)], true, false, global1[_wgslsmith_index_u32(global3.b.c, 11u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(global3.b.a.x, 11u)], global3.b.b.b.x, false), global3.b.b.b.x))), -431f, vec2<i32>(_wgslsmith_div_i32(global3.b.d.x, -33408i), -firstLeadingBit(func_2(Struct_3(Struct_1(global3.c, vec3<bool>(true, true, global3.a.b.x)), global3.b, global3.c, global3.b.d.yx), global3.a.a))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a));
    var var_1 = ~global3.b.d.xxx;
    global2 = global3.d;
    global1 = array<bool, 11>();
    global0 = array<vec4<u32>, 12>();
    global0 = array<vec4<u32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(1u << (~(~u_input.b.x >> (~66682u % 32u)) % 32u), _wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global3.a.a)), _wgslsmith_f_op_f32(global3.a.a - _wgslsmith_f_op_f32(f32(-1f) * -397f)), _wgslsmith_f_op_f32(-global3.a.a), _wgslsmith_f_op_f32(func_3(global3.b.e, Struct_4(global0[_wgslsmith_index_u32(global3.b.c, 12u)]), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-451f, 1189f), vec2<f32>(523f, -228f))), select(vec2<bool>(global3.b.e.b.x, global1[_wgslsmith_index_u32(4294967295u, 11u)]), global3.a.b.yy, global3.b.b.b.x))))));
}

