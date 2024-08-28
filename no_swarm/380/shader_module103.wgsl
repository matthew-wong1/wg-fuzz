struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6>;

var<private> global1: array<u32, 32> = array<u32, 32>(1u, 41180u, 58235u, 8073u, 4294967295u, 10099u, 27046u, 4294967295u, 49945u, 1u, 1u, 1u, 1u, 34013u, 0u, 4294967295u, 21290u, 0u, 4294967295u, 4553u, 1u, 1u, 4294967295u, 39605u, 88794u, 1u, 37817u, 40800u, 1u, 63734u, 0u, 15239u);

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(min(-1387f, arg_1)), arg_2.b);
    let var_1 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -9774i, 0i), vec3<i32>(1i, 33347i, -26245i)), -21910i)), _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, 1i), firstTrailingBit(_wgslsmith_mult_i32(1i, -9782i)))) >> (11492u % 32u);
    return select(select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), !select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), false), vec2<bool>(all(vec4<bool>(var_1 == var_1, -1i <= var_1, 187f != arg_0.x, true)), select(all(vec4<bool>(true, true, false, false)), true, true)), true);
}

fn func_2() -> Struct_2 {
    global2 = array<Struct_1, 16>();
    let var_0 = Struct_4(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_f_op_f32(f32(-1f) * -1003f), 1f, 306f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1170f, 993f, 205f)))), _wgslsmith_f_op_f32(trunc(834f)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1780f, -1461f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1944f), vec2<f32>(-165f, 628f), vec2<bool>(true, true))), vec2<bool>(true, false))))), Struct_1(false, _wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(2147483647i, 36429i, 2249i)), select(firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, 29128i)), ~vec3<i32>(-87745i, -12423i, -2147483647i), false)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1254f)) * 1587f), _wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1027f, -2130f, false)) - -837f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1437f, -2544f, -491f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-784f, -1491f, -1347f))))), vec2<i32>(1i, _wgslsmith_div_i32(1i, ~21837i))), Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1081f)), _wgslsmith_f_op_f32(-1863f * 707f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1526f, 291f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1157f, -209f), vec2<f32>(-1408f, 2591f))))))), select(select(vec4<bool>(true, false, all(vec4<bool>(true, false, false, true)), global1[_wgslsmith_index_u32(u_input.a, 32u)] >= global1[_wgslsmith_index_u32(4294967295u, 32u)]), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, true), false), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, true))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), global2[_wgslsmith_index_u32(u_input.b.x, 16u)]);
    let var_1 = _wgslsmith_mult_u32(19591u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)]);
    global2 = array<Struct_1, 16>();
    global0 = array<vec3<u32>, 6>();
    return Struct_2(var_1 << (var_1 % 32u), Struct_1(true, -var_0.e.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.x, var_0.e.c.x, var_0.e.d.x) - vec3<f32>(var_0.c.a, -1000f, var_0.b.d.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(473f, 323f, var_0.b.c.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.x, _wgslsmith_f_op_f32(-693f + var_0.b.c.x), var_0.c.a)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, abs(var_0.b.b)), ~vec2<i32>(-28609i, var_0.e.e.x) & ~vec2<i32>(-28368i, var_0.e.e.x))), u_input.a);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.b.d.zy), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b.c.x, 751f), vec2<f32>(arg_0.b.d.x, 1317f))), any(vec4<bool>(true, arg_0.b.a, arg_0.b.a, true)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.b.c.zy))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.b.c.xy)))) * _wgslsmith_f_op_vec2_f32(arg_0.b.d.yx - arg_0.b.c.zy));
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.b.c.yx);
    var_0 = arg_0.b.c.yx;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.c.yz * vec2<f32>(-1000f, -1012f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, arg_0.b.d.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 372f) - arg_0.b.c.yx)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 1222f))))) + arg_0.b.c.xy));
    var var_1 = arg_0.b.a;
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.b.c.x)), var_0.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f)), arg_0.b.d.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = false;
    let var_1 = !(!(!select(!vec3<bool>(true, arg_3.b.a, arg_3.b.a), !vec3<bool>(arg_3.b.a, true, arg_3.b.a), vec3<bool>(false, false, true))));
    global0 = array<vec3<u32>, 6>();
    global2 = array<Struct_1, 16>();
    let var_2 = _wgslsmith_div_vec2_f32(arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.b.c.xy)));
    return func_4(func_2());
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = select(_wgslsmith_dot_vec2_u32(u_input.b, abs(vec2<u32>(arg_1, 47483u))) << (34703u % 32u), ~(~(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(59441u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47687u, 32u)], 32u)]) & 4294967295u)), false);
    global2 = array<Struct_1, 16>();
    let var_1 = !select(vec4<bool>(all(func_3(vec4<f32>(arg_0, 716f, -1612f, -181f), 1208f, arg_2)), true, select(true, true, true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), !vec4<bool>(all(vec3<bool>(true, false, false)), true, all(vec3<bool>(false, false, false)), func_2().b.a));
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    return arg_2;
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), 236f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1250f * 1f) - _wgslsmith_f_op_f32(851f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)))));
    var var_1 = func_6(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-490f, -1368f)))))), 5696u, func_5(func_4(func_2()), countOneBits(abs(-vec4<i32>(-73629i, -1i, -36127i, -6744i))), u_input.a, Struct_2(0u, func_2().b, 0u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1431f, 1000f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1001f, 1011f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))), vec2<bool>((var_0 < -403f) && true, all(vec3<bool>(true, false, false))))));
    global0 = array<vec3<u32>, 6>();
    var var_2 = any(select(select(vec3<bool>(all(vec2<bool>(false, true)), true, true), vec3<bool>(true, true, true), (1u >> (0u % 32u)) != _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), vec3<bool>(true, u_input.a > (0u ^ u_input.b.x), false), true));
    return Struct_2(_wgslsmith_sub_u32(~(~(u_input.b.x >> (4294967295u % 32u))), 51816u), func_2().b, u_input.b.x);
}

