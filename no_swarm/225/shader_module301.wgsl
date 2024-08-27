struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<bool, 9> = array<bool, 9>(false, true, true, false, false, true, false, false, true);

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-3059i, -27644i), vec2<i32>(-1i, -1i), vec2<i32>(1i, 25027i), vec2<i32>(-1i, 42287i), vec2<i32>(6925i, 6403i), vec2<i32>(3971i, 31754i), vec2<i32>(-11930i, 23870i), vec2<i32>(46756i, 1786i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(26077i, 18016i), vec2<i32>(0i, 2147483647i), vec2<i32>(14543i, 2147483647i), vec2<i32>(5124i, -8756i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(53191i, 2147483647i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    global1 = array<bool, 9>();
    var var_0 = select(!arg_2.xy, select(arg_2.zy, vec2<bool>(any(!arg_1.b), arg_2.x), vec2<bool>(arg_1.a, !arg_2.x)), any(arg_2.xy));
    var_0 = arg_2.yx;
    var var_1 = reverseBits(vec4<i32>(-10359i, ~(i32(-1i) * -1961i) & firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(97190i, -31456i, -26841i, 0i), vec4<i32>(1i, 1i, 37207i, 35584i))), -42336i, firstLeadingBit(min(-20622i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 36841i, -2147483647i), vec4<i32>(6999i, 2147483647i, 3821i, 1i))))));
    return var_1.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_1(true, vec4<bool>(select(true, !all(arg_1.b.ww), arg_3.x), all(!arg_3.xy) & (true || any(arg_2.b.xxy)), _wgslsmith_f_op_f32(-arg_1.c) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1667f))), any(!select(vec4<bool>(true, true, arg_3.x, true), arg_2.b, vec4<bool>(false, arg_1.a, false, true)))), _wgslsmith_f_op_f32(ceil(527f)), arg_2.d);
    global0 = array<Struct_1, 13>();
    var var_1 = ~arg_2.d.wzy;
    var_0 = Struct_1(false, vec4<bool>(~func_3(vec3<u32>(arg_0.x, arg_0.x, 6345u), arg_1, vec3<bool>(global1[_wgslsmith_index_u32(1u, 9u)], false, arg_3.x)) != 54652i, any(!arg_2.b), arg_1.a, !any(arg_2.b)), _wgslsmith_f_op_f32(-1000f * 1165f), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, _wgslsmith_add_u32(~25940u, 1u), max(93175u, arg_2.d.x) & 32031u, var_0.d.x), firstTrailingBit(arg_1.d)));
    var var_2 = Struct_2(false, _wgslsmith_add_vec4_u32(var_0.d, ~firstLeadingBit(vec4<u32>(u_input.a.x, 0u, 78461u, 1552u))) >> (abs(vec4<u32>(~arg_0.x, arg_2.d.x, abs(var_0.d.x), 0u)) % vec4<u32>(32u)), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(36323u, 4294967295u) << (min(u_input.b.x, arg_1.d.x) % 32u), 1u), 9u)], arg_2.b, -855f, ~arg_2.d), arg_2);
    return firstTrailingBit(1u | u_input.b.x);
}

fn func_1() -> vec3<i32> {
    var var_0 = true & !global1[_wgslsmith_index_u32(~func_2(vec2<u32>(u_input.a.x, 28679u), Struct_1(true, vec4<bool>(true, false, global1[_wgslsmith_index_u32(81450u, 9u)], global1[_wgslsmith_index_u32(u_input.c, 9u)]), -1000f, vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)), Struct_1(global1[_wgslsmith_index_u32(16478u, 9u)], vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 9u)], false, true, true), 415f, vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 15570u)), select(vec3<bool>(true, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(51468u, 9u)], false), true)), 9u)];
    var var_1 = vec4<i32>(1i, 1i, 1i, 1i);
    var var_2 = u_input.b.x;
    let var_3 = Struct_1(global1[_wgslsmith_index_u32(15362u, 9u)], select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 9u)], !(!global1[_wgslsmith_index_u32(1u, 9u)]), !any(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(63925u, 9u)] && true), vec4<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)])), true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, u_input.b.x), 9u)], !global1[_wgslsmith_index_u32(~u_input.c, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u >> (1u % 32u), _wgslsmith_mod_u32(u_input.c, 8499u)), 9u)], false, !all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), true)), -1000f, vec4<u32>(~0u, 1u, _wgslsmith_clamp_u32(abs(1u), 34371u, ~u_input.c | u_input.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, u_input.a.x), ~u_input.a.zy), u_input.b)));
    var var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x >> (78596u % 32u), var_1.x, ~max(1i, 0i)), vec3<i32>(~1i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(var_1.x & var_1.x, _wgslsmith_sub_i32(var_1.x, -1i))), var_1.x));
    return reverseBits(max((-var_1.xxw >> (~u_input.a % vec3<u32>(32u))) << (var_3.d.xyy % vec3<u32>(32u)), var_1.wxw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 13u)];
    let var_1 = func_1();
    let var_2 = u_input.a;
    var var_3 = Struct_2(global1[_wgslsmith_index_u32(42355u, 9u)], var_0.d >> (firstLeadingBit(countOneBits(var_0.d >> (vec4<u32>(var_2.x, 1u, u_input.a.x, var_2.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), Struct_1(false, vec4<bool>(!var_0.b.x, all(vec2<bool>(true, false)), !global1[_wgslsmith_index_u32(~0u, 9u)], var_0.b.x), var_0.c, ~var_0.d), Struct_1(994f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(318f))), !vec4<bool>(global1[_wgslsmith_index_u32(~1u, 9u)], true, global1[_wgslsmith_index_u32(3612u, 9u)], all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], var_0.b.x))), _wgslsmith_f_op_f32(278f - var_0.c), vec4<u32>(func_2(~var_2.yy, Struct_1(var_0.b.x, var_0.b, var_0.c, var_0.d), global0[_wgslsmith_index_u32(u_input.a.x << (var_0.d.x % 32u), 13u)], var_0.b.yyy), reverseBits(u_input.b.x), 86058u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>((4294967295u >> (u_input.b.x % 32u)) & ~(~var_2.x), 0u, ~100148u), firstTrailingBit(var_1.x));
}

