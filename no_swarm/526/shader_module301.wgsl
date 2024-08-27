struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(94808u, 1u, 0u, 0u, 1u, 62745u, 31037u);

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 25>;

var<private> global3: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = array<vec3<bool>, 25>();
    let var_0 = max(u_input.a.x ^ ((1u | ~global0[_wgslsmith_index_u32(40740u, 7u)]) << (4294967295u % 32u)), u_input.a.x);
    let var_1 = firstTrailingBit(vec4<i32>(-34758i, _wgslsmith_clamp_i32(1i | arg_0.a, 5993i, min(arg_0.a, _wgslsmith_mod_i32(arg_0.a, 18896i))), reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -1i, 8437i, 0i), vec4<i32>(arg_0.a, -1i, arg_0.a, 15524i))), -(13710i << (firstTrailingBit(u_input.a.x) % 32u))));
    global1 = arg_0;
    global3 = array<vec4<bool>, 2>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> u32 {
    global0 = array<u32, 7>();
    global2 = array<vec3<bool>, 25>();
    var var_0 = Struct_1(15140i, global1.b);
    let var_1 = select(!(_wgslsmith_f_op_f32(-769f * _wgslsmith_f_op_f32(func_3(Struct_1(-11928i, vec4<f32>(global1.b.x, -653f, var_0.b.x, -308f))))) != arg_0.x), true, false);
    var var_2 = select(select(select(!vec2<bool>(var_1, var_1), !select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)), var_1), select(vec2<bool>(false, -1i == global1.a), vec2<bool>(true, true), vec2<bool>(var_1, all(global3[_wgslsmith_index_u32(u_input.a.x, 2u)]))), any(global3[_wgslsmith_index_u32(~28373u, 2u)])), select(vec2<bool>(!(!var_1), var_1 && var_1), select(!vec2<bool>(var_1, var_1), vec2<bool>(false, !var_1), var_1), var_1 || (u_input.a.x >= ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 7u)], 7u)])), var_0.a >= 52281i);
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(~31254u, ~0u), _wgslsmith_add_vec2_u32(u_input.a.wz, ~vec2<u32>(arg_1.x, arg_1.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(35449u, 4294967295u)), u_input.a.wy, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(arg_1.x, global0[_wgslsmith_index_u32(3958u, 7u)])), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], u_input.a.x)))), ~(~69451u));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    global2 = array<vec3<bool>, 25>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(-global1.b.x)), global1.b.x)), true)) - 1000f);
    global1 = Struct_1(-(global1.a ^ (arg_0 >> (_wgslsmith_add_u32(57002u, u_input.a.x) % 32u))), vec4<f32>(604f, _wgslsmith_f_op_f32(floor(-1680f)), -633f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-786f, global1.b.x)))));
    return Struct_1(-1i >> (~(~1u) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, var_0, arg_2, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1042f, arg_2, -3373f)))) + global1.b));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<f32>) -> bool {
    global0 = array<u32, 7>();
    global3 = array<vec4<bool>, 2>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-348f * arg_0), 129f))));
    global1 = func_4(40481i, global2[_wgslsmith_index_u32(18296u | ~min(func_2(arg_3, u_input.a.zzw), ~4294967295u), 25u)], 1370f, !select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), false), false));
    let var_1 = -1000f;
    return any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec2<bool>(true, true))), vec2<bool>(!select(true, false, true), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(9090u, ~_wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_add_u32(0u, 0u)), 4294967295u);
    var var_1 = !vec4<bool>(all(vec2<bool>(true, true)), false, true, false);
    let var_2 = ~u_input.a.wwx;
    var var_3 = global1.b.wyy;
    var var_4 = 1u;
    var var_5 = var_1.wyz;
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.b.zzy)) * global1.b.zyx);
    var var_7 = vec4<bool>(false, var_1.x, !any(var_1.ywz), func_1(_wgslsmith_f_op_f32(sign(var_6.x)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1.a), -vec2<i32>(0i, -41063i)), 2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_6.yy + var_3.yy) * vec2<f32>(-1021f, -793f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_6.x) - var_6.zy), var_6.xz)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

