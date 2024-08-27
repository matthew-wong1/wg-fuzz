struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(1i, -1i, -7263i, 0i, 1i, i32(-2147483648), -1i, -1i, 2147483647i, -22769i, -18793i, 21322i, 0i, i32(-2147483648), 0i, -95600i, 0i, -1i, 7427i, 0i, 34497i, 0i, 0i, 0i, 0i, 0i, 39561i);

var<private> global1: array<bool, 28>;

var<private> global2: Struct_5;

var<private> global3: Struct_5;

var<private> global4: Struct_5 = Struct_5(vec3<bool>(false, true, true), 2147483647i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> vec3<bool> {
    global3 = arg_0;
    var var_0 = vec4<u32>(min(52114u, abs(~_wgslsmith_clamp_u32(4294967295u, 66148u, 4294967295u))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1, u_input.d, 273u), vec4<u32>(arg_1, arg_1, 1131u, 84480u)), _wgslsmith_sub_u32(52729u, select(36023u, 32928u, global2.a.x))) & (~5305u ^ u_input.d), ~22519u, u_input.b & 0u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), Struct_2(global3.a.zz), Struct_2(!(!(!vec2<bool>(global4.a.x, global3.a.x)))), _wgslsmith_mult_vec2_i32(select(u_input.c.xx, ~vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 27u)]), !global3.a.xy), -firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global4.b, global3.b), vec2<i32>(global2.b, -2147483647i)))));
    let var_2 = Struct_5(!select(arg_0.a, !(!vec3<bool>(true, global3.a.x, global2.a.x)), !(!var_1.c.a.x)), u_input.a.x);
    var_0 = select(~vec4<u32>(~firstTrailingBit(u_input.b), 1u, u_input.d, ~(~21870u)), vec4<u32>(var_0.x, select(firstTrailingBit(19690u), ~max(4294967295u, arg_1), global1[_wgslsmith_index_u32(u_input.b, 28u)]), _wgslsmith_sub_u32(~countOneBits(33266u), firstLeadingBit(4294967295u)), 1u), global2.a.x);
    return vec3<bool>(global2.a.x, global2.a.x, var_2.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<f32> {
    global0 = array<i32, 27>();
    var var_0 = Struct_5(!func_3(Struct_5(select(vec3<bool>(arg_2.b.x, global3.a.x, global4.a.x), global4.a, global1[_wgslsmith_index_u32(45555u, 28u)]), _wgslsmith_dot_vec3_i32(arg_2.d.xxy, arg_2.d.zwy)), countOneBits(1u)), _wgslsmith_clamp_i32(-(~u_input.a.x) & ~(-2147483647i), -_wgslsmith_dot_vec4_i32(arg_2.d, u_input.c & vec4<i32>(global2.b, global4.b, arg_1.d.x, 2147483647i)), ~reverseBits(arg_2.a.x)));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, -896f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a.x, arg_1.a.x), vec2<f32>(arg_1.a.x, arg_1.a.x))) * vec2<f32>(696f, -2272f)))), arg_0.c, arg_1.c, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(44006i, 11675i), arg_0.d, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_0.d.x), vec2<i32>(arg_1.d.x, 0i), arg_0.d))), Struct_3(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1697f)))), Struct_2(arg_2.b.zx), Struct_2(arg_0.c.a), ~vec2<i32>(-global0[_wgslsmith_index_u32(u_input.b, 27u)], arg_2.d.x)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x - 315f), 994f), arg_0.b, arg_0.c, vec2<i32>(~(-var_0.b), -25742i)));
    let var_2 = _wgslsmith_mult_vec3_i32(abs(abs(_wgslsmith_mod_vec3_i32(u_input.c.wzy, vec3<i32>(1i, u_input.a.x, -16935i)) >> (vec3<u32>(0u, u_input.d, arg_3.x) % vec3<u32>(32u)))), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(abs(global0[_wgslsmith_index_u32(36263u, 27u)]), firstTrailingBit(62013i), 1i), vec3<i32>(-11422i, arg_2.a.x ^ global2.b, arg_1.d.x))));
    var_0 = Struct_5(!arg_2.b, 59242i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e, -182f)));
}

