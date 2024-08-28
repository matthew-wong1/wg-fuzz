struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1010f, 1772f);

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<u32, 27>;

var<private> global3: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 21>();
    global2 = array<u32, 27>();
    var var_0 = vec4<u32>(u_input.c.x, ~10504u, abs(58432u), ~36922u);
    var var_1 = global1[_wgslsmith_index_u32(var_0.x, 21u)];
    global3 = array<vec2<bool>, 21>();
    return global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(58506u, 1u), 27u)], 21u)];
}

fn func_3() -> i32 {
    global3 = array<vec2<bool>, 21>();
    var var_0 = any(select(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(countOneBits(global2[_wgslsmith_index_u32(1u, 27u)])), 27u)] & (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) & 1u), 27u)], 21u)], !global3[_wgslsmith_index_u32(min(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(58857u, 27u)], u_input.c.x), 3668u), 21u)], select(global3[_wgslsmith_index_u32(u_input.d, 21u)], select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), !global3[_wgslsmith_index_u32(u_input.c.x, 21u)]), true)));
    let var_1 = 4294967295u << (firstTrailingBit(~(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], 27u)]))) % 32u);
    var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x) != 1f);
    let var_2 = vec4<i32>(-19732i, u_input.b.x, u_input.b.x, u_input.b.x) ^ max(((vec4<i32>(u_input.b.x, 23940i, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.b.x, 0i, -186i, 2147483647i)) | -vec4<i32>(29813i, 1i, 26824i, u_input.b.x)) ^ -(~vec4<i32>(u_input.b.x, 22641i, -15749i, 9804i)), vec4<i32>(-15332i, -1i, ~(u_input.b.x << (var_1 % 32u)), min(~u_input.b.x, countOneBits(u_input.b.x))));
    return u_input.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_mult_vec4_i32((vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(20242i, var_0.a)), var_0.a, u_input.b.x, -1i) ^ (vec4<i32>(21672i, u_input.b.x, u_input.b.x, 2147483647i) | _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, 63577i, 1i), vec4<i32>(1i, u_input.b.x, u_input.b.x, -75794i)))) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -38391i, var_0.a, 2147483647i), vec4<i32>(var_0.a, -52336i, 1i, -2147483647i)), ~vec4<i32>(u_input.b.x, -11391i, u_input.b.x, u_input.b.x)), vec4<i32>(~var_0.a, -2151i, -12699i, -51001i)), vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(11630i, func_3()), firstLeadingBit(u_input.b.x) << (global2[_wgslsmith_index_u32(1u, 27u)] % 32u)), ~var_0.a, var_0.a >> (firstTrailingBit(~u_input.d) % 32u)));
    global2 = array<u32, 27>();
    let var_2 = func_2();
    let var_3 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 21u)];
    return Struct_1(var_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global1 = array<Struct_1, 21>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.d, 21u)];
    global3 = array<vec2<bool>, 21>();
    var var_1 = ~(_wgslsmith_add_i32(arg_1.a, arg_0.a) << ((0u >> ((countOneBits(global2[_wgslsmith_index_u32(u_input.c.x, 27u)]) >> (global2[_wgslsmith_index_u32(min(11941u, global2[_wgslsmith_index_u32(0u, 27u)]), 27u)] % 32u)) % 32u)) % 32u));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-673f, 953f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 1303f), global3[_wgslsmith_index_u32(u_input.a, 21u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-515f, 717f), vec2<f32>(global0.x, 742f)))))));
    global3 = array<vec2<bool>, 21>();
    var var_0 = select(select(vec3<bool>(global0.x <= _wgslsmith_f_op_f32(-587f * global0.x), true, true), vec3<bool>(true, ~u_input.a >= (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 27u)], 27u)] | 56415u), !(u_input.b.x < u_input.b.x)), false), select(vec3<bool>(any(vec4<bool>(true, true, false, true)), func_4(func_1(), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 4294967295u), 21u)], func_2()), u_input.b.x != (i32(-1i) * -1i)), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true), false), func_4(func_2(), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~23946u, 10492u), 21u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_add_u32(~42416u, 13624u)), 21u)]));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(min(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 7112i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<i32>(54454i, u_input.b.x, u_input.b.x)), vec3<i32>(20683i << (1u % 32u), u_input.b.x, -u_input.b.x)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i) << ((u_input.c ^ vec3<u32>(0u, 58714u, u_input.c.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -41982i, u_input.b.x), vec3<i32>(u_input.b.x, -58066i, 0i)) & vec3<i32>(23205i, u_input.b.x, u_input.b.x))));
    let var_2 = _wgslsmith_clamp_vec4_u32(select(abs(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 65723u, global2[_wgslsmith_index_u32(26089u, 27u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]) | vec4<u32>(u_input.d, 4294967295u, 6250u, 45615u)), countOneBits(vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(16508u, 27u)], 6968u, 4294967295u)) ^ ~vec4<u32>(u_input.a, 4294967295u, u_input.d, global2[_wgslsmith_index_u32(0u, 27u)]), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false)), select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, false, true, var_0.x), true))) >> (vec4<u32>(27747u & _wgslsmith_dot_vec4_u32(vec4<u32>(3947u, u_input.d, global2[_wgslsmith_index_u32(u_input.d, 27u)], 11794u), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(20868u, 27u)], u_input.c.x, 77046u)), u_input.a, global2[_wgslsmith_index_u32(43825u, 27u)], u_input.d) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 27u)], 27u)], 33007u) >> (min(u_input.a, firstTrailingBit(21997u)) % 32u), global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.c.x), 27u)], ~(_wgslsmith_add_u32(8324u, 51594u) << (1u % 32u)), 10443u), ~vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.d, 27u)], 0u), u_input.a), 27u)], _wgslsmith_div_u32(~u_input.a, abs(u_input.c.x)), 87785u));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-851f)), _wgslsmith_f_op_f32(ceil(global0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1116f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1133f) + _wgslsmith_f_op_f32(global0.x + -714f)))))));
    var var_4 = ~vec4<u32>(1u, ~(~u_input.a), 10042u, u_input.c.x | ~(u_input.c.x & 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u)), min(~var_1.a, 51713i) << ((abs(_wgslsmith_dot_vec4_u32(vec4<u32>(37760u, var_2.x, var_2.x, var_4.x), vec4<u32>(var_2.x, global2[_wgslsmith_index_u32(var_2.x, 27u)], 38886u, var_4.x))) << (var_4.x % 32u)) % 32u), var_3, -(~(~vec3<i32>(var_1.a, -6i, u_input.b.x))));
}

