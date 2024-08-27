struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<f32, 18> = array<f32, 18>(-1000f, -164f, 1903f, 1164f, -1318f, 732f, -969f, -1155f, 518f, 127f, -342f, 1699f, -1254f, -1981f, -247f, 141f, 237f, 1132f);

var<private> global2: vec2<u32> = vec2<u32>(0u, 83167u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 39341u), vec3<u32>(1u, 4294967295u, 49634u)), u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(42137u, u_input.b.x)) >> (select(u_input.a & u_input.a, ~u_input.a, vec4<bool>(arg_2, true, true, true)) % vec4<u32>(32u)), ~vec4<u32>(~41911u, ~u_input.a.x, 94852u, firstLeadingBit(global2.x)));
    var var_1 = Struct_2(arg_1.a, arg_1.a, any(select(!vec4<bool>(arg_1.c, false, true, arg_1.c), select(select(vec4<bool>(arg_2, false, arg_1.c, arg_1.c), vec4<bool>(false, arg_1.c, true, true), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c)), select(vec4<bool>(arg_1.c, arg_1.c, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, true, false), arg_2, any(vec3<bool>(true, false, true)), any(vec4<bool>(arg_2, arg_2, true, arg_1.c))))));
    let var_2 = Struct_4(-vec4<i32>(-(~16568i), i32(-1i) * -2147483647i, ~arg_1.b.a.x, max(_wgslsmith_sub_i32(arg_0, arg_1.b.b.x), -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(-836f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(36715u, 7u)], global1[_wgslsmith_index_u32(75757u, 18u)]))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.x, 18u)] * 352f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(34198u), 18u)] - global1[_wgslsmith_index_u32(~10416u, 18u)]))), var_1.c, false, Struct_1(-(_wgslsmith_add_vec3_i32(arg_1.a.b, vec3<i32>(-2147483647i, 0i, -21889i)) << (vec3<u32>(global2.x, u_input.b.x, global2.x) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(1i, min(arg_0, 34059i), ~var_1.a.a.x))));
    let var_3 = vec4<u32>(1u, 45028u, 82507u, ~(~u_input.b.x));
    let var_4 = vec4<bool>(any(select(!vec4<bool>(true, var_1.c, var_1.c, false), select(!vec4<bool>(arg_1.c, true, var_2.d, false), !vec4<bool>(arg_1.c, arg_2, true, false), arg_1.c), !arg_2)), true, true, !(!select(false, false, arg_1.c)));
    return vec4<bool>(!(!arg_1.c), arg_1.c, min((var_2.a.x << (0u % 32u)) & reverseBits(arg_0), -firstTrailingBit(1i)) > firstLeadingBit(_wgslsmith_sub_i32(-u_input.d.x, -arg_0)), true | !any(select(var_4, var_4, vec4<bool>(var_4.x, var_1.c, true, true))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    let var_0 = u_input.d.xy;
    var var_1 = Struct_3(-5848i);
    var var_2 = Struct_1(u_input.e, ~_wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 41511i, arg_1.a), u_input.e), u_input.e));
    var var_3 = global1[_wgslsmith_index_u32(0u, 18u)];
    let var_4 = !(!func_3(-(~arg_1.a), Struct_2(Struct_1(u_input.d.wxy, vec3<i32>(u_input.c, arg_0.a, -20436i)), Struct_1(var_2.a, vec3<i32>(arg_1.a, -6252i, var_2.a.x)), true), !(u_input.b.x <= 73752u)));
    return Struct_2(Struct_1(_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-15891i, var_2.a.x, -40093i), vec3<i32>(arg_0.a, 23358i, 1i)), countOneBits(var_2.a)), _wgslsmith_mod_vec3_i32(var_2.b, -vec3<i32>(var_0.x, -526i, -2147483647i) >> (vec3<u32>(4294967295u, 4294967295u, 0u) % vec3<u32>(32u)))), Struct_1(vec3<i32>(select(_wgslsmith_sub_i32(u_input.c, 0i), 52550i & var_0.x, var_4.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(arg_0.a, 21887i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -14697i), u_input.d.zy, var_0), vec2<i32>(var_2.b.x, arg_1.a) << (u_input.b.yx % vec2<u32>(32u)))), vec3<i32>(firstLeadingBit(1i), ~(-var_2.b.x), var_2.b.x)), true);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    global0 = array<f32, 7>();
    return vec4<bool>(arg_0.c, !(!(!arg_0.c && true)), 18660u > reverseBits(u_input.b.x), !all(!vec2<bool>(arg_0.c, true)) && arg_0.c);
}

