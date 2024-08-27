struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: array<i32, 2> = array<i32, 2>(2147483647i, i32(-2147483648));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    var var_0 = vec3<bool>(min(arg_0, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(80138u, u_input.b, 0u), vec3<u32>(arg_0, arg_0, 102344u)), 41573u)) == ~arg_0, false, false);
    var var_1 = abs(~global2[_wgslsmith_index_u32(4294967295u, 2u)]);
    var var_2 = Struct_1(!select(!arg_2.a, vec2<bool>(true, u_input.a.x <= u_input.b), select(!var_0.yx, var_0.yx, any(arg_2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(1075f, arg_1.b.x), _wgslsmith_f_op_f32(trunc(arg_1.b.x)), -2699f)))), firstTrailingBit(arg_1.d.x), -(vec3<i32>(-1i) * -vec3<i32>(arg_1.e.x, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], arg_2.d.x)), vec4<i32>(1i, arg_2.c, _wgslsmith_dot_vec4_i32(arg_1.e, arg_1.e), arg_2.c));
    var var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_3), _wgslsmith_f_op_vec4_f32(-arg_3)));
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(var_2.d.x, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(arg_0, 22u)], _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(25789u, 22u)], global1[_wgslsmith_index_u32(63645u, 22u)])), 2u)], -1i, var_2.c)), -4351i);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(7204i, global2[_wgslsmith_index_u32(64284u, 2u)]) & _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(34528i, -1i)), i32(-1i) * -51132i), _wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(~arg_1, 2u)], i32(-1i) * -global2[_wgslsmith_index_u32(arg_0, 2u)]), vec2<i32>(global2[_wgslsmith_index_u32(max(arg_0, arg_0), 2u)], global2[_wgslsmith_index_u32(69257u, 2u)]) << (vec2<u32>(~0u, arg_0) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.c, 2u)], ~(-1i)), _wgslsmith_div_i32(-global2[_wgslsmith_index_u32(u_input.c, 2u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_0, 2u)], 50990i, global2[_wgslsmith_index_u32(arg_1, 2u)]), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(arg_1, 2u)], global2[_wgslsmith_index_u32(1u, 2u)])))), -func_3(~u_input.a.x, Struct_1(vec2<bool>(false, false), vec3<f32>(1344f, 804f, 758f), global2[_wgslsmith_index_u32(0u, 2u)], vec3<i32>(-33112i, global2[_wgslsmith_index_u32(arg_1, 2u)], global2[_wgslsmith_index_u32(1316u, 2u)]), vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], -4970i, global2[_wgslsmith_index_u32(u_input.c, 2u)])), Struct_1(vec2<bool>(false, false), vec3<f32>(-1086f, 1932f, -730f), global2[_wgslsmith_index_u32(20929u, 2u)], vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], -2147483647i, global2[_wgslsmith_index_u32(arg_0, 2u)]), vec4<i32>(-27666i, global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], 41473i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1804f, -319f, 971f, -1046f)))));
    let var_1 = vec3<bool>(false, true || (true && (true || (u_input.b < 1u))), !(true != any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    global2 = array<i32, 2>();
    global1 = array<vec4<u32>, 22>();
    var var_2 = Struct_1(var_1.yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-721f, 1790f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-486f, -552f) - _wgslsmith_f_op_f32(select(-343f, -257f, var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1134f + 829f), -884f)))), select(global2[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 51224i, var_0.x) >> (vec3<u32>(arg_1, 49364u, u_input.c) % vec3<u32>(32u)), vec3<i32>(-7149i, global2[_wgslsmith_index_u32(7673u, 2u)], 28559i) >> (vec3<u32>(u_input.a.x, 65473u, u_input.a.x) % vec3<u32>(32u))), var_1.x) & ~global2[_wgslsmith_index_u32(arg_1, 2u)], vec3<i32>(var_0.x, var_0.x, var_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-52467i, 0i, ~1i, firstLeadingBit(50761i)), -vec4<i32>(-2506i, global2[_wgslsmith_index_u32(arg_0, 2u)], 36896i, 0i)) | abs(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 19415i, -2147483647i, 6953i), vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(arg_0, 2u)], 1i, var_0.x)))));
    return Struct_2(all(!var_2.a), Struct_1(!(!var_1.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x))) - _wgslsmith_f_op_vec3_f32(-var_2.b))), var_2.e.x, firstTrailingBit(_wgslsmith_add_vec3_i32(var_2.d, countOneBits(var_2.e.xxw))), _wgslsmith_add_vec4_i32(min(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], -36998i, global2[_wgslsmith_index_u32(0u, 2u)], 10564i) | vec4<i32>(0i, 28591i, -1i, var_2.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(20855u, 2u)], 21793i, 34619i, 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 2u)], 9219i, var_0.x, 20302i), var_2.e)), var_2.e)), true, Struct_1(vec2<bool>(any(var_2.a), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(115097u, 2u)], 6202i, -1i) == _wgslsmith_clamp_i32(-17000i, 1i, -45367i)), var_2.b, 54763i, var_2.d, min(~select(vec4<i32>(-1i, -10353i, var_0.x, var_2.d.x), vec4<i32>(var_0.x, var_0.x, -1i, global2[_wgslsmith_index_u32(0u, 2u)]), true), var_2.e)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global1 = array<vec4<u32>, 22>();
    global2 = array<i32, 2>();
    let var_0 = func_2(u_input.a.x, u_input.b);
    var var_1 = func_2(1u, arg_0.x).a;
    global2 = array<i32, 2>();
    return func_2(~_wgslsmith_sub_u32(arg_0.x, ~0u), min(_wgslsmith_add_u32(u_input.a.x, ~1u | u_input.c), firstTrailingBit(0u))).d;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: bool) -> i32 {
    let var_0 = 1731u;
    global1 = array<vec4<u32>, 22>();
    global0 = _wgslsmith_div_i32(func_1(~abs(~vec4<u32>(var_0, 4670u, u_input.c, 0u))).c, ~(-arg_0.d.e.x));
    let var_1 = Struct_1(!arg_0.b.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.b.x, arg_0.d.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.b.x) + _wgslsmith_div_f32(628f, arg_0.b.b.x)), _wgslsmith_f_op_f32(max(arg_0.b.b.x, _wgslsmith_f_op_f32(-893f * arg_0.b.b.x)))))), global2[_wgslsmith_index_u32(u_input.c, 2u)], arg_0.b.d, _wgslsmith_sub_vec4_i32(abs(arg_0.d.e), vec4<i32>((51471i | arg_0.b.c) >> (~var_0 % 32u), ~arg_0.b.e.x | firstTrailingBit(23208i), global2[_wgslsmith_index_u32(arg_1, 2u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(98077u, 2u)] ^ arg_0.d.d.x, 0i))));
    var var_2 = Struct_1(!vec2<bool>(arg_0.b.a.x, true), vec3<f32>(arg_0.d.b.x, var_1.b.x, _wgslsmith_f_op_f32(round(arg_0.b.b.x))), -2147483647i, vec3<i32>(arg_0.d.d.x, ~arg_0.b.c, -1i), select(~arg_0.d.e, select(_wgslsmith_mod_vec4_i32(var_1.e << (vec4<u32>(32318u, 80355u, 76710u, 0u) % vec4<u32>(32u)), vec4<i32>(-24540i, var_1.c, 36969i, global2[_wgslsmith_index_u32(u_input.b, 2u)])), (arg_0.d.e >> (vec4<u32>(0u, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u))) & (vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 2u)], 35255i, 18604i) << (global1[_wgslsmith_index_u32(u_input.a.x, 22u)] % vec4<u32>(32u))), !(!vec4<bool>(var_1.a.x, arg_2, var_1.a.x, var_1.a.x))), vec4<bool>(true, false, arg_0.c, true)));
    return func_3(~1u, Struct_1(vec2<bool>(any(!vec4<bool>(var_1.a.x, false, var_1.a.x, true)), all(select(vec3<bool>(false, arg_2, false), vec3<bool>(false, arg_2, true), vec3<bool>(true, arg_0.c, arg_0.b.a.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_1.b.x, arg_0.d.b.x), _wgslsmith_f_op_vec3_f32(var_1.b + var_2.b)), -2147483647i, -(_wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0.d.c, arg_0.d.e.x), vec3<i32>(26386i, var_2.e.x, global2[_wgslsmith_index_u32(111258u, 2u)])) ^ reverseBits(var_1.e.yww)), countOneBits(-vec4<i32>(6300i, global2[_wgslsmith_index_u32(66632u, 2u)], 0i, var_1.d.x))), arg_0.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-771f, arg_0.d.b.x, 224f, arg_0.b.b.x))) - vec4<f32>(-118f, var_2.b.x, 164f, -2454f)) + vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - arg_0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2293f), _wgslsmith_f_op_f32(f32(-1f) * -483f), 515f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, var_1.b.x, var_2.b.x, 1255f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 719f, var_2.b.x, arg_0.d.b.x) * vec4<f32>(var_2.b.x, 238f, 1386f, var_1.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 2>();
    var var_0 = vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -51005i, global2[_wgslsmith_index_u32(reverseBits(71805u), 2u)]), func_4(Struct_2(any(vec3<bool>(false, true, false)) && true, func_1(global1[_wgslsmith_index_u32(4294967295u, 22u)] >> (vec4<u32>(20228u, u_input.b, 43072u, u_input.b) % vec4<u32>(32u))), true | all(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1525f, 1387f, 1000f) * vec3<f32>(1276f, -466f, -1000f)), -1i, -vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 13943i), ~vec4<i32>(-28638i, global2[_wgslsmith_index_u32(u_input.b, 2u)], 1i, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]))), firstTrailingBit(u_input.c << (1u % 32u)), false, !((global2[_wgslsmith_index_u32(u_input.a.x, 2u)] | 73760i) >= -19731i)), min(-2147483647i, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.c, u_input.a.x), 2u)]), 2147483647i);
    var var_1 = func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, ~_wgslsmith_add_u32(u_input.c, u_input.b)), reverseBits(vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.c), u_input.a)))), u_input.b).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-33782i, var_0.x, abs(17209i), -(~_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(41989u, 2u)], var_1.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.x + 350f))) * _wgslsmith_div_f32(739f, -727f)), var_1.b.x), -(var_1.e.x << (u_input.a.x % 32u)));
}

