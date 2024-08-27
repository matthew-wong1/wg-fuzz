struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 26>;

var<private> global1: array<u32, 27>;

var<private> global2: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    var var_0 = 4364i;
    let var_1 = all(vec4<bool>(abs(select(u_input.b.x, global2.a, global2.c.x)) >= (select(57834u, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], true) ^ ~u_input.c), true, true, select(all(global2.c) | (4294967295u != global1[_wgslsmith_index_u32(u_input.c, 27u)]), !global2.c.x, all(vec4<bool>(false, false, false, global2.c.x)))));
    let var_2 = !(!vec2<bool>(true, !var_1));
    let var_3 = Struct_4(_wgslsmith_dot_vec2_i32((vec2<i32>(u_input.a, 0i) >> (u_input.b % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1093i), -arg_1.xz), (arg_1.zy & abs(arg_1.yz)) ^ (vec2<i32>(-1i) * -vec2<i32>(u_input.a, -1i))));
    let var_4 = global2.c.ywy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1884f + 2944f))))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> vec3<u32> {
    let var_0 = select(arg_0, true, arg_2);
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global2.a >> (1u % 32u)), 27u)], 1u, ~firstLeadingBit(65698u)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-828f)), global2.b.x)), 730f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2726f - global2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.b.x)), 1f))), Struct_1(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64111u, 27u)], 27u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, 1325f, global2.b.x, global2.b.x) - vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.b, global2.b)))));
    global2 = Struct_3(arg_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.b) - global2.b), vec4<bool>(true, false, global2.d >= _wgslsmith_sub_i32(u_input.a, global2.d ^ 46879i), var_0), -global2.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_f32(-1067f * global2.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-var_1.b.b.x)), -2835f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.x, var_1.b.b.x, var_1.a.b.x, var_1.b.b.x), var_1.a.b, arg_2)) - _wgslsmith_f_op_vec4_f32(global2.b + vec4<f32>(var_1.a.b.x, global2.b.x, global2.b.x, var_1.b.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b.b + var_1.b.b))))), _wgslsmith_f_op_vec4_f32(select(global2.b, vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(-var_1.a.b.x), global2.b.x, _wgslsmith_f_op_f32(-global2.b.x)), any(!(!global2.c.zxx)))), !any(vec2<bool>(var_0, global2.d != -44597i))));
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~global2.a, ~u_input.b.x, 68001u), vec3<u32>(~global1[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_clamp_u32(global2.a, 0u, 4294967295u), 0u)), var_1.b.a, var_1.b.a), abs(vec3<u32>(~43434u, 1u, abs(global1[_wgslsmith_index_u32(22835u, 27u)])) & vec3<u32>(_wgslsmith_add_u32(var_1.b.a, var_1.a.a), _wgslsmith_mod_u32(10229u, 22316u), arg_1.x | global1[_wgslsmith_index_u32(arg_1.x, 27u)])));
    return vec3<u32>(104238u, ~(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 20449u), vec3<u32>(global2.a, 0u, 14203u)), ~var_3) >> (3777u % 32u)), global2.a);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = max(~func_3(global2.c.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a, 48279u), u_input.b, u_input.b ^ u_input.b), !(!global2.c.x), any(vec4<bool>(global2.c.x, false, global2.c.x, false))), ~vec3<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(11281u, 27u)], 44493u) >> (_wgslsmith_sub_u32(38098u, u_input.b.x) % 32u), ~69021u, _wgslsmith_clamp_u32(1u, 4836u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global2.a, global2.a), vec3<u32>(11068u, global2.a, 1u)))));
    global2 = Struct_3(min(14626u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(24527u, 27u)], 1u, var_0.x) >> (vec4<u32>(global2.a, 42534u, u_input.b.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(u_input.b.x ^ global1[_wgslsmith_index_u32(22933u, 27u)], _wgslsmith_div_u32(58078u, u_input.c), 55225u, reverseBits(u_input.c)))), arg_0, !(!select(select(global2.c, vec4<bool>(global2.c.x, true, true, false), true), global2.c, false)), ~(1i >> (_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(global2.a, global2.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)])) % 32u)) << (20464u % 32u));
    global1 = array<u32, 27>();
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(u_input.c, 27u)], vec4<f32>(arg_0.x, -1657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + 1145f) + -1130f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.x))))), _wgslsmith_f_op_f32(max(arg_0.x, 2876f))));
    let var_2 = global2.c;
    return global2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - -964f);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b.x)))), select(firstTrailingBit(-vec3<i32>(global2.d, -2346i, u_input.a) | _wgslsmith_div_vec3_i32(vec3<i32>(-32402i, 2147483647i, 1i), vec3<i32>(1i, 9685i, 13779i))), vec3<i32>(u_input.a, (global2.d | 1i) >> (1u % 32u), u_input.a), global2.c.ywx)));
    global2 = func_4(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(24730u, u_input.b.x, global2.a), ~vec3<u32>(u_input.b.x, 1u, 1u)), vec3<u32>(14074u, ~55212u, func_2(global2.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global2.b, _wgslsmith_f_op_vec4_f32(min(global2.b, global2.b)), vec4<bool>(global2.c.x, false, global2.c.x, false))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global2.b))))), Struct_3(0u, vec4<f32>(_wgslsmith_f_op_f32(min(-425f, -984f)), global2.b.x, 913f, -1000f), select(vec4<bool>(global2.c.x, global2.c.x, true, !global2.c.x), global2.c, !select(global2.c, vec4<bool>(true, true, global2.c.x, false), global2.c)), -(~(-10891i))), ~_wgslsmith_add_u32(global2.a, global2.a), true);
    let var_1 = vec3<u32>(global1[_wgslsmith_index_u32(min(~(~33458u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b) % 32u)), ((52061u << (global2.a % 32u)) >> (global2.a % 32u)) ^ _wgslsmith_clamp_u32(global2.a, ~4294967295u, ~11652u)), 27u)], ~73688u, ~_wgslsmith_div_u32(u_input.c, ~global2.a));
    let var_2 = Struct_5(Struct_3(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1063f, global2.b.x, 371f, global2.b.x)))), !global2.c, -1i), Struct_3(4294967295u, global2.b, vec4<bool>(select(global2.c.x, func_4(Struct_1(u_input.b.x, global2.b), Struct_3(global1[_wgslsmith_index_u32(9114u, 27u)], vec4<f32>(2283f, global2.b.x, global2.b.x, global2.b.x), global2.c, u_input.a), var_1.x, false).c.x, true), true, global2.c.x, true), global2.d | -1i), vec4<f32>(-291f, -1352f, _wgslsmith_f_op_f32(select(global2.b.x, 559f, true)), global2.b.x));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-global2.b.x), firstTrailingBit(-vec3<i32>(1i, -20722i, var_2.b.d) >> (var_1 % vec3<u32>(32u))))), -851f);
    var var_3 = Struct_1(42539u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b.b.x))), var_2.c.x, _wgslsmith_div_f32(489f, -159f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.c, vec4<f32>(-2446f, var_2.b.b.x, 668f, -1833f), vec4<bool>(false, var_2.a.c.x, true, false))) * _wgslsmith_f_op_vec4_f32(-var_2.a.b))))));
    let var_4 = Struct_3(_wgslsmith_sub_u32(~1u, abs(11382u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, var_3.b.x, var_3.b.x, 321f) * vec4<f32>(-219f, var_2.a.b.x, var_3.b.x, 903f))))), !var_2.b.c, -2147483647i);
    var var_5 = vec2<bool>(true, true);
    var var_6 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.x, -1090f) - var_3.b.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(var_2.a.d, -1i, u_input.a)), vec3<i32>(-1i) * -vec3<i32>(6502i, var_4.d, var_2.b.d)), var_4.b.zyz, var_6.x, _wgslsmith_f_op_f32(-var_4.b.x), 1077f);
}

