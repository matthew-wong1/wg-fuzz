struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<vec3<i32>, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = !(min(_wgslsmith_sub_i32(~0i, abs(14878i)), firstLeadingBit(38681i)) < -select(reverseBits(0i), _wgslsmith_mult_i32(-24509i, -1i), true));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(1i, -17677i), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(reverseBits(global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), global2[_wgslsmith_index_u32(8724u, 30u)]), firstLeadingBit(1i)), ~(~1i)), countOneBits(-63971i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 50749u, 1u), vec3<u32>(u_input.b.x, 1u, u_input.a.x)) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(444f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-494f)))), _wgslsmith_f_op_f32(-976f - _wgslsmith_f_op_f32(-1331f - 553f))))));
    var var_3 = Struct_1(true, select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x ^ 4294967295u, 0u << (u_input.a.x % 32u)), ~firstLeadingBit(vec3<u32>(u_input.c.x, 4294967295u, 55619u))), select(min(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, 11885u, 84732u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x) << (u_input.a % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(81072u, u_input.c.x, u_input.b.x), u_input.a)), true), any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_f_op_f32(-771f * -1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1146f, -1120f)), var_2, all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(951f - 721f)))), _wgslsmith_f_op_f32(step(var_2, var_2))));
    let var_4 = Struct_1(false, max(vec3<u32>(min(abs(var_3.b.x), _wgslsmith_clamp_u32(var_3.b.x, 72724u, 0u)), var_3.b.x, 1u), countOneBits(abs(var_3.b) >> (vec3<u32>(u_input.c.x, 19853u, 617u) % vec3<u32>(32u)))), var_3.c);
    return u_input.c.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = -(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-11316i, 0i, 18240i, -1i), vec4<i32>(-15698i, -41224i, 2147483647i, -14140i)), -1i));
    let var_1 = global1[_wgslsmith_index_u32(~(~u_input.b.x >> (4294967295u % 32u)), 14u)];
    var var_2 = 863f;
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(618f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.c.x))))))), arg_0, all(vec4<bool>(true, true, true, true))));
    var var_3 = ~global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(arg_1.b.x << (arg_1.b.x % 32u), 82856u) & func_3()), 30u)];
    return any(select(vec3<bool>(any(vec4<bool>(false, arg_1.a, var_1.a, true)), any(select(vec4<bool>(arg_1.a, var_1.a, true, false), vec4<bool>(false, arg_1.a, false, arg_1.a), true)), all(select(global0[_wgslsmith_index_u32(arg_1.b.x, 3u)], vec2<bool>(arg_1.a, arg_1.a), var_1.a))), select(vec3<bool>(!var_1.a, true, true), !select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, false), arg_1.a), true), !(!vec3<bool>(arg_1.a, false, true))));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    var var_0 = !func_4(_wgslsmith_f_op_f32(f32(-1f) * -421f), Struct_1(all(vec3<bool>(false, false, true)), vec3<u32>(func_3(), 13993u, reverseBits(65815u)), vec4<f32>(-958f, _wgslsmith_f_op_f32(sign(-980f)), -629f, _wgslsmith_f_op_f32(select(-2114f, -111f, false)))));
    global1 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-465f))), 180f, -1323f), false));
    var var_2 = 36023i == firstTrailingBit(arg_0.x);
    global0 = array<vec2<bool>, 3>();
    return abs(~reverseBits(1i & arg_0.x));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    global2 = array<vec3<i32>, 30>();
    global2 = array<vec3<i32>, 30>();
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(1i), firstTrailingBit(1i) ^ func_2(vec2<i32>(-2147483647i, 27009i)), min(~(-40829i), -1i)), _wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(12887u, 30u)], max(vec3<i32>(1i, -1i, -16842i), -global2[_wgslsmith_index_u32(u_input.a.x, 30u)]), -countOneBits(global2[_wgslsmith_index_u32(34478u, 30u)]))) | global2[_wgslsmith_index_u32(~14851u, 30u)];
    let var_1 = Struct_1(false, ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), u_input.b) >> (~(~u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), -563f, arg_0))));
    global2 = array<vec3<i32>, 30>();
    return Struct_1(false, min(countOneBits(u_input.b), ~(~u_input.a & vec3<u32>(u_input.b.x, 29106u, 112400u))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(347f + 1402f) + var_1.c.x), arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1350f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -727f), _wgslsmith_f_op_f32(floor(arg_2)))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = -1005f;
    var var_1 = Struct_1(true, vec3<u32>(arg_1, ~arg_1, u_input.a.x), arg_2.c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.x)))) > func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-856f, _wgslsmith_f_op_f32(sign(arg_2.c.x)))), select(select(select(vec3<bool>(arg_2.a, false, true), vec3<bool>(var_1.a, false, false), vec3<bool>(var_1.a, arg_2.a, var_1.a)), !vec3<bool>(true, var_1.a, true), func_4(var_1.c.x, Struct_1(false, arg_0.xzx, arg_2.c))), select(vec3<bool>(arg_2.a, false, arg_2.a), vec3<bool>(true, false, arg_2.a), true), all(vec4<bool>(true, var_1.a, arg_2.a, var_1.a))), var_0).c.x;
    global2 = array<vec3<i32>, 30>();
    let var_3 = 2255f;
    return 5015u & firstTrailingBit(var_1.b.x);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(true, vec3<u32>(arg_2.b.x, _wgslsmith_add_u32(4294967295u, u_input.a.x), ~_wgslsmith_sub_u32(~21302u, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x) + arg_2.c.x), func_1(-1398f, select(vec3<bool>(false, true, arg_0.a), vec3<bool>(false, arg_2.a, false), false), _wgslsmith_f_op_f32(682f * -649f)).c.x, arg_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), 1579f))));
    global1 = array<Struct_1, 14>();
    let var_1 = Struct_1(false, min(min(arg_2.b, ~arg_2.b), u_input.b), _wgslsmith_f_op_vec4_f32(arg_2.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-673f, -104f, arg_0.c.x, -344f))))));
    var var_2 = select(select(!select(vec4<bool>(var_0.a, arg_0.a, true, arg_0.a), select(vec4<bool>(var_0.a, true, arg_2.a, false), vec4<bool>(true, arg_0.a, arg_0.a, true), true), !arg_0.a), !(!select(vec4<bool>(var_1.a, arg_2.a, var_0.a, false), vec4<bool>(true, true, false, false), vec4<bool>(false, var_1.a, arg_0.a, true))), any(!select(vec4<bool>(true, true, var_1.a, true), vec4<bool>(false, arg_2.a, false, false), false))), vec4<bool>(any(vec3<bool>(false, arg_0.a, arg_2.a)) & arg_0.a, true, true, true), true);
    let var_3 = arg_0;
    return Struct_1(!(all(!vec3<bool>(false, var_0.a, true)) | false), ~func_1(arg_2.c.x, select(select(var_2.wzz, vec3<bool>(arg_2.a, true, var_0.a), var_2.yyz), vec3<bool>(var_3.a, false, var_1.a), arg_0.a), _wgslsmith_f_op_f32(ceil(2444f))).b, var_0.c);
}

