struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(39249i, -15984i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1i, 2147483647i), Struct_1(7355i, 33314i), Struct_1(1i, 0i), Struct_1(-1i, 29749i), Struct_1(1i, 0i), Struct_1(0i, 2147483647i), Struct_1(2147483647i, -56881i), Struct_1(0i, -1i), Struct_1(-35695i, 2147483647i), Struct_1(2147483647i, -1i), Struct_1(12682i, 2147483647i), Struct_1(i32(-2147483648), 2851i), Struct_1(-23262i, 19867i), Struct_1(0i, i32(-2147483648)), Struct_1(18517i, -1i), Struct_1(i32(-2147483648), 17775i), Struct_1(-8088i, -4597i), Struct_1(-4233i, 23341i), Struct_1(3703i, 1i), Struct_1(i32(-2147483648), i32(-2147483648)), Struct_1(-1i, 2147483647i), Struct_1(3656i, -27614i), Struct_1(i32(-2147483648), -1i), Struct_1(-815i, 20182i), Struct_1(9054i, 2147483647i), Struct_1(-54940i, -20414i), Struct_1(-1822i, 6489i), Struct_1(1i, -1i), Struct_1(-21268i, 0i), Struct_1(52530i, -1i), Struct_1(50499i, 1i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> i32 {
    global1 = Struct_1(1i, ~(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.b, global0.a, -2147483647i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, global1.a, -2147483647i, global0.b), vec4<i32>(1i, -1i, 60763i, 23650i))) >> (1u % 32u)));
    global2 = array<Struct_1, 31>();
    global0 = arg_1;
    global2 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_f32(round(arg_2));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(31556i, -1i) & _wgslsmith_mult_vec2_i32(~vec2<i32>(5124i, global0.b), vec2<i32>(firstTrailingBit(u_input.b), global1.b)), vec2<i32>(1i, reverseBits(arg_1.a)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    global0 = Struct_1(-1i, global0.a);
    global0 = Struct_1(55082i, max(_wgslsmith_dot_vec4_i32(-min(vec4<i32>(1i, global1.a, 1i, arg_0.b), vec4<i32>(-1364i, u_input.b, -1i, -11254i)), countOneBits(select(vec4<i32>(global0.a, 10312i, 2147483647i, 2147483647i), vec4<i32>(0i, 2147483647i, arg_2.a, -31541i), true))), ~func_3(-266f, Struct_1(arg_0.a, arg_0.b), 1413f)));
    global2 = array<Struct_1, 31>();
    var var_0 = arg_0;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~13703u), 31u)];
    return !(!vec3<bool>(!arg_3, any(vec3<bool>(true, true, true)), !arg_1));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global0 = arg_1;
    global2 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -154f)) + _wgslsmith_f_op_f32(abs(-285f))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1811f) - _wgslsmith_f_op_f32(-1000f * 1840f)))))));
    var var_1 = global0.a;
    var var_2 = Struct_1(~u_input.b, _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.b, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_1.b, u_input.b), vec3<i32>(arg_1.a, arg_1.a, arg_1.b))) << ((~arg_2.x & max(0u, arg_2.x)) % 32u), arg_1.a));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 31>();
    let var_0 = u_input.c.zx;
    var var_1 = select(true, true, true);
    var var_2 = _wgslsmith_clamp_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, var_0.x, 1u), u_input.c), _wgslsmith_mult_u32(var_0.x, var_0.x), 9733u >> (var_0.x % 32u)) >> (~u_input.c.yzy % vec3<u32>(32u)), vec3<u32>(0u, u_input.c.x, var_0.x)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~var_0.x, select(var_0.x, var_0.x, true), ~14863u), 3235u));
    var var_3 = vec2<u32>(var_0.x, u_input.c.x);
    return Struct_1(func_4(select(vec3<bool>(true, true, true), func_2(arg_0, any(vec3<bool>(false, true, false)), global2[_wgslsmith_index_u32(~10853u, 31u)], all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), func_4(vec3<bool>(true, true, true), arg_1, ~vec2<u32>(u_input.c.x, u_input.c.x)), ~(~var_0)).b, -2147483647i >> (~u_input.c.x % 32u));
}

