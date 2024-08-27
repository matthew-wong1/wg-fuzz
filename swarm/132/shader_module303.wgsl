struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -3946i, 12732i, 64906i);

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(false, vec3<f32>(-2002f, -994f, 592f), vec3<bool>(false, true, true), Struct_1(vec3<i32>(1i, 26470i, -75714i), i32(-2147483648), 507f, vec2<bool>(false, false))), Struct_2(false, vec3<f32>(602f, 1023f, -1719f), vec3<bool>(false, false, true), Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), 542i, -217f, vec2<bool>(false, false))), Struct_2(false, vec3<f32>(-3211f, 1210f, 171f), vec3<bool>(true, false, true), Struct_1(vec3<i32>(1i, 25805i, 2147483647i), 1760i, -259f, vec2<bool>(false, false))), Struct_2(true, vec3<f32>(460f, 947f, 884f), vec3<bool>(true, false, true), Struct_1(vec3<i32>(0i, 0i, 56018i), 1i, -1997f, vec2<bool>(true, false))), Struct_2(false, vec3<f32>(1000f, -555f, 1296f), vec3<bool>(false, false, false), Struct_1(vec3<i32>(2147483647i, 1i, 40838i), 82165i, -389f, vec2<bool>(true, true))), Struct_2(false, vec3<f32>(514f, 1999f, -321f), vec3<bool>(false, false, true), Struct_1(vec3<i32>(0i, -1i, 7277i), 6943i, 1000f, vec2<bool>(true, true))), Struct_2(false, vec3<f32>(-764f, 156f, 2242f), vec3<bool>(true, false, false), Struct_1(vec3<i32>(8490i, 0i, -37932i), i32(-2147483648), -147f, vec2<bool>(true, true))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool) -> vec4<i32> {
    let var_0 = abs(global0.yz);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(sign(1818f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1494f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1691f + 174f)))));
    let var_2 = Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-548f * var_1), _wgslsmith_f_op_f32(round(-1149f)), _wgslsmith_f_op_f32(min(var_1, -347f))))), vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1308f, var_1)) == _wgslsmith_f_op_f32(-585f - -1389f), arg_2), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-4563i, max(global0.x, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), global0.yy)), vec3<i32>(_wgslsmith_add_i32(-51341i, global0.x), -u_input.e.x, global0.x)), -78093i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1, var_1)))), select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), arg_2), !vec2<bool>(arg_1, arg_1), all(vec3<bool>(arg_1, arg_1, arg_1))), !(!vec2<bool>(true, arg_1)), select(!vec2<bool>(arg_1, arg_2), select(vec2<bool>(arg_1, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(arg_2, false), vec2<bool>(arg_1, false), vec2<bool>(arg_2, true))))));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(global0.x ^ -1i), firstTrailingBit(_wgslsmith_mod_i32(14982i, -13068i))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(global0.x), _wgslsmith_sub_i32(u_input.e.x, var_2.d.a.x), ~2147483647i), _wgslsmith_dot_vec2_i32(var_2.d.a.xy >> (vec2<u32>(arg_0, 11072u) % vec2<u32>(32u)), -global0.xw)), _wgslsmith_sub_i32(var_0.x, ~var_0.x), var_0.x ^ ~(-1i)), vec4<i32>(~(var_0.x >> (~0u % 32u)), abs(_wgslsmith_clamp_i32(2147483647i, var_2.d.a.x, u_input.c) ^ 2147483647i), -u_input.b.x, _wgslsmith_sub_i32(min(-2147483647i, abs(var_2.d.a.x)), select(10270i, firstLeadingBit(global0.x), true || var_2.a))));
    var var_3 = arg_1 || true;
    return vec4<i32>(_wgslsmith_clamp_i32(select(i32(-1i) * -60352i, _wgslsmith_mult_i32(~u_input.c, firstTrailingBit(-1i)), any(!vec3<bool>(var_2.a, var_2.d.d.x, false))), 2147483647i, 0i), -select(u_input.b.x, abs(_wgslsmith_sub_i32(u_input.c, u_input.b.x)), var_2.c.x), -1i, ~1i);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(0u, 7u)];
    let var_1 = global0.x;
    var var_2 = arg_1.x;
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(arg_2, -_wgslsmith_add_vec4_i32(arg_2, arg_2)) << (((vec4<u32>(14402u, 78765u, 43323u, 80403u) & ~vec4<u32>(225u, 4294967295u, arg_1.x, 54917u)) & firstTrailingBit(select(u_input.d, vec4<u32>(arg_1.x, arg_1.x, 27976u, 4294967295u), vec4<bool>(true, var_0.c.x, false, true)))) % vec4<u32>(32u)), func_3(_wgslsmith_mod_u32(countOneBits(arg_1.x), ~1u), var_0.c.x, arg_0.x));
    var_0 = global1[_wgslsmith_index_u32(reverseBits(~1u), 7u)];
    return Struct_1(select(-vec3<i32>(~var_0.d.a.x, i32(-1i) * -1i, -24281i), vec3<i32>(515i, -20470i, -max(-24434i, -2147483647i)), !(var_0.b.x < var_0.d.c)), _wgslsmith_mod_i32(arg_2.x, -(~global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -119f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1737f + -342f))))), var_0.c.xy);
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 787f, -329f, 130f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(689f, -1274f, 340f, arg_0.c) - vec4<f32>(-576f, arg_0.c, arg_0.c, 1150f)), vec4<bool>(arg_0.d.x, false, true, false)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, arg_0.c, -378f, -338f)) + _wgslsmith_div_vec4_f32(vec4<f32>(133f, arg_0.c, arg_0.c, arg_0.c), vec4<f32>(arg_0.c, arg_0.c, 1116f, arg_0.c))))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> f32 {
    var var_0 = arg_1;
    let var_1 = ~(~(~firstLeadingBit(u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(960f, arg_1, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-622f, arg_1, arg_1, 1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -889f, arg_1, -1222f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 157f, -1668f, arg_1))))) * _wgslsmith_f_op_vec4_f32(func_4(func_2(!(!vec4<bool>(true, arg_0.x, false, arg_0.x)), ~_wgslsmith_div_vec3_u32(u_input.a.yyx, vec3<u32>(1345u, 12203u, 0u)), -(vec4<i32>(-29178i, u_input.c, u_input.e.x, -26039i) & vec4<i32>(1i, global0.x, -44794i, u_input.e.x))))));
    global1 = array<Struct_2, 7>();
    var var_3 = reverseBits(~_wgslsmith_dot_vec3_u32(u_input.d.zxz, vec3<u32>(countOneBits(4294967295u), 60439u, 50839u)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -249f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(0i ^ firstTrailingBit(-1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-35316i, -1i), _wgslsmith_div_i32(5184i, u_input.c)), -(u_input.e >> (vec2<u32>(u_input.d.x, 1u) % vec2<u32>(32u)))), 0i);
    let var_1 = ((~u_input.d.yz >> (vec2<u32>(~47374u, u_input.d.x) % vec2<u32>(32u))) ^ ~vec2<u32>(u_input.d.x, 1298u)) << (~vec2<u32>(select(56129u, 17095u, true), u_input.d.x) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), 361f)));
    var var_3 = u_input.b.zx;
    var_0 = global0.zxy;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-2156f - _wgslsmith_f_op_f32(round(func_2(vec4<bool>(true, true, true, true), vec3<u32>(var_1.x, 0u, 8414u) << (u_input.a.yww % vec3<u32>(32u)), vec4<i32>(global0.x, 1i, var_3.x, var_3.x)).c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2))), var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, select(true, true, false)), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(max(1000f, -692f))))) * _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, select(true, true, false), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 * var_2)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))) + var_2) * var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_4.x)), var_2, -var_3.x ^ _wgslsmith_div_i32(7058i, -17942i | (2147483647i & u_input.e.x)), vec4<u32>(17696u, 1u, u_input.d.x << (_wgslsmith_dot_vec2_u32(u_input.a.yz, var_1) % 32u), ~(_wgslsmith_sub_u32(1u, u_input.a.x) & abs(10089u))));
}

