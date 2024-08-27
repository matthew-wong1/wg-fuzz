struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 19>;

var<private> global2: Struct_1 = Struct_1(47571u, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1000f))))));
    global2 = global1[_wgslsmith_index_u32(~firstTrailingBit(global2.a), 19u)];
    var var_1 = global1[_wgslsmith_index_u32((~(~abs(1u)) ^ global2.a) >> (~73621u % 32u), 19u)];
    var var_2 = all(vec2<bool>(any(!vec3<bool>(arg_1, global2.c, var_1.b)), true));
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(~global2.a, reverseBits(_wgslsmith_clamp_u32(4294967295u, global2.a, 4294967295u)), firstTrailingBit(global2.a), _wgslsmith_add_u32(_wgslsmith_sub_u32(43136u, var_1.a), ~0u))), vec4<u32>(~4294967295u, 53796u, _wgslsmith_add_u32(u_input.d, u_input.d) & (u_input.d << (4294967295u % 32u)), ~1u)), 19u)];
    return _wgslsmith_f_op_f32(min(165f, _wgslsmith_f_op_f32(ceil(-328f))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<bool> {
    global1 = array<Struct_1, 19>();
    var var_0 = firstLeadingBit(vec3<i32>(-1i, _wgslsmith_mod_i32(-51578i, -1i << (_wgslsmith_sub_u32(arg_0, 11845u) % 32u)), min(_wgslsmith_add_i32(arg_1, -u_input.c.x), ~1i)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b.x, arg_2.a), 1u, arg_2.a >> (global2.a % 32u)), vec3<u32>(global2.a, ~arg_0, 26365u))), 14853u, ~_wgslsmith_sub_u32(35086u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 82860u), u_input.b))), 19u)];
    global0 = !any(!arg_3);
    var var_2 = -1i;
    return !vec3<bool>(arg_3.x, var_1.c, all(select(arg_3.yw, arg_3.yw, vec2<bool>(global2.c, var_1.c))));
}

fn func_2() -> f32 {
    var var_0 = abs(-(abs(max(u_input.a.x, -2147483647i)) ^ u_input.a.x));
    let var_1 = Struct_1(~77143u, any(func_3(~global2.a, u_input.a.x, Struct_1(u_input.b.x, true, global2.b), vec4<bool>(global2.c, global2.b, global2.c, global2.b))) && !all(!vec3<bool>(global2.b, true, global2.c)), any(select(select(!vec4<bool>(false, true, global2.c, false), vec4<bool>(global2.c, true, false, global2.b), false), select(select(vec4<bool>(false, false, global2.b, global2.c), vec4<bool>(global2.c, false, global2.c, true), vec4<bool>(global2.c, global2.b, global2.c, false)), select(vec4<bool>(global2.c, false, global2.b, global2.b), vec4<bool>(true, false, true, true), global2.c), global2.b), !(!global2.b))));
    var var_2 = global1[_wgslsmith_index_u32(u_input.d, 19u)];
    global2 = global1[_wgslsmith_index_u32(1706u, 19u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1277f - -812f) + _wgslsmith_f_op_f32(select(1409f, _wgslsmith_f_op_f32(1793f - -305f), global2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2353f)) - _wgslsmith_f_op_f32(770f * 1443f))), -739f)));
    return -474f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f + -703f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) * -704f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2933f)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1517f)) + _wgslsmith_f_op_f32(func_1(true, global2.c))) * _wgslsmith_f_op_f32(func_2())), -1199f, _wgslsmith_f_op_f32(func_1(all(!(!vec4<bool>(false, global2.b, true, global2.c))), true)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, var_1.x, 1325f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, 830f, -1492f), vec3<f32>(var_1.x, 1069f, 476f))))))));
    var var_2 = 1816f;
    var var_3 = global1[_wgslsmith_index_u32(global2.a, 19u)];
    global0 = var_3.b;
    global2 = global1[_wgslsmith_index_u32(22928u, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, 10312u, ~_wgslsmith_mult_u32(global2.a, 1u << ((u_input.d << (global2.a % 32u)) % 32u)), _wgslsmith_add_u32(max(var_3.a, ~global2.a), ~55851u));
}

