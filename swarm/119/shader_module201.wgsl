struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_mod_i32(-reverseBits(countOneBits(-1i)), ~(-2147483647i));
    var_0 = 93059i;
    var var_1 = u_input.c.x;
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-593f * -843f), -428f, 941f, _wgslsmith_f_op_f32(step(-580f, -901f))))) + vec4<f32>(174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-258f))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -468f)))))));
    return ~(i32(-1i) * -2147483647i);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(~(~0i) & _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, 1i) & _wgslsmith_dot_vec3_i32(vec3<i32>(-15631i, -1i, -2147483647i), vec3<i32>(29903i, 25126i, 16258i)), _wgslsmith_sub_i32(~1i, 1i)), 45342i);
    let var_1 = Struct_1(~(~arg_0), arg_1.xy, abs(abs(vec2<u32>(arg_0, arg_0))) >> (abs(u_input.a.zz) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(arg_1)));
    var var_2 = var_1;
    var var_3 = countOneBits(vec4<i32>(firstTrailingBit(min(55783i, 1i)) & ~(i32(-1i) * -1i), 1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-20574i, ~(-2147483647i)), _wgslsmith_clamp_i32(0i, i32(-1i) * -1i, 1i)), _wgslsmith_add_i32(firstLeadingBit(1i), func_3())));
    let var_4 = var_1;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, arg_0.c.a, 15096u, 0u) ^ vec4<u32>(39657u, 55912u, arg_0.c.a, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c.x, 4294967295u, arg_1.a, 22321u), vec4<u32>(4294967295u, 4294967295u, 91981u, arg_1.c.x), vec4<u32>(0u, 7584u, u_input.c.x, 0u)), vec4<u32>(arg_1.c.x, 116354u, u_input.c.x, arg_1.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, arg_1.c.x, 1u), ~vec4<u32>(u_input.d.x, 4294967295u, arg_1.c.x, u_input.a.x)) | vec4<u32>(0u, min(arg_0.c.a, 4294967295u), 0u, max(u_input.c.x, arg_1.a)), true), ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.a, 61167u, 1u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 26429u, u_input.d.x, 42417u), vec4<u32>(u_input.b.x, 72105u, 129794u, 4294967295u))), max(select(vec4<u32>(arg_0.d.c.x, arg_0.d.a, 55613u, arg_0.d.a), vec4<u32>(1u, 1u, 36031u, 0u), true), vec4<u32>(arg_0.c.c.x, 15012u, u_input.b.x, arg_1.a) ^ vec4<u32>(arg_1.c.x, 1u, arg_0.c.a, arg_1.a))));
    let var_1 = vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c.d.x + _wgslsmith_div_f32(-245f, arg_1.b.x))))));
    let var_2 = -25322i;
    var var_3 = arg_0;
    var var_4 = ~vec2<u32>(1u, u_input.b.x);
    return Struct_1(var_3.d.a, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(-1633f * -1000f)), arg_1.d.x)), _wgslsmith_f_op_f32(-331f - -203f)), vec2<u32>(reverseBits(abs(min(var_3.d.c.x, var_3.c.a))), _wgslsmith_mult_u32(min(select(u_input.a.x, arg_1.a, var_3.e.x), min(u_input.b.x, 37268u)), min(firstLeadingBit(arg_1.a), 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d * arg_0.c.d)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    return Struct_2(31206i, _wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1542f)))), func_4(Struct_2(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-22718i, 2147483647i, 1i)), -vec3<i32>(33092i, 1i, -28713i)), _wgslsmith_f_op_f32(-1890f * _wgslsmith_f_op_f32(trunc(127f))), func_2(~u_input.c.x, vec4<f32>(-1000f, 115f, -621f, 458f)), Struct_1(~12903u, _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 299f), vec2<f32>(-1002f, -1136f)), vec2<u32>(0u, u_input.d.x), vec4<f32>(-103f, 426f, 161f, 207f)), !(!vec3<bool>(true, arg_0, arg_0))), Struct_1(~_wgslsmith_add_u32(u_input.b.x, 1u), vec2<f32>(-891f, _wgslsmith_f_op_f32(342f * 1529f)), ~firstTrailingBit(vec2<u32>(47179u, 1914u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, 992f, 850f, 862f))))), true), Struct_1(_wgslsmith_div_u32(u_input.a.x, func_2(2935u >> (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1865f, -381f, 475f, 1000f)))).c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(182f, 1466f) * vec2<f32>(734f, -561f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, -141f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1084f)), -466f)), ~u_input.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), !select(vec3<bool>(arg_0, arg_0, !arg_0), vec3<bool>(!arg_0, all(vec3<bool>(true, true, false)), true), vec3<bool>(arg_0, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = 77907u;
    let var_2 = var_0.c;
    let var_3 = vec4<bool>(var_0.e.x, all(vec3<bool>(false, false, true)), -8327i != select(2147483647i, firstLeadingBit(~var_0.a), true), var_0.e.x);
    let var_4 = var_0.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(0i, 25051i << (var_0.d.a % 32u), var_2.b.x);
}

