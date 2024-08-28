struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<i32> = vec4<i32>(17546i, 29079i, 54883i, 8063i);

var<private> global2: array<bool, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = firstTrailingBit((~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u) | vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.c.x)) ^ ~vec4<u32>(19025u, 28435u, 26552u, u_input.c.x)) ^ ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.c.x, 0u, 83583u), vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.c.x)));
    var var_1 = arg_2;
    var var_2 = arg_1.a;
    var var_3 = arg_1;
    var var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, -(~1i), -813i, firstLeadingBit(-2147483647i)), vec4<i32>(1i, 1i, -(arg_0.a.x << (1u % 32u)), ~0i));
    return u_input.b.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> vec2<f32> {
    let var_0 = 1i;
    global1 = u_input.b;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_1.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(550f))) - 1811f)));
    global0 = vec4<i32>(_wgslsmith_mod_i32((_wgslsmith_add_i32(global0.x, arg_2) >> (u_input.c.x % 32u)) << (u_input.c.x % 32u), -(~69315i)), ~(-u_input.b.x), -56922i, -2147483647i);
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(-vec2<i32>(~34132i, _wgslsmith_clamp_i32(-1i, 15572i, global0.x)), vec2<i32>(-(global0.x & 52455i), func_2(Struct_1(vec2<i32>(1i, var_0), arg_2), arg_1, Struct_1(vec2<i32>(global1.x, u_input.b.x), global1.x)))), arg_2);
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)), var_1.a), var_1.a);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    var var_0 = abs(~(-47269i));
    var var_1 = select(!vec4<bool>(arg_3, global2[_wgslsmith_index_u32(min(1u, abs(u_input.c.x)), 11u)], false, true), select(vec4<bool>(true, all(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 11u)])) | true, any(vec2<bool>(true, true)), any(!vec2<bool>(global2[_wgslsmith_index_u32(3907u, 11u)], true))), select(vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))), select(select(vec4<bool>(false, true, false, arg_3), vec4<bool>(false, arg_3, global2[_wgslsmith_index_u32(2382u, 11u)], false), vec4<bool>(arg_3, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], arg_3, false)), vec4<bool>(arg_3, false, true, true), false), select(vec4<bool>(true, true, false, arg_3), !vec4<bool>(global2[_wgslsmith_index_u32(9833u, 11u)], arg_3, false, true), true)), global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<bool>(all(vec2<bool>(true, true)), select(true, false, any(vec4<bool>(arg_3, false, false, false)) | any(vec3<bool>(false, false, true))), all(vec4<bool>(true, arg_3, any(vec4<bool>(true, false, false, false)), u_input.c.x <= 85439u)), !global2[_wgslsmith_index_u32(1496u, 11u)]));
    var_0 = -30138i;
    var var_2 = Struct_1(-vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.zx, -arg_0.xz), 2147483647i), 41257i);
    let var_3 = ~9512u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, -124f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), Struct_2(1548f), ~2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-993f, -1260f) - vec2<f32>(-2515f, 318f))), global2[_wgslsmith_index_u32(~(u_input.c.x | 72396u), 11u)]))));
    let var_1 = Struct_1(~global0.zx, -global1.x);
    let var_2 = Struct_2(var_0.x);
    var var_3 = _wgslsmith_dot_vec4_i32(-func_3(~(vec4<i32>(global0.x, -2147483647i, 8890i, var_1.b) ^ vec4<i32>(global0.x, global0.x, 0i, 63719i)), -(~(-79353i)), var_1, !global2[_wgslsmith_index_u32(6119u, 11u)]), max(countOneBits(vec4<i32>(func_2(Struct_1(global0.wz, global1.x), Struct_2(var_0.x), var_1), _wgslsmith_dot_vec3_i32(global1.xzx, vec3<i32>(global1.x, global0.x, 1i)), i32(-1i) * -2147483647i, -global0.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, 2147483647i, 1i, 42681i), ~u_input.b), var_1.b, ~u_input.b.x, u_input.b.x)));
    global2 = array<bool, 11>();
    var var_4 = ~vec3<i32>(-var_1.b, _wgslsmith_mult_i32(global1.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global1.x, u_input.b.x, global1.x), global1.x ^ -9490i, -2147483647i)), _wgslsmith_mod_i32(min(-1i, -1i), -2147483647i));
    var_3 = 34841i;
    global1 = vec4<i32>(18752i & _wgslsmith_mod_i32(reverseBits(func_3(vec4<i32>(global1.x, 0i, -1i, u_input.b.x), var_1.a.x, Struct_1(var_4.xx, 4778i), true).x), firstLeadingBit(-u_input.a.x)), -(-_wgslsmith_mult_i32(var_4.x, 1i) ^ var_4.x), ~(-50941i) << (firstTrailingBit(~1u) % 32u), ~max(_wgslsmith_sub_i32(-global0.x, global0.x), var_1.a.x));
    var_4 = min(-abs(vec3<i32>(global1.x, ~global1.x, var_4.x)), -abs(global0.zww));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(0u & u_input.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(827f - -596f), 718f, global2[_wgslsmith_index_u32(1u, 11u)])), var_0.x));
}