fn func_4(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = ~vec4<i32>(firstLeadingBit(-17640i), -7993i, global4.b, -reverseBits(2147483647i)) & reverseBits(vec4<i32>(~(32812i << (u_input.b % 32u)), global2.b, -6624i << (~u_input.b % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zz))));
    let var_1 = Struct_2(func_3(Struct_5(select(vec3<bool>(true, true, true), select(vec3<bool>(global3.a.x, true, global1[_wgslsmith_index_u32(u_input.b, 28u)]), global4.a, vec3<bool>(global2.a.x, global3.a.x, false)), vec3<bool>(false, false, true)), _wgslsmith_mult_i32(~16087i, firstLeadingBit(1i))), ~u_input.d).zz);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-162f, -670f))))), Struct_2(!(!(!global3.a.yx))), Struct_2(!global4.a.yz), _wgslsmith_clamp_vec2_i32(u_input.a.zz, var_0.wy, -(min(vec2<i32>(var_0.x, u_input.c.x), vec2<i32>(2147483647i, var_0.x)) & vec2<i32>(-5961i, 13891i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - var_2.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(753f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2628f - arg_0.x) + _wgslsmith_f_op_f32(-774f * arg_0.x)))));
    global4 = Struct_5(select(global4.a, !global3.a, any(vec4<bool>(any(global4.a), any(global3.a.zy), !global4.a.x, any(global3.a.zx)))), u_input.a.x);
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0)) - vec2<f32>(_wgslsmith_f_op_f32(-865f + arg_0.x), -1000f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, -1000f))))), Struct_2(vec2<bool>(true, _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x) != _wgslsmith_div_f32(arg_0.x, -462f))), var_2.b, ~_wgslsmith_div_vec2_i32(var_0.wx ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-4992i, var_0.x), vec2<i32>(global4.b, 5012i)), ~var_0.ww >> (_wgslsmith_add_vec2_u32(vec2<u32>(55842u, u_input.d), vec2<u32>(15346u, u_input.b)) % vec2<u32>(32u))));
}

fn func_1(arg_0: bool) -> f32 {
    global3 = Struct_5(global3.a, ~1i);
    var var_0 = Struct_4(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec2<f32>(-347f, 1063f), Struct_2(global2.a.yx), Struct_2(global3.a.yz), vec2<i32>(u_input.a.x, -19532i)), Struct_3(vec2<f32>(147f, 1372f), Struct_2(vec2<bool>(false, global3.a.x)), Struct_2(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 28u)])), u_input.a.xx), Struct_1(u_input.c.xx, global2.a, vec3<f32>(1547f, -178f, -440f), u_input.c, -1459f), vec3<u32>(u_input.d, 1u, 0u)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(2036f, 789f) * vec2<f32>(361f, 448f)))))), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(271f, -1067f) * vec2<f32>(_wgslsmith_f_op_f32(2555f + 893f), -178f)), Struct_2(vec2<bool>(false, global4.a.x)), func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1117f, -763f))))).c, abs(max(u_input.c.zx, u_input.a.yy))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -250f)), vec2<f32>(-974f, -1492f), u_input.a.x > -1i))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2494f, -413f)))).c, Struct_2(global3.a.xz), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.b, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(33248i, global3.b), u_input.c.xz)))));
    let var_1 = !(!select(!global2.a.yz, !(!global2.a.xy), false));
    let var_2 = -887f;
    global4 = Struct_5(select(select(func_3(Struct_5(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 28u)], var_0.b.c.a.x), 20577i), ~4216u), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 27u)] <= global4.b, true), global4.a), global3.a, arg_0), -1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1145f, _wgslsmith_f_op_f32(floor(var_0.b.a.x))) - _wgslsmith_f_op_f32(380f - _wgslsmith_f_op_f32(-var_0.a.a.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(var_2, -1000f, arg_0))))));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>) -> Struct_2 {
    global4 = Struct_5(global3.a, u_input.c.x);
    var var_0 = Struct_2(vec2<bool>(all(select(vec4<bool>(true, global2.a.x, global2.a.x, global1[_wgslsmith_index_u32(u_input.b, 28u)]), !vec4<bool>(true, global3.a.x, true, true), vec4<bool>(global4.a.x, global4.a.x, true, true))), !func_4(arg_1.zw).b.a.x));
    let var_1 = countOneBits(select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b | u_input.d, 27u)] << (1478u % 32u), -4969i), u_input.a.zz, true));
    global3 = Struct_5(select(global2.a, select(func_3(Struct_5(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], global4.a.x, arg_0), -1i), u_input.b), global2.a, global2.a), any(func_3(Struct_5(global3.a, -13885i), _wgslsmith_mod_u32(u_input.d, 36539u)))), -(abs(1i) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d, 1u), vec4<u32>(93169u, 30693u, u_input.b, 4294967295u)) & select(u_input.d, 4294967295u, false)) % 32u)));
    var var_2 = global2.b;
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(func_4(_wgslsmith_f_op_vec2_f32(arg_1.ww + vec2<f32>(arg_1.x, arg_1.x))), Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, 140f))), Struct_2(global2.a.xz), Struct_2(var_0.a), max(var_1, u_input.c.xz)), Struct_1(var_1, global3.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-542f, arg_1.x, -701f) + vec3<f32>(arg_1.x, -606f, arg_1.x)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], 2147483647i, 10040i, u_input.a.x), _wgslsmith_f_op_f32(ceil(arg_1.x))), select(~vec3<u32>(u_input.d, 24794u, u_input.b), vec3<u32>(u_input.b, 1u, 13823u), global3.a))))).c;
}

