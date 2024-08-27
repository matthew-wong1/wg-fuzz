struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<i32, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<bool> {
    let var_0 = ~abs(_wgslsmith_mod_vec4_i32(countOneBits(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(19521u, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(11869i, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(11176u, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec4<i32>(-15794i, 2147483647i, 36037i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(global1[_wgslsmith_index_u32(38648u, 1u)], -2699i, 1512i, -36880i))));
    global0 = select(!(!vec2<bool>(global0.x, false)), select(select(select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), true), !select(vec2<bool>(false, true), vec2<bool>(true, global0.x), global0.x), select(vec2<bool>(false, global0.x), !vec2<bool>(global0.x, false), vec2<bool>(true, true))), !(!vec2<bool>(false, global0.x)), vec2<bool>(any(select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), false)), !vec2<bool>(!any(vec2<bool>(global0.x, true)), true));
    let var_1 = !global0.x & any(vec2<bool>(true, any(vec2<bool>(false, false))));
    return vec3<bool>(!(-7958i == var_0.x), any(!select(!vec4<bool>(false, var_1, false, true), !vec4<bool>(true, var_1, false, true), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, true, global0.x, false), vec4<bool>(true, var_1, true, true)))), !any(!(!vec3<bool>(true, global0.x, global0.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = any(vec4<bool>(any(func_3().zx), select(any(vec4<bool>(true, true, false, arg_1.x)), arg_1.x, true), global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, global1[_wgslsmith_index_u32(108208u, 1u)], global1[_wgslsmith_index_u32(arg_2.a.x, 1u)]), vec3<i32>(1i, -11684i, 32107i)) <= (i32(-1i) * -2147483647i))) | true;
    var var_1 = abs(arg_0.x);
    let var_2 = u_input.a;
    var_1 = 4079u;
    var var_3 = any(!(!(!select(arg_1.xx, arg_1.xy, arg_1.yz))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-190f, 139f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(648f)))) * 125f));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1601f - 1477f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstTrailingBit(~u_input.a), func_3(), Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 12937u), vec3<u32>(u_input.a.x, u_input.a.x, 38147u)), global1[_wgslsmith_index_u32(max(4294967295u, 0u), 1u)], 16603u)))));
    let var_1 = Struct_1(1u);
    global0 = vec2<bool>(global0.x, true);
    global0 = !vec2<bool>(true != all(vec2<bool>(false, global0.x)), false);
    let var_2 = false;
    return var_2;
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_2(~(~(~vec3<u32>(u_input.b.x, u_input.b.x, 14144u) | _wgslsmith_add_vec3_u32(vec3<u32>(30669u, u_input.b.x, 1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), 1i, _wgslsmith_mult_u32(u_input.a.x, 56688u));
    global0 = select(vec2<bool>(!global0.x || global0.x, func_2(33884i, min(~vec3<i32>(arg_0.x, arg_0.x, -1i), firstTrailingBit(vec3<i32>(0i, global1[_wgslsmith_index_u32(var_0.a.x, 1u)], 2147483647i))))), vec2<bool>(!all(vec2<bool>(global0.x, global0.x)), global0.x), vec2<bool>(min(1u, firstLeadingBit(var_0.a.x)) >= max(38167u, 93010u), true));
    var var_1 = vec2<i32>(~abs(var_0.b), arg_0.x);
    var var_2 = var_0;
    var var_3 = Struct_1(1u);
    return vec2<bool>(true, _wgslsmith_f_op_f32(-210f + _wgslsmith_f_op_f32(296f - -1248f)) <= _wgslsmith_f_op_f32(func_4(vec2<u32>(var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 4294967295u, 62362u, var_0.c), vec4<u32>(var_3.a, u_input.a.x, u_input.a.x, u_input.b.x))), func_3(), Struct_2(_wgslsmith_add_vec3_u32(var_0.a, var_0.a), _wgslsmith_mod_i32(-2147483647i, 2147483647i), 1u | var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!func_1(firstLeadingBit(vec2<i32>(-24748i, global1[_wgslsmith_index_u32(4294967295u, 1u)]))));
    let var_0 = !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, !any(vec2<bool>(global0.x, global0.x)), true, !all(vec4<bool>(true, global0.x, global0.x, false))), vec4<bool>(global0.x, true, true, ~18304u > countOneBits(u_input.a.x)));
    var var_1 = ~max(reverseBits(vec3<u32>(u_input.b.x >> (u_input.a.x % 32u), ~u_input.a.x, ~u_input.b.x)), select(_wgslsmith_div_vec3_u32(~vec3<u32>(8974u, 34810u, u_input.a.x), ~vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 13520u, u_input.b.x), vec3<u32>(u_input.a.x, 57406u, u_input.a.x)), true));
    var var_2 = select(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(34941u, ~var_1.x >> (abs(u_input.a.x) % 32u)), var_1.x, 0u), ~(u_input.b.x | 0u), true);
    var var_3 = Struct_1(1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-137f, 311f, -1580f, 140f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-763f, -161f, 1966f, -365f)))))), reverseBits(abs(u_input.b.x ^ var_3.a) & 1u), _wgslsmith_f_op_f32(f32(-1f) * -2777f));
}

