struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: u32;

var<private> global2: f32 = -1673f;

var<private> global3: i32;

var<private> global4: array<vec2<i32>, 25>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-871f)), _wgslsmith_f_op_f32(floor(-660f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(135f - -1008f) - _wgslsmith_f_op_f32(-1094f + -769f))))), -1000f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(-963f)), vec2<u32>(arg_1.x, arg_1.x), abs(~(~1u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, -857f, var_0.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1038f, var_0.x, var_0.x, 640f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), 315f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(max(850f, 2021f))) * vec4<f32>(_wgslsmith_f_op_f32(-835f - var_1.a), 851f, var_0.x, _wgslsmith_div_f32(var_1.a, -1163f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a * var_0.x), -257f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, 601f)), var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-705f, -523f, var_1.a, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, arg_2, true, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(586f, var_1.a, var_0.x, -1638f), vec4<f32>(var_0.x, var_0.x, 1007f, -391f))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_1.a)))), arg_1.ww ^ min(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(48957u, arg_0)), vec2<u32>(27745u, arg_0)), vec2<u32>(_wgslsmith_sub_u32(arg_1.x, arg_1.x), 77020u | arg_1.x)), ~23098u);
    var var_4 = !vec3<bool>(true || (arg_2 && !arg_2), arg_2, arg_2);
    return u_input.a;
}

fn func_2() -> vec2<f32> {
    var var_0 = ~(~24700u);
    var var_1 = -214f;
    var var_2 = global0[_wgslsmith_index_u32(max(~1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(48103u, 95467u, 44688u)), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(54890u, 4294967295u, 1u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_div_u32(49095u, 81811u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 0u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 2597u, 4294967295u), vec4<u32>(16983u, 47465u, 0u, 21456u), vec4<u32>(85844u, 48014u, 14837u, 0u)))))), 32u)];
    var var_3 = vec2<i32>(func_3(var_2.c, vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_2.c, 39745u), vec3<u32>(0u, var_2.c, 0u)), var_2.b.x, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, var_2.b.x, 1u), vec3<u32>(var_2.b.x, var_2.c, var_2.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 38880u, 4294967295u), vec3<u32>(var_2.b.x, 1969u, 22545u))), _wgslsmith_mult_u32(~var_2.c, min(var_2.c, 8583u))), !(_wgslsmith_f_op_f32(trunc(var_2.a)) == -640f)), 8222i);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(641f, -267f)), _wgslsmith_f_op_f32(-var_2.a)) * vec2<f32>(-1702f, -1122f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(trunc(var_2.a))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1821f, 776f) + vec2<f32>(var_2.a, var_2.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(451f, 1114f) - vec2<f32>(303f, var_2.a)))))), any(vec4<bool>(true, all(vec2<bool>(true, true)), false, true)) && select(any(vec2<bool>(false, false)), false, true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * vec2<f32>(_wgslsmith_f_op_f32(abs(-1187f)), _wgslsmith_f_op_f32(floor(-1056f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1401f) + _wgslsmith_f_op_f32(var_0.x + var_0.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1246f, 226f)))), ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 44006u), vec2<u32>(arg_1, 25549u))) >> (~vec2<u32>(38197u, 8650u) % vec2<u32>(32u)), ~select(7412u, abs(arg_1), arg_2) >> (6447u % 32u));
    let var_2 = global0[_wgslsmith_index_u32(0u, 32u)];
    global4 = array<vec2<i32>, 25>();
    var var_3 = global0[_wgslsmith_index_u32(1u, 32u)];
    return select(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.b.x, 0u), vec3<u32>(4294967295u, var_1.b.x, var_3.b.x))), var_3.b.x, any(select(select(vec3<bool>(false, arg_3.x, arg_2), select(vec3<bool>(arg_2, arg_3.x, false), vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(false, false, arg_3.x)), vec3<bool>(false, true, false)), vec3<bool>(any(vec3<bool>(arg_3.x, arg_2, false)), any(vec4<bool>(arg_2, arg_3.x, arg_3.x, true)), u_input.a == 1i), !(!arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -602f)));
    global0 = array<Struct_1, 32>();
    let var_1 = Struct_1(455f, vec2<u32>(1u, 0u), ~_wgslsmith_mod_u32(func_1(abs(vec2<i32>(u_input.a, u_input.a)), 1u, true, vec2<bool>(true, true)), ~1u));
    let var_2 = u_input.a;
    let var_3 = ~_wgslsmith_div_vec2_i32(firstTrailingBit(~(-global4[_wgslsmith_index_u32(var_1.b.x, 25u)])), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-global4[_wgslsmith_index_u32(61874u, 25u)], vec2<i32>(-1i, 27955i)), _wgslsmith_mod_vec2_i32(global4[_wgslsmith_index_u32(0u, 25u)] ^ global4[_wgslsmith_index_u32(62337u, 25u)], global4[_wgslsmith_index_u32(~47202u, 25u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(~4294967295u, var_1.c), 1u, _wgslsmith_mod_u32(firstTrailingBit(abs(var_1.c)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_1.c, var_1.c, var_1.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(18768u, 4294967295u, 42073u), vec3<u32>(4294967295u, var_1.b.x, var_1.c)))), 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1147f)))))), vec2<u32>(var_1.b.x, ~var_1.b.x >> (~var_1.c % 32u)), ~var_1.b.x, -38581i);
}

