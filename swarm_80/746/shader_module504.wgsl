struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(325f, 197f, -1489f, -688f), vec4<f32>(-555f, -765f, -259f, -715f), vec4<f32>(-773f, 1103f, -726f, 1312f), vec4<f32>(393f, 356f, -1120f, 108f), vec4<f32>(-336f, 1066f, 671f, -1274f), vec4<f32>(-893f, -671f, -139f, -778f), vec4<f32>(-487f, -577f, 520f, 328f), vec4<f32>(-451f, -390f, -153f, 1298f), vec4<f32>(-255f, -1372f, -963f, -1003f), vec4<f32>(-2083f, 922f, -1000f, 1441f), vec4<f32>(244f, 951f, 460f, 1818f), vec4<f32>(753f, 247f, 1221f, 308f));

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(29843u, 0u, 4181u, 14595u), vec4<u32>(4294967295u, 4294967295u, 51161u, 12237u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(0u, 175594u, 16511u, 2490u), vec4<u32>(33338u, 28234u, 1u, 21008u), vec4<u32>(42259u, 1u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 135434u), vec4<u32>(1u, 4294967295u, 1u, 27398u), vec4<u32>(80173u, 43565u, 45616u, 69681u), vec4<u32>(21756u, 0u, 4294967295u, 1u), vec4<u32>(31594u, 27441u, 40927u, 55832u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 54609u, 31694u), vec4<u32>(108324u, 4294967295u, 77278u, 1u), vec4<u32>(17888u, 0u, 102794u, 4294967295u), vec4<u32>(87879u, 0u, 18929u, 0u), vec4<u32>(34694u, 34336u, 4294967295u, 1u), vec4<u32>(17400u, 0u, 65778u, 61279u), vec4<u32>(53068u, 4294967295u, 69948u, 83549u), vec4<u32>(0u, 14158u, 27370u, 0u), vec4<u32>(0u, 23245u, 8509u, 0u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(40396u, 28906u, 4294967295u, 15963u), vec4<u32>(15433u, 0u, 14395u, 24991u), vec4<u32>(17901u, 0u, 4439u, 50664u), vec4<u32>(1u, 24430u, 0u, 4294967295u), vec4<u32>(44944u, 4294967295u, 1u, 4294967295u), vec4<u32>(23149u, 4294967295u, 17853u, 34161u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<f32>(600f, 1065f, 676f)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = array<vec4<f32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(step(631f, _wgslsmith_f_op_f32(select(global3.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a.x)), true))));
    var var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, -u_input.e.x), _wgslsmith_mod_i32(0i << (u_input.b % 32u), -2147483647i)), countOneBits(-(reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, 0i, 2147483647i)) | vec4<i32>(u_input.e.x, 9852i, u_input.e.x, u_input.d.x))));
    var_0 = _wgslsmith_f_op_f32(min(-246f, _wgslsmith_f_op_f32(max(global3.a.a.x, global3.a.a.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(global3.a.a.yz + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.a.a.x)), global3.a.a.x) + global3.a.a.yz));
    return global3.a.a.x == 572f;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    var var_0 = vec3<i32>(u_input.d.x, 107604i, max(u_input.e.x, u_input.a.x));
    var var_1 = true;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.a.x, arg_2, global3.a.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_3.a * arg_3.a)))))));
    return !vec4<bool>(arg_0, arg_1.x, false, select(func_3(), arg_1.x, arg_1.x));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_3 {
    global2 = array<vec4<u32>, 28>();
    var var_0 = arg_1.xz;
    global1 = array<vec4<f32>, 12>();
    let var_1 = vec3<bool>(false, !func_3(), ~min(_wgslsmith_sub_i32(arg_0, -1i), ~arg_1.x) != -31550i);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global3.a.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_3)))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(arg_3 + global3.a.a.x)) + _wgslsmith_f_op_f32(-1209f + global3.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - 1f) * _wgslsmith_f_op_f32(floor(arg_3)))), !all(select(var_1, !var_1, func_3()))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, 682f, 1000f, 618f), global1[_wgslsmith_index_u32(u_input.b, 12u)]), _wgslsmith_f_op_vec4_f32(ceil(global1[_wgslsmith_index_u32(42594u, 12u)]))) + global1[_wgslsmith_index_u32(firstTrailingBit(1u), 12u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -824f, -790f, arg_3))))), ~u_input.a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = (~abs(~vec3<u32>(u_input.c, 40722u, 4294967295u)) & ~(~vec3<u32>(u_input.c, 4294967295u, u_input.b) & ~vec3<u32>(u_input.c, u_input.b, 4294967295u))) ^ ~(~(~select(vec3<u32>(16650u, 5112u, 1u), vec3<u32>(u_input.c, u_input.b, u_input.c), vec3<bool>(false, false, false))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_1.a.a)));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<bool>) -> bool {
    let var_0 = func_5(func_4(-15483i, ~vec3<i32>(-u_input.e.x, ~u_input.d.x, 76776i), !func_2(true & arg_2.x, !arg_2, 1361f, Struct_1(vec3<f32>(349f, global3.a.a.x, 1209f))), _wgslsmith_div_f32(global3.a.a.x, _wgslsmith_f_op_f32(select(2135f, _wgslsmith_div_f32(global3.a.a.x, 566f), arg_2.x && false)))), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(global3.a.a.x)), _wgslsmith_f_op_f32(271f - global3.a.a.x), -205f))), _wgslsmith_f_op_vec2_f32(global3.a.a.yy + func_4(u_input.d.x, vec3<i32>(-19093i, ~1i, -35477i), vec4<bool>(true, !arg_2.x, global3.a.a.x <= 301f, true), -1740f).a.xy), func_4(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), max(vec3<i32>(53325i, -u_input.e.x, u_input.d.x), firstTrailingBit(u_input.d)), !(!vec4<bool>(true, arg_2.x, true, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.a.x) - -136f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a.x)), true))));
    global2 = array<vec4<u32>, 28>();
    global0 = array<Struct_2, 14>();
    let var_1 = min(vec4<i32>(u_input.e.x, _wgslsmith_div_i32(u_input.e.x, func_4(u_input.a.x, -vec3<i32>(-1i, u_input.e.x, 22087i), func_2(arg_2.x, arg_2, global3.a.a.x, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, global3.a.a.x))), _wgslsmith_f_op_f32(min(global3.a.a.x, var_0.a.x))).b.x), _wgslsmith_sub_i32(u_input.d.x, -u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.e.yy | u_input.d.yy, reverseBits(vec2<i32>(u_input.d.x, 1i))), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.d.x))), _wgslsmith_sub_vec4_i32(-(vec4<i32>(u_input.e.x, u_input.d.x, u_input.a.x, -11510i) ^ -vec4<i32>(-16779i, u_input.e.x, -18218i, u_input.e.x)), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.d.x, -12733i, -2147483647i), vec4<i32>(u_input.d.x, u_input.a.x, 5610i, u_input.d.x)))));
    global3 = global0[_wgslsmith_index_u32(u_input.b >> (0u % 32u), 14u)];
    return all(select(!select(select(vec4<bool>(false, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, false, true, arg_2.x), arg_2.x), func_2(arg_2.x, arg_2, 196f, global3.a), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)), vec4<bool>(func_3(), arg_2.x, all(vec4<bool>(arg_2.x, false, true, false)), arg_2.x), vec4<bool>(arg_2.x, !arg_2.x, arg_2.x, u_input.b <= 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(select(true, any(vec4<bool>(true, false, false, false)), func_1(vec4<u32>(u_input.c, 4294967295u, u_input.b, 1u), u_input.b, vec3<bool>(false, false, true))), !any(vec2<bool>(true, false))), func_2(true, select(func_2(false, vec3<bool>(false, false, true), global3.a.a.x, global3.a).zzy, vec3<bool>(true, true, false), vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(2141f - _wgslsmith_f_op_f32(global3.a.a.x - -223f)), func_5(Struct_3(vec4<f32>(global3.a.a.x, 3069f, -860f, -195f), u_input.e), Struct_2(Struct_1(vec3<f32>(global3.a.a.x, -2868f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-808f, global3.a.a.x) + global3.a.a.xy), func_4(19679i, vec3<i32>(-46i, u_input.e.x, u_input.e.x), vec4<bool>(true, true, false, true), 325f))).wz);
    var_0 = !select(!(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false))), !(!(!vec2<bool>(false, var_0.x))), select(!vec2<bool>(var_0.x, true), !(!vec2<bool>(false, var_0.x)), vec2<bool>(func_1(global2[_wgslsmith_index_u32(1u, 28u)], u_input.b, vec3<bool>(var_0.x, false, var_0.x)), global3.a.a.x < 147f)));
    let var_1 = global3.a;
    let var_2 = global3.a;
    var var_3 = !(!(false && any(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)))));
    global1 = array<vec4<f32>, 12>();
    global0 = array<Struct_2, 14>();
    let var_4 = u_input.c;
    let var_5 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(max(vec3<u32>(var_4, 35039u, var_4), vec3<u32>(var_4, u_input.c, var_4)) >> (vec3<u32>(var_4, u_input.c, var_4) % vec3<u32>(32u))) >> (firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 37571u, 63788u), ~vec3<u32>(1u, 32737u, 125411u))) % vec3<u32>(32u)), _wgslsmith_sub_i32(-2147483647i, -1983i), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~64646u, 8485u), ~vec2<u32>(19634u, 0u), reverseBits(select(vec2<u32>(var_4, var_4), vec2<u32>(17344u, var_4), false))), ~(~abs(vec2<u32>(u_input.c, var_4)))));
}

