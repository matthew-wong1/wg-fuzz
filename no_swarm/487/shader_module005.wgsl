struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: bool;

var<private> global3: Struct_3 = Struct_3(Struct_1(-30320i));

var<private> global4: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-33439i, 12342i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(2147483647i, 14335i, 22028i), vec3<i32>(i32(-2147483648), -31667i, -71443i), vec3<i32>(1i, i32(-2147483648), 10107i), vec3<i32>(-31407i, 1i, 1i), vec3<i32>(0i, -1i, -2864i), vec3<i32>(-28296i, 1i, 335i), vec3<i32>(55527i, -51061i, -1i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-14567i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 70776i, 2147483647i), vec3<i32>(0i, -24851i, -936i), vec3<i32>(23776i, 6182i, -41878i), vec3<i32>(1i, i32(-2147483648), 1i), vec3<i32>(38148i, 5231i, 1i), vec3<i32>(12658i, i32(-2147483648), 1i), vec3<i32>(1i, 42257i, -10956i), vec3<i32>(5981i, -14266i, 3605i), vec3<i32>(-96178i, -17549i, -13447i), vec3<i32>(1i, -1i, -1i), vec3<i32>(-4018i, -1i, 19923i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(-1i, 39166i, 0i), vec3<i32>(-18435i, -1i, 1i), vec3<i32>(1i, 24907i, 1i), vec3<i32>(22515i, -1i, -1i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = ~global0.a;
    let var_1 = Struct_3(arg_1);
    global2 = false;
    var var_2 = true;
    global2 = true;
    return _wgslsmith_sub_vec3_i32(reverseBits(select(vec3<i32>(2147483647i, u_input.b, -2147483647i), -(~vec3<i32>(var_1.a.a, u_input.b, -1i)), !select(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]))), abs(abs(vec3<i32>(_wgslsmith_mod_i32(-46370i, -1i), _wgslsmith_div_i32(var_1.a.a, 15783i), global0.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f * _wgslsmith_f_op_f32(f32(-1f) * -375f)));
    let var_1 = global4[_wgslsmith_index_u32(~(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 11995u), vec4<u32>(22432u, 103145u, u_input.c.x, 1032u))))), 27u)];
    let var_2 = Struct_1(1i);
    global1 = array<vec3<bool>, 26>();
    let var_3 = reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(~reverseBits(u_input.c.x), countOneBits(_wgslsmith_clamp_u32(0u, u_input.a.x, 1u)), _wgslsmith_div_u32(11004u, u_input.c.x)), ~(~(~vec3<u32>(54732u, 5913u, arg_1)))));
    return ~u_input.c.x;
}

fn func_2() -> f32 {
    let var_0 = vec3<bool>(true, false, !any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))));
    var var_1 = func_4(func_3(Struct_2(true, vec2<f32>(544f, _wgslsmith_f_op_f32(min(-2178f, 763f)))), global3.a), 26497u, 0i);
    global4 = array<vec3<i32>, 27>();
    global2 = all(vec2<bool>(true, !var_0.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1187f, 683f), vec3<f32>(-861f, 1123f, -1185f), var_0.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-852f, 1332f, 629f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(961f, -1312f, -1109f))))), !(!var_0.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) - _wgslsmith_f_op_f32(ceil(var_2.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec3<bool>, 26>();
    let var_0 = Struct_4(Struct_1(25295i), Struct_3(global3.a), select(select(vec2<bool>(select(arg_1, arg_1, arg_1), arg_1), select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(false, true)), !vec2<bool>(arg_1, false), u_input.c.x < u_input.a.x), arg_1), select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(arg_1, true), vec2<bool>(true, true)), !(!vec2<bool>(arg_1, arg_1)), !(!vec2<bool>(arg_1, arg_1))), !select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false)), vec2<bool>(true, true), vec2<bool>(arg_1, false))), u_input.c);
    global1 = array<vec3<bool>, 26>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_0);
    global4 = array<vec3<i32>, 27>();
    return global3.a;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> Struct_3 {
    global3 = Struct_3(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-270f)), arg_1.x, _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(func_2()))), false, firstLeadingBit(~global4[_wgslsmith_index_u32(~45084u, 27u)]), global3.a));
    let var_0 = arg_1;
    global1 = array<vec3<bool>, 26>();
    let var_1 = vec2<u32>(65138u ^ u_input.a.x, 0u);
    var var_2 = any(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), vec2<bool>(any(vec4<bool>(true, false, false, true)) & false, any(global1[_wgslsmith_index_u32(var_1.x, 26u)]) | true)));
    return Struct_3(global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(~u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1119f, -1271f, 1313f, 978f)))), -1176f);
    let var_0 = u_input.a.x;
    var var_1 = u_input.b >> (~(~(~25679u >> (u_input.a.x % 32u))) % 32u);
    let var_2 = true;
    let var_3 = Struct_3(Struct_1(-(~(-global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(-vec2<i32>(var_3.a.a, var_3.a.a) & func_3(Struct_2(var_2, vec2<f32>(1000f, -1110f)), global3.a).xy), ~(vec2<i32>(u_input.b, 0i) >> (reverseBits(vec2<u32>(2979u, 0u)) % vec2<u32>(32u))), var_3.a.a > var_3.a.a), global0.a ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(func_3(Struct_2(var_2, vec2<f32>(726f, 474f)), var_3.a), vec3<i32>(-2147483647i, global0.a, var_3.a.a)), firstLeadingBit(-18831i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, global3.a.a), ~global0.a)));
}

