struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<i32, 27>();
    let var_0 = arg_3.a;
    global0 = array<i32, 27>();
    let var_1 = arg_3.a;
    var var_2 = arg_3;
    return arg_0;
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = u_input.c.yx;
    var var_1 = ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.x, u_input.d, arg_0.x, 4294967295u)), ~vec4<u32>(53905u, 37860u, u_input.d, u_input.e)), 4294967295u));
    let var_2 = !(!func_3(vec4<bool>(true, true, true, true), select(true, false, select(false, false, true)), ~47906u, Struct_2(Struct_1(arg_0.x, u_input.c, 1816u, vec2<f32>(-419f, 252f), global0[_wgslsmith_index_u32(arg_0.x, 27u)]), _wgslsmith_f_op_f32(f32(-1f) * -2018f), vec3<bool>(true, true, true))));
    var var_3 = !vec4<bool>(all(!vec4<bool>(true, false, false, var_2.x)), firstTrailingBit(-2147483647i) == _wgslsmith_dot_vec2_i32(select(u_input.a, vec2<i32>(-106215i, -14119i), vec2<bool>(false, var_2.x)), u_input.c.xx << (arg_0.xy % vec2<u32>(32u))), var_2.x, _wgslsmith_dot_vec4_i32(u_input.c ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 27u)], var_0.x, var_0.x, var_0.x), max(vec4<i32>(45847i, -12613i, u_input.c.x, var_0.x), vec4<i32>(0i, -1i, u_input.b, 0i))) < _wgslsmith_mod_i32(i32(-1i) * -1i, 10132i));
    let var_4 = Struct_1(_wgslsmith_dot_vec3_u32(min(max(arg_0, arg_0) ^ vec3<u32>(arg_0.x, 42840u, u_input.e), ~vec3<u32>(29471u, 14413u, u_input.e)), arg_0), vec4<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 27u)], u_input.c.x), 22068i, _wgslsmith_dot_vec4_i32(u_input.c, -u_input.c), global0[_wgslsmith_index_u32(15191u, 27u)]), arg_0.x, _wgslsmith_div_vec2_f32(vec2<f32>(-1182f, _wgslsmith_f_op_f32(f32(-1f) * -422f)), vec2<f32>(_wgslsmith_f_op_f32(-607f - -925f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-241f + 1000f) - _wgslsmith_f_op_f32(step(955f, 590f))))), var_0.x);
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f + -917f) * _wgslsmith_f_op_f32(ceil(3012f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.d.x))), var_4.d.x)), _wgslsmith_dot_vec3_u32(~arg_0, abs(min(arg_0, arg_0))) != _wgslsmith_dot_vec3_u32(arg_0, select(_wgslsmith_div_vec3_u32(vec3<u32>(var_4.c, 4294967295u, u_input.d), vec3<u32>(4294967295u, 1u, u_input.d)), arg_0, !vec3<bool>(var_2.x, var_3.x, var_2.x))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>) -> vec3<f32> {
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_2.x));
    return arg_1.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = arg_1.a.x;
    var var_1 = firstLeadingBit(vec3<u32>(1u & (_wgslsmith_div_u32(0u, u_input.e) & (u_input.e >> (u_input.d % 32u))), u_input.d, ~4294967295u));
    let var_2 = _wgslsmith_sub_vec3_i32(~(-(vec3<i32>(-1i) * -u_input.c.wzx)), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(27385i << (var_1.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, u_input.d), 27u)], _wgslsmith_dot_vec2_i32(arg_0.zw, vec2<i32>(u_input.c.x, arg_0.x)))), vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.a.x, 5125i, 11535i), i32(-1i) * -1i) & abs(vec3<i32>(-1i, u_input.c.x, arg_0.x))));
    let var_3 = vec3<bool>(var_1.x != ~var_1.x, arg_1.b, all(vec4<bool>(false, any(!vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b)), false, false)));
    var_1 = max(select(reverseBits(vec3<u32>(u_input.d, _wgslsmith_sub_u32(u_input.e, var_1.x), 17036u)), countOneBits(max(vec3<u32>(u_input.d, var_1.x, 1u), vec3<u32>(u_input.e, 0u, var_1.x))) | select(~vec3<u32>(u_input.e, u_input.d, 4294967295u), vec3<u32>(16445u, 1u, u_input.e) ^ vec3<u32>(var_1.x, 1u, u_input.e), true && arg_1.b), false), ~(~vec3<u32>(_wgslsmith_clamp_u32(u_input.e, 43855u, u_input.e), _wgslsmith_mult_u32(u_input.e, 65275u), u_input.d)));
    return _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 40044u, u_input.e), vec3<u32>(4294967295u, 0u, var_1.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, 0u), vec3<u32>(u_input.e, var_1.x, 0u)), !(!var_3)), ~(~(vec3<u32>(var_1.x, 52178u, 4294967295u) << (vec3<u32>(4294967295u, var_1.x, 29969u) % vec3<u32>(32u))))), abs(~(~vec3<u32>(20211u, var_1.x, u_input.d))) & ~countOneBits(vec3<u32>(0u, 20409u, 29624u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> vec3<u32> {
    global0 = array<i32, 27>();
    var var_0 = _wgslsmith_mod_vec3_i32(~(-(~u_input.c.wzx)) & vec3<i32>(_wgslsmith_sub_i32(arg_1.c, -4072i), _wgslsmith_mod_i32(arg_1.c, u_input.c.x), i32(-1i) * -2147483647i), u_input.c.zyy ^ ((vec3<i32>(global0[_wgslsmith_index_u32(arg_2, 27u)], 2147483647i, global0[_wgslsmith_index_u32(12826u, 27u)]) << (countOneBits(vec3<u32>(arg_2, 5303u, arg_2)) % vec3<u32>(32u))) << (vec3<u32>(4294967295u, u_input.e, 1u) % vec3<u32>(32u))));
    let var_1 = (_wgslsmith_dot_vec2_i32(vec2<i32>(-38490i, _wgslsmith_add_i32(-2147483647i, arg_1.c)), ~countOneBits(var_0.yz)) | u_input.b) == -u_input.c.x;
    var_0 = u_input.c.wwy | u_input.c.xzy;
    var var_2 = arg_1.b;
    return func_5(-u_input.c, Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(func_2(vec3<u32>(arg_2, 1u, u_input.d)), Struct_4(vec3<f32>(arg_1.a, arg_1.a, arg_1.a), false), _wgslsmith_div_vec2_f32(vec2<f32>(937f, 1000f), vec2<f32>(310f, arg_1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-435f, 790f, arg_1.a)))), arg_0)), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~func_1(vec3<bool>(false, true, false), Struct_3(-1218f, vec4<bool>(false, false, false, false), u_input.b), u_input.e), ~(vec3<u32>(1u, u_input.e, 0u) | vec3<u32>(98224u, 59438u, u_input.d))), ~vec3<u32>(~u_input.e, ~1u, reverseBits(15748u))), ~abs(u_input.d)), 27u)];
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_1 = func_2(~((vec3<u32>(u_input.d, 9925u, 1u) & ~vec3<u32>(u_input.e, u_input.d, 10085u)) >> (~(~vec3<u32>(0u, u_input.d, 1u)) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, global0[_wgslsmith_index_u32(u_input.e, 27u)]), reverseBits(abs(global0[_wgslsmith_index_u32(~u_input.e, 27u)])));
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(firstLeadingBit(u_input.d) << (select(u_input.e, 0u, true) % 32u))), ~(~(~reverseBits(vec2<u32>(4294967295u, u_input.e)))), 4294967295u, var_1.a);
}

