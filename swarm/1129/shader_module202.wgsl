struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-180f, 957f), -468f), vec2<i32>(39963i, i32(-2147483648)), true, Struct_1(vec2<f32>(173f, -1000f), -2234f));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(-777f, 400f), 491f), vec2<i32>(-28308i, -23914i), false, Struct_1(vec2<f32>(-673f, 208f), -275f));

var<private> global2: array<u32, 28>;

var<private> global3: array<f32, 3> = array<f32, 3>(-1000f, 580f, 628f);

var<private> global4: array<i32, 30> = array<i32, 30>(-98i, 1i, 0i, -29282i, 51322i, 0i, 1i, 1i, 2147483647i, -22875i, -1i, -1i, 21007i, -23256i, 7917i, -59859i, -1i, -1i, 1i, i32(-2147483648), 0i, 2147483647i, 2147483647i, -53729i, -1i, -758i, 69079i, -72639i, 1i, i32(-2147483648));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    let var_0 = -_wgslsmith_add_vec3_i32(vec3<i32>(0i ^ max(u_input.a, global1.b.x), -firstLeadingBit(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25825u, 28u)], 30u)]), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.b.x, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 30u)]), vec3<i32>(42345i, arg_3, global1.b.x)), _wgslsmith_mult_i32(-20866i, 1i))), select(firstTrailingBit(-vec3<i32>(u_input.c, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57796u, 28u)], 28u)], 30u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92922u, 28u)], 28u)], 28u)], 28u)], 30u)])), -vec3<i32>(u_input.c, global0.b.x, global0.b.x) ^ firstLeadingBit(vec3<i32>(u_input.b, -1i, global0.b.x)), select(vec3<bool>(global0.c, false, false), select(arg_2.yzy, vec3<bool>(global1.c, arg_0.x, true), vec3<bool>(false, arg_2.x, arg_2.x)), select(vec3<bool>(global1.c, true, false), arg_2.xyw, vec3<bool>(false, arg_2.x, arg_2.x)))));
    var var_1 = !vec2<bool>(true, !(!(!global0.c)));
    global4 = array<i32, 30>();
    var var_2 = 1i;
    global4 = array<i32, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) + _wgslsmith_f_op_f32(-248f - global0.d.b)) + -599f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-954f)), _wgslsmith_f_op_f32(-1839f * -196f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1410f + 1287f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = any(vec2<bool>(false, any(!vec3<bool>(true, global0.c, false)))) & global1.c;
    let var_1 = global0.b.x;
    var var_2 = arg_2;
    var var_3 = Struct_3(Struct_1(arg_2.a.a, 641f), Struct_2(Struct_1(vec2<f32>(-235f, _wgslsmith_f_op_f32(var_2.a.b * arg_1.x)), _wgslsmith_f_op_f32(-435f + _wgslsmith_f_op_f32(func_3(vec2<bool>(false, var_0), 1000f, vec4<bool>(false, false, true, var_2.c), arg_2.b.x)))), ~global1.b, global0.c && any(!vec2<bool>(global0.c, arg_2.c)), Struct_1(vec2<f32>(_wgslsmith_div_f32(783f, -1587f), _wgslsmith_f_op_f32(trunc(arg_1.x))), arg_2.a.b)), arg_1, arg_2.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(var_3.c.xx)))), _wgslsmith_div_f32(var_2.d.a.x, 1000f));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(938f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~4294967295u, 3u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2740f, global1.d.b))))));
    let var_1 = Struct_3(func_2(select(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20845u, 28u)], 28u)], 26760u, 10788u), vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12334u, 28u)], 28u)], 28u)], 0u), true) << (vec3<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12226u, 28u)], 28u)], 78934u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], global2[_wgslsmith_index_u32(1u, 28u)])) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1229f, -2922f, global3[_wgslsmith_index_u32(4294967295u, 3u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -340f, arg_0.a.a.x) + vec3<f32>(375f, 928f, global0.a.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(-480f + 167f), _wgslsmith_f_op_f32(f32(-1f) * -966f), arg_0.a.a.x)), arg_0), Struct_2(global1.d, vec2<i32>(1i, global1.b.x) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 35652u), vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(71114u, 28u)], 28u)])) | ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24140u, 28u)], 28u)], 28u)], 28u)], 40411u)) % vec2<u32>(32u)), true, func_2(select(vec3<u32>(36679u, 13346u, global2[_wgslsmith_index_u32(4294967295u, 28u)]) ^ vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 0u, global2[_wgslsmith_index_u32(0u, 28u)]), vec3<u32>(global2[_wgslsmith_index_u32(15977u, 28u)], global2[_wgslsmith_index_u32(61277u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)]), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, arg_0.d.a.x, 1931f)), Struct_2(Struct_1(vec2<f32>(1000f, 1243f), global1.d.b), global1.b, true, func_2(vec3<u32>(52530u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 59045u), vec3<f32>(arg_0.a.a.x, -1298f, var_0), arg_0)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1758f, 347f, global0.c)))), _wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-678f * global1.d.a.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_0), -1000f, var_0), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.a.x, -286f, global0.a.b), vec3<f32>(-1000f, 2286f, 1018f), false))))))), global1.d);
    var var_2 = vec3<u32>(min(1u << (1u % 32u), 1519u), ~global2[_wgslsmith_index_u32(max(73549u, global2[_wgslsmith_index_u32(19000u, 28u)]), 28u)] ^ ~(~46878u), _wgslsmith_mod_u32(max(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)] % 32u)), 13462u), _wgslsmith_mult_u32(~reverseBits(1u), global2[_wgslsmith_index_u32(1u, 28u)])));
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, -2147483647i), abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, global1.b.x), global0.b.x))), reverseBits(u_input.c), arg_0.b.x);
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global0 = func_4(Struct_2(global0.d, select(vec2<i32>(1i, arg_0.b.x & global0.b.x), _wgslsmith_clamp_vec2_i32(global1.b | vec2<i32>(global1.b.x, 6199i), global0.b, select(vec2<i32>(arg_0.b.x, u_input.c), arg_0.b, vec2<bool>(arg_0.c, false))), true), true, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.d.a - vec2<f32>(global1.a.b, global0.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)))));
    let var_0 = countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(min(global1.b.x, -2527i), arg_0.b.x, global1.b.x), vec3<i32>(-5050i, -8983i, 95966i)));
    let var_1 = func_2(vec3<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(7852u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]) >> (firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69664u, 28u)], 28u)]) % 32u), firstLeadingBit(~1u), max(global2[_wgslsmith_index_u32(1u, 28u)], countOneBits(global2[_wgslsmith_index_u32(4294967295u, 28u)]))) << ((vec3<u32>(~15457u, 61982u, global2[_wgslsmith_index_u32(1u, 28u)]) | _wgslsmith_mult_vec3_u32(select(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(99120u, 28u)], 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], 4294967295u), vec3<u32>(1u, global2[_wgslsmith_index_u32(8524u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)]), vec3<bool>(global0.c, true, true)), vec3<u32>(9407u, global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)]))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41174u, 28u)], 3u)], global0.d.a.x, -1816f), vec3<f32>(-285f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 3u)], arg_0.a.a.x))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1845f, arg_0.a.a.x, 236f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, 410f, global1.a.a.x))))))), func_4(arg_0));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13922u, 28u)], 28u)], 28u)], 4294967295u), _wgslsmith_add_u32(43496u, 45284u), global0.d.a.x < global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 3u)]), 3u)]) + global1.d.a.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 3u)])))), -924f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1626f))), global1.a.b), !func_4(func_4(Struct_2(Struct_1(var_1.a, global3[_wgslsmith_index_u32(24830u, 3u)]), global0.b, global1.c, Struct_1(global1.d.a, 463f)))).c)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return func_2(~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 5348u)), vec3<u32>(abs(33498u), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81485u, 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], global2[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_clamp_u32(26028u, 0u, 50953u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, -1102f, -511f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_1.b, -1302f) - vec3<f32>(var_1.a.x, var_3, 2039f)))), func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.d.a), -273f), countOneBits(_wgslsmith_clamp_vec2_i32(arg_0.b, vec2<i32>(var_0, global0.b.x), vec2<i32>(0i, 56961i))), false, global1.d)));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = func_5(func_4(Struct_2(func_2(vec3<u32>(9763u, global2[_wgslsmith_index_u32(arg_0.x, 28u)], arg_0.x) >> (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, global3[_wgslsmith_index_u32(4294967295u, 3u)], global1.a.a.x), vec3<f32>(-792f, global3[_wgslsmith_index_u32(0u, 3u)], 474f), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec2<f32>(global0.a.a.x, -152f), global1.d.b), global1.b, global0.c, global1.a)), vec2<i32>(-1i, 1i), all(!vec3<bool>(global0.c, false, global0.c)), Struct_1(_wgslsmith_f_op_vec2_f32(global0.d.a * vec2<f32>(global3[_wgslsmith_index_u32(arg_0.x, 3u)], 381f)), _wgslsmith_f_op_f32(max(-1629f, global3[_wgslsmith_index_u32(13246u, 3u)]))))), 1716f);
    return ~77982u;
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_1 {
    global2 = array<u32, 28>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, (i32(-1i) * -20416i) << (_wgslsmith_mult_u32(0u, 38117u) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-26605i, global0.b.x, -49215i), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, 47798i, global0.b.x), vec3<i32>(7353i, u_input.c, 15961i)))), max(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.b.b.x, 1i, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34598u, 28u)], 30u)], -2147483647i) ^ vec4<i32>(global0.b.x, -72837i, 21819i, 0i), select(vec4<i32>(global1.b.x, 2147483647i, u_input.a, 27498i), vec4<i32>(u_input.c, u_input.c, arg_2.b.b.x, -1i), vec4<bool>(global0.c, arg_2.b.c, arg_2.b.c, global1.c))), ~(~vec4<i32>(global1.b.x, arg_2.b.b.x, 2147483647i, u_input.c)))), -30699i >> (arg_0.x % 32u));
    global2 = array<u32, 28>();
    let var_1 = Struct_1(vec2<f32>(arg_2.b.a.a.x, _wgslsmith_f_op_f32(min(global1.a.b, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(16006u, 3u)])))), func_5(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -325f)).b);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 28>();
    global3 = array<f32, 3>();
    global0 = Struct_2(func_6(vec2<u32>(global2[_wgslsmith_index_u32(max(~1u, ~global2[_wgslsmith_index_u32(4294967295u, 28u)]), 28u)], _wgslsmith_div_u32(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], true), func_1(vec2<u32>(0u, 0u)))), select(!(!vec3<bool>(false, global0.c, false)), vec3<bool>(true, true, true), vec3<bool>(true, global0.c | false, global1.d.b >= 1000f)), Struct_3(Struct_1(vec2<f32>(459f, global1.d.a.x), _wgslsmith_f_op_f32(573f - 1000f)), Struct_2(Struct_1(global0.a.a, global1.d.b), global0.b >> (vec2<u32>(global2[_wgslsmith_index_u32(20957u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]) % vec2<u32>(32u)), false, func_4(Struct_2(global1.d, vec2<i32>(-18111i, 0i), false, Struct_1(vec2<f32>(1000f, 2565f), global0.d.a.x))).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(126855u, 28u)], 28u)], 28u)], 28u)], 3u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88227u, 28u)], 28u)], 3u)], -310f), vec3<f32>(-2052f, global1.d.a.x, 798f))), func_2(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 55907u, global2[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<f32>(-446f, 596f, 867f), func_4(Struct_2(global1.d, vec2<i32>(-18679i, -55591i), global1.c, Struct_1(vec2<f32>(1000f, 936f), 2938f)))))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~global1.b, ~vec2<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60383u, 28u)], 30u)], -10443i)), global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-742f - 105f) + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 3u)], global0.d.b)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1995f, global1.a.a.x))))) > _wgslsmith_f_op_f32(trunc(func_5(func_4(Struct_2(Struct_1(global0.d.a, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 3u)]), vec2<i32>(2147483647i, -2147483647i), false, global0.d)), _wgslsmith_f_op_f32(-global1.a.a.x)).b)), Struct_1(vec2<f32>(-655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2854u, 28u)], 28u)], 28u)], 3u)] + global0.d.a.x) + 1478f))));
    global0 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(global1.a.a, global1.d.a), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 3u)], global1.d.b)), ~(vec2<i32>(_wgslsmith_add_i32(u_input.c, global0.b.x), firstTrailingBit(26024i)) << (firstTrailingBit(max(vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82873u, 28u)], 28u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 1u))) % vec2<u32>(32u))), !(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, 0i), ~u_input.c) == (0i >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(11493u, global2[_wgslsmith_index_u32(9298u, 28u)]), 28u)], 28u)], 28u)] % 32u))), global1.a);
    global3 = array<f32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

