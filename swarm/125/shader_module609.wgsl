struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool, arg_3: u32) -> u32 {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    return _wgslsmith_sub_u32(arg_1.x, ~abs(31605u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_mult_i32(reverseBits(u_input.b), -u_input.c.x << (select(select(5504u, 1u, true), _wgslsmith_sub_u32(~34783u, reverseBits(29407u)), true) % 32u));
    global0 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-543f, 2538f) + vec2<f32>(346f, -878f))))))));
    var var_2 = firstTrailingBit(min(~(-(~(-8872i))), 2147483647i));
    var var_3 = global0[_wgslsmith_index_u32(func_1(vec3<f32>(_wgslsmith_f_op_f32(step(-412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(trunc(233f))))), var_1.x, 592f), vec3<u32>(4294967295u, max(_wgslsmith_clamp_u32(1u, 81809u, 4294967295u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(33615u, 39316u, 4294967295u), vec3<u32>(0u, 24462u, 0u), vec3<bool>(false, false, false)), abs(vec3<u32>(33718u, 3700u, 1u)))), min(~1u, 65547u)), all(vec2<bool>(true, true)), 18366u), 6u)];
    let var_4 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-540f + _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(442f)))), var_1.x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.x, var_4.x)))), _wgslsmith_f_op_f32(trunc(var_1.x)))));
}

