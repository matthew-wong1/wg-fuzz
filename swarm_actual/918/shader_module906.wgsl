struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<f32>, 28>;

var<private> global2: array<vec4<bool>, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-356f, arg_0.b.a.x))));
    global2 = array<vec4<bool>, 12>();
    global2 = array<vec4<bool>, 12>();
    var var_1 = !arg_0.a.x || true;
    var var_2 = ~vec2<i32>(u_input.a.x | select(u_input.a.x, i32(-1i) * -16937i, arg_0.a.x && false), 1i);
    return var_2.x ^ 2147483647i;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    global0 = ~vec2<u32>(64733u, ~1u);
    var var_0 = ~(~_wgslsmith_add_u32(61701u, _wgslsmith_mult_u32(37897u, 4388u)));
    var var_1 = arg_1.a.x;
    let var_2 = arg_0.b.a.xzz;
    var_0 = countOneBits(38119u);
    return ~(~u_input.b);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = arg_3;
    let var_1 = arg_0;
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, func_3(Struct_4(vec2<bool>(false, false), Struct_1(arg_3, global1[_wgslsmith_index_u32(4294967295u, 28u)], false, vec4<i32>(arg_2, 7847i, u_input.a.x, arg_2))), Struct_4(select(vec2<bool>(false, false), vec2<bool>(false, false), false), Struct_1(arg_3, vec2<f32>(-1301f, var_0.x), false, u_input.a)))), select(~_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(1u, u_input.b)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(37792u, u_input.b), vec2<u32>(4294967295u, arg_0)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(70454u, global0.x), vec2<u32>(4294967295u, arg_0)), vec2<u32>(0u, 47159u)), max(vec2<u32>(38210u, arg_0), vec2<u32>(global0.x, global0.x)) >> (select(vec2<u32>(28202u, var_1), vec2<u32>(var_1, 0u), true) % vec2<u32>(32u))), vec2<bool>(!(var_0.x >= arg_1), false)));
    let var_2 = false;
    return Struct_3(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(25012u, 4294967295u >> (var_1 % 32u)), vec2<u32>(1u, firstLeadingBit(39807u)))), ~u_input.a.wz, 34412i, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_3))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-325f, var_0.x)), select(var_2, var_2, false) & true, u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_3), arg_3, vec4<bool>(false, false, var_2, false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(var_0.zy, arg_3.yz)))), !var_2, u_input.a)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1252f, arg_1, arg_3.x, 414f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-462f, 476f))), true & (-1000f != arg_1), select(vec4<i32>(u_input.a.x, 11102i, 0i, arg_2), select(u_input.a, vec4<i32>(arg_2, -2147483647i, -29430i, arg_2), true), !var_2)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1139f, var_0.x) * vec4<f32>(var_0.x, -726f, arg_3.x, -473f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_3.zw, vec2<f32>(var_0.x, -1988f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, var_0.x), var_0.zz, var_2))), true, select(vec4<i32>(0i, arg_2, u_input.a.x, u_input.a.x), u_input.a, global2[_wgslsmith_index_u32(34116u, 12u)]) | -vec4<i32>(u_input.a.x, -27439i, 25334i, u_input.a.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> i32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-759f, -1292f)), arg_0.e.a.b.x, arg_0.e.b.a.x))));
    var_1 = vec3<f32>(678f, 224f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -716f))));
    var var_2 = Struct_4(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), var_0), select(vec2<bool>(false, true), vec2<bool>(false, var_0), vec2<bool>(true, var_0)), vec2<bool>(arg_0.e.a.c, arg_0.e.b.c)), vec2<bool>(var_0, var_0 || true), max(-731i, -2147483647i) != u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(func_2(36922u, _wgslsmith_f_op_f32(f32(-1f) * -2490f), countOneBits(-5598i), _wgslsmith_f_op_vec4_f32(arg_0.e.b.a * vec4<f32>(arg_0.e.b.a.x, arg_0.e.a.a.x, var_1.x, -175f))).e.a.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.e.a.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(global0.x, 28u)]))), _wgslsmith_f_op_vec2_f32(var_1.zx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1044f, 1972f)))), true, _wgslsmith_mult_vec4_i32(vec4<i32>(-42480i, arg_1.x, 1i, u_input.a.x), vec4<i32>(710i, -29819i, u_input.a.x, -12528i) >> (vec4<u32>(u_input.b, global0.x, 67985u, 0u) % vec4<u32>(32u))) | vec4<i32>(select(arg_1.x, u_input.a.x, true), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), -arg_1.x, _wgslsmith_add_i32(3884i, arg_0.b.x))));
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0.x, 37154u), 0u, arg_0.a, ~arg_0.a), vec4<u32>(firstTrailingBit(~arg_0.a), select(4294967295u, arg_0.a & 4294967295u, any(select(global2[_wgslsmith_index_u32(global0.x, 12u)], vec4<bool>(arg_0.e.b.c, var_2.b.c, arg_0.d.a.c, true), vec4<bool>(true, var_2.a.x, false, false)))), 0u, ~arg_0.a), vec4<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_div_u32(u_input.b, 46397u), u_input.b), 51356u, 17364u, ~(~arg_0.a)));
    return -u_input.a.x >> (abs(u_input.b) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1632f;
    global0 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(~31864u), firstTrailingBit(u_input.b | u_input.b)), vec2<u32>(~19178u, ~(~44734u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, global0.x), ~vec2<u32>(73616u, u_input.b ^ global0.x)));
    let var_1 = Struct_4(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(-2147483647i == u_input.a.x, all(vec4<bool>(false, false, false, true)))), !(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 41293i, u_input.a.x), u_input.a.zxw) != func_1(Struct_4(vec2<bool>(false, false), Struct_1(vec4<f32>(-1000f, 2338f, -2055f, 386f), vec2<f32>(-497f, -703f), true, u_input.a)), u_input.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-179f, -738f, -2362f, -2737f), vec4<f32>(-2049f, 2104f, -1569f, -1397f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(374f, -450f, -1000f, -977f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(43866u, 28u)], vec2<f32>(214f, 441f))))), false, u_input.a));
    var_0 = _wgslsmith_f_op_f32(ceil(var_1.b.a.x));
    global1 = array<vec2<f32>, 28>();
    var var_2 = -(~vec2<i32>(max(_wgslsmith_mod_i32(var_1.b.d.x, 53286i), -24038i), func_4(func_2(global0.x, -341f, u_input.a.x, vec4<f32>(334f, -173f, var_1.b.b.x, var_1.b.a.x)), vec4<i32>(-1830i, -1i, -2931i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_div_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(22026i, var_2.x, u_input.a.x), var_1.b.d.www), abs(u_input.a.x)), 63874i), u_input.a.x), abs(vec2<i32>(1i, -2147483647i)), var_1.b.d, func_3(Struct_4(select(vec2<bool>(var_1.b.c, false), select(vec2<bool>(var_1.b.c, var_1.b.c), var_1.a, vec2<bool>(true, var_1.a.x)), !var_1.b.c), var_1.b), Struct_4(vec2<bool>(var_1.a.x, true), func_2(~111090u, -485f, -2357i, _wgslsmith_f_op_vec4_f32(var_1.b.a - var_1.b.a)).e.b)), vec3<i32>(1i, _wgslsmith_mod_i32(-7712i, -u_input.a.x), ~var_1.b.d.x));
}

