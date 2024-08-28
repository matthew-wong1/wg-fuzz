struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false));

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = select(vec4<bool>(true, 1100f < _wgslsmith_f_op_f32(min(1150f, _wgslsmith_div_f32(arg_1.a, -282f))), ~_wgslsmith_mod_u32(u_input.b.x, arg_1.b) == 0u, !arg_0 && !(13759i != u_input.a.x)), global0[_wgslsmith_index_u32(38199u, 5u)], true);
    global0 = array<vec4<bool>, 5>();
    return var_0.zz;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = vec2<bool>(true, !(!any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xxz, u_input.b.zyx), 5u)])));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1654f, 1063f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1138f)))));
    var var_2 = Struct_1(_wgslsmith_div_f32(-740f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) + -1000f)), ~(_wgslsmith_div_u32(31516u, 52810u) & reverseBits(arg_0)), !(!vec3<bool>(true, false, select(var_0.x, var_0.x, true))));
    global0 = array<vec4<bool>, 5>();
    global2 = array<vec4<u32>, 30>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(956f))) - var_1)), ~var_2.b, var_2.c);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), countOneBits(u_input.b.x), arg_2.c);
    var var_1 = abs(var_0.b);
    var var_2 = func_2(~57138u).c;
    var var_3 = 426f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a))), 320f))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(574f, _wgslsmith_div_f32(1908f, var_0.a), 72474u >= (var_0.b >> (1u % 32u)))) + arg_3.a), max(arg_0.b, arg_0.b), arg_3.c);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~(u_input.b.wwx << (vec3<u32>(u_input.b.x, u_input.b.x, 1u) % vec3<u32>(32u))))));
    var var_1 = select(vec2<bool>(true, any(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), func_1(true, Struct_1(-1101f, 3881u, vec3<bool>(true, true, true)))), vec2<bool>(select(false, false, true), false)), func_3(func_2(64558u >> (_wgslsmith_mult_u32(var_0.x, 0u) % 32u)), true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1476f * 450f)), ~_wgslsmith_clamp_u32(u_input.b.x, var_0.x, var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -239f), u_input.b.x, func_2(0u).c)));
    let var_2 = 41218u >> (~(~0u) % 32u);
    var var_3 = vec3<i32>(firstLeadingBit(reverseBits(u_input.c) | u_input.a.x), ~69196i, 0i) & ~_wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 31320i, -2147483647i), vec3<i32>(2147483647i, 0i, u_input.d.x), vec3<i32>(u_input.d.x, 0i, 2147483647i)), max(vec3<i32>(1i, u_input.a.x, u_input.d.x) ^ u_input.a, u_input.d.xzy));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(u_input.b.x).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(856f - -552f)))))), ~0u, !func_2(~(7392u << (var_2 % 32u))).c);
    var var_5 = 18654i >> (~firstLeadingBit(u_input.b.x) % 32u);
    let var_6 = !vec4<bool>(func_2((0u >> (u_input.b.x % 32u)) ^ ~var_4.b).c.x, var_4.c.x, var_1.x, var_4.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c, abs(1i), reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.c, u_input.c, 3922i, var_3.x)), var_3.x))), min(max(vec2<i32>(-43923i, ~var_3.x), -(~vec2<i32>(0i, -1093i))), vec2<i32>(firstLeadingBit(-2147483647i), u_input.d.x)), var_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, var_4.a, var_4.a, var_4.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, -164f, 1000f, var_4.a)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.a, var_4.a, var_4.a, 857f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a, 371f, var_4.a, var_4.a), vec4<f32>(-1000f, var_4.a, 741f, 621f), vec4<bool>(true, true, true, false))))), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, _wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(620f * 337f))), select(vec4<bool>(any(var_4.c.xz), true, !var_6.x, !var_4.c.x), var_6, all(!var_6)))));
}

