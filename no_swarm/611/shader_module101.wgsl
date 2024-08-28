struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 67520u);

var<private> global2: vec4<u32>;

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<f32>, 16>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<f32> {
    global2 = vec4<u32>(0u, ~reverseBits(109637u), ~(~(~1u)), reverseBits(u_input.a));
    global1 = global3.xy;
    let var_0 = arg_3.b;
    let var_1 = ~global2.zz;
    var var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    return var_0.a;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> f32 {
    global0 = array<vec4<bool>, 5>();
    global0 = array<vec4<bool>, 5>();
    return -646f;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = true;
    global2 = vec4<u32>(4294967295u, u_input.c, u_input.b, 14920u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1396f, global2.x, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -231f), Struct_1(global4[_wgslsmith_index_u32(global3.x, 16u)], vec4<f32>(-2973f, -236f, -1000f, -611f), arg_3.x, arg_0.x), _wgslsmith_clamp_u32(global2.x, u_input.c, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -359f)))) + _wgslsmith_f_op_f32(f32(-1f) * -133f)), Struct_1(vec4<f32>(-119f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) + 447f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-413f)), _wgslsmith_div_f32(-776f, -1605f)), _wgslsmith_f_op_f32(round(-335f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(226f, -307f, arg_0.x))), _wgslsmith_f_op_f32(435f * _wgslsmith_f_op_f32(abs(-145f))), _wgslsmith_div_f32(-316f, _wgslsmith_f_op_f32(f32(-1f) * -1294f)), -1215f), arg_2.x, var_0), select(~(~1u), ~arg_1, var_0) << ((~(~49969u) & ~firstLeadingBit(global3.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(547f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) - 2810f);
    global3 = firstLeadingBit(global2.yyw);
    return vec3<bool>(~global1.x >= _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 85153u, 22763u, 1u)), max(vec4<u32>(89005u, global1.x, 4294967295u, 147264u), vec4<u32>(global1.x, 39176u, var_1.c, global2.x)) | _wgslsmith_mult_vec4_u32(vec4<u32>(22372u, var_1.c, var_1.c, 4294967295u), vec4<u32>(global2.x, u_input.c, 9282u, global2.x))), true, -1000f >= _wgslsmith_f_op_f32(ceil(var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(all(vec2<bool>(true, true)), global2.x <= global2.x, true), -1004f, !select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), Struct_2(2283f, Struct_1(global4[_wgslsmith_index_u32(countOneBits(u_input.a), 16u)], vec4<f32>(358f, 383f, -1457f, -1509f), u_input.d, true), abs(4294967295u), 251f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(1u, 16u)]) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2035f, 850f, -1744f, -505f)))), _wgslsmith_div_vec4_f32(vec4<f32>(449f, -502f, -111f, 583f), vec4<f32>(556f, 1992f, 338f, 1347f))) * global4[_wgslsmith_index_u32(~89974u, 16u)]), countOneBits(2147483647i), any(vec2<bool>(true, true)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(876f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(step(1986f, var_0.a.x))) - var_0.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(func_1(select(vec3<bool>(true, var_0.d, true), func_2(vec3<bool>(false, var_0.d, false), 6980u, vec4<i32>(-1i, 29212i, -3861i, var_0.c), vec3<i32>(u_input.d, u_input.d, var_0.c)), var_0.b.x > var_0.b.x), -597f, vec2<bool>(true | var_0.d, any(vec3<bool>(true, true, var_0.d))), Struct_2(_wgslsmith_f_op_f32(-297f - var_0.a.x), var_0, 4294967295u, _wgslsmith_f_op_f32(func_3(-1961f, global1.x, Struct_2(var_0.b.x, var_0, 97415u, var_0.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, var_0.b.x, 2065f, -795f))))) - global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, 20456u), 16u)]), -_wgslsmith_clamp_i32(u_input.d, ~var_0.c, ~var_0.c), func_2(vec3<bool>(true, false, all(vec4<bool>(var_0.d, var_0.d, false, false))), _wgslsmith_div_u32(countOneBits(69620u), 86881u), vec4<i32>(3997i, var_0.c, 1i, 27493i) << (vec4<u32>(16448u, global3.x, u_input.c, 1u) % vec4<u32>(32u)), vec3<i32>(0i, 33997i, ~var_0.c)).x), ~u_input.c & _wgslsmith_add_u32(~_wgslsmith_add_u32(global1.x, global1.x), 0u), var_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(1013f * var_0.a.x);
    global1 = global2.zw;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b.yww);
}

