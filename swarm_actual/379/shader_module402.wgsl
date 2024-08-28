struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = ~(vec4<u32>(u_input.c.x, ~(~1u), arg_2.b, arg_0.b) ^ ~vec4<u32>(u_input.a, 98065u << (u_input.a % 32u), arg_0.b ^ 39491u, ~arg_0.b));
    var var_1 = select(vec3<bool>(!arg_0.d, arg_2.d, true), vec3<bool>(false, false, any(!vec3<bool>(false, true, arg_2.d))), vec3<bool>(any(vec2<bool>(arg_2.d, false)), all(!select(vec2<bool>(arg_0.d, false), vec2<bool>(arg_2.d, arg_2.d), arg_2.d)), false));
    let var_2 = Struct_4(var_1.zy, arg_0);
    let var_3 = vec3<bool>(arg_1 > arg_1, var_2.b.b == 76839u, !arg_2.d);
    var_1 = vec3<bool>(false, var_1.x, true);
    return u_input.d.zz | ~var_0.xw;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_mult_i32(-firstLeadingBit(1i), -27813i);
    var var_1 = Struct_3(_wgslsmith_add_vec2_u32(select(func_3(Struct_1(arg_2.a, u_input.c.x, -2147483647i, arg_2.d), -484f, arg_2) | ~vec2<u32>(9365u, 1u), u_input.b, !select(vec2<bool>(arg_2.d, arg_2.d), vec2<bool>(false, false), vec2<bool>(true, arg_2.d))), vec2<u32>(u_input.a >> (arg_2.b % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(41774u, arg_0, 0u, 35710u), vec4<u32>(6561u, arg_2.b, arg_2.b, 46568u)))), arg_2, Struct_2(arg_2.a, arg_2.d, u_input.b, ~abs(vec2<i32>(2147483647i, -1i)), arg_2));
    var_1 = Struct_3(abs(select(var_1.a, vec2<u32>(~arg_0, firstLeadingBit(var_1.b.b)), !any(vec3<bool>(false, false, arg_1)))), var_1.b, Struct_2(select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-43146i, arg_2.c, 2147483647i), vec3<i32>(u_input.e, var_1.b.c, var_1.c.d.x)), vec3<i32>(u_input.e, 43635i, var_1.c.e.a.x), _wgslsmith_div_vec3_i32(var_1.c.a, arg_2.a)), vec3<i32>(countOneBits(u_input.e), 58666i | var_1.c.e.c, var_1.b.c), !select(vec3<bool>(true, true, arg_2.d), vec3<bool>(var_1.c.b, var_1.c.b, true), vec3<bool>(true, arg_1, arg_2.d))), !any(!vec4<bool>(true, arg_1, arg_2.d, true)), var_1.a, -firstLeadingBit(vec2<i32>(0i, -1i)) & abs(select(vec2<i32>(var_1.c.d.x, -2147483647i), arg_2.a.yx, arg_1)), Struct_1(abs(vec3<i32>(-2147483647i, 13580i, u_input.e)), 1u, _wgslsmith_dot_vec2_i32(arg_2.a.xy | vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.e, 18608i)), true)));
    var var_2 = -u_input.e;
    var_1 = Struct_3(vec2<u32>(~firstTrailingBit(u_input.d.x), 3762u), Struct_1(vec3<i32>(reverseBits(1i), _wgslsmith_mod_i32(-49314i, ~2346i), _wgslsmith_div_i32(1i, u_input.e)), reverseBits(abs(1u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.d.x, var_1.c.d.x, arg_2.a.x), vec3<i32>(u_input.e, var_1.c.a.x, 51850i) ^ vec3<i32>(u_input.e, arg_2.a.x, -1i)), ~(-2147483647i)), any(!vec2<bool>(arg_2.d, false))), var_1.c);
    return Struct_4(select(vec2<bool>(arg_2.d, true), select(vec2<bool>(any(vec3<bool>(false, arg_2.d, var_1.b.d)), true), select(!vec2<bool>(arg_2.d, arg_1), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_1, true)), select(vec2<bool>(arg_1, var_1.c.e.d), vec2<bool>(true, var_1.b.d), var_1.c.e.d)), vec2<bool>(!arg_2.d, all(vec4<bool>(var_1.c.b, arg_1, true, arg_2.d)))), !vec2<bool>(true, arg_2.d)), Struct_1(arg_2.a, ~(~1u), _wgslsmith_mod_i32(-(~u_input.e), -18835i), false));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = select(func_2(arg_1.b.b, false, arg_2).b.a, _wgslsmith_div_vec3_i32(arg_2.a, arg_0.b.a), false);
    var var_1 = Struct_3(~countOneBits(vec2<u32>(16907u, arg_3.b.b) ^ u_input.d.zx) | vec2<u32>(~(~32976u), ~(~u_input.d.x)), arg_1.b, Struct_2(firstTrailingBit(vec3<i32>(arg_2.c, arg_1.b.a.x, -56737i)) | ~(arg_2.a << (u_input.d % vec3<u32>(32u))), true, u_input.d.zz, -arg_2.a.yy, arg_2));
    var var_2 = Struct_3(u_input.d.yy, Struct_1(_wgslsmith_div_vec3_i32(-abs(var_1.b.a), func_2(arg_0.b.b, true, func_2(arg_3.b.b, false, arg_3.b).b).b.a), 0u, -20613i, !all(!vec3<bool>(arg_2.d, var_1.b.d, false))), var_1.c);
    global0 = firstLeadingBit(-countOneBits(1i));
    var var_3 = vec2<i32>(arg_1.b.c, 35509i);
    return !vec3<bool>(any(vec4<bool>(arg_2.d, false, true, false)) & !arg_0.b.d, false, func_2(0u, var_2.c.b, Struct_1(var_1.b.a, 67879u, ~arg_1.b.c, true)).a.x);
}

