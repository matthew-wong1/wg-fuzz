struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_mod_u32(arg_0.a.x, 4294967295u) << (~u_input.c.x % 32u);
    let var_1 = Struct_4(10804u, arg_2, vec3<u32>(17024u, var_0, 1u));
    var var_2 = Struct_3(Struct_2(vec4<u32>(33027u, 1u, select(~u_input.c.x, countOneBits(1332u), any(vec4<bool>(false, true, false, true))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.c.x, 4294967295u)))), countOneBits(1i)), arg_0, abs(_wgslsmith_clamp_vec3_i32(select(u_input.d, _wgslsmith_clamp_vec3_i32(u_input.d, u_input.d, u_input.d), true), _wgslsmith_mult_vec3_i32(select(vec3<i32>(67010i, -6120i, arg_0.b), u_input.d, vec3<bool>(false, false, true)), vec3<i32>(-2147483647i, arg_0.b, u_input.a) & vec3<i32>(u_input.a, 1i, 4780i)), u_input.d >> (~vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1202f + _wgslsmith_f_op_f32(arg_2.x + 273f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.x, -363f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), Struct_2(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 77248u, 44417u), vec4<u32>(arg_0.a.x, arg_0.a.x, var_0, arg_0.a.x))), -arg_0.b));
    var var_3 = var_1;
    var_3 = var_1;
    return 5860u;
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_2(vec4<u32>(4294967295u, u_input.b, u_input.b, func_3(Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.b), u_input.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(457f, -886f) + vec2<f32>(1480f, 791f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(118f, 1756f, 1114f, -955f), vec4<f32>(802f, 512f, 458f, -429f), vec4<bool>(false, true, true, true))))) << (abs(vec4<u32>(~u_input.b, u_input.b, ~82844u, ~1u)) % vec4<u32>(32u)), 1i);
    let var_1 = ~(-2885i);
    let var_2 = Struct_3(var_0, var_0, vec3<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 26040i, var_1, var_1), ~vec4<i32>(-39816i, -359i, var_0.b, 1i)), reverseBits(2147483647i), var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(648f, -479f)), -742f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1276f)) + _wgslsmith_f_op_f32(step(849f, 389f)))))), Struct_2(_wgslsmith_add_vec4_u32(min(~vec4<u32>(87835u, var_0.a.x, 57725u, u_input.c.x), vec4<u32>(var_0.a.x, 1u, 83193u, 123679u)), abs(u_input.c)), countOneBits(-(~var_1))));
    var var_3 = Struct_4(24718u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) + _wgslsmith_f_op_f32(sign(-325f))), var_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.d)) - _wgslsmith_div_f32(var_2.d, -1541f)), -530f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.d, 1189f, -1169f, 239f), vec4<f32>(var_2.d, -557f, var_2.d, -142f))))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, true, true, true)), true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, abs(var_0.a.x) ^ var_0.a.x, var_0.a.x), var_0.a.zxw, var_2.e.a.xzz));
    let var_4 = vec2<u32>(~var_3.a >> (1u % 32u), 1u);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-58151i), min(21238i, 651i & var_1), var_0.b, _wgslsmith_sub_i32(var_2.c.x, _wgslsmith_mult_i32(var_0.b, var_0.b))), ~max(vec4<i32>(var_2.a.b, u_input.a, -2147483647i, var_1 >> (78795u % 32u)), -(vec4<i32>(var_2.a.b, 3436i, var_2.c.x, -36280i) << (var_2.e.a % vec4<u32>(32u)))), -(~(-vec4<i32>(10149i, 1i, 22996i, 17859i))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    var var_0 = -_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, -40122i, -8233i, u_input.d.x), abs(min(vec4<i32>(-21916i, u_input.d.x, -8627i, u_input.d.x), vec4<i32>(-1i, u_input.d.x, 15658i, 62706i)))) & func_2();
    var var_1 = !all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)));
    var_1 = true;
    let var_2 = vec2<bool>(false, select(all(vec3<bool>(true, false, false)) | true, select(true, true, true), !any(vec2<bool>(true, true))) & !(var_0.x > var_0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 2884f, arg_0)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1964f, arg_0, -800f, 259f))))));
    return i32(-1i) * -(~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, 18633i)), vec4<i32>(max(-2156i, 1i), u_input.d.x, func_1(-1211f, vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)), i32(-1i) * -15869i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d.x, -1i, -1i, 1i), vec4<i32>(25338i, 1i, 1i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a, -2147483647i, u_input.d.x) | vec4<i32>(u_input.d.x, 0i, 13189i, u_input.d.x)), -(vec4<i32>(1i, u_input.d.x, -1i, -38806i) >> (vec4<u32>(23063u, 0u, 4294967295u, u_input.b) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1424f, -3788f) * vec2<f32>(434f, -1854f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(686f, -772f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(670f, -565f) + vec2<f32>(-1000f, 431f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, 1000f)))));
}

