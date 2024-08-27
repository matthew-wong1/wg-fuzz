struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<vec3<bool>, 16>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<u32, 29>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1503f), _wgslsmith_div_f32(-2091f, -673f), all(vec3<bool>(true, false, true)))) * _wgslsmith_f_op_f32(select(-374f, 2023f, true))) - 141f), _wgslsmith_f_op_f32(1f * -292f)));
    var var_1 = global0[_wgslsmith_index_u32(~1u, 29u)];
    let var_2 = Struct_1(vec4<i32>(~(~u_input.d.x << (_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(u_input.a, 29u)]) % 32u)), -2147483647i, 25976i, u_input.b), -771f, abs(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.d.zxz, select(vec3<i32>(-13180i, -41777i, u_input.d.x), u_input.d.wyz, true)), u_input.b)), _wgslsmith_dot_vec2_u32(firstTrailingBit(abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], u_input.e))), reverseBits(max(~vec2<u32>(u_input.e, 5935u), ~u_input.c))), true);
    let var_3 = _wgslsmith_f_op_f32(-var_2.b);
    return _wgslsmith_sub_i32(_wgslsmith_clamp_i32(countOneBits(-2147483647i ^ var_2.c), firstLeadingBit(0i) & ~max(262i, u_input.d.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_2.a.xwy, u_input.d.yzy), _wgslsmith_mod_i32(var_2.c, _wgslsmith_add_i32(var_2.a.x, u_input.b)), u_input.b)), -(~var_2.c));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 29>();
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-arg_0.b), ~func_3(), 15248u, select(arg_1.b >= _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - -443f) == arg_1.b, false));
    let var_1 = !select(vec2<bool>(false, all(global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(var_0.d, 29u)], 16u)])), !select(vec2<bool>(arg_0.e, arg_0.e), select(vec2<bool>(true, true), vec2<bool>(false, arg_1.e), vec2<bool>(var_0.e, true)), arg_1.a.x > var_0.c), select(vec2<bool>(arg_1.e, arg_1.e && true), vec2<bool>(arg_1.e, all(vec3<bool>(false, true, false))), vec2<bool>(false, true)));
    var var_2 = 1u;
    global0 = array<u32, 29>();
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = func_2(Struct_1(countOneBits(vec4<i32>(arg_0.a.x & 2147483647i, -1i, -32771i, func_2(arg_0, arg_0).a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b)) - 598f), 1092f)), -1i, 4294967295u, true), func_2(arg_0, Struct_1(arg_0.a, _wgslsmith_f_op_f32(arg_0.b + -1751f), firstTrailingBit(-9530i), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), 4019u | global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), func_2(arg_0, func_2(arg_0, arg_0)).e)));
    let var_1 = 23087i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, 810f))))))));
    let var_3 = 0i;
    global0 = array<u32, 29>();
    return ~vec4<u32>(firstTrailingBit(~1u), arg_0.d, 10278u, _wgslsmith_clamp_u32(var_0.d | arg_0.d, 24845u, u_input.a | firstTrailingBit(global0[_wgslsmith_index_u32(0u, 29u)])));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2(Struct_1(u_input.d, _wgslsmith_f_op_f32(select(-323f, 600f, false)), ~(-2147483647i), ~global0[_wgslsmith_index_u32(1u, 29u)], true), Struct_1(vec4<i32>(u_input.d.x, -3854i, u_input.b, u_input.d.x), _wgslsmith_f_op_f32(1337f - 630f), u_input.b, global0[_wgslsmith_index_u32(1u ^ global0[_wgslsmith_index_u32(10253u, 29u)], 29u)], all(vec3<bool>(false, false, false))))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(~(global0[_wgslsmith_index_u32(35117u, 29u)] | global0[_wgslsmith_index_u32(u_input.e, 29u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4476u, 36097u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(34833u, 29u)], 2703u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 101489u) << (vec4<u32>(global0[_wgslsmith_index_u32(51354u, 29u)], 0u, 68962u, u_input.a) % vec4<u32>(32u))), 29u)], 30715u, ~u_input.e), vec4<u32>(0u, firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43320u, 29u)], 29u)]), ~1058u, max(61108u, 4294967295u)) ^ (select(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75190u, 29u)], 29u)], 29u)], 4294967295u, 0u), vec4<u32>(u_input.c.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 28996u), vec4<bool>(false, true, true, true)) ^ ~vec4<u32>(44614u, 0u, 19166u, 5654u))) % vec4<u32>(32u));
    global1 = array<vec3<bool>, 16>();
    let var_1 = u_input.b;
    global1 = array<vec3<bool>, 16>();
    global1 = array<vec3<bool>, 16>();
    return Struct_1(vec4<i32>(-1i) * -vec4<i32>(1i, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x), countOneBits(u_input.b), abs(var_1)), 1435f, -33000i, var_0.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-955f, var_0.b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 1545f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, 532f)) - vec2<f32>(var_0.b, var_0.b)))));
    var var_3 = Struct_1(reverseBits(~vec4<i32>(-2147483647i, 2147483647i, var_0.c, u_input.b) ^ ~vec4<i32>(u_input.b, 17351i, var_0.a.x, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1260f) - var_2.x), -1i & u_input.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 29844u), vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(var_0.d, 29u)]))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 9739u), vec2<u32>(u_input.e, 0u))), u_input.c), _wgslsmith_add_u32(_wgslsmith_add_u32(func_4(Struct_1(vec4<i32>(50000i, var_0.a.x, 1i, var_0.c), var_0.b, u_input.b, u_input.e, var_0.e)).x, _wgslsmith_mod_u32(var_0.d, u_input.a)), ~4294967295u) >= countOneBits(4294967295u));
    var var_4 = !select(!vec4<bool>(var_3.a.x > var_3.a.x, !var_0.e, false, func_2(Struct_1(vec4<i32>(u_input.d.x, 1062i, var_3.a.x, var_3.a.x), var_2.x, 34484i, 1u, var_0.e), Struct_1(vec4<i32>(u_input.d.x, var_0.a.x, -38331i, var_3.c), var_0.b, var_0.c, 12552u, var_3.e)).e), !(!select(vec4<bool>(var_0.e, false, true, true), vec4<bool>(var_0.e, false, var_3.e, false), false)), var_0.e);
    let var_5 = !(!global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_3.d & 1u, u_input.a, ~_wgslsmith_sub_u32(var_0.d, var_3.d)), 16u)]);
    let var_6 = Struct_1(-vec4<i32>(reverseBits(~0i), 17767i, abs(~44879i), -1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(909f, -507f)), var_0.b, func_1().e)), -var_0.c, ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(61160u, 4294967295u, var_0.d, 4294967295u), vec4<u32>(var_0.d, var_3.d, 4294967295u, var_0.d))), select(true, false, true) & all(select(vec2<bool>(true, true), select(vec2<bool>(true, var_5.x), vec2<bool>(true, true), false), var_0.e)));
    var_0 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, -1846f);
}

