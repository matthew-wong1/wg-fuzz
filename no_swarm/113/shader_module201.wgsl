struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-758f, 337f, 1000f, -1107f), vec4<f32>(810f, -706f, 1795f, -1399f), vec4<f32>(837f, 664f, 1532f, 1522f), vec4<f32>(-345f, 1030f, -129f, 160f), vec4<f32>(-216f, -1496f, 194f, -378f), vec4<f32>(-1000f, 824f, -635f, -1289f), vec4<f32>(-279f, -198f, 734f, -972f), vec4<f32>(-273f, 1782f, 493f, 962f), vec4<f32>(-1098f, 976f, -1117f, 804f), vec4<f32>(1181f, -1244f, -244f, 1094f), vec4<f32>(-1216f, 1112f, 822f, 150f), vec4<f32>(341f, -460f, 143f, 811f), vec4<f32>(614f, 510f, -1090f, -1389f));

var<private> global1: u32 = 29538u;

var<private> global2: array<u32, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> vec3<i32> {
    global2 = array<u32, 21>();
    var var_0 = Struct_3(28814u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3.x, arg_0.b), _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x))))))), ~arg_0.c);
    var var_1 = 0u;
    var var_2 = 1000f;
    var var_3 = ~(~arg_1.x);
    return vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, -1i), _wgslsmith_mod_i32(1i, ~(-1i << (global2[_wgslsmith_index_u32(u_input.a.x, 21u)] % 32u)))), -(i32(-1i) * -9271i) << (~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, reverseBits(u_input.a)), 21u)] % 32u), abs(1i));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 16703i, 38056i), vec3<i32>(2147483647i, 0i, 2147483647i)), func_2(Struct_3(global2[_wgslsmith_index_u32(arg_1, 21u)], -216f, vec3<u32>(arg_1, 1u, arg_1)), u_input.a.xz, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-arg_0.yw)))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_0 - arg_0);
    global2 = array<u32, 21>();
    global2 = array<u32, 21>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, arg_0.x, false))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -1780f)))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(1u, 13u)], ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1559f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), 926f));
}

