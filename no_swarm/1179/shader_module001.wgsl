struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: vec4<i32> = vec4<i32>(33986i, 0i, i32(-2147483648), i32(-2147483648));

var<private> global2: Struct_2 = Struct_2(-6934i, vec2<bool>(false, false), Struct_1(vec2<bool>(true, false), vec4<f32>(-1174f, 317f, 486f, -1000f), false, vec2<i32>(-14137i, -6023i), 718f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4) -> i32 {
    var var_0 = true;
    let var_1 = Struct_2(global2.a ^ max(~2147483647i, -abs(8015i)), vec2<bool>(any(vec3<bool>(global2.c.c, global2.c.c, arg_2.b.x)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, -471i, -11639i, 0i)), vec4<i32>(global1.x, global1.x, arg_0, global2.c.d.x)) >= ~(-global1.x)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1039f, -592f, arg_2.a, -838f), vec4<f32>(arg_2.a, -545f, 499f, global2.c.e)) * arg_1), arg_2.b.x, _wgslsmith_mod_vec2_i32(global2.c.d | global1.yz, vec2<i32>(arg_0, u_input.b) | vec2<i32>(-24367i, arg_0)) << (vec2<u32>(max(u_input.c, 1u), 40041u) % vec2<u32>(32u)), arg_1.x));
    global0 = array<vec3<f32>, 4>();
    var var_2 = Struct_5(Struct_1(select(!(!arg_2.b), !select(var_1.b, vec2<bool>(global2.b.x, var_1.c.a.x), var_1.b.x), 2147483647i > ~arg_0), _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(_wgslsmith_f_op_f32(var_1.c.e - 846f), -1000f, -362f, _wgslsmith_f_op_f32(f32(-1f) * -806f))), arg_2.b.x, vec2<i32>(global2.c.d.x ^ -1i, 1i) & -(vec2<i32>(var_1.c.d.x, 30912i) >> (arg_2.c % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.e), -451f))), arg_1.x, select(~(~(~565u)), ~(~36801u << (~arg_2.c.x % 32u)), all(!select(vec3<bool>(false, true, true), vec3<bool>(arg_2.b.x, false, false), global2.c.a.x))), var_1.c);
    var var_3 = Struct_1(!arg_2.b, global2.c.b, any(!select(vec4<bool>(var_1.b.x, arg_2.b.x, global2.c.c, true), !vec4<bool>(var_1.c.a.x, global2.b.x, true, false), !vec4<bool>(true, true, var_1.c.c, true))), vec2<i32>(global2.a, -_wgslsmith_add_i32(79037i, select(arg_0, -2147483647i, true))), -625f);
    return 8801i;
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    global2 = Struct_2(func_3(1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(586f, 1f, _wgslsmith_f_op_f32(-914f * -354f), _wgslsmith_f_op_f32(-1311f + global2.c.e)) - global2.c.b), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1076f - global2.c.b.x) + _wgslsmith_f_op_f32(-global2.c.b.x)), select(select(vec2<bool>(global2.c.a.x, true), vec2<bool>(global2.b.x, true), global2.c.c), global2.b, vec2<bool>(global2.c.c, global2.b.x)), select(firstTrailingBit(vec2<u32>(11935u, arg_0.x)), ~arg_0.zx, true))), vec2<bool>(global2.b.x, global2.b.x), Struct_1(global2.b, global2.c.b, false, vec2<i32>(-1i, global2.c.d.x), global2.c.b.x));
    let var_0 = Struct_4(-1816f, !global2.c.a, _wgslsmith_div_vec2_u32(arg_0.zw, vec2<u32>(105334u, 4294967295u)));
    global0 = array<vec3<f32>, 4>();
    let var_1 = ~reverseBits(var_0.c);
    var var_2 = Struct_5(Struct_1(!select(select(vec2<bool>(global2.c.c, true), var_0.b, vec2<bool>(false, var_0.b.x)), var_0.b, vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.b.x, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(895f * 725f)), 658f, var_0.a), var_0.b.x, ~(-_wgslsmith_sub_vec2_i32(global2.c.d, global2.c.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 900f))))), 952f, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, ~var_0.c.x), _wgslsmith_clamp_vec2_u32(arg_0.zy >> (var_1 % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(var_1, vec2<u32>(4294967295u, var_1.x)), vec2<u32>(4294967295u, var_0.c.x) << (vec2<u32>(599u, arg_0.x) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.c), var_1 | vec2<u32>(u_input.c, 74322u)), vec2<u32>(4294967295u, ~15216u), ~(~vec2<u32>(var_1.x, 22767u)))), Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, global2.c.c), var_0.b.x & true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global2.c.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -785f, 356f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2835f, 1043f, -937f, -1000f))), global2.c.a.x, global2.c.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(f32(-1f) * -1875f))))));
    return var_0;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.b.x));
    var var_1 = firstLeadingBit(vec4<u32>(select(func_2(vec4<u32>(u_input.c, arg_0, 19744u, arg_0)).c.x, arg_1.c.x, arg_2.c.a.x) << (6348u % 32u), arg_1.c.x, ~(~0u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(51128u, 1u, arg_1.c.x, 1u), vec4<u32>(0u, u_input.c, u_input.c, 31976u)), vec4<u32>(u_input.c, 4718u, _wgslsmith_mod_u32(arg_1.c.x, 0u), u_input.c))));
    let var_2 = select(vec3<bool>(!(!(arg_1.c.x == 0u)), false, !(true & (var_0 <= 228f))), select(select(vec3<bool>(u_input.a != global1.x, !arg_1.b.x, arg_1.b.x), !select(vec3<bool>(arg_1.b.x, global2.b.x, arg_1.b.x), vec3<bool>(arg_2.c.c, arg_2.b.x, arg_1.b.x), false), all(select(vec4<bool>(arg_2.b.x, true, arg_2.b.x, global2.b.x), vec4<bool>(false, arg_1.b.x, arg_2.b.x, false), vec4<bool>(true, arg_1.b.x, false, true)))), !select(!vec3<bool>(global2.b.x, true, global2.b.x), !vec3<bool>(arg_1.b.x, global2.b.x, arg_1.b.x), true), !(!(!vec3<bool>(arg_1.b.x, global2.c.a.x, true)))), select(select(!(!vec3<bool>(arg_2.b.x, arg_1.b.x, false)), vec3<bool>(true, true, true), arg_2.c.c), select(select(vec3<bool>(arg_2.b.x, false, arg_2.b.x), vec3<bool>(true, true, false), 10605i > global1.x), !vec3<bool>(global2.c.a.x, arg_2.c.a.x, arg_1.b.x), arg_1.b.x), vec3<bool>(!global2.c.a.x || false, all(vec3<bool>(arg_2.b.x, true, true)) && all(vec4<bool>(false, true, false, global2.b.x)), func_2(~vec4<u32>(arg_0, arg_0, arg_0, 90036u)).b.x)));
    global1 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(arg_2.c.d.x), min(-global2.a, _wgslsmith_dot_vec3_i32(global1.yzz, global1.yzw)), min(firstLeadingBit(1i), reverseBits(global1.x)), 4821i), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(global2.c.d.x, 18947i, global1.x, arg_2.c.d.x)), -vec4<i32>(-1i, 33090i, -46740i, 26744i)) >> (vec4<u32>(arg_0, 1u, u_input.c, 8743u) % vec4<u32>(32u))), ~(-vec4<i32>(0i, -1i, 4388i, -7971i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(5671i, arg_2.a, 0i, 24903i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, -11800i, -18924i), vec4<i32>(-1i, global2.a, -30943i, -1i)))));
    var var_3 = Struct_1(select(global2.c.a, var_2.xz, !vec2<bool>(func_2(vec4<u32>(u_input.c, 0u, 5070u, 0u)).b.x, true && var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(506f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, -461f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, var_0))))), _wgslsmith_f_op_f32(step(arg_2.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f))))), arg_2.c.a.x, _wgslsmith_sub_vec2_i32(select(min(vec2<i32>(arg_2.a, u_input.a), ~global1.yy), vec2<i32>(-1i) * -vec2<i32>(arg_2.c.d.x, 1i), any(!vec4<bool>(global2.b.x, arg_2.c.c, global2.b.x, false))), vec2<i32>(-global1.x, select(arg_2.c.d.x, 0i, false)) | vec2<i32>(func_3(arg_2.a, arg_2.c.b, Struct_4(-1000f, vec2<bool>(var_2.x, false), var_1.xw)), u_input.b)), _wgslsmith_f_op_f32(-1000f + -148f));
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<u32>) -> bool {
    var var_0 = func_2(_wgslsmith_add_vec4_u32(arg_2, vec4<u32>(_wgslsmith_sub_u32(~102509u, 74681u), ~min(29871u, u_input.c), max(abs(arg_2.x), _wgslsmith_sub_u32(0u, u_input.c)), 30828u)));
    var var_1 = func_4(~(~0u), Struct_4(832f, !var_0.b, (countOneBits(vec2<u32>(10364u, u_input.c)) ^ (arg_3.xy >> (arg_3.xy % vec2<u32>(32u)))) ^ vec2<u32>(_wgslsmith_sub_u32(4294967295u, arg_3.x), 24655u)), func_4(1u, func_2(~firstTrailingBit(arg_2)), Struct_2(29428i >> (1u % 32u), !select(vec2<bool>(global2.b.x, arg_1.c.a.x), vec2<bool>(true, var_0.b.x), false), Struct_1(var_0.b, _wgslsmith_f_op_vec4_f32(-arg_1.c.b), !var_0.b.x, vec2<i32>(2147483647i, arg_0), 170f))));
    let var_2 = true;
    global2 = Struct_2(-10289i, select(func_2(arg_2).b, vec2<bool>(!arg_1.b.x, all(select(vec3<bool>(false, var_2, var_1.b.x), vec3<bool>(arg_1.b.x, var_0.b.x, true), arg_1.b.x))), !func_4(arg_2.x, func_2(arg_2), Struct_2(-45630i, var_0.b, Struct_1(vec2<bool>(global2.b.x, var_0.b.x), vec4<f32>(-1562f, 1000f, 188f, var_1.c.e), false, arg_1.c.d, arg_1.c.e))).c.a), global2.c);
    let var_3 = 0u;
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_5(-(arg_1.a.x >> (firstTrailingBit(min(20649u, arg_0)) % 32u)), func_4(_wgslsmith_mod_u32(u_input.c, firstLeadingBit(u_input.c)), func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, arg_0, 57715u, u_input.c), vec4<u32>(10856u, 20539u, 20143u, arg_0), vec4<u32>(arg_0, 48441u, 77711u, 4294967295u)) | ~vec4<u32>(u_input.c, u_input.c, 7837u, arg_0)), Struct_2(-1i, !global2.c.a, Struct_1(arg_2.xz, global2.c.b, false || global2.b.x, max(arg_1.a.yx, vec2<i32>(0i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<u32>(arg_0, arg_0, u_input.c, 58762u) ^ (~(vec4<u32>(79438u, 4294967295u, 1799u, u_input.c) ^ vec4<u32>(11719u, 0u, u_input.c, u_input.c)) >> (select(~vec4<u32>(24811u, u_input.c, 1u, u_input.c), vec4<u32>(arg_0, arg_0, arg_0, 4294967295u), select(arg_2, arg_2, global2.b.x)) % vec4<u32>(32u))), vec3<u32>(u_input.c, select(u_input.c, _wgslsmith_add_u32(firstLeadingBit(9236u), ~arg_0), _wgslsmith_f_op_f32(-global2.c.e) > _wgslsmith_f_op_f32(f32(-1f) * -1289f)), u_input.c));
    return func_4(63200u, func_2(vec4<u32>(_wgslsmith_div_u32(~4294967295u, ~arg_0), u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, u_input.c, 1u, 4294967295u), vec4<u32>(1u, u_input.c, 4454u, 4294967295u)), ~vec4<u32>(u_input.c, arg_0, arg_0, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(23913u, arg_0), ~vec2<u32>(u_input.c, arg_0)))), func_4(arg_0, Struct_4(1f, global2.b, ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(91243u, 0u))), func_4(arg_0, Struct_4(936f, vec2<bool>(arg_2.x, false), vec2<u32>(541u, 45399u) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), Struct_2(arg_3.a.x, arg_2.yy, Struct_1(vec2<bool>(global2.b.x, true), vec4<f32>(global2.c.b.x, global2.c.e, global2.c.e, -526f), false, global2.c.d, global2.c.b.x))))).c;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> u32 {
    global2 = func_4(u_input.c, func_2(vec4<u32>((u_input.c | 0u) ^ _wgslsmith_div_u32(u_input.c, 32371u), u_input.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 59452u, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c) & vec4<u32>(u_input.c, u_input.c, 4294967295u, 23081u)), u_input.c)), arg_0);
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(23987i, global2.a, -2147483647i, global1.x), vec4<i32>(global1.x, ~(-8718i) | (1i | u_input.a), 1i, 1i)), vec4<i32>(-1i) * -vec4<i32>(-global1.x, 0i, func_3(global1.x, vec4<f32>(140f, arg_0.c.e, 376f, -598f), Struct_4(arg_0.c.b.x, vec2<bool>(arg_0.c.c, false), vec2<u32>(67900u, 17198u))), global1.x ^ arg_1.a));
    global1 = var_0;
    var var_1 = Struct_3(vec3<i32>(-2147483647i, u_input.a | _wgslsmith_mult_i32(u_input.a, ~u_input.b), select(_wgslsmith_add_i32(2199i, _wgslsmith_add_i32(0i, u_input.a)), abs(2147483647i), arg_1.b.x)));
    let var_2 = select(vec3<bool>(1i > global1.x, true || ((-1984f > arg_1.c.e) && func_5(32847i, arg_1, vec4<u32>(u_input.c, u_input.c, 24029u, u_input.c), vec3<u32>(1u, 4294967295u, 46590u))), arg_0.c.a.x), vec3<bool>(true, !arg_1.b.x, func_1(4294967295u, Struct_3(vec3<i32>(arg_1.c.d.x, var_0.x, -2147483647i)), select(vec4<bool>(arg_1.c.c, false, false, arg_0.b.x), vec4<bool>(arg_1.b.x, false, arg_1.c.a.x, true), false), Struct_3(vec3<i32>(arg_0.c.d.x, arg_1.c.d.x, global2.a))).e <= _wgslsmith_f_op_f32(global2.c.e * -1000f)), !(arg_1.b.x & arg_1.c.a.x));
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec2<u32>(func_6(Struct_2(select(global2.c.d.x, global2.a, false), vec2<bool>(global2.c.a.x, true), global2.c), Struct_2(-1i, vec2<bool>(true, false), func_1(12196u, Struct_3(vec3<i32>(global1.x, global2.c.d.x, -2147483647i)), vec4<bool>(false, global2.b.x, true, global2.b.x), Struct_3(vec3<i32>(2147483647i, u_input.b, global2.c.d.x)))), global2.c.c), func_2(vec4<u32>(~35254u, 73378u, 7802u, 1u)).c.x));
    var var_1 = Struct_1(select(!(!select(global2.c.a, vec2<bool>(false, global2.b.x), global2.b.x)), global2.c.a, global2.b.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f + -1263f) * _wgslsmith_div_f32(global2.c.e, -1493f)), _wgslsmith_f_op_f32(step(-942f, func_4(1u, Struct_4(global2.c.b.x, vec2<bool>(true, global2.b.x), vec2<u32>(0u, 43598u)), func_4(44072u, Struct_4(global2.c.b.x, vec2<bool>(false, true), vec2<u32>(1u, var_0.x)), Struct_2(0i, global2.c.a, Struct_1(vec2<bool>(global2.c.c, false), global2.c.b, global2.c.c, vec2<i32>(47312i, u_input.a), -875f)))).c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.e, _wgslsmith_f_op_f32(1813f - -558f)) + _wgslsmith_f_op_f32(floor(-1124f))), func_1(_wgslsmith_add_u32(~25288u, _wgslsmith_sub_u32(u_input.c, var_0.x)), Struct_3(global1.zzx | global1.yxz), !vec4<bool>(true, global2.c.a.x, global2.b.x, global2.b.x), Struct_3(~global1.www)).e), true, _wgslsmith_clamp_vec2_i32(global1.yx, vec2<i32>(max(~u_input.a, -13886i), max(abs(global1.x), ~global1.x)), global2.c.d), _wgslsmith_f_op_f32(-911f + -1000f));
    global1 = ~(firstTrailingBit(select(vec4<i32>(var_1.d.x, u_input.b, u_input.b, 2147483647i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 20081i), vec4<bool>(true, false, true, global2.c.a.x)) << (vec4<u32>(13708u, u_input.c, var_0.x, var_0.x) % vec4<u32>(32u))) << (select(vec4<u32>(_wgslsmith_mult_u32(var_0.x, 53082u), 1u, u_input.c, 29113u), _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.c, 53766u, 73503u, 0u), vec4<u32>(18033u, var_0.x, 38270u, var_0.x)), select(vec4<u32>(0u, var_0.x, u_input.c, 410u), vec4<u32>(var_0.x, 29209u, 0u, var_0.x), vec4<bool>(true, global2.b.x, false, true))), select(!vec4<bool>(global2.b.x, global2.c.a.x, global2.b.x, var_1.a.x), vec4<bool>(true, true, var_1.c, true), select(vec4<bool>(true, var_1.c, false, global2.c.c), vec4<bool>(false, var_1.c, global2.c.c, var_1.a.x), vec4<bool>(false, false, false, global2.b.x)))) % vec4<u32>(32u)));
    global1 = _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(firstLeadingBit(max(vec4<i32>(var_1.d.x, 6778i, -2147483647i, -2147483647i), vec4<i32>(1i, -29589i, var_1.d.x, 0i))), vec4<i32>(reverseBits(var_1.d.x), -25976i, var_1.d.x ^ -51465i, 0i), firstTrailingBit(vec4<i32>(global2.a, global1.x, var_1.d.x, var_1.d.x) >> (vec4<u32>(33979u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)))), reverseBits(_wgslsmith_div_vec4_i32(-vec4<i32>(-24673i, global1.x, 5021i, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1837i, -2147483647i, global2.a), vec4<i32>(-28960i, global2.c.d.x, 3177i, -39182i)))) & ~vec4<i32>(var_1.d.x, func_4(0u, Struct_4(-1335f, var_1.a, vec2<u32>(0u, 1u)), Struct_2(0i, vec2<bool>(true, false), global2.c)).c.d.x, 64211i, -1i));
    global2 = Struct_2(u_input.b, global2.c.a, global2.c);
    global1 = vec4<i32>(-51338i, -2147483647i, abs(-4399i), u_input.b);
    global0 = array<vec3<f32>, 4>();
    global2 = func_4(4294967295u, func_2(countOneBits(vec4<u32>(u_input.c, var_0.x, 0u, 4294967295u)) ^ vec4<u32>(func_2(vec4<u32>(25087u, var_0.x, u_input.c, var_0.x)).c.x, _wgslsmith_add_u32(1u, var_0.x), var_0.x, u_input.c | u_input.c)), Struct_2(-6853i | global2.a, global2.b, func_1(4294967295u, Struct_3(~vec3<i32>(-1i, -2147483647i, global2.a)), vec4<bool>(var_1.a.x & global2.b.x, !global2.b.x, true, global2.c.a.x), Struct_3(_wgslsmith_mod_vec3_i32(global1.zzy, global1.xyz)))));
    global2 = Struct_2(-1i, !vec2<bool>(false, func_5(_wgslsmith_mult_i32(var_1.d.x, global2.a), func_4(6297u, Struct_4(var_1.e, var_1.a, vec2<u32>(var_0.x, var_0.x)), Struct_2(3154i, var_1.a, Struct_1(vec2<bool>(true, false), global2.c.b, false, global1.zw, var_1.b.x))), vec4<u32>(7642u, var_0.x, 1u, 32294u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(1u, u_input.c, 0u)))), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.d.x, var_0.x, -2147483647i, countOneBits(global2.a), var_0.x);
}

