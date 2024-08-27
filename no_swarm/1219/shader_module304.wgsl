struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 6>;

var<private> global2: array<Struct_2, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1786f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1507f)) - _wgslsmith_f_op_f32(arg_2.x * 839f)) * _wgslsmith_f_op_f32(-775f - _wgslsmith_f_op_f32(global0.x + global0.x))), -558f), true, arg_3.x, arg_1.b.x, 1i);
    let var_1 = firstTrailingBit(14983u);
    let var_2 = !(!arg_0);
    global2 = array<Struct_2, 5>();
    global1 = array<i32, 6>();
    return select(!var_0.b, true & all(!vec2<bool>(false, arg_0.x)), any(vec3<bool>(_wgslsmith_dot_vec2_u32(arg_1.b.xx, arg_1.b.zz) <= 4294967295u, var_0.b, true)));
}

fn func_2() -> Struct_1 {
    global1 = array<i32, 6>();
    var var_0 = select(!vec2<bool>(true, !func_3(vec4<bool>(true, true, true, true), Struct_3(Struct_2(global0.x), u_input.b.xwx, Struct_2(global0.x)), global0.zy, vec3<u32>(u_input.b.x, u_input.b.x, 16213u))), vec2<bool>(true, !select(false, all(vec4<bool>(false, true, true, true)), true)), vec2<bool>(func_3(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), Struct_3(global2[_wgslsmith_index_u32(u_input.b.x, 5u)], vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), Struct_2(-1615f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(532f, global0.x))), ~(u_input.b.zxx << (vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), global0.x)))), vec3<u32>(~u_input.b.x, ~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 0u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(220f)) - 1700f))));
    global1 = array<i32, 6>();
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(max(303f, _wgslsmith_f_op_f32(-global0.x)))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, var_1.b.x), ~var_1.b.x, u_input.b.x), ~(var_1.b << (vec3<u32>(u_input.b.x, 0u, var_1.b.x) % vec3<u32>(32u)))), ~reverseBits(~1u), u_input.b.x), global2[_wgslsmith_index_u32(u_input.b.x, 5u)]);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(-1182f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -578f))) + 1075f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(step(global0.x, 212f))), 1f))), !(!var_0.x), ~(~(~u_input.b.x)), _wgslsmith_dot_vec3_u32(var_1.b, ~vec3<u32>(var_2.b.x, var_1.b.x, 0u)) & ~_wgslsmith_mod_u32(var_1.b.x, _wgslsmith_add_u32(35891u, u_input.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, global1[_wgslsmith_index_u32(28692u, 6u)], -2147483647i) << (select(vec4<u32>(u_input.b.x, 21911u, var_2.b.x, 55088u), vec4<u32>(27433u, var_1.b.x, u_input.b.x, var_2.b.x), false) % vec4<u32>(32u)), ~(-vec4<i32>(u_input.a, u_input.a, 2147483647i, 9948i))) << (13768u % 32u));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec2_i32(~(~(~vec2<i32>(2147483647i, 2147483647i))), -firstLeadingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(arg_3.c, 6u)], 1i), vec2<i32>(u_input.a, arg_3.e))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(1164f, arg_3.a.x)), arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.x))))) + 1146f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.a.x)))))));
    var var_1 = true;
    global1 = array<i32, 6>();
    let var_2 = _wgslsmith_div_i32(4687i, 1i);
    return Struct_2(-1099f);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = !(!arg_1);
    let var_1 = Struct_3(func_4(reverseBits(~u_input.b.x), true && all(!vec4<bool>(false, true, true, arg_2.x)), 0u, func_2()), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(61765u, 0u, u_input.b.x) << (vec3<u32>(arg_0.x, arg_0.x, u_input.b.x) % vec3<u32>(32u)), vec3<u32>(1u, arg_0.x, arg_0.x)), arg_0.x, ~29770u), func_4(1u & arg_0.x, false, ~(~11300u), func_2()));
    global1 = array<i32, 6>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_3.a, arg_3.a, arg_3.a) + vec4<f32>(arg_3.a, -1000f, 506f, -617f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, global0.x, -987f, 1925f) - vec4<f32>(466f, -884f, global0.x, var_1.c.a))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-316f, -570f, 547f, arg_3.a)))))));
    var var_2 = arg_3;
    return !select(!(!select(vec4<bool>(arg_1.x, false, var_0.x, var_0.x), vec4<bool>(true, arg_2.x, arg_1.x, arg_1.x), vec4<bool>(false, var_0.x, true, false))), select(vec4<bool>(func_3(vec4<bool>(false, arg_2.x, var_0.x, arg_2.x), var_1, vec2<f32>(-192f, -396f), vec3<u32>(arg_0.x, 0u, 71801u)), true, !arg_2.x, true), !select(vec4<bool>(arg_1.x, false, arg_1.x, var_0.x), vec4<bool>(true, true, false, true), vec4<bool>(var_0.x, true, arg_2.x, false)), !arg_1.x), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_0.x, 6u)], 2147483647i, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.a, 0i, global1[_wgslsmith_index_u32(4294967295u, 6u)]))) == u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(false, true, true, true), select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), func_1(vec2<u32>(0u, u_input.b.x), vec2<bool>(false, true), vec2<bool>(true, false), Struct_2(358f))), !vec4<bool>(func_1(u_input.b.wz, vec2<bool>(false, false), vec2<bool>(false, false), global2[_wgslsmith_index_u32(u_input.b.x, 5u)]).x, any(vec2<bool>(false, true)), true, func_1(vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(true, true), vec2<bool>(false, true), Struct_2(-1734f)).x), select(!func_1(u_input.b.wx, vec2<bool>(false, false), vec2<bool>(true, true), Struct_2(-586f)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), true == (0u < u_input.b.x))), select(func_1(u_input.b.wz, select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), global0.x == -1000f), vec2<bool>(true, true), Struct_2(_wgslsmith_div_f32(global0.x, global0.x))), vec4<bool>(true, true, true, any(func_1(vec2<u32>(1u, u_input.b.x), vec2<bool>(true, false), vec2<bool>(false, false), Struct_2(global0.x)).wx)), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), func_1(vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(true, true), vec2<bool>(true, true), func_4(u_input.b.x, true, u_input.b.x, Struct_1(global0.xxw, false, 4294967295u, u_input.b.x, u_input.a))), true & func_2().b)));
    var var_1 = u_input.a;
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(u_input.b.x, 5u)], ~firstLeadingBit(~vec3<u32>(u_input.b.x, 28607u, 1u)), func_4(~_wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), true, 4294967295u, Struct_1(global0.xzx, true, u_input.b.x, 1u, u_input.a)));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1128f), var_2.a.a, 1194f)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 + global0.yyw) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 885f, -1103f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.a, 1472f, 667f), var_3)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.yz, u_input.b, -1000f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-595f, var_2.c.a, var_3.x, var_4.x) + vec4<f32>(-504f, var_4.x, global0.x, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -2638f, var_3.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-222f, var_3.x, -287f, -2145f) + vec4<f32>(541f, 1337f, 1396f, -1593f)) + vec4<f32>(539f, -673f, var_4.x, global0.x))))), vec4<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_2.b.x, 6u)], 7715i, global1[_wgslsmith_index_u32(var_2.b.x, 6u)], u_input.a), vec4<i32>(2147483647i, u_input.a, global1[_wgslsmith_index_u32(1u, 6u)], -31400i)) ^ ~1i), -24277i, -14151i, -2147483647i));
}

