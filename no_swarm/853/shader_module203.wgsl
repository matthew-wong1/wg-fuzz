struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = !(!vec3<bool>(1u > (23761u << (u_input.a % 32u)), true, !any(arg_1.c.zzx)));
    global0 = arg_1.a << ((vec2<u32>(~_wgslsmith_sub_u32(u_input.b.x, 22897u), u_input.a ^ (u_input.a & u_input.a)) | (~firstTrailingBit(vec2<u32>(24332u, u_input.a)) << (~u_input.b.xx % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2082f)))));
    var var_2 = arg_3;
    let var_3 = Struct_1(~vec2<i32>(~6923i, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, global0.x), vec2<i32>(global0.x, -27234i) & vec2<i32>(1i, arg_2.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, 313f) - vec2<f32>(-656f, -1000f)))), !var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.b.x - -267f))))) * var_2.b.x));
    return var_3.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    global0 = vec2<i32>(-26513i, 1i);
    global0 = arg_1.a;
    global0 = arg_0.a;
    var var_0 = all(!select(vec4<bool>(arg_0.c.x && true, true, false, true), vec4<bool>(false, arg_1.c.x, arg_1.c.x, true), vec4<bool>(true, true & arg_0.c.x, arg_0.c.x, all(vec4<bool>(true, arg_0.c.x, false, false)))));
    global0 = abs((vec2<i32>(-1i) * -abs(arg_0.a)) & arg_1.a);
    return true;
}

fn func_2() -> vec4<i32> {
    let var_0 = func_4(Struct_1(vec2<i32>(_wgslsmith_div_i32(-2147483647i, global0.x), global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-113f, 1356f)))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(-785f)))), Struct_1(-_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(global0.x, -15959i)), _wgslsmith_f_op_vec2_f32(func_3(countOneBits(-2147483647i), Struct_1(vec2<i32>(-5511i, 14422i), vec2<f32>(1883f, -809f), vec4<bool>(true, true, true, true), -578f), Struct_1(vec2<i32>(2147483647i, global0.x), vec2<f32>(-2115f, -624f), vec4<bool>(false, true, true, true), 1000f), Struct_1(vec2<i32>(global0.x, global0.x), vec2<f32>(-1000f, 1429f), vec4<bool>(false, true, false, false), -513f))), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3815f - -508f))), 1705f) | all(vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), func_4(Struct_1(vec2<i32>(global0.x, global0.x), vec2<f32>(-233f, 121f), vec4<bool>(true, true, true, true), -1514f), Struct_1(vec2<i32>(global0.x, global0.x), vec2<f32>(482f, 1548f), vec4<bool>(true, false, true, true), 1761f), -2269f)));
    var var_1 = max(~(~u_input.b.wx), u_input.b.yz);
    var var_2 = ~min(u_input.b.zz, ~u_input.b.zy);
    let var_3 = u_input.b.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec4_i32(~vec4<i32>(~2763i, ~global0.x, select(global0.x, 2147483647i, var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -1i, global0.x), vec3<i32>(global0.x, global0.x, 1i))), max(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -30081i, -2147483647i, global0.x), vec4<i32>(-41244i, global0.x, global0.x, global0.x), vec4<i32>(25494i, global0.x, -61398i, 4102i)), vec4<i32>(global0.x, -42436i, 23758i, 2147483647i), select(vec4<bool>(true, false, var_0, true), vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, var_0, true, var_0))), vec4<i32>(-18585i, global0.x, global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.x, global0.x, global0.x), vec4<i32>(18129i, global0.x, global0.x, global0.x))))), Struct_1(vec2<i32>(~_wgslsmith_clamp_i32(-28916i, global0.x, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -22663i, -2147483647i, 1i), vec4<i32>(2147483647i, -16414i, -2147483647i, global0.x)) | (global0.x & global0.x)), vec2<f32>(-189f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(708f, 711f)))), vec4<bool>(func_4(Struct_1(vec2<i32>(-20725i, global0.x), vec2<f32>(1748f, 534f), vec4<bool>(var_0, false, var_0, var_0), -1331f), Struct_1(vec2<i32>(global0.x, 0i), vec2<f32>(-1227f, -112f), vec4<bool>(false, var_0, var_0, true), -1000f), -729f) != var_0, !(var_0 && true), func_4(Struct_1(vec2<i32>(-1i, -1i), vec2<f32>(727f, -1789f), vec4<bool>(var_0, false, var_0, false), -611f), Struct_1(vec2<i32>(-16060i, 18025i), vec2<f32>(563f, -735f), vec4<bool>(var_0, var_0, false, false), -856f), -718f), !(var_0 || var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1019f + 1325f))) * 126f)), Struct_1(vec2<i32>(-21640i & global0.x, select(abs(2147483647i), firstTrailingBit(global0.x), var_0)), vec2<f32>(186f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(401f, -1114f) - -2727f)), select(vec4<bool>(false, func_4(Struct_1(vec2<i32>(global0.x, 2147483647i), vec2<f32>(408f, 217f), vec4<bool>(false, true, false, var_0), 936f), Struct_1(vec2<i32>(global0.x, global0.x), vec2<f32>(-429f, 844f), vec4<bool>(var_0, true, var_0, var_0), 1556f), 774f), true, var_0), select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(true, true, true, var_0), true), !vec4<bool>(var_0, var_0, var_0, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(-527f * -668f))) * -743f)), Struct_1(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -11378i, -28033i), vec3<i32>(global0.x, 3490i, 81438i)), countOneBits(global0.x))), vec2<f32>(1f, 1f), !(!(!vec4<bool>(true, var_0, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(619f * 1458f) + 660f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(959f + 837f), 1066f, true))))));
    return ~(~vec4<i32>(-global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 29106i, global0.x, global0.x), vec4<i32>(global0.x, -34717i, 0i, 0i)), 21597i, -8061i)) << (vec4<u32>(~(_wgslsmith_mod_u32(var_3, var_2.x) >> (~var_2.x % 32u)), ~firstTrailingBit(2537u), ~var_1.x, _wgslsmith_clamp_u32(1u, ~var_2.x << (4294967295u % 32u), 4294967295u)) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(firstTrailingBit(~arg_2), arg_2, 1u, u_input.a), select(vec4<u32>(arg_2, 4294967295u, arg_2, 46521u), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 99319u), vec4<bool>(true, true, true, true))), vec4<u32>(~1u, ~(~0u), ~arg_2, arg_2));
    let var_1 = arg_1.yy;
    var var_2 = arg_3;
    var var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~countOneBits(u_input.b), ~vec4<u32>(arg_2 >> (var_0.x % 32u), var_0.x, max(var_0.x, 12647u), var_0.x), var_0 >> (vec4<u32>(~31210u, arg_2 ^ arg_2, 8097u, ~0u) % vec4<u32>(32u))), u_input.b);
    let var_4 = Struct_1(vec2<i32>(var_1.x >> (18070u % 32u), 13097i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.d)) * _wgslsmith_f_op_f32(-var_2.b.x)), -275f)), arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d, -879f)), _wgslsmith_f_op_f32(abs(1000f))) - -228f));
    return Struct_1(reverseBits(select(var_1, countOneBits(-var_4.a), any(var_2.c.zz) && true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_4.b, var_2.b))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, arg_3.c.x), arg_0.zw)), !var_4.c.x, all(!arg_3.c.yzz), -1000f == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, var_2.b.x, var_4.c.x)), var_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(619f - _wgslsmith_f_op_f32(-var_4.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.d)))))));
}

