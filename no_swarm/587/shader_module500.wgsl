struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(6056i, -14127i, -1i);

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_1(true, 2147483647i)), Struct_3(Struct_1(false, 2147483647i)), Struct_3(Struct_1(true, 1i)), Struct_3(Struct_1(true, -1i)), Struct_3(Struct_1(true, -17337i)), Struct_3(Struct_1(false, 0i)), Struct_3(Struct_1(false, -16944i)), Struct_3(Struct_1(true, 6622i)), Struct_3(Struct_1(true, -18199i)), Struct_3(Struct_1(false, -18261i)), Struct_3(Struct_1(false, 2147483647i)), Struct_3(Struct_1(true, 21366i)), Struct_3(Struct_1(true, -865i)), Struct_3(Struct_1(true, i32(-2147483648))), Struct_3(Struct_1(true, -1i)), Struct_3(Struct_1(false, -18620i)), Struct_3(Struct_1(true, 2147483647i)), Struct_3(Struct_1(true, 5669i)), Struct_3(Struct_1(false, -11997i)), Struct_3(Struct_1(true, 792i)), Struct_3(Struct_1(false, -1i)), Struct_3(Struct_1(true, -1i)), Struct_3(Struct_1(false, -3142i)), Struct_3(Struct_1(true, 2147483647i)), Struct_3(Struct_1(true, 19299i)), Struct_3(Struct_1(true, 18091i)), Struct_3(Struct_1(false, 0i)), Struct_3(Struct_1(true, 0i)));

var<private> global2: array<vec4<u32>, 31>;

