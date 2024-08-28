struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(4294967295u, 29454u, 0u, 4294967295u), 1i, 1i), Struct_1(vec4<u32>(34199u, 21895u, 73184u, 4294967295u), -1741i, 27812i), Struct_1(vec4<u32>(0u, 19753u, 0u, 1u), 17559i, -74513i), Struct_1(vec4<u32>(24771u, 4294967295u, 55241u, 4294967295u), 52709i, -1i), Struct_1(vec4<u32>(46758u, 0u, 4294967295u, 1u), 2147483647i, -5668i), Struct_1(vec4<u32>(55567u, 16107u, 2284u, 12186u), 1i, 4445i), Struct_1(vec4<u32>(106367u, 7228u, 0u, 1880u), i32(-2147483648), 2481i), Struct_1(vec4<u32>(34829u, 96377u, 74361u, 63816u), 28885i, 6099i), Struct_1(vec4<u32>(21203u, 4294967295u, 4294967295u, 134302u), -1i, 1i), Struct_1(vec4<u32>(17408u, 0u, 59971u, 56173u), 1i, -38058i), Struct_1(vec4<u32>(2702u, 1u, 32871u, 8500u), 23298i, 335i), Struct_1(vec4<u32>(30877u, 4294967295u, 1u, 0u), 1i, 35201i), Struct_1(vec4<u32>(0u, 89204u, 4294967295u, 0u), 6446i, 27972i), Struct_1(vec4<u32>(11172u, 0u, 0u, 3629u), -4838i, 2147483647i), Struct_1(vec4<u32>(56209u, 0u, 46356u, 4294967295u), -51970i, -1i), Struct_1(vec4<u32>(4294967295u, 32939u, 0u, 0u), -457i, -32464i), Struct_1(vec4<u32>(2827u, 4294967295u, 46654u, 0u), 1i, 1i), Struct_1(vec4<u32>(11151u, 7655u, 4294967295u, 39816u), 68164i, 2147483647i), Struct_1(vec4<u32>(48591u, 4294967295u, 11599u, 0u), 88509i, 2147483647i), Struct_1(vec4<u32>(17441u, 4294967295u, 49127u, 1u), 73208i, 23275i), Struct_1(vec4<u32>(0u, 37528u, 31175u, 1u), 1i, 26378i), Struct_1(vec4<u32>(8110u, 0u, 4294967295u, 14306u), -572i, 2147483647i), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 7279u), i32(-2147483648), 0i));