fn func_6(arg_0: Struct_2) -> Struct_5 {
    global2 = Struct_5(!global2.a, _wgslsmith_mod_i32(-1i, min(~(u_input.a.x >> (4294967295u % 32u)), global3.b)));
    var var_0 = Struct_5(vec3<bool>(any(select(vec3<bool>(false, false, false), !global3.a, !global4.a)), true, false), min(40112i, ~global4.b));
    global0 = array<i32, 27>();
    var var_1 = vec4<u32>(abs(~(~firstLeadingBit(u_input.d))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~44302u, u_input.d), 117085u) | 33284u, u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(81888u, ~64530u, 83773u), vec3<u32>(abs(~u_input.b), ~(u_input.d | u_input.b), u_input.b)));
    global1 = array<bool, 28>();
    return Struct_5(var_0.a, _wgslsmith_add_i32(var_0.b, ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_6(func_5(all(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], false, true))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(388f))), -614f, -1305f)));
    global3 = Struct_5(vec3<bool>(select(false, true, false), true, func_6(Struct_2(!global3.a.xz)).a.x), -global0[_wgslsmith_index_u32(1u, 27u)]);
    global1 = array<bool, 28>();
    global2 = func_6(Struct_2(!(!(!global2.a.xx))));
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(func_2(func_4(vec2<f32>(690f, 273f)), Struct_3(vec2<f32>(1419f, -642f), Struct_2(global4.a.yz), Struct_2(vec2<bool>(true, true)), vec2<i32>(global4.b, global3.b)), Struct_1(u_input.c.xw, global2.a, vec3<f32>(-114f, 1000f, -188f), u_input.c, -1061f), vec3<u32>(u_input.d, 38100u, 0u) & vec3<u32>(u_input.d, 4294967295u, u_input.d))))), func_5(global2.a.x == ((u_input.b << (u_input.d % 32u)) == (u_input.d >> (1842u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -134f), -1115f, !global3.a.x)), 484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1188f)) + _wgslsmith_f_op_f32(sign(-774f))), _wgslsmith_f_op_f32(1973f - _wgslsmith_f_op_f32(-212f * 843f)))), Struct_2(func_5(true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(288f, 183f, 1620f, 1120f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(436f, 129f, -666f, 829f), vec4<f32>(399f, 1000f, -1616f, 675f))))).a), abs(u_input.c.zw) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, ~u_input.b), firstTrailingBit(vec2<u32>(u_input.b, 65847u))) % vec2<u32>(32u)));
    let var_1 = func_6(Struct_2(func_3(Struct_5(func_3(Struct_5(global4.a, global0[_wgslsmith_index_u32(4294967295u, 27u)]), u_input.b), ~global0[_wgslsmith_index_u32(57221u, 27u)]), select(33278u, u_input.d, false)).yy));
    global1 = array<bool, 28>();
    global4 = Struct_5(!vec3<bool>(!(145f > var_0.a.x), var_1.a.x, any(select(vec3<bool>(global4.a.x, var_1.a.x, false), global4.a, vec3<bool>(false, true, global2.a.x)))), firstLeadingBit(~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(var_0.a.x - 1000f))))), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))));
}

