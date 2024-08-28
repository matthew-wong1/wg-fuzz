struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-221f)), -141f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(651f, 1000f) * vec2<f32>(1000f, -607f))))))));
    var var_1 = (vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 5017u), vec2<u32>(1259u, 1u)), max(67386u, _wgslsmith_mod_u32(0u, 4294967295u))) | countOneBits(~abs(vec2<u32>(0u, 76322u)))) & vec2<u32>(~4294967295u, reverseBits(abs(38345u)));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, var_0.b.x) * _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(trunc(1712f))))), -274f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-739f, -1358f), var_0.b)));
    var var_2 = select(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, true, false, false)), false, true, 100025u > var_1.x), true)), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))), true);
    let var_3 = max(-13270i, -15304i);
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + -1298f), var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false)), -293f, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x + -117f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f * _wgslsmith_f_op_f32(-372f - 1711f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-122f, -509f) + _wgslsmith_div_f32(-441f, -440f))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(-var_0.a)));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = all(select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(!all(vec4<bool>(true, false, true, false)), !any(vec4<bool>(false, true, true, true)), true, true)));
    var var_1 = func_2();
    let var_2 = Struct_2(func_2(), var_1.a.x, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-524f, -865f), _wgslsmith_f_op_f32(trunc(-205f)))), -625f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1018f, var_1.a.x))) * vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_1), _wgslsmith_f_op_f32(-arg_1)))), (-_wgslsmith_mult_i32(2147483647i, u_input.c.x) >> (~countOneBits(32666u) % 32u)) < 2559i, 110f);
    var var_3 = func_2();
    let var_4 = var_2;
    return Struct_1(vec2<f32>(-1000f, var_4.a.a.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_3.b, var_3.b))) - vec2<f32>(-1418f, var_2.a.b.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), vec2<bool>(true, !(_wgslsmith_f_op_f32(-arg_0.b.x) > _wgslsmith_f_op_f32(-arg_0.b.x))), false);
    var_0 = select(!vec2<bool>(all(vec3<bool>(false, true, var_0.x)), any(select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true)))), vec2<bool>(true, true), all(select(vec2<bool>(true, true), !vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x & var_0.x))));
    var var_1 = (_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.c.x, select(u_input.b, u_input.a, true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, u_input.b, 1i), vec4<i32>(u_input.b, 1i, u_input.b, 0i))), _wgslsmith_div_i32(countOneBits(21756i), _wgslsmith_sub_i32(u_input.b, u_input.b)), -1i) >= 1i) | true;
    var var_2 = arg_1;
    let var_3 = reverseBits(~_wgslsmith_dot_vec3_u32(~vec3<u32>(62495u, 1u, 10898u), vec3<u32>(28228u, 4294967295u, 30390u)) >> (1u % 32u));
    return Struct_2(func_1(477f, arg_0.b.x), arg_1, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_0.b.x), 504f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1730f, 1151f))) * arg_0.a)), all(vec2<bool>(true, _wgslsmith_f_op_f32(-arg_1) != _wgslsmith_f_op_f32(1005f + 370f))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_4(func_1(326f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(trunc(420f)));
    let var_2 = select(vec3<bool>(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(52305u, 5075u), vec2<u32>(0u, 1u))) >= min(1u, countOneBits(36556u)), false, var_0), vec3<bool>(var_1.d, var_1.d, !any(!vec2<bool>(var_0, false))), true);
    let var_3 = u_input.c.xy << (select(select(~reverseBits(vec2<u32>(53312u, 42998u)), select(select(vec2<u32>(83608u, 55796u), vec2<u32>(0u, 4294967295u), true), vec2<u32>(1u, 1u), var_2.yx), var_2.yx), vec2<u32>(~firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4219u, 72625u), vec3<u32>(23604u, 0u, 21280u))), !select(select(var_2.xy, var_2.yx, true), vec2<bool>(true, true), vec2<bool>(var_0, var_2.x))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_1(var_1.b, var_1.c.a.x).b.x), _wgslsmith_f_op_f32(ceil(367f)), func_4(var_1.c, var_1.c.a.x).b) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(-769f - _wgslsmith_f_op_f32(floor(264f))), _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_sub_u32(select(1u, ~4294967295u, true), _wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(reverseBits(0u), 1u, 1u))), _wgslsmith_add_vec3_i32(u_input.c, _wgslsmith_add_vec3_i32(select(u_input.c >> (vec3<u32>(4294967295u, 15990u, 0u) % vec3<u32>(32u)), u_input.c << (vec3<u32>(42646u, 33830u, 1u) % vec3<u32>(32u)), all(vec4<bool>(var_0, var_1.d, var_0, var_2.x))), countOneBits(u_input.c << (vec3<u32>(1u, 0u, 41689u) % vec3<u32>(32u))))));
}

