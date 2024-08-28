struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 23>;

var<private> global2: array<i32, 25> = array<i32, 25>(-1i, 5217i, -51322i, 1i, 2147483647i, -8265i, 2147483647i, 1i, i32(-2147483648), -1i, 0i, 0i, i32(-2147483648), -19146i, 38236i, 1i, i32(-2147483648), -37929i, -28844i, 2147483647i, 0i, -17749i, 13716i, 2147483647i, 1i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<bool>) -> u32 {
    global2 = array<i32, 25>();
    global0 = 30937u;
    global2 = array<i32, 25>();
    var var_0 = Struct_2(abs(vec2<u32>(9116u, arg_1.c.d)));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-1i, 31427i), -global2[_wgslsmith_index_u32(arg_1.c.d, 25u)]), firstTrailingBit(max(vec2<i32>(-2147483647i, -14865i), vec2<i32>(-6530i, 0i)))), ~(-2147483647i)), vec2<i32>(35694i, _wgslsmith_mult_i32(arg_1.c.c, ~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(19124u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))));
    return _wgslsmith_clamp_u32(_wgslsmith_div_u32(~countOneBits(26523u), 8593u), 46639u, ~0u) >> (abs(23994u) % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = all(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)));
    global1 = array<i32, 23>();
    let var_1 = _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.d, 20289u), ~func_3(Struct_4(global2[_wgslsmith_index_u32(u_input.d, 25u)], Struct_2(u_input.c.yz), Struct_1(vec4<f32>(-1075f, 1890f, -956f, 1000f), 2147483647i, u_input.b, 0u, vec3<f32>(1665f, 1114f, -373f)), vec2<bool>(false, true), vec2<u32>(8424u, u_input.c.x)), Struct_4(-2147483647i, Struct_2(u_input.a), Struct_1(vec4<f32>(-209f, -1000f, 293f, -1178f), u_input.b, -1i, 4294967295u, vec3<f32>(606f, -1000f, -986f)), vec2<bool>(true, true), vec2<u32>(u_input.c.x, 4294967295u)), vec4<bool>(true, false, true, true)))), _wgslsmith_div_u32(u_input.c.x, ~(~0u) >> ((_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 35611u)) << (~1u % 32u)) % 32u)));
    global2 = array<i32, 25>();
    let var_2 = 0u;
    return Struct_2(u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> vec3<i32> {
    global0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(func_2().a.x & abs(_wgslsmith_mult_u32(arg_0.a.x, 50427u)), u_input.a.x), arg_0.a.x);
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(abs(max(vec2<u32>(0u, 21970u), vec2<u32>(arg_0.a.x, u_input.a.x))), ~arg_0.a ^ reverseBits(vec2<u32>(u_input.d, 68702u))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mod_u32(var_1.a.x, var_0.a.x & ~0u);
    global1 = array<i32, 23>();
    return reverseBits(-abs(vec3<i32>(-9184i, global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 23u)], firstLeadingBit(global1[_wgslsmith_index_u32(var_0.a.x, 23u)]))));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    global1 = array<i32, 23>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1044f, _wgslsmith_div_f32(-688f, 721f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1144f, -800f)))) - _wgslsmith_f_op_f32(sign(-137f)))));
    var var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true != all(vec4<bool>(true, true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(select(false, false, true), any(vec2<bool>(false, false)), all(vec3<bool>(false, true, false)))), ~reverseBits(_wgslsmith_mult_i32(arg_0.x, 36217i)) >= -(~arg_0.x));
    global1 = array<i32, 23>();
    var var_2 = !vec3<bool>(true, all(select(!vec3<bool>(false, var_1.x, false), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), true), var_1.x)), all(select(!var_1.xx, vec2<bool>(var_1.x, true), false)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, _wgslsmith_f_op_f32(step(-2746f, _wgslsmith_f_op_f32(select(152f, 415f, true)))), _wgslsmith_f_op_f32(abs(1f)), 1f)), -1i, ~max(reverseBits(_wgslsmith_div_i32(45178i, 15619i)), (arg_1 & -2147483647i) << (~u_input.a.x % 32u)), min(_wgslsmith_mod_u32(1u, 54400u), _wgslsmith_clamp_u32(~4294967295u, u_input.c.x, _wgslsmith_mod_u32(12836u, u_input.d) >> (~34052u % 32u))), vec3<f32>(1f, 1f, 1f));
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    var var_0 = ~u_input.d;
    global2 = array<i32, 25>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(880f, -664f), vec2<f32>(-611f, -1274f), false))))), func_5(firstLeadingBit(func_4(func_2(), vec2<i32>(1i, 1i))), _wgslsmith_mult_i32(-abs(u_input.b), -1i)), !(!any(vec2<bool>(true, true))), func_2());
    let var_2 = vec2<bool>(true, true);
    var var_3 = vec3<bool>(var_2.x, var_1.c, !var_2.x);
    return min(reverseBits(~countOneBits(0i)) << (max(~(u_input.c.x << (0u % 32u)), 21736u) % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(reverseBits(1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-17065i, global1[_wgslsmith_index_u32(4294967295u, 23u)], arg_0.x), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.a.x), 23u)])), firstTrailingBit(arg_0.x)));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    let var_0 = arg_1.a.d;
    var var_1 = select(vec4<bool>(!(!arg_1.b.d.x), arg_1.a.c, _wgslsmith_add_u32(36420u, arg_2.x) < 31647u, arg_1.b.d.x), !(!vec4<bool>(arg_1.a.c || true, false, true, !arg_1.b.d.x)), any(!(!vec4<bool>(false, arg_1.b.d.x, arg_1.a.c, arg_1.a.c))) && true);
    var var_2 = Struct_2(abs(firstLeadingBit(var_0.a)));
    var var_3 = vec2<i32>(arg_3 << (_wgslsmith_mod_u32(arg_2.x, select(50002u, ~var_0.a.x, false)) % 32u), _wgslsmith_add_i32(reverseBits(firstTrailingBit(1i)), -12168i));
    global1 = array<i32, 23>();
    return ~(_wgslsmith_sub_i32(firstLeadingBit(arg_1.b.a), -28933i) | (arg_1.a.b.b >> (countOneBits(0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = array<i32, 25>();
    var var_1 = select(vec2<i32>(func_6(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-806f, 1000f, -1480f))), Struct_5(Struct_3(vec2<f32>(400f, -148f), Struct_1(vec4<f32>(887f, -424f, -809f, 527f), global1[_wgslsmith_index_u32(32017u, 23u)], 19632i, u_input.a.x, vec3<f32>(-204f, -1517f, 709f)), true, Struct_2(vec2<u32>(u_input.d, u_input.a.x))), Struct_4(u_input.b, Struct_2(u_input.a), Struct_1(vec4<f32>(481f, -1062f, -405f, -1380f), 21669i, u_input.b, 1u, vec3<f32>(-649f, 629f, 466f)), vec2<bool>(false, true), u_input.a)), vec3<u32>(12317u, u_input.a.x, u_input.a.x), func_1(vec3<i32>(u_input.b, 2590i, global1[_wgslsmith_index_u32(1u, 23u)]))) & 1i, func_4(Struct_2(vec2<u32>(u_input.d, 64359u)), vec2<i32>(0i, func_4(Struct_2(u_input.c.zy), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], -7907i)).x)).x), -(-_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(u_input.d, 25u)]), vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(36470u, 25u)])) >> (~_wgslsmith_add_vec2_u32(u_input.c.xy, u_input.a) % vec2<u32>(32u))), var_0);
    var var_2 = !(!(!vec4<bool>(false, var_0, false, u_input.a.x == 18275u)));
    global1 = array<i32, 23>();
    var var_3 = select(vec2<bool>(false, var_2.x), select(vec2<bool>(!var_2.x, false), var_2.xy, any(!vec2<bool>(var_2.x, var_2.x))), vec2<bool>(all(select(select(vec3<bool>(true, var_0, var_2.x), var_2.zxy, var_2.xwy), vec3<bool>(false, true, false), select(var_2.zxw, vec3<bool>(true, false, var_0), vec3<bool>(false, var_2.x, var_0)))), !var_2.x));
    let var_4 = vec4<bool>(false, false, var_3.x, (_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 23892i, var_1.x), vec3<i32>(u_input.b, 16913i, global2[_wgslsmith_index_u32(u_input.c.x, 25u)])), -vec3<i32>(2147483647i, u_input.b, global1[_wgslsmith_index_u32(u_input.c.x, 23u)])) != -(-2147483647i | global1[_wgslsmith_index_u32(36366u, 23u)])) | true);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~(vec3<i32>(-76352i, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], -33203i) ^ vec3<i32>(global1[_wgslsmith_index_u32(63056u, 23u)], 1i, u_input.b)))), firstTrailingBit(reverseBits(0u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(-1109f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(783f)) * -1004f)), _wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f)) - -1107f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(934f, -1042f, -1273f, 199f), vec4<f32>(614f, -327f, -1833f, -1108f), var_4)) * vec4<f32>(594f, -456f, -401f, 158f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1593f, 259f, -753f, 361f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-268f, -639f, 2029f, -1465f), vec4<f32>(1081f, 293f, 534f, 1767f), false)) + vec4<f32>(-234f, 588f, _wgslsmith_f_op_f32(max(1453f, 907f)), _wgslsmith_f_op_f32(f32(-1f) * -1489f)))));
}

