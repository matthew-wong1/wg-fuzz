struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.b)) + 174f) + _wgslsmith_f_op_f32(abs(-1731f))), _wgslsmith_f_op_f32(sign(1000f)));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-397f)))), var_0.a, any(vec3<bool>(true, true, false))))))));
    let var_2 = u_input.a.yy;
    global0 = select(true, all(vec2<bool>(true, true)), true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_2.b, arg_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, 1355f, 615f))))));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-490f), arg_1.c, arg_1, u_input.c));
    var var_1 = max(select(u_input.a, vec3<i32>(~firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(countOneBits(-449i), -28122i), 2147483647i), !arg_0), u_input.a);
    let var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1.a.x, global1[_wgslsmith_index_u32(arg_2.a.x, 5u)]), arg_1.a.x) ^ vec2<u32>(~global1[_wgslsmith_index_u32(3849u, 5u)], 11669u), max(~vec2<u32>(1u, 1u), arg_1.a), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.x, 0u >> (u_input.c.x % 32u)), _wgslsmith_sub_vec2_u32(arg_1.a, reverseBits(vec2<u32>(4294967295u, arg_1.a.x))))), -1686f, Struct_1(arg_1.c.a));
    let var_3 = arg_1;
    global0 = false;
    return var_2;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = 421f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.c.a, _wgslsmith_f_op_f32(f32(-1f) * -1366f))));
    var_1 = arg_2.d.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1581f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1203f - -436f) - -185f)))));
    var var_3 = select(!select(!select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(arg_0, !arg_0, false, !(arg_0 & select(true, true, arg_0))), !arg_0);
    return func_2(arg_0, func_2(all(select(vec3<bool>(false, true, false), vec3<bool>(var_3.x, true, arg_0), var_3.xzx)) || arg_0, func_2(true, Struct_2(~vec2<u32>(1u, 0u), -1000f, Struct_1(-116f)), Struct_2(select(vec2<u32>(3876u, global1[_wgslsmith_index_u32(38417u, 5u)]), arg_2.a.a, arg_0), _wgslsmith_f_op_f32(-var_2.a), Struct_1(arg_2.d.a))), func_2(any(vec2<bool>(true, var_3.x)), Struct_2(~vec2<u32>(26113u, u_input.b.x), arg_2.e.x, func_2(false, arg_2.a, arg_2.a).c), func_2(any(var_3.yww), func_2(arg_0, Struct_2(vec2<u32>(arg_2.a.a.x, u_input.b.x), var_2.a, Struct_1(655f)), arg_2.a), Struct_2(vec2<u32>(77049u, 1u), arg_2.a.c.a, Struct_1(115f))))), arg_2.a);
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    global0 = any(vec3<bool>(arg_0.x, true, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(27839u, 1u), 5u)], 5u)], func_2(arg_0.x, Struct_2(u_input.b, arg_3.x, arg_2.c), arg_2).a.x) < firstTrailingBit(~0u)));
    global0 = arg_0.x;
    var var_0 = -2147483647i;
    global0 = false;
    global1 = array<u32, 5>();
    return Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~6827u), func_2(all(vec2<bool>(true, arg_0.x)), func_4(arg_0.x, vec4<i32>(-1i, u_input.d.x, 0i, -2147483647i), Struct_3(Struct_2(vec2<u32>(1955u, arg_2.a.x), arg_2.b, Struct_1(-1015f)), arg_2.a.x, u_input.d, arg_2.c, vec2<f32>(-191f, arg_3.x))), func_4(true, vec4<i32>(u_input.d.x, -26499i, u_input.d.x, u_input.a.x), Struct_3(Struct_2(u_input.b, 986f, Struct_1(arg_3.x)), 0u, u_input.d, Struct_1(arg_3.x), vec2<f32>(-796f, -648f)))).a.x), 5u)], func_4(true, -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.d.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.a.x)), Struct_3(Struct_2(arg_2.a, 412f, arg_2.c), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], 5u)], -u_input.a.xy, func_2(false, arg_2, arg_2).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-284f, arg_3.x)))).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_3.x, -1097f, arg_0.x)), 807f) * _wgslsmith_f_op_f32(round(932f)))), arg_2.c);
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(232f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a))) + -542f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(func_2(true, arg_1.a, Struct_2(vec2<u32>(1u, 0u), 483f, arg_1.a.c)).c, arg_1.d, arg_2, u_input.c)).x) - arg_2.b));
    global0 = true;
    global1 = array<u32, 5>();
    global0 = true;
    return func_5(select(vec3<bool>(true, ~u_input.a.x == firstTrailingBit(-8296i), select(true, true, any(vec4<bool>(false, false, false, true)))), vec3<bool>(all(vec3<bool>(false, true, false)), true, true), any(vec3<bool>(true, true, true)) || true), _wgslsmith_dot_vec2_u32(u_input.b | vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.wwz, u_input.c.zyz), select(global1[_wgslsmith_index_u32(arg_2.a.x, 5u)], 21221u, false)), vec2<u32>(~(global1[_wgslsmith_index_u32(u_input.b.x, 5u)] ^ 4294967295u), 21054u)), func_2(true, arg_1.a, arg_1.a), vec2<f32>(_wgslsmith_f_op_f32(func_5(vec3<bool>(true, false, true), func_4(true, vec4<i32>(arg_1.c.x, arg_3.x, -1i, -13711i), Struct_3(arg_1.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], arg_3.yz, Struct_1(276f), var_0)).a.x, func_2(false, arg_1.a, arg_1.a), vec2<f32>(1000f, arg_1.e.x)).b - _wgslsmith_div_f32(arg_1.a.c.a, var_0.x)), func_2(select(true, arg_2.c.a <= 2396f, true), Struct_2(select(vec2<u32>(arg_2.a.x, 77930u), arg_2.a, true), _wgslsmith_f_op_f32(f32(-1f) * -275f), Struct_1(arg_1.e.x)), Struct_2(select(u_input.c.yz, arg_2.a, vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_1), arg_2.c, Struct_2(vec2<u32>(39666u, 1u), 608f, Struct_1(433f)), vec4<u32>(1401u, 48254u, 0u, 0u))).x, arg_1.a.c)).c.a));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    var var_0 = func_6(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x) ^ (i32(-1i) * -18452i), Struct_3(Struct_2(firstLeadingBit(firstTrailingBit(vec2<u32>(u_input.c.x, 23157u))), -575f, Struct_1(-184f)), 44194u, vec2<i32>(~(-2147483647i), 6314i), Struct_1(-1061f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(985f, 1836f), vec2<f32>(302f, 614f), arg_0))))), func_5(!(!(!vec3<bool>(false, arg_0, false))), u_input.c.x, func_4(any(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, false, false, arg_0))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(24572i, u_input.a.x, -3231i, u_input.a.x), vec4<i32>(2147483647i, 34225i, u_input.a.x, u_input.d.x)), ~vec4<i32>(u_input.a.x, -2147483647i, -17709i, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a.x, -2840i), vec4<i32>(u_input.a.x, 1i, 41706i, u_input.d.x), vec4<i32>(u_input.a.x, u_input.d.x, 25618i, u_input.a.x))), Struct_3(func_2(arg_0, Struct_2(vec2<u32>(51364u, arg_2.x), arg_1.a, Struct_1(-748f)), Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(2327u, 5u)], u_input.c.x), arg_1.a, arg_1)), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(34350u, 5u)], 26974u), u_input.d, Struct_1(arg_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-183f, -562f) - vec2<f32>(-659f, -2579f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(525f, -2227f) - vec2<f32>(arg_1.a, arg_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), -585f), vec2<bool>(all(vec4<bool>(false, arg_0, true, true)), any(vec3<bool>(arg_0, arg_0, arg_0)))))), vec4<i32>(u_input.d.x, -54912i, 1i, ~(-countOneBits(u_input.a.x))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f)))), _wgslsmith_f_op_f32(f32(-1f) * -945f), _wgslsmith_f_op_f32(f32(-1f) * -1324f));
    var var_2 = func_4(true, min(countOneBits((vec4<i32>(u_input.a.x, u_input.d.x, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.d.x, 2147483647i, u_input.a.x, -1i)) >> (u_input.c % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.d.x, -49976i, 1i, u_input.d.x)), ~select(vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(-45346i, -23278i, -46062i, -1i), vec4<bool>(true, true, false, false)))), Struct_3(Struct_2(var_0.a >> (var_0.a % vec2<u32>(32u)), _wgslsmith_f_op_f32(-1000f * func_5(vec3<bool>(arg_0, arg_0, true), global1[_wgslsmith_index_u32(1u, 5u)], Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(arg_2.x, 5u)], 1u), -1489f, Struct_1(964f)), var_1.xy).c.a), func_5(!vec3<bool>(arg_0, arg_0, arg_0), 1312u, func_2(true, Struct_2(vec2<u32>(81964u, 6156u), arg_1.a, Struct_1(-776f)), Struct_2(var_0.a, -291f, arg_1)), _wgslsmith_f_op_vec2_f32(step(var_1.zx, var_1.xy))).c), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~countOneBits(global1[_wgslsmith_index_u32(30263u, 5u)]), ~u_input.b.x), 5u)], min(u_input.d, countOneBits(vec2<i32>(1i, u_input.d.x))), var_0.c, _wgslsmith_f_op_vec2_f32(var_1.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x))))))).c;
    let var_3 = !vec4<bool>(any(!(!vec4<bool>(arg_0, false, false, arg_0))), -1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1553f, var_0.b)) + _wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a + 935f))) <= -198f, (arg_0 | true) & !arg_0);
    var_2 = arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<u32>(~(~1u), ~global1[_wgslsmith_index_u32(reverseBits(u_input.c.x), 5u)]), _wgslsmith_f_op_f32(-2024f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -586f)))))), Struct_1(-785f));
    global1 = array<u32, 5>();
    let var_1 = 1u;
    global0 = any(vec3<bool>(true, select(false, _wgslsmith_f_op_f32(select(var_0.b, var_0.c.a, false)) > _wgslsmith_f_op_f32(step(var_0.c.a, 180f)), true), func_1(false, var_0.c, ~u_input.c)));
    var_0 = func_6(firstLeadingBit(~(-33797i)), Struct_3(Struct_2(vec2<u32>(~25946u, var_0.a.x), var_0.c.a, func_4(false, max(vec4<i32>(-51099i, u_input.d.x, u_input.d.x, 1i), vec4<i32>(55568i, u_input.a.x, 634i, u_input.a.x)), Struct_3(Struct_2(var_0.a, var_0.c.a, Struct_1(1000f)), var_0.a.x, vec2<i32>(1i, -9799i), Struct_1(383f), vec2<f32>(var_0.b, var_0.b))).c), firstTrailingBit(global1[_wgslsmith_index_u32(abs(firstLeadingBit(global1[_wgslsmith_index_u32(var_0.a.x, 5u)])), 5u)]), vec2<i32>(u_input.d.x, ~29852i), func_2(true, Struct_2(vec2<u32>(u_input.c.x, 18779u), -414f, Struct_1(-123f)), func_5(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), var_0.a.x, Struct_2(vec2<u32>(4294967295u, 322u), var_0.b, Struct_1(876f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1437f)))).c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-532f, 1500f), vec2<f32>(var_0.c.a, 266f), false)))))), func_4(false, -firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.d.x, 18722i, 39555i)), Struct_3(Struct_2(u_input.b, _wgslsmith_f_op_f32(select(var_0.b, var_0.b, true)), var_0.c), _wgslsmith_sub_u32(128755u & var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), var_0.a)), ~vec2<i32>(-1i, u_input.d.x) ^ u_input.a.xx, func_4(all(vec4<bool>(true, true, true, false)), -vec4<i32>(u_input.d.x, -37191i, u_input.d.x, -18899i), Struct_3(Struct_2(u_input.b, 1250f, var_0.c), var_1, vec2<i32>(u_input.d.x, u_input.d.x), var_0.c, vec2<f32>(var_0.c.a, -956f))).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-370f, 404f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.c.a), vec2<f32>(-438f, var_0.b))))), abs(vec4<i32>(-1i, u_input.d.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d.x, -4006i, 39448i, 19109i)), vec4<i32>(u_input.a.x, -11122i, u_input.d.x, u_input.d.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d.x, -1i, -1i), vec4<i32>(0i, 6628i, -1i, u_input.d.x)), min(u_input.d.x, 25035i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.a + -750f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(677f, 743f)) + _wgslsmith_f_op_f32(var_0.c.a + var_0.b)), var_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + var_0.b), _wgslsmith_div_f32(1563f, -2427f)), -281f, func_5(vec3<bool>(false, true, false), 4294967295u, func_2(true, Struct_2(vec2<u32>(var_1, 9103u), var_0.c.a, var_0.c), Struct_2(vec2<u32>(var_0.a.x, 4294967295u), -594f, var_0.c)), vec2<f32>(618f, 587f)).c.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, u_input.a.x, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x) << (4294967295u % 32u), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -40046i)), ~(~var_0.a), firstLeadingBit(vec2<u32>(~var_0.a.x, u_input.c.x)), _wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_add_i32(abs(u_input.a.x >> (64923u % 32u)), ~u_input.d.x)), -4952i);
}

