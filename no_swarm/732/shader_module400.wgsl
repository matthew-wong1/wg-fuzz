struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_1(select(abs(reverseBits(vec2<u32>(7815u, 8590u))), _wgslsmith_mod_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(34523u, 37878u), vec2<u32>(1u, 102557u)), abs(vec2<u32>(15201u, 4294967295u)), true), vec2<u32>(1u, 1u)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), false), true)), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, true), true), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, true), 0i == u_input.a), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), true)), vec4<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(30126u, 29u)], 1000f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1750f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))))), 19923u, countOneBits(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = vec4<u32>(~_wgslsmith_add_u32(var_0.a.x, 18842u), var_0.e.x, var_0.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u << (var_0.d % 32u), _wgslsmith_sub_u32(var_0.a.x, var_0.e.x)), _wgslsmith_mult_u32(33412u ^ var_0.e.x, var_0.a.x), 1u), ~min(_wgslsmith_add_vec3_u32(var_0.e.wwz, vec3<u32>(var_0.e.x, 22151u, 4294967295u)), ~vec3<u32>(4294967295u, var_0.e.x, 0u))));
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_2 = vec2<u32>(1u, 4294967295u);
    return !(!var_0.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(~62706u, _wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(32216u, 17890u, 4294967295u)), 55300u)), !vec4<bool>(select(func_3(global0[_wgslsmith_index_u32(46858u, 29u)]), true, true), false, any(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 29u)]) <= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(73510u, 29u)] * -2360f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 29u)], -852f))), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 29u)])))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), vec3<f32>(global0[_wgslsmith_index_u32(85499u, 29u)], -907f, 1011f)))))), 1u, vec4<u32>(_wgslsmith_sub_u32(1u, abs(_wgslsmith_mod_u32(8206u, 1u))), 1u, ~(~(~7125u)), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(22664u, 78290u, 0u, 1323u)), vec4<u32>(1u, 4294967295u, 1u, 4294967295u))));
    let var_1 = vec2<u32>(var_0.e.x, 0u);
    let var_2 = 0i;
    let var_3 = var_0;
    global0 = array<f32, 29>();
    return Struct_1(vec2<u32>(countOneBits(_wgslsmith_div_u32(var_0.a.x, ~55694u)), 1u), vec4<bool>(true, any(select(select(var_0.b.wz, vec2<bool>(false, true), var_0.b.yx), vec2<bool>(false, var_0.b.x), !var_3.b.xy)), true, var_3.b.x), var_3.c, var_0.a.x, var_3.e);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> bool {
    var var_0 = func_2();
    global0 = array<f32, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, global0[_wgslsmith_index_u32(arg_0, 29u)], -647f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1000f, arg_1.x))) * vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0, 29u)], var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(11895u, var_0.d, arg_0), 29u)])), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, global0[_wgslsmith_index_u32(arg_0, 29u)], 1225f)))))));
    var_0 = func_2();
    let var_2 = Struct_1(max(_wgslsmith_clamp_vec2_u32(abs(var_0.a), var_0.a, _wgslsmith_mod_vec2_u32(var_0.e.yz, var_0.a)) | ~vec2<u32>(arg_0, 1u), ~var_0.a), !(!vec4<bool>(all(var_0.b), func_2().b.x, !var_0.b.x, -1201f != global0[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-511f, 1029f, all(vec3<bool>(var_0.b.x, var_0.b.x, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2().c.x), _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1636f, var_1.x, var_1.x)))), firstLeadingBit(arg_0), var_0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -724f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(func_1(7835u, vec3<f32>(-114f, -1000f, global0[_wgslsmith_index_u32(13025u, 29u)])), true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false)), vec4<bool>(!(!any(vec3<bool>(false, false, true))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(38857u, 29u)] + global0[_wgslsmith_index_u32(25430u, 29u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)]))), false), vec4<bool>(true, true, true, true));
    var_0 = !vec4<bool>(!var_0.x, true, var_0.x, var_0.x);
    let var_1 = func_2();
    let var_2 = -3974f;
    var_0 = func_2().b;
    var_0 = select(var_1.b, vec4<bool>(any(var_1.b), true, var_1.b.x || (_wgslsmith_mult_i32(u_input.a, u_input.a) >= (0i << (var_1.e.x % 32u))), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, ~(_wgslsmith_add_vec4_u32(var_1.e, countOneBits(vec4<u32>(4294967295u, var_1.d, var_1.a.x, 1u))) | var_1.e), reverseBits(max(vec3<i32>(1i, ~u_input.a, u_input.a), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647i, 25628i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)))), -522f, ~var_1.e.x);
}

