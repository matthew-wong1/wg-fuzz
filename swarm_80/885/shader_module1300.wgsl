struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-1000f, 571f, 1042f), vec3<f32>(-402f, 739f, -412f), vec3<f32>(-1373f, -331f, 1803f), vec3<f32>(-211f, -410f, -1229f), vec3<f32>(343f, -322f, 354f), vec3<f32>(714f, 1426f, 1372f), vec3<f32>(1527f, -567f, -427f), vec3<f32>(-560f, 102f, 271f), vec3<f32>(2055f, -1283f, 1686f), vec3<f32>(-1140f, 165f, -616f), vec3<f32>(-1938f, -590f, -1898f), vec3<f32>(196f, -399f, -102f), vec3<f32>(-1463f, 1000f, -704f), vec3<f32>(-389f, -327f, -865f), vec3<f32>(1199f, 618f, 710f), vec3<f32>(-169f, 196f, 366f), vec3<f32>(1958f, 1109f, 2953f), vec3<f32>(1687f, -740f, 2125f), vec3<f32>(944f, -162f, -1117f), vec3<f32>(500f, 1000f, 1000f), vec3<f32>(1756f, -1509f, -653f), vec3<f32>(218f, 1808f, 873f), vec3<f32>(1357f, 490f, 1917f), vec3<f32>(-1405f, 797f, -736f), vec3<f32>(1000f, -846f, -1166f), vec3<f32>(1411f, -897f, 942f));

