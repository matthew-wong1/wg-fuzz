struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec4<i32> {
    global0 = array<vec4<f32>, 30>();
    let var_0 = -34024i;
    global0 = array<vec4<f32>, 30>();
    let var_1 = _wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b)), u_input.b);
    global0 = array<vec4<f32>, 30>();
    return countOneBits(max(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, var_0, -1i, -2147483647i) & vec4<i32>(44368i, var_1.x, 1i, var_1.x), select(vec4<i32>(-8i, arg_2.x, 72789i, var_0), vec4<i32>(27680i, var_0, 1i, 17171i), vec4<bool>(false, false, true, false))), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, -2147483647i, arg_2.x, var_0), ~vec4<i32>(arg_0.d, var_0, arg_0.d, -4812i))) ^ firstTrailingBit(countOneBits(min(vec4<i32>(arg_2.x, 1i, arg_2.x, -1i), vec4<i32>(arg_2.x, 41256i, -1i, 0i)))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> vec2<u32> {
    var var_0 = !vec3<bool>(arg_0, arg_2, all(vec3<bool>(any(vec2<bool>(arg_1, arg_2)), all(vec4<bool>(arg_0, arg_1, arg_0, arg_0)), false || arg_1)));
    let var_1 = !((u_input.d ^ ~_wgslsmith_add_u32(u_input.d, u_input.d)) > _wgslsmith_clamp_u32(~u_input.d, u_input.d, 1180u));
    var var_2 = vec4<i32>(-16321i, 23400i, _wgslsmith_div_i32(min(-26708i, u_input.b.x), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(48425i, u_input.a), firstTrailingBit(u_input.a))), u_input.b.x);
    var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(17253i, _wgslsmith_div_i32(-(i32(-1i) * -3727i), var_2.x ^ (-73756i << (u_input.d % 32u))), countOneBits(-(~var_2.x)), 27542i), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_2.x, _wgslsmith_add_i32(18687i >> (u_input.d % 32u), -2147483647i), abs(_wgslsmith_sub_i32(-2147483647i, u_input.c))), max(func_3(Struct_1(arg_0, var_0.xx, arg_0, -8988i), vec4<bool>(arg_0, arg_0, true, false), var_2.xx), vec4<i32>(-43273i, var_2.x, u_input.b.x, var_2.x)) & select(-vec4<i32>(u_input.c, 0i, 19809i, var_2.x), abs(vec4<i32>(u_input.b.x, -2147483647i, 1i, var_2.x)), select(vec4<bool>(true, var_0.x, arg_2, var_1), vec4<bool>(false, arg_2, arg_1, true), arg_2))));
    let var_3 = Struct_1((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(356f, 756f)) - -503f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(218f))))) || any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(arg_0, var_1, true), vec3<bool>(false, var_0.x, arg_2)), select(vec3<bool>(arg_2, var_0.x, var_1), vec3<bool>(arg_1, arg_0, arg_0), arg_1))), select(vec2<bool>(any(vec4<bool>(false, true, true, false)), u_input.c > _wgslsmith_mod_i32(var_2.x, var_2.x)), vec2<bool>(true, all(vec2<bool>(true, arg_1))), var_0.xy), arg_2, ~(~abs(select(var_2.x, u_input.b.x, false))));
    return vec2<u32>(countOneBits(~u_input.d) | ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d, 112673u), u_input.d >> (66968u % 32u), 1u), firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(35203u, u_input.d), countOneBits(vec2<u32>(48607u, u_input.d))), ~(~vec2<u32>(u_input.d, u_input.d)))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_2(false, !any(vec2<bool>(all(vec2<bool>(false, false)), true)), true);
    return Struct_2(Struct_1(false, vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), all(vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true)), _wgslsmith_clamp_i32(abs(_wgslsmith_div_i32(-5513i, u_input.a)), u_input.b.x ^ _wgslsmith_mod_i32(u_input.a, 22313i), 42688i)), vec3<bool>(false, !(all(vec3<bool>(false, false, false)) | true), any(vec4<bool>(true, true, true, true))), Struct_1(true, vec2<bool>(true, true), true, 2147483647i), _wgslsmith_clamp_u32(func_2(true, all(vec2<bool>(true, true)), true).x, min(52670u, u_input.d), 0u) << (~(~1u) % 32u), Struct_1(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), all(vec2<bool>(true, false)))), vec2<bool>(true, true), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), true)), 0i));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = select(vec4<i32>(~func_3(func_1(arg_3.d).a, vec4<bool>(true, true, true, true), min(u_input.b.yy, vec2<i32>(arg_3.a.d, u_input.b.x))).x, -func_3(Struct_1(false, vec2<bool>(false, arg_2.c.b.x), arg_1.b.x, u_input.c), !vec4<bool>(true, false, arg_2.b.x, arg_1.b.x), reverseBits(u_input.b.zx)).x, -14588i ^ max(arg_2.a.d, 2147483647i), arg_1.d), vec4<i32>(arg_1.d, _wgslsmith_clamp_i32(arg_3.c.d, -28108i, 2147483647i), countOneBits(_wgslsmith_mod_i32(func_3(Struct_1(true, arg_3.c.b, arg_2.b.x, -48188i), vec4<bool>(arg_3.a.c, arg_1.c, arg_2.c.b.x, false), vec2<i32>(-1i, -1i)).x, countOneBits(-28253i))), func_3(arg_1, vec4<bool>(arg_3.c.a, arg_1.c, true, false), countOneBits(vec2<i32>(0i, -67811i))).x | 3324i), !func_1(0u).b.x);
    global0 = array<vec4<f32>, 30>();
    var var_1 = ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(~8795u, 1u, firstTrailingBit(4294967295u), abs(12798u))), min(vec4<u32>(abs(u_input.d), arg_3.d, arg_3.d, _wgslsmith_add_u32(arg_3.d, 9133u)), select(vec4<u32>(u_input.d, 50719u, u_input.d, 0u) ^ vec4<u32>(u_input.d, u_input.d, u_input.d, 1u), vec4<u32>(u_input.d, u_input.d, 19111u, 27110u) ^ vec4<u32>(23424u, arg_3.d, arg_3.d, arg_3.d), false && arg_3.a.a)));
    var_1 = vec4<u32>(abs(4294967295u), ~arg_2.d, 1u, 1u);
    let var_2 = arg_1.b;
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(902f)), 649f, all(arg_3.e.b))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + arg_0))) - arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-1000f - 905f), Struct_1(false, vec2<bool>(false, false), false, -1i), func_1(33180u), Struct_2(Struct_1(false, vec2<bool>(true, true), false, u_input.a), vec3<bool>(false, false, false), Struct_1(false, vec2<bool>(false, true), true, 0i), 22161u, Struct_1(true, vec2<bool>(true, true), true, 1i)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1646f, -1821f)), vec2<f32>(1f, 1f)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -390f))), 1532f)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-152f, -193f) + -781f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-135f * 942f), 2188f, func_1(u_input.d).a.c)))), Struct_1(true, func_1(u_input.d).e.b, true, u_input.a), func_1(firstTrailingBit(countOneBits(u_input.d))), Struct_2(Struct_1(all(vec2<bool>(true, true)), func_1(48183u).a.b, true, u_input.a), vec3<bool>(true, true, true), func_1(~0u).a, ~1u, Struct_1(true, vec2<bool>(true, true), true, u_input.c)))));
    var var_1 = 1u;
    let var_2 = ~((vec2<u32>(~u_input.d, ~0u) >> (vec2<u32>(u_input.d, _wgslsmith_div_u32(u_input.d, 4294967295u)) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d, 19705u), ~vec2<u32>(u_input.d, 1u)) % vec2<u32>(32u)));
    var var_3 = !func_1(~10166u).b.xx;
    let var_4 = Struct_2(func_1(_wgslsmith_add_u32(~_wgslsmith_add_u32(59761u, 3285u), 0u)).a, vec3<bool>(var_3.x, !var_3.x, false), Struct_1(var_3.x, select(vec2<bool>(select(false, false, false), true), !vec2<bool>(false, var_3.x), vec2<bool>(true, !var_3.x)), var_3.x, u_input.c), u_input.d, func_1(abs(var_2.x)).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.d, var_2.x));
}

