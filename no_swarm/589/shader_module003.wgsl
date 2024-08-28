struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<bool, 31>;

var<private> global2: array<Struct_2, 12>;

var<private> global3: array<bool, 22>;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<u32>) -> bool {
    let var_0 = vec2<f32>(-897f, -629f);
    global2 = array<Struct_2, 12>();
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(var_0, vec2<f32>(-411f, var_0.x))), vec2<f32>(var_0.x, -264f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(var_0.x, -1217f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -479f))))))));
    let var_2 = vec3<f32>(var_1.x, -437f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1118f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f) - _wgslsmith_f_op_f32(f32(-1f) * -197f))), var_1.x));
    let var_3 = (select(arg_3.x, max(~14215u, 28144u), true) << (arg_3.x % 32u)) & ~arg_0.a;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1151f))) + arg_1.x));
    var var_1 = arg_1;
    global0 = array<i32, 27>();
    var var_2 = u_input.c;
    global4 = (~41903u > var_2.x) & global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.b.x, var_2.x, u_input.a, 0u)), ~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)) | ~_wgslsmith_add_u32(~var_2.x, u_input.a ^ 4294967295u), 22u)];
    return firstTrailingBit(u_input.b.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: bool) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(func_4(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], true, arg_1), true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 22u)], true, false), vec3<bool>(true, true, true)), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 31u)]), func_3(Struct_1(38979u), Struct_2(Struct_1(0u), Struct_1(4294967295u), Struct_1(u_input.c.x)), vec4<i32>(31336i, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 4256i, -2147483647i), vec2<u32>(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-402f, -617f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1479f, 2786f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(262f, -540f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(743f, 481f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-357f, -952f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-488f, -440f)))))), 31u)];
    let var_1 = Struct_1(_wgslsmith_clamp_u32(firstTrailingBit(~u_input.b.x), min(abs(_wgslsmith_sub_u32(u_input.b.x, u_input.c.x)), ~(~u_input.c.x)), 1u));
    var var_2 = Struct_2(Struct_1(~var_1.a), Struct_1(1u), Struct_1(4294967295u));
    var var_3 = Struct_2(var_2.a, Struct_1(_wgslsmith_dot_vec3_u32(u_input.b, reverseBits(~u_input.b))), var_2.c);
    return ~(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 28585u, 1u, 41829u), ~vec4<u32>(var_1.a, var_1.a, var_1.a, 0u), vec4<u32>(var_2.a.a, var_3.c.a, var_1.a, 1u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = 26948i;
    global2 = array<Struct_2, 12>();
    let var_1 = arg_1.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1701f * -653f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-183f + 261f), -128f)), global1[_wgslsmith_index_u32(abs(0u), 31u)])) - -376f));
    let var_3 = arg_1.a.a;
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~u_input.c.x);
    global2 = array<Struct_2, 12>();
    var var_1 = func_5(func_2(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-23193i, -18823i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 27u)], -2147483647i) << (vec2<u32>(42701u, 4294967295u) % vec2<u32>(32u))), -vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_0.a, 27u)]) << (firstLeadingBit(u_input.c) % vec2<u32>(32u))), false, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 101915u) ^ ~max(43563u, var_0.a), 27u)], false), global2[_wgslsmith_index_u32(~22425u, 12u)]);
    let var_2 = global1[_wgslsmith_index_u32(var_1.a, 31u)];
    var var_3 = -1i;
    return func_5(vec4<u32>(~firstLeadingBit(13979u), ~var_0.a << (u_input.b.x % 32u), _wgslsmith_add_u32(7339u | var_1.a, u_input.a), (var_1.a >> (20403u % 32u)) << (select(22766u, 105346u, global1[_wgslsmith_index_u32(1u, 31u)]) % 32u)) >> (abs(select(~vec4<u32>(31927u, u_input.a, var_0.a, 101947u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, u_input.a, 17813u, u_input.a), vec4<u32>(11045u, 0u, u_input.a, 25087u)), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(38410u, 22u)], global1[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(var_1.a, 22u)]))) % vec4<u32>(32u)), Struct_2(func_5(vec4<u32>(~var_1.a, 69609u, abs(var_0.a), ~var_1.a), Struct_2(func_5(vec4<u32>(64389u, var_0.a, 15396u, var_1.a), Struct_2(Struct_1(var_1.a), Struct_1(6086u), Struct_1(u_input.a))), func_5(vec4<u32>(1u, 14201u, var_1.a, 0u), Struct_2(Struct_1(var_1.a), Struct_1(1u), Struct_1(var_1.a))), func_5(vec4<u32>(u_input.c.x, 4294967295u, u_input.b.x, 75138u), global2[_wgslsmith_index_u32(var_1.a, 12u)]))), func_5(~vec4<u32>(41109u, var_1.a, 9614u, var_1.a), Struct_2(func_5(vec4<u32>(var_1.a, var_1.a, 1u, u_input.c.x), global2[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_1(336u), func_5(vec4<u32>(u_input.b.x, u_input.c.x, 3811u, var_0.a), Struct_2(Struct_1(var_0.a), Struct_1(27044u), Struct_1(var_1.a))))), Struct_1(1u)));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    global1 = array<bool, 31>();
    global4 = global3[_wgslsmith_index_u32(4294967295u, 22u)] || true;
    global3 = array<bool, 22>();
    global4 = arg_3.x != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1128f * _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x)));
    var var_0 = func_5(_wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_2.a, arg_1, 1u, arg_0.a) | (vec4<u32>(19115u, arg_0.a, arg_0.a, 4294967295u) ^ vec4<u32>(4294967295u, 1u, 55555u, 29820u))), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_2.a, 1u, arg_0.a))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 23905u, 53367u, u_input.b.x), vec4<u32>(5989u, arg_1, 1u, 32831u))), 35056u, _wgslsmith_mod_u32(~u_input.a, ~arg_2.a))), Struct_2(Struct_1(_wgslsmith_sub_u32(1u, arg_0.a & arg_1)), Struct_1(_wgslsmith_mult_u32(arg_1, func_2(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], -2147483647i), global1[_wgslsmith_index_u32(45759u, 31u)], global0[_wgslsmith_index_u32(arg_0.a, 27u)], global3[_wgslsmith_index_u32(0u, 22u)]).x)), func_5(~(~vec4<u32>(arg_2.a, 9004u, 9205u, u_input.c.x)), Struct_2(func_5(vec4<u32>(arg_2.a, 0u, 130116u, u_input.a), Struct_2(arg_2, arg_2, arg_2)), arg_2, Struct_1(arg_1)))));
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-_wgslsmith_add_i32(i32(-1i) * -84297i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(~1u, 27u)], _wgslsmith_div_i32(0i, global0[_wgslsmith_index_u32(1u, 27u)]))), global0[_wgslsmith_index_u32(4294967295u, 27u)] & abs(func_6(Struct_1(0u), reverseBits(u_input.c.x), func_1(), vec3<f32>(1000f, -1427f, 2340f))));
    let var_1 = Struct_1(u_input.b.x);
    let var_2 = var_0.x;
    let var_3 = var_1.a;
    var var_4 = var_3;
    let var_5 = Struct_1(~var_1.a);
    var var_6 = abs(-2147483647i) << (min(~var_5.a, func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(38458i, 2147483647i), var_0, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], var_2)), any(vec3<bool>(false, true, true)), countOneBits(var_2), any(vec2<bool>(true, false))).x >> (~firstTrailingBit(var_1.a) % 32u)) % 32u);
    let var_7 = ~reverseBits(1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~4129u), -(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2147483647i, 33564i, var_2)));
}

