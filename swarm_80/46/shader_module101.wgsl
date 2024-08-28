struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(492f, -536f, -328f), vec3<u32>(4294967295u, 0u, 4294967295u));

var<private> global1: array<f32, 10> = array<f32, 10>(-392f, 706f, -353f, 2260f, 1455f, 955f, 156f, 432f, -1000f, 473f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec3<f32> {
    global0 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(18716u, 10u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.b.x, 10u)] * global1[_wgslsmith_index_u32(10959u, 10u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(68527u, 10u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1.a.x, arg_1.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], -1000f, global1[_wgslsmith_index_u32(0u, 10u)]) + vec3<f32>(global0.a.x, -1820f, global0.a.x))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec3<bool> {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3(~global0.b.zz, Struct_2(arg_3, _wgslsmith_mult_vec3_u32(vec3<u32>(20196u, 82596u, global0.b.x) & vec3<u32>(u_input.b.x, global0.b.x, u_input.b.x), ~u_input.b)))), vec3<u32>(63786u, select(firstLeadingBit(abs(arg_1.x)), ~arg_1.x, true), arg_1.x));
    let var_0 = arg_0;
    var var_1 = Struct_1(~vec3<u32>(1u, u_input.b.x, ~10870u));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1081f))))), arg_0.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(33602u & var_1.a.x, 10u)] + -290f)), _wgslsmith_clamp_vec3_u32(~max(global0.b, ~vec3<u32>(u_input.b.x, var_1.a.x, arg_1.x)), ~firstLeadingBit(var_1.a), ~firstLeadingBit(vec3<u32>(0u, 33309u, global0.b.x))));
    let var_3 = vec2<u32>(((~51011u << (_wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(arg_1.x, 45419u, u_input.b.x)) % 32u)) & u_input.b.x) ^ _wgslsmith_clamp_u32(72786u, var_2.b.x, ~_wgslsmith_add_u32(56191u, var_1.a.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, _wgslsmith_mult_u32(4493u, var_1.a.x)), abs(~vec2<u32>(var_2.b.x, 19718u))));
    return !select(select(vec3<bool>(true, false, 4294967295u <= arg_1.x), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, false)), true, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, true)) | true);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = !func_2(vec3<f32>(762f, -594f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -513f)))), select(global0.b.xy, ~(vec2<u32>(global0.b.x, 1425u) >> (global0.b.yz % vec2<u32>(32u))), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), ~(vec2<i32>(-1i) * -vec2<i32>(arg_0, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(509f, 1223f, -1417f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1740f, global1[_wgslsmith_index_u32(0u, 10u)], -266f) - global0.a))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0.b.x, 10u)], global1[_wgslsmith_index_u32(u_input.b.x, 10u)])) + _wgslsmith_f_op_f32(ceil(-2122f)))) * global0.a), global0.b ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(max(0u, 0u), ~global0.b.x, u_input.b.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), u_input.b), select(u_input.b, _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(global0.b.x, 50351u, 59018u)), -9199i == u_input.a)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(abs(~u_input.b.x), 10u)], -1112f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, global0.a.x, var_1.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, var_1.a.x))) + vec3<f32>(-1161f, _wgslsmith_f_op_f32(round(333f)), _wgslsmith_f_op_f32(select(160f, 1373f, var_0.x)))))), var_1.b);
    var_2 = var_1;
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.a, global0.a, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1685f, 774f, global1[_wgslsmith_index_u32(var_2.b.x, 10u)]))), _wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.a.x, 1107f) + var_1.a)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -730f, var_1.a.x) + var_2.a), ~global0.b.yz, abs(vec2<i32>(-1i, u_input.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-215f, var_1.a.x, -1301f), global0.a))))), ~_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global0.b.x, 74319u), vec3<u32>(u_input.b.x, global0.b.x, 0u), vec3<u32>(0u, var_1.b.x, global0.b.x)), vec3<u32>(abs(78580u), _wgslsmith_dot_vec2_u32(u_input.b.zy, var_2.b.xx), 37902u)));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = global0.b.zz;
    var var_1 = u_input.b.yz;
    var var_2 = arg_3;
    var_0 = min(abs(vec2<u32>(~arg_3.b.x, ~(~20063u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, 5011u << (global0.b.x % 32u)), vec2<u32>(_wgslsmith_div_u32(global0.b.x, var_1.x), func_1(-1i).b.x)), select(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0.b.x), vec2<u32>(var_2.b.x, 1u)), var_2.b.yy), vec2<u32>(select(var_0.x, 4294967295u, true), 4294967295u), vec2<bool>(false, arg_2.x || false)), ~vec2<u32>(firstLeadingBit(4294967295u), var_2.b.x)));
    global0 = func_1(countOneBits(u_input.a));
    return Struct_1(countOneBits(~vec3<u32>(~arg_1, ~1u, 1u)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = 1i;
    var var_1 = Struct_2(global0.a, vec3<u32>(~_wgslsmith_mult_u32(global0.b.x, ~20314u), 0u, u_input.b.x));
    global1 = array<f32, 10>();
    var var_2 = u_input.b.x;
    var var_3 = Struct_2(vec3<f32>(1651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-532f))), _wgslsmith_f_op_f32(-var_1.a.x)), func_4(arg_0, ~var_1.b.x, !select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), var_1.a.x >= -245f), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a))), vec3<u32>(4294967295u & var_1.b.x, arg_1.a.x, _wgslsmith_add_u32(0u, 1u)))).a);
    return StorageBuffer(_wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b.x, var_1.b.x, 1u)), func_4(_wgslsmith_f_op_f32(206f * -445f), ~max(72683u, var_3.b.x), vec3<bool>(true, false, any(vec2<bool>(false, true))), Struct_2(global0.a, vec3<u32>(var_1.b.x, u_input.b.x, var_3.b.x))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(global1[_wgslsmith_index_u32(~(reverseBits(u_input.b.x) >> (u_input.b.x % 32u)), 10u)], func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x) * -373f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(692f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(55994u, 10u)]))), firstTrailingBit(~global0.b.x) & _wgslsmith_mod_u32(countOneBits(0u), abs(global0.b.x)), select(vec3<bool>(true, 523f <= global0.a.x, all(vec2<bool>(false, false))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, false)) == true), func_1(_wgslsmith_clamp_i32(51689i, _wgslsmith_clamp_i32(u_input.a, -29402i, u_input.a), 45934i))));
}

