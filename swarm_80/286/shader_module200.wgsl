struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true));

var<private> global1: array<f32, 1> = array<f32, 1>(262f);

var<private> global2: array<Struct_2, 31>;

var<private> global3: vec4<f32> = vec4<f32>(159f, 374f, -554f, 1461f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, abs(1u)), _wgslsmith_div_vec2_u32(~(~vec2<u32>(62611u, 64572u)), firstLeadingBit(vec2<u32>(u_input.a, 38374u)))) << (select(~(~select(u_input.b, u_input.b, global0.a.x)), abs(arg_2.a), false) % 32u), 31u)];
    global2 = array<Struct_2, 31>();
    global0 = global2[_wgslsmith_index_u32(1u, 31u)];
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, arg_2.a, ~(u_input.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(66470u, 1u, 1u, u_input.b), vec4<u32>(u_input.c, 5311u, 24739u, 0u)) % 32u))), ~(~vec3<u32>(1u, arg_2.a, arg_2.b) & (vec3<u32>(0u, u_input.c, 1u) & select(vec3<u32>(u_input.c, arg_2.a, 1u), vec3<u32>(arg_2.b, u_input.a, 1u), vec3<bool>(global0.a.x, false, false)))));
    var var_2 = Struct_1(arg_2.b | _wgslsmith_div_u32(var_1.x, var_1.x), ~(~arg_2.b), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d)));
    return 4410u;
}

fn func_2() -> Struct_1 {
    let var_0 = ~40161i;
    global2 = array<Struct_2, 31>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-499f, global3.x, 1662f, global1[_wgslsmith_index_u32(u_input.a, 1u)]) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 2082f, -1288f, global1[_wgslsmith_index_u32(u_input.a, 1u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2373f, 1008f, -1223f, global3.x)))))));
    let var_1 = Struct_1(25356u, ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(20777u, 4294967295u)), true, vec2<f32>(-164f, global1[_wgslsmith_index_u32(u_input.c, 1u)]));
    let var_2 = min(~vec2<u32>(32952u >> (1u % 32u), 516u), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32((vec2<u32>(u_input.c, u_input.a) << (vec2<u32>(71418u, 3933u) % vec2<u32>(32u))) ^ ~vec2<u32>(1u, u_input.b), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, 29788u)), ~(~vec2<u32>(37395u, 15689u))), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(64068u, u_input.b), vec2<u32>(1u, 0u)))));
    return Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(func_3(vec3<i32>(40528i, 14461i, var_0), var_0, var_1), var_1.a & 51184u), vec2<u32>(var_1.b, _wgslsmith_add_u32(1u, u_input.c)) | vec2<u32>(18578u, u_input.a)), abs(select(~1u, _wgslsmith_add_u32(var_2.x, u_input.b & u_input.a), false)), any(vec2<bool>(global0.a.x, !(var_1.d.x >= global3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2621f, global3.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(2900u, 1u)], 267f) * vec2<f32>(global1[_wgslsmith_index_u32(0u, 1u)], 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(-759f, global3.x), global3.wy), var_0 >= var_0))))));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    global0 = Struct_2(!(!vec2<bool>(true, all(vec2<bool>(global0.a.x, arg_0.a.x)))));
    let var_0 = func_2();
    let var_1 = Struct_2(vec2<bool>(true, global0.a.x));
    let var_2 = vec4<i32>(u_input.e, _wgslsmith_div_i32(u_input.d.x, ~u_input.e), _wgslsmith_mult_i32(-2147483647i, countOneBits(u_input.d.x)) & -1i, _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(5768i, u_input.d.x, u_input.d.x), u_input.d.zwy ^ u_input.d.zyz)), ~(~2147483647i), 1i));
    global0 = arg_0;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1225f, global3.x, -1730f, global3.x), vec4<f32>(global1[_wgslsmith_index_u32(37202u, 1u)], 891f, 107f, global3.x))), vec4<f32>(-131f, global3.x, -1000f, global1[_wgslsmith_index_u32(u_input.c, 1u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-995f, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], -511f)))), vec4<f32>(global3.x, global1[_wgslsmith_index_u32(min(u_input.c << (58753u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(18267u, u_input.b), vec2<u32>(u_input.c, u_input.a))), 1u)], global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global3.x, global3.x, global0.a.x)), -253f, true))))));
    global2 = array<Struct_2, 31>();
    global1 = array<f32, 1>();
    global3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f - 2792f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-899f * -1517f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 1u)])))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(308f - 1227f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~u_input.c, 1u)])) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x + global1[_wgslsmith_index_u32(1u, 1u)])))) * _wgslsmith_f_op_f32(228f - _wgslsmith_f_op_f32(-355f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 1u)] * global1[_wgslsmith_index_u32(1u, 1u)])))), global1[_wgslsmith_index_u32(abs(0u), 1u)]);
    let var_1 = global2[_wgslsmith_index_u32(64771u, 31u)];
    let var_2 = abs(select(vec4<i32>(~(~u_input.e), abs(var_0) & min(u_input.d.x, 0i), i32(-1i) * -1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 50330i), u_input.d.zz)), firstTrailingBit(-vec4<i32>(-2147483647i, u_input.d.x, var_0, u_input.d.x)) & _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 39417i, 43949i, 2147483647i), u_input.d, vec4<i32>(-2147483647i, 1i, 23797i, u_input.d.x)), -vec4<i32>(-13419i, 0i, 0i, var_0)), vec4<bool>(true, all(func_1(global2[_wgslsmith_index_u32(u_input.b, 31u)])), global0.a.x, !any(global0.a))));
    global2 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(0i << (u_input.a % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.e, u_input.e) | _wgslsmith_div_i32(var_2.x, u_input.d.x), var_2.x)), global1[_wgslsmith_index_u32(29660u << (u_input.b % 32u), 1u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, -291f, global1[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global1[_wgslsmith_index_u32(u_input.c, 1u)], -1125f, global3.x) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global3.x, global1[_wgslsmith_index_u32(u_input.c, 1u)], -1112f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1617f, global3.x, -1553f), vec4<f32>(-1000f, 2456f, -898f, 1472f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 491f, global3.x, global1[_wgslsmith_index_u32(u_input.c, 1u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1274f, global3.x, -1756f, global1[_wgslsmith_index_u32(u_input.c, 1u)])) - _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], 454f, -805f, -1000f), vec4<f32>(-1082f, 1000f, -1000f, -397f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global3.x, -856f, -777f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1892f, global1[_wgslsmith_index_u32(34081u, 1u)], global1[_wgslsmith_index_u32(76964u, 1u)], -1544f))))), max(-_wgslsmith_mod_vec3_i32(u_input.d.wzz >> (vec3<u32>(u_input.c, 71598u, u_input.c) % vec3<u32>(32u)), min(u_input.d.xwz, vec3<i32>(-15445i, -46630i, var_2.x))), abs(~(~var_2.wyx))));
}