var<private> global1: u32 = 69586u;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: f32 = -1538f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = ~_wgslsmith_mult_i32(1i, -46691i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f - _wgslsmith_f_op_f32(1650f + -1950f))) - -398f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-349f - -134f))))));
    var var_2 = 2147483647i;
    var_0 = 26875i;
    global1 = ~max(u_input.a, u_input.a);
    return select(select(vec3<bool>(true, arg_0, true), !(!vec3<bool>(false, global2.x, arg_0)), false), !select(!(!arg_1.wyy), !select(vec3<bool>(false, arg_0, arg_1.x), vec3<bool>(false, true, true), arg_1.wxw), arg_1.yzy), true);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_3) -> i32 {
    global2 = arg_1;
    global1 = _wgslsmith_mod_u32(u_input.a, reverseBits(~reverseBits(35362u)));
    var var_0 = all(!select(vec4<bool>(arg_3.c <= arg_3.c, true, arg_2 & false, false), select(vec4<bool>(arg_3.a.x, global2.x, false, false), select(vec4<bool>(arg_2, arg_2, arg_2, arg_1.x), vec4<bool>(false, arg_2, arg_1.x, arg_1.x), vec4<bool>(arg_3.a.x, true, arg_3.a.x, arg_1.x)), select(vec4<bool>(arg_3.a.x, arg_1.x, arg_3.a.x, false), vec4<bool>(false, true, arg_2, arg_3.a.x), false)), select(vec4<bool>(arg_2, arg_2, false, false), !vec4<bool>(true, false, true, arg_2), false)));
    var var_1 = -(vec2<i32>(abs(arg_3.c), _wgslsmith_add_i32(-12834i, arg_3.c)) << (vec2<u32>(~arg_3.b, arg_3.b) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~firstTrailingBit(arg_0.yz), vec2<u32>(abs(u_input.a), arg_0.x)), ~arg_0.xx) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 26u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(arg_3.b, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], false)) - vec3<f32>(825f, -311f, 142f))))));
    return var_1.x << (_wgslsmith_mod_u32(0u, ~1u) % 32u);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(func_4(_wgslsmith_sub_vec3_u32((vec3<u32>(0u, u_input.a, u_input.a) << (vec3<u32>(0u, u_input.a, 74893u) % vec3<u32>(32u))) & vec3<u32>(u_input.a, u_input.a, 37278u), min(vec3<u32>(1u, u_input.a, 36907u), _wgslsmith_div_vec3_u32(vec3<u32>(12675u, 4294967295u, 58099u), vec3<u32>(u_input.a, u_input.a, u_input.a)))), select(select(!vec3<bool>(false, global2.x, false), select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, true, true), global2.x), global2.x), vec3<bool>(global2.x, all(vec4<bool>(false, true, global2.x, false)), true), vec3<bool>(false, all(vec3<bool>(global2.x, true, true)), true)), true, Struct_3(!func_3(true, vec4<bool>(true, global2.x, true, false)), ~u_input.a, -9141i, u_input.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(743f, 1214f))) * _wgslsmith_div_vec2_f32(vec2<f32>(584f, 379f), vec2<f32>(-1000f, 412f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-151f, -392f) * vec2<f32>(1887f, -619f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(169f, -1509f), vec2<f32>(366f, -287f)))), (u_input.a >= 4294967295u) & select(global2.x, true, global2.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1630f, 1485f))))))))), func_3(false, select(!vec4<bool>(global2.x, global2.x, true, true), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, false, true, true), vec4<bool>(global2.x, false, false, false)), any(vec4<bool>(global2.x, global2.x, global2.x, false))), vec4<bool>(true, false, global2.x, global2.x || global2.x))).yz, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(f32(-1f) * -1947f), true)))))));
    var var_1 = -vec2<i32>(-(~reverseBits(var_0.a)), var_0.a);
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.a, var_1.x) ^ var_1.x, ~_wgslsmith_mult_i32(var_0.a, -19154i)) & ~(-vec2<i32>(var_1.x, var_1.x)), select(abs(select(firstLeadingBit(vec2<i32>(2147483647i, 0i)), ~vec2<i32>(var_0.a, 1i), true)), ~abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_0.a), vec2<i32>(38905i, 9778i))), false), abs(-(~(~vec2<i32>(-1i, 2147483647i)))));
    let var_3 = Struct_2(Struct_1(abs(var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.b.x)), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d))) * 1057f)), Struct_1(select(var_0.a, abs(reverseBits(-2147483647i)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), global2.xz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d - var_0.b.x)))), true);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.b.b.x), 1f, func_3(var_0.c.x, vec4<bool>(var_3.b.c.x, var_0.c.x, var_3.b.c.x, var_0.c.x)).x))) * var_3.a.d) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f - -1391f))))));
    return -926i;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global3 = 432f;
    global1 = ~u_input.a;
    global2 = select(select(!(!(!vec3<bool>(global2.x, false, global2.x))), select(!vec3<bool>(true, arg_0, true), select(vec3<bool>(arg_0, global2.x, true), vec3<bool>(global2.x, false, arg_0), vec3<bool>(arg_0, global2.x, true)), false), true), select(!select(!vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, global2.x, true), !arg_0), vec3<bool>(!global2.x, all(vec4<bool>(arg_0, true, false, global2.x)), global2.x), false), !(!(!arg_0)));
    var var_0 = vec3<i32>(_wgslsmith_add_i32(countOneBits(abs(~1751i)), func_2()), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -8907i, -5733i), ~vec4<i32>(-15179i, 8356i, 2147483647i, 36591i))), abs(_wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-1i, 1i)), min(-1i, func_4(vec3<u32>(9749u, u_input.a, u_input.a), vec3<bool>(false, arg_0, true), global2.x, Struct_3(vec3<bool>(true, true, global2.x), 59688u, 9171i, 4294967295u))))));
    var var_1 = Struct_2(Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1888f, 864f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(869f, -1565f)))), vec2<bool>(arg_0, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(277f + -695f))))), Struct_1(countOneBits(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.x, var_0.x, -48375i), 0i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1170f) - vec2<f32>(670f, -153f))))), !select(!vec2<bool>(global2.x, true), global2.yz, all(vec3<bool>(true, global2.x, global2.x))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(1f, _wgslsmith_div_f32(438f, -1000f)))), !select(true, false, -301f != _wgslsmith_f_op_f32(ceil(609f))));
    return select(func_3(true, !vec4<bool>(true, global2.x, var_1.a.c.x, false)).yx, var_1.a.c, vec2<bool>(any(select(vec2<bool>(false, arg_0), vec2<bool>(false, global2.x), global2.x)) != true, select(_wgslsmith_dot_vec4_u32(vec4<u32>(52223u, u_input.a, u_input.a, 0u), vec4<u32>(0u, u_input.a, 0u, u_input.a)), 112875u, var_1.c) < (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(4294967295u, u_input.a, u_input.a)) << (~1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.a, Struct_1(reverseBits(1i), vec2<f32>(1938f, _wgslsmith_f_op_f32(ceil(1535f))), func_1(global2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1108f)))), countOneBits(select(abs(14249i), min(24733i, -1i), !(!global2.x))), Struct_3(select(vec3<bool>(false, true, true), select(vec3<bool>(global2.x, true, global2.x), func_3(true, vec4<bool>(false, true, global2.x, global2.x)), select(vec3<bool>(true, true, false), vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false))), any(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(false, false, false, global2.x), false))), 864u, _wgslsmith_sub_i32(-1i, 0i), _wgslsmith_add_u32(~max(u_input.a, 31790u), _wgslsmith_div_u32(u_input.a, 35769u))));
    var var_1 = ~_wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(50833u, var_0.a, u_input.a, 0u)) ^ vec4<u32>(20647u, u_input.a, 57535u, 610u), ~vec4<u32>(0u, u_input.a, 1u, u_input.a)), countOneBits(vec4<u32>(var_0.d.d ^ 70614u, 123572u, ~var_0.a, 78374u)));
    global0 = array<vec3<f32>, 26>();
    let var_2 = Struct_4(_wgslsmith_div_u32(max(select(~u_input.a, ~var_0.a, true), 9010u), u_input.a), Struct_1(countOneBits(var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.d, var_0.b.d)))), var_0.b.c, -143f), var_0.d.c, Struct_3(var_0.d.a, ~var_0.a, ~1i, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.a, var_0.d.b), countOneBits(vec2<u32>(53777u, 52327u)), var_0.b.c), vec2<u32>(55072u, u_input.a))));
    global1 = ~var_0.d.d;
    global1 = ~(~var_0.d.d ^ (max(var_0.d.b, ~59174u) >> (29752u % 32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b.d))), 124f)))) * var_0.b.b.x);
    let var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~(~4294967295u), countOneBits(var_2.d.b)), ~var_0.a), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec2<u32>(u_input.a, 0u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.b.b + vec2<f32>(1129f, -1000f)), _wgslsmith_f_op_vec2_f32(abs(var_4.zz))))), var_4.xy), abs(1u >> ((countOneBits(0u) ^ _wgslsmith_mult_u32(35904u, var_2.a)) % 32u)), max(~(~vec3<u32>(var_0.d.b, 1u, var_0.d.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_2.d.d, 45951u), firstLeadingBit(vec3<u32>(0u, u_input.a, 33808u)))) | ~(~(~vec3<u32>(u_input.a, u_input.a, var_2.d.b))));
}

