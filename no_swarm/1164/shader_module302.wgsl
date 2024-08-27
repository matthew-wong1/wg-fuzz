struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 22> = array<bool, 22>(true, true, true, false, true, true, false, true, false, false, false, false, true, true, false, true, false, false, true, true, false, true);

var<private> global2: array<f32, 1> = array<f32, 1>(308f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = select(-34925i >> (u_input.a.x % 32u), -(~1i), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2409f, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global0.a.x) - vec3<f32>(global0.a.x, -489f, 146f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.x, -511f, global0.a.x), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], 383f, global2[_wgslsmith_index_u32(20512u, 1u)])))))));
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    let var_2 = var_0;
    return 48031u;
}

fn func_2() -> vec3<u32> {
    global1 = array<bool, 22>();
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    var var_0 = Struct_1(vec3<f32>(644f, 798f, global0.a.x));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(11423u, u_input.a.x | 4294967295u), u_input.a.x, func_3()) >> (_wgslsmith_div_u32(func_3(), ~u_input.a.x) % 32u), global0.b), 22u)];
    return select(~_wgslsmith_add_vec3_u32(u_input.a ^ (u_input.a ^ u_input.a), u_input.a), vec3<u32>(global0.c, _wgslsmith_sub_u32(select(global0.c, global0.c, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), func_3()), abs(~global0.b)) | vec3<u32>(global0.b, _wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x), ~u_input.a.x), vec3<bool>(true, true, true));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_2 {
    global1 = array<bool, 22>();
    var var_0 = _wgslsmith_add_i32(firstLeadingBit((arg_1.x ^ 1i) ^ ~(-36276i)), firstLeadingBit(i32(-1i) * -29175i) >> (_wgslsmith_dot_vec3_u32(func_2(), u_input.a) % 32u)) ^ arg_1.x;
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i | _wgslsmith_clamp_i32(reverseBits(arg_1.x), arg_1.x << (32838u % 32u), _wgslsmith_mod_i32(arg_1.x, arg_1.x)), _wgslsmith_mod_i32(arg_1.x >> (0u % 32u), 7295i), -1i, -1i), ~max(vec4<i32>(arg_1.x ^ arg_1.x, _wgslsmith_clamp_i32(arg_1.x, arg_1.x, -2147483647i), 0i, -2147483647i), arg_1));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, -1000f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(776f, 580f, -481f), vec3<f32>(473f, -958f, global0.a.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(100490u, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -957f), _wgslsmith_f_op_f32(floor(global0.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -477f, global0.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global2[_wgslsmith_index_u32(70581u, 1u)], 708f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(284f, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 751f), vec3<f32>(global0.a.x, global0.a.x, 1746f), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, 1760f, 509f), vec3<f32>(360f, -1765f, global0.a.x))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1207f, global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-235f * global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -225f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, -1161f, -1238f, 511f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1350f, 450f, global0.a.x, 2230f), vec4<f32>(global2[_wgslsmith_index_u32(37306u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -1546f, -1360f))))))));
    let var_3 = arg_1.x;
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-317f)) * _wgslsmith_f_op_f32(trunc(-605f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 1u)])) + _wgslsmith_f_op_f32(min(-446f, _wgslsmith_f_op_f32(-1492f - 242f))))), var_2.c, var_2.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.b.a.x)), _wgslsmith_f_op_f32(exp2(global0.a.x)), global2[_wgslsmith_index_u32(global0.b, 1u)], var_2.c.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(13446u, 1u)] * global0.a.x), _wgslsmith_f_op_f32(select(-268f, global0.a.x, global1[_wgslsmith_index_u32(1u, 22u)]))), _wgslsmith_div_f32(-943f, _wgslsmith_div_f32(-309f, 1316f)), global0.a.x), true)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    global1 = array<bool, 22>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_2.b.a.x, _wgslsmith_f_op_f32(select(1489f, 282f, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]))), _wgslsmith_f_op_f32(arg_1.a.x * func_1(u_input.a, vec4<i32>(19770i, -2147483647i, -20806i, 25895i)).b.a.x))), arg_0.c, global0.b);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = func_1(vec3<u32>(global0.b, countOneBits(arg_1.c), global0.b), countOneBits(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_0, arg_0)), arg_0.x << (global0.b % 32u), 6559i, ~(~(-2147483647i))))).b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f + 151f) * arg_1.a.x));
    global1 = array<bool, 22>();
    let var_2 = vec4<bool>((global1[_wgslsmith_index_u32(1u, 22u)] | global1[_wgslsmith_index_u32(0u, 22u)]) && ((global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xx), 22u)] != any(vec3<bool>(true, false, false))) & false), true, any(vec4<bool>(true, any(!vec4<bool>(global1[_wgslsmith_index_u32(73u, 22u)], global1[_wgslsmith_index_u32(24411u, 22u)], global1[_wgslsmith_index_u32(global0.c, 22u)], false)), !all(vec4<bool>(global1[_wgslsmith_index_u32(1183u, 22u)], global1[_wgslsmith_index_u32(global0.c, 22u)], false, global1[_wgslsmith_index_u32(arg_1.b, 22u)])), any(!vec3<bool>(true, global1[_wgslsmith_index_u32(global0.b, 22u)], global1[_wgslsmith_index_u32(97320u, 22u)])))), all(vec4<bool>(false, global1[_wgslsmith_index_u32(max(global0.c ^ global0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.c, 11027u), vec3<u32>(13022u, 76204u, arg_1.c))), 22u)], true, !global1[_wgslsmith_index_u32(39797u, 22u)] & true)));
    var var_3 = func_1(~vec3<u32>(_wgslsmith_sub_u32(~global0.b, ~39626u), global0.c, 100620u), vec4<i32>(_wgslsmith_mod_i32(~1i, select(arg_0.x, arg_0.x, var_2.x) & arg_0.x), ~_wgslsmith_div_i32(-52466i, _wgslsmith_dot_vec2_i32(vec2<i32>(19204i, 36325i), arg_0)), -33999i, -arg_0.x)).c;
    return func_1(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(min(u_input.a, u_input.a), ~u_input.a), u_input.a >> (u_input.a % vec3<u32>(32u)))), vec4<i32>(-2116i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 1i), select(vec3<i32>(-70400i, -39379i, 38678i), vec3<i32>(-1i, arg_0.x, arg_0.x), var_2.zzy), select(vec3<i32>(-66775i, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, 20203i, arg_0.x), true)), firstTrailingBit(select(vec3<i32>(arg_0.x, 46227i, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), var_2.www))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-arg_0.x, ~39364i), -62461i), 0i)).c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 22>();
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a)) - _wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))), _wgslsmith_sub_u32(60195u, _wgslsmith_mod_u32(~global0.c, (24214u << (u_input.a.x % 32u)) << (_wgslsmith_div_u32(79117u, u_input.a.x) % 32u))), 1u);
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -583f, 695f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1563f, global2[_wgslsmith_index_u32(global0.c, 1u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(406f, global0.a.x, -813f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 1762f, -1490f) * vec3<f32>(global0.a.x, -1000f, -302f)), vec3<f32>(-1000f, global2[_wgslsmith_index_u32(26441u, 1u)], global2[_wgslsmith_index_u32(22651u, 1u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(16678u, 22u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 1377f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1634f, global0.a.x)))), select(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(global0.b, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 22u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(global0.b, 22u)], true), true), !(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(42240u, 22u)]))))), func_5(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 21523i), max(vec2<i32>(2147483647i, -1755i), vec2<i32>(39453i, -23906i))) << (u_input.a.xz % vec2<u32>(32u)), func_4(Struct_3(global0.a, 0u, 0u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(2054f, global2[_wgslsmith_index_u32(21836u, 1u)], -500f) * vec3<f32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global0.a.x))), func_1(u_input.a, vec4<i32>(-14166i, 15479i, 10730i, -2147483647i)))), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(95739u, 1u)], -1842f, _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1556f, 283f, global2[_wgslsmith_index_u32(global0.c, 1u)], 636f), vec4<f32>(238f, 1068f, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -835f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(global0.b, 1u)], global0.a.x, global0.a.x, global2[_wgslsmith_index_u32(34340u, 1u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global2[_wgslsmith_index_u32(45475u, 1u)], 886f)))))));
    var var_1 = global0.c;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.a.x, 1000f), vec2<f32>(-2897f, var_0.b.a.x))) * _wgslsmith_f_op_vec2_f32(-global0.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 1u)]) + _wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(var_0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 1u)]))))), 0u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~(~16811u), _wgslsmith_add_u32(_wgslsmith_mod_u32(40347u, u_input.a.x), 63301u)), 1u, 4294967295u));
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    var_1 = 1u;
    var var_3 = -vec4<i32>(1i, 1i, 1i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-246f, -220f, true))), global2[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_f32(-1f)), vec2<u32>(1u, ~u_input.a.x));
}

