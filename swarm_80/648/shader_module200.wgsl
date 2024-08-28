struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 4294967295u, 43353u, 0u), -2359f, false, vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u));

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(651f, 416f), vec2<f32>(852f, -253f), vec2<f32>(-1298f, -507f), vec2<f32>(362f, 1600f), vec2<f32>(-559f, 969f), vec2<f32>(-389f, -601f), vec2<f32>(1589f, 713f), vec2<f32>(1000f, -2792f), vec2<f32>(-856f, -556f), vec2<f32>(-333f, 252f), vec2<f32>(236f, 738f), vec2<f32>(-1000f, -404f), vec2<f32>(-560f, -571f), vec2<f32>(-2261f, 1580f), vec2<f32>(1252f, -852f), vec2<f32>(-1406f, -284f), vec2<f32>(960f, 212f), vec2<f32>(-416f, 1219f), vec2<f32>(1000f, 1707f), vec2<f32>(213f, -1484f), vec2<f32>(176f, 181f), vec2<f32>(-2067f, 1716f), vec2<f32>(1380f, -1575f));

var<private> global2: Struct_2 = Struct_2(vec2<bool>(false, false));

var<private> global3: array<f32, 11>;

var<private> global4: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(65169u, 78098u, 1u, 34108u), vec4<u32>(10481u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 943u, 2101u, 4294967295u), vec4<u32>(4294967295u, 45270u, 0u, 0u), vec4<u32>(0u, 3499u, 55451u, 1u), vec4<u32>(60041u, 4294967295u, 50766u, 0u), vec4<u32>(19457u, 31249u, 19891u, 4294967295u), vec4<u32>(691u, 48655u, 1u, 2530u), vec4<u32>(1u, 19352u, 0u, 48377u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(46168u, 0u, 4294967295u, 0u), vec4<u32>(19917u, 1u, 1388u, 2749u), vec4<u32>(19849u, 0u, 36962u, 1u), vec4<u32>(90182u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 1u, 17412u, 10773u), vec4<u32>(24303u, 0u, 6716u, 40024u), vec4<u32>(4294967295u, 4793u, 3159u, 36846u), vec4<u32>(1u, 4294967295u, 67749u, 1u), vec4<u32>(61933u, 41710u, 1u, 37073u), vec4<u32>(1u, 4294967295u, 4294967295u, 35304u), vec4<u32>(4294967295u, 5150u, 14966u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 59176u), vec4<u32>(70917u, 47235u, 4294967295u, 0u), vec4<u32>(4294967295u, 110142u, 1u, 4294967295u), vec4<u32>(22973u, 4294967295u, 13199u, 4294967295u), vec4<u32>(0u, 4294967295u, 20916u, 41510u), vec4<u32>(78285u, 6012u, 58102u, 42559u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = Struct_2(vec2<bool>(arg_0.c, true));
    return global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 11u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    global4 = array<vec4<u32>, 27>();
    let var_1 = ~6241u;
    let var_2 = reverseBits(vec4<i32>(_wgslsmith_add_i32(-u_input.d, -_wgslsmith_mult_i32(u_input.b.x, -3787i)), abs(46793i), _wgslsmith_div_i32(-10967i, _wgslsmith_mult_i32(abs(26990i), -2739i)), -15158i));
    var var_3 = arg_3;
    return arg_2;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(vec2<bool>(all(select(vec4<bool>(false, global0.c, true, true), !vec4<bool>(global2.a.x, true, true, global0.c), vec4<bool>(false, global0.c, global2.a.x, global2.a.x))), global0.c));
    let var_1 = 4294967295u;
    var var_2 = Struct_1(~_wgslsmith_mult_vec4_u32(global4[_wgslsmith_index_u32(~var_1, 27u)], global0.d), _wgslsmith_f_op_f32(func_3(global0.a, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-705f * _wgslsmith_f_op_f32(1139f * global0.b)), -227f), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, var_1, u_input.c.x) << (global4[_wgslsmith_index_u32(global0.a.x, 27u)] % vec4<u32>(32u)), vec4<u32>(u_input.c.x, var_1, 4294967295u, u_input.c.x)), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~global0.e.x, 11u)], global0.b)), any(!var_0.a), vec4<u32>(~15832u, 9889u, global0.e.x, 27469u << (1u % 32u)), global0.e))), all(vec4<bool>(-721f != global0.b, global0.c, false, false)) & true, ~global0.a, ~countOneBits(reverseBits(vec2<u32>(4294967295u, 16609u)) & abs(u_input.c.yz)));
    let var_3 = !vec3<bool>(!(!(u_input.b.x < 1i)), true, global0.b <= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1 & var_2.e.x, 11u)] + _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 11u)]))));
    global2 = Struct_2(select(select(vec2<bool>(!var_0.a.x, true), global2.a, 1i >= ~u_input.b.x), !select(select(vec2<bool>(var_3.x, var_0.a.x), var_0.a, global2.a), select(vec2<bool>(global2.a.x, global0.c), var_3.zy, global2.a.x), true), global2.a));
    return var_3;
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1470f - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 11u)], global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.e.x, 11u)] - 507f) - _wgslsmith_f_op_f32(global0.b + 1186f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(83455u, 11u)] * global0.b))))));
    global4 = array<vec4<u32>, 27>();
    global3 = array<f32, 11>();
    var var_1 = Struct_2(vec2<bool>(-595f > var_0.x, arg_0.x));
    var_0 = vec3<f32>(global0.b, global0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.c.x, 11u)] * 981f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1930f * 293f) - -586f)))));
    return Struct_2(vec2<bool>(-1730f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(global0.b + global0.b)), all(!select(vec4<bool>(var_1.a.x, true, global2.a.x, false), vec4<bool>(false, false, global0.c, false), vec4<bool>(false, var_1.a.x, true, true)))));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global4 = array<vec4<u32>, 27>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(~u_input.c.x, 11u)])), global0.b);
    var var_1 = func_2();
    global4 = array<vec4<u32>, 27>();
    global4 = array<vec4<u32>, 27>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global3[_wgslsmith_index_u32(global0.e.x, 11u)], 141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(530f, 1154f)) * -1000f), _wgslsmith_f_op_f32(1199f * _wgslsmith_f_op_f32(exp2(global0.b)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_1(abs(vec4<u32>(4294967295u, 33106u, global0.a.x, 17710u)), _wgslsmith_f_op_f32(trunc(-962f)), global0.c | false, vec4<u32>(54195u, global0.a.x, u_input.c.x, u_input.c.x) | vec4<u32>(global0.d.x, 0u, 59392u, 4294967295u), _wgslsmith_add_vec2_u32(global0.d.zx, vec2<u32>(61315u, global0.d.x))))))));
    let var_1 = select(any(vec2<bool>(global0.c, any(vec4<bool>(true, false, true, global0.c)) | true)), global2.a.x && global2.a.x, true);
    var var_2 = u_input.b.x;
    var_2 = _wgslsmith_div_i32(-1i, (i32(-1i) * -2147483647i) & -_wgslsmith_div_i32(~u_input.b.x, ~u_input.a));
    global2 = func_5(func_4(select(!select(vec3<bool>(true, global2.a.x, true), vec3<bool>(false, false, global2.a.x), vec3<bool>(global0.c, true, true)), func_2(), !global0.c | false)), false);
    let var_3 = func_4(!(!vec3<bool>(true, true, global2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-616f, u_input.c.x);
}

