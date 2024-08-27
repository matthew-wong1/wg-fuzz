struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4624i;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = select(!vec2<bool>(arg_1.b >= _wgslsmith_f_op_f32(exp2(arg_1.b)), true), select(vec2<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), select(vec2<bool>(true, _wgslsmith_div_i32(u_input.a.x, u_input.d.x) <= 2147483647i), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(true, any(vec4<bool>(false, false, false, true)), true)), vec2<bool>(true, 0u >= ~arg_0)));
    let var_1 = arg_1.b;
    global1 = (firstLeadingBit(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.e, 42128u))) | max(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 22624u), abs(vec2<u32>(global1.x, 4294967295u))), ~vec2<u32>(u_input.e, 0u))) & _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(11745u, 12480u), ~vec2<u32>(48418u, global1.x)) ^ ~(vec2<u32>(global1.x, arg_0) << (vec2<u32>(49384u, arg_0) % vec2<u32>(32u))), ~vec2<u32>(global1.x, _wgslsmith_add_u32(4294967295u, u_input.b)), ~max(vec2<u32>(1u, arg_0), max(vec2<u32>(42156u, global1.x), vec2<u32>(global1.x, arg_0))));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(~(~firstLeadingBit(global1.x)), ~(~63598u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(min(4294967295u, _wgslsmith_mult_u32(arg_0, 29328u)), 1u), ~0u), ~26623u, firstTrailingBit(global1.x));
    let var_3 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b, 1f, arg_1.b)))), true);
    return -arg_1.a >> (vec3<u32>(var_2.x, 83528u, abs(arg_0)) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    global0 = u_input.d.x;
    var var_0 = Struct_2((u_input.a << (~vec3<u32>(global1.x, u_input.e, u_input.e) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(26230u, 10087u, u_input.e), vec3<u32>(global1.x, global1.x, u_input.b)), ~select(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 4294967295u, 17989u), vec3<bool>(arg_1.c, arg_2.c, arg_2.a))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2550f))))), func_3(~(~global1.x), arg_0).x, vec2<i32>(1i, ~arg_0.a.x));
    global0 = -2147483647i;
    global0 = var_0.c >> (firstLeadingBit(abs(96172u)) % 32u);
    global0 = var_0.c << (countOneBits(u_input.b) % 32u);
    return u_input.b;
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_mod_vec2_u32(~firstTrailingBit(~abs(vec2<u32>(24776u, u_input.e))), ~max(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, global1.x), vec2<u32>(8048u, 0u)), max(vec2<u32>(36082u, 35066u), vec2<u32>(global1.x, u_input.b))));
    global0 = _wgslsmith_add_i32(-2147483647i, firstTrailingBit(1i));
    var var_0 = _wgslsmith_mod_u32(max(1014u, 17874u), func_4(Struct_2(max(func_3(4294967295u, Struct_2(vec3<i32>(-97167i, u_input.a.x, 0i), 226f, -53359i, u_input.a.xx)), u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~_wgslsmith_clamp_i32(2492i, 0i, -356i), _wgslsmith_div_vec2_i32(max(u_input.a.xy, u_input.d), u_input.d << (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u)))), Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(783f, -763f, -827f), vec3<f32>(1062f, -277f, -2097f))), true), Struct_1(!all(vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(-224f * -1679f), _wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_div_f32(-413f, -904f)), select(select(false, false, true), all(vec4<bool>(false, true, true, true)), u_input.e > global1.x)), !select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true)));
    var_0 = 0u;
    var var_1 = ~firstTrailingBit(abs(4572u));
    return Struct_1(all(vec3<bool>(true, false, global1.x == ~u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(802f, -190f, -1081f)), vec3<f32>(1071f, -1663f, -512f)))))), !(true && (1i < u_input.a.x)));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    global0 = max(-31156i, u_input.a.x);
    global1 = vec2<u32>(u_input.e, func_4(Struct_2(firstLeadingBit(func_3(17629u, Struct_2(vec3<i32>(-1861i, 0i, u_input.d.x), 470f, u_input.a.x, vec2<i32>(u_input.a.x, u_input.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -775f), -firstTrailingBit(u_input.d.x), reverseBits(_wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(-1i, -78361i)))), Struct_1(true & (1023f > var_0.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.b), vec3<f32>(396f, -1000f, var_0.b.x))), !(false || var_0.c)), func_2(), vec2<bool>(true, true)));
    var var_1 = Struct_2(u_input.a << (vec3<u32>(60575u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4222u), vec2<u32>(82213u, 35568u))), func_4(Struct_2(u_input.a, -745f, -1i, u_input.d), Struct_1(var_0.c, var_0.b, var_0.a), Struct_1(var_0.a, vec3<f32>(875f, -1174f, 1269f), true), select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, true), vec2<bool>(false, var_0.c)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(abs(179f)), u_input.c.x, vec2<i32>(-1i, -(u_input.d.x | 1i) | -2147483647i));
    let var_2 = Struct_2(var_1.a, 756f, min(i32(-1i) * -firstLeadingBit(15540i), u_input.a.x << (~_wgslsmith_clamp_u32(0u, 71165u, 61450u) % 32u)), reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.c.x), 21023i), ~var_1.a.xz)));
    return _wgslsmith_f_op_f32(round(var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(48564i, 39886i), u_input.c), 1i), ~reverseBits(u_input.c.x), u_input.a.x), u_input.a), _wgslsmith_f_op_f32(-301f - _wgslsmith_f_op_f32(func_1())), u_input.a.x, _wgslsmith_add_vec2_i32(vec2<i32>(abs(abs(u_input.d.x)), u_input.a.x), u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1097f, var_0.b))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) * vec2<f32>(813f, var_0.b)))), vec2<f32>(3240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
}

