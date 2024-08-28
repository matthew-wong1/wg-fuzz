struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(arg_2.d.a, !(!arg_0.e.x), u_input.a, 84002u, ~(-u_input.c.x)), countOneBits(vec4<u32>(arg_0.c.d, arg_1.d.c.x, _wgslsmith_mod_u32(arg_2.c.c.x, arg_0.c.c.x), _wgslsmith_mult_u32(arg_1.d.d, arg_0.b.x))), Struct_1(select(arg_0.a.a, vec4<bool>(arg_1.d.b, false, arg_1.a.b, true), arg_0.a.a), arg_1.c.a.x, _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_2.b.x, 4294967295u, 0u), vec4<u32>(0u, 13651u, arg_2.c.d, 1u)), 1u, u_input.c.x & (arg_0.d.e ^ 1i)), Struct_1(vec4<bool>(true, arg_0.c.b, arg_0.e.x || arg_2.a.a.x, arg_2.a.e >= arg_2.c.e), false, abs(_wgslsmith_mult_vec4_u32(arg_2.d.c, arg_2.c.c)), ~reverseBits(19305u), _wgslsmith_add_i32(arg_2.a.e, ~2147483647i)), arg_1.e), _wgslsmith_add_vec4_i32(-(~(-vec4<i32>(u_input.e.x, 2147483647i, arg_0.a.e, arg_1.c.e))), ~u_input.c), abs(-reverseBits(u_input.e)), -402f, arg_1.a);
    var var_1 = arg_0.b.x;
    var var_2 = min(reverseBits(_wgslsmith_div_vec4_i32(-var_0.c, vec4<i32>(_wgslsmith_add_i32(u_input.e.x, 10641i), u_input.e.x, max(arg_2.d.e, -2147483647i), -u_input.e.x))), u_input.c);
    var_2 = var_0.c;
    let var_3 = -390f;
    return arg_0.a.b;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = !vec2<bool>(false, !all(vec2<bool>(true, true)));
    var var_1 = 4294967295u;
    var_1 = u_input.a.x ^ u_input.a.x;
    var var_2 = Struct_3(Struct_2(Struct_1(vec4<bool>(func_3(Struct_2(Struct_1(vec4<bool>(var_0.x, false, false, false), true, u_input.a, u_input.d.x, 7543i), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x), Struct_1(vec4<bool>(true, true, true, false), true, vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 8109u), 1u, -2147483647i), Struct_1(vec4<bool>(var_0.x, var_0.x, true, false), var_0.x, vec4<u32>(u_input.d.x, u_input.b.x, 61836u, 0u), u_input.b.x, u_input.e.x), var_0), Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false, vec4<u32>(u_input.d.x, u_input.a.x, 1u, u_input.d.x), 1u, arg_0), vec4<u32>(28279u, 1u, 10531u, 1808u), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, false), false, vec4<u32>(u_input.b.x, 66492u, u_input.b.x, u_input.b.x), u_input.a.x, 39948i), Struct_1(vec4<bool>(true, true, false, var_0.x), var_0.x, vec4<u32>(u_input.d.x, 26858u, u_input.a.x, 83804u), 44632u, arg_0), var_0), Struct_2(Struct_1(vec4<bool>(var_0.x, true, true, var_0.x), var_0.x, vec4<u32>(3185u, 27915u, u_input.d.x, 59984u), u_input.b.x, arg_0), u_input.a, Struct_1(vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, u_input.b.x), u_input.b.x, arg_0), Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), var_0.x, u_input.d, 60429u, arg_0), vec2<bool>(var_0.x, var_0.x))), true, var_0.x | var_0.x, var_0.x || var_0.x), false, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.d.x, u_input.d.x, 41994u), u_input.d) >> (vec4<u32>(21474u, 67650u, u_input.b.x, u_input.d.x) % vec4<u32>(32u)), 41069u, -2147483647i), ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, u_input.d), select(vec4<u32>(16378u, 6313u, 1u, 74336u), u_input.a, vec4<bool>(true, true, false, var_0.x))), Struct_1(select(vec4<bool>(var_0.x, false, var_0.x, true), !vec4<bool>(false, var_0.x, false, var_0.x), var_0.x), false, (vec4<u32>(17031u, 93409u, u_input.a.x, u_input.d.x) >> (u_input.d % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.b.x, 35018u), u_input.a) % vec4<u32>(32u)), 1u, min(reverseBits(arg_0), arg_0)), Struct_1(!select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x), var_0.x | var_0.x, ~(~vec4<u32>(u_input.a.x, 0u, u_input.d.x, u_input.b.x)), 36213u, u_input.c.x), var_0), u_input.e, abs(u_input.c), 549f, Struct_1(!select(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, false)), !vec4<bool>(var_0.x, false, false, false), !var_0.x), var_0.x, ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(80008u, 34064u, 4294967295u, 110318u), vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.d.x)), vec4<u32>(u_input.b.x, 1u, u_input.d.x, 0u) & u_input.a), 1u, _wgslsmith_add_i32(3421i, -abs(26970i))));
    var var_3 = vec2<i32>(arg_0, _wgslsmith_mult_i32(4861i, abs(u_input.e.x)));
    return var_2.e.a;
}

