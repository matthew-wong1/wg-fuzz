struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(1i, -11407i), vec2<i32>(-16313i, -1i), vec2<i32>(-30252i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(23376i, -27207i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -11748i), vec2<i32>(i32(-2147483648), 22932i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -3448i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(-26666i, -1i), vec2<i32>(45202i, 2479i));

var<private> global1: Struct_1;

var<private> global2: f32 = -1634f;

var<private> global3: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> bool {
    global0 = array<vec2<i32>, 15>();
    let var_0 = Struct_1(arg_0.a, arg_1);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1110f + global3.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(2314f - arg_2))))), (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 17307u, u_input.b.x), vec3<u32>(u_input.c.x, 27760u, 4294967295u)), vec3<u32>(4294967295u, u_input.a, u_input.a) | u_input.b) >> (countOneBits(~150734u) % 32u)) >= (~(~1u) << (~(~u_input.c.x) % 32u)));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * -123f) - _wgslsmith_f_op_f32(global1.a.x + var_1.a.x)))), _wgslsmith_f_op_f32(step(-582f, _wgslsmith_f_op_f32(exp2(arg_2)))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-1284f + arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x))))), false);
    var var_3 = var_0;
    return false;
}

fn func_2() -> u32 {
    let var_0 = vec2<f32>(global1.a.x, global3.x);
    var var_1 = select(~u_input.c, ~u_input.d.zy, all(!select(!vec3<bool>(global1.b, global1.b, global1.b), select(vec3<bool>(false, false, false), vec3<bool>(global1.b, true, true), vec3<bool>(global1.b, global1.b, false)), func_3(Struct_1(vec4<f32>(846f, 175f, 359f, global3.x), global1.b), global1.b, 552f))));
    let var_2 = abs(max(countOneBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(max(-12774i, -22001i), ~_wgslsmith_sub_i32(0i, 0i), ~(-19606i))));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(_wgslsmith_add_u32(0u, 68939u)), min(u_input.c.x & u_input.d.x, 36715u ^ var_1.x)), ~abs(0u & u_input.b.x), var_1.x), var_1.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(-global1.a);
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.c.x, ~0u, func_2())), vec3<u32>(firstTrailingBit(var_0), firstLeadingBit(~u_input.d.x), ~var_0));
    let var_2 = vec2<bool>(any(vec2<bool>(true || arg_1.b, all(!vec3<bool>(false, false, arg_0)))), any(vec3<bool>(true, arg_0, true)));
    global1 = Struct_1(arg_1.a, false);
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(select(-1743f, global1.a.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.x))) + 1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global1.b, global1.b);
    var var_1 = u_input.d.x == _wgslsmith_sub_u32(u_input.b.x, 1u);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f + _wgslsmith_f_op_f32(2042f * _wgslsmith_div_f32(915f, _wgslsmith_f_op_f32(trunc(global3.x))))) * _wgslsmith_f_op_f32(func_1(false, Struct_1(vec4<f32>(352f, 1367f, global3.x, 784f), var_0.x))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_div_vec4_f32(global1.a, vec4<f32>(var_2, global1.a.x, -533f, -833f)))) - _wgslsmith_f_op_vec4_f32(exp2(global1.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2407f)), global1.a.x, true)) < 2035f);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.a.x)), -217f), _wgslsmith_f_op_f32(f32(-1f) * -290f), -910f))), true);
    let var_4 = select(select(select(vec3<bool>(true, any(vec4<bool>(true, true, var_0.x, true)), any(vec2<bool>(true, var_3.b))), select(vec3<bool>(var_0.x, var_0.x, var_3.b), select(vec3<bool>(var_0.x, global1.b, global1.b), vec3<bool>(true, var_3.b, true), vec3<bool>(false, false, true)), false), !any(vec4<bool>(var_0.x, true, true, var_0.x))), vec3<bool>(var_3.b, false, any(vec3<bool>(false, false, global1.b))), select(!(!vec3<bool>(var_0.x, true, false)), !select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_3.b, false, false), var_0.x), var_3.b)), vec3<bool>(false, !(!all(vec2<bool>(true, var_3.b))), true), vec3<bool>(var_3.b, true, any(select(!vec3<bool>(false, var_3.b, true), vec3<bool>(var_0.x, var_0.x, global1.b), global1.a.x == 1719f))));
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1877f, 1440f, var_3.a.x, 486f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1139f, var_2, -223f, global3.x) * _wgslsmith_f_op_vec4_f32(var_3.a * var_3.a)), vec4<bool>(true, true, var_4.x, var_4.x)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.yw, -_wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(-1509i), reverseBits(2147483647i)), -_wgslsmith_sub_i32(0i, 9824i)), abs(-_wgslsmith_mod_vec2_i32(vec2<i32>(-2881i, 0i), -global0[_wgslsmith_index_u32(u_input.d.x, 15u)])), ~(~vec4<u32>(_wgslsmith_mod_u32(40263u, u_input.a), ~4294967295u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), countOneBits(u_input.c.x))), 37267i);
}

