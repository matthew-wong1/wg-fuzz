struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<u32, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>) -> i32 {
    global1 = array<u32, 14>();
    let var_0 = vec3<bool>(!select(!arg_0.c, arg_0.c, all(!vec2<bool>(false, arg_0.c))), _wgslsmith_f_op_f32(-1f) <= _wgslsmith_div_f32(arg_0.b.b, _wgslsmith_f_op_f32(floor(arg_0.b.b))), all(vec3<bool>(arg_0.c, _wgslsmith_f_op_f32(step(1557f, arg_0.b.d)) == _wgslsmith_f_op_f32(-arg_0.d.a.b), -arg_0.b.c.x < max(u_input.c, arg_0.b.a.x))));
    return 2147483647i;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(any(vec4<bool>(false, true, true, true)), select(false, true, false), all(vec2<bool>(true, false))), vec3<bool>(false, all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false))), vec3<bool>(select(false, false, true), true, true)), all(vec3<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(false, true, true))))), -431f, -_wgslsmith_mod_vec3_i32(abs(~vec3<i32>(u_input.a, u_input.c, u_input.a)), vec3<i32>(func_3(Struct_4(vec4<u32>(4294967295u, u_input.d.x, u_input.b, u_input.b), Struct_1(vec2<i32>(14400i, u_input.c), 686f, vec4<i32>(0i, u_input.a, u_input.c, -1i), 630f, 31385u), false, Struct_3(Struct_1(vec2<i32>(u_input.a, 2147483647i), 1067f, vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.c), -1000f, 0u), Struct_1(vec2<i32>(u_input.c, 1i), -1000f, vec4<i32>(0i, u_input.a, -14236i, 2147483647i), -1162f, 46477u), 0i)), vec4<u32>(global1[_wgslsmith_index_u32(57547u, 14u)], 30925u, 0u, global1[_wgslsmith_index_u32(3269u, 14u)])), 0i, ~52490i)), u_input.d.yz);
    global0 = array<Struct_1, 29>();
    var var_1 = 2128f;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(~0u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], -1i);
    var var_3 = Struct_4(abs(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.x, global1[_wgslsmith_index_u32(var_2.b.e, 14u)], 1u, var_0.d.x), vec4<u32>(u_input.b, 4294967295u, var_0.d.x, 0u)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(59506u, var_2.b.e), min(_wgslsmith_add_vec2_u32(var_0.d, vec2<u32>(var_0.d.x, var_2.b.e)), var_0.d) >> (vec2<u32>(~var_2.b.e, 0u) % vec2<u32>(32u))), 29u)], !var_0.a.x, Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], Struct_1(var_0.c.zx, var_0.b, max(abs(vec4<i32>(var_0.c.x, 0i, u_input.c, var_2.c)), vec4<i32>(0i, var_2.b.a.x, var_0.c.x, 2147483647i)), 791f, ~global1[_wgslsmith_index_u32(0u & var_0.d.x, 14u)]), 1i ^ ~_wgslsmith_mult_i32(-15911i, var_2.a.a.x)));
    return Struct_3(var_2.a, Struct_1(~(abs(vec2<i32>(u_input.a, u_input.a)) << (countOneBits(u_input.d.yx) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2037f - _wgslsmith_div_f32(557f, var_0.b)) + var_0.b), countOneBits(max(~vec4<i32>(var_3.b.a.x, 45278i, 29091i, -77i), _wgslsmith_div_vec4_i32(var_2.b.c, var_3.b.c))), var_0.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(29468u, 41672u), vec2<u32>(8046u, 0u)), var_2.a.e)), var_2.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_3) -> vec4<bool> {
    global0 = array<Struct_1, 29>();
    let var_0 = max(vec3<i32>(-(~0i), -1i, arg_3.b.a.x ^ _wgslsmith_sub_i32(3717i, u_input.c)), ~countOneBits(firstTrailingBit(~arg_3.b.c.zyx)));
    var var_1 = u_input.d.x;
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~67335u, _wgslsmith_dot_vec2_u32(~u_input.d.xy, ~(~u_input.d.xy)), _wgslsmith_clamp_u32(~(~arg_3.a.e), arg_3.b.e, min(4294967295u, firstTrailingBit(4294967295u))), global1[_wgslsmith_index_u32(~(~arg_3.a.e), 14u)]), ~abs(_wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, arg_3.a.e, 1u, arg_3.b.e), vec4<u32>(6902u, 1u, arg_3.a.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(41669u, 14u)], 14356u, 1u), vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(4294967295u, 14u)], u_input.b)))));
    global0 = array<Struct_1, 29>();
    return !vec4<bool>(all(select(arg_0, arg_0, vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(-631f - _wgslsmith_f_op_f32(arg_1.x - -183f)) >= arg_1.x, !(true | arg_0.x) && false, arg_0.x == false);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> vec3<bool> {
    var var_0 = select(!vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true)), true, !(u_input.a != u_input.a)), !select(vec4<bool>(true, true, true, true), func_4(select(vec2<bool>(true, true), vec2<bool>(true, false), false), _wgslsmith_div_vec4_f32(arg_0, vec4<f32>(arg_1, arg_0.x, 1706f, -2073f)), vec2<i32>(u_input.a, u_input.a), func_2()), !(arg_0.x >= -221f)), select(vec4<bool>(any(vec4<bool>(true, true, false, true)) | true, !(u_input.d.x > 72224u), u_input.d.x < select(4294967295u, u_input.d.x, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))));
    global1 = array<u32, 14>();
    let var_1 = all(select(vec2<bool>(true, any(var_0.zwy)), func_4(select(var_0.zz, !vec2<bool>(var_0.x, var_0.x), arg_1 <= arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(-980f, 824f, -936f, arg_0.x) - _wgslsmith_f_op_vec4_f32(step(arg_0, arg_0))), vec2<i32>(-1i, ~u_input.c), Struct_3(func_2().b, Struct_1(vec2<i32>(36826i, u_input.c), arg_1, vec4<i32>(-42710i, u_input.a, u_input.a, -27279i), 902f, 52238u), u_input.a)).wx, var_0.x));
    return vec3<bool>(true, any(!func_4(vec2<bool>(false, var_1), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, 1345f, arg_1), vec4<f32>(arg_0.x, 1793f, arg_1, arg_1))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1259i, u_input.c)), func_2()).xxz), var_0.x);
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    global1 = array<u32, 14>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = vec3<u32>(0u, ~(~(~61325u)) ^ arg_1.x, firstTrailingBit(~u_input.d.x));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1832f)))), u_input.d.zz, Struct_2(func_1(vec4<f32>(_wgslsmith_f_op_f32(224f + 681f), _wgslsmith_div_f32(1000f, -132f), -1000f, _wgslsmith_f_op_f32(-1178f + 588f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-430f, 2137f) * _wgslsmith_f_op_f32(f32(-1f) * -1425f))), -153f, countOneBits(vec3<i32>(u_input.c, 0i, ~34051i)), abs(~vec2<u32>(global1[_wgslsmith_index_u32(1u, 14u)], 5105u) << (~u_input.d.xx % vec2<u32>(32u)))), Struct_2(vec3<bool>(true, true, true), 128f, vec3<i32>(-u_input.c ^ 38039i, func_3(Struct_4(vec4<u32>(global1[_wgslsmith_index_u32(641u, 14u)], 9116u, 14000u, global1[_wgslsmith_index_u32(0u, 14u)]), global0[_wgslsmith_index_u32(14995u, 29u)], false, Struct_3(Struct_1(vec2<i32>(u_input.c, 2147483647i), 319f, vec4<i32>(1i, -4650i, u_input.c, 18979i), -1959f, 89661u), global0[_wgslsmith_index_u32(u_input.b, 29u)], u_input.c)), ~vec4<u32>(31762u, 1u, u_input.d.x, 0u)), 2147483647i), vec2<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(35752u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32335u, 14u)], 14u)], 14u)], 14u)], 0u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(49273u, 14u)], u_input.b, global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(u_input.d.x, 14u)])), ~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 14u)], u_input.d.x, global1[_wgslsmith_index_u32(5735u, 14u)])), global1[_wgslsmith_index_u32(0u, 14u)])));
    var var_1 = Struct_2(func_4(!vec2<bool>(true, func_1(vec4<f32>(var_0.b.d, 943f, -806f, -1037f), var_0.a.b).x), vec4<f32>(var_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -568f), 982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b - var_0.b.d))), vec2<i32>(u_input.c, 59568i), func_2()).yzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b - _wgslsmith_f_op_f32(var_0.a.d + var_0.a.d)) * func_5(var_0.a.b, _wgslsmith_add_vec2_u32(u_input.d.zx, u_input.d.xz), Struct_2(vec3<bool>(false, false, true), var_0.a.d, vec3<i32>(2147483647i, 1i, 23865i), u_input.d.yx), Struct_2(vec3<bool>(false, false, true), var_0.a.b, vec3<i32>(1i, 24398i, 24921i), vec2<u32>(var_0.a.e, var_0.a.e))).b.b)), var_0.b.c.zyx, vec2<u32>(~func_5(var_0.a.b, u_input.d.yx, Struct_2(vec3<bool>(true, true, true), var_0.a.d, vec3<i32>(-2147483647i, -45207i, u_input.c), vec2<u32>(58325u, 64388u)), Struct_2(vec3<bool>(false, true, true), var_0.b.b, vec3<i32>(-1i, -12332i, var_0.b.a.x), u_input.d.xz)).b.e, ~_wgslsmith_div_u32(u_input.b, 1u)) ^ select(u_input.d.zx, vec2<u32>(7826u << (var_0.a.e % 32u), var_0.b.e), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_2 = Struct_1(vec2<i32>(func_5(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, var_1.b), _wgslsmith_f_op_f32(round(var_1.b))), countOneBits(vec2<u32>(10487u, 1u)), Struct_2(func_1(vec4<f32>(1171f, 453f, var_1.b, var_1.b), 604f), -533f, ~vec3<i32>(-21013i, -1i, var_1.c.x), var_1.d), Struct_2(var_1.a, _wgslsmith_div_f32(var_1.b, 491f), var_0.b.c.zzw ^ var_0.a.c.wwy, var_1.d)).c, ~68751i), -1000f, var_0.a.c, var_0.b.b, reverseBits(max(max(0u, var_0.b.e), 73025u)) & var_0.a.e);
    global0 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, max(countOneBits(countOneBits(countOneBits(1u))), countOneBits(~_wgslsmith_sub_u32(var_1.d.x, 1u))), _wgslsmith_add_i32(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(16124i, var_0.a.a.x)), 2722i), u_input.a), -642f, vec3<f32>(_wgslsmith_f_op_f32(234f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))), -1482f, _wgslsmith_f_op_f32(1880f * 1167f)));
}