fn func_7(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> StorageBuffer {
    global0 = array<vec3<u32>, 6>();
    var var_0 = !select(vec4<bool>(arg_0.b.a, all(vec3<bool>(arg_0.b.a, false, false)), !(!arg_0.b.a), any(vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a, false)) && !arg_0.b.a), vec4<bool>(arg_0.b.a, false, false, all(vec2<bool>(arg_0.b.a, arg_0.b.a)) || any(vec2<bool>(arg_0.b.a, arg_0.b.a))), !vec4<bool>(true, func_3(vec4<f32>(1000f, -1000f, arg_1.x, 2211f), -1327f, Struct_3(arg_0.b.c.x, arg_0.b.d.yy)).x, !arg_0.b.a, arg_0.b.a && arg_0.b.a));
    var_0 = vec4<bool>(any(select(var_0.zz, vec2<bool>(arg_0.b.a, any(vec2<bool>(true, arg_0.b.a))), func_2().b.a)), false, arg_0.b.a, any(select(!select(var_0.wzw, vec3<bool>(arg_0.b.a, arg_0.b.a, true), var_0.x), var_0.wyx, var_0.zyz)));
    let var_1 = min(~(-vec4<i32>(arg_0.b.b, 2147483647i, arg_0.b.e.x, 1i) | vec4<i32>(-3306i, -12846i, 0i, -1i)), firstLeadingBit(select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.e.x, arg_0.b.e.x, arg_2, 30733i), vec4<i32>(79653i, -10833i, arg_2, 1i)), min(vec4<i32>(arg_0.b.e.x, -2147483647i, arg_0.b.b, arg_2), vec4<i32>(-12580i, arg_2, arg_0.b.e.x, arg_2)), vec4<bool>(true, arg_0.b.a, false, true)))) << (~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], 32u)], 44240u, 46870u, 1u), ~vec4<u32>(13419u, arg_0.a, global1[_wgslsmith_index_u32(1u, 32u)], arg_0.a))) % vec4<u32>(32u));
    let var_2 = var_1;
    return StorageBuffer(17514i, var_1.wwx, global1[_wgslsmith_index_u32(countOneBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(31237u, 32u)], 1u, arg_0.a, arg_0.a), vec4<u32>(34356u, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)], 27702u)))), 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    global2 = array<Struct_1, 16>();
    global0 = array<vec3<u32>, 6>();
    var var_0 = u_input.b;
    let x = u_input.a;
    s_output = func_7(func_1(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(857f, -906f), vec2<f32>(-344f, -739f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, 295f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -4223f), vec2<f32>(-1000f, 602f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(999f, 1119f) * vec2<f32>(-394f, -824f)), vec2<f32>(1f, 1f))) + func_6(_wgslsmith_f_op_f32(-833f * 1000f), 58875u, Struct_3(393f, vec2<f32>(-673f, -1027f)), vec2<f32>(1f, 1f)).b)), ~1i << (_wgslsmith_div_u32(var_0.x, ~96888u) % 32u));
}

