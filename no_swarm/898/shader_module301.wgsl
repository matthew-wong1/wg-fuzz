struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_3,
    e: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global0 = Struct_5(firstTrailingBit(abs(43060u)), _wgslsmith_mod_vec2_i32(vec2<i32>(19101i, 0i), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global0.b.x, global0.b.x), vec3<i32>(-29148i, 1i, global0.b.x)))) << (vec2<u32>(~global0.a, 1u) % vec2<u32>(32u)));
    let var_0 = ~(vec4<u32>(_wgslsmith_mod_u32(0u, select(u_input.e.x, global0.a, true)), ~(45653u & u_input.c.x), 64676u, reverseBits(u_input.d) | (4294967295u >> (global0.a % 32u))) >> (~((vec4<u32>(9441u, u_input.b, u_input.b, global0.a) << (vec4<u32>(1u, 34930u, u_input.e.x, u_input.d) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.b, global0.a, global0.a, 16328u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = firstTrailingBit(var_0.xzz);
    global0 = Struct_5(_wgslsmith_clamp_u32(max(select(1u, firstLeadingBit(global0.a), all(vec3<bool>(false, true, false))), var_1.x), ~1u, max(min(1u, ~0u), u_input.e.x)), _wgslsmith_add_vec2_i32(~global0.b, abs(global0.b) << (var_0.zy % vec2<u32>(32u))));
    global0 = Struct_5(1u, vec2<i32>(global0.b.x, ~1i));
    return 529i;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_3 {
    var var_0 = func_3() | 0i;
    var var_1 = Struct_1(min(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(global0.b.x, arg_0, u_input.a.x)), vec3<i32>(global0.b.x, 10026i, -2147483647i), -vec3<i32>(1i, arg_0, 6113i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-52659i, u_input.a.x, 1i), abs(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)))) ^ _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global0.b.x, global0.b.x), reverseBits(global0.b.x), firstTrailingBit(global0.b.x)), ~vec3<i32>(2147483647i, 0i, 15628i)), vec3<bool>(true, true, true), ~(~min(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.a, 1u, 11303u), vec4<u32>(u_input.c.x, u_input.c.x, global0.a, 17707u)), countOneBits(vec4<u32>(global0.a, u_input.b, global0.a, 27778u)))));
    let var_2 = Struct_3(Struct_2(max(vec4<u32>(~11880u, 53315u << (global0.a % 32u), 6667u, abs(var_1.c.x)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 25014u, var_1.c.x, var_1.c.x)), ~var_1.c))), vec2<u32>(max(1u, _wgslsmith_mod_u32(firstTrailingBit(var_1.c.x), var_1.c.x ^ u_input.d)), abs(global0.a)), var_1.a.yy, !select(var_1.b.zx, !select(var_1.b.xx, var_1.b.zz, var_1.b.xx), false));
    var_1 = Struct_1(firstLeadingBit(var_1.a), select(vec3<bool>(var_2.d.x, true, reverseBits(u_input.a.x) <= 21937i), vec3<bool>(true, true, any(vec2<bool>(true, true))), var_1.b), ~vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(global0.a, 4294967295u), 54205u), 35195u, _wgslsmith_dot_vec3_u32(~var_1.c.wzw, vec3<u32>(global0.a, var_1.c.x, global0.a))));
    var_0 = firstLeadingBit(select(var_2.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -var_1.a, ~(~var_1.a)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.c.zw, var_2.a.a.zw), u_input.e) > ~global0.a));
    return Struct_3(var_2.a, ~countOneBits(vec2<u32>(global0.a, 15861u)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.x, select(1i << (var_2.a.a.x % 32u), abs(1i), true)), min(vec2<i32>(-36828i, _wgslsmith_div_i32(global0.b.x, global0.b.x)), -vec2<i32>(-2147483647i, u_input.a.x))), vec2<bool>(var_1.b.x, true));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = func_2(-(firstTrailingBit(countOneBits(global0.b.x)) << (52780u % 32u)), _wgslsmith_f_op_f32(-arg_0.x));
    global0 = Struct_5(global0.a, vec2<i32>(global0.b.x, select(1i, firstLeadingBit(u_input.a.x ^ 7461i), all(select(var_0.d, var_0.d, true)))));
    var var_1 = func_2(~u_input.a.x, arg_0.x).a;
    let var_2 = (_wgslsmith_mult_i32(max(abs(1i), -2147483647i), _wgslsmith_sub_i32(~(-1i), u_input.a.x)) < -abs(firstTrailingBit(var_0.c.x))) | !var_0.d.x;
    var_0 = Struct_3(Struct_2(arg_1.a), _wgslsmith_add_vec2_u32(arg_1.a.wy, u_input.c), var_0.c, vec2<bool>(var_2, !all(!vec2<bool>(var_2, false))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 615f, -954f) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2570f, arg_0.x) * arg_0.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_2 {
    return func_2(min((-global0.b.x << (~50836u % 32u)) ^ -2147483647i, -abs(global0.b.x)), _wgslsmith_f_op_f32(-arg_1.x)).a;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    global0 = Struct_5(_wgslsmith_mod_u32(~global0.a & _wgslsmith_add_u32(~arg_2.a.x, 15143u), func_2(14460i, -145f).b.x), vec2<i32>(abs(abs(_wgslsmith_clamp_i32(global0.b.x, global0.b.x, -3490i))), -25746i));
    let var_0 = Struct_4(any(!select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, true), true), vec4<bool>(arg_0, arg_0, false, false), !vec4<bool>(false, arg_0, arg_0, true))), -643f, Struct_1(_wgslsmith_add_vec3_i32(select(-vec3<i32>(global0.b.x, 16699i, 3270i), vec3<i32>(-32009i, u_input.a.x, u_input.a.x), false), vec3<i32>(-u_input.a.x, -1i, global0.b.x)), !select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(false, true, arg_0)), !vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, arg_0))), arg_1.a), Struct_3(func_2(reverseBits(u_input.a.x), -1734f).a, ~vec2<u32>(global0.a, 6122u), countOneBits(global0.b), func_2(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -122f)).d), arg_2.a);
    global0 = Struct_5(~var_0.c.c.x, global0.b);
    var var_1 = 4294967295u;
    var_1 = 1u;
    return func_2(-14073i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))), var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 16022i;
    let var_1 = select(any(vec3<bool>(true, global0.b.x <= u_input.a.x, true)), false, !select(true, true, true)) | (!any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true)) && true);
    var var_2 = func_5(var_1, func_4(~min(vec4<u32>(46991u, 31093u, global0.a, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(13761u, u_input.d, 29780u, u_input.b), vec4<u32>(global0.a, 43916u, 9643u, 69135u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(-1110f, 753f), Struct_2(vec4<u32>(global0.a, u_input.e.x, u_input.c.x, 26129u))))), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(134f, -1140f)), Struct_2(vec4<u32>(global0.a, 1u, u_input.d, global0.a)))))), Struct_2(~(vec4<u32>(u_input.d, 25915u, u_input.c.x, global0.a) ^ vec4<u32>(global0.a, u_input.d, global0.a, 4294967295u)) | ~abs(vec4<u32>(6792u, 36224u, 25987u, u_input.e.x))));
    var var_3 = vec2<i32>(var_2.c.x, global0.b.x);
    var var_4 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807f * 696f) * _wgslsmith_f_op_f32(ceil(-535f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-951f - -605f))) + -1059f), vec4<u32>(40572u, 85245u, ~1u, _wgslsmith_mod_u32(4294967295u, global0.a)), vec3<u32>(reverseBits(~_wgslsmith_dot_vec4_u32(var_2.a.a, var_2.a.a)), u_input.e.x, max(_wgslsmith_add_u32(1u, var_2.a.a.x), firstLeadingBit(_wgslsmith_add_u32(var_2.a.a.x, 24710u)))), u_input.b);
}

