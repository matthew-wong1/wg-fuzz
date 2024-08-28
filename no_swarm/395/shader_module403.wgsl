struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global2 = array<vec4<f32>, 25>();
    return any(select(select(!select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, false, false), vec3<bool>(true, arg_0.x, true)), vec3<bool>(all(vec4<bool>(false, arg_0.x, arg_0.x, true)), !arg_0.x, arg_0.x), arg_0.x), vec3<bool>(true, true, !arg_0.x), arg_0.x));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    global2 = array<vec4<f32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -1210f));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, 263f, 1069f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, var_0, arg_0.a)) * -288f), 552f), func_3(!(!vec2<bool>(true, arg_0.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-482f - 883f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, -137f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = _wgslsmith_clamp_vec2_i32(max(abs(select(u_input.c, countOneBits(vec2<i32>(global1.b, global1.b)), arg_0.a)), vec2<i32>(select(-global1.b, firstLeadingBit(1i), true), -2162i)), select(~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.yw, u_input.c, vec2<i32>(global1.b, u_input.a.x)), _wgslsmith_div_vec2_i32(vec2<i32>(global1.b, -17265i), vec2<i32>(2147483647i, u_input.a.x)), ~vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(global1.b, u_input.c.x), u_input.a.wx), select(vec2<bool>(false, false), vec2<bool>(all(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)), true), func_3(vec2<bool>(true, false)) || !arg_0.a)), u_input.c);
    global2 = array<vec4<f32>, 25>();
    return Struct_3(select(global1.a & ~(~vec3<u32>(global1.a.x, 28644u, global1.a.x)), ~countOneBits(global1.a), false), -1i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_5 {
    global1 = func_2(Struct_2(arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -211f));
    var var_0 = vec4<u32>(func_2(Struct_2(all(vec4<bool>(false, arg_0.a.x, false, false))), arg_1.x).a.x, func_2(Struct_2(arg_0.a.x), _wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(-arg_0.b))).a.x, 14238u, 34529u) << (~(vec4<u32>(global1.a.x >> (1u % 32u), firstLeadingBit(1u), global1.a.x, 1u) | ~(vec4<u32>(global1.a.x, 1u, 6521u, 5011u) << (vec4<u32>(global1.a.x, global1.a.x, 0u, global1.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global2 = array<vec4<f32>, 25>();
    var var_1 = arg_0.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-705f, arg_0.b)));
    return Struct_5(arg_0.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1)) * arg_1), !vec2<bool>(arg_0.a.x, true), select(vec2<u32>(var_0.x, abs(var_0.x >> (1u % 32u))), firstTrailingBit(firstTrailingBit(~var_0.zy)), arg_0.a.zy), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    var var_0 = vec2<bool>(!(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), false);
    let var_1 = func_1(global0[_wgslsmith_index_u32(1u << (global1.a.x % 32u), 32u)], vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-354f, _wgslsmith_div_f32(-754f, -867f)))));
    global2 = array<vec4<f32>, 25>();
    var var_2 = Struct_4(_wgslsmith_add_vec3_i32(reverseBits(u_input.a.yxw), vec3<i32>(u_input.c.x ^ 2147483647i, reverseBits(45533i), _wgslsmith_dot_vec3_i32(u_input.a.zzw, vec3<i32>(u_input.c.x, 1i, u_input.b)))) << (global1.a % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_1.d.x, abs(max(983u, _wgslsmith_mult_u32(var_1.d.x, 27521u)))));
}

