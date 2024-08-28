struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_5;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global3: array<vec4<u32>, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_5 {
    global3 = array<vec4<u32>, 9>();
    global3 = array<vec4<u32>, 9>();
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, global1.a), abs(0u)), 11678u), ~(~44174u));
    global2 = array<vec2<bool>, 28>();
    global2 = array<vec2<bool>, 28>();
    return Struct_5(4294967295u, vec3<i32>(i32(-1i) * -u_input.a.x, 64593i, -1i));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_5 {
    return func_2();
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1168f)) + -408f)));
    let var_1 = !all(vec3<bool>(true, true, true));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, ~2147483647i), _wgslsmith_mod_vec2_i32(u_input.a.xy, arg_1.b.zy));
    let var_3 = global3[_wgslsmith_index_u32(0u, 9u)];
    return vec3<u32>(arg_0.x, 71703u, _wgslsmith_div_u32(1u, max(1u, countOneBits(4294967295u)))) >> (firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x ^ global1.a, _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(1u, arg_1.a)), ~1u), vec3<u32>(arg_0.x, 16544u, arg_1.a) ^ (vec3<u32>(arg_1.a, 1u, var_3.x) << (vec3<u32>(arg_1.a, global1.a, arg_0.x) % vec3<u32>(32u))))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.x;
    let var_1 = Struct_3(1f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2375f)))), vec3<f32>(2275f, -1479f, -1267f), ~vec4<i32>(~global0.x | reverseBits(u_input.a.x), reverseBits(53378i), 30652i, -5893i), 79039u);
    var_0 = ~u_input.a.x;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_1.c.x, -10982i), vec3<i32>(global1.b.x, global0.x, global0.x)) << (func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.d, global1.a), vec2<u32>(var_1.d, 1u)), func_1(vec2<u32>(global1.a, global1.a), vec4<i32>(var_1.c.x, global0.x, global1.b.x, var_1.c.x))) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, u_input.a.x, 1i), vec3<i32>(u_input.a.x, 37751i, 2147483647i))), -1i, i32(-1i) * -(~(-var_1.c.x)), ~(~var_1.c.x));
    let var_3 = vec3<bool>(true, select(!(global1.b.x != 42997i), _wgslsmith_f_op_f32(-var_1.b.x) < _wgslsmith_f_op_f32(floor(1536f)), true), !(any(select(vec3<bool>(true, false, var_1.a), vec3<bool>(true, var_1.a, var_1.a), false)) | true));
    var var_4 = Struct_4(Struct_1(vec3<u32>(var_1.d, firstTrailingBit(13359u), global1.a)), var_1.b, _wgslsmith_div_u32(~(~global1.a), _wgslsmith_sub_u32(4294967295u, global1.a)), any(vec2<bool>(all(vec2<bool>(true, true)), var_1.a)), u_input.a.x);
    global3 = array<vec4<u32>, 9>();
    var var_5 = var_1;
    let var_6 = countOneBits(reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(var_5.d, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], vec4<u32>(16276u, var_5.d, global1.a, 0u)), ~global3[_wgslsmith_index_u32(57320u, 9u)]), vec4<u32>(var_1.d, 19383u | global1.a, var_4.c << (global1.a % 32u), global1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(abs(abs(7916i)) ^ -func_1(var_6.xw, vec4<i32>(u_input.a.x, 0i, u_input.a.x, 33306i)).b.x, -13382i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2639f, var_4.b.x, var_1.b.x, -781f) * vec4<f32>(-417f, var_1.b.x, 1765f, -1576f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.x, var_5.b.x, var_4.b.x, -2018f) - vec4<f32>(-549f, 531f, var_4.b.x, -789f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-376f, var_5.b.x, var_1.b.x, 1578f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.x, -1920f, 1000f, 373f))))));
}

