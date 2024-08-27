struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    global0 = array<vec3<u32>, 2>();
    return arg_1.d.zx;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_i32(firstTrailingBit(3010i), select(arg_2, _wgslsmith_div_i32(-_wgslsmith_clamp_i32(0i, -27869i, -53373i), -21724i), arg_3.c), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, 0i), _wgslsmith_add_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(0i, arg_0, 0i))), countOneBits(vec3<i32>(arg_2, arg_0, arg_2)))));
    var_0 = 0i;
    var var_1 = firstTrailingBit(-firstLeadingBit(max(vec3<i32>(arg_2, 0i, arg_2) | vec3<i32>(26981i, 36651i, -18731i), vec3<i32>(1i, arg_0, -2147483647i) << (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)))));
    var_0 = -arg_2 | ((i32(-1i) * -arg_0) | 1i);
    var_0 = _wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(arg_0, -1i, 2147483647i, var_1.x)), vec4<i32>(var_1.x, 2147483647i, _wgslsmith_add_i32(var_1.x, 40556i), arg_0 << (u_input.a.x % 32u)))), 2147483647i, countOneBits(-abs(arg_0)) | var_1.x);
    return !arg_3.d;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, any(select(select(func_3(-2147483647i, false, 6086i, Struct_2(1357f, arg_1.x, arg_0, vec3<bool>(false, true, arg_0))), select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, false)), !vec3<bool>(true, false, arg_0)), func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(28862i, 0i, 46643i, 1i), vec4<i32>(0i, 2147483647i, 2147483647i, 58066i)), all(vec4<bool>(arg_0, true, true, arg_0)), -3296i, Struct_2(arg_1.x, arg_1.x, false, vec3<bool>(arg_0, true, arg_0))), select(!vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), any(vec4<bool>(arg_0, true, false, arg_0))))), func_3(-45110i, arg_0 || true, _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(29223i, -1i, 0i, -1i), vec4<i32>(2147483647i, 948i, -2147483647i, 1i)), -35851i >> (u_input.a.x % 32u)), Struct_2(arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-500f - 440f))), all(vec3<bool>(arg_0, arg_0, false)), vec3<bool>(true, !arg_0, !arg_0))));
    let var_1 = var_0;
    global0 = array<vec3<u32>, 2>();
    var var_2 = Struct_1(~u_input.a.xy, select(vec3<i32>(max(_wgslsmith_mult_i32(-4032i, 1i), 1i), 2288i, _wgslsmith_add_i32(reverseBits(0i), abs(32802i))), vec3<i32>(i32(-1i) * -2147483647i, abs(reverseBits(16040i)), min(i32(-1i) * -5478i, firstLeadingBit(19128i))), vec3<bool>(true, true, true)), arg_1, select(~vec3<u32>(u_input.a.x << (u_input.a.x % 32u), _wgslsmith_div_u32(35299u, u_input.a.x), 30600u), ((u_input.a & vec3<u32>(u_input.a.x, 23871u, 107022u)) | abs(vec3<u32>(u_input.a.x, u_input.a.x, 1u))) >> (reverseBits(vec3<u32>(62895u, 5350u, 28752u) & u_input.a) % vec3<u32>(32u)), !select(select(var_0.d, var_0.d, true), !var_0.d, vec3<bool>(true, false, var_1.c))), -1i);
    var var_3 = ~u_input.a.x;
    return Struct_2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(step(-154f, -951f))) * arg_1.x), _wgslsmith_f_op_f32(sign(1220f)))), true, vec3<bool>(var_1.c, true, !(!var_1.c) & true));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> bool {
    return any(vec3<bool>(!(min(20536u, u_input.a.x) >= max(u_input.a.x, u_input.a.x)), !(_wgslsmith_add_u32(4294967295u, 0u) < _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x)), true));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    var var_0 = vec4<i32>(17754i, -47078i, -_wgslsmith_clamp_i32(firstTrailingBit(~(-246i)), 57324i, 1i), _wgslsmith_div_i32(min(-max(1i, 3134i), 0i), abs(-min(41135i, 1i))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-313f, _wgslsmith_f_op_f32(-arg_1.a))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b)))), _wgslsmith_f_op_f32(select(-1458f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false, vec4<f32>(-512f, 154f, arg_0.x, arg_1.a)).a * _wgslsmith_f_op_f32(-1000f - arg_1.a)), arg_1.b), all(!(!arg_1.d))))));
    return 13131u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x | 0u;
    var var_1 = 1u;
    var_1 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, 972f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-576f, -853f) + vec2<f32>(1924f, 1238f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1023f, 1447f) * vec2<f32>(-289f, -930f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1146f, -631f), vec2<f32>(654f, -1597f))))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1680f + -550f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1995f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(725f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-554f)) + -536f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec4<bool>(func_4(vec4<bool>(true, true, true, true), func_1(u_input.a.x, Struct_2(-1203f, -2011f, false, vec3<bool>(true, false, true)), false), func_2(false, vec4<f32>(833f, -1142f, -1498f, 172f)), false), !all(vec3<bool>(true, false, true)), false, true), vec4<bool>(true, false, func_1(~0u, func_2(true, vec4<f32>(-1193f, 438f, 267f, -1220f)), true).x, true), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(354f + _wgslsmith_f_op_f32(f32(-1f) * -483f)) - _wgslsmith_f_op_f32(step(-499f, -474f))), 645f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1728f - 425f)));
}

