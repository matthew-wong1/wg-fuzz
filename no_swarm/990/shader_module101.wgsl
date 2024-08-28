struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(4294967295u, 59160u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global1 = Struct_1(reverseBits(_wgslsmith_sub_vec2_u32(u_input.d.xz & vec2<u32>(1u, u_input.d.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(39262u, u_input.a), vec2<u32>(4294967295u, global1.a.x), global1.a))));
    let var_0 = u_input.d ^ abs(u_input.d);
    global0 = array<u32, 19>();
    var var_1 = Struct_1(abs(var_0.yy) << (firstLeadingBit(_wgslsmith_add_vec2_u32(global1.a, vec2<u32>(1u, var_0.x)) | vec2<u32>(0u, global1.a.x)) % vec2<u32>(32u)));
    var var_2 = ~_wgslsmith_mult_u32(~8013u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 33721u, global1.a.x, 1u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 3112u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 0u))));
    return 50140u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(~arg_2.a);
    global0 = array<u32, 19>();
    let var_1 = 125f;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(), countOneBits(~arg_0.a.x), var_0.a.x, 0u), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 87607u, 47191u, arg_1.a.x), ~vec4<u32>(12774u, 82794u, arg_0.a.x, 33895u)), vec4<u32>(39042u, ~global1.a.x, 1u, select(8890u, global1.a.x, false))), _wgslsmith_sub_vec4_u32(vec4<u32>(25959u, 8156u, var_0.a.x, arg_2.a.x) ^ (vec4<u32>(58672u, 0u, arg_0.a.x, 0u) | vec4<u32>(var_0.a.x, arg_3.a.x, 64076u, var_0.a.x)), max(countOneBits(vec4<u32>(arg_2.a.x, global0[_wgslsmith_index_u32(global1.a.x, 19u)], 1u, 11170u)), vec4<u32>(3489u, global1.a.x, arg_0.a.x, arg_0.a.x)))));
    global1 = Struct_1((select(select(arg_3.a, vec2<u32>(arg_3.a.x, arg_1.a.x), false), arg_1.a, vec2<bool>(true, false)) ^ ~u_input.d.zx) & vec2<u32>(4294967295u, ~(~global1.a.x)));
    return _wgslsmith_add_i32(1i, ~(u_input.c.x ^ _wgslsmith_div_i32(u_input.c.x, u_input.b.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2;
    global0 = array<u32, 19>();
    var var_1 = var_0;
    var var_2 = firstTrailingBit(1u);
    let var_3 = arg_2;
    return Struct_1(~(~vec2<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 19u)]), 38054u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = func_4(52155u, -vec2<i32>(-firstTrailingBit(-1i), -1i), Struct_1(~(~(arg_1.a ^ arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -714f) * _wgslsmith_f_op_f32(f32(-1f) * -268f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f + -1000f)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1532f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1273f, 1084f, -951f, -2129f) + vec4<f32>(124f, 1000f, 705f, 470f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, 417f, -1316f, 1594f)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(967f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-390f, -733f))), 674f, -1595f))));
    var var_3 = arg_1;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(241f * _wgslsmith_f_op_f32(f32(-1f) * -1623f))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x - 513f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)), var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * -765f))))));
    return func_4(_wgslsmith_div_u32(global1.a.x, 19676u) ^ (4294967295u << (global0[_wgslsmith_index_u32(0u, 19u)] % 32u)), abs(-_wgslsmith_mod_vec2_i32(u_input.c.yy, u_input.b)), Struct_1(firstLeadingBit(global1.a)), -848f);
}

fn func_1() -> bool {
    global1 = func_5(_wgslsmith_mod_i32(u_input.b.x, ~(~(-2147483647i))), func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 36015u), _wgslsmith_add_vec3_u32(u_input.d, u_input.d)) | 0u, vec2<i32>(14834i, ~func_2(Struct_1(global1.a), Struct_1(vec2<u32>(81202u, 4294967295u)), Struct_1(u_input.d.zz), Struct_1(vec2<u32>(1u, 34519u)))), Struct_1(_wgslsmith_div_vec2_u32(u_input.d.xz, ~global1.a)), _wgslsmith_div_f32(-1323f, 1f)), vec4<bool>(!(all(vec3<bool>(true, false, false)) || false), any(select(vec2<bool>(false, true), vec2<bool>(false, true), select(false, false, false))), !all(vec4<bool>(true, true, true, true)), true));
    global0 = array<u32, 19>();
    var var_0 = !(_wgslsmith_mod_i32(u_input.b.x, ~u_input.b.x) < ~func_2(func_5(16124i, Struct_1(u_input.d.yz), vec4<bool>(true, false, false, true)), func_4(22409u, u_input.c.xy, Struct_1(vec2<u32>(0u, global1.a.x)), -495f), Struct_1(vec2<u32>(u_input.a, global1.a.x)), func_4(60299u, vec2<i32>(u_input.c.x, 21142i), Struct_1(vec2<u32>(10035u, global0[_wgslsmith_index_u32(1u, 19u)])), -1543f)));
    global0 = array<u32, 19>();
    var_0 = true;
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-499f + 1229f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), -1553f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-393f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(u_input.d.x, 12066u));
    var var_1 = select(vec4<bool>(all(vec3<bool>(true, any(vec2<bool>(true, true)), true)), true, true, true), vec4<bool>(false, true, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), false), !(!vec4<bool>(false, true, false, 7932i <= u_input.b.x)));
    var var_2 = vec2<bool>(any(vec4<bool>((global1.a.x > u_input.a) | func_1(), false, true, any(vec2<bool>(false, true)))), all(select(vec3<bool>(false, any(vec4<bool>(var_1.x, true, var_1.x, true)), true), var_1.yxw, var_1.yzy)));
    let var_3 = _wgslsmith_add_u32(abs(1u), ~(~(~var_0.a.x ^ 0u)));
    let var_4 = Struct_1(min(countOneBits(vec2<u32>(var_3, 4294967295u)), vec2<u32>(global1.a.x >> (1u % 32u), _wgslsmith_div_u32(31481u, 1u))) ^ u_input.d.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 639f, -520f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(955f, 472f, 167f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(527f, -2111f, -998f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-297f, -1364f, -1020f))))), 10458i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-604f, -932f, var_2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-929f)), _wgslsmith_f_op_f32(sign(-629f)), var_2.x))))), global1.a.x);
}

