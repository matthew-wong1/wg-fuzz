struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<f32>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 13601u, 17425u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    var var_0 = !vec2<bool>(!(true | (44413u == arg_0.c)), true);
    var var_1 = Struct_3(Struct_2(~vec3<i32>(-1i, 1i, -1i), vec3<i32>(-24434i, _wgslsmith_div_i32(-19598i, -23899i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(19079i, -1i), vec2<i32>(-25647i, 30753i)), vec2<i32>(16438i, -7309i))), arg_2.b < 1u), _wgslsmith_mult_i32(20632i, i32(-1i) * -41035i));
    var_1 = Struct_3(Struct_2(-vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.a.a, vec3<i32>(-14135i, var_1.b, var_1.b)), 1i, -18026i), var_1.a.b << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 8439u, 1u), u_input.c.xzw) % vec3<u32>(32u)), select(var_0.x, all(!vec4<bool>(var_0.x, var_0.x, false, true)), true)), var_1.a.a.x);
    global0 = !(!all(select(vec4<bool>(true, true, false, var_0.x), select(vec4<bool>(false, var_1.a.c, var_0.x, true), vec4<bool>(var_1.a.c, false, true, false), vec4<bool>(true, true, var_0.x, false)), true | var_1.a.c)));
    var var_2 = firstLeadingBit(arg_2.c);
    return all(select(vec2<bool>(true, true), vec2<bool>(var_0.x, false), select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.x))) && false;
}

fn func_2() -> Struct_2 {
    global2 = vec3<u32>(~(~(~u_input.b.x)), 48392u, (min(global2.x | u_input.c.x, u_input.b.x) | (0u & _wgslsmith_mod_u32(global2.x, u_input.c.x))) << (global2.x % 32u));
    var var_0 = Struct_3(Struct_2(-_wgslsmith_clamp_vec3_i32(vec3<i32>(27978i, 33472i, 5961i) << (u_input.c.yyz % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 51888i, 25798i), vec3<i32>(0i, -6549i, 1i))), vec3<i32>(1i, _wgslsmith_clamp_i32(-1i, ~48272i, ~(-16543i)), _wgslsmith_div_i32(1i, -1i)), (all(vec4<bool>(true, true, false, false)) || func_3(Struct_1(global1.x, global2.x, u_input.c.x), vec3<f32>(554f, global1.x, global1.x), Struct_1(463f, 4294967295u, 6114u))) && true), reverseBits(1i >> (u_input.c.x % 32u)));
    var var_1 = var_0.a;
    let var_2 = Struct_1(646f, 1u, _wgslsmith_clamp_u32(global2.x, ~12907u, global2.x));
    var var_3 = vec3<bool>(true, all(!select(vec3<bool>(var_0.a.c, var_1.c, var_0.a.c), vec3<bool>(true, false, var_1.c), var_1.c)) || all(vec2<bool>(var_1.b.x > 54430i, all(vec3<bool>(var_0.a.c, var_0.a.c, var_0.a.c)))), any(!(!(!vec4<bool>(var_0.a.c, var_0.a.c, var_1.c, var_0.a.c)))));
    return var_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_3 {
    return Struct_3(func_2(), arg_0.a.a.x);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: bool) -> vec4<i32> {
    let var_0 = ~(-(~select(~arg_2.x, -12467i, arg_3)));
    var var_1 = _wgslsmith_dot_vec4_i32(~(-arg_2), (firstLeadingBit(countOneBits(arg_2)) | -vec4<i32>(2147483647i, -24415i, 2147483647i, arg_2.x)) | arg_2);
    var var_2 = true;
    let var_3 = func_4(Struct_3(func_2(), _wgslsmith_add_i32(reverseBits(0i), select(-2147483647i << (global2.x % 32u), var_0, true))), arg_1, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(143f)), -446f)))));
    var var_4 = _wgslsmith_dot_vec3_i32(func_2().b, arg_1.a.b);
    return ~arg_2;
}

