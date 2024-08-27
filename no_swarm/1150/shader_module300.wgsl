struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: array<i32, 22>;

var<private> global1: array<i32, 14> = array<i32, 14>(i32(-2147483648), 0i, 0i, 13575i, 10094i, 33508i, 39942i, 30808i, -2703i, 31566i, 32746i, 7461i, 1i, 0i);

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true));

var<private> global3: array<vec4<u32>, 21>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_5(_wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(1u, 14u)] ^ ~(global1[_wgslsmith_index_u32(u_input.b, 14u)] >> (u_input.c.x % 32u)), -63268i), abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, global0[_wgslsmith_index_u32(43715u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), vec4<i32>(-1i, 0i, -1i, -16480i), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 22u)]) << (u_input.c % vec4<u32>(32u)))));
    let var_1 = Struct_1(_wgslsmith_div_u32(u_input.d, ~(abs(u_input.c.x) | ~u_input.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b, countOneBits(var_0.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(88531u, 14u)], 1i, -2147483647i, 1i), vec4<i32>(var_0.a, var_0.a, var_0.b.x, global1[_wgslsmith_index_u32(u_input.b, 14u)])) | var_0.b), 2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(u_input.c.wyw ^ u_input.c.zww, vec3<u32>(1u, u_input.a, 63029u)), u_input.d), 22u)]));
    var var_2 = Struct_5(_wgslsmith_add_i32(var_0.b.x, -2147483647i) ^ -37812i, min(~var_0.b ^ abs(abs(vec4<i32>(var_1.b.x, var_1.b.x, 23807i, -39000i))), var_0.b));
    let var_3 = u_input.c.yyx;
    global2 = array<vec4<bool>, 2>();
    return reverseBits(vec4<i32>(var_2.b.x, _wgslsmith_mod_i32(-23168i, 1i) ^ ~_wgslsmith_add_i32(var_1.b.x, 39942i), var_2.a, -8772i));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(0u), ~4294967295u), u_input.c.zx);
    var var_1 = Struct_5(_wgslsmith_div_i32(_wgslsmith_mod_i32(-38063i, 1i), global1[_wgslsmith_index_u32(~(u_input.d & 41134u), 14u)]) & ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(46433u, 22u)], 34924i, 0i, global1[_wgslsmith_index_u32(24461u, 14u)]), vec4<i32>(global1[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(var_0.x, 22u)], -2147483647i))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(35803u, 14u)]), vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.d, 22u)], 56198i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, global1[_wgslsmith_index_u32(var_0.x, 14u)], 37662i) ^ vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 14u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], 74606i, global0[_wgslsmith_index_u32(var_0.x, 22u)]), vec4<i32>(61389i, -44328i, -19815i, global0[_wgslsmith_index_u32(0u, 22u)]))), firstTrailingBit(func_3())));
    global2 = array<vec4<bool>, 2>();
    global3 = array<vec4<u32>, 21>();
    let var_2 = Struct_4(vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-573f, -1275f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(843f * 556f))), -551f), abs(_wgslsmith_div_i32((global1[_wgslsmith_index_u32(48408u, 14u)] >> (30181u % 32u)) | global0[_wgslsmith_index_u32(var_0.x >> (1u % 32u), 22u)], 19710i)));
    return Struct_1(min(abs(4294967295u) & var_0.x, reverseBits(~_wgslsmith_div_u32(4294967295u, var_0.x))), reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.b.zwz, var_1.b.zyz), -vec3<i32>(var_1.a, 2147483647i, var_2.c)) << (min(u_input.c.yyw, vec3<u32>(var_0.x, u_input.d, var_0.x)) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    return arg_0.a;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = false;
    var var_1 = Struct_1(max(442u, _wgslsmith_sub_u32(arg_1, _wgslsmith_add_u32(0u, select(arg_0, 77352u, true)))), arg_3.zyz);
    var var_2 = select(select(!(!vec2<bool>(var_0, var_0)), !vec2<bool>(select(true, true, var_0), any(vec3<bool>(true, true, var_0))), !vec2<bool>(all(vec4<bool>(var_0, false, var_0, var_0)), true)), vec2<bool>(var_0, !var_0), var_0);
    var var_3 = _wgslsmith_mult_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.c.x, var_1.a, 40528u) ^ u_input.c.zzy), u_input.c.yww, min(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 12796u, 22921u), u_input.c.xxz), u_input.c.zzy))), select(vec3<u32>(34579u, 1u, func_2().a), min(~vec3<u32>(arg_1, arg_1, arg_0), countOneBits(vec3<u32>(53250u, 18287u, 1u))), false));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1169f - arg_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1647f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - 1456f))))));
    return Struct_4(select(select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_2.x), true), vec2<bool>(false, false), !var_2.x), vec2<bool>(true, true), vec2<bool>(select(var_0, var_2.x, false), true)), select(select(!vec2<bool>(var_0, var_2.x), select(vec2<bool>(true, var_2.x), vec2<bool>(false, var_2.x), true), !var_2.x), select(!vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, true), var_1.a == var_1.a), select(!vec2<bool>(false, var_0), select(vec2<bool>(false, false), vec2<bool>(false, var_2.x), vec2<bool>(false, var_0)), true)), vec2<bool>(var_0, (var_1.b.x & 1885i) >= global1[_wgslsmith_index_u32(arg_0 | 4294967295u, 14u)])), arg_2, -2147483647i);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = func_5(func_4(func_2(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1164f, -1629f, -1303f) + vec3<f32>(-720f, -1046f, 359f)) + vec3<f32>(940f, -1090f, -578f)))), ~arg_0.x, func_2()), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-801f)) - _wgslsmith_f_op_f32(f32(-1f) * -155f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-168f, _wgslsmith_div_f32(452f, -910f)))), vec4<i32>(reverseBits(firstTrailingBit(~arg_0.x)), func_3().x, _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_0.x, 2147483647i, arg_0.x), vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(select(44847u, 4294967295u, true), 14u)], 15030i)), firstTrailingBit(min(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-32861i, arg_0.x)), -49101i))));
    let var_1 = Struct_5(~13409i, func_3() | firstLeadingBit(-(~vec4<i32>(1i, -19094i, -2147483647i, global1[_wgslsmith_index_u32(37085u, 14u)]))));
    var var_2 = var_1;
    var var_3 = -581f;
    var var_4 = _wgslsmith_add_u32(_wgslsmith_add_u32(1u, ~_wgslsmith_sub_u32(u_input.b, ~1u)), 1u);
    return func_2();
}

