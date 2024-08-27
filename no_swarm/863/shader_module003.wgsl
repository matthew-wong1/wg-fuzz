struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(75782u, 0u, 0u), vec3<u32>(13095u, 9229u, 48773u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 44777u, 22773u), vec3<u32>(1u, 58286u, 12495u), vec3<u32>(88107u, 4294967295u, 50598u), vec3<u32>(10361u, 0u, 15201u), vec3<u32>(23794u, 22231u, 4294967295u), vec3<u32>(4294967295u, 19126u, 1u), vec3<u32>(4294967295u, 78161u, 1u), vec3<u32>(1u, 1u, 38874u), vec3<u32>(36085u, 4294967295u, 0u), vec3<u32>(7371u, 4294967295u, 8412u), vec3<u32>(39253u, 4294967295u, 3077u), vec3<u32>(0u, 72113u, 4294967295u), vec3<u32>(17051u, 0u, 42030u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(10987u, 18870u, 23295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 1u, 63195u), vec3<u32>(4294967295u, 78998u, 77289u), vec3<u32>(1u, 22899u, 19032u), vec3<u32>(1u, 1u, 1u), vec3<u32>(12615u, 27778u, 0u), vec3<u32>(76084u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 25083u, 1u), vec3<u32>(0u, 16505u, 0u));