fn func_1(arg_0: i32) -> u32 {
    global1 = func_5(func_4(func_2(global2[_wgslsmith_index_u32(~u_input.a, 31u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 31u)], all(vec2<bool>(true, true)) || true), Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, 52631i, 2147483647i), vec3<i32>(global0.a, global1.a, -2147483647i))), 21312i | arg_0), u_input.c.zx), global2[_wgslsmith_index_u32(328u, 31u)]);
    let var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(u_input.c.x, 0u) | _wgslsmith_dot_vec3_u32(u_input.c.wwx, ~(~vec3<u32>(23744u, 0u, u_input.a)))), 31u)];
    global0 = func_5(global2[_wgslsmith_index_u32(~u_input.a, 31u)], func_4(select(func_2(func_4(vec3<bool>(false, true, false), Struct_1(-37671i, u_input.b), vec2<u32>(u_input.c.x, 4515u)), true, global2[_wgslsmith_index_u32(1u, 31u)], true), select(func_2(Struct_1(global0.b, -1i), false, Struct_1(u_input.b, -1i), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), func_2(Struct_1(-1i, 1i), var_0.b != 1i, func_4(vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(0u, 31u)], u_input.c.ww), u_input.a != u_input.c.x)), Struct_1(reverseBits(arg_0), -(~25394i)), ~vec2<u32>(u_input.a >> (1u % 32u), u_input.c.x & 23175u)));
    var var_1 = ~(~u_input.a);
    global1 = Struct_1(arg_0, 19352i);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-598f)) - -774f)) - 2603f);
    global0 = global2[_wgslsmith_index_u32(~func_1(_wgslsmith_mod_i32(-22174i, _wgslsmith_div_i32(countOneBits(global0.a), -1i))), 31u)];
    global0 = func_4(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), func_2(global2[_wgslsmith_index_u32(u_input.a, 31u)], true, Struct_1(global0.b, -1i), true)), vec3<bool>(global0.a <= u_input.b, true, false), vec3<bool>(global1.a <= ~1i, _wgslsmith_sub_i32(2147483647i, 10840i) < global1.a, true)), func_4(vec3<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false)), any(vec2<bool>(true, false)), true), Struct_1(~global0.a, u_input.b), vec2<u32>(~28133u, ~select(0u, 12820u, false))), _wgslsmith_mult_vec2_u32(~(u_input.c.yy >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), vec2<u32>(~min(u_input.c.x, 41459u), u_input.c.x)));
    var var_1 = -2060f;
    var var_2 = vec3<u32>(select(67613u, ~(~13390u), true && all(vec3<bool>(true, true, false))), ~u_input.a, 1u) << (~(reverseBits(firstTrailingBit(u_input.c.xyy)) << (u_input.c.wwx % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = -122f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1911f, 1187f, 1085f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1286f, -628f, -1612f))))) * vec3<f32>(812f, _wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(f32(-1f) * -1409f)), _wgslsmith_f_op_f32(-304f - 952f))), -104f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-193f - 123f))), _wgslsmith_f_op_f32(f32(-1f) * -642f), -458f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f * -147f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-960f, -282f, -725f, -346f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-628f, -1161f, 576f, 721f) * vec4<f32>(-140f, -1337f, -651f, -1000f))))), true)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 14584u) >> (vec2<u32>(var_2.x, 123267u) % vec2<u32>(32u)), var_2.yy), ~(16014u << (var_2.x % 32u)), 36898u), countOneBits(select(~vec4<u32>(var_2.x, u_input.a, var_2.x, 31684u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), false))), 905f);
}

