struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: array<f32, 17>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(true, 1u, true, 553f), Struct_1(true, 25082u, true, -257f), Struct_1(true, 1u, true, 445f), Struct_1(true, 37445u, false, 1500f), Struct_1(false, 1u, false, 411f), Struct_1(true, 1u, true, -1000f), Struct_1(true, 1u, false, -2773f), Struct_1(true, 53489u, false, -646f), Struct_1(false, 14488u, false, -214f), Struct_1(true, 1u, false, -1179f), Struct_1(true, 4620u, true, 400f), Struct_1(true, 80123u, false, -684f), Struct_1(true, 28138u, true, -1000f), Struct_1(true, 91920u, false, 1420f));

var<private> global3: array<u32, 15> = array<u32, 15>(1u, 62149u, 21893u, 72986u, 4294967295u, 4294967295u, 7088u, 9462u, 12799u, 41046u, 0u, 21096u, 0u, 86965u, 4294967295u);

var<private> global4: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(~countOneBits(1u), 31u)];
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(6073u, 14u)], true);
    var var_2 = select(vec3<bool>(var_1.a.c, all(vec3<bool>(var_1.b, var_1.a.a, 321f > var_1.a.d)), true), select(!select(select(vec3<bool>(true, true, var_1.b), vec3<bool>(false, true, false), vec3<bool>(true, var_1.a.a, var_1.a.a)), vec3<bool>(var_1.a.c, var_1.a.a, true), select(var_1.a.c, true, var_1.b)), !(!select(vec3<bool>(var_1.b, var_1.a.a, var_1.a.c), vec3<bool>(false, false, true), false)), any(vec3<bool>(false, true, var_1.b))), vec3<bool>(var_1.a.a, true & all(vec4<bool>(var_1.a.a, true, var_1.a.a, true)), select(all(select(vec2<bool>(true, true), vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.a.c, var_1.a.a))), firstTrailingBit(72854u) == 1u, !var_1.a.c)));
    global0 = array<vec4<u32>, 31>();
    global2 = array<Struct_1, 14>();
    return select(select(!(!(!vec4<bool>(var_2.x, var_2.x, var_1.a.a, var_2.x))), select(vec4<bool>(var_1.b, !var_1.a.c, false, !var_2.x), !vec4<bool>(var_1.b, var_2.x, var_1.a.a, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, var_1.b, var_1.a.a), true)), !(!(!vec4<bool>(var_2.x, var_1.a.a, var_1.a.c, var_1.a.c)))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1097f)) - global1[_wgslsmith_index_u32(u_input.a, 17u)]) <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-254f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(20060u, 17u)] - var_1.a.d) - _wgslsmith_f_op_f32(step(var_1.a.d, var_1.a.d))), var_2.x, var_1.a.a), true);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(false, ~(~21025u), !all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(3128u, 15u)], 17u)]), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(16136u, 17u)])))), all(func_3(firstTrailingBit(17108u), 0i)));
    var var_1 = arg_0.yyx;
    var var_2 = true;
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(10863u, 14u)], var_0.b);
    global2 = array<Struct_1, 14>();
    return arg_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> Struct_1 {
    return global2[_wgslsmith_index_u32(12198u, 14u)];
}

fn func_1() -> u32 {
    let var_0 = func_4(countOneBits(~vec3<i32>(i32(-1i) * -2147483647i, 32047i, -1i)), select(all(func_2(vec4<i32>(1i, 1i, 1i, 1i), vec3<bool>(true, false, true))), true, func_3(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 4294967295u) << (~global3[_wgslsmith_index_u32(u_input.a, 15u)] % 32u), ~(-58389i)).x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.d, -1000f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(972f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 15u)], 17u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(320f, -678f), vec2<f32>(-155f, var_0.d))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-282f, _wgslsmith_f_op_f32(892f * -1674f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 17u)], 517f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d, global1[_wgslsmith_index_u32(1u, 17u)]), vec2<f32>(var_0.d, -1235f), true)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(0u, 17u)], var_0.d))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, 1048f)))))));
    global4 = u_input.a;
    var var_2 = Struct_2(var_0, func_4(firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(-775i, 4615i, -2147483647i)), any(!select(vec3<bool>(var_0.a, var_0.c, true), vec3<bool>(var_0.a, var_0.c, var_0.c), vec3<bool>(var_0.c, true, false)))).c);
    var_2 = Struct_2(Struct_1(!var_0.c, ~16962u, any(func_3(var_2.a.b, 1i)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.a.d, _wgslsmith_f_op_f32(ceil(var_0.d))), global1[_wgslsmith_index_u32(~(~1644u), 17u)]))), 47398u < _wgslsmith_sub_u32(firstLeadingBit(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]), 1u));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 15u)], 62093u, _wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.a, 15u)], 15u)]), _wgslsmith_div_u32(4294967295u | u_input.a, ~u_input.a)), vec4<u32>(0u, global3[_wgslsmith_index_u32(~u_input.a, 15u)], u_input.a, func_1())));
    global1 = array<f32, 17>();
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(937f, _wgslsmith_f_op_f32(sign(-963f)), global1[_wgslsmith_index_u32(var_0.x, 17u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(0u, 17u)], 535f, -300f))), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4954u, 15u)], 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<f32>(676f, global1[_wgslsmith_index_u32(u_input.a, 17u)], 1353f)), vec3<bool>(true, true, true))))));
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(-min(_wgslsmith_add_i32(1i, 20283i), ~2147483647i), ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(22167i, 35477i), vec2<i32>(1i, 2147483647i), false), firstTrailingBit(vec2<i32>(-2147483647i, 1i)))), -54483i);
    let var_4 = vec4<u32>(func_4(vec3<i32>(max(countOneBits(var_3.x), max(-2147483647i, var_3.x)), var_3.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-25372i, -6346i, -6638i), vec3<i32>(931i, var_3.x, 28248i)), var_3.x & 1i)), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)))).b, _wgslsmith_mult_u32(select(abs(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(var_0.x, 15u)], var_0.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_0.yx, var_0.ww), 15383u ^ var_0.x, _wgslsmith_dot_vec2_u32(var_0.xw, var_0.zw)), true), 4294967295u), var_0.x >> (global3[_wgslsmith_index_u32(~u_input.a >> ((u_input.a << (75729u % 32u)) % 32u), 15u)] % 32u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~(-vec3<i32>(var_3.x, var_3.x, var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 17u)] * global1[_wgslsmith_index_u32(1u, 17u)]))))));
}

