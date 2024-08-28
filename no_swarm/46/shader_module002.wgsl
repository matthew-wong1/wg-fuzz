struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<bool> {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -235f)));
    var var_2 = max(min(1u, 1u) & ~(~(~u_input.c)), u_input.c);
    var_2 = u_input.b | u_input.b;
    var_2 = 0u;
    return select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), 28614u < u_input.a)), select(vec3<bool>(true, false, true), vec3<bool>(true, !any(vec4<bool>(true, false, true, true)), false), true));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: i32) -> bool {
    var var_0 = true;
    let var_1 = arg_1;
    let var_2 = Struct_2((abs(-var_1.d.d.ww) << (arg_0.a.a.yy % vec2<u32>(32u))) >> (~(vec2<u32>(1143u, var_1.d.e.x) | ~var_1.d.a.c) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x)))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_clamp_vec3_u32(var_1.d.a.a, vec3<u32>(u_input.a, firstLeadingBit(3245u), ~0u), min(~vec3<u32>(4294967295u, arg_1.d.a.c.x, arg_1.d.a.c.x), vec3<u32>(0u, 1u, arg_1.d.e.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_1.d.a.b, _wgslsmith_f_op_vec2_f32(-var_1.d.a.b)))), arg_0.e, all(select(select(vec4<bool>(false, arg_0.a.d, false, false), vec4<bool>(false, false, arg_0.b, false), vec4<bool>(true, false, var_1.d.b, var_1.d.b)), select(vec4<bool>(arg_1.d.b, var_1.d.a.d, true, var_1.c.x), vec4<bool>(var_1.d.a.d, arg_1.c.x, false, false), true), arg_0.b))), arg_0.a.d, min(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2, arg_1.d.d.x, 1i), -6786i), -65402i), arg_0.d, arg_0.a.a.xy);
    var var_4 = ~firstLeadingBit(32034i);
    return any(!vec4<bool>(var_1.c.x, var_1.d.a.d, true, var_1.c.x));
}

fn func_1() -> Struct_3 {
    var var_0 = true;
    let var_1 = !vec3<bool>(select((u_input.b > u_input.a) && true, ~u_input.b != u_input.c, any(vec2<bool>(true, true))), true, all(func_2()));
    let var_2 = select(!(!(!(!vec4<bool>(true, var_1.x, false, false)))), vec4<bool>(true, false, !func_3(Struct_3(Struct_1(vec3<u32>(0u, 39251u, u_input.c), vec2<f32>(1210f, -584f), vec2<u32>(36501u, u_input.c), var_1.x), true, -70706i, vec4<i32>(32848i, -2721i, 2147483647i, -1i), vec2<u32>(u_input.c, 1u)), Struct_5(vec4<i32>(-26946i, -17420i, 1i, -9463i), vec3<i32>(20329i, -8300i, -59315i), vec2<bool>(var_1.x, var_1.x), Struct_3(Struct_1(vec3<u32>(u_input.c, u_input.b, u_input.b), vec2<f32>(505f, 232f), vec2<u32>(4294967295u, u_input.b), true), var_1.x, -2147483647i, vec4<i32>(-30870i, -2147483647i, 2147483647i, -22631i), vec2<u32>(16513u, 16244u))), abs(-2147483647i)), true), !vec4<bool>(u_input.c > u_input.a, all(!vec2<bool>(var_1.x, true)), var_1.x, true));
    var_0 = var_1.x;
    var_0 = var_1.x;
    return Struct_3(Struct_1(select(vec3<u32>(u_input.b, 1u, ~0u), vec3<u32>(~0u, u_input.b, 0u << (u_input.c % 32u)), var_1), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-713f, -1261f), vec2<f32>(145f, 304f), var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, 349f) - vec2<f32>(-1342f, 188f))), var_2.ww)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 2887u) >> (vec2<u32>(33031u, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.c, 4294967295u)), false), all(!select(var_1, !var_2.xyz, true)), 1i, vec4<i32>(1i, reverseBits(-(i32(-1i) * -1i)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-19927i, 0i), vec2<i32>(10127i, 0i)), ~(~40470i)), 5530i), ~select(vec2<u32>(58526u, 33086u) & ~vec2<u32>(u_input.a, 0u), ~(~vec2<u32>(97495u, u_input.c)), var_1.zy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.b.x, -1373f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x))))));
    var var_2 = Struct_5(vec4<i32>(19326i, 0i, -2147483647i, var_0.d.x), var_0.d.wyw, select(!func_2().yx, select(vec2<bool>(var_0.a.d, var_1 == var_1), func_2().xy, var_0.a.d), func_2().xx), func_1());
    let var_3 = abs(~((vec4<u32>(1u, u_input.c, var_0.e.x, 79470u) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_2.d.a.c.x, var_0.e.x, u_input.c), vec4<u32>(var_2.d.a.c.x, u_input.c, 46425u, 2227u)) % vec4<u32>(32u))) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 19797u, u_input.a), vec4<u32>(var_2.d.e.x, var_2.d.a.a.x, u_input.b, u_input.b)) ^ ~vec4<u32>(0u, u_input.a, 115854u, 47278u)) % vec4<u32>(32u))));
    let var_4 = _wgslsmith_mod_u32(max(~var_2.d.a.c.x, var_2.d.e.x), 0u);
    var var_5 = Struct_1(vec3<u32>(max(func_1().e.x, var_4), firstLeadingBit(var_4), ~4702u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.a.b)) + vec2<f32>(var_1, _wgslsmith_f_op_f32(var_2.d.a.b.x * _wgslsmith_f_op_f32(-1707f + -481f)))), var_3.zw, all(select(select(!vec4<bool>(true, var_2.d.b, var_0.b, var_0.b), select(vec4<bool>(var_2.c.x, false, var_0.b, var_2.c.x), vec4<bool>(true, var_0.a.d, false, var_2.c.x), true), vec4<bool>(true, true, true, true)), vec4<bool>(false, var_2.d.b, var_0.a.d, !var_2.d.a.d), true)));
    var var_6 = Struct_4(!vec4<bool>(var_0.b, true, true, true), Struct_1(min(var_0.a.a >> (var_5.a % vec3<u32>(32u)), ~max(var_2.d.a.a, vec3<u32>(0u, 0u, var_4))), vec2<f32>(1240f, 1582f), var_2.d.e, any(!vec3<bool>(var_5.d, true, var_2.c.x))), Struct_2(~var_0.d.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_5.b + var_2.d.a.b))));
    var var_7 = _wgslsmith_f_op_f32(step(-750f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.x) * -108f), _wgslsmith_f_op_f32(-var_5.b.x))));
    let var_8 = max(~(~(~reverseBits(vec4<u32>(var_4, 6909u, var_0.a.a.x, 18197u)))), select(vec4<u32>(var_2.d.e.x, var_2.d.e.x, _wgslsmith_dot_vec2_u32(~var_2.d.a.c, ~var_5.c), var_2.d.e.x), reverseBits(var_3), select(select(!var_6.a, !vec4<bool>(var_6.a.x, var_6.b.d, var_6.a.x, true), -289f <= var_6.c.b.x), vec4<bool>(var_5.d, false, 0u != var_5.a.x, false), vec4<bool>(var_5.c.x <= 0u, any(var_6.a), var_2.d.a.b.x < -240f, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.d, ~(~var_2.d.d));
}

