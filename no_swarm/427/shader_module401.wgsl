struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: array<bool, 12>;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> f32 {
    global1 = array<vec2<i32>, 20>();
    global2 = array<vec2<u32>, 31>();
    let var_0 = Struct_1(5357i);
    global1 = array<vec2<i32>, 20>();
    global0 = vec4<bool>(all(global0.yx), global3[_wgslsmith_index_u32(1u, 12u)], true & global0.x, true);
    return 1018f;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    global1 = array<vec2<i32>, 20>();
    var var_0 = arg_0.d;
    let var_1 = arg_0.a;
    var_0 = Struct_2(var_1.a.a, 0i << (_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~1u, 31u)], vec2<u32>(select(u_input.b.x, arg_1, true), 85802u)) % 32u), var_0.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, _wgslsmith_f_op_f32(-arg_2.x), 1813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.e - -627f))))));
    return 1462f;
}

fn func_4(arg_0: f32) -> i32 {
    var var_0 = vec4<i32>(u_input.c | -1i, _wgslsmith_mod_i32(~_wgslsmith_add_i32(abs(u_input.a), u_input.a << (4294967295u % 32u)), u_input.a), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-2147483647i, 878i, u_input.c) | ~vec3<i32>(u_input.c, -2147483647i, u_input.a)), min(~(vec3<i32>(u_input.a, -2147483647i, u_input.a) ^ vec3<i32>(-2147483647i, u_input.a, -75087i)), _wgslsmith_add_vec3_i32(vec3<i32>(30291i, 0i, 26339i), -vec3<i32>(40564i, u_input.c, u_input.a)))), _wgslsmith_dot_vec3_i32(~countOneBits(select(vec3<i32>(0i, u_input.a, 21057i), vec3<i32>(-50702i, -6819i, 0i), global0.zyy)), ~(-(vec3<i32>(-53806i, 13426i, u_input.a) & vec3<i32>(u_input.a, u_input.a, 1i)))));
    global3 = array<bool, 12>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(891f)), -203f)))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(firstLeadingBit(var_0.xz)), global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec2<i32>(1i, _wgslsmith_sub_i32(~var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a), vec4<i32>(-13596i, var_0.x, var_0.x, -2147483647i))))), select(!(!vec4<bool>(true, true, global0.x, false)), !select(!vec4<bool>(false, global0.x, global0.x, global4.x), vec4<bool>(true, false, true, false), false), false));
    let var_2 = u_input.c;
    let var_3 = Struct_4(Struct_2(-1121f, firstLeadingBit(abs(firstTrailingBit(-1i))), vec4<bool>(any(!global0.zwy), false, !(global0.x || false), var_1.c.x)), Struct_1(~_wgslsmith_mod_i32(firstTrailingBit(u_input.c), 4860i)), firstTrailingBit(var_2) | 3778i);
    return ~3763i;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> f32 {
    var var_0 = vec4<f32>(-550f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1715f, 966f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a)))) * arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1245f) * arg_0.a)), arg_0.a);
    global3 = array<bool, 12>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.wzx);
    var var_2 = Struct_2(2555f, _wgslsmith_mult_i32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_4(Struct_2(var_0.x, -29335i, arg_0.c), Struct_1(31868i), arg_0.b), global2[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(2147483647i), Struct_2(292f, arg_0.b, arg_3), -492f), 2883u, vec4<f32>(2403f, 526f, 1209f, -1817f), 144f)) * _wgslsmith_f_op_f32(floor(var_1.x)))), ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 35850i, arg_0.b, 1i), vec4<i32>(arg_0.b, -70664i, arg_1, u_input.a)))), vec4<bool>(arg_2.x, global0.x, any(arg_0.c), !(all(arg_3) == false)));
    let var_3 = Struct_4(Struct_2(arg_0.a, var_2.b, !(!(!arg_3))), Struct_1(arg_1 << (89484u % 32u)), arg_0.b);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 31>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(func_1(Struct_2(-359f, 2147483647i, vec4<bool>(true, global0.x, global0.x, true)), -u_input.c, vec2<bool>(global4.x, false), select(vec4<bool>(true, global4.x, true, global3[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 12u)], global0.x, global4.x, global4.x), global4.x)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1025f - 661f) - _wgslsmith_f_op_f32(func_3(Struct_5(Struct_4(Struct_2(-395f, 2147483647i, vec4<bool>(true, true, global4.x, true)), Struct_1(u_input.a), 16830i), global2[_wgslsmith_index_u32(u_input.b.x, 31u)], Struct_1(0i), Struct_2(466f, u_input.c, vec4<bool>(global3[_wgslsmith_index_u32(95091u, 12u)], global4.x, false, false)), 1232f), 0u, vec4<f32>(-962f, 1727f, 2054f, -638f), 609f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-985f)))))), _wgslsmith_div_f32(-1248f, _wgslsmith_div_f32(-1000f, 226f))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 2725f, 469f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, 1974f, -386f), vec3<bool>(global4.x, false, false))))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(109f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(194f, var_0.x, var_0.x), vec3<f32>(1062f, var_0.x, 1355f))))), ~(~57802u) < ~_wgslsmith_add_u32(u_input.b.x, 0u))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(var_0.x, -31043i, vec4<bool>(global0.x, true, true, global0.x)), -2147483647i, vec2<bool>(false, global0.x), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 12u)], true, false))) + 475f)))), _wgslsmith_sub_i32(2147483647i, (u_input.c | u_input.c) << (_wgslsmith_add_u32(select(u_input.b.x, 4294967295u, global0.x), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)) % 32u)), !vec4<bool>(false, any(select(vec4<bool>(global0.x, global4.x, false, false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(u_input.b.x, 12u)], true, global0.x), vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b.x, 12u)], false))), true, !global3[_wgslsmith_index_u32(1u, 12u)]));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1742f, var_1.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-462f, var_0.x, -1619f) + vec3<f32>(-1301f, 1420f, -350f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.a, -527f) - vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(var_0.x * -295f), _wgslsmith_f_op_f32(-var_1.a))), select(global0.ywy, vec3<bool>(false, global0.x, global3[_wgslsmith_index_u32(u_input.b.x, 12u)] != var_1.c.x), global4.x))), vec3<f32>(-148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), -408f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(715f + var_1.a)))), -984f)));
}