fn func_1() -> Struct_1 {
    var var_0 = select(!func_2(14767i), select(vec4<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), false, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))), func_2(firstLeadingBit(u_input.c.x)), true), !(!func_2(-36596i).x));
    var_0 = select(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(!vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x || true), var_0.x), vec4<bool>(_wgslsmith_mult_u32(50943u, ~u_input.d.x) <= ((u_input.a.x | u_input.b.x) | u_input.a.x), ~firstTrailingBit(u_input.b.x) >= _wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), 0u), true, true), select(func_2(-2147483647i), vec4<bool>(all(var_0.zxw), var_0.x, var_0.x, var_0.x), !vec4<bool>(any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(false, true, true), true, func_2(-1i).x)));
    var_0 = vec4<bool>(var_0.x, true, var_0.x, false & !select(true, false, true));
    var_0 = !select(!select(vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, false, true), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, true))), vec4<bool>(var_0.x, false && any(vec2<bool>(true, true)), any(var_0.zz), false), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, -865f, -532f, 1121f) - vec4<f32>(-1489f, -1519f, 196f, -264f))))))));
    return Struct_1(!(!vec4<bool>(false, false, false, any(vec4<bool>(false, var_0.x, var_0.x, false)))), select(var_0.x, false & any(select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), func_3(Struct_2(Struct_1(vec4<bool>(false, false, false, var_0.x), true, vec4<u32>(u_input.d.x, 0u, 72188u, 0u), 0u, u_input.e.x), vec4<u32>(u_input.d.x, u_input.b.x, 4294967295u, 0u), Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), true, vec4<u32>(11560u, 42481u, 50332u, 21751u), 68230u, 2147483647i), Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), var_0.x, u_input.a, 64994u, u_input.c.x), vec2<bool>(var_0.x, var_0.x)), Struct_2(Struct_1(vec4<bool>(var_0.x, true, false, false), var_0.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x), u_input.d.x, 1i), _wgslsmith_sub_vec4_u32(vec4<u32>(2796u, 0u, u_input.b.x, 68783u), vec4<u32>(12539u, u_input.d.x, 0u, u_input.b.x)), Struct_1(vec4<bool>(var_0.x, var_0.x, true, false), true, u_input.d, u_input.b.x, 1i), Struct_1(vec4<bool>(var_0.x, true, var_0.x, false), var_0.x, vec4<u32>(u_input.d.x, 1u, u_input.a.x, 1u), u_input.a.x, u_input.e.x), !var_0.ww), Struct_2(Struct_1(vec4<bool>(false, var_0.x, false, var_0.x), var_0.x, vec4<u32>(u_input.b.x, u_input.d.x, 4294967295u, u_input.b.x), 1u, -40056i), u_input.a, Struct_1(vec4<bool>(false, var_0.x, var_0.x, var_0.x), true, u_input.a, 32307u, u_input.e.x), Struct_1(vec4<bool>(var_0.x, true, false, var_0.x), var_0.x, vec4<u32>(u_input.b.x, u_input.a.x, 0u, u_input.d.x), u_input.d.x, u_input.e.x), vec2<bool>(true, true)))), vec4<u32>(u_input.b.x, ~u_input.a.x, ~abs(u_input.b.x << (0u % 32u)), _wgslsmith_sub_u32(countOneBits(_wgslsmith_add_u32(u_input.b.x, 0u)), u_input.d.x)), ~_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(114213u, u_input.a.x)), _wgslsmith_div_i32(firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 1i), u_input.e.xw)), 1i));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(arg_0.e.b, !arg_0.a.c.b, true, arg_0.e.b), !any(!vec2<bool>(arg_0.a.e.x, arg_0.a.a.b)), vec4<u32>(61390u, ~firstTrailingBit(u_input.b.x), u_input.a.x, 0u), func_1().c.x, 0i), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b.x, reverseBits(0u), 3105u << (0u % 32u), arg_0.e.c.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 4294967295u), vec4<u32>(u_input.a.x, u_input.b.x, 50960u, arg_0.a.d.c.x))), vec4<u32>(u_input.b.x, arg_0.e.c.x, 4294967295u, arg_0.a.c.d)), arg_0.a.a, arg_0.e, func_1().a.yx);
    var_0 = arg_0.a;
    var var_1 = Struct_4(var_0.d, ~(~arg_0.c));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.d);
    var_2 = arg_0.d;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true), true, u_input.a, 48448u, 24947i), u_input.a | u_input.d, func_1(), Struct_1(vec4<bool>(false, true, true, false), true, vec4<u32>(u_input.b.x, u_input.d.x, 0u, 4294967295u), u_input.d.x, u_input.c.x), vec2<bool>(false, false)), max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 5471i, 0i), vec4<i32>(u_input.e.x, u_input.e.x, 14087i, u_input.e.x)), u_input.c), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-371f)) * -1332f), Struct_1(vec4<bool>(true, true, true, true), true, u_input.d, _wgslsmith_mult_u32(1u, 4294967295u), -19442i >> (1u % 32u)))), -_wgslsmith_sub_vec4_i32(vec4<i32>(-21429i, -12227i, countOneBits(71407i), 0i), vec4<i32>(-1i, abs(u_input.e.x), _wgslsmith_div_i32(u_input.c.x, 32421i), firstTrailingBit(u_input.c.x))));
    var_0 = Struct_4(var_0.a, _wgslsmith_clamp_vec4_i32(firstLeadingBit(~_wgslsmith_mult_vec4_i32(var_0.b, vec4<i32>(-5332i, var_0.b.x, u_input.c.x, u_input.c.x))), ~u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.e, u_input.c.x, var_0.a.e, reverseBits(-2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.e, u_input.c.x, 27380i, -14558i), ~vec4<i32>(var_0.a.e, -10953i, u_input.c.x, -24670i), ~vec4<i32>(39369i, var_0.b.x, -21221i, -5557i)))));
    let var_1 = Struct_3(Struct_2(var_0.a, vec4<u32>(67663u, ~(u_input.d.x & 4294967295u), var_0.a.d, 33250u), var_0.a, var_0.a, vec2<bool>(var_0.a.a.x, all(vec2<bool>(var_0.a.b, false)))), select(vec4<i32>(countOneBits(-14531i), -13981i, -12865i, 68658i), vec4<i32>(var_0.b.x, var_0.a.e, var_0.a.e, var_0.a.e) ^ vec4<i32>(var_0.b.x, u_input.c.x, u_input.e.x, u_input.c.x), any(!vec4<bool>(var_0.a.a.x, false, false, true))) << (~countOneBits(~u_input.d) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-vec4<i32>(-1i, func_4(Struct_3(Struct_2(var_0.a, u_input.d, var_0.a, var_0.a, var_0.a.a.wx), var_0.b, vec4<i32>(var_0.b.x, 1i, u_input.e.x, 25440i), 1154f, var_0.a)).e, abs(u_input.c.x), -1i), (_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0.b.x, -1i, var_0.b.x), u_input.c) >> (u_input.d % vec4<u32>(32u))) ^ reverseBits(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(-1122f * -1000f), Struct_1(var_0.a.a, (~var_0.b.x <= 1i) || var_0.a.b, ~vec4<u32>(~40769u, 25916u, ~var_0.a.d, func_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, var_0.a.b), var_0.a.a.x, u_input.d, u_input.d.x, var_0.a.e), vec4<u32>(var_0.a.d, 60083u, var_0.a.d, 0u), Struct_1(var_0.a.a, var_0.a.a.x, vec4<u32>(var_0.a.d, 26733u, 1u, 68535u), 1u, var_0.b.x), Struct_1(var_0.a.a, false, var_0.a.c, var_0.a.d, -51756i), var_0.a.a.yx), vec4<i32>(1i, -19939i, -22681i, -12161i), vec4<i32>(u_input.c.x, var_0.a.e, -1i, u_input.c.x), 399f, Struct_1(var_0.a.a, false, vec4<u32>(1u, 55122u, u_input.a.x, var_0.a.d), var_0.a.c.x, u_input.e.x))).c.x), 32688u, var_0.a.e));
    var_0 = Struct_4(func_1(), var_1.b);
    var_0 = Struct_4(var_0.a, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, var_1.e.c.x), func_1().c.xyy), ~var_0.a.c.x), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.e.d, u_input.d.x, var_1.e.c.x), u_input.d.wyy), 33543u), var_1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1136f, var_1.d, 211f, var_1.d), vec4<f32>(var_1.d, 687f, var_1.d, 728f)))))), select(func_1().d | ~countOneBits(14454u), 63526u, var_1.a.e.x));
}

