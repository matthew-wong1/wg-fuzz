struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = i32(-1i) * -2147483647i;
    var var_1 = vec2<bool>(true, arg_0.x);
    var var_2 = ~(~abs(vec3<u32>(select(29235u, u_input.c, false), arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a, 4294967295u), u_input.a.xz))));
    var var_3 = ~max(1u, u_input.a.x);
    let var_4 = Struct_1(35069u, _wgslsmith_f_op_vec2_f32(arg_3.b + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(arg_3.b))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f)))) - _wgslsmith_div_f32(var_4.b.x, _wgslsmith_f_op_f32(1394f * -957f)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = Struct_1(50271u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1407f, 165f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1268f, -613f)))))));
    var var_1 = Struct_1(16086u << (_wgslsmith_div_u32(arg_3, countOneBits(_wgslsmith_clamp_u32(u_input.c, 3709u, 1u))) % 32u), var_0.b);
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-403f, -1000f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_1.b.x) + vec2<f32>(var_1.b.x, var_0.b.x)))))));
    var_1 = var_2;
    let var_3 = u_input.b.x;
    return -182f;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = countOneBits(arg_1.zxz);
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_clamp_u32(var_1, 1u, 41652u), _wgslsmith_f_op_vec2_f32(arg_0.xz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.x)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_3((_wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, false), 25395i, vec2<u32>(var_1, var_1), var_2)) < _wgslsmith_f_op_f32(var_2.b.x * arg_0.x)) | true, abs(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(29815i, -2147483647i, -15397i), vec3<i32>(u_input.d, var_0.x, u_input.b.x)))), -(~max(var_0.x, 1i)), reverseBits(firstTrailingBit(_wgslsmith_add_u32(var_1, var_2.a))))), var_2.b.x, -890f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1338f * var_2.b.x)));
    var var_4 = ~u_input.c;
    return -1547f;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = max(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mult_i32(0i, -u_input.d)), 27618i), -_wgslsmith_dot_vec3_i32((vec3<i32>(u_input.d, 1i, -2147483647i) >> (u_input.a.wyy % vec3<u32>(32u))) & u_input.b.wyx, ~vec3<i32>(u_input.d, u_input.d, -1i) >> (vec3<u32>(4294967295u, 4294967295u, arg_1) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_mult_i32(max(i32(-1i) * -12721i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.b.zx), _wgslsmith_mult_i32(1i, var_0), var_0)) << (min(abs(22676u >> (0u % 32u)), 29483u) % 32u), min(countOneBits(14961i), 39688i));
    var var_2 = Struct_1(0u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_2.x), 466f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_0), vec2<f32>(arg_2.x, arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-162f)), 1344f) - _wgslsmith_f_op_vec2_f32(arg_3 - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1427f, 1045f))))))));
    return 62945u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(-663f, 656f, -1000f), u_input.b))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(176f + 2133f)))))), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(floor(-840f)), _wgslsmith_f_op_f32(1794f + 1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-569f, -902f, 1678f, 814f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, 468f, 1169f, -842f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, -783f)))))));
    let var_1 = firstLeadingBit(~vec2<u32>(~(~4294967295u), countOneBits(_wgslsmith_mod_u32(u_input.c, u_input.a.x))));
    let var_2 = Struct_1(select(u_input.c, ~func_4(_wgslsmith_f_op_f32(ceil(-1508f)), u_input.c, vec4<f32>(-1431f, 748f, -1909f, 701f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-295f, 1715f) - vec2<f32>(-299f, 222f))), (min(u_input.b.x, u_input.b.x) > u_input.d) || (abs(var_1.x) == max(u_input.a.x, var_1.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(482f, 655f) * vec2<f32>(-885f, 185f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -438f))))))));
    let var_3 = var_2;
    var_0 = _wgslsmith_sub_u32(min(~_wgslsmith_clamp_u32(max(4294967295u, 4294967295u), 1u, 1u), ~(_wgslsmith_div_u32(1u, 4294967295u) >> (_wgslsmith_div_u32(u_input.c, 4294967295u) % 32u))), _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a));
    let var_4 = ~(~_wgslsmith_div_u32(~select(var_3.a, var_2.a, false), ~u_input.a.x | 23356u));
    let x = u_input.a;
    s_output = StorageBuffer((var_1 & _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 5246u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, var_3.a), vec2<u32>(32842u, var_3.a)))) | min(vec2<u32>(~var_4, var_3.a), u_input.a.wy));
}

