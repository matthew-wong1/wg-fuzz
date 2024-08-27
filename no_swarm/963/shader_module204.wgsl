struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> f32 {
    global0 = array<vec2<bool>, 12>();
    global0 = array<vec2<bool>, 12>();
    global0 = array<vec2<bool>, 12>();
    return 1060f;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<i32>) -> f32 {
    global0 = array<vec2<bool>, 12>();
    var var_0 = u_input.a.zyz;
    let var_1 = -arg_2.xz;
    let var_2 = _wgslsmith_div_f32(1000f, 503f);
    let var_3 = Struct_1(u_input.a, arg_1, ~(~(~(var_0.x >> (42552u % 32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1247f)))), arg_1.x) + var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.b, 12u)], all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)) & (0i == _wgslsmith_add_i32(43281i, u_input.c.x)));
    global0 = array<vec2<bool>, 12>();
    let var_1 = ~4294967295u;
    var var_2 = ~countOneBits(u_input.c.x);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(4294967295u, Struct_2(724f), u_input.a.x, 1i))))))));
    let x = u_input.a;
    s_output = StorageBuffer(11420u, abs(u_input.b), 42333i << (~firstTrailingBit(_wgslsmith_div_u32(370u, u_input.b)) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(var_0.x, vec3<f32>(_wgslsmith_f_op_f32(var_3.a * var_3.a), var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -645f)), vec3<i32>(u_input.c.x, min(-41861i, u_input.c.x), u_input.c.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-569f, var_3.a, -1418f, var_3.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -836f, 1859f, 652f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, 189f, -934f)))))));
}

