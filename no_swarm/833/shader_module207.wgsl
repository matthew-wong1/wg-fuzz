struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2>;

var<private> global1: vec4<u32>;

var<private> global2: vec3<f32> = vec3<f32>(1000f, -2274f, -311f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> vec4<u32> {
    var var_0 = global2.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -366f);
    global1 = min(reverseBits(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1.x, u_input.a, u_input.a), global1.x), ~0u, ~_wgslsmith_div_u32(u_input.a, u_input.a), ~(~global1.x))), vec4<u32>(((13605u & arg_0) ^ (105185u & u_input.a)) & (min(global1.x, 49289u) | arg_0), ~arg_0, global1.x, arg_0));
    var var_2 = ~(vec2<u32>((4294967295u & arg_0) >> (~arg_0 % 32u), _wgslsmith_div_u32(arg_0, 15872u) >> (_wgslsmith_clamp_u32(arg_0, arg_0, arg_0) % 32u)) & ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), ~global1.xx));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-770f, -1044f)), var_1, true))), var_1, global2.x)));
    return countOneBits(vec4<u32>(min(50671u & u_input.a, firstLeadingBit(_wgslsmith_mod_u32(arg_0, 29377u))), firstTrailingBit(~48908u), global1.x, 0u));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_clamp_vec4_u32(~abs(~vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) ^ countOneBits(vec4<u32>(1u, 22526u, 4294967295u, 13020u))), min(~func_3(~global1.x, global0[_wgslsmith_index_u32(1u, 2u)]), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 38282u, u_input.a, global1.x), vec4<u32>(u_input.a, u_input.a, 67292u, u_input.a)), abs(vec4<u32>(19621u, 1u, 4294967295u, u_input.a)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)))), vec4<u32>(66505u, global1.x, global1.x, 41220u) << (func_3(min(global1.x, 14192u), Struct_5(_wgslsmith_sub_i32(-9927i, 0i))) % vec4<u32>(32u)));
    global1 = countOneBits(reverseBits(var_0));
    let var_1 = vec4<i32>(-19124i, abs(-36155i), -22340i, ~1i);
    return true;
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_4 {
    var var_0 = any(select(select(vec2<bool>(arg_0, arg_0), !(!vec2<bool>(arg_0, arg_0)), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(false, arg_0)), true | arg_0)), vec2<bool>(arg_0, !all(vec4<bool>(true, arg_0, arg_0, arg_0))), select(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), !vec2<bool>(false, arg_0), any(vec2<bool>(arg_0, arg_0))), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, arg_0), arg_0), true)));
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    global0 = array<Struct_5, 2>();
    var var_2 = (global2.x <= global2.x) || (_wgslsmith_mod_u32(~4294967295u, ~38327u) == (~(u_input.a | global1.x) & u_input.a));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(ceil(-741f))))));
    return Struct_4(511f, vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, -234f)) * _wgslsmith_div_f32(-2452f, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1571f)) * _wgslsmith_f_op_f32(abs(813f))), _wgslsmith_f_op_f32(trunc(-964f))), vec2<i32>(3299i, arg_1), !vec2<bool>(select(arg_0, u_input.a < 34673u, arg_0), !arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) * -365f), 236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + global2.x) + var_1), -675f)));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = u_input.a;
    var var_1 = arg_0.b.xww;
    let var_2 = arg_2.e << (~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global1.x, u_input.a, 4294967295u) & vec3<u32>(6624u, 44962u, global1.x), firstLeadingBit(vec3<u32>(83366u, u_input.a, u_input.a)), !vec3<bool>(arg_0.d.x, arg_2.a, arg_2.a)), firstTrailingBit(firstTrailingBit(vec3<u32>(global1.x, arg_2.d.x, 1u)))) % 32u);
    var var_3 = global0[_wgslsmith_index_u32(func_3(~_wgslsmith_mult_u32(55165u ^ global1.x, ~var_2), Struct_5(-8187i)).x << (arg_2.e % 32u), 2u)];
    let var_4 = select(vec3<bool>(arg_0.d.x, all(vec4<bool>(arg_2.a && false, true, false, !arg_2.a)), false), select(vec3<bool>(any(!vec2<bool>(arg_2.a, false)), 4294967295u <= min(u_input.a, 4294967295u), arg_0.d.x), vec3<bool>(1u < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, arg_2.e, var_2), vec4<u32>(global1.x, 4294967295u, u_input.a, 42687u)), all(vec4<bool>(arg_2.a, arg_2.a, true, arg_0.d.x)), true), false), any(arg_0.d) && (~1i == arg_2.b));
    return select(vec4<bool>(true, true, arg_0.d.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.x, arg_2.d.x, arg_2.e), vec3<u32>(arg_2.e, u_input.a, 46254u)), var_2) <= 10600u), select(!(!vec4<bool>(true, arg_2.a, false, false)), vec4<bool>(arg_0.d.x || true, func_2(), !(global2.x != 1211f), true), !arg_0.d.x && arg_0.d.x), !(arg_2.e >= _wgslsmith_mult_u32(~63705u, select(global1.x, 0u, false))));
}