fn func_5(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 18u)]), 1000f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1970f)))));
    global1 = array<f32, 18>();
    global0 = array<f32, 7>();
    let var_1 = -2193i <= -(~u_input.c);
    global0 = array<f32, 7>();
    return Struct_1(vec3<i32>(~(_wgslsmith_div_i32(u_input.c, -2147483647i) | (u_input.d.x & u_input.e.x)), u_input.e.x, u_input.e.x), func_2(Struct_3(_wgslsmith_mult_i32(1i, u_input.e.x ^ 29304i)), Struct_3(-(~(-10922i)))).b.b);
}

fn func_1() -> Struct_4 {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(91707u, 18u)], global0[_wgslsmith_index_u32(global2.x, 7u)], 411f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(20041u, 18u)], -778f, global1[_wgslsmith_index_u32(global2.x, 18u)]) - vec3<f32>(-1483f, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global2.x, 18u)], 1996f, global0[_wgslsmith_index_u32(26408u, 7u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], 1235f), vec3<f32>(-319f, 1177f, global0[_wgslsmith_index_u32(0u, 7u)]), false)))), vec3<bool>(true, select(any(vec3<bool>(false, true, false)), any(vec3<bool>(true, false, true)), true), 165f == global0[_wgslsmith_index_u32(1u, 7u)])))));
    global2 = ~u_input.b.zz;
    global1 = array<f32, 18>();
    let var_2 = var_0;
    return Struct_4(-(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -59495i, -1i, var_0), u_input.d) ^ vec4<i32>(u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.d.yzw, vec3<i32>(1140i, 2147483647i, 1i)), _wgslsmith_add_i32(var_0, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0, 0i), u_input.e))), _wgslsmith_f_op_vec2_f32(max(var_1.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(451f, global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_div_f32(-942f, 1000f))))), !(!(true || any(vec3<bool>(true, true, false)))), true && !(true | (0u != u_input.a.x)), func_5(abs(global2.x), select(func_4(func_2(Struct_3(var_0), Struct_3(var_2)), firstLeadingBit(var_0)), func_4(func_2(Struct_3(u_input.e.x), Struct_3(-19182i)), 1i), vec4<bool>(any(vec2<bool>(false, true)), global2.x <= global2.x, all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(abs(u_input.a.zx), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 21548u, 0u), vec3<u32>(u_input.b.x, 46950u, global2.x)), global2.x), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, false)), vec2<bool>(true, false))) >> (~(~_wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(31020u, u_input.b.x)), u_input.a.zx)) % vec2<u32>(32u));
    var var_0 = func_1();
    var var_1 = global0[_wgslsmith_index_u32(global2.x, 7u)];
    var var_2 = i32(-1i) * -abs(-u_input.d.x);
    let var_3 = func_1();
    var var_4 = var_0.e;
    var var_5 = Struct_2(Struct_1(vec3<i32>(var_3.a.x, -var_3.e.a.x, ~countOneBits(2147483647i)), var_3.e.a), Struct_1(vec3<i32>(~select(var_4.a.x, u_input.c, true), func_2(Struct_3(-1i), Struct_3(0i)).b.b.x, -1i), vec3<i32>(countOneBits(var_4.b.x), _wgslsmith_sub_i32(reverseBits(2147483647i), abs(0i)), var_0.a.x)), false);
    global0 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yww, ~vec2<u32>(select(4294967295u, ~0u, 4294967295u < global2.x), 1u >> (0u % 32u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(u_input.a, (u_input.a & u_input.a) | ~u_input.a)));
}