fn func_7(arg_0: Struct_1) -> bool {
    global0 = array<vec2<bool>, 3>();
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, _wgslsmith_f_op_f32(max(-1401f, arg_0.c.x)), var_0.c.x, -1429f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.c.x, -116f)), -723f, arg_0.c.x, _wgslsmith_f_op_f32(round(-1187f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, arg_0.c.x, -267f, arg_0.c.x) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-113f, 265f, arg_0.c.x, -1752f), arg_0.c))), select(select(vec4<bool>(true, var_0.a, arg_0.a, var_0.a), vec4<bool>(var_0.a, arg_0.a, arg_0.a, true), var_0.a), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, arg_0.a), vec4<bool>(true, false, arg_0.a, false)), select(vec4<bool>(var_0.a, arg_0.a, true, true), vec4<bool>(true, true, var_0.a, true), vec4<bool>(true, var_0.a, true, true)))))));
    global1 = array<Struct_1, 14>();
    let var_2 = vec4<bool>(false, var_0.a || !var_0.a, all(select(!(!global0[_wgslsmith_index_u32(1u, 3u)]), select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), global0[_wgslsmith_index_u32(33134u, 3u)]), select(vec2<bool>(arg_0.a, true), global0[_wgslsmith_index_u32(u_input.a.x, 3u)], vec2<bool>(false, true)), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(var_0.a, var_0.a), global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), var_0.a)), true);
    return !(1u <= (_wgslsmith_add_u32(firstTrailingBit(u_input.c.x), arg_0.b.x) >> (~(~4294967295u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 3>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(654f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-429f))))) * -1815f);
    var var_1 = false;
    let var_2 = vec4<bool>(true, func_7(func_6(global1[_wgslsmith_index_u32(func_5(vec4<u32>(1u, 1u, 4294967295u, 0u) >> (vec4<u32>(34586u, 0u, u_input.b.x, 27161u) % vec4<u32>(32u)), _wgslsmith_mod_u32(u_input.c.x, 0u), func_1(-378f, vec3<bool>(false, false, false), 222f), -674f), 14u)], u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 14u)])), true, true);
    let var_3 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, countOneBits(4294967295u)), vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 1u))));
    let var_4 = global1[_wgslsmith_index_u32(~u_input.a.x, 14u)];
    let var_5 = _wgslsmith_dot_vec4_i32(-vec4<i32>(~abs(-1i), -(~0i), _wgslsmith_mod_i32(i32(-1i) * -15419i, 1i), 1i), _wgslsmith_add_vec4_i32(vec4<i32>(select(~(-1i), ~41302i, var_2.x), min(-39914i, -2147483647i), 1i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 20101i), vec2<i32>(16292i, -31653i)))), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 10825i, -8731i, 2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, 31207i), vec4<i32>(-181i, 11324i, -7487i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-32379i, ~1i, var_5, -_wgslsmith_mod_i32(var_5, 63889i)), vec3<u32>(var_4.b.x, var_3.x >> (var_3.x % 32u), var_4.b.x) ^ u_input.a, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.c.x))) - _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -839f) + _wgslsmith_f_op_f32(-1000f + 833f)), _wgslsmith_f_op_f32(var_4.c.x - _wgslsmith_f_op_f32(var_4.c.x * 1262f)))));
}

