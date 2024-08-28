struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: vec4<u32> = vec4<u32>(73322u, 1906u, 78981u, 72015u);

var<private> global2: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global0 = array<bool, 16>();
    global2 = true;
    let var_0 = !(!vec3<bool>(u_input.a < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(-12737i, u_input.b)), global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)] && true));
    global1 = ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, global1.x, 8437u, global1.x)) & ~firstTrailingBit(vec4<u32>(global1.x, 79954u, 0u, 1u)), vec4<u32>(0u, global1.x, _wgslsmith_mult_u32(131881u, global1.x) | ~global1.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.x, global1.x), ~4294967295u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-516f)))))), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(80088u, 41366u) % vec2<u32>(32u)), vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.a, 0i)) >> (~(~global1.xy << (~vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), ~u_input.b);
    return _wgslsmith_f_op_f32(select(var_1.a.x, -1455f, ((min(8263u, 1u) < firstTrailingBit(global1.x)) | (global0[_wgslsmith_index_u32(47u, 16u)] & true)) || false));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    global2 = arg_0;
    var var_0 = vec4<f32>(-600f, -1258f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_1.a.x, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.x))))), vec4<f32>(arg_1.a.x, -755f, -2613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, arg_1.a.x, -239f, arg_1.a.x))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-950f, arg_1.a.x, 1023f, -1309f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -711f, -415f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, arg_1.a.x, -791f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 643f, 1316f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, 674f, var_0.x, -1685f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -1000f, arg_1.a.x, 214f)))), arg_2.x));
    var var_1 = arg_1.a.x;
    return global1.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> u32 {
    global2 = false;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - 1000f) - _wgslsmith_div_f32(arg_2.x, arg_2.x)) - 735f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-1623f * arg_2.x)))));
    global2 = !(!(global0[_wgslsmith_index_u32(func_2(all(arg_0.zx), Struct_1(vec3<f32>(var_0, 1076f, -1338f), vec2<i32>(arg_1.x, u_input.a), 37112i), vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], arg_0.x, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), u_input.a), 16u)] | true));
    let var_1 = u_input.b;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.x, 45758u), 37648u >> (1u % 32u)) | (global1.x & _wgslsmith_div_u32(47699u, global1.x))), min(global1.yz & _wgslsmith_div_vec2_u32(vec2<u32>(global1.x, global1.x) << (vec2<u32>(39131u, global1.x) % vec2<u32>(32u)), vec2<u32>(4294967295u, global1.x)), ~vec2<u32>(global1.x, ~global1.x))), 16u)];
    return _wgslsmith_mod_u32(global1.x, global1.x & 53828u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(abs(~(abs(96226u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 16382u, 25209u), vec4<u32>(84031u, global1.x, 1u, global1.x)) % 32u))), 50905u, global1.x, global1.x);
    global1 = _wgslsmith_clamp_vec4_u32(var_0, firstLeadingBit(var_0), ~(vec4<u32>(func_1(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 16u)], false, global0[_wgslsmith_index_u32(global1.x, 16u)], true), vec2<i32>(-1i, u_input.a), vec2<f32>(617f, -783f)), ~var_0.x, 1u, ~81906u) & ~(~vec4<u32>(global1.x, global1.x, var_0.x, var_0.x))));
    var var_1 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(460f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1472f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_div_f32(-614f, _wgslsmith_f_op_f32(sign(-968f)))))), -776f, _wgslsmith_f_op_f32(1f * 579f));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(602f, var_1.x, var_1.x, 193f), vec4<f32>(var_1.x, var_1.x, 672f, -1465f)) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(-1623f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_div_f32(-1285f, -578f), var_1.x, _wgslsmith_f_op_f32(-843f * var_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(501f, var_1.x, var_1.x, 903f), vec4<f32>(var_1.x, var_1.x, -281f, var_1.x)), vec4<f32>(-694f, -1875f, var_1.x, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zyx + var_1.yww)) + vec3<f32>(695f, var_1.x, 1041f))), var_1.x, u_input.b);
}

