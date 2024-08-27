struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    var var_0 = Struct_5(select(vec4<bool>(true, true, !all(vec2<bool>(false, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))));
    let var_1 = Struct_5(var_0.a);
    var var_2 = select(var_1.a.yx, var_1.a.zx, false);
    var var_3 = 0u;
    let var_4 = Struct_1(reverseBits(~firstTrailingBit(-arg_2.x)), ~(28124u & u_input.a.x), vec2<i32>(arg_2.x, reverseBits(arg_2.x)));
    return 0u >> ((89183u & countOneBits(var_4.b)) % 32u);
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(203f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -822f))))))));
    return abs(-_wgslsmith_mod_i32(0i, 1i));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = arg_0.x;
    var var_1 = vec4<u32>(abs(~arg_3 ^ ~arg_3), arg_2 >> (((4294967295u | arg_3) & func_2(4294967295u, Struct_4(u_input.b), vec3<i32>(-1i, -16969i, 10848i), -559f)) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3, 108958u, 4294967295u, 54816u), vec4<u32>(53443u, 0u, 55016u, 1805u), abs(vec4<u32>(arg_2, 1u, 107904u, arg_3))), vec4<u32>(arg_3, ~u_input.b.x, min(arg_2, arg_3), ~0u)), arg_3) & ~vec4<u32>(~select(arg_3, arg_3, arg_1), 1u, _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), ~89803u);
    let var_2 = min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-func_3(293f, Struct_5(vec4<bool>(arg_1, true, false, arg_1)), arg_1), _wgslsmith_sub_i32(countOneBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 2147483647i), vec3<i32>(11781i, -33978i, -1i)))), _wgslsmith_div_vec2_i32(vec2<i32>(min(1i, 4987i), -515i), ~max(vec2<i32>(27077i, 9388i), vec2<i32>(22885i, 2147483647i))), max(vec2<i32>(~7378i, _wgslsmith_mult_i32(-2436i, 59791i)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 7571i), vec2<i32>(-1i, -33743i)), reverseBits(vec2<i32>(-31024i, -2147483647i))))), min(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, func_3(1643f, Struct_5(vec4<bool>(true, true, arg_1, true)), arg_1)), vec2<i32>(~3789i, -2147483647i)), vec2<i32>(1i, 1i)));
    let var_3 = ~(-6807i);
    let var_4 = 8744u;
    return Struct_3(Struct_1(abs(1i), abs(1u), ~reverseBits(var_2)), Struct_1(abs(var_2.x & _wgslsmith_add_i32(48219i, var_2.x)), ~0u, vec2<i32>(_wgslsmith_sub_i32(1i, var_3) & select(36315i, 0i, true), var_2.x)), true, 4631u >> (arg_2 % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = ~arg_2.b ^ _wgslsmith_mod_u32(arg_1.a.b, arg_0.a.b);
    var var_1 = vec3<bool>(all(vec3<bool>(false, any(vec3<bool>(arg_0.c, false, false)), false)), true, arg_1.c);
    let var_2 = abs(~select(arg_2.c, _wgslsmith_sub_vec2_i32(abs(arg_0.b.c), vec2<i32>(-71254i, 11609i)), (arg_2.c.x >= arg_0.a.a) != var_1.x));
    var_1 = vec3<bool>(arg_1.c, arg_0.c || (u_input.b.x > u_input.b.x), arg_1.c);
    var_1 = select(vec3<bool>(true, !select(any(vec4<bool>(arg_0.c, false, true, arg_0.c)), arg_0.c, true), ~_wgslsmith_mult_u32(var_0, 58971u) < arg_0.a.b), !select(!select(vec3<bool>(var_1.x, arg_1.c, arg_0.c), vec3<bool>(true, false, true), vec3<bool>(true, arg_1.c, true)), select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), arg_1.c), vec3<bool>(true, var_1.x, arg_1.c), func_1(vec4<f32>(1628f, 1481f, -656f, 583f), true, arg_0.b.b, var_0).c), all(!vec3<bool>(true, arg_1.c, arg_1.c))), !select(vec3<bool>(all(vec4<bool>(var_1.x, arg_0.c, arg_1.c, true)), !arg_1.c, !var_1.x), vec3<bool>(var_1.x, true, true), !(!arg_0.c)));
    return func_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(-717f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-693f * _wgslsmith_f_op_f32(f32(-1f) * -713f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1866f)) - -1118f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1212f * _wgslsmith_f_op_f32(step(-486f, 1000f))))), !(~(~1u) > arg_0.b.b), ~3690u, 26664u);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = !select(arg_3.a, select(arg_3.a, vec3<bool>(true, true, true), arg_1.c), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1759f, 746f, 429f, 1686f), vec4<f32>(348f, 292f, -1304f, -482f))), !arg_2.c, arg_3.e, arg_2.b.b ^ 52431u).c);
    var_0 = select(vec3<bool>(true, !func_4(func_4(arg_1, arg_1, Struct_1(arg_3.b.x, 1u, arg_3.b.zy)), Struct_3(arg_2.b, arg_2.b, true, 49485u), func_4(arg_2, arg_1, arg_2.b).b).c, true), select(select(select(!arg_3.a, vec3<bool>(arg_2.c, false, true), vec3<bool>(true, true, true)), select(!vec3<bool>(arg_2.c, true, false), vec3<bool>(arg_2.c, false, true), arg_3.a), vec3<bool>(false, true, arg_2.c)), !select(!vec3<bool>(true, false, var_0.x), vec3<bool>(arg_1.c, arg_2.c, false), arg_3.a.x), vec3<bool>(arg_3.a.x, any(arg_3.a), func_4(Struct_3(arg_1.b, Struct_1(12337i, arg_1.d, arg_2.a.c), arg_2.c, arg_0), Struct_3(Struct_1(arg_3.b.x, arg_1.a.b, vec2<i32>(arg_1.b.c.x, arg_3.b.x)), arg_2.a, arg_2.c, 31251u), Struct_1(-11993i, 1u, arg_3.b.xz)).c)), true);
    let var_1 = Struct_2(select(select(vec3<bool>(any(vec3<bool>(true, true, arg_2.c)), all(vec4<bool>(arg_2.c, arg_3.a.x, arg_3.a.x, var_0.x)), true), !arg_3.a, true), vec3<bool>(arg_3.a.x, func_4(func_4(arg_1, arg_2, Struct_1(arg_1.a.c.x, 1u, vec2<i32>(arg_1.a.a, 3029i))), arg_1, arg_2.a).c, arg_3.a.x), false), ~arg_3.b, ~(~(_wgslsmith_clamp_u32(arg_2.a.b, arg_2.a.b, 22110u) & _wgslsmith_add_u32(arg_3.c, u_input.a.x))), select(vec4<u32>(select(~arg_0, arg_0, true), ~_wgslsmith_sub_u32(arg_1.b.b, 26025u), ~(~41025u), max(87293u, 1u)), abs(~vec4<u32>(arg_0, 98844u, 11697u, 1u) >> (min(arg_3.d, vec4<u32>(31471u, 1u, 1884u, u_input.b.x)) % vec4<u32>(32u))), !arg_2.c), ~4294967295u);
    var var_2 = select(!vec2<bool>(true, arg_3.a.x), !(!var_0.xz), !select(arg_3.a.zy, !vec2<bool>(var_0.x, true), !select(vec2<bool>(true, true), var_0.zx, arg_3.a.xz)));
    var_0 = select(vec3<bool>(arg_1.c, false, false), vec3<bool>(var_0.x, all(vec3<bool>(arg_2.c, arg_1.c | arg_3.a.x, true)), true), vec3<bool>(!(true | arg_1.c) || true, true, true));
    return 476f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(-1757f, _wgslsmith_f_op_f32(func_5(u_input.b.x, func_4(Struct_3(Struct_1(3206i, 39227u, vec2<i32>(-2147483647i, -2147483647i)), Struct_1(-20006i, 8670u, vec2<i32>(27285i, -58648i)), true, u_input.b.x ^ 4294967295u), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, -1242f, -115f, 2220f) * vec4<f32>(1000f, -2125f, 460f, -693f)), any(vec2<bool>(false, true)), 0u, u_input.b.x), func_1(vec4<f32>(142f, -1000f, -510f, 203f), func_1(vec4<f32>(-391f, 616f, 675f, -1199f), false, 1u, 4294967295u).c, _wgslsmith_div_u32(0u, 19911u), abs(u_input.a.x)).b), func_1(vec4<f32>(_wgslsmith_div_f32(-1191f, -1423f), -974f, _wgslsmith_f_op_f32(ceil(-366f)), -1293f), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -42744i, 0i), vec4<i32>(2147483647i, -9765i, 7585i, 2147483647i)) < _wgslsmith_add_i32(2147483647i, -42202i), _wgslsmith_div_u32(u_input.a.x, u_input.b.x), 1u), Struct_2(vec3<bool>(true, true, true), vec3<i32>(_wgslsmith_div_i32(28907i, -1i), ~1i, _wgslsmith_add_i32(0i, -2147483647i)), 13638u, ~vec4<u32>(18751u, u_input.b.x, 20041u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_u32(u_input.a.x, func_4(Struct_3(Struct_1(-172i, u_input.a.x, vec2<i32>(-43677i, 1i)), Struct_1(0i, u_input.a.x, vec2<i32>(-2147483647i, 1i)), true, u_input.b.x), Struct_3(Struct_1(1i, 18653u, vec2<i32>(-660i, 44758i)), Struct_1(73738i, 32643u, vec2<i32>(1i, 0i)), true, u_input.a.x), Struct_1(0i, u_input.b.x, vec2<i32>(-36607i, -1i))).a.b)))), true));
    var var_1 = vec3<bool>(func_4(Struct_3(func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1492f, 802f, var_0, var_0))), all(vec3<bool>(true, false, true)), 4294967295u, 0u).b, Struct_1(abs(-1i), _wgslsmith_div_u32(u_input.a.x, u_input.b.x), reverseBits(vec2<i32>(14844i, 2147483647i))), true, ~0u), Struct_3(func_4(func_4(Struct_3(Struct_1(0i, 58918u, vec2<i32>(0i, -33933i)), Struct_1(-2147483647i, 22683u, vec2<i32>(-40673i, 33957i)), true, 1u), Struct_3(Struct_1(-38706i, 26188u, vec2<i32>(29255i, 0i)), Struct_1(-2147483647i, 94285u, vec2<i32>(-1i, -2147483647i)), true, u_input.a.x), Struct_1(-26414i, u_input.b.x, vec2<i32>(24039i, -2147483647i))), func_4(Struct_3(Struct_1(-23797i, u_input.a.x, vec2<i32>(7612i, -65015i)), Struct_1(-15612i, 0u, vec2<i32>(-28928i, 1i)), false, 21181u), Struct_3(Struct_1(1i, u_input.a.x, vec2<i32>(45340i, -2123i)), Struct_1(-1i, u_input.b.x, vec2<i32>(-2147483647i, -1i)), true, 1u), Struct_1(0i, 16109u, vec2<i32>(-2147483647i, 1i))), func_4(Struct_3(Struct_1(18781i, 0u, vec2<i32>(2147483647i, 1i)), Struct_1(-2147483647i, 134530u, vec2<i32>(52150i, 33236i)), false, u_input.b.x), Struct_3(Struct_1(-2147483647i, u_input.a.x, vec2<i32>(1i, -28030i)), Struct_1(-27494i, u_input.a.x, vec2<i32>(-1i, 17929i)), false, 12962u), Struct_1(-1i, 0u, vec2<i32>(56109i, 16944i))).a).a, Struct_1(1i, u_input.b.x, vec2<i32>(2147483647i, 0i) << (u_input.b.zz % vec2<u32>(32u))), false, ~(~u_input.b.x)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, 989f, var_0, var_0))), any(vec3<bool>(true, true, true)), ~66532u, ~53719u).a).c, (37469u << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.b), u_input.a.x) % 32u)) < func_4(func_4(Struct_3(Struct_1(2147483647i, u_input.a.x, vec2<i32>(35341i, -1i)), Struct_1(35849i, u_input.b.x, vec2<i32>(24252i, 2147483647i)), true, 1u), func_4(Struct_3(Struct_1(1i, 32219u, vec2<i32>(-25637i, 1i)), Struct_1(-28575i, u_input.b.x, vec2<i32>(2147483647i, 7945i)), false, u_input.b.x), Struct_3(Struct_1(-1i, u_input.a.x, vec2<i32>(2328i, 19179i)), Struct_1(2147483647i, u_input.a.x, vec2<i32>(7769i, 20169i)), false, 68398u), Struct_1(0i, 1u, vec2<i32>(1i, 6610i))), func_4(Struct_3(Struct_1(-2147483647i, 0u, vec2<i32>(0i, 16615i)), Struct_1(1i, 4294967295u, vec2<i32>(-1i, 58149i)), true, u_input.a.x), Struct_3(Struct_1(-6365i, 70615u, vec2<i32>(0i, 19086i)), Struct_1(0i, 1u, vec2<i32>(12118i, 1i)), true, u_input.b.x), Struct_1(2147483647i, 1u, vec2<i32>(20099i, 0i))).a), Struct_3(func_1(vec4<f32>(var_0, var_0, -395f, 1081f), false, u_input.a.x, 4294967295u).a, func_4(Struct_3(Struct_1(1i, u_input.b.x, vec2<i32>(-2147483647i, 1i)), Struct_1(0i, u_input.b.x, vec2<i32>(-2147483647i, 2147483647i)), false, u_input.a.x), Struct_3(Struct_1(-1i, u_input.a.x, vec2<i32>(49833i, 2147483647i)), Struct_1(2147483647i, 14689u, vec2<i32>(4160i, -1i)), false, u_input.b.x), Struct_1(1i, u_input.b.x, vec2<i32>(-26204i, -9859i))).b, all(vec3<bool>(false, false, false)), u_input.b.x), Struct_1(i32(-1i) * -1i, firstLeadingBit(u_input.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(41406i, 42884i)))).d, u_input.a.x != (min(~u_input.b.x, u_input.a.x >> (u_input.a.x % 32u)) & ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)));
    var var_2 = max(vec4<i32>(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -726f), Struct_5(vec4<bool>(var_1.x, false, true, true)), var_1.x), i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(1i, -2147483647i, -4211i))), -vec3<i32>(0i, 2147483647i, -2147483647i)), -35491i), ~abs(abs(vec4<i32>(1i, 1i, 1i, 1i))));
    var var_3 = Struct_5(select(select(!select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, false), vec4<bool>(false, true, var_1.x, false)), !vec4<bool>(false, var_1.x, true, var_1.x), all(!vec4<bool>(true, var_1.x, false, var_1.x))), select(!(!vec4<bool>(true, var_1.x, true, true)), vec4<bool>(true, false, true, any(vec2<bool>(false, true))), true), false));
    let var_4 = any(var_3.a);
    var_1 = var_3.a.zzz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, var_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(var_0, 1017f), var_1.x))))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(160f)), var_0)))));
}

