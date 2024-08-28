struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: bool;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 47614u, u_input.c.x), vec3<u32>(1u, u_input.a, global2.x)) >> (vec3<u32>(24695u, 2855u, 39276u) % vec3<u32>(32u)), countOneBits(vec3<u32>(global2.x, 95122u, 47083u))), global2.x, max(~6295u, global2.x));
    let var_0 = ~_wgslsmith_div_vec3_u32(min(select(~vec3<u32>(global2.x, 53138u, global2.x), ~vec3<u32>(93932u, 68310u, 48480u), vec3<bool>(true, true, true)), ~countOneBits(vec3<u32>(1u, global2.x, 0u))), vec3<u32>(4294967295u, firstLeadingBit(u_input.a & 47288u), u_input.c.x));
    global0 = array<vec3<f32>, 28>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), 385f);
    let var_2 = (true || select(true && all(vec2<bool>(true, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), true)) & !(all(vec3<bool>(true, false, true)) || any(vec3<bool>(false, true, true)));
    return !any(vec4<bool>(!(u_input.b.x == 38228i), true, !all(vec4<bool>(var_2, var_2, false, var_2)), true));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = vec4<bool>(false, select((_wgslsmith_mod_i32(-2147483647i, 74883i) < arg_2) | any(vec3<bool>(true, true, true)), !all(vec4<bool>(true, true, true, false)), true), ((0i == u_input.b.x) && select(true, true, true)) && !(!any(vec3<bool>(true, false, false))), !(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) == func_3()));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, arg_2) >> (vec3<u32>(global2.x, u_input.a, arg_0) % vec3<u32>(32u)), vec3<i32>(arg_2, u_input.b.x, u_input.b.x) >> (vec3<u32>(4294967295u, arg_1.x, 1u) % vec3<u32>(32u))), arg_2), 950f, !vec3<bool>(var_0.x, true & var_0.x, true)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(16143i, 1i, u_input.b.x << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -49787i, u_input.b.x, -33401i), vec4<i32>(2147483647i, -21846i, -1i, u_input.b.x))), ~vec4<i32>(28447i, -1i, arg_2, -1i) << (vec4<u32>(28540u, arg_0, u_input.c.x, 0u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 5640i), reverseBits(2147483647i), countOneBits(6511i), arg_2)), vec4<bool>(false, false, false, any(vec2<bool>(true, true))), Struct_1(0i, _wgslsmith_f_op_f32(max(1f, 1640f)), select(var_0.zyw, var_0.xxz, all(select(var_0.wwx, vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x))))), arg_1);
    let var_2 = arg_1.x;
    let var_3 = Struct_2(Struct_1(-2147483647i, var_1.a.b, !(!(!vec3<bool>(var_1.d.c.x, true, false)))), abs(var_1.b), !(!vec4<bool>(true, all(vec3<bool>(var_1.d.c.x, var_0.x, true)), !var_0.x, any(var_0))), Struct_1(_wgslsmith_div_i32(-1i, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1419f), var_0.zxw), arg_1);
    let var_4 = Struct_1(~min(reverseBits(select(-1467i, -30572i, var_0.x)), 0i), _wgslsmith_f_op_f32(var_3.d.b + _wgslsmith_f_op_f32(-1159f * _wgslsmith_f_op_f32(step(-588f, _wgslsmith_f_op_f32(max(var_1.a.b, -485f)))))), var_3.d.c);
    return var_4;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<i32>(-u_input.b.x, 69159i ^ arg_2.a);
    let var_1 = !(!(!(_wgslsmith_div_i32(-1i, 10824i) >= arg_2.a)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f)), select(-_wgslsmith_sub_vec4_i32(select(vec4<i32>(0i, var_0.x, 19936i, -62737i), vec4<i32>(0i, var_0.x, -5845i, 2147483647i), false), select(vec4<i32>(arg_2.a, -82337i, 24284i, 1i), vec4<i32>(20691i, var_0.x, 3081i, -1i), var_1)), -(vec4<i32>(1i, arg_2.a, var_0.x, var_0.x) | vec4<i32>(2147483647i, arg_2.a, 45040i, -4212i)), any(vec4<bool>(arg_1, false, all(vec4<bool>(false, arg_0.x, true, arg_0.x)), true))), Struct_1(arg_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_2.b, arg_2.b)))))), vec3<bool>(all(vec4<bool>(arg_0.x, false, true, arg_2.c.x)), var_1, !(arg_2.b <= -448f))), arg_2, func_2(abs(global2.x), ~min(vec4<u32>(0u, 134492u, global2.x, global2.x), vec4<u32>(64854u, 1u, 0u, u_input.c.x)) | ~(~vec4<u32>(81853u, 0u, u_input.a, 4294967295u)), u_input.b.x));
    global1 = !((any(!vec4<bool>(arg_2.c.x, var_2.c.c.x, false, false)) != ((true | arg_2.c.x) | var_2.e.c.x)) || arg_0.x);
    let var_3 = vec3<u32>(countOneBits(_wgslsmith_mult_u32(46439u, 1u)), ~min(13251u | u_input.a, 26467u), 4294967295u);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-505f)), func_2(global2.x, vec4<u32>(max(u_input.c.x, reverseBits(u_input.a)), ~(~global2.x), countOneBits(global2.x) >> (~4294967295u % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, u_input.c.x, 4294967295u)), abs(var_3))), min(arg_2.a, u_input.b.x & firstLeadingBit(2147483647i))).b));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = all(vec4<bool>(!(!all(arg_0.c.zz)), true, true, !arg_0.c.x));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(621f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.b.x, 8827i), vec4<i32>(16776i, 4243i, 2147483647i, 47540i)), -vec4<i32>(u_input.b.x, 40147i, -4303i, u_input.b.x), !vec4<bool>(arg_0.c.x, true, false, arg_0.c.x)), Struct_1(firstTrailingBit(-arg_0.a), 280f, vec3<bool>(true, true, true)), func_2(firstLeadingBit(1u | u_input.a), firstTrailingBit(~vec4<u32>(u_input.c.x, global2.x, 53543u, global2.x)), -93162i), arg_0), Struct_2(Struct_1(-28261i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<bool>(false, arg_0.c.x), arg_0.c.x, arg_0))), select(vec3<bool>(true, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), !arg_0.c.x)), abs(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, -2081i, arg_0.a), vec4<i32>(u_input.b.x, arg_0.a, 38187i, -1i)), min(vec4<i32>(u_input.b.x, -29473i, -2147483647i, 0i), vec4<i32>(u_input.b.x, arg_0.a, u_input.b.x, u_input.b.x)))), !vec4<bool>(true, true, false, func_2(global2.x, vec4<u32>(0u, u_input.c.x, global2.x, u_input.a), arg_0.a).c.x), func_2(37586u, ~(vec4<u32>(48113u, 46304u, 0u, global2.x) << (vec4<u32>(global2.x, u_input.c.x, 40337u, 60915u) % vec4<u32>(32u))), arg_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global2.x, global2.x, u_input.a) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(global2.zz, global2.xx), u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(24392u, 100685u, u_input.a), vec3<u32>(0u, 0u, 124815u))))), 946f);
    global2 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2.x, firstLeadingBit(global2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.x, 9070u), vec3<u32>(35335u, var_1.b.e.x, global2.x)), ~var_1.b.e.x)), var_1.b.e), var_1.b.e.x);
    let var_2 = select(!vec2<bool>(false, var_1.b.c.x), func_2(u_input.a | (~u_input.c.x | abs(2119u)), reverseBits(firstTrailingBit(var_1.b.e)), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.a, -20915i), vec2<i32>(var_1.b.a.a, var_1.a.c.a))).c.xy, select(false, !arg_0.c.x, true));
    global2 = var_1.b.e.yzx;
    return func_2(abs(u_input.a), ~_wgslsmith_mod_vec4_u32(var_1.b.e >> (vec4<u32>(20208u, 57459u, global2.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(var_1.b.e, var_1.b.e) | ~vec4<u32>(var_1.b.e.x, 1u, var_1.b.e.x, global2.x)), _wgslsmith_add_i32(var_1.b.b.x, u_input.b.x));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<u32>(u_input.c.x, 18153u, firstLeadingBit(54904u));
    var var_1 = func_5(Struct_1(_wgslsmith_div_i32(firstLeadingBit(arg_0.x), 16498i), _wgslsmith_f_op_f32(select(397f, _wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, false), vec2<bool>(true, false), false), true, func_2(55784u, vec4<u32>(u_input.a, u_input.a, var_0.x, 3327u), arg_0.x))), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))))), select(func_2(var_0.x, vec4<u32>(var_0.x, global2.x, var_0.x, u_input.c.x), u_input.b.x >> (1u % 32u)).c, vec3<bool>(true, true, true), func_2(global2.x, vec4<u32>(var_0.x, u_input.c.x, 47184u, var_0.x), arg_0.x).c.x && true)));
    let var_2 = Struct_2(func_5(func_2(~global2.x, ~vec4<u32>(global2.x, global2.x, global2.x, 1u), ~(~u_input.b.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -2147483647i, 3821i), arg_0 & vec3<i32>(arg_0.x, -17492i, u_input.b.x)), _wgslsmith_sub_i32(select(-21903i, arg_0.x, false), -1087i), 0i, arg_0.x) << (~(~(vec4<u32>(54439u, u_input.c.x, u_input.c.x, 1u) >> (vec4<u32>(var_0.x, 4294967295u, 0u, global2.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), select(select(select(!vec4<bool>(false, var_1.c.x, var_1.c.x, true), select(vec4<bool>(var_1.c.x, false, var_1.c.x, true), vec4<bool>(true, var_1.c.x, var_1.c.x, true), true), vec4<bool>(false, var_1.c.x, var_1.c.x, var_1.c.x)), select(!vec4<bool>(true, false, var_1.c.x, var_1.c.x), select(vec4<bool>(true, true, var_1.c.x, var_1.c.x), vec4<bool>(true, var_1.c.x, var_1.c.x, true), vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x)), true), vec4<bool>(any(var_1.c), true, true, false)), select(select(select(vec4<bool>(false, false, var_1.c.x, false), vec4<bool>(false, false, true, true), vec4<bool>(var_1.c.x, false, false, true)), select(vec4<bool>(false, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, false, false), var_1.c.x), !vec4<bool>(var_1.c.x, var_1.c.x, false, true)), select(!vec4<bool>(var_1.c.x, var_1.c.x, true, var_1.c.x), select(vec4<bool>(var_1.c.x, var_1.c.x, false, false), vec4<bool>(false, true, true, var_1.c.x), var_1.c.x), !var_1.c.x), select(vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), !vec4<bool>(var_1.c.x, false, true, var_1.c.x), func_3())), select(all(select(vec4<bool>(false, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, false, var_1.c.x, true), vec4<bool>(false, true, false, var_1.c.x))), false, !var_1.c.x)), func_5(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -3762i, 12604i), vec3<i32>(var_1.a, var_1.a, arg_0.x)), _wgslsmith_f_op_f32(480f - -1397f), select(func_2(15910u, vec4<u32>(71585u, 50637u, global2.x, u_input.a), 10258i).c, var_1.c, !var_1.c.x))), ~vec4<u32>(select(46500u, global2.x, true) | ~global2.x, 0u, 21816u, 1u));
    var var_3 = Struct_2(func_2(9512u, _wgslsmith_div_vec4_u32(vec4<u32>(~3421u, ~1u, 4294967295u | u_input.a, max(global2.x, 24903u)), _wgslsmith_sub_vec4_u32(~var_2.e, var_2.e)), arg_0.x), _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_2.b, vec4<i32>(-2147483647i, 37497i, var_2.d.a, -60489i)), min(var_2.b, vec4<i32>(-16353i, var_2.d.a, arg_0.x, var_2.b.x))), select(abs(vec4<i32>(2147483647i, arg_0.x, arg_0.x, 2147483647i)), var_2.b, !(!vec4<bool>(var_1.c.x, true, var_2.a.c.x, var_2.a.c.x)))), var_2.c, Struct_1(countOneBits(arg_0.x), var_2.d.b, vec3<bool>(!(global2.x < 4294967295u), !var_2.a.c.x, -var_2.d.a == u_input.b.x)), ~countOneBits(~abs(var_2.e)));
    var var_4 = Struct_4(Struct_3(var_2.a.b, var_3.b, func_2(var_3.e.x, max(var_2.e, vec4<u32>(0u, global2.x, 4294967295u, 23126u)), ~(-19603i >> (var_3.e.x % 32u))), func_5(var_3.d), func_2(global2.x, var_3.e, select(-4825i, -arg_0.x, true))), var_2, var_1.b);
    return func_2(~_wgslsmith_mult_u32(firstTrailingBit(4294967295u), max(var_4.b.e.x, 0u) ^ ~var_2.e.x), ~_wgslsmith_add_vec4_u32(~(~var_2.e), ~_wgslsmith_mod_vec4_u32(vec4<u32>(41046u, global2.x, 0u, u_input.c.x), var_4.b.e)), -52599i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = func_1(vec3<i32>(-min(-41021i, -3821i), u_input.b.x, u_input.b.x) ^ vec3<i32>(-u_input.b.x | u_input.b.x, _wgslsmith_add_i32(-2147483647i, u_input.b.x | -19696i), 24369i));
    global0 = array<vec3<f32>, 28>();
    let var_2 = -(~(0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -8571i, u_input.b.x), firstLeadingBit(vec3<i32>(u_input.b.x, var_0, var_0)))));
    var var_3 = _wgslsmith_mod_u32(3950u, ~global2.x);
    var var_4 = Struct_4(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(!vec2<bool>(var_1.c.x, var_1.c.x), func_2(u_input.a, vec4<u32>(global2.x, 4294967295u, 7074u, u_input.c.x), var_0).c.x, var_1)))), vec4<i32>(i32(-1i) * -var_1.a, _wgslsmith_div_i32(_wgslsmith_div_i32(-1i, u_input.b.x), u_input.b.x), var_1.a, -24535i & (-1i ^ var_0)), var_1, var_1, Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(27156i, -25259i, var_0, var_2), vec4<i32>(0i, 1i, 64103i, var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-578f, var_1.b))), var_1.c)), Struct_2(func_5(Struct_1(1i, _wgslsmith_div_f32(-179f, var_1.b), func_1(vec3<i32>(-1i, 0i, 34055i)).c)), -(vec4<i32>(-1i) * -vec4<i32>(var_0, 2147483647i, 1i, var_2)), vec4<bool>(var_1.c.x | (var_1.c.x & false), all(!vec4<bool>(true, var_1.c.x, true, false)), func_3(), false), var_1, min(~firstTrailingBit(vec4<u32>(u_input.a, global2.x, global2.x, 1u)), ~min(vec4<u32>(16543u, u_input.a, u_input.c.x, 29184u), vec4<u32>(global2.x, 1u, 26961u, 4623u)))), var_1.b);
    var var_5 = Struct_2(func_1(vec3<i32>(_wgslsmith_div_i32(reverseBits(var_2), _wgslsmith_div_i32(-1i, -50893i)), var_1.a, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, -59845i), u_input.b.x ^ -33036i, u_input.b.x))), vec4<i32>(-var_2, countOneBits(var_4.a.d.a), _wgslsmith_mult_i32(~37415i, ~(-var_0)), 20950i), select(vec4<bool>(var_1.c.x, var_1.c.x, true, true), var_4.b.c, select(select(!vec4<bool>(var_4.a.c.c.x, var_4.b.d.c.x, var_1.c.x, var_4.b.c.x), vec4<bool>(false, true, var_4.a.d.c.x, false), true), var_4.b.c, !var_4.a.c.c.x)), var_4.b.d, vec4<u32>(4294967295u, global2.x, _wgslsmith_div_u32(33002u, ~24660u), 23092u) | vec4<u32>(global2.x, 45702u, ~global2.x, 59786u));
    var var_6 = var_4.a.d.c.x;
    var var_7 = -68706i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_5(Struct_1(-1i, func_2(var_4.b.e.x, vec4<u32>(var_5.e.x, var_4.b.e.x, var_4.b.e.x, 1u), 2147483647i).b, select(var_4.a.e.c, var_5.d.c, true))).b));
}

