struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec4<f32>, 16>;

var<private> global2: array<u32, 3> = array<u32, 3>(1u, 1u, 0u);

var<private> global3: bool;

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> f32 {
    var var_0 = vec2<u32>(u_input.a, ~(~min(0u, u_input.a))) & global0.xz;
    global1 = array<vec4<f32>, 16>();
    var var_1 = global1[_wgslsmith_index_u32(1u, 16u)];
    var var_2 = true;
    let var_3 = arg_2;
    return arg_2.d.x;
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(abs(-1i), all(vec3<bool>(true, true, true)), Struct_3(min(vec3<i32>(33932i, u_input.b, 36636i), vec3<i32>(u_input.b, -39288i, u_input.b)), -2147483647i, _wgslsmith_f_op_f32(-235f + -1104f), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.a, 16u)] - global1[_wgslsmith_index_u32(global0.x, 16u)])), -8532i)), _wgslsmith_f_op_f32(func_3(i32(-1i) * -u_input.b, any(vec4<bool>(true, true, false, true)) && true, Struct_3(vec3<i32>(1i, -6351i, -2278i), ~u_input.b, _wgslsmith_f_op_f32(abs(-907f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-615f, 183f, 1456f, 539f))), u_input.b)), all(vec2<bool>(true, true)))));
    return vec3<f32>(-1209f, _wgslsmith_f_op_f32(235f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -715f)) * _wgslsmith_f_op_f32(-772f + 176f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(408f)) + _wgslsmith_f_op_f32(-844f - 1224f)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-634f, 1007f, 252f) * _wgslsmith_f_op_vec3_f32(func_2())))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-465f, -1626f)), _wgslsmith_f_op_f32(-864f + -835f), _wgslsmith_f_op_f32(f32(-1f) * -2197f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1043f, 943f, 1138f)))))));
    let var_1 = Struct_3(min(vec3<i32>(firstLeadingBit(-80017i), u_input.b, arg_0), abs(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, -1i, arg_0), ~vec3<i32>(-22440i, u_input.b, arg_0)))), u_input.b, var_0.x, global1[_wgslsmith_index_u32(min(abs(~abs(global2[_wgslsmith_index_u32(1u, 3u)])), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 3u)], 3u)]), 16u)]);
    global3 = true;
    var var_2 = !(!(!vec2<bool>(all(vec3<bool>(true, true, true)), true)));
    global2 = array<u32, 3>();
    return global4[_wgslsmith_index_u32(~(6264u << (u_input.a % 32u)), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(0i);
    var var_1 = -1000f;
    var var_2 = vec2<i32>(max(u_input.b, -(~_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b))), ~firstTrailingBit(u_input.b));
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(39763u, ~1u, ~(5285u >> (0u % 32u)), _wgslsmith_div_u32(0u, ~u_input.a)), ~(~reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], 0u, u_input.a, 0u)))), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(35691u << (global0.x % 32u), u_input.a), 3u)], 3u)], ~(89363u ^ global2[_wgslsmith_index_u32(global0.x, 3u)])), select(vec4<u32>(reverseBits(global2[_wgslsmith_index_u32(11764u, 3u)]), global0.x, u_input.a, ~u_input.a), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.x, global0.x, 53376u), vec4<u32>(global0.x, 6815u, u_input.a, 48560u))), var_0.a.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, -648f)))), _wgslsmith_f_op_vec3_f32(func_2()).zx, !vec2<bool>(false, func_1(u_input.b).a.x))) * vec2<f32>(_wgslsmith_f_op_f32(step(289f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-343f, -1000f)), 1022f, any(vec4<bool>(true, false, true, false)))))), _wgslsmith_f_op_f32(f32(-1f) * -321f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_4.x, _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.x, -56081i), vec2<i32>(u_input.b, var_2.x), false), abs(vec2<i32>(var_2.x, -1i))) & _wgslsmith_add_i32(u_input.b, u_input.b), var_2.x, u_input.b), var_4.x);
}

