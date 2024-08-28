struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1316i, i32(-2147483648), -26922i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 730f))), vec2<f32>(arg_0, -1260f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1118f))))), vec2<f32>(-506f, _wgslsmith_f_op_f32(round(-1191f))), any(!select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, true))) & false));
    let var_1 = ~min(29939u, 27089u);
    let var_2 = _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x & -30303i, -global0.x), vec2<i32>(-1i) * -global0.xy), -1i);
    var var_3 = Struct_4(0i, -1804f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-257f - arg_0) * _wgslsmith_f_op_f32(max(-2168f, -629f))) - _wgslsmith_f_op_f32(f32(-1f) * -382f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-314f, 391f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-334f, arg_0) + vec2<f32>(-360f, -375f)))) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(var_0.x * var_0.x))), vec2<f32>(392f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-564f)))))), vec4<i32>(31060i, -23636i, i32(-1i) * -global0.x, var_2));
    global0 = _wgslsmith_add_vec3_i32(var_3.d.xyy, var_3.d.xyz & vec3<i32>(2147483647i, -2942i, var_3.a));
    return any(vec3<bool>(!any(!vec2<bool>(false, arg_1)), !(var_2 > ~var_3.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - 641f), _wgslsmith_f_op_f32(step(416f, 450f)))) >= var_0.x));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    global0 = vec3<i32>(arg_0.a.x | arg_0.a.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.x, countOneBits(-38979i)), global0.x), -1i);
    var var_0 = Struct_3(arg_0.b);
    var var_1 = Struct_5(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f))))), false), arg_0, Struct_1(-1i, true));
    global0 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_1.b.b.a, var_0.a.a, 2147483647i), vec4<i32>(global0.x, var_1.c.a, var_1.c.a, global0.x)), -1i & var_0.a.a, 1i) << (u_input.b % vec3<u32>(32u));
    let var_2 = Struct_3(Struct_1(_wgslsmith_mod_i32(var_0.a.a, 2147483647i) | 0i, arg_0.c));
    return _wgslsmith_add_vec3_i32(select(vec3<i32>(~var_2.a.a, var_1.b.b.a, -23096i), countOneBits(max(abs(vec3<i32>(34725i, -12365i, 0i)), vec3<i32>(var_2.a.a, global0.x, 2147483647i))), !vec3<bool>(!var_1.c.b, arg_0.c, true)), select((-vec3<i32>(global0.x, 2147483647i, 18239i) | ~vec3<i32>(var_0.a.a, -2147483647i, 32491i)) | (-vec3<i32>(-2147483647i, arg_0.b.a, -1i) << (vec3<u32>(u_input.b.x, u_input.a, u_input.a) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(var_1.c.a << (u_input.a % 32u), -16724i), (1i | arg_0.a.x) << (u_input.b.x % 32u), var_1.c.a), true));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global0 = func_2(Struct_2(global0.yy, Struct_1(-27143i, false), true));
    global0 = vec3<i32>(abs(global0.x), countOneBits(~(~_wgslsmith_div_i32(global0.x, -71235i))), 0i);
    global0 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(5361i, firstLeadingBit(-2147483647i), _wgslsmith_div_i32(global0.x, global0.x))) << (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(1u, u_input.a, 0u)), vec3<u32>(u_input.a, u_input.a, u_input.b.x)), u_input.b) % vec3<u32>(32u)), firstTrailingBit(countOneBits(~vec3<i32>(-2147483647i, 0i, -12774i))) >> (~vec3<u32>(~50206u, u_input.b.x, u_input.b.x >> (23384u % 32u)) % vec3<u32>(32u)));
    var var_0 = global0.xy;
    global0 = select(vec3<i32>(var_0.x, 0i, global0.x) ^ func_2(Struct_2(global0.yy, Struct_1(global0.x, true), !arg_0.x)), vec3<i32>(global0.x, -1i, _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 0i, global0.x), vec3<i32>(0i, 0i, 1i)), var_0.x)), !(!select(!vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, true, true), !arg_0)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(16215u, func_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true)), u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, reverseBits(max(1u, u_input.b.x))), u_input.b.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(2289f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(805f + 1366f))))), ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(47751u, u_input.a, var_0.x), u_input.b ^ u_input.b)), ~(_wgslsmith_mult_vec2_u32(~var_0, reverseBits(vec2<u32>(var_0.x, var_0.x))) & ~(vec2<u32>(u_input.a, u_input.b.x) << (var_0 % vec2<u32>(32u)))), 17196i);
}