fn func_1(arg_0: f32) -> i32 {
    global0 = u_input.e;
    let var_0 = vec2<bool>(all(!func_4(Struct_4(vec2<bool>(false, true), Struct_1(vec3<i32>(28402i, u_input.e, -38480i), 1u, u_input.e, true)), func_2(u_input.c.x, false, Struct_1(vec3<i32>(u_input.e, 1i, u_input.e), 0u, u_input.e, true)), func_2(u_input.b.x, true, Struct_1(vec3<i32>(2147483647i, u_input.e, 2954i), 11986u, u_input.e, false)).b, Struct_4(vec2<bool>(true, true), Struct_1(vec3<i32>(u_input.e, 1i, 0i), 4294967295u, 0i, false)))), !((firstLeadingBit(u_input.a) >> (u_input.a % 32u)) <= ~u_input.b.x));
    global0 = u_input.e;
    var var_1 = -1085f;
    let var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.d.x, 16813u, 0u), abs(u_input.b.x))), abs(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(74796u, u_input.d.x)) ^ u_input.b)), _wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(u_input.a, 4294967295u, 1u)), u_input.b.x), u_input.d.x, _wgslsmith_dot_vec3_u32(~u_input.d, select(min(vec3<u32>(55512u, 23554u, u_input.b.x) ^ u_input.c, countOneBits(vec3<u32>(17162u, 0u, 70166u))), vec3<u32>(90731u, 42710u, u_input.a), vec3<bool>(u_input.e > -2147483647i, all(var_0), -2147483647i > u_input.e))));
    return 38436i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(u_input.e, u_input.e, 49239i)) << (countOneBits(vec3<u32>(u_input.c.x, u_input.a, 1u) ^ vec3<u32>(0u, 4294967295u, u_input.b.x)) % vec3<u32>(32u)), vec3<i32>(-_wgslsmith_add_i32(u_input.e, u_input.e), abs(min(u_input.e, u_input.e)), ~u_input.e)), _wgslsmith_clamp_i32(u_input.e, u_input.e, -func_1(723f) << (36721u % 32u)), 0i);
    var var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(-select(vec4<i32>(80058i, var_0.x, var_0.x, u_input.e), vec4<i32>(-1i, u_input.e, var_0.x, 2147483647i), false))));
}

