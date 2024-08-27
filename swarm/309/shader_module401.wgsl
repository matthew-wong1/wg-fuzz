struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<f32>(885f, 985f), -724f, vec4<u32>(36038u, 5927u, 4294967295u, 0u)), Struct_3(vec2<f32>(500f, -517f), 1000f, vec4<u32>(75723u, 4294967295u, 0u, 28368u)), Struct_3(vec2<f32>(-1279f, -700f), 104f, vec4<u32>(1u, 0u, 1u, 52541u)), Struct_3(vec2<f32>(-568f, 732f), -284f, vec4<u32>(0u, 4294967295u, 5528u, 32599u)), Struct_3(vec2<f32>(203f, -646f), 2088f, vec4<u32>(35569u, 1172u, 4294967295u, 26337u)), Struct_3(vec2<f32>(-1000f, -161f), 2673f, vec4<u32>(4294967295u, 24946u, 53542u, 14198u)), Struct_3(vec2<f32>(1642f, -1916f), -258f, vec4<u32>(1u, 17940u, 4294967295u, 1u)), Struct_3(vec2<f32>(2113f, -894f), 1413f, vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_3(vec2<f32>(-1166f, 526f), 1670f, vec4<u32>(0u, 23734u, 21356u, 3943u)), Struct_3(vec2<f32>(147f, -1161f), 1000f, vec4<u32>(0u, 35651u, 14554u, 29673u)), Struct_3(vec2<f32>(-145f, 665f), 104f, vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), Struct_3(vec2<f32>(-1962f, -472f), -1000f, vec4<u32>(0u, 27586u, 4294967295u, 0u)), Struct_3(vec2<f32>(-1000f, -538f), 434f, vec4<u32>(78741u, 1u, 1u, 4064u)), Struct_3(vec2<f32>(1750f, 402f), -418f, vec4<u32>(57699u, 50840u, 0u, 0u)), Struct_3(vec2<f32>(-1140f, 282f), 810f, vec4<u32>(26826u, 4294967295u, 2908u, 0u)), Struct_3(vec2<f32>(1105f, 1815f), 476f, vec4<u32>(1u, 1u, 0u, 37394u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 16u)];
    global0 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f - var_0.b));
    var_1 = _wgslsmith_f_op_f32(min(203f, _wgslsmith_f_op_f32(ceil(var_0.b))));
    var var_2 = Struct_1(vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 6678u, u_input.b.x), vec3<u32>(var_0.c.x, 4294967295u, 118470u)) << (1u % 32u), u_input.b.x));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(min(2003f, -779f))), var_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a, var_0.a), var_0.a)))), all(vec2<bool>(select(!global1.x, true, true || global1.x), global1.x))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = false;
    global1 = select(!(!(!select(vec4<bool>(true, true, global1.x, arg_1), vec4<bool>(arg_1, false, global1.x, var_0), vec4<bool>(arg_1, global1.x, arg_1, arg_1)))), select(!select(!vec4<bool>(false, arg_1, arg_1, true), select(vec4<bool>(true, true, var_0, true), vec4<bool>(var_0, var_0, arg_1, false), var_0), true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(global1.x, global1.x, arg_1, true), vec4<bool>(true, var_0, false, var_0))), select(all(global1.xx), arg_1, !any(global1.xz))), !select(vec4<bool>(var_0, any(vec2<bool>(var_0, arg_1)), true, all(vec2<bool>(arg_1, var_0))), select(vec4<bool>(false, arg_1, false, global1.x), !vec4<bool>(true, arg_1, true, true), !vec4<bool>(arg_1, false, global1.x, false)), select(select(vec4<bool>(var_0, var_0, global1.x, false), vec4<bool>(true, global1.x, global1.x, arg_1), vec4<bool>(global1.x, true, arg_1, var_0)), !vec4<bool>(false, arg_1, false, true), any(vec3<bool>(arg_1, arg_1, var_0)))));
    let var_1 = arg_3;
    var var_2 = var_1.a.zy;
    var var_3 = var_1.a.x;
    return min(reverseBits(u_input.b.x), 0u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = ~(arg_0.a ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 7509u) << (vec3<u32>(4294967295u, 4607u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(33874u, arg_0.a.x, 0u), arg_0.a) >> (~arg_0.a % vec3<u32>(32u))));
    var var_1 = select(~(~(~arg_0.a.yz)) ^ ~min(arg_0.a.yz & vec2<u32>(var_0.x, arg_0.a.x), vec2<u32>(54461u, 70291u)), _wgslsmith_mult_vec2_u32(var_0.yx, arg_0.a.zy), select(arg_2, !select(global1.yy, select(arg_2, global1.xy, global1.yz), !arg_2.x), arg_2));
    var var_2 = -1354f;
    var var_3 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_4 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, reverseBits(3800u ^ u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(12483u, 0u, arg_0.a.x), var_1.x, 4294967295u)), (~arg_0.a ^ ~vec3<u32>(u_input.b.x, var_0.x, 0u)) ^ vec3<u32>(1u, func_3(-1289f, global1.x, arg_1.x, arg_0), ~2430u)));
    return Struct_2(3905u, vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), max(vec4<i32>(min(u_input.c, u_input.a.x), 669i, _wgslsmith_add_i32(u_input.c, -1i), -1i) << (abs(select(vec4<u32>(1u, u_input.b.x, arg_0.a.x, 5317u), vec4<u32>(var_0.x, var_4.a.x, 53740u, var_4.a.x), global1.x)) % vec4<u32>(32u)), countOneBits(vec4<i32>(1i, -2147483647i, ~1i, -u_input.c))), global0[_wgslsmith_index_u32(~var_4.a.x, 7u)], arg_0);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_2(func_1(Struct_1(vec3<u32>(0u, ~arg_0.a, 4294967295u)), u_input.a, vec2<bool>(!global1.x, global1.x)).e.a.x, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_f32(exp2(arg_0.b.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(387f, 1901f)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -674f))), arg_0.c, func_1(global0[_wgslsmith_index_u32(~39050u, 7u)], arg_0.c.zz, !select(select(global1.yz, global1.wy, true), !global1.xx, false)).e, func_1(Struct_1(~vec3<u32>(0u, arg_0.d.a.x, arg_0.d.a.x)), _wgslsmith_sub_vec2_i32(u_input.a, ~vec2<i32>(u_input.a.x, 51576i)), !vec2<bool>(global1.x, all(vec2<bool>(global1.x, global1.x)))).d);
    global1 = select(select(vec4<bool>(global1.x, false || all(global1.yxx), false, select(global1.x | global1.x, var_0.a < var_0.e.a.x, true)), !select(!vec4<bool>(global1.x, global1.x, global1.x, true), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, true, false, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), true)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, false, true, global1.x)), vec4<bool>(false, global1.x, true, true), vec4<bool>(global1.x, global1.x, true, global1.x))), !(!select(!vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), select(vec4<bool>(global1.x, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(global1.x, global1.x, true, false)))), vec4<bool>(global1.x, !(_wgslsmith_f_op_f32(-arg_0.b.x) != -1315f), global1.x, all(vec3<bool>(select(global1.x, false, global1.x), !global1.x, global1.x | false))));
    var var_1 = global1.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 1000f) - _wgslsmith_f_op_vec2_f32(ceil(arg_0.b.zx)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zz))), var_0.b.x, vec4<u32>(24113u, _wgslsmith_sub_u32(60004u, _wgslsmith_add_u32(var_0.e.a.x ^ u_input.b.x, var_0.e.a.x)), countOneBits(~(~1u)), 34361u));
    global1 = !(!vec4<bool>(all(global1.zyy) || any(vec2<bool>(false, true)), select(true, global1.x & global1.x, var_0.c.x >= 32627i), !(!global1.x), global1.x));
    return StorageBuffer(-1i, u_input.a.x, _wgslsmith_mult_vec2_i32(select(select(-var_0.c.yz, vec2<i32>(var_0.c.x, -5104i), global1.x), vec2<i32>(~arg_0.c.x, _wgslsmith_add_i32(u_input.c, var_0.c.x)), !(var_2.b == -1865f)), abs(vec2<i32>(-17912i, 1i))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 16>();
    let var_0 = 130243u;
    global0 = array<Struct_1, 7>();
    global2 = array<Struct_3, 16>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1595f))), -170f));
    let x = u_input.a;
    s_output = func_4(func_1(Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, 15160u, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(6182u, 0u, u_input.b.x), vec3<u32>(4294967295u, 0u, 22838u)))), reverseBits(u_input.a), vec2<bool>(true, _wgslsmith_f_op_f32(-412f - 1961f) == _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -1928f, -396f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 566f))))), ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, var_0), vec3<u32>(73440u, u_input.b.x, 68375u)), firstTrailingBit(vec3<u32>(var_0, u_input.b.x, u_input.b.x))) ^ (~abs(vec3<u32>(23587u, u_input.b.x, var_0)) >> (vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 0u), u_input.b.x, ~var_0) % vec3<u32>(32u))));
}