fn func_5(arg_0: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.xyz) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-405f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global1.x - 1328f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global1.x) - -436f)) - vec3<f32>(_wgslsmith_f_op_f32(-1275f + global1.x), global1.x, _wgslsmith_f_op_f32(round(-623f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(273f + global1.x), _wgslsmith_f_op_f32(global1.x - -309f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global2.x, global2.x)), firstTrailingBit(global2.xx | global2.xz)), 2976u), (global2.x ^ _wgslsmith_mult_u32(abs(1u), global2.x)) & ~(abs(65168u) | global2.x));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(max(164f, var_1.a)), _wgslsmith_div_f32(697f, 133f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1000f, 593f, var_0.x) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(132f, 592f, 837f, 3108f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_0.x, -1195f, var_1.a) - vec4<f32>(var_0.x, 1133f, -965f, global1.x))) * vec4<f32>(_wgslsmith_f_op_f32(min(144f, -917f)), 535f, -292f, _wgslsmith_f_op_f32(346f + 1091f)))));
    var var_2 = max(abs(~_wgslsmith_mult_u32(global2.x, ~global2.x)), 27970u);
    let var_3 = 1u;
    return -(~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1398f, global1.x, -338f, global1.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, 228f, 164f, global1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 563f))))))));
    let var_0 = max(countOneBits(countOneBits(-(~(-28690i)))), countOneBits(func_5(_wgslsmith_mod_vec4_i32(func_1(global1.x, Struct_3(Struct_2(vec3<i32>(-11244i, 1i, 1i), vec3<i32>(0i, -11438i, -1153i), false), 1i), vec4<i32>(-40441i, -1i, -1i, 2147483647i), false), ~vec4<i32>(1i, -1i, 21283i, 22145i)))));
    let var_1 = _wgslsmith_dot_vec3_i32(countOneBits(abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, 37612i, var_0)))), -vec3<i32>(1i, _wgslsmith_add_i32(var_0, 0i) & var_0, var_0));
    var var_2 = Struct_3(func_4(func_4(func_4(func_4(Struct_3(Struct_2(vec3<i32>(var_1, 2147483647i, var_1), vec3<i32>(2147483647i, 0i, 14194i), true), var_0), Struct_3(Struct_2(vec3<i32>(38193i, var_0, var_0), vec3<i32>(44841i, 1i, var_1), false), -5836i), vec2<f32>(1000f, global1.x)), func_4(Struct_3(Struct_2(vec3<i32>(-42394i, var_0, var_1), vec3<i32>(var_1, var_0, var_0), false), var_0), Struct_3(Struct_2(vec3<i32>(var_1, 2147483647i, 1i), vec3<i32>(var_0, 2147483647i, -1i), false), 2147483647i), global1.zw), global1.wz), func_4(func_4(Struct_3(Struct_2(vec3<i32>(var_0, var_0, var_1), vec3<i32>(var_0, var_1, 1i), true), var_1), Struct_3(Struct_2(vec3<i32>(-15590i, var_1, 2147483647i), vec3<i32>(2147483647i, 31305i, var_1), true), 0i), global1.yy), Struct_3(Struct_2(vec3<i32>(var_1, -2147483647i, var_1), vec3<i32>(var_1, -1i, var_0), true), var_1), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-254f, global1.x)))), _wgslsmith_f_op_vec2_f32(select(global1.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(240f, 513f)), false))), Struct_3(func_4(Struct_3(Struct_2(vec3<i32>(var_0, var_1, 0i), vec3<i32>(-18760i, var_0, var_0), false), var_1), func_4(Struct_3(Struct_2(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, 4260i, -23359i), true), var_0), Struct_3(Struct_2(vec3<i32>(var_1, -18088i, var_1), vec3<i32>(0i, 39013i, var_0), false), var_1), vec2<f32>(global1.x, global1.x)), vec2<f32>(global1.x, global1.x)).a, var_0), global1.yz).a, _wgslsmith_div_i32(min(_wgslsmith_add_i32(var_1, 2147483647i) | var_0, ~(-var_1)), -2147483647i));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x + -904f), 618f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(834f - _wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-448f, 586f, global1.x, global1.x)))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * global1.x), -1319f, _wgslsmith_f_op_f32(max(-927f, global1.x))))) - vec4<f32>(-637f, -616f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -327f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(1088f - _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(global1.x + 538f))))));
    var var_5 = vec4<i32>(-29377i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, var_1, -2147483647i) ^ ~vec3<i32>(var_2.b, var_2.b, -6762i), var_2.a.a), var_2.a.b), 32830i, -1302i);
    var var_6 = Struct_3(func_2(), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(global2.yz, var_3.zy, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -352f)), all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, var_2.a.c), var_2.a.c)))), ~(78321u ^ u_input.a), ~u_input.c.x);
}

