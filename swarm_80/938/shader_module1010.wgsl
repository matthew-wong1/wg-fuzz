struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(vec4<u32>(4294967295u, 90049u, 1u, 1u), 4294967295u);

var<private> global3: vec2<i32> = vec2<i32>(-63941i, 2147483647i);

var<private> global4: array<i32, 10> = array<i32, 10>(2147483647i, -1i, 0i, -49956i, -21270i, 2147483647i, i32(-2147483648), 0i, -29209i, 1i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<bool>(global1.b.x, !(true && global1.b.x), true);
    global2 = Struct_2(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, ~1u, global2.a.x, abs(global1.c.b)), ~vec4<u32>(87694u, global2.a.x, 53213u, global1.a.a.x))), u_input.a);
    let var_1 = global2.a;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.d.x, 597f, -683f))), _wgslsmith_f_op_vec3_f32(global1.d.yyw - vec3<f32>(global1.d.x, global1.d.x, global1.d.x)))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-399f, _wgslsmith_f_op_f32(2577f * global1.d.x))), -638f)), var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -354f));
    return !vec4<bool>((_wgslsmith_sub_u32(60694u, global2.a.x) << (~1u % 32u)) == 41918u, !(!all(vec4<bool>(false, false, false, global1.b.x))), any(!select(vec4<bool>(var_0.x, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(false, true, true, var_0.x), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), true);
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: i32) -> Struct_4 {
    let var_0 = 1067u;
    var var_1 = global1.c.a;
    let var_2 = Struct_1(countOneBits(vec4<u32>(4294967295u, 16521u, 69442u, ~(76153u >> (var_1.x % 32u)))), !select(func_3(), vec4<bool>(true, true, global1.c.a.x < arg_1, global1.b.x & global1.b.x), vec4<bool>(all(global1.b), !global1.b.x, true, !global1.b.x)));
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_1 {
    global0 = array<Struct_3, 2>();
    var var_0 = arg_0.xy;
    var var_1 = ~global1.c.a << (max(abs(~arg_2.a), ~arg_2.a) % vec4<u32>(32u));
    var_0 = select(global1.b, vec2<bool>(global1.b.x, !global1.b.x), select(!arg_2.b.x, !arg_0.x, !arg_2.b.x));
    let var_2 = func_2(Struct_4(global1.d.xyy), global2.a.x, -29325i);
    return Struct_1(global2.a, vec4<bool>(true | (global1.d.x < _wgslsmith_f_op_f32(f32(-1f) * -2469f)), var_0.x, false, all(func_3().zw)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = Struct_5(vec4<i32>(arg_0.x, global3.x ^ _wgslsmith_div_i32(1i, ~0i), -41971i, arg_0.x), func_1(arg_1.b, func_3(), func_1(func_1(func_3(), func_1(vec4<bool>(false, global1.b.x, global1.b.x, true), vec4<bool>(arg_1.b.x, global1.b.x, arg_1.b.x, global1.b.x), Struct_1(arg_1.a, vec4<bool>(true, false, global1.b.x, global1.b.x)), Struct_5(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 10u)], -2147483647i, -6970i, global4[_wgslsmith_index_u32(arg_1.a.x, 10u)]), arg_1, arg_1.a, global1.b.x, global0[_wgslsmith_index_u32(0u, 2u)])).b, func_1(arg_1.b, arg_1.b, Struct_1(global1.c.a, vec4<bool>(true, global1.b.x, true, true)), Struct_5(vec4<i32>(2147483647i, 0i, global4[_wgslsmith_index_u32(55380u, 10u)], global4[_wgslsmith_index_u32(25423u, 10u)]), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, global1.a.a.x), arg_1.b), vec4<u32>(global2.a.x, arg_1.a.x, 4294967295u, global1.a.a.x), true, global0[_wgslsmith_index_u32(1u, 2u)])), Struct_5(vec4<i32>(-2147483647i, 0i, arg_0.x, -1i), arg_1, vec4<u32>(1u, global1.c.b, global2.a.x, 20346u), arg_1.b.x, global0[_wgslsmith_index_u32(global1.c.b, 2u)])).b, arg_1.b, arg_1, Struct_5(vec4<i32>(1i, 2147483647i, global3.x, -1i), func_1(vec4<bool>(true, arg_1.b.x, true, false), arg_1.b, Struct_1(vec4<u32>(u_input.b.x, 9574u, global2.a.x, u_input.a), arg_1.b), Struct_5(vec4<i32>(arg_0.x, -2147483647i, arg_0.x, -15200i), arg_1, vec4<u32>(global1.c.b, 97981u, global1.c.b, 11170u), global1.b.x, global0[_wgslsmith_index_u32(10469u, 2u)])), ~global2.a, !global1.b.x, global0[_wgslsmith_index_u32(global1.c.a.x, 2u)])), Struct_5(vec4<i32>(arg_0.x, 1398i, global3.x, 2147483647i) | ~vec4<i32>(1i, -52004i, global4[_wgslsmith_index_u32(25814u, 10u)], global4[_wgslsmith_index_u32(15094u, 10u)]), Struct_1(vec4<u32>(14196u, 16006u, 0u, global1.a.b), vec4<bool>(global1.b.x, true, global1.b.x, true)), _wgslsmith_add_vec4_u32(firstTrailingBit(arg_1.a), func_1(arg_1.b, vec4<bool>(true, arg_1.b.x, false, true), Struct_1(vec4<u32>(global2.a.x, arg_1.a.x, 1u, 0u), vec4<bool>(global1.b.x, true, global1.b.x, false)), Struct_5(vec4<i32>(arg_0.x, global4[_wgslsmith_index_u32(13246u, 10u)], global4[_wgslsmith_index_u32(1u, 10u)], 71175i), arg_1, vec4<u32>(19710u, u_input.a, 13462u, 1u), global1.b.x, Struct_3(global1.a, arg_1.b.zz, global1.a, vec4<f32>(-857f, global1.d.x, -1541f, 1004f)))).a), true, global0[_wgslsmith_index_u32(~1u, 2u)])), countOneBits(global2.a), any(select(select(select(arg_1.b, vec4<bool>(true, global1.b.x, arg_1.b.x, global1.b.x), true), vec4<bool>(arg_1.b.x, false, global1.b.x, global1.b.x), !vec4<bool>(arg_1.b.x, global1.b.x, global1.b.x, global1.b.x)), arg_1.b, select(arg_1.b, arg_1.b, vec4<bool>(false, true, arg_1.b.x, true)))), Struct_3(global1.a, vec2<bool>(all(global1.b), any(!vec2<bool>(arg_1.b.x, true))), global1.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, 685f, -1000f, global1.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_div_f32(298f, global1.d.x), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(select(global1.d.x, global1.d.x, false))))));
    global4 = array<i32, 10>();
    global4 = array<i32, 10>();
    var var_1 = abs(reverseBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_2, 4294967295u, 62467u) >> (vec4<u32>(u_input.a, arg_2, 66004u, var_0.c.x) % vec4<u32>(32u)), ~arg_1.a), global2.a, !select(vec4<bool>(global1.b.x, var_0.d, false, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x)))));
    let var_2 = max(arg_1.a.zyw, ~(~_wgslsmith_mult_vec3_u32(select(arg_1.a.yyy, vec3<u32>(1u, 124392u, arg_1.a.x), true), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 61362u, 29098u), var_1.zwy))));
    return 54638u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    global1 = Struct_3(Struct_2(vec4<u32>(_wgslsmith_clamp_u32(global2.b, u_input.b.x, u_input.b.x), global2.a.x, 42234u, ~firstLeadingBit(20284u)), _wgslsmith_div_u32(func_4(vec2<i32>(0i, 2147483647i), func_1(vec4<bool>(var_0.x, false, global1.b.x, true), vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x), Struct_1(vec4<u32>(4294967295u, 35089u, u_input.c, u_input.b.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), Struct_5(vec4<i32>(0i, 31110i, 2147483647i, -1i), Struct_1(vec4<u32>(global2.a.x, 4294967295u, global1.c.a.x, 0u), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, var_0.x)), global1.a.a, true, Struct_3(global1.c, vec2<bool>(global1.b.x, global1.b.x), Struct_2(global2.a, u_input.c), vec4<f32>(-1089f, global1.d.x, global1.d.x, global1.d.x)))), global2.a.x), reverseBits(~0u))), func_1(vec4<bool>(func_3().x, global1.b.x, true, !var_0.x), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), Struct_1(vec4<u32>(552u, global2.a.x, ~1u, firstTrailingBit(u_input.b.x)), !vec4<bool>(var_0.x, true, false, global1.b.x)), Struct_5(select(vec4<i32>(-32646i, 2147483647i, -37517i, -8821i), vec4<i32>(global4[_wgslsmith_index_u32(global1.a.a.x, 10u)], global4[_wgslsmith_index_u32(1u, 10u)], 2147483647i, global3.x), vec4<bool>(false, false, false, true)) << (~global2.a % vec4<u32>(32u)), Struct_1(vec4<u32>(global2.a.x, global1.a.b, global2.b, 92835u) & global2.a, func_1(vec4<bool>(false, global1.b.x, true, var_0.x), vec4<bool>(false, false, false, var_0.x), Struct_1(global1.a.a, vec4<bool>(false, true, var_0.x, var_0.x)), Struct_5(vec4<i32>(0i, global3.x, global3.x, -1i), Struct_1(vec4<u32>(34840u, global2.a.x, global2.b, 1u), vec4<bool>(global1.b.x, false, false, true)), global2.a, false, global0[_wgslsmith_index_u32(4294967295u, 2u)])).b), ~reverseBits(vec4<u32>(global1.c.b, global1.c.b, global1.c.b, global2.b)), true, global0[_wgslsmith_index_u32((global1.a.b << (global2.a.x % 32u)) ^ global2.b, 2u)])).b.ww, Struct_2(_wgslsmith_mult_vec4_u32(~global2.a, global2.a), min(global1.a.b, ~(global1.a.a.x & u_input.a))), vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-231f - _wgslsmith_f_op_f32(max(-950f, -418f))), _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-1299f - global1.d.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1596f, -633f)), _wgslsmith_f_op_f32(-global1.d.x))), global1.d.x)));
    let var_1 = select(max(64494u, u_input.c), ~(~_wgslsmith_add_u32(global1.a.b | global1.a.b, firstTrailingBit(4294967295u))), true);
    let var_2 = func_2(Struct_4(_wgslsmith_f_op_vec3_f32(global1.d.zwy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.d.x, 662f, -737f), vec3<f32>(-551f, global1.d.x, 644f)))))), global2.b, ((-global4[_wgslsmith_index_u32(9233u, 10u)] >> (~var_1 % 32u)) ^ _wgslsmith_div_i32(0i, global3.x ^ 1i)) ^ ~(-max(1i, global3.x)));
    let var_3 = func_1(vec4<bool>(true, true, false, all(select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(global1.b.x, false, true, true), vec4<bool>(global1.b.x, var_0.x, var_0.x, false))) & global1.b.x), vec4<bool>(var_0.x, var_0.x && true, false, global4[_wgslsmith_index_u32(firstTrailingBit(global1.c.b) ^ countOneBits(30811u), 10u)] <= ~1i), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(3998u, reverseBits(u_input.a), ~global2.a.x, ~u_input.c), vec4<u32>(91926u << (1u % 32u), var_1, 447u, global1.c.b)), !func_3()), Struct_5(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global4[_wgslsmith_index_u32(u_input.a, 10u)], 0i) & vec3<i32>(2147483647i, 2147483647i, 23907i), vec3<i32>(18600i, -2147483647i, global3.x) >> (global2.a.zzx % vec3<u32>(32u))), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, min(u_input.b.x, var_1), ~109534u), 10u)], reverseBits(global4[_wgslsmith_index_u32(func_4(vec2<i32>(-2147483647i, global3.x), Struct_1(vec4<u32>(global2.a.x, 4294967295u, 0u, 4294967295u), vec4<bool>(false, true, var_0.x, global1.b.x)), global2.b), 10u)])), func_1(vec4<bool>(global1.b.x, true, global4[_wgslsmith_index_u32(1u, 10u)] <= -1i, global1.b.x), func_1(vec4<bool>(global1.b.x, global1.b.x, var_0.x, global1.b.x), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(false, global1.b.x, global1.b.x, false), false), func_1(vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_0.x, false, true, global1.b.x), Struct_1(global1.c.a, vec4<bool>(true, true, var_0.x, true)), Struct_5(vec4<i32>(1i, global4[_wgslsmith_index_u32(u_input.b.x, 10u)], global4[_wgslsmith_index_u32(12165u, 10u)], global4[_wgslsmith_index_u32(39530u, 10u)]), Struct_1(global2.a, vec4<bool>(global1.b.x, false, var_0.x, true)), vec4<u32>(1u, 1u, 15165u, var_1), var_0.x, global0[_wgslsmith_index_u32(0u, 2u)])), Struct_5(vec4<i32>(-21926i, global4[_wgslsmith_index_u32(1u, 10u)], global4[_wgslsmith_index_u32(global1.c.a.x, 10u)], 2147483647i), Struct_1(vec4<u32>(659u, var_1, 162065u, 40959u), vec4<bool>(false, var_0.x, true, var_0.x)), global2.a, var_0.x, Struct_3(Struct_2(global2.a, 1u), vec2<bool>(global1.b.x, false), Struct_2(vec4<u32>(global2.b, 57360u, 4294967295u, 29942u), 110u), vec4<f32>(var_2.a.x, 1072f, var_2.a.x, -398f)))).b, func_1(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), func_1(vec4<bool>(var_0.x, global1.b.x, var_0.x, var_0.x), vec4<bool>(true, false, false, false), Struct_1(vec4<u32>(24889u, u_input.c, global2.b, global2.a.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), Struct_5(vec4<i32>(-2147483647i, global3.x, global3.x, global3.x), Struct_1(vec4<u32>(0u, 12031u, 4294967295u, 0u), vec4<bool>(var_0.x, global1.b.x, global1.b.x, true)), vec4<u32>(0u, 38146u, global2.a.x, u_input.c), var_0.x, Struct_3(Struct_2(global2.a, global1.a.a.x), global1.b, global1.c, vec4<f32>(global1.d.x, 625f, 536f, -306f)))), Struct_5(vec4<i32>(global4[_wgslsmith_index_u32(1u, 10u)], 27890i, 27242i, 1i), Struct_1(vec4<u32>(29258u, global1.a.a.x, u_input.a, 21407u), vec4<bool>(false, var_0.x, false, global1.b.x)), vec4<u32>(global2.b, global1.c.a.x, var_1, 1u), var_0.x, Struct_3(global1.a, vec2<bool>(true, var_0.x), Struct_2(vec4<u32>(1u, global1.a.b, 0u, global1.c.a.x), 46256u), global1.d))), Struct_5(vec4<i32>(-2147483647i, -7692i, global3.x, global4[_wgslsmith_index_u32(global1.a.a.x, 10u)]), func_1(vec4<bool>(false, global1.b.x, true, global1.b.x), vec4<bool>(false, var_0.x, global1.b.x, global1.b.x), Struct_1(vec4<u32>(5399u, global1.a.b, 0u, 0u), vec4<bool>(true, var_0.x, false, var_0.x)), Struct_5(vec4<i32>(0i, 31951i, 7758i, global4[_wgslsmith_index_u32(83915u, 10u)]), Struct_1(global2.a, vec4<bool>(true, global1.b.x, false, global1.b.x)), global2.a, var_0.x, Struct_3(global1.a, global1.b, Struct_2(vec4<u32>(4294967295u, u_input.c, 13348u, u_input.a), var_1), vec4<f32>(var_2.a.x, var_2.a.x, 1387f, 1142f)))), vec4<u32>(15288u, global2.b, global1.a.b, global1.c.b) | vec4<u32>(105116u, global1.a.a.x, global2.a.x, 20551u), global1.b.x, global0[_wgslsmith_index_u32(reverseBits(u_input.c), 2u)])), vec4<u32>(~var_1, countOneBits(0u), ~_wgslsmith_div_u32(4294967295u, u_input.b.x), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(u_input.a, 4294967295u))), false, Struct_3(Struct_2(vec4<u32>(u_input.b.x, u_input.a, 129081u, 33587u), _wgslsmith_add_u32(global2.a.x, 0u)), global1.b, Struct_2(~vec4<u32>(0u, 4294967295u, 36789u, 1899u), _wgslsmith_clamp_u32(50146u, 12241u, u_input.c)), global1.d)));
    global0 = array<Struct_3, 2>();
    var var_4 = true;
    var var_5 = !all(vec2<bool>(var_3.b.x, var_0.x)) == select(all(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 10u)] <= 34028i, func_1(var_3.b, var_3.b, Struct_1(global1.c.a, var_3.b), Struct_5(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 10u)], global4[_wgslsmith_index_u32(global1.a.a.x, 10u)], global4[_wgslsmith_index_u32(var_1, 10u)], -10317i), var_3, global2.a, var_0.x, Struct_3(global1.a, var_3.b.wz, global1.c, vec4<f32>(-588f, global1.d.x, -184f, global1.d.x)))).b.x, false)), true, (firstLeadingBit(41552u) ^ ~global2.a.x) <= _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.c.a.x, var_3.a.x), select(vec2<u32>(9929u, 4294967295u), global1.a.a.wx, var_3.b.wz)));
    var var_6 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global3.x), _wgslsmith_f_op_f32(abs(var_2.a.x)), 986f);
}

