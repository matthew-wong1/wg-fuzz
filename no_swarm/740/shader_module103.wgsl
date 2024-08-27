struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, vec2<i32>(2147483647i, i32(-2147483648)), 39389i, Struct_1(vec4<f32>(1305f, -932f, -2254f, 970f), 33324i, 0i, vec2<i32>(-50636i, -52857i)));

var<private> global1: array<Struct_1, 6>;

var<private> global2: vec2<bool>;

var<private> global3: array<i32, 5> = array<i32, 5>(-2801i, -18863i, -31937i, -3367i, -1i);

var<private> global4: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(false, vec2<i32>(-14441i, 30494i), 2147483647i, Struct_1(vec4<f32>(695f, -897f, 614f, 1000f), -64175i, 0i, vec2<i32>(1i, 1i))), Struct_3(false, vec2<i32>(0i, i32(-2147483648)), 17559i, Struct_1(vec4<f32>(-895f, 613f, 527f, -1063f), 1767i, -24741i, vec2<i32>(-22116i, -6088i))), Struct_3(true, vec2<i32>(-1i, -1i), 0i, Struct_1(vec4<f32>(-612f, 1000f, -480f, 391f), 2147483647i, -1i, vec2<i32>(6908i, -45006i))), Struct_3(true, vec2<i32>(30105i, -8045i), 0i, Struct_1(vec4<f32>(2064f, 810f, 1000f, -1055f), 0i, 48622i, vec2<i32>(1i, -27877i))), Struct_3(true, vec2<i32>(1i, 1i), i32(-2147483648), Struct_1(vec4<f32>(-109f, -2159f, 117f, 1380f), -12003i, -5514i, vec2<i32>(i32(-2147483648), -35996i))), Struct_3(false, vec2<i32>(-1i, 50832i), -36867i, Struct_1(vec4<f32>(-376f, -1031f, -1714f, -641f), i32(-2147483648), -32534i, vec2<i32>(-20901i, 2147483647i))), Struct_3(true, vec2<i32>(15657i, 0i), 1191i, Struct_1(vec4<f32>(782f, 613f, 714f, 1000f), -21219i, 2147483647i, vec2<i32>(20617i, 2147483647i))), Struct_3(false, vec2<i32>(10593i, -29097i), 5407i, Struct_1(vec4<f32>(-1099f, -1258f, 145f, -862f), 2147483647i, -67536i, vec2<i32>(-29815i, 1i))), Struct_3(false, vec2<i32>(i32(-2147483648), i32(-2147483648)), -1i, Struct_1(vec4<f32>(-162f, -946f, -511f, 1000f), 197i, -8651i, vec2<i32>(2147483647i, 35401i))), Struct_3(true, vec2<i32>(0i, 2147483647i), 12078i, Struct_1(vec4<f32>(-1000f, 1206f, -861f, -1563f), 28197i, i32(-2147483648), vec2<i32>(-60185i, 11265i))), Struct_3(false, vec2<i32>(i32(-2147483648), i32(-2147483648)), -977i, Struct_1(vec4<f32>(-422f, -1232f, -316f, -1304f), i32(-2147483648), 8343i, vec2<i32>(5543i, 28658i))), Struct_3(true, vec2<i32>(-1i, i32(-2147483648)), 10590i, Struct_1(vec4<f32>(-225f, -924f, 382f, -1247f), -20016i, 0i, vec2<i32>(1828i, -1i))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global0.d.a), -(~(-47779i)), -55814i, firstLeadingBit(global0.d.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -543f)))), _wgslsmith_div_vec2_i32(vec2<i32>(-8059i, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(27805u, 5u)], 2147483647i)) & u_input.a, countOneBits(abs(global0.b))), vec2<u32>(42600u, ~775u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(208f)), global0.d.a.x, global0.d.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -2510f)), -325f)));
    let var_3 = var_1.a.a.wy;
    var var_4 = Struct_2(var_1.a, global0.d.a.x, vec2<i32>(global0.c, global0.c | (var_1.c.x >> ((0u << (var_1.d.x % 32u)) % 32u))), select(abs(countOneBits(vec2<u32>(var_1.d.x, var_1.d.x) & var_1.d)), vec2<u32>(var_1.d.x, 16757u), true));
    return global1[_wgslsmith_index_u32(select(4294967295u, ~((var_4.d.x | var_1.d.x) ^ 1u) ^ ~1u, global0.a), 6u)];
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(1u, 1u)), 6u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) + _wgslsmith_f_op_f32(-arg_1.a.x)))), arg_1.d, firstLeadingBit(~(~vec2<u32>(1u, 32985u))));
    var var_1 = var_0;
    var var_2 = ~abs(vec3<u32>(_wgslsmith_mult_u32(var_0.d.x, 4294967295u) & 0u, _wgslsmith_div_u32(firstTrailingBit(var_1.d.x), var_1.d.x), 1u));
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(abs(select(var_1.c.x, 0i << (0u % 32u), false)), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(var_1.c, var_1.c)), -vec2<i32>(var_1.a.d.x, arg_1.b))), reverseBits(select(-vec2<i32>(71442i, global3[_wgslsmith_index_u32(var_0.d.x, 5u)]), ~vec2<i32>(global3[_wgslsmith_index_u32(var_1.d.x, 5u)], var_0.a.d.x), !vec2<bool>(false, global0.a)) << (~(~var_1.d) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.a.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1645f, -547f, -441f, arg_1.a.x) + vec4<f32>(468f, 704f, global0.d.a.x, -1156f)))))));
    return ~var_2.yz;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_3 {
    global2 = select(vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(true, global2.x, false, global2.x)) && !global0.a, !select(global2.x, global2.x & global0.a, all(vec2<bool>(global0.a, true)))), false);
    var var_0 = vec3<i32>(u_input.a.x, 14955i << (_wgslsmith_div_u32(~arg_0, ~2257u) % 32u), i32(-1i) * -18023i);
    let var_1 = arg_1.x >> (0u % 32u);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global0.d.a - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d.a.x, global0.d.a.x, global0.d.a.x, global0.d.a.x)))), var_1 & u_input.a.x, u_input.a.x, vec2<i32>(_wgslsmith_dot_vec2_i32(max(arg_1, vec2<i32>(-15789i, 2147483647i)), global0.b), -11255i)), -1013f, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-1i, u_input.a.x), _wgslsmith_div_i32(1i, 29191i)), vec2<i32>(15738i, var_1) | var_0.yy), -_wgslsmith_sub_i32(2113i, -u_input.a.x)), abs(_wgslsmith_mult_vec2_u32(func_3(reverseBits(vec2<i32>(arg_1.x, global0.d.d.x)), func_2()), vec2<u32>(0u, 0u << (0u % 32u)))));
    var var_3 = global4[_wgslsmith_index_u32(abs(1u), 12u)];
    return Struct_3(var_3.a, var_0.xx, global3[_wgslsmith_index_u32(0u, 5u)], var_2.a);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> vec2<bool> {
    global4 = array<Struct_3, 12>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(808f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-928f, arg_1)))))) - global0.d.a.x);
    var_0 = arg_1;
    let var_1 = global2.x;
    var var_2 = !select(!(!(!vec4<bool>(global2.x, arg_2.a, false, true))), !select(select(vec4<bool>(global2.x, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, global2.x, arg_2.a, global0.a)), select(vec4<bool>(true, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(global0.a, false, true, global2.x), vec4<bool>(false, false, global0.a, global0.a)), !global2.x), select(vec4<bool>(arg_0 > -2147483647i, true, false, arg_2.a), vec4<bool>(true, true, false, global2.x), select(select(vec4<bool>(global2.x, true, global0.a, false), vec4<bool>(false, true, true, false), arg_2.a), !vec4<bool>(global0.a, false, global2.x, arg_2.a), !vec4<bool>(global0.a, global0.a, false, false))));
    return select(var_2.zw, vec2<bool>(all(select(vec2<bool>(arg_2.a, arg_2.a), select(vec2<bool>(global2.x, false), var_2.xx, vec2<bool>(arg_2.a, false)), func_1(31659u, vec2<i32>(arg_2.b.x, 1i)).a)), var_2.x), !vec2<bool>(!any(vec4<bool>(var_2.x, var_2.x, false, global2.x)), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 58029u;
    global2 = select(func_4(abs(global3[_wgslsmith_index_u32(~50661u, 5u)]), _wgslsmith_f_op_f32(229f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.a.x + -1398f))), func_1(~0u << (_wgslsmith_div_u32(0u, 1u) % 32u), ~vec2<i32>(2147483647i, 31408i) ^ u_input.a)), vec2<bool>(any(vec2<bool>(true, true)), global0.a), global2.x);
    var var_1 = ~(_wgslsmith_dot_vec4_i32(vec4<i32>(929i, 2147483647i, max(global3[_wgslsmith_index_u32(0u, 5u)], 2147483647i), -52661i), reverseBits(countOneBits(vec4<i32>(-36644i, u_input.a.x, 46049i, -1i)))) >> (_wgslsmith_add_u32(countOneBits(24708u), 1u) % 32u));
    global2 = !select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, !(!global0.a)), !select(vec2<bool>(false, global0.a), !vec2<bool>(global0.a, global0.a), global2.x));
    let var_2 = _wgslsmith_mult_u32(func_3(vec2<i32>(-1i) * -vec2<i32>(-20974i, 2147483647i), Struct_1(global0.d.a, min(0i, global0.b.x) & ~(-15589i), global3[_wgslsmith_index_u32(countOneBits(select(12180u, 4294967295u, true)), 5u)], func_1(~31034u, vec2<i32>(global3[_wgslsmith_index_u32(9031u, 5u)], -39681i)).d.d)).x, ~(1u >> (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, 1u, var_2, var_2), vec4<u32>(var_2, 1u, var_2, var_2), vec4<u32>(4294967295u, 22431u, 26686u, var_2)), ~vec4<u32>(var_2, var_2, 8525u, 66740u), vec4<u32>(var_2, 37091u, 4294967295u, 0u)), reverseBits(vec4<u32>(var_2, 37976u, var_2, 62268u) & vec4<u32>(var_2, var_2, var_2, var_2))), 0u), firstLeadingBit(abs(var_2)), firstLeadingBit(_wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, 1u, 55148u, var_2), vec4<u32>(1u, var_2, 45391u, var_2), vec4<u32>(23710u, 31130u, var_2, var_2)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 58007u, 1u, 1u), vec4<u32>(4294967295u, 1u, 0u, var_2)), global2.x), min(reverseBits(vec4<u32>(var_2, var_2, 52106u, 76333u)), vec4<u32>(1u, var_2, 1u, 92134u)))), -max(vec4<i32>(global3[_wgslsmith_index_u32(var_2, 5u)], -2147483647i, 2147483647i, global3[_wgslsmith_index_u32(var_2, 5u)]) | select(vec4<i32>(-22303i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(global3[_wgslsmith_index_u32(0u, 5u)], u_input.a.x, global3[_wgslsmith_index_u32(24496u, 5u)], -1i), global0.a), vec4<i32>(0i, -2147483647i, -global3[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(708u, 5u)], 0i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global0.d.a.x)), global0.d.a.x, -366f, 414f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a.x) - -1081f), _wgslsmith_f_op_f32(-global0.d.a.x), _wgslsmith_f_op_f32(-1147f - global0.d.a.x), -1610f)));
}

