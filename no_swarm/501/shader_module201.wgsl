struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(71677u, 62912u);

var<private> global1: array<Struct_4, 29>;

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<vec2<i32>, 14>;

var<private> global4: vec3<bool>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = abs(abs(vec3<u32>(~(~u_input.b.x), ~1u, global0.x)));
    var var_1 = vec2<i32>(abs(~((arg_1.x << (10033u % 32u)) >> ((u_input.b.x << (global0.x % 32u)) % 32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(select(global3[_wgslsmith_index_u32(15830u, 14u)], vec2<i32>(arg_0.x, 8866i), vec2<bool>(false, global4.x)), vec2<i32>(arg_1.x, arg_1.x)), abs(firstTrailingBit(vec2<i32>(arg_0.x, arg_0.x)))) | arg_1.x);
    global0 = vec2<u32>(u_input.a, ~global0.x);
    var var_2 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_0.x, abs(0u), 65891u, global0.x)), ~(~(~vec4<u32>(62941u, 2767u, 6359u, global0.x))));
    var_0 = u_input.b;
    return arg_0.x;
}

fn func_2() -> vec3<i32> {
    global3 = array<vec2<i32>, 14>();
    let var_0 = vec2<u32>(reverseBits(u_input.b.x) | (4294967295u >> (~(0u & u_input.b.x) % 32u)), u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, 1384f, -1292f, -220f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(276f, -293f, -670f, 290f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-626f, _wgslsmith_f_op_f32(min(1309f, -378f)), _wgslsmith_f_op_f32(f32(-1f) * -1489f), _wgslsmith_f_op_f32(sign(-476f)))))), _wgslsmith_div_i32(countOneBits(1i), ~countOneBits(2147483647i)), vec2<i32>(~(-(~1i)), -_wgslsmith_sub_i32(func_3(vec2<i32>(0i, 1i), vec3<i32>(1i, 2147483647i, -2147483647i)), ~(-24935i))), true);
    var var_2 = u_input.b.yy & _wgslsmith_clamp_vec2_u32(~(~firstLeadingBit(vec2<u32>(var_0.x, global0.x))), vec2<u32>(1450u, _wgslsmith_mod_u32(1u, ~global0.x)), var_0);
    var var_3 = ~(~firstLeadingBit(~u_input.b));
    return vec3<i32>(-41440i, -var_1.c.x, var_1.b);
}

fn func_1() -> vec3<bool> {
    var var_0 = firstTrailingBit(select(select(abs(vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(1i, 1i, 1i), !select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, global4.x, true))), countOneBits(vec3<i32>(_wgslsmith_mult_i32(-2025i, -1i), -39165i, i32(-1i) * -52393i)), 4294967295u < ~firstTrailingBit(1u)));
    var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1291f, -1093f, 698f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(114f, 1000f, -115f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2212f, 929f, -854f) - vec3<f32>(1549f, -795f, 477f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(116f, 799f, -1292f), vec3<f32>(798f, 308f, -2086f), true))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-709f)) * _wgslsmith_f_op_f32(f32(-1f) * -1017f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-954f, -1000f) + _wgslsmith_f_op_f32(select(-1748f, 123f, false))))), _wgslsmith_f_op_f32(f32(-1f) * -561f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(226f, 1437f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(138f, var_1.x, -1203f, var_1.x) * vec4<f32>(-1408f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -560f, var_1.x, 2543f), vec4<f32>(var_1.x, 1137f, var_1.x, var_1.x))))), ~(~_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 4821i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, 1i)))), ~_wgslsmith_sub_vec2_i32(func_2().xz, abs(vec2<i32>(-45132i, var_0.x))), !any(!global4.xz));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_1.x) * var_1.x)));
    return select(select(vec3<bool>(any(vec2<bool>(false, false)), var_2.d, true), vec3<bool>(~u_input.a > global0.x, !all(vec4<bool>(global4.x, false, var_2.d, true)), var_2.d), all(select(vec3<bool>(global4.x, var_2.d, global4.x), vec3<bool>(false, global4.x, var_2.d), false)) && true), vec3<bool>(false, var_2.d, var_1.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.a.x)), -932f)), select(vec3<bool>(any(!vec4<bool>(true, global4.x, true, global4.x)), all(vec2<bool>(false, var_2.d)) || (false || var_2.d), var_2.d), select(select(!vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(var_2.d, var_2.d, var_2.d), vec3<bool>(global4.x, var_2.d, true)), !select(vec3<bool>(true, var_2.d, var_2.d), vec3<bool>(var_2.d, var_2.d, true), vec3<bool>(true, false, true)), true), vec3<bool>(!var_2.d & true, global4.x, !global4.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    global3 = array<vec2<i32>, 14>();
    var var_0 = -1268f;
    var var_1 = -(~(-abs(global3[_wgslsmith_index_u32(58558u ^ u_input.a, 14u)])));
    var_0 = arg_2.a.x;
    var var_2 = vec2<bool>(!arg_0.x, !global4.x);
    return Struct_3(arg_2, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 29>();
    global2 = array<Struct_1, 2>();
    let var_0 = func_4(func_1(), true, Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i, -2147483647i) ^ global3[_wgslsmith_index_u32(global0.x, 14u)]), -global3[_wgslsmith_index_u32(u_input.a, 14u)] << (~vec2<u32>(global0.x, u_input.b.x) % vec2<u32>(32u))), -_wgslsmith_mult_vec2_i32(global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 14u)], -vec2<i32>(2147483647i, 0i)), true | any(func_1())), -(~25845i));
    global3 = array<vec2<i32>, 14>();
    let var_1 = var_0;
    global2 = array<Struct_1, 2>();
    let var_2 = Struct_2(12749u, func_4(vec3<bool>(true, global4.x, false), select(true, true, func_1().x), var_1.a, (var_1.a.c.x | -67047i) ^ -26450i).a, _wgslsmith_clamp_i32(~(var_1.a.c.x ^ 0i), ~(~var_1.a.c.x), ~func_2().x << (max(u_input.a << (4294967295u % 32u), global0.x ^ 78816u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.zy, countOneBits(vec2<u32>(55629u, u_input.a))) | _wgslsmith_div_vec2_u32(vec2<u32>(~0u, ~var_1.b), vec2<u32>(var_1.b, _wgslsmith_add_u32(var_1.b, var_1.b))), var_2.b.a.x);
}

