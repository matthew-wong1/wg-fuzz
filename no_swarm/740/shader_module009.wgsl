struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(-2469f));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1000f, -468f, -1000f) - vec4<f32>(627f, -781f, 168f, 697f)))))))));
    let var_2 = ~(select(countOneBits(arg_1.c.b) ^ u_input.b, abs(vec4<u32>(2380u, arg_1.c.a, arg_1.c.a, arg_1.c.a)) << (u_input.b % vec4<u32>(32u)), all(vec2<bool>(arg_1.c.d, true))) ^ vec4<u32>(~(~u_input.a.x), _wgslsmith_div_u32(~14874u, 49999u), ~(arg_0 >> (4294967295u % 32u)), _wgslsmith_mod_u32(~arg_0, ~0u)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1229f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-2861f, -931f), _wgslsmith_f_op_f32(min(-298f, 1062f))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(f32(-1f) * -229f))), any(vec2<bool>(true, arg_1.a)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = reverseBits(_wgslsmith_add_u32(arg_0.c.a, ~40096u));
    let var_1 = 1033f;
    let var_2 = -vec4<i32>(1i, 0i, ~arg_0.c.c, arg_0.b.x);
    let var_3 = select(vec3<u32>(var_0 << (arg_0.c.a % 32u), 0u, u_input.c.x), vec3<u32>(~_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(var_0, 4294967295u)), _wgslsmith_sub_u32(min(min(arg_0.c.b.x, var_0), _wgslsmith_sub_u32(3333u, u_input.c.x)), ~(~arg_0.c.a)), u_input.c.x), !arg_1.wzz);
    let var_4 = vec2<i32>(var_2.x, arg_0.b.x);
    return arg_1.xww;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = select(arg_3.yx, arg_3.zw, vec2<bool>(all(select(vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_1.x))) && arg_1.x, all(select(vec3<bool>(arg_1.x, false, arg_1.x), func_3(Struct_2(false, vec2<i32>(2147483647i, 1i), Struct_1(6388u, vec4<u32>(arg_3.x, 8082u, arg_3.x, u_input.a.x), 2147483647i, true, true), vec2<f32>(-535f, 649f)), vec4<bool>(arg_1.x, false, false, arg_1.x)), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), false)))));
    var var_1 = Struct_1(~82276u, abs(select(vec4<u32>(arg_0, arg_3.x, u_input.c.x, 66498u), ~arg_3, vec4<bool>(true, true, false, arg_1.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 1u, var_0.x, arg_3.x), vec4<u32>(33184u, var_0.x, 1u, var_0.x)) % vec4<u32>(32u))), (-1i << (abs(var_0.x & 0u) % 32u)) | firstLeadingBit(i32(-1i) * -3339i), any(select(vec4<bool>(false == arg_1.x, true, true, arg_1.x), vec4<bool>(true, false, true, arg_1.x), true)), true);
    var_1 = Struct_1(~61082u, vec4<u32>(u_input.c.x, 0u, var_0.x, 58948u), 19044i ^ var_1.c, all(select(select(select(arg_1, vec2<bool>(arg_1.x, true), vec2<bool>(var_1.d, false)), arg_1, arg_1), select(select(arg_1, vec2<bool>(var_1.e, true), arg_1), vec2<bool>(true, false), arg_1), !vec2<bool>(var_1.e, var_1.d))), func_3(Struct_2(var_1.d, -vec2<i32>(var_1.c, var_1.c), Struct_1(~arg_0, min(arg_3, var_1.b), ~var_1.c, var_1.c >= var_1.c, 20740u != var_1.b.x), vec2<f32>(-1034f, _wgslsmith_f_op_f32(f32(-1f) * -2100f))), select(select(!vec4<bool>(arg_1.x, false, var_1.e, var_1.e), vec4<bool>(true, false, var_1.d, false), !vec4<bool>(var_1.d, var_1.e, true, var_1.e)), !select(vec4<bool>(true, false, arg_1.x, var_1.d), vec4<bool>(true, var_1.e, true, false), vec4<bool>(var_1.e, false, true, false)), !select(vec4<bool>(var_1.e, var_1.e, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, false, var_1.d), vec4<bool>(false, arg_1.x, arg_1.x, false)))).x);
    var var_2 = Struct_1(min(~arg_2, abs(~(~0u))), ~u_input.b, abs(0i), var_1.d, all(!vec3<bool>(any(vec4<bool>(false, false, arg_1.x, false)), arg_1.x, arg_1.x)));
    let var_3 = Struct_1(arg_2, _wgslsmith_div_vec4_u32(u_input.b, ~_wgslsmith_mult_vec4_u32(vec4<u32>(33713u, 0u, var_1.a, var_2.b.x), u_input.b) << (vec4<u32>(arg_2, 0u, ~100803u, ~var_1.a) % vec4<u32>(32u))), min(~select(var_1.c, _wgslsmith_div_i32(var_1.c, var_2.c), var_2.d), ~(firstTrailingBit(-2147483647i) >> (1u % 32u))), any(vec4<bool>(all(vec3<bool>(true, arg_1.x, var_2.e)), !all(vec4<bool>(false, true, arg_1.x, var_2.d)), !all(vec4<bool>(false, var_2.d, var_1.e, true)), true)), true);
    return select(!vec3<bool>(false, var_1.c == ~(-2147483647i), !arg_1.x), !(!vec3<bool>(true, !var_1.d, true)), min(_wgslsmith_dot_vec3_i32(~vec3<i32>(-53070i, var_1.c, var_1.c), vec3<i32>(var_2.c, var_2.c, var_3.c) << (var_1.b.ywx % vec3<u32>(32u))), -(~var_1.c)) == var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1i;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(898f, 1526f), vec2<f32>(1092f, -662f))) + _wgslsmith_f_op_vec2_f32(func_1(u_input.a.x, Struct_2(true, vec2<i32>(0i, 2147483647i), Struct_1(u_input.b.x, vec4<u32>(u_input.a.x, u_input.c.x, 42483u, u_input.c.x), -21700i, false, true), vec2<f32>(-950f, -1712f)), 1740f, vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-655f, 106f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -236f), vec2<f32>(-1029f, 805f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(901f - -1464f) + -480f) > _wgslsmith_f_op_f32(-916f * _wgslsmith_f_op_f32(select(-753f, 265f, true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-535f, 234f) + vec2<f32>(547f, 686f)))))));
    let var_2 = _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.xy) >> (vec2<u32>(~10u, 10783u) % vec2<u32>(32u)), vec2<u32>(select(~_wgslsmith_div_u32(0u, u_input.a.x), ~u_input.b.x, any(func_2(u_input.b.x, vec2<bool>(true, true), 0u, u_input.b))), 36746u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_f_op_f32(min(152f, var_1.x)))), var_1.x))));
    var_0 = _wgslsmith_mult_i32(reverseBits(~0i), i32(-1i) * -2147483647i) >> (u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(47371i, vec4<i32>(select(2147483647i, 47596i, true), 1i, 5333i, i32(-1i) * -2147483647i), _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, 4294967295u, 1958u, u_input.c.x), vec4<u32>(u_input.b.x, var_2, 0u, 0u))), ~(~(u_input.b ^ vec4<u32>(13551u, u_input.a.x, u_input.a.x, 1175u))), max(u_input.b, ~_wgslsmith_div_vec4_u32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(ceil(var_1.x)), select(_wgslsmith_div_u32(select(_wgslsmith_mod_u32(u_input.a.x, var_2), ~var_2, true), u_input.c.x), var_2, false));
}

