struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(105318u, 4294967295u, 79297u, 49784u, 1u);

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(24823i, -1274i, 10213i), vec3<i32>(1i, -26314i, 1i), vec3<i32>(-1i, -51467i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1430i, -449i), vec3<i32>(29864i, 2147483647i, -1i), vec3<i32>(-1i, -1i, -48480i), vec3<i32>(-13232i, -56377i, 1i), vec3<i32>(40792i, 2147483647i, 19239i), vec3<i32>(2147483647i, 2147483647i, -54348i), vec3<i32>(54707i, 1i, 1i), vec3<i32>(-1i, 22540i, 28651i), vec3<i32>(0i, 52573i, -10639i), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(1i, 0i, 0i), vec3<i32>(1i, 1i, -17676i), vec3<i32>(0i, 25239i, 33322i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-20836i, -16310i, i32(-2147483648)), vec3<i32>(-52929i, 0i, 2147483647i), vec3<i32>(20759i, -6613i, i32(-2147483648)), vec3<i32>(37019i, 1i, -57382i), vec3<i32>(25917i, -1i, 0i), vec3<i32>(-6767i, -90455i, -30910i), vec3<i32>(11438i, 0i, -1i), vec3<i32>(9146i, 1i, 708i), vec3<i32>(-1i, 36490i, 0i), vec3<i32>(-1i, -66921i, 3186i));

var<private> global3: array<vec3<bool>, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = abs(-8768i);
    var var_1 = -320f;
    var var_2 = vec4<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.c, 2147483647i), var_0), ~vec2<i32>(-1502i, var_0)), u_input.d.x), ~u_input.d.x, u_input.d.x, min(~(var_0 | 15346i), var_0 << (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a.wy)) % 32u)));
    var_1 = arg_1.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x + -2639f))) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1287f - _wgslsmith_f_op_f32(-arg_1.a.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) + _wgslsmith_f_op_f32(f32(-1f) * -720f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-333f, 353f, global1.x)))))), 518f), -firstLeadingBit(-5047i) | ~(-_wgslsmith_mult_i32(1849i, u_input.c)), 188f, ~abs(0u), ~u_input.a.yw);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a.zx - var_0.a.xz));
    global2 = array<vec3<i32>, 27>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-852f, -1439f)))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1035f), _wgslsmith_f_op_f32(func_3(vec2<u32>(global0[_wgslsmith_index_u32(0u, 5u)], u_input.a.x), Struct_1(vec2<f32>(1000f, -1286f)))))) * _wgslsmith_f_op_vec2_f32(exp2(var_0.a.xz))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global2 = array<vec3<i32>, 27>();
    let var_0 = true;
    let var_1 = select(global1.xz, !select(select(select(vec2<bool>(true, global1.x), vec2<bool>(var_0, global1.x), global1.x), vec2<bool>(false, global1.x), select(global1.yz, vec2<bool>(true, var_0), vec2<bool>(false, false))), vec2<bool>(true, arg_2.a.x <= arg_3.a.x), !(!global1.zx)), global1.x);
    var var_2 = func_2();
    var var_3 = var_2.b;
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global3 = array<vec3<bool>, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(306f, 1000f, false))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.c))), 414f, _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(ceil(-1029f)))))));
    var var_2 = u_input.d;
    var var_3 = var_0.zz;
    return any(select(!select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), global1.x)), select(vec4<bool>(global1.x == global1.x, true, true, any(global3[_wgslsmith_index_u32(0u, 30u)])), select(!vec4<bool>(false, true, global1.x, false), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, true, false, true), global1.x), select(vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, global1.x, false, global1.x), global1.x)), vec4<bool>(true, global1.x, false, global1.x && global1.x)), !global1.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec2<f32> {
    global1 = !select(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, ~u_input.a.x), 5u)], 30u)], !select(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 30u)], select(global3[_wgslsmith_index_u32(15471u, 30u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 30u)], vec3<bool>(arg_3, arg_3, true)), global3[_wgslsmith_index_u32(arg_0.x, 30u)]), global3[_wgslsmith_index_u32(~(~abs(arg_0.x)), 30u)]);
    var var_0 = !vec4<bool>(true, !any(select(vec3<bool>(false, true, global1.x), global3[_wgslsmith_index_u32(arg_0.x, 30u)], arg_1)), func_5(func_4(Struct_1(arg_2.a), func_2(), arg_2, Struct_1(vec2<f32>(arg_2.a.x, arg_2.a.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_2.a.x, -957f)), u_input.d.x, -1927f, 1u, u_input.a.zz)), arg_1);
    let var_1 = Struct_2(vec3<f32>(1326f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1404f)), 2147483647i, 431f, arg_0.x, abs(arg_0.yz));
    var_0 = !vec4<bool>(var_0.x, !(!arg_1), !(arg_3 == arg_1), true);
    global2 = array<vec3<i32>, 27>();
    return func_2().a.xz;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = arg_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-368f, 1665f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-973f, -399f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(374f, 1051f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1426f, -285f))))));
    var var_1 = func_6(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1084f, _wgslsmith_f_op_f32(round(var_0.a.x)), var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, var_0.a.x, 285f))), 19634i, _wgslsmith_div_f32(-313f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x)))), 47953u, ~(~u_input.a.xw) & (select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16662u, 5u)], 5u)], 29824u), u_input.a.xz, false) ^ ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 5u)], 5u)], u_input.b))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.b)), global1.x, Struct_1(vec2<f32>(var_0.a.x, -363f)), !global1.x)) + var_0.a)), -_wgslsmith_dot_vec2_i32(u_input.d >> (u_input.a.yw % vec2<u32>(32u)), ~u_input.d) & -u_input.d.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.a, any(select(vec4<bool>(false, true, global1.x, false), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(false, true, false, global1.x))), Struct_1(_wgslsmith_div_vec2_f32(var_1.a.yz, var_0.a)), !all(vec4<bool>(false, global1.x, false, false)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.a, false, Struct_1(var_1.a.zz), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-499f, -1435f), vec2<f32>(var_1.c, 733f)) * vec2<f32>(-2255f, var_1.c)))));
    var_0 = Struct_1(var_0.a);
    var var_2 = 17596u;
    global2 = array<vec3<i32>, 27>();
    var var_3 = !global1.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1289f, -568f, var_1.a.x), var_1.a), var_1.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a)))) + _wgslsmith_f_op_vec3_f32(-func_2().a)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(var_1.a - var_1.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x) - var_1.a))), _wgslsmith_f_op_vec3_f32(trunc(func_6(Struct_2(var_1.a, u_input.c, var_0.a.x, global0[_wgslsmith_index_u32(23798u, 5u)], var_1.e), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x)), var_1.b).a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(reverseBits(i32(-1i) * -49923i), -func_4(Struct_1(vec2<f32>(376f, 782f)), func_4(Struct_1(var_1.a.yx), Struct_2(var_1.a, 1i, var_0.a.x, u_input.a.x, vec2<u32>(0u, global0[_wgslsmith_index_u32(96027u, 5u)])), Struct_1(var_4.xy), Struct_1(vec2<f32>(1000f, var_4.x))), Struct_1(var_0.a), Struct_1(vec2<f32>(var_4.x, var_4.x))).b));
}

