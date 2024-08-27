struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> vec2<i32> {
    return -firstTrailingBit(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(-10465i, -2147483647i))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<bool>) -> bool {
    var var_0 = arg_1.b;
    let var_1 = func_2();
    let var_2 = arg_1.b.a;
    var_0 = arg_1.b;
    var var_3 = vec2<u32>(~(~arg_1.b.a | 56635u), 52989u) >> (abs(select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b.a, var_2), vec2<u32>(var_0.a, var_2)), vec2<u32>(arg_1.b.a, arg_1.b.a), true) & vec2<u32>(var_0.a, 1u)) % vec2<u32>(32u));
    return arg_3.x;
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~19935u, 4u)];
    let var_1 = vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(33052u, 51804u)), 65727u), 4u)], -977f);
    let var_2 = ~14090i;
    var var_3 = Struct_2(global1.x, Struct_1(~_wgslsmith_sub_u32(47739u, min(38634u, 4294967295u)), abs(-19273i) == var_2, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2) << (vec2<u32>(23049u, 68659u) % vec2<u32>(32u)), -vec2<i32>(-20248i, u_input.a)) ^ -1i, any(select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), global1.x), !global1.x))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec2<bool>(true, any(vec2<bool>(true, !global1.x)));
    global1 = select(vec2<bool>(!(!global1.x & true), all(!(!vec4<bool>(true, global1.x, false, false)))), !vec2<bool>(func_1(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, global1.x, true, global1.x), false), Struct_2(global1.x, Struct_1(0u, global1.x, -25257i, false)), -2147483647i, !vec4<bool>(true, global1.x, global1.x, global1.x)), select(true, false, select(true, global1.x, false))), select(vec2<bool>(func_1(!vec4<bool>(false, global1.x, global1.x, false), Struct_2(global1.x, Struct_1(45947u, true, u_input.a, false)), u_input.a, select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, global1.x), global1.x)), (-443f <= global0[_wgslsmith_index_u32(72295u, 4u)]) || true), vec2<bool>(true, false), !vec2<bool>(!global1.x, any(vec4<bool>(true, global1.x, false, false)))));
    var var_0 = vec4<u32>(~_wgslsmith_div_u32(~4294967295u, ~abs(13160u)), ~(~(~_wgslsmith_mod_u32(73153u, 41858u))), 1u, ~abs(1u));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(654f, 206f, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(var_0.x, 4u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 4u)], -1000f, -1082f, global0[_wgslsmith_index_u32(0u, 4u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1405f, global0[_wgslsmith_index_u32(var_0.x, 4u)], -295f, global0[_wgslsmith_index_u32(var_0.x, 4u)]))))), vec4<f32>(global0[_wgslsmith_index_u32(func_3(), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-343f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 4u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f - -1000f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~min(0u, 1u), 4u)])));
    let var_2 = select(vec2<bool>(!all(vec4<bool>(global1.x, false, global1.x, global1.x)) | global1.x, global1.x), vec2<bool>(func_1(select(select(vec4<bool>(false, true, global1.x, true), vec4<bool>(global1.x, true, false, false), false), select(vec4<bool>(false, global1.x, false, false), vec4<bool>(true, global1.x, global1.x, global1.x), true), any(vec2<bool>(false, false))), Struct_2(!global1.x, Struct_1(var_0.x, true, u_input.a, global1.x)), select(max(-1i, u_input.a), _wgslsmith_sub_i32(-1i, 42449i), false), !(!vec4<bool>(true, global1.x, false, false))), all(vec3<bool>(true, true, global1.x))), abs(2147483647i) == (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -16342i, u_input.a, -35777i)) & -abs(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-314f, _wgslsmith_f_op_f32(693f + 898f)), 1543f, 245f)), var_1.zwz, ~reverseBits(-vec3<i32>(-3827i, 2147483647i, u_input.a) ^ abs(vec3<i32>(u_input.a, u_input.a, -50476i))), _wgslsmith_mult_i32(~(~(-2147483647i)), -1i >> (var_0.x % 32u)), 599f);
}

