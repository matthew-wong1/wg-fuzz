struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(16048i, -48022i, 20548i), vec3<i32>(i32(-2147483648), -37023i, 12054i), vec3<i32>(0i, 2147483647i, -35947i), vec3<i32>(56544i, 2147483647i, 31649i), vec3<i32>(-20901i, 1i, -1i), vec3<i32>(2147483647i, 62849i, -11306i), vec3<i32>(2147483647i, 62434i, -16317i));

var<private> global2: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = arg_0.d.c & _wgslsmith_div_u32(_wgslsmith_div_u32(abs(1u) >> (~arg_3.b.c % 32u), ~(~5114u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~arg_3.d.x, _wgslsmith_mod_u32(52940u, 466u)), _wgslsmith_div_u32(70215u, ~61976u), u_input.c.x));
    let var_1 = vec4<i32>(_wgslsmith_div_i32(-1i, arg_3.c), min(countOneBits(-38351i), 0i), _wgslsmith_sub_i32(~min(arg_0.c.b.x >> (4294967295u % 32u), 14512i), -31664i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_3.a.a.x, global2.a.b.x, -20205i), abs(vec3<i32>(-1i, arg_0.d.a.x, 2147483647i))), -(i32(-1i) * -global2.a.a.x), u_input.a.x));
    global0 = select(!(!vec2<bool>(select(true, true, global0.x), any(vec2<bool>(arg_0.b.x, global0.x)))), !arg_1.yz, vec2<bool>(true, true));
    var var_2 = ~_wgslsmith_clamp_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(37571u, global2.d.x), u_input.c.yx << (global2.d % vec2<u32>(32u))), global2.d ^ ~arg_0.e, !vec2<bool>(global0.x, true)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global2.d, vec2<u32>(1u, global2.a.c)), u_input.c.xx), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c.x, global2.d.x), arg_3.d));
    var var_3 = Struct_1(var_1, vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(arg_0.d.a.zzy, (u_input.a << (u_input.c % vec3<u32>(32u))) ^ max(vec3<i32>(arg_3.b.a.x, 39142i, -2147483647i), global2.b.a.wzy)), select(~(-17032i), -11346i, arg_0.b.x), ~var_1.x), arg_0.a.c);
    return vec4<i32>(reverseBits(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, arg_0.c.a.x), var_3.b.x)), _wgslsmith_div_i32(-935i << (~var_2.x % 32u), max(reverseBits(54606i) << ((u_input.c.x << (arg_3.a.c % 32u)) % 32u), 1i)), arg_0.d.b.x, 1i ^ global2.b.b.x);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<vec3<i32>, 7>();
    global2 = Struct_3(Struct_1(_wgslsmith_add_vec4_i32(func_3(Struct_2(global2.a, vec4<bool>(global0.x, false, global0.x, global0.x), global2.a, global2.a, vec2<u32>(20268u, global2.a.c)), vec3<bool>(false, true, global0.x), arg_0.zy, Struct_3(Struct_1(global2.a.b, vec4<i32>(global2.b.b.x, u_input.a.x, 13969i, global2.c), u_input.c.x), global2.a, -9772i, global2.d)), global2.b.a), vec4<i32>(~u_input.a.x, -28003i, abs(global2.c), reverseBits(-2147483647i)) << (~(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 1u) << (vec4<u32>(global2.d.x, global2.a.c, global2.a.c, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~firstLeadingBit(_wgslsmith_mult_u32(global2.a.c, 53595u))), Struct_1(~vec4<i32>(-18368i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), firstTrailingBit(-44242i), u_input.b.x), select(_wgslsmith_mult_vec4_i32(global2.a.a, firstTrailingBit(global2.a.b)), vec4<i32>(i32(-1i) * -1i, countOneBits(7216i), u_input.b.x ^ -1i, -4971i), !select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x))), 1u), ~38399i, u_input.c.xy);
    var var_0 = !(!select(vec2<bool>(any(vec4<bool>(true, false, true, false)), true), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x), !vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(false, global0.x))), vec2<bool>(false, true)));
    let var_1 = vec4<bool>(var_0.x, var_0.x, any(vec4<bool>((arg_0.x > arg_0.x) && !global0.x, var_0.x, false, all(select(vec4<bool>(var_0.x, false, true, global0.x), vec4<bool>(false, false, var_0.x, var_0.x), var_0.x)))), false);
    var_0 = select(var_1.wy, vec2<bool>(true, true), select(select(!(!var_1.zy), var_1.yw, all(!var_1.zxx)), var_1.xx, global0.x));
    return global2.b;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_3 {
    global1 = array<vec3<i32>, 7>();
    var var_0 = Struct_3(global2.b, func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-581f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -694f), -638f)), global2.a.b.x, ~vec2<u32>(16191u, _wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, u_input.c.x), vec3<u32>(0u, 4294967295u, 9544u), vec3<u32>(14372u, 1u, 4294967295u)))));
    var var_1 = Struct_3(Struct_1(arg_2, ~(arg_2 & _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, global2.b.b.x, u_input.b.x, -2147483647i), vec4<i32>(-1i, 2147483647i, -2147483647i, arg_2.x))), ~reverseBits(var_0.b.c)), Struct_1(_wgslsmith_div_vec4_i32(global2.b.a, vec4<i32>(-2653i, u_input.b.x, global2.b.b.x, -2147483647i)) ^ _wgslsmith_clamp_vec4_i32(arg_2 << (vec4<u32>(global2.a.c, global2.a.c, 1u, 0u) % vec4<u32>(32u)), firstTrailingBit(var_0.b.a), func_2(vec3<f32>(-480f, 667f, 254f)).a), vec4<i32>(1i, 2147483647i, ~min(u_input.b.x, arg_2.x), 1i), var_0.b.c), i32(-1i) * -(max(global2.c, 68565i) | 2147483647i), abs(vec2<u32>(~arg_0, 25053u) << (abs(u_input.c.yz) % vec2<u32>(32u))));
    let var_2 = Struct_3(var_1.a, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1620f, 1093f, -838f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-1074f)), _wgslsmith_f_op_f32(step(285f, 647f)), _wgslsmith_f_op_f32(sign(-260f))))), -2147483647i, ~_wgslsmith_add_vec2_u32(arg_1.zz, vec2<u32>(func_2(vec3<f32>(1725f, 111f, 237f)).c, abs(arg_1.x))));
    var_0 = Struct_3(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2400f, -103f, -1114f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1907f, -275f, 287f)), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(238f, -842f, 272f)))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(471f, 516f), _wgslsmith_f_op_f32(567f + 1249f), _wgslsmith_f_op_f32(f32(-1f) * -811f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1827f, 760f, 933f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, -1646f, 2047f) - vec3<f32>(-1408f, 418f, -1203f)), false)))), u_input.a.x, ~(~(~vec2<u32>(u_input.c.x, 4294967295u))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(~_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.c.x, global2.d.x, u_input.c.x, global2.a.c)), firstTrailingBit(~vec4<u32>(u_input.c.x, 4294967295u, 23918u, u_input.c.x))), vec3<u32>(abs(global2.a.c), u_input.c.x, u_input.c.x), vec4<i32>(0i, max(~(-37624i), _wgslsmith_mult_i32(~(-7408i), u_input.b.x)), ~(~29406i), -2430i));
    let var_0 = Struct_2(global2.b, vec4<bool>(false, any(!vec4<bool>(global0.x, false, global0.x, false)), false, -2147483647i == u_input.b.x), Struct_1(_wgslsmith_add_vec4_i32(global2.a.a, -global2.b.b), global2.a.b, countOneBits(global2.b.c | 1u)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-320f, 1047f, -362f))))))), abs(~((vec2<u32>(9310u, 101969u) & global2.d) | vec2<u32>(u_input.c.x, 43106u))));
    let var_1 = 2824u >= _wgslsmith_sub_u32(reverseBits(firstTrailingBit(select(2040u, 67820u, var_0.b.x))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c.x, global2.d.x, ~var_0.e.x), _wgslsmith_clamp_u32(~global2.d.x, ~var_0.e.x, 10472u)));
    var var_2 = func_1(func_1(_wgslsmith_mult_u32(~42970u, global2.b.c) >> (19128u % 32u), ~u_input.c, _wgslsmith_clamp_vec4_i32(max(vec4<i32>(-53399i, u_input.b.x, global2.b.a.x, var_0.a.b.x), vec4<i32>(u_input.b.x, 0i, 0i, u_input.b.x)) ^ _wgslsmith_mod_vec4_i32(global2.b.a, global2.a.b), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, 51523i, var_0.a.b.x)), -1i, global2.a.a.x, max(global2.a.b.x, 0i)), global2.b.b)).a.c, u_input.c, -(~var_0.c.b & ~global2.b.a) >> (reverseBits(vec4<u32>(~var_0.e.x, ~51829u, func_2(vec3<f32>(-632f, -1000f, 1180f)).c, ~u_input.c.x)) % vec4<u32>(32u)));
    let var_3 = true;
    global1 = array<vec3<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(-673f, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_2.a.a.x, var_2.a.b.x), firstLeadingBit(global2.c)), vec2<i32>(_wgslsmith_sub_i32(var_2.a.b.x, ~43936i), 39066i)), -_wgslsmith_div_vec3_i32((u_input.a & vec3<i32>(var_0.d.a.x, var_0.d.b.x, var_0.d.a.x)) | _wgslsmith_sub_vec3_i32(var_0.a.b.xyw, vec3<i32>(var_0.c.a.x, u_input.b.x, 1i)), ~vec3<i32>(global2.a.b.x, var_0.a.a.x, 2828i) & -var_2.b.a.wyx), 1u);
}

