struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = ~(~75915u);
    var var_1 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 4294967295u, ~var_0, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 0u, 0u), vec4<u32>(4294967295u, var_0, 31325u, 0u)), _wgslsmith_mod_u32(var_0, var_0))), ~vec4<u32>(min(4294967295u, 1u), reverseBits(var_0), 1u, 51251u)));
    return vec4<bool>(any(vec3<bool>(false, ~u_input.b < _wgslsmith_div_i32(u_input.a.x, 20630i), false)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true))), true, true);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = ~(-(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, i32(-1i) * -2147483647i) & 1568i));
    let var_1 = ~select(countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(48717u, arg_1.x, 52106u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 60777u)), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u) | vec4<u32>(arg_1.x, arg_1.x, 0u, 11352u))), ~(~(vec4<u32>(1u, 14505u, arg_1.x, arg_1.x) >> (vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) % vec4<u32>(32u)))), !func_3());
    let var_2 = Struct_2(arg_1.x, -1947f, select(arg_0.x, any(vec2<bool>(true, false)), true));
    var var_3 = !(!vec3<bool>(all(vec3<bool>(false, true, true)), !arg_0.x, firstTrailingBit(2147483647i) <= 1i));
    var var_4 = !(!arg_0);
    return var_2.b;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(!any(vec2<bool>(true, false)))), ~vec2<u32>(1u, 1u), Struct_1(true)));
    var var_1 = Struct_2(_wgslsmith_sub_u32(75594u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(28893u, 58u, 1u, 16865u), vec4<u32>(34349u, 1u, 0u, 4294967295u)))), _wgslsmith_f_op_f32(-var_0), false);
    var_1 = Struct_2(countOneBits(var_1.a), var_0, !var_1.c);
    var var_2 = min(1u, ~(~10980u));
    var_2 = 0u;
    return Struct_3((abs(vec4<u32>(0u, 23928u, 1u, 50692u)) << (abs(vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a) >> (vec4<u32>(var_1.a, 4294967295u, 15734u, 26204u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~(vec4<u32>(var_1.a, var_1.a, 0u, 16882u) & vec4<u32>(4294967295u, var_1.a, 33886u, var_1.a)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 479f, -422f, 1000f), vec4<f32>(-2184f, 781f, 334f, 193f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2267f, -1287f, -935f, -339f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(431f, -1164f, 703f, -214f)))), vec4<f32>(122f, _wgslsmith_f_op_f32(f32(-1f) * -1428f), _wgslsmith_f_op_f32(step(-277f, _wgslsmith_f_op_f32(step(1676f, 1000f)))), -1272f)), var_0.a.x, abs(~(~max(vec3<i32>(u_input.b, 1i, 2147483647i), vec3<i32>(-2147483647i, -2147483647i, u_input.a.x)))));
}

