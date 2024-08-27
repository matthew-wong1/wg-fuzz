struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = (arg_3.a.a << (select(arg_0, _wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_2.x), vec2<u32>(0u, arg_2.x)), true) % vec2<u32>(32u))) | vec2<u32>(1u, arg_0.x);
    var var_1 = Struct_1(~vec2<u32>(u_input.a.x, 5462u), ~abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.a.b.x, 2147483647i, u_input.b), vec3<i32>(-2147483647i, -70929i, arg_3.a.b.x))) << (vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, arg_0.x), 0u, max(4294967295u, 4294967295u)), ~0u, ~(~83036u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1209f, arg_3.a.c.x))))));
    var var_2 = ~vec2<u32>(_wgslsmith_add_u32((arg_2.x & var_1.a.x) | 1u, u_input.a.x), ~0u);
    var var_3 = ~firstLeadingBit(firstTrailingBit(vec3<u32>(1u >> (var_2.x % 32u), 8086u & u_input.a.x, _wgslsmith_add_u32(arg_0.x, 41583u))));
    var_2 = vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 4294967295u, 0u), ~firstTrailingBit(vec3<u32>(1778u, 0u, var_0.x))), u_input.a.x);
    return ~(~4294967295u);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = firstLeadingBit(vec4<u32>(func_3(arg_1.a.a, _wgslsmith_f_op_vec2_f32(-arg_1.a.c), u_input.a, arg_1), ~arg_1.a.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~49478u, ~67248u, 1745u), min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(arg_1.a.a.x, 88816u, 27563u)), vec3<u32>(u_input.a.x, 47041u, 10563u)))));
    var var_1 = vec2<bool>(arg_0, all(!select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), !vec2<bool>(arg_0, arg_0), !arg_0)));
    var var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(arg_1.a.b.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 7u)], arg_1.a.b.x)), global1[_wgslsmith_index_u32(arg_1.a.a.x, 7u)], -1i, u_input.b), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 31194i, 0i, 2147483647i), vec4<i32>(-37938i, 1i, arg_1.a.b.x, -4992i)) & (-vec4<i32>(arg_1.a.b.x, -2147483647i, global1[_wgslsmith_index_u32(var_0.x, 7u)], 43792i) ^ vec4<i32>(5785i, u_input.b, global1[_wgslsmith_index_u32(arg_1.a.a.x, 7u)], 1i)));
    global1 = array<i32, 7>();
    let var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(arg_1.a.a.x, var_0.x) ^ (var_0.xw << (var_0.yx % vec2<u32>(32u)))), vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(~31101u, 0u))), var_0.zy);
    return Struct_2(Struct_1(countOneBits(var_0.zw), select(-_wgslsmith_mult_vec3_i32(arg_1.a.b, vec3<i32>(-27667i, u_input.b, u_input.b)), arg_1.a.b, var_1.x), vec2<f32>(-341f, _wgslsmith_div_f32(863f, arg_1.a.c.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_3(func_2(true, Struct_2(Struct_1(arg_0.zz, vec3<i32>(0i, -1i, -4992i), _wgslsmith_div_vec2_f32(vec2<f32>(1375f, arg_1.c.x), arg_2.c)))));
    var var_1 = Struct_3(func_2(true, func_2(true, var_0.a)));
    global0 = _wgslsmith_sub_i32(abs(-u_input.b), arg_2.b.x) != -func_2(!any(vec2<bool>(true, false)), var_0.a).a.b.x;
    var var_2 = func_2(true, var_1.a).a;
    let var_3 = Struct_3(Struct_2(var_1.a.a));
    return var_2.c.x;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    global0 = any(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, any(vec4<bool>(true, true, false, true)), true, true), true), vec4<bool>(true, true, -arg_3.a.a.b.x != firstTrailingBit(u_input.b), any(vec3<bool>(false, false, true))), !any(vec2<bool>(true, false))));
    global0 = true;
    var var_0 = vec4<u32>(1674u, func_2(true, Struct_2(func_2(false, Struct_2(Struct_1(vec2<u32>(1u, 1u), arg_3.a.a.b, arg_3.a.a.c))).a)).a.a.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(firstLeadingBit(4294967295u), arg_3.a.a.a.x), ~select(~1u, abs(arg_3.a.a.a.x), false)), 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(func_2(true, Struct_2(func_2(false, Struct_2(Struct_1(u_input.a, vec3<i32>(-2147483647i, 29684i, arg_3.a.a.b.x), vec2<f32>(arg_3.a.a.c.x, -610f)))).a)).a.c.x - -902f);
    var var_2 = firstLeadingBit(var_0.www) << (vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), var_0.zw), 14921u) % vec3<u32>(32u));
    return Struct_1(firstTrailingBit(var_0.zz), arg_3.a.a.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - -1609f), _wgslsmith_f_op_f32(-arg_1))) * 509f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.a.a.c.x, -263f))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = vec4<bool>(false, arg_0.a.x <= arg_1.a.x, false, arg_1.c.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.c.x, false)))));
    global0 = false;
    var var_1 = Struct_1(~abs(func_2(all(vec2<bool>(false, true)), Struct_2(arg_0)).a.a), arg_1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_0.c.x) + vec2<f32>(arg_1.c.x, -353f)), func_2(true, Struct_2(arg_1)).a.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_2.x)))));
    let var_2 = ~33938u;
    var var_3 = abs(var_1.b.xx);
    return Struct_2(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(-2214f + _wgslsmith_f_op_f32(-838f + _wgslsmith_f_op_f32(-1106f - 1493f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(148f, 2421f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-216f, 319f), _wgslsmith_f_op_f32(f32(-1f) * -638f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1299f)) - -350f), -305f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(1u, 51275u), vec3<i32>(u_input.b, u_input.b, -12996i), vec2<f32>(-230f, -1542f)), Struct_1(u_input.a, vec3<i32>(u_input.b, 0i, 2147483647i), vec2<f32>(871f, 1678f)))), _wgslsmith_f_op_f32(673f + 1000f))), _wgslsmith_f_op_f32(-1f)), Struct_3(func_2(true, Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -2147483647i, 0i), vec2<f32>(1106f, -969f)))))), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), func_2(true, Struct_2(Struct_1(u_input.a, vec3<i32>(-4729i, global1[_wgslsmith_index_u32(30451u, 7u)], u_input.b), vec2<f32>(-1439f, 1820f)))).a.a.x), ~vec2<u32>(u_input.a.x, u_input.a.x)), min(vec3<i32>(1i, 16048i, global1[_wgslsmith_index_u32(max(41492u, u_input.a.x), 7u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]) | vec3<i32>(u_input.b, -1i, global1[_wgslsmith_index_u32(31584u, 7u)]), vec3<i32>(-12210i, 1i, 2147483647i))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(902f, -211f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2124f, 570f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-692f, 252f)))))), -38872i);
    var var_1 = Struct_3(func_2(all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), false)), func_2(true, var_0)));
    let var_2 = Struct_3(var_0);
    var var_3 = vec4<i32>(i32(-1i) * -global1[_wgslsmith_index_u32(abs(~var_2.a.a.a.x), 7u)], -(_wgslsmith_sub_i32(func_4(var_2.a.a.c.x, 284f, vec4<f32>(666f, -559f, var_1.a.a.c.x, -702f), var_2).b.x, min(global1[_wgslsmith_index_u32(var_0.a.a.x, 7u)], -6216i)) ^ 48549i), 0i, var_0.a.b.x);
    var var_4 = func_2(all(vec4<bool>(all(vec2<bool>(false, true)) & true, !(-331f < var_0.a.c.x), true, true)), var_1.a);
    let var_5 = vec3<bool>(any(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, any(vec2<bool>(true, false))), !all(vec2<bool>(true, false)))), !(var_2.a.a.a.x <= (_wgslsmith_add_u32(var_0.a.a.x, var_0.a.a.x) | ~var_0.a.a.x)), all(vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), -213f <= _wgslsmith_f_op_f32(func_1(vec3<u32>(0u, var_1.a.a.a.x, var_0.a.a.x), var_0.a, Struct_1(var_1.a.a.a, vec3<i32>(u_input.b, -2147483647i, 56770i), var_4.a.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_sub_i32(u_input.b, 2147483647i), -vec4<i32>(~(~var_1.a.a.b.x), -25672i, u_input.b & _wgslsmith_mod_i32(var_3.x, var_3.x), var_4.a.b.x));
}

