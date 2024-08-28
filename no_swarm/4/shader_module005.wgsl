struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(firstLeadingBit(select(max(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(89349u, u_input.a.x, 6361u, 0u), vec4<u32>(24476u, 1276u, 104301u, 84059u))), ~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true))));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = select(vec3<i32>(-16593i, abs(_wgslsmith_add_i32(2309i, _wgslsmith_clamp_i32(24451i, -1i, -16705i))), min(-2147483647i, 1i)), vec3<i32>(~_wgslsmith_div_i32(countOneBits(38761i), abs(2942i)), _wgslsmith_div_i32(max(-2147483647i << (u_input.a.x % 32u), -2147483647i), ~reverseBits(55898i)), 0i), !(arg_3 <= ~reverseBits(u_input.a.x)));
    var_0 = vec3<i32>(_wgslsmith_add_i32(countOneBits(i32(-1i) * -20336i), abs(~var_0.x)), -28087i, -2147483647i) ^ vec3<i32>(-1i, abs(-_wgslsmith_dot_vec2_i32(var_0.xy, var_0.zz)), var_0.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-545f, arg_2) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + -2103f), _wgslsmith_f_op_f32(f32(-1f) * -461f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1094f)))))));
    var_0 = vec3<i32>(2147483647i, var_0.x, 6360i);
    let var_2 = arg_1.c;
    return _wgslsmith_dot_vec2_i32(var_0.zy, countOneBits(vec2<i32>(-2147483647i, -2147483647i))) ^ 1i;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.c;
    let var_1 = var_0;
    let var_2 = func_4(vec2<bool>(func_3(), true), arg_0, 811f, ~u_input.a.x);
    var var_3 = var_0.a;
    var var_4 = !select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(true, true), !(true && all(vec4<bool>(false, false, true, true))));
    return Struct_1(arg_0.a.a);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(select(~vec4<u32>(4294967295u, 1u, 14245u, u_input.a.x) << (~vec4<u32>(u_input.a.x, u_input.a.x, 79233u, 0u) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(u_input.a.x), u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(0u, u_input.a.x)), vec4<bool>(true, true, true, true)) << (vec4<u32>(~u_input.a.x << (13325u % 32u), abs(u_input.a.x | 1u), select(u_input.a.x, u_input.a.x, true), 0u) % vec4<u32>(32u)));
    let var_1 = Struct_2(var_0, abs(30087u), var_0);
    var var_2 = func_2(var_1);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-614f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1226f))) < _wgslsmith_f_op_f32(select(-120f, _wgslsmith_f_op_f32(floor(-1000f)), false));
    let var_4 = vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1f, -804f)), 438f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392f + _wgslsmith_f_op_f32(select(-678f, -130f, false))) - -1035f), true, false, func_3());
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1389f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2098f, _wgslsmith_f_op_f32(floor(1279f)), var_4.x))))), _wgslsmith_mod_vec4_i32(~countOneBits(max(vec4<i32>(1i, -2147483647i, 41546i, 42954i), vec4<i32>(0i, -1i, 2147483647i, -1i))), countOneBits(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(0i, 12366i, -65605i, -2147483647i)), abs(vec4<i32>(-28708i, 0i, -2147483647i, 1i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let x = u_input.a;
    s_output = func_1();
}

