struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<Struct_2, 17>;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> bool {
    var var_0 = vec3<u32>(14692u, ~36363u, 1u);
    var var_1 = global1[_wgslsmith_index_u32(arg_0.c.b.a, 17u)];
    var var_2 = select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, !arg_0.d.x, select(false, arg_0.c.b.d, arg_0.a.d)), select(vec4<bool>(var_1.b.d, var_1.b.d, arg_0.a.d, arg_0.c.b.d), !vec4<bool>(false, arg_0.d.x, arg_0.b.b.d, false), select(vec4<bool>(true, true, var_1.b.d, true), vec4<bool>(arg_0.d.x, false, false, arg_0.b.b.d), true)), false & !var_1.b.d), arg_0.a.d), select(!vec4<bool>(var_1.b.d, -988f < arg_1, all(vec2<bool>(false, arg_0.a.d)), true), !(!(!vec4<bool>(var_1.b.d, false, arg_0.c.b.d, false))), true), !(!(!vec4<bool>(arg_0.c.b.d, arg_0.b.b.d, false, var_1.b.d))));
    var var_3 = -_wgslsmith_clamp_i32(_wgslsmith_add_i32(~u_input.a, min(~(-1i), abs(var_1.b.c))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), -var_1.b.c, select(16461i, arg_0.a.c, var_1.b.d) >> (_wgslsmith_clamp_u32(var_1.b.b.x, 4294967295u, 0u) % 32u)), min(abs(~u_input.a), ~(i32(-1i) * -1244i)));
    let var_4 = arg_0.a;
    return var_4.d;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    let var_0 = false;
    let var_1 = vec3<bool>(arg_1, arg_1, arg_0.x);
    global2 = 1i;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-941f - -214f), -2045f, _wgslsmith_f_op_f32(f32(-1f) * -414f), 328f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, 2369f, -194f, -1636f)), vec4<f32>(-1000f, 166f, -375f, -715f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, -1482f, -1341f, 794f) + vec4<f32>(973f, 660f, -1263f, -435f)), vec4<f32>(262f, 288f, 3002f, -1954f)))));
    return _wgslsmith_div_u32(min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(10837u, 1u), _wgslsmith_clamp_u32(25983u, 46379u, 10247u)), 61778u), 1u) >> (_wgslsmith_dot_vec2_u32(abs(~select(vec2<u32>(1u, 1u), vec2<u32>(0u, 101709u), arg_0.x)), ~(~countOneBits(vec2<u32>(40265u, 0u)))) % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~(~(~select(32393u, 28720u, false))));
    global1 = array<Struct_2, 17>();
    var var_1 = Struct_3(Struct_1(func_4(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, true)), true), func_3(Struct_3(Struct_1(var_0, vec2<u32>(var_0, 22838u), 94865i, true), global1[_wgslsmith_index_u32(var_0, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], vec2<bool>(false, false), vec2<u32>(6822u, 0u)), 1000f)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0, var_0) | ~vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u)), 21645i, any(vec2<bool>(true, true))), global1[_wgslsmith_index_u32(59926u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], vec2<bool>(true, func_3(Struct_3(Struct_1(var_0, vec2<u32>(var_0, 4294967295u), 0i, false), Struct_2(vec3<u32>(4294967295u, var_0, var_0), Struct_1(var_0, vec2<u32>(803u, 1u), 0i, false)), global1[_wgslsmith_index_u32(var_0, 17u)], select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), max(vec2<u32>(22432u, 4294967295u), vec2<u32>(55481u, 14546u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-264f, -421f)), 1f))), vec2<u32>(8502u, var_0));
    global0 = array<vec4<i32>, 11>();
    global0 = array<vec4<i32>, 11>();
    return Struct_2(_wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 7045u, 0u) << (var_1.c.a % vec3<u32>(32u))), ~(~max(vec3<u32>(4294967295u, var_1.e.x, var_1.b.a.x), var_1.b.a))), Struct_1(select(~(~var_1.e.x), var_0, false), vec2<u32>(select(var_1.a.a, func_4(vec4<bool>(false, false, var_1.c.b.d, false), var_1.a.d), !var_1.c.b.d), _wgslsmith_clamp_u32(var_0 | 0u, _wgslsmith_div_u32(var_1.a.b.x, var_0), ~var_1.c.b.a)), _wgslsmith_add_i32(var_1.b.b.c, _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, u_input.a), -18677i)), true));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(Struct_1(4294967295u, ~arg_1.b, i32(-1i) * -19533i, !any(vec2<bool>(arg_1.d, arg_1.d))), func_2(), Struct_2(countOneBits((vec3<u32>(arg_1.b.x, 0u, arg_1.b.x) << (vec3<u32>(0u, 103639u, arg_1.b.x) % vec3<u32>(32u))) & func_2().a), Struct_1(_wgslsmith_mult_u32(arg_1.a, 81322u) ^ _wgslsmith_sub_u32(4294967295u, arg_1.a), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.b.x, 0u), vec2<u32>(17261u, arg_1.a)) | arg_1.b, ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(13187i, -2147483647i, arg_1.c, 76042i), global0[_wgslsmith_index_u32(arg_1.a, 11u)]) <= -35704i)), select(select(vec2<bool>(arg_1.d, 1u == arg_1.b.x), select(vec2<bool>(true, arg_1.d), vec2<bool>(false, arg_1.d), vec2<bool>(false, arg_1.d)), select(!vec2<bool>(arg_1.d, arg_1.d), !vec2<bool>(arg_1.d, arg_1.d), !vec2<bool>(false, arg_1.d))), vec2<bool>(false, !arg_1.d), !any(!vec3<bool>(arg_1.d, arg_1.d, true))), vec2<u32>(~arg_1.b.x >> (35144u % 32u), _wgslsmith_clamp_u32(0u, ~(~arg_1.b.x), firstTrailingBit(9349u))));
    var var_1 = abs(arg_0);
    global2 = -1823i;
    var var_2 = ~_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, max(var_0.a.c, var_0.b.b.c), u_input.a), vec3<i32>(var_1.x, -32317i, arg_1.c));
    var var_3 = vec4<bool>(any(vec3<bool>((12415u >> (var_0.b.b.b.x % 32u)) >= _wgslsmith_div_u32(0u, 24568u), true, all(vec4<bool>(var_0.a.d, arg_1.d, var_0.b.b.d, var_0.c.b.d)))), false, true, !func_2().b.d);
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(abs(arg_1.b.x), 0u)), _wgslsmith_mod_vec2_u32(firstTrailingBit(arg_1.b) | firstLeadingBit(vec2<u32>(7399u, var_0.b.a.x)), vec2<u32>(firstLeadingBit(arg_1.b.x), func_4(vec4<bool>(arg_1.d, var_0.c.b.d, false, true), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(~(~firstTrailingBit(1u)), select(~(~28075u), ~func_1(vec4<i32>(u_input.a, -62230i, u_input.a, -45792i), Struct_1(1u, vec2<u32>(0u, 61167u), u_input.a, true)), func_2().b.d));
    global2 = u_input.a;
    var var_1 = ~(vec2<u32>(var_0.x, func_4(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), true)) << (vec2<u32>(40754u, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), ~0u)) % vec2<u32>(32u)));
    let var_2 = func_2().b;
    let var_3 = global1[_wgslsmith_index_u32(select(~var_1.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(countOneBits(0u), 4294967295u, var_1.x), ~_wgslsmith_clamp_u32(4294967295u, var_0.x, 24692u)), min(var_2.c, u_input.a) <= _wgslsmith_add_i32(1i, 0i)) ^ ~_wgslsmith_mod_u32(func_2().b.b.x ^ var_0.x, _wgslsmith_sub_u32(~var_2.b.x, ~var_2.a)), 17u)];
    global2 = -1i;
    var var_4 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(229f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -471f), -497f))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f), -2038f))) || all(select(!vec2<bool>(true, var_3.b.d), select(vec2<bool>(true, true), select(vec2<bool>(var_3.b.d, var_2.d), vec2<bool>(var_3.b.d, var_3.b.d), var_2.d), var_3.b.d), false));
    var var_5 = var_2.d;
    global0 = array<vec4<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~85356u, vec2<i32>(countOneBits(2147483647i), abs(1i)));
}

