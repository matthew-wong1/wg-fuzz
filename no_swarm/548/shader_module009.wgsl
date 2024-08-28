struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<u32>) -> bool {
    global0 = array<Struct_3, 22>();
    let var_0 = Struct_2(-reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -32913i, -14527i, u_input.b.x), vec4<i32>(-2147483647i, u_input.c.x, 6281i, u_input.a.x))) == 0i);
    global0 = array<Struct_3, 22>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(-640f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -308f) * -257f), 685f))));
    global0 = array<Struct_3, 22>();
    return false;
}

fn func_3() -> u32 {
    let var_0 = Struct_3(_wgslsmith_mod_i32(-1i, u_input.b.x), abs(-39741i), Struct_2((u_input.c.x == _wgslsmith_mod_i32(2147483647i, 1i)) == true));
    global0 = array<Struct_3, 22>();
    return reverseBits(_wgslsmith_mult_u32(~53680u, 1u));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    global0 = array<Struct_3, 22>();
    let var_0 = vec3<bool>(!func_2(select(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, true)), vec2<bool>(arg_2, false), !arg_2), !vec4<bool>(true, false, arg_2, arg_2), vec2<u32>(arg_1.a.x, _wgslsmith_mod_u32(arg_1.a.x, arg_1.a.x))), true, func_3() <= arg_1.a.x);
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    var var_1 = firstLeadingBit(u_input.a);
    return vec2<bool>(any(select(select(var_0, !vec3<bool>(var_0.x, true, true), arg_2), var_0, true)), !var_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> Struct_3 {
    global0 = array<Struct_3, 22>();
    var var_0 = min(1u, firstTrailingBit(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 53262u, 14494u, 4294967295u)), ~vec4<u32>(10631u, 1u, 0u, 1923u))));
    var var_1 = Struct_1(~vec3<u32>(func_3(), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 49425u, 0u)), 2486u), 65917u));
    let var_2 = ~min(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, 0u, 21720u), var_1.a), var_1.a), var_1.a.x) << (var_1.a.x % 32u);
    let var_3 = ~vec2<i32>(-29217i, i32(-1i) * -2147483647i);
    return global0[_wgslsmith_index_u32(~4294967295u, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 22>();
    let var_0 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(~(-1i), ~0i), u_input.b.yz, false), ~u_input.b.yz);
    let var_1 = func_4(Struct_2(true), !(!func_1(~vec4<u32>(1u, 33198u, 60341u, 34465u), Struct_1(vec3<u32>(0u, 1u, 67344u)), true)), !(_wgslsmith_sub_i32(~var_0.x, countOneBits(u_input.b.x)) != -(u_input.c.x << (1u % 32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(728f, 1000f))), 1359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(638f, -121f))))));
    var var_3 = max(4294967295u, 1u) > max(func_3(), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(140288u, 38311u, 60449u, 4294967295u), vec4<u32>(92631u, 0u, 1u, 0u)) | ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(1i | firstLeadingBit(-u_input.c.x), var_1.a), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(9703u, 26596u, 0u, 8639u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - 580f), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1087f, var_2.x, -894f, 287f), vec4<f32>(var_2.x, 845f, var_2.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-270f, var_2.x, var_2.x, -168f) * vec4<f32>(var_2.x, var_2.x, var_2.x, 150f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -758f, 808f, 672f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), -126f);
}