fn func_1() -> Struct_4 {
    let var_0 = !(!func_5(func_4(func_2(), -43866i), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-global2.x))), Struct_3(false, 1i, _wgslsmith_f_op_vec2_f32(-global2.zz), firstLeadingBit(vec4<u32>(global1.x, u_input.a, 1u, u_input.a)), _wgslsmith_dot_vec2_u32(global1.xz, vec2<u32>(u_input.a, u_input.a)))));
    var var_1 = func_4(true, ~(func_4(var_0.x, -26860i).c.x >> (global1.x % 32u)));
    global0 = array<Struct_5, 2>();
    var var_2 = reverseBits(reverseBits(global1.wwx));
    global0 = array<Struct_5, 2>();
    return func_4(true, var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~abs(0u), 2u)];
    var var_1 = func_1();
    var var_2 = select(vec4<i32>(min(~min(0i, var_0.a), ~(~var_0.a)), -1i, -40973i, -1i), ~vec4<i32>(~func_4(false, -21412i).c.x, func_4(any(vec4<bool>(var_1.d.x, true, true, true)), func_4(var_1.d.x, var_0.a).c.x).c.x, -95709i, 63519i), !(!(u_input.a > 0u)));
    var var_3 = _wgslsmith_f_op_f32(round(314f));
    global2 = var_1.e.xzy;
    global1 = select(vec4<u32>(global1.x, _wgslsmith_sub_u32(select(~global1.x, global1.x, func_5(Struct_4(-773f, var_1.b, var_2.wx, vec2<bool>(false, true), vec4<f32>(1690f, global2.x, -1164f, -2152f)), -585f, Struct_3(var_1.d.x, var_0.a, global2.yz, vec4<u32>(u_input.a, 24383u, global1.x, 1u), u_input.a)).x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 20004u, 40897u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, global1.x, 1u, u_input.a), vec4<u32>(25447u, 1u, u_input.a, 14331u), vec4<u32>(25934u, u_input.a, 13505u, 20121u)))), 18811u, _wgslsmith_div_u32(u_input.a >> (~4294967295u % 32u), 0u)), vec4<u32>(~(~(~global1.x)), 31373u, 22969u, (~u_input.a >> (u_input.a % 32u)) >> (~0u % 32u)), var_1.d.x);
    let var_4 = Struct_3(select(var_1.d.x, any(func_1().d), true), -(var_1.c.x ^ ~(-8241i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(900f, -347f))))))), _wgslsmith_mult_vec4_u32(min(~select(vec4<u32>(0u, global1.x, global1.x, 1u), vec4<u32>(4294967295u, 38884u, 4294967295u, u_input.a), false), ~vec4<u32>(u_input.a, 24433u, 33086u, global1.x) ^ ~vec4<u32>(u_input.a, global1.x, u_input.a, u_input.a)), ~(~min(vec4<u32>(1u, 31024u, 96508u, 7192u), vec4<u32>(u_input.a, 21623u, global1.x, u_input.a)))), global1.x | (u_input.a >> ((_wgslsmith_clamp_u32(59085u, global1.x, 4294967295u) >> (u_input.a % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, -var_2.x, var_4.b, 1i)), vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(0i), reverseBits(var_0.a), var_4.b), _wgslsmith_div_i32(var_4.b, -1i), _wgslsmith_clamp_i32(1i, var_0.a, var_2.x), ~func_4(false, -26538i).c.x)), var_4.d, countOneBits(vec4<u32>(u_input.a >> (3222u % 32u), u_input.a, reverseBits(global1.x), 1u) << (vec4<u32>(746u, u_input.a, select(global1.x, global1.x, true), 24833u) % vec4<u32>(32u))), global2.x, 0u);
}

