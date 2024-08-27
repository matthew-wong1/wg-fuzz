struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_u32(66793u, 4294967295u, 1u);
    let var_1 = -1i << (~global1[_wgslsmith_index_u32(1u, 22u)] % 32u);
    global1 = array<u32, 22>();
    global0 = countOneBits((vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(39088i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i))) << (max(vec4<u32>(~47105u, select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41384u, 22u)], 22u)], global1[_wgslsmith_index_u32(110284u, 22u)], arg_0.x), 3833u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<u32>(global1[_wgslsmith_index_u32(6974u, 22u)], 1u))), vec4<u32>(global1[_wgslsmith_index_u32(0u, 22u)], 50726u, 4294967295u, 32691u) ^ vec4<u32>(global1[_wgslsmith_index_u32(1u, 22u)], 4294967295u, 40566u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)])) % vec4<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.a - _wgslsmith_f_op_vec2_f32(trunc(arg_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-578f, -1000f))), false)));
    return arg_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec2<bool> {
    let var_0 = vec2<u32>(arg_1, 0u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1744f * _wgslsmith_div_f32(223f, -597f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1143f * 1f))));
    global1 = array<u32, 22>();
    let var_2 = ~(u_input.a >> (1u % 32u));
    var var_3 = Struct_1(vec2<f32>(-1359f, _wgslsmith_f_op_f32(trunc(var_1))));
    return arg_0.yx;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_2 {
    return Struct_2(true);
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    global0 = min(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(global0.zy >> (vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14277u, 22u)], 22u)]) % vec2<u32>(32u))), abs(countOneBits(vec2<i32>(0i, -1i)))), global0.x, 0i, 2147483647i), vec4<i32>((global0.x & u_input.a) | ~global0.x, -1i, ~(~1i), max(~0i, 1i)) ^ vec4<i32>(u_input.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.x, u_input.a), ~u_input.a), -43221i, -40928i << (max(global1[_wgslsmith_index_u32(arg_1, 22u)], 13528u) % 32u)));
    let var_0 = all(vec3<bool>(~global1[_wgslsmith_index_u32(arg_1, 22u)] < arg_1, true, (global1[_wgslsmith_index_u32(arg_1, 22u)] >> (global1[_wgslsmith_index_u32(1u, 22u)] % 32u)) < 0u)) || true;
    let var_1 = Struct_2(var_0);
    var var_2 = abs(vec4<i32>(u_input.a, 2147483647i, ~global0.x, -1i));
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    return func_4(Struct_2(any(vec4<bool>(false, all(vec4<bool>(var_0, var_0, false, false)), all(vec2<bool>(var_0, true)), true))), select(!(!vec2<bool>(var_0, var_1.a)), !func_2(vec2<bool>(var_0, var_0), Struct_1(vec2<f32>(661f, 1229f)), Struct_1(vec2<f32>(-710f, arg_0))), select(func_2(!vec2<bool>(var_1.a, false), Struct_1(vec2<f32>(1321f, var_3)), Struct_1(vec2<f32>(479f, arg_0))), !(!vec2<bool>(var_0, true)), func_3(!vec3<bool>(var_0, var_0, false), ~global1[_wgslsmith_index_u32(4294967295u, 22u)]))), select(select(vec4<bool>(func_3(vec3<bool>(false, var_1.a, true), arg_1).x, false, true, var_0), vec4<bool>(!var_0, select(false, var_1.a, true), true, !var_0), !select(vec4<bool>(var_1.a, var_1.a, var_0, true), vec4<bool>(true, true, var_1.a, true), false)), vec4<bool>(true, all(vec4<bool>(var_1.a, false, true, var_1.a)), var_0, true), func_2(func_3(!vec3<bool>(false, true, var_0), ~1u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 123f) * vec2<f32>(-692f, 999f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 422f)))).x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    global0 = -select(vec4<i32>(_wgslsmith_mod_i32(max(79619i, global0.x), reverseBits(0i)), ~_wgslsmith_mult_i32(-2503i, 1i), global0.x, -4034i), -vec4<i32>(0i, 0i, u_input.a & u_input.a, u_input.a), select(!vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(1000f > arg_1.a.x, true, true, !arg_0.a), select(select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, true), arg_0.a), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), !vec4<bool>(true, true, arg_0.a, arg_0.a))));
    let var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(60249u, 100245u, 0u), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57122u, 22u)], 22u)], 0u, 56923u)), vec3<u32>(~(~4294967295u), global1[_wgslsmith_index_u32(reverseBits(64847u), 22u)], ~1u)) & ~select(max(vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 4294967295u) >> (vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64292u, 22u)], 22u)], 0u) % vec3<u32>(32u)), max(vec3<u32>(53934u, 4294967295u, 1u), vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69042u, 22u)], 22u)], 42957u))), vec3<u32>(14020u, firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56807u, 22u)], 22u)]), 1u), !select(vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, true, arg_0.a)));
    var var_1 = Struct_1(vec2<f32>(arg_1.a.x, arg_1.a.x));
    let var_2 = func_4(arg_0, vec2<bool>(arg_0.a, any(!(!vec3<bool>(arg_0.a, false, false)))), select(select(vec4<bool>(arg_0.a, arg_0.a, !arg_0.a, arg_0.a), vec4<bool>(false, !arg_0.a, func_2(vec2<bool>(true, false), arg_1, arg_1).x, u_input.a < global0.x), var_1.a.x >= var_1.a.x), vec4<bool>(all(!vec2<bool>(arg_0.a, false)), _wgslsmith_f_op_f32(-var_1.a.x) >= var_1.a.x, true, arg_0.a), !(!(!vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)))));
    var var_3 = global0.x;
    return StorageBuffer(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.yy;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(533f, 1320f), _wgslsmith_f_op_f32(max(-264f, -1506f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, -300f))));
    let x = u_input.a;
    s_output = func_5(func_1(_wgslsmith_f_op_f32(var_1.a.x * 547f), 23326u), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) * _wgslsmith_f_op_vec2_f32(var_1.a * var_1.a)), var_1.a))));
}

