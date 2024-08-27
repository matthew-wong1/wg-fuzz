struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(i32(-2147483648), 2147483647i, 35953i), vec3<i32>(30525i, 22528i, -11809i), vec3<i32>(3609i, 2147483647i, -1i), vec3<i32>(2147483647i, 61031i, 0i), vec3<i32>(-35258i, 26381i, 2147483647i), vec3<i32>(-1i, -15379i, 1i), vec3<i32>(7562i, i32(-2147483648), -21021i), vec3<i32>(2147483647i, 1541i, -5354i), vec3<i32>(25754i, -10940i, -1715i), vec3<i32>(-1i, 733i, -43196i), vec3<i32>(-1i, -110888i, -21382i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = ~_wgslsmith_div_vec2_u32(global0.xy, abs(vec2<u32>(select(36504u, 2696u, true), global0.x)));
    let var_1 = firstTrailingBit(u_input.d) >> (select(firstLeadingBit(vec3<u32>(var_0.x, 1u, global0.x)), vec3<u32>(_wgslsmith_clamp_u32(1u, 29260u | var_0.x, _wgslsmith_sub_u32(global0.x, 30720u)), ~var_0.x, ~_wgslsmith_div_u32(u_input.a, global0.x)), vec3<bool>(true, true, true)) % vec3<u32>(32u));
    return u_input.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-461f, -374f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(143f, _wgslsmith_f_op_f32(f32(-1f) * -2083f), any(vec3<bool>(false, false, true))))));
    let var_1 = global1[_wgslsmith_index_u32(75364u, 11u)];
    let var_2 = ~func_3();
    return Struct_2(Struct_1(vec3<bool>(false, true, false), var_1.x, ~(~0u), -2147483647i, !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_4) -> vec4<i32> {
    let var_0 = select(select(vec2<bool>(arg_2.e.e.x, false), vec2<bool>(~4294967295u <= func_3(), true || arg_2.b.x), !func_2(max(vec4<i32>(1i, -19531i, u_input.b, 31864i), vec4<i32>(0i, -1i, arg_2.d, -14323i)), ~u_input.b).a.e), select(arg_2.c.a.e, func_2(vec4<i32>(arg_2.a, 17652i, -20631i, u_input.b) & vec4<i32>(0i, u_input.b, arg_2.c.a.b, arg_2.e.b), u_input.c << (~29802u % 32u)).a.e, select(vec2<bool>(!arg_2.c.a.a.x, !arg_2.b.x), arg_2.c.a.a.zx, select(!vec2<bool>(arg_2.c.a.a.x, arg_2.e.a.x), func_2(vec4<i32>(arg_2.e.d, u_input.d.x, arg_2.e.b, arg_2.d), 1i).a.e, false))), !func_2(vec4<i32>(max(17255i, -2147483647i), -16357i, ~u_input.c, u_input.c), arg_2.d).a.e);
    var var_1 = -22952i;
    var var_2 = abs(~_wgslsmith_add_i32(arg_2.d, 0i));
    let var_3 = any(!(!(!vec4<bool>(arg_2.b.x, false, false, var_0.x))));
    var var_4 = vec4<i32>(~reverseBits(_wgslsmith_mult_i32(arg_2.d, abs(1i))), -u_input.d.x, -1142i, abs(-u_input.b));
    return select(~(vec4<i32>(var_4.x, u_input.b, u_input.b, -1548i) | (vec4<i32>(arg_2.d, u_input.b, arg_2.d, -2147483647i) | vec4<i32>(u_input.c, 6883i, u_input.c, 1i))) >> (arg_1 % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(var_4.x | _wgslsmith_add_i32(var_4.x, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d, u_input.d.x, 0i, -1i), vec4<i32>(u_input.c, var_4.x, 31165i, -41219i) >> (arg_1 % vec4<u32>(32u)))), u_input.b, ~(-u_input.c >> (1u % 32u)), 63102i), !vec4<bool>(all(vec2<bool>(false, arg_2.b.x)), var_3, var_3, all(arg_2.c.a.a.yx)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = firstTrailingBit(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 1114f)))), vec4<u32>(~arg_2.c, ~_wgslsmith_sub_u32(62521u, global0.x), min(arg_2.c, ~u_input.a), 4294967295u), Struct_4(countOneBits(-49098i) << (arg_2.c % 32u), select(vec2<bool>(true, arg_2.a.x), select(vec2<bool>(arg_2.e.x, true), vec2<bool>(arg_2.e.x, false), vec2<bool>(arg_2.e.x, arg_2.e.x)), vec2<bool>(true, true)), func_2(select(vec4<i32>(u_input.b, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, 3729i, -2147483647i, arg_0.x), vec4<bool>(true, arg_2.e.x, arg_2.a.x, arg_2.e.x)), ~0i), select(-arg_0.x, firstTrailingBit(-2147483647i), arg_2.a.x), Struct_1(!vec3<bool>(arg_2.e.x, arg_2.a.x, false), _wgslsmith_dot_vec3_i32(vec3<i32>(-27700i, arg_2.d, 2147483647i), u_input.d), global0.x, abs(u_input.c), vec2<bool>(arg_2.a.x, true)))));
    var var_2 = Struct_3(arg_2);
    global1 = array<vec3<i32>, 11>();
    global1 = array<vec3<i32>, 11>();
    return Struct_2(func_2(select(vec4<i32>(1i, abs(0i), -1844i, arg_2.b), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, -26683i, 2147483647i, u_input.d.x)), vec4<i32>(u_input.c, 0i, 1i, var_2.a.b), vec4<i32>(-3386i, arg_2.d, 9163i, 12246i) << (vec4<u32>(arg_2.c, arg_2.c, global0.x, var_2.a.c) % vec4<u32>(32u))), !select(vec4<bool>(false, false, var_2.a.a.x, arg_2.e.x), vec4<bool>(var_2.a.e.x, arg_2.e.x, false, var_2.a.e.x), var_2.a.e.x)), u_input.d.x).a);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<bool>(false, arg_3.a.a.x);
    global1 = array<vec3<i32>, 11>();
    var_0 = !(!arg_3.a.e);
    var var_1 = 1u;
    var var_2 = vec2<f32>(arg_1.x, 138f);
    return Struct_2(Struct_1(func_2(countOneBits(vec4<i32>(arg_2, 0i, arg_3.a.d, arg_2)) << (~vec4<u32>(arg_0.c.a.c, 4294967295u, arg_0.c.a.c, arg_0.e.c) % vec4<u32>(32u)), ~arg_2).a.a, -2147483647i, (0u | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.a.c, 73087u, 4294967295u), vec3<u32>(arg_0.c.a.c, arg_3.a.c, arg_0.c.a.c))) & _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.c.a.c, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a, 0u), vec3<u32>(94182u, 0u, global0.x))), 0i, select(arg_0.b, arg_3.a.e, !(!var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<u32>(1u, firstLeadingBit(firstTrailingBit(1u) & _wgslsmith_sub_u32(u_input.a, u_input.a)), global0.x);
    let var_0 = func_5(Struct_4(-1i, !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), func_1(-vec3<i32>(u_input.b, -15028i, -13950i) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 1u, global0.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(753f, -1330f)), _wgslsmith_f_op_f32(414f * 171f))), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), ~u_input.d.x, ~global0.x, 1i, select(vec2<bool>(false, true), vec2<bool>(false, false), true))), -u_input.c, Struct_1(vec3<bool>(false, all(vec4<bool>(true, false, false, true)), true), ~u_input.b & u_input.d.x, ~1u, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -68481i, 1i, u_input.c), vec4<i32>(-2147483647i, u_input.c, -1i, -28240i)), vec2<bool>(func_2(vec4<i32>(2147483647i, u_input.b, u_input.d.x, u_input.d.x), u_input.c).a.a.x, false))), vec4<f32>(-1706f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-848f - 1170f) * 1129f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1158f, 293f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(323f, 1354f, false)), _wgslsmith_f_op_f32(-646f + 255f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(380f)), 886f))), _wgslsmith_f_op_f32(489f * _wgslsmith_div_f32(495f, _wgslsmith_div_f32(1963f, 1045f)))), u_input.d.x, Struct_2(Struct_1(vec3<bool>(true, false, true), ~select(u_input.c, u_input.d.x, true), ~(global0.x & 4294967295u), -(~u_input.b), vec2<bool>(true, true))));
    let var_1 = var_0;
    global0 = ~vec3<u32>(0u, _wgslsmith_clamp_u32(func_3() | var_0.a.c, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, u_input.a), min(1u, 0u)), ~var_0.a.c << (~global0.x % 32u)), var_0.a.c);
    let var_2 = 4294967295u;
    let var_3 = ~select(global1[_wgslsmith_index_u32(var_0.a.c, 11u)], firstLeadingBit(max(vec3<i32>(-71142i, u_input.b, var_1.a.d) | vec3<i32>(var_1.a.d, 52580i, -47547i), global1[_wgslsmith_index_u32(~global0.x, 11u)])), any(select(!vec2<bool>(var_0.a.e.x, var_1.a.a.x), !vec2<bool>(var_1.a.a.x, false), var_1.a.e.x && var_0.a.e.x)));
    global0 = ~vec3<u32>(reverseBits(0u), ~53080u, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, global0.x), 48187u, ~reverseBits(_wgslsmith_div_u32(countOneBits(4294967295u), ~global0.x)), var_3.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(464f, 614f)))))));
}

