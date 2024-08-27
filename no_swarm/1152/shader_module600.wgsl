struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(79054u, 4294967295u);

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(14710u, 32797u, 129283u), vec3<u32>(0u, 11100u, 12929u), vec3<u32>(1u, 23123u, 0u), vec3<u32>(818u, 20972u, 0u), vec3<u32>(0u, 0u, 23612u), vec3<u32>(0u, 6762u, 48152u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(37394u, 30556u, 72240u), vec3<u32>(4294967295u, 24545u, 0u), vec3<u32>(51222u, 4294967295u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(42161u, 150366u, 4294967295u), vec3<u32>(0u, 35494u, 1u), vec3<u32>(75878u, 3574u, 1u), vec3<u32>(40411u, 4294967295u, 1u), vec3<u32>(1u, 9145u, 4294967295u), vec3<u32>(4294967295u, 73123u, 7610u), vec3<u32>(20133u, 4294967295u, 0u), vec3<u32>(13713u, 75319u, 1u), vec3<u32>(24304u, 11279u, 61808u), vec3<u32>(1u, 0u, 60804u), vec3<u32>(50321u, 19697u, 13154u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec3<u32>(~0u, _wgslsmith_mod_u32(global0.x, 0u), 76654u))), vec4<bool>(false, true, true, all(vec2<bool>(true, true))));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(1u, ~u_input.d.x << (global0.x % 32u)), ~49779u, 1u);
    let var_2 = 41122i;
    let var_3 = var_0.a;
    var var_4 = var_0;
    return _wgslsmith_mult_i32(-63246i, -1i >> (~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, 14195u, u_input.a, 4294967295u), vec4<u32>(u_input.a, var_3.a.x, 36767u, u_input.d.x)), _wgslsmith_clamp_u32(global0.x, 1u, 4294967295u)) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    let var_0 = vec2<bool>(arg_1.x, all(vec4<bool>(0i <= func_3(), abs(0u) < u_input.b, arg_1.x, any(arg_1))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(321f, 681f, -1183f, -2080f) + vec4<f32>(3574f, 1336f, 619f, 1420f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(899f, 447f, -210f, -938f), vec4<f32>(-2186f, 1485f, 1976f, 547f))))), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -649f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-929f * 379f))), _wgslsmith_f_op_f32(step(-1174f, -361f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-671f)), 370f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1513f * 209f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-464f + -1000f) + 1234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f))));
    let var_2 = 12378i;
    let var_3 = arg_0;
    var var_4 = Struct_2(Struct_1(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, global0.x) ^ 101295u, 22u)]), vec4<bool>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(91065u, u_input.b, 29453u, var_3.a.x), vec4<u32>(30823u, 64723u, 1128u, global0.x))) >= ~u_input.c, false, true, select(!arg_1.x, any(select(vec4<bool>(true, var_0.x, var_0.x, arg_1.x), vec4<bool>(arg_1.x, false, true, false), var_0.x)), true)));
    return abs(min(-59966i, -1i));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, func_2(Struct_1(global2[_wgslsmith_index_u32(global0.x, 22u)]), vec2<bool>(true, true)), -1962i), countOneBits(_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, -37275i), _wgslsmith_dot_vec3_i32(vec3<i32>(9867i, 58002i, 22216i), vec3<i32>(14719i, -33911i, -10246i))))));
    var var_1 = Struct_1(~max(select(~global2[_wgslsmith_index_u32(global0.x, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)] | vec3<u32>(global0.x, u_input.a, u_input.b), !arg_1.x), global2[_wgslsmith_index_u32(~5917u, 22u)] ^ vec3<u32>(u_input.b, global0.x, global0.x)));
    let var_2 = Struct_2(Struct_1(var_1.a), !vec4<bool>(true, arg_1.x, all(select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x), arg_1.x)), false));
    let var_3 = !vec4<bool>(true | var_2.b.x, any(arg_1), arg_1.x | true, all(select(!var_2.b.zzw, vec3<bool>(var_2.b.x, false, arg_1.x), true)));
    var_0 = 505i;
    return Struct_1(vec3<u32>(u_input.b, var_2.a.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.x, ~var_2.a.a.x), ~var_2.a.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(floor(1244f)), vec3<bool>(true, !arg_0.b.x | arg_0.b.x, false)), select(select(arg_0.b, !vec4<bool>(arg_0.b.x, arg_0.b.x, true, false), true), vec4<bool>(!arg_0.b.x, !(!arg_0.b.x), false, false), !any(!vec3<bool>(true, arg_0.b.x, false))));
    let var_1 = arg_0.a;
    var var_2 = vec2<u32>(u_input.a, arg_1.x);
    let var_3 = vec2<i32>(_wgslsmith_add_i32(func_2(Struct_1(firstLeadingBit(arg_0.a.a)), vec2<bool>(select(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b.x && true)), _wgslsmith_dot_vec2_i32(-(vec2<i32>(2147483647i, 20920i) << (vec2<u32>(arg_1.x, u_input.d.x) % vec2<u32>(32u))), firstTrailingBit(min(vec2<i32>(-5170i, -35393i), vec2<i32>(1i, -2147483647i))))), _wgslsmith_mod_i32(1i, countOneBits(-7169i)));
    var var_4 = true;
    return StorageBuffer(var_3.x, firstTrailingBit(max(-select(vec4<i32>(0i, 55979i, -30296i, -4835i), vec4<i32>(-63291i, var_3.x, -2147483647i, -2147483647i), true), -max(vec4<i32>(0i, -2147483647i, -1641i, 2147483647i), vec4<i32>(var_3.x, var_3.x, 3147i, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(reverseBits(vec3<i32>(0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-25845i, 10233i, 2147483647i), vec3<i32>(-2147483647i, 35763i, 8910i)), ~2147483647i)), min(u_input.d.x, 20866u));
    var var_1 = !(false & (_wgslsmith_add_i32(50880i, 47741i) >= ~var_0.a.x)) && false;
    let var_2 = ~(i32(-1i) * -27184i) ^ var_0.a.x;
    global2 = array<vec3<u32>, 22>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1304f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1629f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -459f))))));
    var var_4 = Struct_3(var_0.a, 59772u);
    let x = u_input.a;
    s_output = func_4(Struct_2(func_1(_wgslsmith_f_op_f32(abs(-858f)), vec3<bool>(false, true, true)), vec4<bool>(!select(false, false, false), true, !any(vec4<bool>(true, false, true, true)), false)), vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(52145u, u_input.d.x), global0.x >> (~56497u % 32u)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_4.b, var_4.b, 54082u) ^ global2[_wgslsmith_index_u32(var_4.b, 22u)]), abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_4.b, u_input.c), global2[_wgslsmith_index_u32(21197u, 22u)]))), ~(~global0.x)));
}

