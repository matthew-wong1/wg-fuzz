struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32>;

var<private> global2: array<f32, 12>;

var<private> global3: vec2<bool>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    let var_0 = 130546u;
    global1 = vec2<i32>(u_input.a >> (countOneBits(~_wgslsmith_add_u32(var_0, 16624u)) % 32u), global0.b);
    global0 = Struct_2(arg_2.a, 1i, ~vec3<u32>(~(global0.a ^ global0.c.x), ~(~22530u), 43867u), _wgslsmith_f_op_f32(floor(164f)), vec3<bool>(global0.e.x, false, -countOneBits(1i) != arg_1.c.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)), u_input.a | arg_1.c.x, vec4<i32>(~global0.b, i32(-1i) * -1032i, u_input.a, 1i), ~1u);
    global1 = var_1.c.zz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(-1615f, ~select(_wgslsmith_add_i32(reverseBits(global1.x), ~214i), -global0.b, global0.b < -24138i), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(vec3<i32>(global1.x, -2147483647i, -1i))), -firstTrailingBit(u_input.a), abs(max(global0.b, global0.b)), u_input.a), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-40449i, 0i, u_input.a, global1.x) & vec4<i32>(global0.b, global1.x, global1.x, -2147483647i), vec4<i32>(0i, 2147483647i, 0i, global0.b)), vec4<i32>(~(-28570i), ~u_input.a, ~global1.x, global1.x))), ~22221u);
    global3 = vec2<bool>(global3.x, true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(var_0.d), Struct_1(global0.d, global0.b, ~vec4<i32>(global1.x, 2147483647i, u_input.a, -1i), ~81948u), Struct_3(global0.a))), -528f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-485f)), _wgslsmith_f_op_f32(f32(-1f) * -509f))), 546f);
    let var_2 = global0.e.x;
    global3 = select(select(vec2<bool>(all(!global0.e.zx), !global0.e.x), vec2<bool>(true, true), any(vec2<bool>(true, !global3.x))), !(!select(select(vec2<bool>(true, global3.x), global0.e.xx, true), vec2<bool>(true, false), global0.e.yy)), false);
    return select(!select(select(global0.e.yz, !vec2<bool>(true, global0.e.x), global0.e.xx), select(global0.e.yz, !global0.e.yy, true), vec2<bool>(!global0.e.x, true)), !global0.e.zz, _wgslsmith_sub_u32(global0.c.x | 4294967295u, u_input.b) >= var_0.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = -1808f;
    let var_1 = Struct_4(select(vec4<bool>(arg_1.x, all(vec4<bool>(false, true, global0.e.x, global3.x)), global0.e.x, true), vec4<bool>(any(vec2<bool>(global0.e.x, true)), global0.e.x, true, any(vec3<bool>(false, global0.e.x, true))), global0.c.x != 4294967295u));
    let var_2 = ~global0.c.yx;
    let var_3 = ~vec2<u32>(~min(~var_2.x, global0.c.x & 0u), arg_3.a);
    let var_4 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(reverseBits(arg_0), vec3<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 28754i), vec2<i32>(0i, 45268i)), u_input.a)), -(~2147483647i));
    return Struct_2(abs(~4294967295u), u_input.a >> (4294967295u % 32u), vec3<u32>(~_wgslsmith_sub_u32(~var_3.x, reverseBits(arg_2)), 4294967295u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, var_2.x), vec2<u32>(arg_2, 45436u)))), 1335f, select(select(vec3<bool>(58331u <= global0.a, -1146f <= global2[_wgslsmith_index_u32(1u, 12u)], true), vec3<bool>(global3.x && true, arg_1.x, !var_1.a.x), false), vec3<bool>(true, _wgslsmith_f_op_f32(692f * global2[_wgslsmith_index_u32(arg_3.a, 12u)]) >= global2[_wgslsmith_index_u32(~1u, 12u)], global0.e.x), !((var_4 ^ 1i) < -37492i)));
}

