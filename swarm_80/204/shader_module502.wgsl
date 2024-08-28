struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(-281f));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1000f), Struct_1(-868f), Struct_1(-133f), Struct_1(297f), Struct_1(244f), Struct_1(1378f), Struct_1(680f), Struct_1(1000f), Struct_1(1577f), Struct_1(-556f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1658f, global0.a.a)))) + _wgslsmith_f_op_f32(-global0.a.a))));
    let var_0 = 13508i << (reverseBits(u_input.c | ~(~1u)) % 32u);
    let var_1 = u_input.c;
    global1 = array<Struct_1, 10>();
    let var_2 = Struct_4(Struct_2(_wgslsmith_sub_u32(var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 32826u, 13796u, var_1), ~vec4<u32>(1u, 0u, u_input.c, 1u)))), ~u_input.c, Struct_3(1f, ~(~(~u_input.c)), vec4<u32>(~(~u_input.c), 1u | (var_1 | 42121u), _wgslsmith_mult_u32(~u_input.c, var_1), var_1), Struct_1(_wgslsmith_f_op_f32(-global0.a.a)), global0.a), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(492f)), -1626f)), _wgslsmith_f_op_f32(floor(-1322f)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-2147483647i, -15872i, -8065i, 19108i)) > firstLeadingBit(-1i))), 1505f), arg_0);
    return var_2.c.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> Struct_5 {
    let var_0 = reverseBits(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-37414i, ~min(0i, -52383i))));
    var var_1 = Struct_4(Struct_2(1u), _wgslsmith_mod_u32(arg_0.x, ~arg_0.x) >> (max(min(~u_input.c, u_input.c), firstTrailingBit(37965u) >> (arg_0.x % 32u)) % 32u), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a, global0.a.a) - _wgslsmith_f_op_f32(select(-1000f, -579f, true)))), 33411u, func_3(!any(vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a))), global1[_wgslsmith_index_u32(select(u_input.c, (61786u ^ u_input.c) ^ (arg_0.x | 7315u), true), 10u)]), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-227f)))), 1000f), arg_1.x), true);
    var var_2 = ~54136u;
    var_2 = min(1u, 33148u);
    var_2 = ~(abs(~1u) << (abs(select(u_input.c, 14164u, arg_1.x >= -184f)) % 32u));
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = ~19788u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, global0.a.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * 759f);
    var_0 = max(~(~1u), ~u_input.c) ^ 60512u;
    var var_2 = ~(vec3<i32>(_wgslsmith_sub_i32(-48700i, arg_3.x), ~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(6638i, u_input.a.x, arg_3.x, 25716i), vec4<i32>(arg_3.x, 0i, arg_3.x, 18046i))) | (u_input.b.wyx | ~u_input.a)) << (~_wgslsmith_div_vec3_u32(~(~vec3<u32>(16174u, u_input.c, 24961u)), ~vec3<u32>(0u, u_input.c, 4294967295u)) % vec3<u32>(32u));
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(116041u, u_input.c, u_input.c) << (vec3<u32>(69394u, 53345u, u_input.c) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4049u, 4294967295u), vec3<u32>(u_input.c, 1u, 4294967295u)))), u_input.c), u_input.c);
    return Struct_3(1000f, var_3.x, (abs(abs(vec4<u32>(var_3.x, 45075u, var_3.x, u_input.c))) | ~(~vec4<u32>(var_3.x, 1u, u_input.c, var_3.x))) >> (vec4<u32>(~11318u, ~1u, 1u, ~var_3.x) % vec4<u32>(32u)), func_2(~(~(~vec3<u32>(34954u, 29210u, u_input.c))), vec3<f32>(global0.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(-arg_0.a.a))).a, Struct_1(_wgslsmith_f_op_f32(ceil(200f))));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    global1 = array<Struct_1, 10>();
    return vec3<bool>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-24096i, -35699i)), u_input.b.xx) >= ~9603i, false, 30523i < u_input.b.x);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.a.a)), _wgslsmith_f_op_f32(-global0.a.a)) * vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_div_f32(global0.a.a, -262f)))))));
    let var_1 = 1i;
    global1 = array<Struct_1, 10>();
    var var_2 = select(vec3<bool>(-1i < u_input.b.x, !(any(vec3<bool>(false, false, true)) == false), any(vec2<bool>(true, true))), func_5(~u_input.a.x, func_4(Struct_5(global0.a), func_2(~vec3<u32>(u_input.c, 114611u, u_input.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1438f, var_0.x), vec3<f32>(216f, -538f, var_0.x), vec3<bool>(false, false, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, var_0.x, global0.a.a, var_0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 204f, 1785f, 507f), vec4<f32>(global0.a.a, var_0.x, var_0.x, 1635f)))), _wgslsmith_sub_vec2_i32(select(u_input.b.wz, u_input.a.zz, true), u_input.a.zx))), select(vec3<bool>(any(vec3<bool>(true, true, true)), !all(vec4<bool>(true, false, false, false)), true), !func_5(var_1, Struct_3(-748f, 136u, vec4<u32>(18063u, 17250u, u_input.c, u_input.c), global0.a, Struct_1(var_0.x))), false));
    let var_3 = _wgslsmith_f_op_f32(ceil(global0.a.a));
    return _wgslsmith_sub_u32(u_input.c, select(_wgslsmith_add_u32(u_input.c, ~func_3(var_2.x).x), firstTrailingBit(_wgslsmith_dot_vec2_u32(func_3(false).yw, max(vec2<u32>(u_input.c, 0u), vec2<u32>(38906u, u_input.c)))), any(var_2.xy)));
}

