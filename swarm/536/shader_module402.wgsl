struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 29>;

var<private> global2: vec3<bool>;

var<private> global3: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    global0 = !arg_0.a;
    var var_0 = ~(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(global1[_wgslsmith_index_u32(0u, 29u)], 1u), vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 29u)]), global2.xx), vec2<u32>(1u, reverseBits(58579u))) ^ select(vec2<u32>(1u, u_input.a) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)])), vec2<u32>(~73564u, ~u_input.a), vec2<bool>(arg_0.a, arg_3.a & arg_1.a)));
    global3 = array<vec3<bool>, 11>();
    let var_1 = Struct_1(arg_3.a);
    let var_2 = -1i;
    return 23842u;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = arg_2;
    global3 = array<vec3<bool>, 11>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1981f, 399f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, -1148f, -807f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 195f, 957f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1534f, -514f, -1489f) + vec3<f32>(405f, -1000f, 1000f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(891f, 252f, 1870f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1441f, 1361f, -1077f) + vec3<f32>(1234f, -1383f, -873f)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(37578u, u_input.a, arg_1), 11u)])))));
    global1 = array<u32, 29>();
    let var_2 = Struct_1(var_1.x >= -402f);
    return select(vec4<bool>(any(vec4<bool>(true, false, global2.x, false)) && var_2.a, any(!vec3<bool>(true, arg_0.a, var_0.a)), !global2.x, any(select(vec4<bool>(false, var_2.a, var_0.a, false), select(vec4<bool>(true, false, arg_0.a, var_2.a), vec4<bool>(true, global2.x, global2.x, var_0.a), arg_2.a), select(vec4<bool>(arg_2.a, false, true, false), vec4<bool>(false, var_0.a, arg_0.a, arg_0.a), var_0.a)))), select(vec4<bool>(true, true, 1u <= arg_1, false | global2.x), select(select(!vec4<bool>(arg_2.a, arg_0.a, arg_0.a, var_2.a), vec4<bool>(true, false, false, true), 93581u <= arg_1), vec4<bool>(any(global3[_wgslsmith_index_u32(4294967295u, 11u)]), var_0.a, any(global3[_wgslsmith_index_u32(u_input.a, 11u)]), true), vec4<bool>(!arg_0.a, all(global2.zx), false, false)), arg_2.a), arg_0.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 15197u;
    let var_1 = vec3<u32>(44075u, ~(~12418u), global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(20706u, 0u, 4294967295u, var_0), vec4<u32>(u_input.a, 40864u, 17416u, global1[_wgslsmith_index_u32(17775u, 29u)]))), 29u)], ~max(25247u, global1[_wgslsmith_index_u32(45379u, 29u)]), arg_1.a) & func_2(arg_1, arg_1, firstLeadingBit(_wgslsmith_add_vec2_i32(u_input.b, u_input.b)), arg_1), 29u)]);
    global0 = all(func_3(arg_1, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(u_input.a, 29u)], 14676u) ^ _wgslsmith_add_u32(func_2(Struct_1(false), Struct_1(false), vec2<i32>(4715i, u_input.b.x), arg_1), ~u_input.a), 29u)], arg_1));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -669f);
    global0 = all(!vec3<bool>(true, arg_1.a, !arg_1.a));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(30494i, u_input.b.x, -11205i, 2147483647i) << (vec4<u32>(44046u, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x) & vec4<i32>(-42470i, -1i, u_input.b.x, -2147483647i)), abs(-vec4<i32>(-2147483647i, -62402i, 1i, 644i)))));
    global2 = !vec3<bool>(any(vec4<bool>(func_3(arg_1, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15724u, 29u)], 29u)], Struct_1(arg_0.a)).x, true, true, true)), !(!(25908u < u_input.a)), any(vec4<bool>(func_3(arg_1, 1u, Struct_1(true)).x, true, func_1(2147483647i, arg_1).a, u_input.a > global1[_wgslsmith_index_u32(1u, 29u)])));
    var var_1 = Struct_1(global2.x);
    global1 = array<u32, 29>();
    global0 = !global2.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 46363i), vec3<i32>(419i, u_input.b.x, -63466i)), _wgslsmith_sub_i32(23107i, 0i), _wgslsmith_mult_i32(1i, u_input.b.x), ~(-2147483647i)), ~countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x))), Struct_1(global2.x)), func_1(countOneBits(~(i32(-1i) * -16327i)), Struct_1(!global2.x)));
    let var_1 = -72i;
    var var_2 = Struct_1(false);
    global1 = array<u32, 29>();
    let var_3 = func_4(func_4(func_1(u_input.b.x, func_1(_wgslsmith_clamp_i32(u_input.b.x, -1i, -10235i), func_1(1i, Struct_1(global2.x)))), Struct_1(true && (u_input.b.x == 28759i))), Struct_1(all(func_3(func_4(Struct_1(var_2.a), Struct_1(false)), 31603u ^ global1[_wgslsmith_index_u32(0u, 29u)], func_4(Struct_1(var_0.a), Struct_1(var_0.a))))));
    var var_4 = u_input.a;
    global1 = array<u32, 29>();
    var var_5 = vec2<bool>(func_1(firstTrailingBit(reverseBits(_wgslsmith_div_i32(u_input.b.x, -2147483647i))), var_3).a, false);
    let var_6 = Struct_1(global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(1425f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(569f + -439f), -1503f))), -187f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(332f - 132f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-376f)) - _wgslsmith_f_op_f32(trunc(129f))))), _wgslsmith_f_op_f32(f32(-1f) * -1212f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(546f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -796f)))), -698f), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, -53818i, 2147483647i), vec3<i32>(-2147483647i, ~var_1, 1i), -vec3<i32>(u_input.b.x, var_1, -25149i)), firstTrailingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1, var_1, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b.x, -1i), vec3<i32>(21298i, -3678i, 2147483647i))))));
}

