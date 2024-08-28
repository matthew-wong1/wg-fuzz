struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-27460i, i32(-2147483648), -38792i, -1i, -29190i, 23516i, -50317i);

var<private> global1: array<vec3<bool>, 17>;

var<private> global2: Struct_2 = Struct_2(i32(-2147483648));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1029f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(980f, 340f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-198f, 476f))))))));
    return firstTrailingBit(~abs(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = Struct_2(~arg_0);
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(~(global2.a & var_0.a), ~(-1i)) << (36470u % 32u), u_input.e);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f + 2340f) * _wgslsmith_f_op_f32(sign(319f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1690f - 561f) - 846f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -916f))) - -1000f)));
    var var_3 = var_0;
    let var_4 = Struct_1(u_input.e, _wgslsmith_div_vec4_f32(vec4<f32>(-743f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(abs(203f))), -547f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1383f, 1364f, 450f, 922f)) + vec4<f32>(-624f, -1118f, 413f, -534f)), vec4<f32>(1f, 1f, 1f, 1f), !(0u > u_input.a.x)))));
    return select(vec2<bool>(true, true), vec2<bool>(true, true), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    global1 = array<vec3<bool>, 17>();
    let var_0 = min(_wgslsmith_mult_i32(min(u_input.c, ~2147483647i << (_wgslsmith_mult_u32(0u, 39669u) % 32u)), ~_wgslsmith_dot_vec2_i32(-u_input.b.xz, vec2<i32>(u_input.d, -38580i))), u_input.c & u_input.e);
    var var_1 = func_3(global0[_wgslsmith_index_u32(u_input.a.x & 4294967295u, 7u)]);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_3 = Struct_2(-33798i);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(951f)) - 1255f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_2(Struct_1(-_wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(40000i, global0[_wgslsmith_index_u32(4294967295u, 7u)], -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -956f, 730f, -1379f))))))), abs(~max(func_1(), abs(vec4<u32>(56386u, u_input.a.x, 128013u, u_input.a.x))))));
    global0 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(-1005f, -165f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-172f + -1236f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-476f)) + _wgslsmith_f_op_f32(round(-1122f)))), _wgslsmith_f_op_f32(f32(-1f) * -220f), 496f));
}

