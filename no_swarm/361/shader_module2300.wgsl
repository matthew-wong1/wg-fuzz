struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-1301f, 448f, -572f, 317f), vec4<f32>(-801f, -124f, 675f, 183f), vec4<f32>(-762f, 1000f, -1176f, 883f), vec4<f32>(256f, -965f, -1080f, -506f), vec4<f32>(1568f, -319f, 669f, -1094f), vec4<f32>(-580f, -1053f, 2288f, -1413f), vec4<f32>(1000f, -2706f, -394f, -347f), vec4<f32>(-1000f, -1496f, 2173f, 1826f));

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(true, 4294967295u, vec2<i32>(14028i, 33860i), 668f), true, 1i), vec3<bool>(false, false, false), Struct_1(true, 14816u, vec2<i32>(5318i, -28198i), 2263f), vec4<f32>(1000f, 666f, -1422f, 1709f), 54294u);

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<vec3<bool>, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    global1 = Struct_3(global1.a, global1.b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.wy, ~vec2<u32>(~global1.a.a.b, 13564u)), 20u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d)), global1.a.a.b);
    var var_0 = (vec3<i32>(firstLeadingBit(~global1.a.c), ~(~global1.c.c.x), firstLeadingBit(i32(-1i) * -9962i)) ^ min(countOneBits(vec3<i32>(-1i, -1i, global1.a.a.c.x)), vec3<i32>(-1i, global1.c.c.x << (u_input.b % 32u), ~global1.a.a.c.x))) & ~(vec3<i32>(-1i, i32(-1i) * -1i, -global1.a.a.c.x) & vec3<i32>(abs(0i), global1.c.c.x, 1i));
    global2 = array<Struct_1, 20>();
    var var_1 = 2845i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a.d, -748f, -105f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -593f, -2151f)))));
    return select(select(!vec3<bool>(global1.a.a.a, !global1.c.a, global1.a.a.a), !select(global3[_wgslsmith_index_u32(28880u, 16u)], select(global3[_wgslsmith_index_u32(u_input.b, 16u)], vec3<bool>(global1.c.a, global1.b.x, false), vec3<bool>(global1.c.a, true, global1.c.a)), false), true), global1.b, any(!vec4<bool>(all(vec4<bool>(false, global1.a.a.a, true, true)), 0i < global1.a.c, select(false, global1.c.a, global1.c.a), true)));
}

fn func_2() -> f32 {
    global1 = Struct_3(global1.a, func_3(), Struct_1(global1.b.x, ~(~max(global1.a.a.b, u_input.a.x)), _wgslsmith_mult_vec2_i32((vec2<i32>(global1.a.a.c.x, global1.c.c.x) | vec2<i32>(global1.c.c.x, global1.a.c)) ^ global1.a.a.c, global1.a.a.c), _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1304f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-387f)), global1.a.a.d), _wgslsmith_f_op_f32(ceil(global1.d.x))))), _wgslsmith_mod_u32(29799u >> ((0u ^ ~global1.e) % 32u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_clamp_u32(global1.e, global1.e, 28510u), global1.c.b, _wgslsmith_sub_u32(43184u, 5567u), _wgslsmith_div_u32(0u, 35322u)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - global1.d.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -235f))));
}

fn func_1() -> f32 {
    global3 = array<vec3<bool>, 16>();
    var var_0 = ~vec4<u32>(u_input.a.x, global1.e, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.c.b, global1.c.b), global1.a.a.b), 30329u);
    global2 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_f_op_f32(abs(-448f));
    var var_2 = _wgslsmith_f_op_f32(func_2());
    return -532f;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_3 {
    global2 = array<Struct_1, 20>();
    var var_0 = global1.a;
    var var_1 = ~(_wgslsmith_add_vec2_u32((vec2<u32>(2171u, arg_3.b) << (vec2<u32>(arg_3.b, global1.e) % vec2<u32>(32u))) >> (u_input.a.wx % vec2<u32>(32u)), u_input.a.zx) >> (~vec2<u32>(arg_3.b, arg_3.b << (27526u % 32u)) % vec2<u32>(32u)));
    let var_2 = vec3<i32>(-36547i, arg_0.c.x, 2147483647i & _wgslsmith_dot_vec4_i32(~(vec4<i32>(global1.c.c.x, -1i, 9949i, var_0.c) | vec4<i32>(global1.a.a.c.x, 2147483647i, 2147483647i, arg_0.c.x)), ~(vec4<i32>(var_0.a.c.x, -2147483647i, -33149i, var_0.c) | vec4<i32>(var_0.a.c.x, arg_0.c.x, -28393i, 0i))));
    let var_3 = 14315u;
    return Struct_3(Struct_2(arg_0, false, var_0.c), global1.b, arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f + arg_3.d) - arg_0.d), -2178f, _wgslsmith_div_f32(489f, global1.a.a.d), _wgslsmith_f_op_f32(-arg_0.d))), abs(firstTrailingBit(reverseBits(4294967295u))) >> (var_0.a.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(global1.c.a, u_input.a.x, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global1.a.a.c.x), vec2<i32>(global1.c.c.x, abs(-61842i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-990f))))), ~(~(~_wgslsmith_sub_u32(4294967295u, 0u))), vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -657f)), global1.c);
    global0 = array<vec4<f32>, 8>();
    let var_1 = Struct_1(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(global1.a.b, true, global1.b.x, global1.c.a), false)) || true, 1u, ~global1.a.a.c, _wgslsmith_f_op_f32(global1.a.a.d - _wgslsmith_f_op_f32(global1.a.a.d + _wgslsmith_f_op_f32(868f - _wgslsmith_f_op_f32(abs(1021f))))));
    var var_2 = !vec4<bool>(global1.b.x, select(!(!var_1.a), var_0.a.a.a, global1.c.a & (global1.c.d >= 464f)), !(!(!global1.b.x)), false);
    let var_3 = vec4<bool>(!(!var_0.a.a.a), global1.a.a.a, true, _wgslsmith_f_op_f32(step(-864f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.d) * _wgslsmith_f_op_f32(exp2(var_1.d))))) < -564f);
    let var_4 = var_0;
    var_2 = vec4<bool>(((select(var_0.e, var_1.b, true) != 71758u) & all(select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), var_4.b.x))) & (var_3.x | all(!vec3<bool>(global1.c.a, var_1.a, var_3.x))), true, true, !(~1u < _wgslsmith_dot_vec3_u32(~vec3<u32>(31814u, 1u, u_input.a.x), u_input.a.xwy)));
    global3 = array<vec3<bool>, 16>();
    var var_5 = Struct_3(Struct_2(Struct_1(select(func_4(Struct_1(var_2.x, var_1.b, var_1.c, -143f), var_1.b, global1.d.wy, Struct_1(false, u_input.c, global1.c.c, var_4.a.a.d)).c.a, !var_4.c.a, true), _wgslsmith_div_u32(94651u, global1.e << (u_input.c % 32u)), -(~var_1.c), 942f), var_3.x, 23371i), var_2.xwz, Struct_1(!(select(var_1.a, false, true) && var_4.b.x), 0u, var_1.c, _wgslsmith_f_op_f32(-1258f * var_0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(global1.d, var_0.d))))))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-27711i, vec2<f32>(global1.d.x, 336f));
}