var<private> global3: array<i32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(floor(-1000f)), !(global0.x <= 2147483647i), u_input.a.x, 1175f, Struct_2(9996u, Struct_1(false, firstLeadingBit(global0.x)), Struct_1(true, _wgslsmith_div_i32(global0.x, _wgslsmith_add_i32(global0.x, -21804i)))));
    let var_1 = any(select(!vec2<bool>(all(vec3<bool>(false, var_0.e.b.a, var_0.e.b.a)), false), vec2<bool>(true, select(var_0.b, var_0.e.b.a, var_0.b) & (var_0.c < u_input.a.x)), false));
    global3 = array<i32, 3>();
    global3 = array<i32, 3>();
    var var_2 = vec2<f32>(856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1049f), -679f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + var_0.d) + _wgslsmith_f_op_f32(min(var_0.d, 1000f))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)), -379f))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, countOneBits(u_input.a.x)));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)), arg_0.a.a, firstLeadingBit(~u_input.a.x), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) * -904f)))), Struct_2(u_input.a.x, Struct_1((global3[_wgslsmith_index_u32(var_0.x, 3u)] < -106336i) != true, -reverseBits(arg_0.a.b)), Struct_1(false, arg_3.a.b)));
    var var_2 = _wgslsmith_div_vec4_u32(~vec4<u32>(~1547u, 4294967295u << (var_1.e.a % 32u), var_1.c, countOneBits(4294967295u)) >> (countOneBits(~(global2[_wgslsmith_index_u32(4294967295u, 31u)] & global2[_wgslsmith_index_u32(var_0.x, 31u)])) % vec4<u32>(32u)), vec4<u32>(select(var_1.c, ~1u, any(vec2<bool>(arg_0.a.a, true))) & _wgslsmith_mult_u32(1u, ~56829u), 0u, select(7067u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, u_input.a.x), vec3<u32>(5215u, var_0.x, u_input.a.x)), true), _wgslsmith_dot_vec2_u32(~(var_0.zy & vec2<u32>(1u, 0u)), _wgslsmith_mult_vec2_u32(u_input.a << (var_0.xx % vec2<u32>(32u)), ~vec2<u32>(5807u, 35787u)))));
    global0 = vec3<i32>(var_1.e.c.b, -(_wgslsmith_dot_vec3_i32(~vec3<i32>(29605i, global0.x, 24262i), -vec3<i32>(global0.x, -68910i, arg_0.a.b)) | ~(-11098i)), -12687i);
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(2084u, select(firstTrailingBit(0u) >> ((var_1.c << (var_0.x % 32u)) % 32u), abs(34992u), arg_3.a.a), u_input.a.x), vec3<u32>(abs(1u), ~(~var_0.x) | 35547u, ~_wgslsmith_add_u32(var_2.x, abs(1u))));
    return _wgslsmith_div_u32(var_0.x, 13207u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: i32) -> vec2<bool> {
    var var_0 = arg_1.a.a;
    global1 = array<Struct_3, 28>();
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(523f))), !(arg_1.a.a | (true && all(vec4<bool>(false, arg_1.a.a, false, false)))), _wgslsmith_mod_u32(4294967295u, func_4(Struct_3(Struct_1(arg_1.a.a, global0.x)), vec4<bool>(arg_1.a.a, !arg_1.a.a, true, arg_1.a.a), vec3<f32>(1681f, _wgslsmith_f_op_f32(func_3(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], -58141i, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], -20726i))), _wgslsmith_f_op_f32(f32(-1f) * -1458f)), arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1970f, 107f, arg_1.a.a)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-851f, -184f) + 928f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-428f + -370f) + -1402f))), Struct_2(u_input.a.x, Struct_1(!arg_1.a.a, ~1i), arg_1.a));
    let var_2 = ~(~var_1.e.a);
    var var_3 = _wgslsmith_dot_vec2_u32(~u_input.a, u_input.a);
    return !select(vec2<bool>(true, true), !vec2<bool>(true, all(vec3<bool>(false, false, var_1.e.c.a))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, arg_1.a.a), vec2<bool>(false, true)), vec2<bool>(var_1.b & arg_1.a.a, var_1.b)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> u32 {
    global3 = array<i32, 3>();
    var var_0 = select(!select(!select(vec2<bool>(arg_1.a.a, false), vec2<bool>(arg_1.a.a, arg_1.a.a), vec2<bool>(arg_1.a.a, arg_1.a.a)), select(select(vec2<bool>(true, false), vec2<bool>(false, arg_1.a.a), vec2<bool>(arg_1.a.a, false)), func_2(vec2<i32>(arg_0.x, arg_1.a.b), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 40771i), true), arg_1.a.a), vec2<bool>(arg_1.a.a, all(vec3<bool>(false, arg_1.a.a, arg_1.a.a))), vec2<bool>(true, !select(!arg_1.a.a, true, arg_1.a.a)));
    global3 = array<i32, 3>();
    var_0 = vec2<bool>(any(!(!vec2<bool>(true, arg_1.a.a))) || false, !select(true, select(true, true, false), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(242f)), 1310f, arg_1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-878f - -988f)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(round(-650f)), true)), _wgslsmith_f_op_f32(func_3(~firstTrailingBit(vec4<i32>(-21881i, arg_1.a.b, arg_1.a.b, -2147483647i))))));
    return ~u_input.a.x ^ _wgslsmith_mod_u32(~(~(~u_input.a.x)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = ~min(global2[_wgslsmith_index_u32(func_1(vec3<i32>(global3[_wgslsmith_index_u32(1u, 3u)], global0.x, global0.x), Struct_3(Struct_1(false, global0.x))), 31u)] >> (max(vec4<u32>(1u, 65876u, u_input.a.x, 1u), global2[_wgslsmith_index_u32(1u, 31u)]) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32((var_0 & 86874u) | 25316u, func_1(~vec3<i32>(0i, global3[_wgslsmith_index_u32(var_0, 3u)], -60407i), global1[_wgslsmith_index_u32(44724u, 28u)])), 31u)]);
    let var_2 = Struct_3(Struct_1(true, 0i));
    global2 = array<vec4<u32>, 31>();
    var_1 = _wgslsmith_sub_vec4_u32(min(global2[_wgslsmith_index_u32(13441u, 31u)], global2[_wgslsmith_index_u32(func_1(min(vec3<i32>(5353i, 2147483647i, 0i), vec3<i32>(var_2.a.b, global0.x, -2147483647i)) & -vec3<i32>(-6820i, var_2.a.b, global0.x), var_2), 31u)]), _wgslsmith_add_vec4_u32(~countOneBits(min(global2[_wgslsmith_index_u32(var_0, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)])), vec4<u32>(_wgslsmith_div_u32(~var_0, _wgslsmith_clamp_u32(4294967295u, var_1.x, var_1.x)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(64595u, var_1.x, 64731u, u_input.a.x), global2[_wgslsmith_index_u32(var_1.x, 31u)], false), ~vec4<u32>(var_1.x, 18636u, u_input.a.x, u_input.a.x)), u_input.a.x, 11853u)));
    let var_3 = Struct_1(var_2.a.a, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(5793u, 31u)], ~vec4<i32>((var_3.b | 18867i) >> (max(40268u, var_1.x) % 32u), (var_3.b ^ -2147483647i) | max(var_3.b, 2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(0u, 3u)], global0.x, 1i), ~vec4<i32>(global0.x, var_2.a.b, var_3.b, 2147483647i)), select(_wgslsmith_div_i32(16378i, global0.x), abs(-54031i), var_3.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1447f, -1294f)))))));
}