var<private> global1: array<i32, 11>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(-1580f, 197f, 680f)), Struct_1(vec3<f32>(1000f, 928f, 437f)), Struct_1(vec3<f32>(-1000f, -1805f, 564f)), Struct_1(vec3<f32>(525f, 1000f, -566f)), Struct_1(vec3<f32>(-864f, 1381f, -1493f)), Struct_1(vec3<f32>(2439f, -767f, -235f)), Struct_1(vec3<f32>(283f, 1090f, 103f)), Struct_1(vec3<f32>(1134f, -346f, -815f)), Struct_1(vec3<f32>(475f, -2989f, -490f)), Struct_1(vec3<f32>(-722f, -2380f, 2052f)), Struct_1(vec3<f32>(1633f, 1159f, 1000f)), Struct_1(vec3<f32>(-132f, -1316f, -143f)), Struct_1(vec3<f32>(602f, -2472f, -1000f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    global0 = array<vec3<u32>, 28>();
    var var_0 = -(1i | _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x, ~35647u), 11u)], u_input.c.x));
    let var_1 = max(abs(firstTrailingBit(abs(min(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(46788u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)], u_input.c.x), vec4<i32>(33145i, 43977i, u_input.a.x, -17605i))))), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(abs(~4294967295u), 11u)], ~_wgslsmith_add_i32(-3105i, countOneBits(-1i)), 1i));
    var_0 = max(-27109i, 1i ^ u_input.c.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-654f, 2001f, 223f), vec3<f32>(1625f, 979f, 287f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1532f, 177f, 797f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(288f, -775f, 1000f) + vec3<f32>(1109f, 841f, -538f)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)))))));
    return _wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_f_op_vec3_f32(-var_2.a));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(min(min(-757i, global1[_wgslsmith_index_u32(4443u, 11u)]), min(-7621i, -2147483647i)), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a) | -12079i, 1i, _wgslsmith_mod_i32(u_input.c.x, -2147483647i) << (u_input.b.x % 32u)) >> (vec4<u32>(_wgslsmith_sub_u32(59566u, arg_0.x >> (arg_0.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, 0u), max(vec4<u32>(35622u, 1u, u_input.b.x, 26991u), vec4<u32>(u_input.b.x, 13717u, 19780u, 37382u))), _wgslsmith_mod_u32(32180u, ~u_input.b.x), min(_wgslsmith_add_u32(u_input.b.x, arg_0.x), u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(~(~min(vec4<i32>(u_input.c.x, -2147483647i, -54755i, global1[_wgslsmith_index_u32(arg_0.x, 11u)]), vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 11u)], 737i, global1[_wgslsmith_index_u32(48366u, 11u)]))), select(-vec4<i32>(u_input.c.x, u_input.a.x, -1i, -4085i), select(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(21652u, 11u)], u_input.c.x), vec4<i32>(63345i, 0i, -14178i, global1[_wgslsmith_index_u32(4294967295u, 11u)]), true), vec4<bool>(true, true, true, true)) ^ vec4<i32>(~u_input.a.x, _wgslsmith_sub_i32(0i, u_input.a.x), 8500i, max(6270i, global1[_wgslsmith_index_u32(arg_0.x, 11u)]))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, ~(4294967295u << (arg_0.x % 32u)) | countOneBits(1u)) ^ countOneBits(4608u), 13u)];
    let var_3 = var_0;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), -430f)))) - _wgslsmith_f_op_f32(var_2.a.x + var_3.a.x));
    return abs(-2147483647i);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(true | !((u_input.b.x >> (1u % 32u)) >= 0u), any(vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), !(global1[_wgslsmith_index_u32(27479u, 11u)] > -1i))), any(!vec4<bool>(u_input.b.x >= 54847u, false, true, true)));
    var var_1 = vec4<bool>(false, abs(u_input.a.x) >= (_wgslsmith_mult_i32(54313i << (0u % 32u), func_2(vec2<u32>(u_input.b.x, 1u))) >> (_wgslsmith_mod_u32(6752u, ~12465u) % 32u)), false, true);
    var var_2 = ~(u_input.b.x ^ (1u << (u_input.b.x % 32u)));
    var_1 = vec4<bool>(true, var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1103f))), 266f)) > _wgslsmith_f_op_vec3_f32(func_3()).x, any(select(select(!vec4<bool>(var_0.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_0.x), 7862i == u_input.c.x), select(select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, true, var_1.x, true), false), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, false), false), any(var_1.wxy)), var_0.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1275f, 1462f, -502f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1228f, 614f)))))));
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u), 13u)];
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -500f == _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_1.a))))));
    var var_3 = func_1();
    global0 = array<vec3<u32>, 28>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -448f), -962f, 886f) * _wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_f_op_vec3_f32(-var_1.a))) + arg_0.a));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    global2 = array<Struct_1, 13>();
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1107f) + arg_1.a.x)));
    global1 = array<i32, 11>();
    return any(!(!select(!vec2<bool>(arg_3, false), !vec2<bool>(arg_3, arg_3), arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 11>();
    var var_0 = select(vec3<bool>(false, func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(10145u, 28u)], u_input.b), u_input.b), 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)], func_4(func_1()), global1[_wgslsmith_index_u32(58089u, 11u)] < -2147483647i), select(true, true, any(vec4<bool>(true, true, true, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), func_5(Struct_1(vec3<f32>(1000f, -574f, 253f)), global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)], true)), true), vec3<bool>(true, false, (~1u << (~u_input.b.x % 32u)) > 1u));
    let var_1 = func_1();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), vec3<f32>(557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(sign(var_1.a.x))))));
    var var_3 = vec3<bool>(true, all(select(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(false, false, false), select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false))), vec3<bool>(true != var_0.x, -927f > var_1.a.x, var_0.x), ~1u < ~u_input.b.x)), true);
    let var_4 = var_1;
    var var_5 = var_1;
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, ~1306u) >> (firstTrailingBit(~15052u) % 32u), 11u)], u_input.c.x, abs(32552i)), u_input.c.x, ~u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_5.a.x - 268f), _wgslsmith_f_op_f32(var_6.a.x - var_4.a.x), _wgslsmith_f_op_f32(exp2(var_5.a.x)), _wgslsmith_f_op_f32(-1182f * var_6.a.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(var_4.a.x)), 1039f, 960f, _wgslsmith_f_op_f32(abs(-775f))))), var_5.a.x);
}

