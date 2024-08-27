struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(43358u, 4294967295u, 38738u, 82377u, 1u, 22722u, 55005u, 0u, 1046u);

var<private> global1: array<Struct_1, 26>;

var<private> global2: Struct_1;

var<private> global3: vec3<u32>;

var<private> global4: vec3<f32> = vec3<f32>(943f, 842f, 542f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>) -> vec2<f32> {
    var var_0 = vec3<bool>(abs(global3.x) > arg_0.x, global2.a, false);
    global3 = ~(~(~arg_0.zxy));
    var var_1 = vec4<u32>(1u, ~firstLeadingBit(0u), firstTrailingBit(global0[_wgslsmith_index_u32(13116u, 9u)]), global3.x);
    var var_2 = -654f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.x, global4.x)) + _wgslsmith_f_op_f32(f32(-1f) * -329f));
    return vec2<f32>(global4.x, -155f);
}

fn func_3() -> vec2<bool> {
    global0 = array<u32, 9>();
    var var_0 = global4.yx;
    return !vec2<bool>(true, any(!(!vec2<bool>(global2.a, false))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = vec2<i32>(u_input.a, u_input.a & 1i) | vec2<i32>(min(u_input.b, -41524i), u_input.d);
    let var_1 = global3.yx;
    let var_2 = select(vec2<bool>(true, false), !vec2<bool>(true, 0u < abs(var_1.x)), func_3());
    global3 = u_input.e.xzw;
    let var_3 = global1[_wgslsmith_index_u32(global3.x, 26u)];
    return -972f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(global4.zz));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(~vec4<u32>(1u, 0u, 4294967295u, 0u)))), vec2<f32>(-113f, global2.b)));
    global4 = vec3<f32>(1333f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(!vec2<bool>(global2.a, global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - 1263f)))))), _wgslsmith_div_f32(1413f, 457f));
    global3 = _wgslsmith_add_vec3_u32(min(vec3<u32>(_wgslsmith_mod_u32(1u, 1u), 0u >> (_wgslsmith_mod_u32(4860u, global3.x) % 32u), max(2299u, 1u)), abs(u_input.e.zwz)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.e.wxz | vec3<u32>(u_input.c, u_input.c, 1u), u_input.e.xyw), min(vec3<u32>(1u, 104367u, global3.x), u_input.e.xww), ~(vec3<u32>(4294967295u, 4294967295u, 0u) << (u_input.e.www % vec3<u32>(32u)))), ~_wgslsmith_clamp_vec3_u32(~u_input.e.xyy, vec3<u32>(global3.x, 0u, 24511u), _wgslsmith_mod_vec3_u32(vec3<u32>(39896u, 4294967295u, global0[_wgslsmith_index_u32(54122u, 9u)]), u_input.e.zzw))));
    global3 = ~_wgslsmith_mult_vec3_u32(u_input.e.ywy, vec3<u32>(~(~global0[_wgslsmith_index_u32(u_input.e.x, 9u)]), ~4294967295u, ~reverseBits(117176u)));
    var var_2 = global0[_wgslsmith_index_u32(34680u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-global4.x))), select(~(~1u) & ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 9u)], 4294967295u, 29926u), 9u)], abs(_wgslsmith_div_u32(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(69001u, global3.x, global0[_wgslsmith_index_u32(u_input.e.x, 9u)], 24815u), u_input.e))), false), ~vec2<u32>(~(~64772u), select(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(54938u, 9u)], 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(12757u, 9u)], global3.x), vec2<u32>(0u, 1u)), global2.a & true)));
}

