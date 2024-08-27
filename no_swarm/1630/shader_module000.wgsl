struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(true, vec2<u32>(0u, 8797u), vec2<u32>(21118u, 4294967295u)), Struct_2(true, vec2<u32>(96899u, 1161u), vec2<u32>(1u, 17936u)), Struct_2(false, vec2<u32>(4294967295u, 24582u), vec2<u32>(1u, 5447u)), Struct_2(true, vec2<u32>(1u, 27834u), vec2<u32>(0u, 108160u)), Struct_2(false, vec2<u32>(0u, 0u), vec2<u32>(9419u, 1u)), Struct_2(false, vec2<u32>(11234u, 4294967295u), vec2<u32>(0u, 1u)), Struct_2(true, vec2<u32>(57942u, 18897u), vec2<u32>(0u, 29918u)), Struct_2(true, vec2<u32>(0u, 29702u), vec2<u32>(42437u, 28067u)), Struct_2(true, vec2<u32>(13207u, 1u), vec2<u32>(148098u, 54943u)), Struct_2(true, vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), Struct_2(false, vec2<u32>(24526u, 0u), vec2<u32>(1u, 9953u)), Struct_2(true, vec2<u32>(98071u, 9210u), vec2<u32>(1u, 68901u)), Struct_2(false, vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u)), Struct_2(false, vec2<u32>(0u, 128432u), vec2<u32>(12166u, 31051u)), Struct_2(true, vec2<u32>(9723u, 1u), vec2<u32>(79040u, 15105u)), Struct_2(false, vec2<u32>(14992u, 69464u), vec2<u32>(0u, 47531u)), Struct_2(false, vec2<u32>(0u, 1u), vec2<u32>(9454u, 600u)), Struct_2(false, vec2<u32>(48782u, 1u), vec2<u32>(0u, 0u)), Struct_2(false, vec2<u32>(14536u, 2425u), vec2<u32>(84914u, 41527u)), Struct_2(true, vec2<u32>(0u, 26586u), vec2<u32>(0u, 57250u)), Struct_2(true, vec2<u32>(25403u, 86694u), vec2<u32>(5917u, 33154u)), Struct_2(false, vec2<u32>(0u, 41818u), vec2<u32>(4294967295u, 31228u)));

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(false, vec2<u32>(5724u, 39259u), vec2<u32>(1u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(633f, -689f), vec2<f32>(487f, 457f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1840f) - _wgslsmith_f_op_f32(f32(-1f) * -1177f)), -422f))), abs(8589u) & global2.c.x, 337f);
    let var_1 = vec3<bool>(false, all(!select(select(vec4<bool>(true, global2.a, true, global2.a), vec4<bool>(true, global2.a, true, false), vec4<bool>(global2.a, false, false, global2.a)), vec4<bool>(true, global2.a, global2.a, true), vec4<bool>(false, false, false, global2.a))), all(vec2<bool>(true, true)));
    var var_2 = true;
    let var_3 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(28106u, ~10955u, countOneBits(var_0.b)), ~vec3<u32>(u_input.b, 91562u, var_0.b)), _wgslsmith_add_u32(33457u >> (1u % 32u), _wgslsmith_div_u32(16932u, ~u_input.a.x)));
    let var_4 = _wgslsmith_sub_i32(45772i, u_input.d);
    return vec2<f32>(261f, var_0.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyw, ~u_input.a.ywy), 22u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(u_input.a.x)), 26880u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2945f, -917f)) + _wgslsmith_f_op_f32(765f + 1194f))) - _wgslsmith_f_op_f32(round(386f))));
    global0 = array<Struct_2, 22>();
    let var_2 = Struct_2(false, ~u_input.a.ww, ~(~u_input.a.wy));
    let var_3 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(1189f * var_1.c)), var_0.c.x, var_1.a.x);
    return global0[_wgslsmith_index_u32(88508u, 22u)];
}

fn func_1() -> Struct_1 {
    global2 = Struct_2(!global2.a, ~u_input.a.wy, vec2<u32>(~3570u, ~(firstLeadingBit(1u) | global2.c.x)));
    let var_0 = u_input.a.zwz;
    global2 = func_2();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1536f)), _wgslsmith_f_op_f32(f32(-1f) * -1270f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_div_f32(2063f, -675f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f - -1734f))))), 0u, _wgslsmith_f_op_f32(400f - 668f));
    global1 = true;
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(3306u)), var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1332f, var_1.c), vec2<f32>(-1008f, var_1.a.x)) - _wgslsmith_f_op_vec2_f32(var_1.a + var_1.a)) + var_1.a))), _wgslsmith_div_u32(~global2.c.x, global2.c.x) | 11646u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(491f + var_1.c) + 511f));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = true;
    global0 = array<Struct_2, 22>();
    let var_1 = false;
    let var_2 = select(!vec2<bool>(any(select(vec4<bool>(true, false, true, var_1), vec4<bool>(true, var_1, global2.a, true), vec4<bool>(global2.a, true, var_1, arg_2.a))), true), vec2<bool>(true, true), vec2<bool>(!global2.a, true));
    let var_3 = -firstLeadingBit(vec4<i32>(3801i, _wgslsmith_div_i32(max(arg_1, u_input.e.x), -2147483647i << (u_input.a.x % 32u)), 1i, ~(-32458i)));
    return _wgslsmith_f_op_f32(max(-2620f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_3))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(685f, -580f, _wgslsmith_f_op_f32(func_4(func_1(), u_input.e.x, Struct_2(true, vec2<u32>(66658u, u_input.b), vec2<u32>(4294967295u, global2.c.x)), _wgslsmith_f_op_f32(497f + -946f))))));
    var var_1 = _wgslsmith_add_vec3_i32(-(~vec3<i32>(_wgslsmith_clamp_i32(u_input.d, 0i, u_input.e.x), abs(u_input.d), 35714i)), -abs(u_input.e));
    var var_2 = func_1();
    var var_3 = !any(vec3<bool>(true, true, true));
    global2 = func_2();
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_1.x & -48237i);
}

