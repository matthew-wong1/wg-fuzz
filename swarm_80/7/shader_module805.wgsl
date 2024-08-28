struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_5, 18>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, 923f)))))));
    let var_0 = firstTrailingBit(min(abs(firstTrailingBit(_wgslsmith_mult_u32(1u, 10874u))), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 4294967295u), 1u)));
    let var_1 = ~(~vec3<u32>(var_0, 1u, ~_wgslsmith_add_u32(15396u, 1u)));
    var var_2 = ~_wgslsmith_div_vec3_u32(min(vec3<u32>(1u, 4086u, _wgslsmith_div_u32(23332u, 9611u)), var_1), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 31038u, var_0), var_1));
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(ceil(global0.x));
}

fn func_2(arg_0: u32) -> Struct_5 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(128f, global0.x, global0.x) * vec3<f32>(-630f, -820f, -1251f)))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(466f - 2423f), global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -1230f)) + _wgslsmith_f_op_f32(f32(-1f) * -499f))));
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1613f, _wgslsmith_f_op_f32(f32(-1f) * -1021f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f * -2047f)), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(2490f))))))));
    var var_1 = vec4<u32>(0u, arg_0, abs(countOneBits(arg_0 & arg_0)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(48935u, arg_0)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 38514u), vec2<u32>(1u, arg_0)) & arg_0, _wgslsmith_mod_u32(4294967295u, arg_0)), arg_0));
    global1 = array<Struct_5, 18>();
    return global1[_wgslsmith_index_u32(~var_1.x, 18u)];
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>) -> u32 {
    var var_0 = ~39268u >> (1u % 32u);
    let var_1 = Struct_4(!vec3<bool>(arg_0.x, any(select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), !(!arg_0.x)));
    var var_2 = func_2(~min(1u, ~1u));
    var_0 = ~abs(35050u);
    var var_3 = Struct_2(vec4<bool>(false, true, any(var_1.a), any(vec2<bool>(arg_0.x, all(var_1.a.zz)))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 18>();
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(12334u >> (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 68212u), vec2<u32>(4294967295u, 1u))), _wgslsmith_add_u32(93772u, _wgslsmith_div_u32(14969u, 61422u))), ~1u) << (0u % 32u);
    global1 = array<Struct_5, 18>();
    let var_1 = 11367i << ((7487u << (func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), global0.x != -2288f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, -1309f))) % 32u)) % 32u);
    var var_2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u) | firstTrailingBit(select(vec3<u32>(81347u, 1u, 1u), vec3<u32>(0u, 22584u, 4294967295u), true)), ~(~countOneBits(vec3<u32>(18136u, 1u, 4294967295u))));
    let var_3 = -(~_wgslsmith_mult_i32(var_1, u_input.a.x) << (1u % 32u)) >= u_input.a.x;
    var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(min(19519u, 4294967295u), var_2.x) ^ ~abs(~var_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(-155f))))))), global0.x);
}

