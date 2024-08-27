struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> f32 {
    return -611f;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(countOneBits(arg_0.x), arg_0.x), _wgslsmith_dot_vec3_i32(reverseBits(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, arg_0.x), vec3<i32>(-2147483647i, 2147483647i, 48042i))), firstLeadingBit(-(vec3<i32>(arg_0.x, 1i, 2147483647i) ^ vec3<i32>(arg_0.x, 2147483647i, arg_0.x)))));
    let var_1 = arg_2;
    var_0 = arg_0;
    let var_2 = var_1;
    let var_3 = Struct_1(arg_0, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1803f, -1247f)) + _wgslsmith_f_op_f32(333f - 1227f))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-810f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1783f))), any(vec4<bool>(true, all(vec2<bool>(true, true)), true, true)) || !(true & any(vec4<bool>(false, false, true, true))));
    return 4294967295u;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = vec4<f32>(718f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-390f, _wgslsmith_f_op_f32(f32(-1f) * -204f)))))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1606f, 476f, var_0.x, 1000f) - vec4<f32>(var_0.x, -1000f, var_0.x, -2499f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -268f, var_0.x) - vec4<f32>(var_0.x, var_0.x, 1040f, var_0.x)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 495f, -2159f), vec4<f32>(1595f, var_0.x, var_0.x, var_0.x), true)))), vec4<f32>(-1000f, var_0.x, -652f, 827f))));
    let var_1 = _wgslsmith_div_i32(-87033i, 3023i);
    let var_2 = Struct_2(u_input.b);
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, ~4294967295u, 50296u) >> (u_input.b.zyz % vec3<u32>(32u)), vec3<u32>(~90773u, arg_0.x, func_3(arg_1, var_2, var_2, var_2.a.xwz)) << (~(var_2.a.xxy >> (arg_0 % vec3<u32>(32u))) % vec3<u32>(32u)));
    return Struct_1(arg_1, vec4<f32>(_wgslsmith_div_f32(388f, _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -532f)), var_0.x)), -745f, _wgslsmith_f_op_f32(trunc(var_0.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<u32>(u_input.b.x, ~countOneBits(1u), u_input.a), countOneBits(vec2<i32>(select(_wgslsmith_mult_i32(-15584i, 11720i), 1i, true), _wgslsmith_add_i32(abs(-1i), -8268i))));
    let var_1 = Struct_2(u_input.b);
    let var_2 = ~0u;
    var var_3 = Struct_2(var_1.a);
    var_3 = Struct_2(u_input.b);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-373f, var_0.b.x) - vec2<f32>(-128f, var_0.b.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.zw), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, -985f))))), 0i, 2147483647i);
}