fn func_6(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = u_input.b.yww;
    var var_1 = Struct_2(abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 0u, 5031u, 22857u), _wgslsmith_add_vec4_u32(arg_0, arg_0))));
    let var_2 = _wgslsmith_mult_u32(func_3(true).x, var_1.a) >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.x, _wgslsmith_mod_u32(1u, var_1.a)) >> (_wgslsmith_sub_u32(12090u, min(var_1.a, u_input.c)) % 32u), 23995u) % 32u);
    let var_3 = Struct_3(697f, 0u | select(~1u, arg_3.a, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), vec4<u32>(u_input.c, _wgslsmith_mod_u32(abs(_wgslsmith_div_u32(0u, 1u)), abs(var_2)), 876u, 1u), global1[_wgslsmith_index_u32(4044u, 10u)], func_4(func_2(arg_0.zxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1899f, global0.a.a, global0.a.a)) * vec3<f32>(-1633f, 860f, global0.a.a))), Struct_5(Struct_1(global0.a.a)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.a + global0.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1299f - -1007f) - -1937f), _wgslsmith_div_f32(-893f, global0.a.a), -615f), vec2<i32>(~_wgslsmith_mod_i32(-2147483647i, u_input.a.x), var_0.x)).e);
    var_1 = arg_2;
    return var_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(func_6(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, 21893u), vec4<u32>(u_input.c, 68922u, u_input.c, u_input.c))) | vec4<u32>(35779u, u_input.c, 77633u, func_1()), ~(abs(u_input.c) ^ _wgslsmith_clamp_u32(48187u, u_input.c, u_input.c)), Struct_2(1u >> (u_input.c % 32u)), Struct_2(~u_input.c)));
    var var_0 = abs(firstLeadingBit(_wgslsmith_add_vec4_i32(select(~u_input.b, u_input.b, false), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i))));
    global0 = Struct_5(global0.a);
    let var_1 = Struct_2(4294967295u);
    var var_2 = Struct_4(Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a, var_1.a), ~select(vec2<u32>(var_1.a, var_1.a), vec2<u32>(935u, u_input.c), vec2<bool>(false, false)))), ~var_1.a, Struct_3(_wgslsmith_f_op_f32(-1570f + global0.a.a), ~reverseBits(1u), vec4<u32>(~min(u_input.c, u_input.c), 7773u, ~(u_input.c | var_1.a), _wgslsmith_mod_u32(_wgslsmith_sub_u32(59445u, u_input.c), _wgslsmith_mod_u32(1u, var_1.a))), global1[_wgslsmith_index_u32(u_input.c, 10u)], Struct_1(_wgslsmith_f_op_f32(1014f * _wgslsmith_f_op_f32(-global0.a.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1011f)))) + vec2<f32>(_wgslsmith_f_op_f32(global0.a.a + global0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)))), false);
    let var_3 = _wgslsmith_dot_vec2_u32(select(~countOneBits(vec2<u32>(var_1.a, 4294967295u)), _wgslsmith_mult_vec2_u32(~(vec2<u32>(var_2.c.b, 0u) ^ var_2.c.c.yy), vec2<u32>(~var_1.a, u_input.c)), select(var_2.e, u_input.b.x == _wgslsmith_div_i32(-2417i, var_0.x), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(var_2.e, true, var_2.e))))), var_2.c.c.xy);
    var var_4 = max(32014u, 704u);
    let var_5 = Struct_2(func_1() << (var_3 % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1018f * global0.a.a))), _wgslsmith_f_op_f32(var_2.c.d.a + _wgslsmith_f_op_f32(global0.a.a + var_2.c.a)), 729f)), -_wgslsmith_mult_vec2_i32(~max(vec2<i32>(var_0.x, var_0.x), u_input.a.yy), vec2<i32>(-1i, var_0.x ^ u_input.a.x)), var_2.d.x, 1u);
}

