struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1128f)) + _wgslsmith_f_op_f32(-1000f - 510f)) * _wgslsmith_f_op_f32(min(-1334f, 1f))))), _wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f) + _wgslsmith_f_op_f32(f32(-1f) * -592f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) * _wgslsmith_f_op_f32(floor(121f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 747f), _wgslsmith_f_op_f32(trunc(-741f)), -386f))) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-273f, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1233f * -272f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1209f, 477f, 949f))) - vec3<f32>(var_0.x, -357f, _wgslsmith_f_op_f32(floor(var_0.x)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-120f, var_0.x, -263f), vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    let var_1 = arg_0 & !select(~24065u > u_input.d, all(vec2<bool>(true, true)), true);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, -1000f), -115f)) - -323f), _wgslsmith_div_f32(_wgslsmith_div_f32(-717f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x))))), _wgslsmith_f_op_f32(-var_0.x)), 264f);
    return 1u;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_3 {
    return Struct_3(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)) & false, vec2<u32>(u_input.c, 4294967295u) << (vec2<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51638u, 4294967295u, u_input.c, 1u), vec4<u32>(12193u, global0[_wgslsmith_index_u32(u_input.d, 8u)], arg_0, 0u)), 8u)], _wgslsmith_div_u32(~4294967295u, ~arg_0)) % vec2<u32>(32u)), Struct_1(~func_3(true)), Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 0u, u_input.c, global0[_wgslsmith_index_u32(u_input.d, 8u)]), _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(19467u, 8u)], u_input.d, 0u, 0u), ~vec4<u32>(u_input.c, 11134u, 4294967295u, 1u)))), !all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = false;
    let var_1 = Struct_2(arg_1.d, Struct_1(_wgslsmith_div_u32(~13924u, 83240u) & func_3(all(vec3<bool>(true, arg_1.a, false)))));
    var_0 = !arg_1.e;
    let var_2 = !select(select(!select(vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.a, true, false), true), select(vec3<bool>(true, arg_1.e, arg_1.a), !vec3<bool>(arg_1.a, false, false), arg_3.x != arg_3.x), countOneBits(u_input.b) <= _wgslsmith_div_i32(u_input.a, 1i)), select(!select(vec3<bool>(true, arg_1.e, arg_1.a), vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(true, arg_1.a, arg_1.e)), vec3<bool>(all(vec4<bool>(arg_1.e, arg_1.a, false, false)), any(vec2<bool>(arg_1.e, arg_1.e)), arg_3.x > 672f), true), !vec3<bool>(true, true, arg_1.a));
    var_0 = var_2.x;
    return vec3<bool>(all(select(vec3<bool>(var_2.x, all(vec3<bool>(var_2.x, var_2.x, arg_1.a)), var_2.x), vec3<bool>(arg_1.a | arg_1.a, var_2.x & arg_1.a, true), select(vec3<bool>(var_2.x, false, false), select(var_2, var_2, false), arg_1.a))), false, arg_1.a);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(473f, -993f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, 795f), vec2<f32>(-1000f, arg_2.x)) - _wgslsmith_f_op_vec2_f32(-arg_2)))));
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.b, u_input.a)), min(abs(u_input.b), ~u_input.b), abs(0i));
    let var_2 = _wgslsmith_f_op_f32(-886f + _wgslsmith_f_op_f32(select(527f, 1246f, all(vec2<bool>(arg_0.x, func_2(arg_3, -208f).e)))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2))));
    var var_3 = Struct_3(false, ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3, abs(arg_3)), vec2<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(99962u, 8u)], 1u, arg_1.b.a), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.a, 12990u), vec2<u32>(1u, 1u)))), Struct_1(u_input.d & global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(11619u, 8u)], 8u)]), func_2(arg_1.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-132f - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-696f, 303f)))))).d, arg_0.x);
    return Struct_2(Struct_1(~((arg_3 ^ arg_3) >> ((var_3.b.x >> (3949u % 32u)) % 32u))), func_2(4294967295u, _wgslsmith_f_op_f32(max(233f, _wgslsmith_f_op_f32(abs(arg_2.x))))).c);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = abs(firstLeadingBit(vec2<u32>(abs(u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 4294967295u), vec3<u32>(4810u, 0u, 4294967295u)))) ^ _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 8u)], 8u)], 4294967295u), min(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 8u)], 8u)], 4294967295u), vec2<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 8u)], 8u)])), select(false, false, true)), select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28635u, 8u)], 8u)], 10341u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 8u)], 8u)], u_input.c), true), min(_wgslsmith_mult_vec2_u32(vec2<u32>(544u, u_input.c), vec2<u32>(1u, global0[_wgslsmith_index_u32(26632u, 8u)])), ~vec2<u32>(u_input.c, 4294967295u))));
    let var_1 = func_5(!func_4(Struct_1(~global0[_wgslsmith_index_u32(u_input.c, 8u)]), func_2(var_0.x, _wgslsmith_f_op_f32(floor(-1021f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(160f, arg_0.x) + vec2<f32>(1470f, -1359f))))), Struct_2(Struct_1(var_0.x), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0, vec2<u32>(28440u, 4294967295u)), min(var_0, vec2<u32>(var_0.x, 23682u))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -403f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), func_3(true));
    global0 = array<u32, 8>();
    let var_2 = vec4<u32>(1u, 0u, ~_wgslsmith_sub_u32(1u, ~_wgslsmith_mod_u32(u_input.d, 3761u)), _wgslsmith_add_u32(~_wgslsmith_sub_u32(~34232u, ~u_input.c), 130622u));
    let var_3 = Struct_2(var_1.a, func_2(func_5(vec3<bool>(u_input.a > u_input.a, true, all(vec2<bool>(false, false))), var_1, vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.x, 693f)), _wgslsmith_f_op_f32(-arg_0.x)), ~651u).a.a, _wgslsmith_f_op_f32(-1039f - _wgslsmith_f_op_f32(select(-910f, _wgslsmith_f_op_f32(abs(-1026f)), func_4(Struct_1(u_input.d), Struct_3(true, vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], var_2.x), var_1.b, var_1.b, false), -721f, arg_0.zy).x)))).c);
    return func_2(1u, arg_0.x).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f * 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -700f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2369f)) + _wgslsmith_f_op_f32(round(408f)))) - -2220f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f - var_0)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - -561f), var_0)))));
    let var_2 = abs(0u);
    global0 = array<u32, 8>();
    let var_3 = Struct_3(true, ~_wgslsmith_add_vec2_u32(~select(vec2<u32>(var_2, global0[_wgslsmith_index_u32(0u, 8u)]), vec2<u32>(101438u, 4294967295u), vec2<bool>(false, false)), select(vec2<u32>(17480u, var_2), ~vec2<u32>(u_input.c, 16877u), var_1 > -1323f)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 823f, var_1, -1110f) + vec4<f32>(var_1, -1743f, -1163f, -1000f))))), func_2(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(firstTrailingBit(1u), var_2), 8u)], var_0).c, all(!func_4(func_2(15014u, 315f).c, func_2(var_2, 1024f), _wgslsmith_f_op_f32(-var_0), vec2<f32>(998f, 626f))));
    var var_4 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(55839u, 1u, global0[_wgslsmith_index_u32(0u, 8u)], u_input.c) & vec4<u32>(var_2, 0u, 2543u, 3954u)), vec4<u32>(var_2, ~global0[_wgslsmith_index_u32(u_input.d, 8u)], var_3.d.a, var_2))), vec4<u32>(~_wgslsmith_dot_vec2_u32(countOneBits(var_3.b), ~var_3.b), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(13231u, var_3.b.x), 8u)], var_3.d.a, global0[_wgslsmith_index_u32(u_input.c, 8u)] | u_input.d));
    var_4 = 11239u;
    var var_5 = vec3<bool>(!func_4(var_3.c, var_3, 1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-653f, 321f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-622f, -2411f)))).x, !(-firstLeadingBit(-491i) != u_input.a), func_2(81901u << (~var_2 % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(446f + 1850f))).e == func_2(1u << (var_2 % 32u), _wgslsmith_f_op_f32(floor(-717f))).a);
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(reverseBits(~vec4<u32>(0u, 3890u, var_3.c.a, u_input.d))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.c, 0u, var_3.c.a, var_2), vec4<u32>(0u, 10208u, global0[_wgslsmith_index_u32(0u, 8u)], u_input.d), true), vec4<u32>(8531u, global0[_wgslsmith_index_u32(29963u, 8u)], global0[_wgslsmith_index_u32(64674u, 8u)], var_2)), ~vec4<u32>(var_2, 4294967295u, 4294967295u, 43781u))), vec4<u32>(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, var_3.b.x, u_input.c)), select(vec3<u32>(u_input.d, var_2, u_input.d), vec3<u32>(1u, global0[_wgslsmith_index_u32(24117u, 8u)], global0[_wgslsmith_index_u32(var_2, 8u)]), vec3<bool>(var_3.a, true, false))), 51442u, var_2, var_3.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(var_0 + -204f))), abs(-3005i));
}

