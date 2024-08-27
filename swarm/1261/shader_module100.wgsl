struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: f32;

var<private> global2: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(-50695i, i32(-2147483648), 1i), vec3<i32>(-1i, 2147483647i, 474i), vec3<i32>(0i, i32(-2147483648), -42998i), vec3<i32>(1i, -17053i, i32(-2147483648)), vec3<i32>(56163i, 1i, 23695i), vec3<i32>(-10639i, 0i, 0i), vec3<i32>(-27309i, -28022i, 1i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(16729i, 36832i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 43391i), vec3<i32>(-1451i, 2147483647i, i32(-2147483648)), vec3<i32>(-36354i, 2147483647i, 15305i), vec3<i32>(2147483647i, 45170i, 2147483647i), vec3<i32>(16197i, 23427i, 0i), vec3<i32>(-6083i, -31291i, 41503i), vec3<i32>(-25519i, 2147483647i, 2147483647i), vec3<i32>(0i, 35664i, 1i), vec3<i32>(-22563i, -23884i, 15479i), vec3<i32>(19955i, -1i, 57741i), vec3<i32>(-1i, i32(-2147483648), 19238i));

var<private> global3: u32;

var<private> global4: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(241f, 1377f, -819f, -974f), vec4<f32>(-292f, -1736f, -2471f, -832f), vec4<f32>(-717f, 115f, -311f, -1074f), vec4<f32>(563f, 115f, -1000f, 449f), vec4<f32>(-1726f, -142f, 228f, 1000f), vec4<f32>(224f, -1038f, 321f, -1145f), vec4<f32>(-225f, 832f, 526f, 416f), vec4<f32>(-511f, 1011f, 1567f, -1285f), vec4<f32>(260f, 1247f, -1000f, 2209f), vec4<f32>(-2599f, 165f, 1038f, 918f), vec4<f32>(-1000f, -114f, 1042f, 1036f), vec4<f32>(294f, -316f, -1000f, -185f), vec4<f32>(-805f, 917f, 494f, -1000f), vec4<f32>(-1580f, -355f, 961f, -931f), vec4<f32>(1644f, 935f, -568f, -851f), vec4<f32>(577f, 935f, -608f, -828f), vec4<f32>(1317f, 975f, -253f, -342f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = 1i;
    global2 = array<vec3<i32>, 21>();
    let var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-274f)) * arg_3.b.x) >= 2502f) == ((_wgslsmith_f_op_f32(floor(-2292f)) < _wgslsmith_f_op_f32(floor(-1099f))) & arg_3.a.x);
    var var_2 = ~((~_wgslsmith_mod_vec2_u32(vec2<u32>(8895u, 49132u), vec2<u32>(8418u, u_input.b)) | vec2<u32>(u_input.c, 1u)) << (~(~vec2<u32>(4294967295u, u_input.c)) % vec2<u32>(32u)));
    var var_3 = Struct_1(arg_2.a, arg_0);
    return vec4<bool>(all(arg_2.a), any(!(!select(var_3.a.zz, vec2<bool>(var_1, false), vec2<bool>(true, false)))), !(0u <= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.x), vec3<u32>(47029u, var_2.x, 1u))), false);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = -(~1i);
    let var_1 = Struct_1(select(!select(func_3(vec3<f32>(-1372f, arg_2, arg_2), Struct_1(vec4<bool>(arg_0, true, arg_1, false), vec3<f32>(arg_2, -1019f, -722f)), Struct_1(vec4<bool>(arg_1, true, true, true), vec3<f32>(-1032f, 322f, arg_2)), Struct_1(vec4<bool>(arg_0, true, true, arg_0), vec3<f32>(arg_2, arg_2, -1000f))), func_3(vec3<f32>(arg_2, 770f, arg_2), Struct_1(vec4<bool>(arg_1, arg_1, false, arg_1), vec3<f32>(803f, -696f, arg_2)), Struct_1(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec3<f32>(-1787f, arg_2, arg_2)), Struct_1(vec4<bool>(arg_1, arg_1, arg_1, false), vec3<f32>(arg_2, arg_2, arg_2))), !vec4<bool>(false, arg_0, arg_1, true)), select(vec4<bool>(true, arg_1, false != arg_0, func_3(vec3<f32>(arg_2, -1226f, arg_2), Struct_1(vec4<bool>(arg_1, arg_0, true, false), vec3<f32>(-1397f, 478f, arg_2)), Struct_1(vec4<bool>(true, true, arg_1, arg_1), vec3<f32>(-380f, -1004f, 486f)), Struct_1(vec4<bool>(arg_0, arg_1, arg_0, arg_0), vec3<f32>(-714f, 2484f, 379f))).x), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -419f, 243f) * vec3<f32>(arg_2, 613f, arg_2)), Struct_1(vec4<bool>(false, false, true, arg_0), vec3<f32>(325f, arg_2, 1449f)), Struct_1(vec4<bool>(false, arg_1, arg_1, arg_1), vec3<f32>(arg_2, 264f, arg_2)), Struct_1(vec4<bool>(true, arg_0, false, false), vec3<f32>(arg_2, 1039f, arg_2))), any(vec4<bool>(true, arg_1, true, arg_1))), arg_0), vec3<f32>(-889f, arg_2, _wgslsmith_f_op_f32(163f * _wgslsmith_f_op_f32(-arg_2))));
    global4 = array<vec4<f32>, 17>();
    global3 = 9717u;
    var var_2 = ~(~((_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 11872u, u_input.c), vec4<u32>(arg_3, u_input.c, 4294967295u, u_input.b), vec4<u32>(u_input.e, 37413u, 75877u, 31800u)) & (vec4<u32>(u_input.c, 1u, arg_3, u_input.e) | vec4<u32>(4294967295u, 88809u, 4294967295u, arg_3))) & vec4<u32>(arg_3, _wgslsmith_mult_u32(0u, 1u), arg_3, arg_3)));
    return (select(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0) >> (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u)), min(vec2<i32>(u_input.d, 1169i), vec2<i32>(-2147483647i, 23476i))), ~u_input.b > arg_3) ^ 10920i) & u_input.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = select(func_3(vec3<f32>(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(f32(-1f) * -112f)), -1390f), Struct_1(vec4<bool>(13346u < u_input.b, arg_2.x, !arg_2.x, arg_0.x > -10936i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b - vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)))), arg_1, Struct_1(func_3(arg_1.b, Struct_1(vec4<bool>(arg_1.a.x, false, true, arg_2.x), arg_1.b), Struct_1(arg_1.a, vec3<f32>(-604f, 2463f, -2489f)), arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) + vec3<f32>(1975f, -1236f, arg_1.b.x)))).yxy, func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2314f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(102f - arg_1.b.x)))), arg_1, Struct_1(arg_1.a, arg_1.b), arg_1).zzz, !arg_1.a.zxw);
    return Struct_1(select(select(!func_3(arg_1.b, arg_1, Struct_1(vec4<bool>(false, arg_1.a.x, arg_1.a.x, var_0.x), arg_1.b), Struct_1(arg_1.a, arg_1.b)), vec4<bool>(true, true, true && arg_1.a.x, var_0.x), select(arg_1.a, !vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, arg_1.a.x, var_0.x, arg_1.a.x))), vec4<bool>(arg_1.a.x, true, select(arg_2.x, true, true), !(!var_0.x)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-854f, 1285f, 132f) * arg_1.b))) - vec3<f32>(_wgslsmith_f_op_f32(max(1f, 585f)), _wgslsmith_f_op_f32(arg_1.b.x * 1f), _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(-(select(~vec4<i32>(u_input.a, u_input.a, -8792i, 0i), ~vec4<i32>(-1i, u_input.d, 2147483647i, 15296i), vec4<bool>(true, true, true, true)) | vec4<i32>(func_2(true, false, 522f, u_input.b), u_input.d, countOneBits(-14564i), func_2(true, true, 410f, 19123u))), Struct_1(func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(169f, 494f, -306f), vec3<f32>(422f, 1000f, -683f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1908f, -2508f, 584f) + vec3<f32>(287f, -1724f, 275f)))), Struct_1(vec4<bool>(true, false, false, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(724f, -457f, 877f))), Struct_1(func_3(vec3<f32>(-1280f, -300f, 2369f), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(625f, 1882f, 1548f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-573f, 1350f, 599f)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(2969f, -425f, -337f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2906f, -175f, 122f) * vec3<f32>(478f, -1012f, 943f))), Struct_1(vec4<bool>(false, true, true, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-720f, -1240f, -2388f) + vec3<f32>(-955f, 903f, 2612f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -678f), 536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-606f + 1202f)))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, -1000f, -1171f)) + vec3<f32>(749f, _wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(f32(-1f) * -420f))), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(_wgslsmith_f_op_f32(sign(-1124f)), _wgslsmith_f_op_f32(floor(556f)), -991f)), Struct_1(vec4<bool>(any(vec4<bool>(false, true, true, false)), true, u_input.a < -2147483647i, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(135f, -248f, 890f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, -872f, -621f)))), Struct_1(vec4<bool>(0u > u_input.c, true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1286f, -1000f, 1270f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(885f, 1000f, -312f) - vec3<f32>(-698f, 847f, 180f))))).xxz);
    let var_1 = !(!select(vec3<bool>(var_0.a.x, var_0.a.x, select(true, false, var_0.a.x)), var_0.a.xyy, var_0.b.x <= _wgslsmith_div_f32(var_0.b.x, var_0.b.x)));
    let var_2 = vec3<i32>(27249i, _wgslsmith_dot_vec2_i32(countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(u_input.d, 1679i) << (firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(23824u, 31970u))) % vec2<u32>(32u))), u_input.a);
    var var_3 = func_4(vec4<i32>(_wgslsmith_clamp_i32(~(-78252i), _wgslsmith_add_i32(var_2.x, 43196i), var_2.x | u_input.a), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 2147483647i, -2147483647i), var_2)), 55889i, var_2.x) & (reverseBits(vec4<i32>(-24999i, var_2.x, 354i, u_input.a)) << (vec4<u32>(u_input.c, 1u, reverseBits(0u), 4294967295u) % vec4<u32>(32u))), func_4(max(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-84511i, u_input.d, u_input.d, 0i), vec4<i32>(6882i, u_input.a, 30435i, -24199i), vec4<i32>(var_2.x, -2147483647i, 34588i, -38378i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, var_2.x, -2147483647i), vec4<i32>(-2147483647i, -21690i, -2147483647i, -2147483647i))), -vec4<i32>(-605i, u_input.d, -2147483647i, u_input.a)), Struct_1(var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, -897f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, -676f) * var_0.b))), !(!(!vec3<bool>(false, var_1.x, false)))), vec3<bool>(any(!select(vec2<bool>(false, false), var_1.yx, vec2<bool>(var_1.x, false))), any(func_4(vec4<i32>(-29863i, -34240i, var_2.x, -2147483647i) ^ vec4<i32>(-12925i, var_2.x, var_2.x, var_2.x), func_4(vec4<i32>(u_input.d, u_input.d, u_input.a, 0i), var_0, vec3<bool>(false, var_1.x, false)), vec3<bool>(true, true, true)).a.zxy), !select(var_0.a.x, false && var_1.x, true)));
    global0 = var_3.b.x;
    return Struct_1(!vec4<bool>(var_0.a.x, var_1.x, var_3.a.x, var_0.a.x), var_3.b);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(max(-18193i, 1i), 19156i << (u_input.b % 32u)), -u_input.a, countOneBits(2147483647i >> (u_input.b % 32u)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - -687f) * _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x));
    var var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, 553f, arg_0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) + arg_0.b))))));
    var var_2 = ~(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 48777u, u_input.c) << (vec3<u32>(35640u, u_input.e, 0u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 4294967295u))), reverseBits(u_input.c | u_input.b), ~(u_input.c & u_input.b), min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(26804u, 8577u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.c, u_input.e)))) | vec4<u32>(_wgslsmith_sub_u32(countOneBits(u_input.e), _wgslsmith_add_u32(u_input.e, u_input.b)), u_input.c, _wgslsmith_div_u32(_wgslsmith_mod_u32(687u, u_input.e), u_input.e), 4294967295u));
    var var_3 = arg_0;
    return func_1();
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.c, u_input.b, u_input.e), vec4<u32>(u_input.e, 86150u, 35132u, u_input.b))), select(countOneBits(~vec4<u32>(740u, 0u, u_input.c, 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.b, u_input.c, 4294967295u), vec4<u32>(1u, u_input.c, 7508u, 4294967295u)), !all(arg_1.a))), max(u_input.c >> (u_input.c % 32u), u_input.b), 1u, ~(~1u));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), func_4(vec4<i32>(u_input.a, u_input.d, 0i, 21161i), arg_0, arg_0.a.wxw).b.x, 1000f)))));
    var var_3 = func_5(Struct_1(arg_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2402f, arg_2.x, var_2.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-488f, 1650f, var_1.b.x), arg_0.b, var_1.a.xwx))), vec3<f32>(248f, _wgslsmith_f_op_f32(sign(1524f)), 1485f)))).b.x;
    global4 = array<vec4<f32>, 17>();
    return 1u & _wgslsmith_add_u32(9432u, u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(min(u_input.d, u_input.a) ^ -(0i | u_input.d), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d, -1i) | -2306i, _wgslsmith_mod_i32(u_input.a, u_input.d) & firstLeadingBit(-8894i)));
    var var_1 = u_input.a;
    var var_2 = vec3<f32>(878f, -389f, _wgslsmith_f_op_f32(ceil(-262f)));
    global3 = firstLeadingBit(0u) >> (func_6(func_5(func_1()), Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1541f, -1707f, var_2.x)), func_1().b, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), var_2.x, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(round(-896f))))) % 32u);
    let var_3 = all(select(select(vec4<bool>(var_2.x >= var_2.x, true, true, func_5(Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(var_2.x, -1000f, var_2.x))).a.x), select(vec4<bool>(false, false, false, false), func_4(vec4<i32>(var_0.x, -15243i, 1i, var_0.x), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(332f, var_2.x, -877f)), vec3<bool>(true, true, true)).a, vec4<bool>(false, false, true, false)), true), vec4<bool>(false, var_2.x <= 511f, select(true, any(vec3<bool>(true, true, false)), false), var_2.x == _wgslsmith_f_op_f32(-var_2.x)), func_5(func_1()).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32((vec2<u32>(1u, 809u) ^ vec2<u32>(u_input.b, 1u)) & vec2<u32>(u_input.e, 815u), vec2<u32>(0u, u_input.c) | ~vec2<u32>(u_input.e, u_input.e)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.d, reverseBits(2147483647i), ~u_input.d, _wgslsmith_sub_i32(var_0.x, -58050i)), (vec4<i32>(0i, -16672i, var_0.x, 1i) << (vec4<u32>(2238u, 99847u, u_input.b, u_input.b) % vec4<u32>(32u))) >> (min(vec4<u32>(4294967295u, 0u, u_input.e, u_input.e), vec4<u32>(u_input.c, 4294967295u, 12541u, 1u)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-341f, -1495f, var_2.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, var_2.x, -1112f)))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(step(-1943f, var_2.x)), func_5(Struct_1(vec4<bool>(true, true, var_3, var_3), vec3<f32>(1000f, -1038f, var_2.x))).b.x), var_3)), func_4(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.d, -33376i), vec4<i32>(1i, var_0.x, 21794i, var_0.x)), Struct_1(vec4<bool>(true, var_3, var_3, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(382f, 344f, var_2.x) + vec3<f32>(-1653f, 672f, -2465f))), vec3<bool>(var_3, var_2.x <= 201f, true)).b, false)));
}

