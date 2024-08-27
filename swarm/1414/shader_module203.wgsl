struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_1(arg_1.a.a);
    var_0 = arg_1.a;
    var var_1 = Struct_1(~firstLeadingBit(min(u_input.a.x, ~u_input.a.x)));
    var_1 = arg_1.a;
    let var_2 = vec2<bool>(true, true);
    return arg_1.b.a;
}

fn func_2() -> i32 {
    let var_0 = 1f;
    let var_1 = select(13538u, _wgslsmith_clamp_u32(u_input.a.x, ~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), u_input.a.x & _wgslsmith_add_u32(func_3(vec4<f32>(var_0, var_0, var_0, var_0), Struct_2(Struct_1(u_input.a.x), Struct_1(39193u)), true, vec4<u32>(0u, 119346u, 4294967295u, 12035u)), _wgslsmith_add_u32(0u, 52189u))), false & !any(vec3<bool>(true, true, false)));
    let var_2 = Struct_2(Struct_1(var_1), Struct_1(4294967295u));
    let var_3 = Struct_2(Struct_1(select(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, var_1), var_1 | 62443u), var_1, true)), var_2.a);
    let var_4 = u_input.d.x;
    return -_wgslsmith_add_i32(reverseBits(min(u_input.c, var_4)), -_wgslsmith_mod_i32(-u_input.e, ~(-2147483647i)));
}

fn func_1() -> vec3<bool> {
    var var_0 = -2147483647i | ~func_2();
    let var_1 = Struct_1(~_wgslsmith_dot_vec2_u32(~u_input.a.xx, abs(u_input.a.yy)) >> (5097u % 32u));
    var var_2 = var_1.a;
    var var_3 = u_input.b;
    var_0 = reverseBits(52128i);
    return vec3<bool>(~(~func_3(vec4<f32>(1583f, 127f, -1688f, -1000f), Struct_2(var_1, var_1), false, vec4<u32>(var_1.a, 33957u, 51666u, 4294967295u))) != ~u_input.a.x, _wgslsmith_f_op_f32(ceil(1f)) == 1f, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)))), !(!all(vec2<bool>(true, false))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), true)));
    var_0 = !vec3<bool>(false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-164f))) == _wgslsmith_f_op_f32(-1881f * -1439f));
    var_0 = !func_1();
    var_0 = vec3<bool>((true && (u_input.e >= -1i)) | (12360i < -select(-10214i, u_input.d.x, false)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) - -555f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2232f * -635f) * _wgslsmith_f_op_f32(ceil(1967f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-720f - -343f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1481f - 1494f))));
    var var_1 = vec4<i32>(min(8659i, 1i), -31480i, firstTrailingBit(func_2()), u_input.d.x);
    var_1 = _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(0i, -1i, var_1.x, 2147483647i)) | vec4<i32>(~u_input.d.x, 2147483647i, i32(-1i) * -47475i, var_1.x), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.d.x, -13759i, -11111i), vec4<i32>(-19793i, var_1.x, var_1.x, -5197i)))) | _wgslsmith_add_vec4_i32(vec4<i32>(-max(0i, 0i), func_2(), reverseBits(~var_1.x), select(_wgslsmith_clamp_i32(var_1.x, -44018i, u_input.d.x), -2147483647i, var_0.x)), ~min(vec4<i32>(-2147483647i, u_input.e, 2147483647i, var_1.x), firstTrailingBit(vec4<i32>(-2147483647i, var_1.x, u_input.b, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(124f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2322f * -584f))))));
}

