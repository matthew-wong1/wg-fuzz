struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(512f, -108f, 1000f, 1451f), vec4<f32>(1204f, -189f, -860f, 623f), vec4<f32>(965f, -628f, 1000f, 1000f), vec4<f32>(433f, -443f, 679f, -312f), vec4<f32>(-1229f, 462f, 888f, 264f), vec4<f32>(762f, 133f, -773f, -2380f), vec4<f32>(663f, -1748f, 499f, -1000f), vec4<f32>(-328f, 1785f, -452f, 318f), vec4<f32>(1674f, -706f, -397f, -558f), vec4<f32>(-2244f, -504f, 991f, 1568f), vec4<f32>(141f, -145f, 729f, -759f));

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: Struct_2 = Struct_2(vec4<i32>(2147483647i, 20961i, -5065i, -1i), Struct_1(859f, vec2<bool>(true, false), 719f));

var<private> global3: array<Struct_2, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = ~0u;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(696f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> f32 {
    global2 = global3[_wgslsmith_index_u32(13210u, 16u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-637f, _wgslsmith_f_op_f32(global4.a - _wgslsmith_f_op_f32(floor(global4.c))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, -1085f)) * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))))));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-582f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-838f + -938f), -822f, false))), -729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(u_input.c.xzx, vec3<u32>(1u, u_input.b, 41026u), vec3<bool>(false, global1.x, true)), vec4<f32>(-1433f, -1000f, global4.a, global4.c)))), _wgslsmith_f_op_f32(func_2(u_input.c.zyx, global0[_wgslsmith_index_u32(0u | u_input.b, 11u)]))));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_add_i32(arg_0, arg_0), 2147483647i, ~u_input.a, _wgslsmith_dot_vec4_i32(global2.a, global2.a))), ~(~countOneBits(vec4<i32>(28232i, -18638i, u_input.a, 4602i)))), Struct_1(_wgslsmith_f_op_f32(min(-322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c)))), vec2<bool>(true, global1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b.c * _wgslsmith_f_op_f32(866f + global2.b.a))))));
    var_0 = vec4<f32>(-2066f, global2.b.c, _wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(-global4.a)), -113f);
    let var_2 = u_input.a;
    var var_3 = 1130f;
    return all(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!(!select(vec3<bool>(global2.b.b.x, false, true), select(vec3<bool>(global4.b.x, global4.b.x, true), vec3<bool>(global4.b.x, global4.b.x, global2.b.b.x), vec3<bool>(global4.b.x, true, true)), vec3<bool>(false, true, true))), select(!vec3<bool>(func_1(-2147483647i), true, global2.b.b.x), vec3<bool>(true, true, true), all(!select(vec4<bool>(global2.b.b.x, global2.b.b.x, global4.b.x, true), vec4<bool>(global4.b.x, true, true, true), vec4<bool>(global2.b.b.x, true, global2.b.b.x, global2.b.b.x)))), !global2.b.b.x);
    global4 = global2.b;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a, -534f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(826f, -398f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(1113f)), -174f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(576f, _wgslsmith_f_op_f32(-global2.b.c), global2.b.c, -1383f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 11u)]) * vec4<f32>(-1457f, var_0.x, -1655f, 1010f)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2441f, var_0.x, global4.c, global4.c)) + global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.c.x, 4294967295u), 11u)]))), global0[_wgslsmith_index_u32(u_input.b, 11u)], select(!(!(!vec4<bool>(global2.b.b.x, false, false, global4.b.x))), !vec4<bool>(false, global2.a.x == -1i, global1.x, all(vec4<bool>(global1.x, global2.b.b.x, global4.b.x, false))), (_wgslsmith_clamp_u32(4294967295u, 1u, u_input.b) >> (14364u % 32u)) >= ~u_input.b)));
    let var_2 = Struct_2(_wgslsmith_sub_vec4_i32(global2.a, -select(global2.a, _wgslsmith_div_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, -2147483647i), vec4<i32>(-47622i, u_input.a, 2147483647i, 33945i)), global1.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2405f, _wgslsmith_div_f32(var_1.x, 1191f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(658f)))), vec2<bool>(true, global1.x), -467f));
    global1 = !vec3<bool>(global2.b.b.x, u_input.b <= select(max(61603u, 42517u), 1u, !global1.x), false);
    let var_3 = global3[_wgslsmith_index_u32(firstLeadingBit(0u) & u_input.c.x, 16u)];
    global4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(60129u, u_input.c.x, u_input.b, u_input.c.x), vec4<u32>(u_input.b, 43002u, u_input.c.x, 87616u)), firstTrailingBit(vec4<u32>(13652u, 53079u, u_input.c.x, u_input.c.x)))), ~_wgslsmith_sub_vec4_u32(u_input.c, u_input.c | u_input.c)));
}