fn func_6(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_5) -> vec4<bool> {
    let var_0 = vec2<bool>(true, abs(select(1i, global1[_wgslsmith_index_u32(11562u, 14u)] >> (111618u % 32u), false)) == _wgslsmith_dot_vec4_i32(arg_0, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, 30010i, arg_1.x), arg_0), arg_3.b)));
    var var_1 = Struct_2(~vec4<u32>(~u_input.b, ~_wgslsmith_div_u32(4294967295u, 1u), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.c.zyy, vec3<u32>(1u, arg_2.a, 1u))), ~(~u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2985f * -472f), -590f, _wgslsmith_f_op_f32(-607f * -1223f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, 447f, 770f))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-827f)), _wgslsmith_f_op_f32(-func_5(u_input.b, 42153u, vec2<f32>(786f, -1516f), vec4<i32>(arg_0.x, arg_3.b.x, arg_3.b.x, arg_2.b.x)).b.x), _wgslsmith_f_op_f32(1622f + 957f))), vec4<u32>(u_input.b, arg_2.a, u_input.c.x, arg_2.a), _wgslsmith_sub_u32(arg_2.a, ~(~8398u)));
    var var_2 = Struct_4(select(vec2<bool>(select(all(vec3<bool>(false, var_0.x, var_0.x)), true, any(vec3<bool>(false, false, var_0.x))), any(global2[_wgslsmith_index_u32(u_input.b, 2u)])), func_5(1u >> (u_input.a % 32u), firstLeadingBit(20162u), var_1.c.zx, arg_0).a, !var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.c.zz)) + vec2<f32>(var_1.c.x, -734f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.xz))), -1i);
    var var_3 = 1u;
    global1 = array<i32, 14>();
    return global2[_wgslsmith_index_u32(0u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 21>();
    let var_0 = func_6(reverseBits(select(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], 0i, global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<i32>(_wgslsmith_sub_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.d, 22u)]), global1[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-16346i, 0i, -4695i), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(54342u, 22u)])), 65375i), true)), ~vec2<i32>(1i ^ -global1[_wgslsmith_index_u32(5269u, 14u)], _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(1645u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])), vec4<i32>(global1[_wgslsmith_index_u32(0u, 14u)], -2147483647i, global0[_wgslsmith_index_u32(27610u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 14u)]))), func_1(-vec2<i32>(global1[_wgslsmith_index_u32(countOneBits(1210u), 14u)], global0[_wgslsmith_index_u32(~4294967295u, 22u)])), Struct_5(-select(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(29721u, 22u)], global0[_wgslsmith_index_u32(48349u, 22u)]), -1i, true), func_3()));
    global0 = array<i32, 22>();
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, firstTrailingBit(4294967295u)), u_input.c.x)), 22u)], _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(max(0u, _wgslsmith_div_u32(u_input.d, 50528u)), 22u)], _wgslsmith_div_i32(countOneBits(global1[_wgslsmith_index_u32(u_input.a, 14u)]), firstLeadingBit(-64215i)), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(41519u, 22u)], 2491i), ~(i32(-1i) * -2147483647i)), -(~_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], -12197i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], 1i, global1[_wgslsmith_index_u32(77794u, 14u)])))));
    let var_2 = -837f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

