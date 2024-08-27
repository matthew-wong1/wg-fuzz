struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec4<i32>) -> f32 {
    let var_0 = Struct_4(arg_2.a, Struct_3(vec4<f32>(-328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(784f, arg_2.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f)), _wgslsmith_f_op_f32(arg_2.a.b.x + 362f)), arg_0), arg_0, Struct_3(vec4<f32>(-150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1059f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(589f)), arg_2.a.b.x)), arg_2.c), abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b.b.e.x, arg_0.d.x), vec2<u32>(24509u, 7387u)) & vec2<u32>(abs(arg_0.d.x), countOneBits(0u))));
    let var_1 = var_0;
    var var_2 = var_1.d;
    var var_3 = var_1.a;
    var var_4 = Struct_4(Struct_2(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.a.x, var_2.a.x, 1283f)), var_2.b.b.wzw, 2147483647i), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f + var_1.d.a.x)), 600f, -1263f, _wgslsmith_f_op_f32(-var_0.b.a.x)), var_2.b), Struct_1(vec3<i32>(1i, i32(-1i) * -65908i, -8117i), !(!select(vec4<bool>(var_2.b.c.x, var_2.b.c.x, var_3.c.x, var_3.c.x), var_2.b.b, true)), arg_2.c.c, ~(arg_2.d.b.d ^ max(var_0.b.b.d, var_0.b.b.d)), reverseBits(vec2<u32>(17133u, arg_2.b.b.d.x) | vec2<u32>(var_2.b.d.x, 34727u))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b.a.x, var_2.a.x, -365f, -215f)))))), arg_2.c), arg_0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.x) + 443f))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: f32) -> Struct_5 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, vec4<bool>(arg_2.b.x, false, arg_2.b.x, true), arg_1, vec3<u32>(0u, 28678u, 70387u), vec2<u32>(4294967295u, 9253u)), vec4<bool>(arg_2.b.x, false, arg_2.b.x, arg_2.b.x), Struct_4(Struct_2(true, vec3<f32>(arg_3, arg_3, arg_3), vec3<bool>(arg_2.b.x, false, false), arg_0), Struct_3(vec4<f32>(arg_3, -778f, arg_3, 675f), Struct_1(vec3<i32>(2147483647i, -23485i, u_input.a.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), arg_1, vec3<u32>(46622u, 0u, 0u), vec2<u32>(4294967295u, 0u))), Struct_1(vec3<i32>(30898i, arg_2.a, arg_2.a), arg_2.b, arg_2.b.xx, vec3<u32>(117331u, 35121u, 1u), vec2<u32>(1u, 4294967295u)), Struct_3(vec4<f32>(780f, arg_3, arg_3, arg_3), Struct_1(u_input.a, arg_2.b, arg_2.b.yw, vec3<u32>(1u, 72483u, 4294967295u), vec2<u32>(11574u, 43481u))), vec2<u32>(84269u, 11829u)), vec4<i32>(20278i, arg_2.a, arg_2.a, arg_0))) + _wgslsmith_div_f32(1213f, arg_3))))), arg_3);
    let var_1 = vec3<i32>(_wgslsmith_add_i32(~arg_0, ~arg_2.a), firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(50308i, 1i, -56484i), u_input.a)) ^ -72360i, 2147483647i);
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(2147483647i), arg_2.a), ~(vec2<i32>(35670i, arg_2.a) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))) ^ vec2<i32>(49283i, select(-2147483647i, -2147483647i, true))), 42216i);
    var var_3 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a.x, arg_0, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a, 0i, -2147483647i, var_2.x), vec4<i32>(-1i, var_1.x, 34240i, u_input.a.x)), vec4<bool>(arg_2.b.x, true, true, arg_2.b.x)) | min(vec4<i32>(-15687i, var_1.x, 68607i, 0i) & vec4<i32>(var_2.x, u_input.a.x, arg_0, var_2.x), min(vec4<i32>(-2147483647i, var_2.x, 9714i, 0i), vec4<i32>(-2004i, -1i, 3732i, var_2.x))), vec4<i32>(-1i) * -vec4<i32>(-65493i, var_1.x, -68568i, -2634i)) | vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(5718i, arg_2.a, -9448i, -1i), vec4<i32>(-2147483647i, -1i, 27595i, 30869i)), ~vec4<i32>(2628i, -2147483647i, 0i, var_1.x))), arg_0 & u_input.a.x, -1i, u_input.a.x);
    let var_4 = vec3<i32>(select(~_wgslsmith_mod_i32(1i, max(1i, 9612i)), abs(36514i), arg_2.b.x), max(_wgslsmith_dot_vec2_i32(var_1.yy, -(~vec2<i32>(arg_0, -6573i))), _wgslsmith_add_i32(-var_1.x, 41261i)), u_input.a.x);
    return Struct_5(~firstLeadingBit(arg_2.a), !vec4<bool>(!(!arg_1.x), !(!arg_2.b.x), _wgslsmith_f_op_f32(min(var_0.x, arg_3)) <= arg_3, false));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = (((~u_input.a.x & _wgslsmith_sub_i32(arg_3.b.a.x, u_input.a.x)) > 1i) && true) | true;
    var var_1 = arg_3.b;
    var var_2 = arg_3.b;
    var_2 = Struct_1((-select(var_2.a, var_1.a, arg_3.b.b.zzy) << (~(vec3<u32>(arg_2, 0u, var_1.e.x) << (vec3<u32>(var_1.d.x, 23737u, arg_3.b.d.x) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(var_2.d.x, 17488u, var_2.d.x), vec3<u32>(0u, 129602u, 32844u), arg_1), var_1.d ^ vec3<u32>(arg_3.b.d.x, arg_3.b.d.x, var_1.e.x)), var_2.d) % vec3<u32>(32u)), vec4<bool>(select(true, true, arg_3.a.x == _wgslsmith_f_op_f32(-arg_3.a.x)), true, true, true), !(!func_2(-70481i, arg_0.b.zy, func_2(-8921i, vec2<bool>(false, arg_3.b.c.x), Struct_5(u_input.a.x, vec4<bool>(var_0, true, false, arg_0.b.x)), arg_3.a.x), arg_3.a.x).b.wx), arg_3.b.d, _wgslsmith_mult_vec2_u32(abs(firstLeadingBit(~var_2.d.xz)), ~var_1.e));
    var_1 = Struct_1(var_2.a, var_1.b, !(!select(arg_1.zx, arg_1.zz, !arg_1.x)), vec3<u32>(arg_2, ~var_2.e.x, ~_wgslsmith_add_u32(arg_3.b.d.x >> (4294967295u % 32u), ~var_2.d.x)), vec2<u32>(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_div_u32(~var_2.d.x, _wgslsmith_mult_u32(arg_3.b.d.x, var_2.e.x)), 1333u)));
    return ~(~(~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(14419u, 3453u, 4294967295u), vec3<u32>(var_1.e.x, arg_2, 6717u)), reverseBits(var_1.d), _wgslsmith_mult_vec3_u32(var_1.d, var_2.d))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(func_4(func_2(-1i, arg_0.b.c, Struct_5(30602i, vec4<bool>(arg_0.b.b.x, true, true, arg_0.b.b.x)), 220f), func_2(0i, vec2<bool>(arg_0.b.b.x, true), Struct_5(u_input.a.x, vec4<bool>(arg_0.b.c.x, true, false, false)), 559f).b.yww, ~arg_0.b.e.x, Struct_3(vec4<f32>(arg_0.a.x, -271f, -441f, arg_0.a.x), arg_0.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.b.d.x, arg_0.b.d.x) & vec3<u32>(arg_0.b.e.x, 36126u, arg_0.b.e.x), arg_0.b.d, _wgslsmith_div_vec3_u32(arg_0.b.d, vec3<u32>(arg_0.b.e.x, arg_0.b.d.x, 73788u)))) ^ ~0u;
    var var_1 = Struct_1(countOneBits(vec3<i32>(~(i32(-1i) * -1i), ~_wgslsmith_div_i32(14899i, u_input.a.x), reverseBits(firstLeadingBit(0i)))), !vec4<bool>(!arg_0.b.b.x, true, true, true), vec2<bool>(2147483647i >= ~arg_0.b.a.x, true), reverseBits(arg_0.b.d), _wgslsmith_mod_vec2_u32(~(~firstLeadingBit(arg_0.b.d.xz)), ~(~vec2<u32>(arg_0.b.e.x, 4294967295u) ^ vec2<u32>(arg_0.b.e.x, 764u))));
    var var_2 = Struct_5(2147483647i, var_1.b);
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a.x, countOneBits(0i), -2147483647i, -12108i), vec4<i32>(abs(u_input.a.x), -max(var_1.a.x << (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -32310i), vec2<i32>(arg_0.b.a.x, 0i))), _wgslsmith_add_i32(countOneBits(1i), reverseBits(15308i)) << (1u % 32u), -(~_wgslsmith_mult_i32(arg_0.b.a.x, var_1.a.x))));
    var_0 = arg_0.b.e.x;
    return arg_0.a.x;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_i32(max(abs(u_input.a.zy), u_input.a.yy), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, ~(0i << (1u % 32u))), firstLeadingBit(u_input.a.xy)));
    let var_1 = !(!vec4<bool>(any(!vec2<bool>(arg_2, true)), _wgslsmith_f_op_f32(trunc(-296f)) <= -617f, arg_2, arg_1));
    let var_2 = _wgslsmith_sub_u32(min(~firstTrailingBit(0u), _wgslsmith_div_u32(~5502u, 1u)), ~(~abs(14150u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, 1235f, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, 591f, -624f)), var_1))))));
    var_3 = vec4<f32>(443f, _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1064f, 1947f, -821f, -2009f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, -1624f, -473f) * vec4<f32>(382f, var_3.x, 1086f, 1000f))), Struct_1(vec3<i32>(40009i, 2147483647i, -1i), vec4<bool>(false, arg_3, arg_3, true), vec2<bool>(false, true), firstTrailingBit(vec3<u32>(var_2, 35443u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_2), vec2<u32>(var_2, var_2)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-315f, -513f)) + -482f))));
    return Struct_2(!(!(!arg_3) && arg_1), _wgslsmith_f_op_vec3_f32(var_3.xwy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-823f, -1000f, 172f) - vec3<f32>(var_3.x, var_3.x, var_3.x))))), select(select(select(vec3<bool>(true, var_1.x, false), !vec3<bool>(arg_2, true, true), any(var_1.yxx)), !vec3<bool>(arg_3, var_1.x, arg_2), !(!arg_2)), vec3<bool>(false, !(arg_1 | true), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2, 25060u, 4294967295u), vec4<u32>(var_2, 42773u, var_2, 1u)) <= (27539u << (var_2 % 32u))), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), u_input.a & vec3<i32>(0i, 0i, var_0)), select(!vec2<bool>(var_1.x, arg_3), func_2(var_0, var_1.yy, Struct_5(var_0, vec4<bool>(arg_2, true, true, var_1.x)), arg_0).b.wx, !vec2<bool>(arg_3, var_1.x)), Struct_5(u_input.a.x, !vec4<bool>(arg_3, true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1443f)).b.zyw), u_input.a.x);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = countOneBits(-(~arg_2.a.x << (reverseBits(_wgslsmith_mult_u32(1u, 17813u)) % 32u)));
    var_0 = i32(-1i) * -2147483647i;
    var_0 = -17816i;
    var var_1 = any(vec3<bool>(any(arg_1.b.b) && arg_1.b.b.x, any(arg_1.b.b), any(select(vec4<bool>(arg_0.a, arg_1.b.b.x, arg_1.b.b.x, arg_0.a), vec4<bool>(arg_1.b.c.x, false, arg_0.c.x, arg_0.a), vec4<bool>(arg_1.b.b.x, arg_0.c.x, arg_1.b.b.x, arg_1.b.b.x))))) || arg_1.b.c.x;
    var_1 = any(vec3<bool>(arg_2.b.x, arg_1.b.b.x, arg_0.c.x));
    return select(select(arg_2.b.xxw, !select(arg_0.c, arg_1.b.b.wxz, vec3<bool>(true, false, true)), func_2(~(~arg_0.d), !(!vec2<bool>(arg_0.c.x, true)), Struct_5(~arg_2.a.x, vec4<bool>(true, arg_0.c.x, arg_2.c.x, arg_1.b.b.x)), -862f).b.xyx), vec3<bool>(false, func_2(_wgslsmith_clamp_i32(-2147483647i, arg_1.b.a.x, func_5(arg_1.a.x, false, arg_0.c.x, true).d), !(!vec2<bool>(true, arg_2.c.x)), func_2(_wgslsmith_mult_i32(2147483647i, arg_1.b.a.x), select(vec2<bool>(arg_0.c.x, arg_0.a), vec2<bool>(true, false), vec2<bool>(arg_0.c.x, false)), Struct_5(-1i, vec4<bool>(arg_1.b.c.x, arg_1.b.b.x, arg_2.b.x, arg_0.a)), arg_1.a.x), arg_1.a.x).b.x, select(all(arg_2.b.zy), 40620u <= arg_2.d.x, arg_1.b.b.x)), func_4(Struct_5(arg_2.a.x, vec4<bool>(false, arg_2.b.x, arg_2.b.x, false)), arg_0.c, 1u, Struct_3(arg_1.a, arg_1.b)).x < arg_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f)) * _wgslsmith_f_op_f32(func_1(Struct_3(vec4<f32>(-797f, -874f, 1360f, -1604f), Struct_1(vec3<i32>(-54797i, u_input.a.x, u_input.a.x), vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec3<u32>(44235u, 37766u, 93643u), vec2<u32>(39783u, 1u)))))), any(func_2(firstLeadingBit(9907i), vec2<bool>(true, true), func_2(u_input.a.x, vec2<bool>(true, true), Struct_5(u_input.a.x, vec4<bool>(false, true, false, false)), 586f), _wgslsmith_f_op_f32(abs(-1788f))).b), all(vec3<bool>(true, true, true)), true), Struct_3(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(u_input.a, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), all(vec3<bool>(false, false, true))), vec2<bool>(true, true), vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(14200u, 1u, 38542u, 0u), vec4<u32>(53440u, 0u, 0u, 1u)), ~14494u), vec2<u32>(min(0u, 32679u), 1u))), Struct_1(u_input.a >> (firstLeadingBit(~vec3<u32>(14113u, 2762u, 4294967295u)) % vec3<u32>(32u)), select(func_2(u_input.a.x, vec2<bool>(true, true), func_2(u_input.a.x, vec2<bool>(true, false), Struct_5(u_input.a.x, vec4<bool>(true, false, false, false)), 1000f), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(97364i, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec3<u32>(34237u, 4294967295u, 17167u), vec2<u32>(4294967295u, 4294967295u)), vec4<bool>(false, true, true, true), Struct_4(Struct_2(false, vec3<f32>(490f, 1000f, 1067f), vec3<bool>(true, true, false), u_input.a.x), Struct_3(vec4<f32>(-1484f, 475f, -714f, -1000f), Struct_1(u_input.a, vec4<bool>(false, true, false, false), vec2<bool>(false, true), vec3<u32>(1u, 1u, 18832u), vec2<u32>(1u, 50987u))), Struct_1(u_input.a, vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec3<u32>(1u, 5500u, 4294967295u), vec2<u32>(1u, 18999u)), Struct_3(vec4<f32>(-747f, 1179f, 369f, 1201f), Struct_1(u_input.a, vec4<bool>(false, false, true, true), vec2<bool>(false, true), vec3<u32>(1u, 1u, 29142u), vec2<u32>(3437u, 17502u))), vec2<u32>(45411u, 22780u)), vec4<i32>(-19839i, u_input.a.x, -3361i, -8577i)))).b, vec4<bool>(true, true, true, true), func_2(abs(-1i), vec2<bool>(false, false), func_2(u_input.a.x, vec2<bool>(false, true), Struct_5(u_input.a.x, vec4<bool>(false, false, false, false)), -1935f), _wgslsmith_f_op_f32(-1056f + 1038f)).b), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, true)), ~vec3<u32>(1u, 67623u, 0u), vec2<u32>(~firstTrailingBit(4294967295u), 0u)));
    var var_1 = firstTrailingBit(vec2<u32>(1u, 1u));
    var var_2 = Struct_5(-21522i, !func_2(-21439i, !func_2(u_input.a.x, var_0.zy, Struct_5(-2147483647i, vec4<bool>(false, var_0.x, false, var_0.x)), 467f).b.wz, func_2(firstTrailingBit(-42101i), var_0.xx, func_2(42469i, vec2<bool>(var_0.x, false), Struct_5(u_input.a.x, vec4<bool>(true, var_0.x, var_0.x, false)), -436f), _wgslsmith_f_op_f32(sign(-1954f))), 507f).b);
    let var_3 = ~(~(~vec4<u32>(var_1.x, var_1.x, 0u, 1u)) | abs(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 27485u, 4294967295u, 42827u), vec4<u32>(0u, 1u, 4294967295u, var_1.x))));
    var_1 = (vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(var_3.x, var_3.x, 11363u, 27411u))), _wgslsmith_mult_u32(firstLeadingBit(var_1.x), max(4739u, 40085u))) << (var_3.yz % vec2<u32>(32u))) >> (min(var_3.wx, ~_wgslsmith_sub_vec2_u32(var_3.yx, abs(vec2<u32>(92627u, 0u)))) % vec2<u32>(32u));
    var var_4 = Struct_4(Struct_2(!all(!var_0.yy), _wgslsmith_f_op_vec3_f32(vec3<f32>(692f, _wgslsmith_f_op_f32(max(743f, -1131f)), func_5(-1000f, true, var_2.b.x, var_2.b.x).b.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(514f, -2129f, 780f)))), vec3<bool>(var_0.x, !(1u < var_1.x), var_2.b.x), 25733i), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-420f, -1000f, -1127f, 758f), vec4<f32>(777f, -315f, -1441f, 460f)))), Struct_1(-_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(var_2.a, var_2.a, -21145i)), select(func_2(2147483647i, var_2.b.wx, Struct_5(4715i, vec4<bool>(var_0.x, false, var_2.b.x, false)), -759f).b, !vec4<bool>(var_2.b.x, false, var_2.b.x, false), var_2.b.x), vec2<bool>(true, func_6(Struct_2(true, vec3<f32>(-1733f, -623f, 235f), vec3<bool>(true, false, var_0.x), var_2.a), Struct_3(vec4<f32>(-366f, -206f, -3003f, 1240f), Struct_1(vec3<i32>(u_input.a.x, var_2.a, u_input.a.x), var_2.b, var_0.yx, vec3<u32>(var_3.x, 4294967295u, var_1.x), var_3.zy)), Struct_1(u_input.a, var_2.b, vec2<bool>(true, false), var_3.zxw, var_3.ww)).x), ~vec3<u32>(var_1.x, 15650u, var_3.x) | var_3.yxz, var_3.xz)), Struct_1(vec3<i32>(func_5(_wgslsmith_f_op_f32(-618f + 660f), var_0.x, false & var_2.b.x, true).d, 1i, ~2147483647i), !select(select(vec4<bool>(var_0.x, false, var_0.x, true), var_2.b, vec4<bool>(var_0.x, var_0.x, var_2.b.x, true)), !vec4<bool>(var_0.x, false, true, false), var_1.x == 0u), select(!vec2<bool>(var_0.x, var_0.x), var_0.zx, true | var_0.x), vec3<u32>(var_3.x & abs(0u), 10394u, ~select(0u, var_1.x, var_2.b.x)), ~(vec2<u32>(var_1.x, var_1.x) << (vec2<u32>(var_3.x, var_3.x) % vec2<u32>(32u))) >> (firstTrailingBit(~vec2<u32>(0u, 20830u)) % vec2<u32>(32u))), Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 225f, -935f, 1896f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, 250f, 1420f, -740f))))), Struct_1(-vec3<i32>(var_2.a, u_input.a.x, 45383i), func_2(-u_input.a.x, vec2<bool>(var_2.b.x, var_2.b.x), Struct_5(var_2.a, vec4<bool>(var_2.b.x, var_2.b.x, true, false)), _wgslsmith_f_op_f32(-567f * -213f)).b, select(func_2(u_input.a.x, vec2<bool>(false, true), Struct_5(2147483647i, vec4<bool>(false, var_2.b.x, true, var_0.x)), 109f).b.yy, var_2.b.yx, !vec2<bool>(var_2.b.x, var_0.x)), var_3.zww, ~countOneBits(vec2<u32>(var_3.x, var_3.x)))), func_4(Struct_5(~u_input.a.x, var_2.b), vec3<bool>(func_5(1144f, var_0.x, false, true).c.x, true, true), _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(var_3.x, var_1.x)), var_3.zx ^ _wgslsmith_sub_vec2_u32(var_3.xz, vec2<u32>(var_1.x, 4294967295u))), Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-319f, 1282f, 1000f, -345f))))), Struct_1(-vec3<i32>(var_2.a, -89371i, 28036i), !var_2.b, var_0.zz, ~var_3.yzw, min(vec2<u32>(var_3.x, 4294967295u), var_3.zy)))).yx);
    let var_5 = var_4.b.a;
    let var_6 = var_2.b.x;
    var_4 = Struct_4(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4.a.b.x + 1015f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_5.x, var_4.a.b.x, true))))), all(var_4.d.b.b), !all(vec3<bool>(true, true, true)), false), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.b.a), _wgslsmith_div_vec4_f32(vec4<f32>(381f, -107f, var_4.a.b.x, var_4.d.a.x), vec4<f32>(var_5.x, var_5.x, var_4.a.b.x, var_5.x))), var_4.d.a), var_4.c), var_4.b.b, var_4.d, ~max(var_3.yz, vec2<u32>(1395u, ~var_4.c.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(106f, _wgslsmith_f_op_f32(f32(-1f) * -279f)), -1i, firstTrailingBit(var_4.c.d.x));
}