fn func_1(arg_0: f32, arg_1: i32) -> i32 {
    let var_0 = -abs(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-29753i, arg_1, global0.b, global1.x), vec4<i32>(arg_1, arg_1, global0.b, 69589i)), arg_1 ^ -5398i, -1i), firstTrailingBit(-vec3<i32>(global1.x, global1.x, u_input.a))));
    var var_1 = abs(vec2<i32>(var_0.x, 31667i));
    let var_2 = func_4(-_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_1.x, u_input.a), -1i, ~2147483647i), -vec3<i32>(-1i, global1.x, 0i)), select(global0.e.xx, !(!func_2()), any(global0.e.zy)), ~(global0.a >> (1u % 32u)), Struct_3(u_input.b));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(484f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.d + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 12u)], -1458f)))))));
    var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(var_0.yx), vec2<i32>(global0.b, global1.x), vec2<i32>(_wgslsmith_sub_i32(-2147483647i, -9407i), abs(-3857i))), firstTrailingBit(~select(vec2<i32>(var_2.b, 15499i), var_0.yx, vec2<bool>(var_2.e.x, global0.e.x)))) | var_0.yx;
    return -abs(abs(-3448i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c.yz;
    let var_1 = vec2<u32>(countOneBits(firstLeadingBit(u_input.b)), 4294967295u) & global0.c.yx;
    global0 = Struct_2(global0.c.x, max(firstTrailingBit(func_1(_wgslsmith_f_op_f32(f32(-1f) * -691f), -1i)), global1.x), ~vec3<u32>(abs(10771u) << (1u % 32u), var_0.x, func_4(vec3<i32>(26989i, global0.b, global1.x), global0.e.yy, ~global0.a, Struct_3(global0.a)).c.x), _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.d, -843f)))))), select(func_4(min(vec3<i32>(-37467i, 2147483647i, -20346i), vec3<i32>(u_input.a, u_input.a, global1.x)) ^ ~vec3<i32>(global1.x, global0.b, 107724i), vec2<bool>(true, func_2().x), 1u, Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global0.a, var_1.x), vec4<u32>(global0.c.x, global0.c.x, var_0.x, global0.a)))).e, vec3<bool>(select(!global0.e.x, global3.x, global0.e.x), global3.x, true), !global0.e));
    global2 = array<f32, 12>();
    var var_2 = Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_1.x, 5319u)), ~var_1), ~reverseBits(u_input.b >> (global0.a % 32u))), _wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(global0.b, -2147483647i), u_input.a), abs(i32(-1i) * -8347i))), _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global0.a, u_input.b), global0.c)), global0.c | _wgslsmith_add_vec3_u32(global0.c, _wgslsmith_add_vec3_u32(global0.c, vec3<u32>(10677u, 4294967295u, 34207u))), _wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(u_input.b, var_0.x, 55339u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(71143u, global0.c.x, 68381u), vec3<u32>(u_input.b, 1u, 27360u), vec3<u32>(var_0.x, u_input.b, 0u)), _wgslsmith_div_vec3_u32(~global0.c, global0.c))), global0.d, !vec3<bool>((global3.x | true) & all(vec4<bool>(false, global0.e.x, global0.e.x, global0.e.x)), !(!global3.x), true));
    global0 = func_4(~(~(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.b, global0.b, 2147483647i), vec3<i32>(global0.b, 7260i, 2147483647i)) >> (firstTrailingBit(global0.c) % vec3<u32>(32u)))), !vec2<bool>(true, all(func_2())), u_input.b, Struct_3(_wgslsmith_dot_vec3_u32(var_2.c, ~(~var_2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, -12496i, 14046i, global1.x), -(vec4<i32>(var_2.b, -38700i, u_input.a, global0.b) & vec4<i32>(var_2.b, var_2.b, 0i, var_2.b))), select(~select(min(vec3<i32>(1i, var_2.b, u_input.a), vec3<i32>(40896i, 27720i, 19250i)), countOneBits(vec3<i32>(1i, global1.x, global0.b)), global0.e), select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b, 4747i, 3947i), ~vec3<i32>(global0.b, var_2.b, -1i)), ~abs(vec3<i32>(global1.x, 3197i, -36052i)), vec3<bool>(true, true, true)), !(!select(vec3<bool>(global0.e.x, false, var_2.e.x), vec3<bool>(global0.e.x, var_2.e.x, true), global3.x))));
}

