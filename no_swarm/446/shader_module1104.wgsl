struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(-371f, 90788u), Struct_1(1589f, 1u), true, Struct_4(-766f, 6705u));

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<f32, 26>;

var<private> global3: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-40388i, 1i, 82860i), vec3<i32>(-9324i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1999i, i32(-2147483648), -28738i), vec3<i32>(1i, 27333i, i32(-2147483648)), vec3<i32>(10371i, 2147483647i, 2147483647i), vec3<i32>(3788i, i32(-2147483648), 0i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(-32559i, -16490i, 1i), vec3<i32>(-9772i, 48476i, -21424i), vec3<i32>(-2334i, 0i, 1i), vec3<i32>(0i, -12095i, -1i), vec3<i32>(1i, 588i, 1i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_f_op_vec4_f32(arg_0.e * vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-1342f * -1001f), _wgslsmith_div_f32(-124f, _wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-975f + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(23267u, 26u)])))));
    global2 = array<f32, 26>();
    var var_1 = global0.d;
    var var_2 = vec4<bool>(false, !(0i >= u_input.c.x), false, !global0.c);
    return ~vec2<u32>(firstLeadingBit(arg_0.a.b), 1u) << (vec2<u32>(arg_0.a.b, ~(~countOneBits(0u))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(global0.d.b, 5u)];
    global0 = Struct_5(Struct_1(global0.b.a, ~2770u), Struct_1(-852f, _wgslsmith_mult_u32(var_0.a.b, _wgslsmith_dot_vec2_u32(vec2<u32>(78468u, global0.d.b) & vec2<u32>(0u, 73386u), func_3(global1[_wgslsmith_index_u32(1u, 5u)], Struct_1(1345f, global0.d.b))))), global0.c, global0.d);
    var var_1 = var_0.e.xwx;
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(1u, 26u)], var_0.a.b);
    var var_3 = global0.b;
    return -385f;
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(~global0.d.b, 26u)], _wgslsmith_mult_u32(~global0.b.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.b, global0.b.b, global0.b.b), vec3<u32>(global0.d.b, 32866u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-858f, global0.a.a, arg_0.x, 1000f), vec4<f32>(arg_0.x, global0.d.a, 1463f, -1035f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(17984u, 26u)], arg_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global0.b.a, global2[_wgslsmith_index_u32(global0.b.b, 26u)], -1469f) - vec4<f32>(1063f, global2[_wgslsmith_index_u32(8982u, 26u)], 251f, arg_0.x))), !select(vec4<bool>(true, global0.c, global0.c, global0.c), vec4<bool>(global0.c, global0.c, global0.c, true), vec4<bool>(false, true, global0.c, global0.c)))) - vec4<f32>(-118f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.b.b, 26u)] * 982f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global0.a.a + -978f)), _wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(f32(-1f) * -703f)))), Struct_1(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(521f, 1327f, -1649f) * vec3<f32>(global0.a.a, arg_0.x, 1082f))))), global0.a.b), vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -687f)), -695f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 178f, 840f, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<f32>(global0.d.a, -1526f, -1099f, global2[_wgslsmith_index_u32(global0.b.b, 26u)])) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-215f, arg_0.x, arg_0.x, 1533f)))), vec4<f32>(-345f, _wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(arg_0.x - global0.a.a), global0.a.a)))));
    global1 = array<Struct_2, 5>();
    global2 = array<f32, 26>();
    var var_1 = Struct_4(_wgslsmith_div_f32(-585f, -2142f), 4294967295u);
    var var_2 = global1[_wgslsmith_index_u32(var_0.c.b, 5u)];
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yx;
    global1 = array<Struct_2, 5>();
    global1 = array<Struct_2, 5>();
    global2 = array<f32, 26>();
    var var_1 = global0.b.a;
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-144f))), 3159u), global0.a, true | !((global0.a.b >> (4294967295u % 32u)) == ~global0.a.b), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1951f, global2[_wgslsmith_index_u32(global0.d.b, 26u)]), vec2<f32>(global2[_wgslsmith_index_u32(global0.a.b, 26u)], 286f)))));
    var var_2 = any(select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(true, false, global0.c), vec3<bool>(false, global0.c, false)), select(vec3<bool>(true, true, global0.c), vec3<bool>(false, global0.c, global0.c), true)), select(!vec3<bool>(true, global0.c, global0.c), !vec3<bool>(global0.c, true, global0.c), 0u < global0.d.b), true), select(vec3<bool>(global0.c, true, false), select(select(vec3<bool>(global0.c, true, true), vec3<bool>(global0.c, global0.c, false), true), select(vec3<bool>(global0.c, false, global0.c), vec3<bool>(global0.c, false, false), vec3<bool>(false, true, false)), !vec3<bool>(global0.c, true, global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -367f) > global0.d.a), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(abs(1u), 26u)], -634f));
    let var_4 = Struct_1(global0.d.a, min(50558u, ~global0.d.b >> (_wgslsmith_sub_u32(4294967295u, 70691u) % 32u)) << (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, var_4.a, _wgslsmith_f_op_f32(floor(-628f)), _wgslsmith_f_op_f32(-global0.a.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(307f, -190f, -369f, var_4.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, -134f, -520f, 1038f) - vec4<f32>(113f, -453f, global0.d.a, global2[_wgslsmith_index_u32(global0.a.b, 26u)])), !global0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1151f) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.d.b, 26u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1442f, global2[_wgslsmith_index_u32(global0.d.b, 26u)], global2[_wgslsmith_index_u32(global0.d.b, 26u)], global2[_wgslsmith_index_u32(global0.a.b, 26u)]), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b.a, 259f, 559f, var_4.a))), !vec4<bool>(global0.c, true, global0.c, false)))))), 33217i);
}

