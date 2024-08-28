struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: Struct_3 = Struct_3(26879i, vec3<f32>(635f, 2064f, -804f), true, vec2<i32>(-26215i, -57787i));

var<private> global2: array<Struct_3, 29>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-100f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1714f)))), 507f)));
}

fn func_1() -> vec3<f32> {
    global0 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_div_i32(36809i, -2147483647i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2048f))) + _wgslsmith_f_op_f32(select(-659f, 418f, any(global3.a)))));
    let var_2 = Struct_2(!vec4<bool>(true, false, global3.a.x || (global1.d.x < u_input.c.x), !global1.c));
    let var_3 = vec2<f32>(global1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -1565f));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1472f)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = array<Struct_3, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1()).x;
    var var_1 = Struct_2(vec4<bool>(true, !global1.c, true, any(!vec3<bool>(false, global3.a.x, global3.a.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-742f - -1189f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + var_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-793f, var_0)))));
    global1 = global0[_wgslsmith_index_u32(~(1u | ~arg_0.a.x), 17u)];
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(u_input.c);
    let var_1 = Struct_3(_wgslsmith_clamp_i32(var_0.x, global1.d.x, u_input.c.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1()), vec3<f32>(-1000f, 141f, global1.b.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, 2174f) * _wgslsmith_f_op_vec3_f32(-global1.b))), _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<u32>(u_input.b, 1u))))))), false, vec2<i32>(-1i) * -(vec2<i32>(-1996i, 1i) | -u_input.c.zx));
    var var_2 = global3.a.xz;
    var var_3 = -1000f;
    let var_4 = countOneBits(abs(_wgslsmith_sub_u32(u_input.b | 4294967295u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 19923u)), ~vec3<u32>(0u, u_input.b, u_input.b)))));
    let var_5 = vec3<u32>(abs(~var_4), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(49583u, var_4, 0u), vec3<u32>(18258u, var_4, u_input.b)), ~vec3<u32>(1u, 4603u, 46848u)), vec3<u32>(u_input.a, u_input.a >> (var_4 % 32u), ~1u)), _wgslsmith_add_u32(77846u, 68165u & var_4));
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    let var_6 = firstLeadingBit(-40407i);
    let x = u_input.a;
    s_output = StorageBuffer(62220i);
}

