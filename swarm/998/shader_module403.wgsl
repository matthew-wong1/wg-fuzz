struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: i32 = 26188i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    let var_0 = any(!vec4<bool>(-u_input.a.x > _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.a.x, -2147483647i, 11118i), vec4<i32>(-39095i, u_input.a.x, 2147483647i, -68238i)), true, true, true));
    let var_1 = vec2<u32>(4294967295u, 4294967295u);
    global1 = -_wgslsmith_div_i32(59972i, ~(-8760i));
    return _wgslsmith_f_op_f32(max(1087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -329f))));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1083f, 1000f) * vec2<f32>(-1000f, 1278f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1718f, 518f), vec2<f32>(631f, 187f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_f_op_f32(f32(-1f) * -2020f)) * vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, -1016f, true)), -1037f))), vec3<u32>(1u, u_input.b, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, 45907u), vec3<bool>(false, true, false)), ~vec3<u32>(19862u, u_input.b, u_input.b))) | countOneBits(~(~vec3<u32>(1u, 4294967295u, u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1273f + -2260f), -1010f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f - 307f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1167f, 409f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-954f, -1733f)), vec3<f32>(310f, 197f, 1273f))))), 37307u);
    global0 = array<i32, 13>();
    let var_1 = vec3<bool>(select(any(vec3<bool>(true, true, true)), true, false), true, !(true && (var_0.d.x == var_0.d.x)) != all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = Struct_3(u_input.a, var_0.b, var_0.b);
    var var_3 = Struct_2(var_0.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-209f))), var_0.d.x)), vec3<u32>(0u & ~u_input.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.c.yz), ~var_0.c.yz), 1u) << (vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(var_0.e), var_0.e ^ u_input.b), ~(~98808u), var_0.e) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x * var_2.c.a.x), _wgslsmith_f_op_f32(func_1(var_2.c, var_0.d.xyx)), -840f, var_0.a.a.x))) - _wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(_wgslsmith_f_op_f32(1520f + 239f), _wgslsmith_f_op_f32(-var_2.c.a.x), var_0.b.a.x, var_0.d.x))), u_input.b);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.a.x * var_3.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1588f, -548f) - var_3.a.a.x)), vec2<f32>(-1251f, 805f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(799f, _wgslsmith_div_f32(294f, var_2.c.a.x)))) - vec2<f32>(1000f, var_0.b.a.x)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1156f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.a.x, -624f)), -312f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2247f, var_0.a.x)) - _wgslsmith_f_op_f32(floor(-1586f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(var_0.a), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))) * _wgslsmith_f_op_f32(round(var_0.a.x)))), var_0.a.x)));
    var var_2 = -29949i;
    global0 = array<i32, 13>();
    var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, var_1.x, var_1.x)))))), var_0.a.x), var_1.x, _wgslsmith_f_op_f32(var_0.a.x - 532f));
    var var_3 = 1u;
    var var_4 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(509f * var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(min(u_input.b, 0u), select(~u_input.b, _wgslsmith_sub_u32(20250u, u_input.b), true), ~(12012u << (u_input.b % 32u))), firstLeadingBit(vec3<u32>(abs(37772u), u_input.b, u_input.b))), global0[_wgslsmith_index_u32(u_input.b, 13u)]);
}