fn func_1() -> vec2<f32> {
    var var_0 = func_5(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), -func_2() & -(~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, -12639i, global0.x), vec4<i32>(-3853i, global0.x, global0.x, global0.x))), ~firstLeadingBit(66985u), Struct_1(abs(vec2<i32>(global0.x, global0.x) >> (u_input.b.ww % vec2<u32>(32u))) >> (vec2<u32>(min(46130u, u_input.a), _wgslsmith_mult_u32(u_input.a, 1u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(1400f, _wgslsmith_f_op_f32(f32(-1f) * -150f))), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(func_4(Struct_1(vec2<i32>(global0.x, global0.x), vec2<f32>(171f, -1020f), vec4<bool>(false, true, false, false), -465f), Struct_1(vec2<i32>(global0.x, global0.x), vec2<f32>(1481f, 757f), vec4<bool>(false, false, false, true), -1972f), 649f), u_input.a != u_input.b.x, true, true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(599f, -246f)) * 1584f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(230f))))));
    let var_1 = vec3<u32>(u_input.b.x, u_input.a, 58014u);
    var var_2 = func_5(vec4<bool>(!(_wgslsmith_f_op_f32(-var_0.b.x) < _wgslsmith_f_op_f32(floor(var_0.d))), true, false, all(var_0.c.xyx)), vec4<i32>(-firstLeadingBit(var_0.a.x ^ 2147483647i), _wgslsmith_mult_i32(func_2().x, 9374i), var_0.a.x & -2147483647i, func_5(select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(false, false, false, var_0.c.x), var_0.c), vec4<i32>(9197i, 17872i, -29333i, 2147483647i), ~u_input.b.x, func_5(var_0.c, vec4<i32>(2147483647i, -36303i, -1i, 2147483647i), 4294967295u, Struct_1(var_0.a, var_0.b, vec4<bool>(var_0.c.x, true, false, var_0.c.x), -290f))).a.x ^ (i32(-1i) * -41074i)), ~var_1.x, func_5(!vec4<bool>(true, !var_0.c.x, any(vec2<bool>(var_0.c.x, var_0.c.x)), true), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -36117i, var_0.a.x, -1i) & vec4<i32>(-44753i, -2147483647i, global0.x, global0.x), ~vec4<i32>(-1i, -2147483647i, -15108i, global0.x)), vec4<i32>(var_0.a.x, 2147483647i, 1i, 0i << (0u % 32u))), _wgslsmith_add_u32((82901u << (u_input.b.x % 32u)) & var_1.x, 35530u), Struct_1(vec2<i32>(var_0.a.x & var_0.a.x, global0.x), vec2<f32>(135f, func_5(vec4<bool>(true, false, true, true), vec4<i32>(6560i, var_0.a.x, global0.x, -15603i), u_input.a, Struct_1(var_0.a, var_0.b, vec4<bool>(var_0.c.x, false, false, true), 1631f)).d), func_5(func_5(vec4<bool>(var_0.c.x, false, var_0.c.x, true), vec4<i32>(-1i, global0.x, global0.x, -19168i), var_1.x, Struct_1(vec2<i32>(0i, -1i), vec2<f32>(var_0.b.x, -1438f), var_0.c, 386f)).c, vec4<i32>(12243i, global0.x, 12009i, var_0.a.x), var_1.x & 4960u, func_5(var_0.c, vec4<i32>(var_0.a.x, var_0.a.x, global0.x, 30853i), 4294967295u, Struct_1(vec2<i32>(global0.x, 14037i), var_0.b, var_0.c, var_0.d))).c, _wgslsmith_f_op_f32(-1619f + _wgslsmith_f_op_f32(-361f * -1000f)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.x)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.b.x, var_2.b.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d * var_0.b.x)))) * 1f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.b)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_2.d))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(min(_wgslsmith_mult_vec2_i32(max(vec2<i32>(global0.x, -1108i), vec2<i32>(global0.x, global0.x)), vec2<i32>(-8157i, global0.x)), vec2<i32>(~2147483647i, firstTrailingBit(global0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(725f, -255f))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))))), vec4<bool>(!any(vec2<bool>(true, true)), select(false, !any(vec3<bool>(false, false, false)), !any(vec2<bool>(false, true))), any(vec3<bool>(true, true, true)), (func_5(vec4<bool>(false, true, false, true), vec4<i32>(-24507i, global0.x, global0.x, 9856i), u_input.b.x, Struct_1(vec2<i32>(global0.x, global0.x), vec2<f32>(-318f, -1000f), vec4<bool>(true, true, true, false), -1004f)).a.x < _wgslsmith_add_i32(-1i, 46301i)) && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f)));
    var_0 = func_5(func_5(!select(var_0.c, select(vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), var_0.c, var_0.c), !var_0.c), vec4<i32>(max(abs(-2147483647i), _wgslsmith_add_i32(-1i, -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a, var_0.a), var_0.a), func_2().x, global0.x), 0u, func_5(!(!var_0.c), firstTrailingBit(vec4<i32>(-32061i, global0.x, 13621i, -2147483647i)), (u_input.b.x >> (48982u % 32u)) << (u_input.a % 32u), Struct_1(-vec2<i32>(-1i, 1i), _wgslsmith_div_vec2_f32(var_0.b, var_0.b), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -466f)))).c, ~_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-2147483647i, -1i, -2352i, -15469i)), vec4<i32>(-45669i, countOneBits(global0.x), 7624i, countOneBits(var_0.a.x))), ~(~(~19781u)), func_5(vec4<bool>(any(!var_0.c.ww), any(!var_0.c.zx), all(vec2<bool>(true, false)), min(global0.x, -11143i) < -26098i), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), func_2()), _wgslsmith_div_vec4_i32(~vec4<i32>(-41760i, var_0.a.x, 2147483647i, var_0.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1745i, -50943i, var_0.a.x), vec4<i32>(44102i, 31739i, var_0.a.x, global0.x), vec4<i32>(-38443i, global0.x, 7212i, -9197i)))), 8056u, func_5(select(select(var_0.c, vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), true), vec4<bool>(true, true, true, true), !var_0.c.x), vec4<i32>(reverseBits(global0.x), _wgslsmith_add_i32(-36264i, var_0.a.x), select(var_0.a.x, 19761i, false), var_0.a.x), firstTrailingBit(_wgslsmith_add_u32(u_input.a, u_input.a)), func_5(var_0.c, ~vec4<i32>(-2978i, 1i, 2147483647i, -3769i), 50232u, Struct_1(vec2<i32>(var_0.a.x, 16619i), vec2<f32>(2714f, 1329f), var_0.c, var_0.b.x)))));
    let var_1 = vec2<u32>(17639u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(~u_input.b, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 42935u)), u_input.b), u_input.b.x));
    let var_2 = vec4<bool>(var_0.c.x, true, false, var_0.c.x);
    var var_3 = max(var_1.x, _wgslsmith_mod_u32(37693u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 92335u, var_1.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(49408u, 4294967295u, var_1.x, 4294967295u), u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(27576u & u_input.a, var_1.x, _wgslsmith_mult_u32(u_input.a, 7938u), 4294967295u)), vec4<u32>(_wgslsmith_add_u32(max(4294967295u, 4294967295u), var_1.x), u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.b.x), 4294967295u)), _wgslsmith_f_op_f32(var_0.b.x + -1000f));
}