var<private> global1: array<u32, 30>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    global3 = select(false, select(arg_0, arg_0, !(!all(vec4<bool>(true, arg_0, true, true)))), true);
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    var var_0 = Struct_1(~(~(~(vec4<u32>(23963u, 57175u, 18589u, u_input.a) | vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 273u)))), 15627i >> (~min(min(61453u, 18833u), ~arg_1.x) % 32u), u_input.b);
    let var_1 = abs(-_wgslsmith_div_vec3_i32(firstTrailingBit(select(vec3<i32>(26665i, u_input.b, var_0.b), vec3<i32>(-1i, var_0.b, -1i), vec3<bool>(arg_0, arg_0, true))), ~reverseBits(vec3<i32>(u_input.b, 1i, var_0.b))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(288f - _wgslsmith_f_op_f32(trunc(226f))), -718f)) + _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-212f * arg_2))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(998f, _wgslsmith_f_op_f32(floor(1524f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f * 750f) - -683f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(all(vec2<bool>(true, arg_1)), vec3<u32>(arg_3.a.x, arg_2.x, 1u) & vec3<u32>(u_input.d.x, 4294967295u, 39157u), -325f)))), 1065f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1198f - _wgslsmith_div_f32(-649f, -825f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1220f)) - 730f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1319f, 115f, 932f, 772f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(559f, -1967f)), -784f, 955f, 936f)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -125f)) * var_0.x), _wgslsmith_f_op_f32(567f * _wgslsmith_f_op_f32(trunc(var_0.x))));
    global0 = array<Struct_1, 23>();
    var var_2 = arg_3;
    global0 = array<Struct_1, 23>();
    return vec4<i32>(~(~u_input.b), _wgslsmith_clamp_i32(48523i, _wgslsmith_clamp_i32(-1i, (-1i << (global1[_wgslsmith_index_u32(4294967295u, 30u)] % 32u)) | _wgslsmith_div_i32(0i, 1i), -1i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-36012i, arg_3.c), select(vec2<i32>(1i, var_2.c), vec2<i32>(1i, var_2.c), vec2<bool>(arg_1, false))), vec2<i32>(arg_3.b, -2147483647i) & max(vec2<i32>(-31689i, 0i), vec2<i32>(var_2.c, 2147483647i)))), -15287i, arg_3.c);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_add_i32(-(~(-u_input.b >> (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], global1[_wgslsmith_index_u32(1u, 30u)]) % 32u))), -_wgslsmith_dot_vec4_i32(select(func_2(global2[_wgslsmith_index_u32(0u, 8u)], false, u_input.d, global0[_wgslsmith_index_u32(8351u, 23u)]), ~vec4<i32>(u_input.b, -42727i, u_input.b, u_input.b), vec4<bool>(true, true, true, true)), vec4<i32>(1i >> (1u % 32u), u_input.b ^ -19571i, u_input.b, _wgslsmith_mult_i32(u_input.b, 1i))));
    global2 = array<Struct_1, 8>();
    var var_1 = reverseBits(-2147483647i);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1426f * 244f) * _wgslsmith_f_op_f32(sign(2504f)))) * -170f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1594f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1212f, -1726f)) * _wgslsmith_f_op_f32(615f - -584f))), 266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(290f, -682f)) + _wgslsmith_f_op_f32(min(-1000f, 681f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f + _wgslsmith_div_f32(-276f, -1237f))))));
    let var_3 = var_2.yy;
    return 1u;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.zwz, vec3<u32>(u_input.c.x, arg_0, 4294967295u), arg_3.a.wxw) >> (~vec3<u32>(1797u, arg_3.a.x, 4294967295u) % vec3<u32>(32u)), vec3<u32>(2821u ^ u_input.d.x, arg_3.a.x, 1u)) >> (_wgslsmith_clamp_vec3_u32(arg_3.a.zxw, vec3<u32>(func_1(), min(u_input.e.x, 1590u), global1[_wgslsmith_index_u32(arg_1.x, 30u)] | 19913u), ~(~vec3<u32>(4399u, arg_2.a.x, 4294967295u))) % vec3<u32>(32u)));
    let var_1 = ~arg_2.a;
    global3 = true & any(vec3<bool>(all(vec3<bool>(false, true, false)) && select(true, true, false), true, true));
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(arg_3.c, -arg_3.b), vec2<i32>(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -22474i), vec2<i32>(u_input.b, arg_2.b)) >> (var_1.x % 32u), arg_2.b, 1i)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(min(vec2<i32>(arg_2.c, 2147483647i) << (vec2<u32>(101503u, arg_2.a.x) % vec2<u32>(32u)), max(vec2<i32>(-36350i, arg_3.b), vec2<i32>(u_input.b, -2147483647i))), ~vec2<i32>(arg_2.b, u_input.b)), vec2<i32>(select(arg_2.c, 41576i, false), u_input.b) | abs(vec2<i32>(u_input.b, 2147483647i))));
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(~var_1, ~min(arg_1, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 30u)], 0u, arg_1.x)), arg_3.a), arg_2.c, 2147483647i);
    return global0[_wgslsmith_index_u32(func_1() << (countOneBits(arg_0) % 32u), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~61020u, ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 30u)], 60381u, 4294967295u)), vec4<u32>(28527u, u_input.a, 68259u, global1[_wgslsmith_index_u32(102594u, 30u)])), ~(u_input.d << (u_input.d % vec4<u32>(32u)))), Struct_1(reverseBits(vec4<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(17756u, 30u)], u_input.e.x), func_1(), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(27113u, 30u)], 61575u), 51253u)), u_input.b >> (~18985u % 32u), _wgslsmith_clamp_i32(0i, u_input.b, -71025i)), global0[_wgslsmith_index_u32(abs(3160u), 23u)]);
    let var_1 = vec3<i32>(u_input.b, countOneBits(1i), var_0.c);
    var var_2 = -15289i;
    let var_3 = Struct_1(countOneBits(vec4<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(43397u, 30u)]), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 30u)], 30u)]), ~4294967295u, _wgslsmith_dot_vec4_u32(u_input.d, var_0.a))) << (var_0.a % vec4<u32>(32u)), ~(-2147483647i), u_input.b);
    var var_4 = _wgslsmith_add_u32(func_1(), global1[_wgslsmith_index_u32(1u, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(~1u, var_0.a.x, 42212u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_3.a, vec4<u32>(12768u, 1u, 1u, 0u)), 30u)]) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 9350u, 14320u, 46673u), ~var_0.a) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-178f, _wgslsmith_f_op_f32(f32(-1f) * -1852f), -266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1216f)))))), 497f);
}

