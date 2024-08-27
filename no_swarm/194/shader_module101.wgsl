struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 24551u;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(0i, vec3<i32>(18612i, -6555i, -11357i), 23082i, 47690u, vec2<i32>(-1i, 1i));

var<private> global3: vec2<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(335f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1053f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) * arg_1.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-125f, arg_1.x, -294f, arg_1.x) - vec4<f32>(546f, arg_1.x, -1539f, arg_1.x))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1305f, arg_1.x, 907f, arg_1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1111f, -353f, arg_1.x, arg_1.x))))))));
    var var_1 = global1.a;
    var var_2 = arg_2;
    var_2 = all(select(select(!vec4<bool>(true, true, global3.x, arg_2), !select(vec4<bool>(true, true, global3.x, true), vec4<bool>(true, arg_2, true, global3.x), vec4<bool>(true, true, false, false)), !select(vec4<bool>(arg_2, global3.x, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(true, false, false, arg_2))), select(vec4<bool>(true, false, false, !global3.x), vec4<bool>(all(vec2<bool>(true, false)), global3.x, arg_2, true), vec4<bool>(true, true, true, true)), !(!(!vec4<bool>(arg_2, false, arg_2, true)))));
    var var_3 = Struct_1(2147483647i, global1.b, 2147483647i, 1u, firstTrailingBit(min(arg_3.e, ~(-vec2<i32>(-1i, arg_3.e.x)))));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b.x ^ var_3.a, -(~global1.b.x)), arg_0.b.zy), ~arg_3.e.x, ~(-_wgslsmith_add_i32(global2.b.x, global2.e.x)) ^ -2147483647i, 0i);
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_1(-_wgslsmith_clamp_i32(~firstLeadingBit(arg_0.x), -4072i, arg_0.x), min(func_3(Struct_1(-1i & global1.a, arg_0.www, -4651i | global2.a, max(4294967295u, 0u), _wgslsmith_clamp_vec2_i32(global2.e, vec2<i32>(2147483647i, 1i), global1.e)), vec2<f32>(_wgslsmith_f_op_f32(-2278f * -693f), 853f), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, true))), Struct_1(-37781i, vec3<i32>(global2.a, global1.b.x, -2147483647i) >> (vec3<u32>(global1.d, 17257u, global2.d) % vec3<u32>(32u)), _wgslsmith_dot_vec4_i32(arg_0, arg_0), ~11530u, vec2<i32>(-40066i, global1.b.x))).xyz, _wgslsmith_mult_vec3_i32(global1.b, ~(-global2.b))), arg_0.x, _wgslsmith_div_u32(55938u, abs(4294967295u | ~global1.d)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(global2.e.x, global1.c), reverseBits(arg_0.xw)), -vec2<i32>(24852i, 39596i)) | select(firstTrailingBit(_wgslsmith_mult_vec2_i32(global2.b.zy, vec2<i32>(2147483647i, global2.c))), arg_0.xx, true));
    let var_1 = Struct_1(var_0.c | -(~(i32(-1i) * -1i)), ~global1.b, reverseBits(-_wgslsmith_add_i32(countOneBits(-1i), -30940i | global2.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~25912u, 0u ^ global1.d, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), u_input.a.wxw >> (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u))), vec2<i32>(~_wgslsmith_mult_i32(global2.e.x, var_0.c), select(arg_0.x, 1i, all(select(vec3<bool>(false, global3.x, true), vec3<bool>(false, true, global3.x), vec3<bool>(global3.x, true, global3.x))))));
    global1 = Struct_1(48622i, -var_0.b, -global1.a, 4864u, global2.e);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2172f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-290f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(885f, -364f, false)) + 173f)))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1571f - _wgslsmith_f_op_f32(func_4(abs(func_3(Struct_1(1i, vec3<i32>(-2147483647i, global1.b.x, global2.b.x), 1222i, 1u, global2.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, 859f) * vec2<f32>(-887f, -637f)), global3.x, arg_1)))));
    let var_1 = arg_2;
    var var_2 = Struct_1(arg_1.e.x, ~(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(9419i, 2147483647i, 1i, global2.b.x), vec4<i32>(-16520i, var_1.b.x, arg_2.b.x, arg_3)), -2147483647i, -17931i)), -3050i, _wgslsmith_mod_u32(u_input.a.x, 1u), ~vec2<i32>(max(-1i, 22381i), 1i) & vec2<i32>(2147483647i, -2147483647i << ((1u | var_1.d) % 32u)));
    var_2 = var_1;
    var var_3 = true;
    return Struct_1(arg_3, ~(vec3<i32>(arg_2.c, 1i, firstLeadingBit(26471i)) << (u_input.a.ywx % vec3<u32>(32u))), -12255i, global2.d, vec2<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(28045i, 2147483647i, global1.b.x, 2147483647i), vec4<i32>(arg_2.c, arg_3, 36808i, 0i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.b.x, -2147483647i), 0i), 1i)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = func_2(any(!arg_0), func_2(firstLeadingBit(countOneBits(global2.d)) == countOneBits(1u), arg_2, arg_2, firstLeadingBit(arg_2.e.x)), arg_2, firstLeadingBit(global2.c));
    let var_1 = Struct_1(_wgslsmith_add_i32(-1i, i32(-1i) * -global1.a), vec3<i32>(global2.c, ~(-1i), _wgslsmith_mult_i32(var_0.a, abs(var_0.a) ^ _wgslsmith_mult_i32(arg_2.b.x, 1i))), _wgslsmith_add_i32(abs(4135i), max(global2.c, -2147483647i)), _wgslsmith_mult_u32(arg_1.x, 1513u & ~(~arg_1.x)), vec2<i32>(~32219i, _wgslsmith_div_i32(-func_2(arg_0.x, arg_2, arg_2, global2.b.x).c, 1i)));
    let var_2 = ~(~(~u_input.a.zyz));
    var var_3 = firstTrailingBit(var_0.b);
    var_0 = Struct_1(1i, global2.b, global1.c | -1i, countOneBits(~(~(~arg_2.d))), vec2<i32>(1i << (var_2.x % 32u), -1i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1127f, _wgslsmith_div_f32(2635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(218f + -852f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1866f, -813f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = i32(-1i) * -1i;
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(868f))) - -557f), _wgslsmith_f_op_f32(func_5(vec3<bool>(global3.x, true, true), ~u_input.a.zy, func_2(any(vec2<bool>(global3.x, false)), Struct_1(-2147483647i, vec3<i32>(global2.c, -2147483647i, global1.a), global2.a, 1u, global1.e), Struct_1(global2.e.x, global2.b, global2.c, global2.d, vec2<i32>(0i, global2.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, global2.e.x), global2.b.xz))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(937f)) - -770f), 639f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-503f, -166f)))));
    global2 = Struct_1(abs(-((-7477i & global1.c) << ((global2.d & 1u) % 32u))), firstTrailingBit(~vec3<i32>(global2.a, i32(-1i) * -2147483647i, 1i)), _wgslsmith_mod_i32(max(29990i, -func_3(Struct_1(-4347i, vec3<i32>(global2.e.x, global2.a, global2.a), -2147483647i, global2.d, global2.e), vec2<f32>(var_2.x, -1191f), false, Struct_1(31941i, vec3<i32>(1i, -25496i, global1.a), global2.a, global2.d, global2.e)).x), ~(~(-global1.c))), ~global2.d, -global1.e);
    global3 = vec2<bool>(global3.x, !(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(func_5(vec3<bool>(global3.x, false, global3.x), vec2<u32>(global2.d, global2.d), Struct_1(3823i, global2.b, global2.c, 56120u, global1.b.yx)))) < -1000f));
    return Struct_1(51972i, ~min(~global1.b, vec3<i32>(firstLeadingBit(-2147483647i), global2.a, global1.a)), -1i, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(94404u, 4294967295u, 4294967295u, global1.d), vec4<u32>(1u, global2.d, 1656u, global1.d) << (u_input.a % vec4<u32>(32u))), 74174u) << (firstTrailingBit(firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, var_1))) % 32u), vec2<i32>(global2.b.x, _wgslsmith_mod_i32(reverseBits(global1.b.x), global1.c)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = func_2(all(select(select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false), global3.x), !vec2<bool>(global3.x, global3.x), global3.x), !vec2<bool>(global3.x, true), vec2<bool>(true, true))), func_2(!all(vec2<bool>(global3.x, global3.x)), func_1(), arg_2, arg_1.e.x), func_1(), -13516i);
    global0 = select(var_0.d, _wgslsmith_sub_u32(4294967295u, ~global2.d) | ~u_input.a.x, global3.x);
    var_0 = func_2(false, Struct_1(arg_0.b.x, vec3<i32>(arg_2.b.x, _wgslsmith_clamp_i32(-1i, select(var_0.a, arg_2.a, global3.x), arg_1.e.x), -1i), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, 5128i), max(vec2<i32>(4575i, -2147483647i), var_0.b.yy))), 35306u, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(var_0.b.zy, func_1().e), arg_0.e | func_1().b.yy)), Struct_1(~(~arg_2.e.x), ~(~reverseBits(vec3<i32>(28085i, 1i, arg_1.a))), global2.e.x, ~(~global1.d) & _wgslsmith_add_u32(25647u >> (0u % 32u), _wgslsmith_add_u32(70699u, 1u)), _wgslsmith_clamp_vec2_i32(firstLeadingBit(-vec2<i32>(11557i, -1i)), arg_1.b.xy, global2.b.yy)), select(_wgslsmith_div_i32(7712i, -(global2.e.x & 15943i)), -select(21970i, ~global2.a, true), any(vec2<bool>(true, select(true, global3.x, global3.x)))));
    let var_1 = arg_1.d;
    let var_2 = Struct_1(arg_0.b.x, vec3<i32>(firstLeadingBit(-_wgslsmith_mod_i32(32741i, -2147483647i)), (4017i ^ (-43350i << (arg_2.d % 32u))) ^ global2.a, -28931i), 1i, 40134u, _wgslsmith_add_vec2_i32(~vec2<i32>(arg_2.b.x, func_2(true, arg_2, arg_1, 2147483647i).b.x), vec2<i32>(~abs(-1i), (-2147483647i ^ arg_1.c) >> (arg_0.d % 32u))));
    return func_2(true, arg_0, Struct_1(arg_2.a, var_2.b, 0i, arg_3, func_1().e), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(), func_1(), func_1(), u_input.a.x);
    global3 = !vec2<bool>(global3.x, false);
    global0 = countOneBits(firstTrailingBit(u_input.a.x));
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~18710u, ~(1u << (global1.d % 32u))), abs(~(~u_input.a.wz)));
    var var_2 = select(_wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(9677u, global2.d, global2.d, global2.d), vec4<u32>(global2.d, u_input.a.x, 4294967295u, 80410u)), vec4<u32>(var_0.d, 59602u, 23111u, var_0.d) & vec4<u32>(28447u, global1.d, u_input.a.x, 1u))), firstLeadingBit(var_0.d) >> (global1.d % 32u), all(vec3<bool>(false, false, true)));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1f, -722f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-699f * 2485f) - _wgslsmith_f_op_f32(round(101f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + -1898f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1324f, -1809f))))));
}

