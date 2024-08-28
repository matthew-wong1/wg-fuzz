struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 4294967295u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(19319u, 67276u), vec2<u32>(1u, 0u)), vec2<u32>(firstTrailingBit(4294967295u), 9475u)), ~vec2<u32>(~4243u, _wgslsmith_mult_u32(4294967295u, 1u)));
    var_0 = countOneBits(~_wgslsmith_mod_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, 32569u), vec2<u32>(var_0.x, var_0.x))), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x), vec2<u32>(0u, 4294967295u)))));
    return true;
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(sign(286f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-737f + 343f), _wgslsmith_f_op_f32(min(1455f, 1255f)))), 1385f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1591f + 1631f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1000f)), -2052f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1802f)), var_0.x, !(u_input.a.x < 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + var_0.x)))), var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_0.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(1110f, _wgslsmith_f_op_f32(ceil(var_0.x))))));
    let var_1 = 11141i;
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_div_f32(-1259f, var_0.x)), 2063f, _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1001f, -232f, var_0.x) - vec3<f32>(-1160f, var_0.x, var_0.x)))))));
    return ~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 1u), vec2<bool>(true, false)), min(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(47064u, 4303u)))), ~(~(~vec2<u32>(62600u, 30699u))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> StorageBuffer {
    var var_0 = any(!(!vec2<bool>(func_2(true, Struct_1(arg_1.x, arg_1.x, true, false), true), true)));
    var var_1 = u_input.a.x;
    var var_2 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(abs(1f)), true, true);
    var var_3 = 7033u;
    var var_4 = Struct_1(-2017f, var_2.a, true & (any(!vec4<bool>(var_2.c, true, var_2.c, var_2.c)) & true), var_2.c);
    return StorageBuffer(-(u_input.a >> (firstTrailingBit(vec2<u32>(16850u, 74562u)) % vec2<u32>(32u))) >> (func_3(~(~vec4<i32>(arg_0, -38358i, -2147483647i, -2147483647i))) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(~327i, min(8331i, arg_0)), u_input.a) & _wgslsmith_mod_vec2_i32(-countOneBits(vec2<i32>(-2147483647i, arg_0)), vec2<i32>(-2147483647i, -u_input.a.x)), -u_input.a.x, select(vec3<u32>(0u, 1u, _wgslsmith_clamp_u32(59329u, 38801u, 66897u)), ~(~vec3<u32>(4294967295u, 11641u, 61376u)), 47912u < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 14878u, 14494u), vec3<u32>(1u, 0u, 97474u))) << (~reverseBits(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(822f, 3403f), vec2<f32>(-1494f, 817f))))))));
}

