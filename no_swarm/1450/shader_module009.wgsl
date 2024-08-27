struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 23>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: i32 = 12369i;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = ~firstTrailingBit(~(u_input.b | 100077u));
    global1 = array<u32, 23>();
    var var_1 = Struct_2(global4.x, Struct_1(u_input.b), Struct_1(~(~1u)));
    global3 = -22306i;
    let var_2 = true;
    return Struct_2(!(!(u_input.e == select(arg_0, 20710i, true))), var_1.b, Struct_1(~(0u ^ global1[_wgslsmith_index_u32(1u, 23u)]) << (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_div_u32(1u, 1u)) % 32u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    global2 = vec2<bool>(!all(!vec4<bool>(false, true, global4.x, true)), global4.x);
    let var_0 = func_2(firstTrailingBit(1i));
    global2 = select(vec2<bool>(select(!all(vec4<bool>(global2.x, true, false, global4.x)), !global4.x, false), 820f == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f))))), !vec2<bool>(var_0.a, any(global4.yww)), !all(!(!vec4<bool>(global2.x, global2.x, true, false))));
    let var_1 = Struct_1(var_0.c.a);
    global0 = true;
    return 8581u;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(u_input.e);
    var var_1 = _wgslsmith_add_u32(15112u & var_0.b.a, 1u);
    var_1 = 0u;
    let var_2 = vec2<bool>(select((func_3(u_input.e, global1[_wgslsmith_index_u32(0u, 23u)], u_input.a) << ((38340u ^ u_input.b) % 32u)) > _wgslsmith_mult_u32(u_input.c & 24630u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(17797u, 23u)], 7744u), 23u)]), true, global2.x), select(any(!arg_1.ww), true, global4.x));
    global0 = true;
    return var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> vec2<i32> {
    let var_0 = Struct_1(u_input.b);
    global4 = !vec4<bool>(arg_1.a, true, true, !(-781f > _wgslsmith_f_op_f32(sign(1073f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-438f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(221f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(648f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(319f * 1471f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(256f)))) * -1970f), _wgslsmith_f_op_f32(sign(-623f)));
    var var_2 = arg_1;
    global0 = all(select(select(!(!vec4<bool>(true, arg_1.a, true, global4.x)), vec4<bool>(true, true, global2.x, true), _wgslsmith_f_op_f32(step(1254f, var_1.x)) > -799f), select(select(!vec4<bool>(var_2.a, false, global4.x, true), !vec4<bool>(false, global2.x, true, global4.x), !vec4<bool>(var_2.a, false, true, false)), select(select(vec4<bool>(arg_1.a, arg_1.a, var_2.a, false), vec4<bool>(true, arg_0, arg_0, arg_1.a), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, arg_0, var_2.a), global4.x), false), global4.x));
    return ~u_input.a;
}

fn func_5(arg_0: vec2<i32>) -> Struct_2 {
    return Struct_2(true, Struct_1(abs(firstTrailingBit(0u))), func_2(arg_0.x).b);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global2 = vec2<bool>(!global4.x, false);
    var var_0 = arg_1.b;
    return func_2(u_input.a.x).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global4.x;
    global3 = _wgslsmith_sub_i32(u_input.e, i32(-1i) * -27933i);
    global1 = array<u32, 23>();
    var var_0 = func_6(Struct_1(1u), func_5(func_4(!(20421u != u_input.d.x), func_1(u_input.e < -15777i, select(vec4<bool>(global4.x, global4.x, global4.x, false), vec4<bool>(global2.x, global4.x, false, global4.x), vec4<bool>(false, global4.x, true, global2.x))), 2147483647i, ~_wgslsmith_mult_vec2_i32(u_input.a, u_input.a))));
    global2 = select(select(select(global4.ww, !(!vec2<bool>(global2.x, false)), select(true, any(vec3<bool>(false, global4.x, false)), global2.x)), global4.xw, !vec2<bool>(true, 4294967295u < var_0.a)), vec2<bool>(u_input.a.x != -2147483647i, true), all(select(vec4<bool>(var_0.a == 11606u, true, false | global2.x, func_1(true, vec4<bool>(true, false, global4.x, true)).a), vec4<bool>(all(vec4<bool>(true, global4.x, true, true)), any(vec4<bool>(global2.x, global4.x, global4.x, false)), all(vec4<bool>(global4.x, false, false, global4.x)), func_5(u_input.a).a), !(true && global4.x))));
    var var_1 = firstTrailingBit(select(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, var_0.a, 29061u) | vec3<u32>(global1[_wgslsmith_index_u32(var_0.a, 23u)], var_0.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7602u, 23u)], 23u)])), ~(~vec3<u32>(20329u, global1[_wgslsmith_index_u32(69370u, 23u)], var_0.a))), vec3<u32>(_wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(var_0.a, 1u))), ~(var_0.a ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54180u, 23u)], 23u)]), ~31829u), vec3<bool>(true, global4.x, true)));
    var_0 = func_6(Struct_1(_wgslsmith_mult_u32(~var_0.a, ~(44311u & global1[_wgslsmith_index_u32(u_input.d.x, 23u)]))), func_2(u_input.e));
    global0 = true & global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(-448f, 1399f)), 1527f))))));
}

