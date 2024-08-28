struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(54209u, 5048u, 0u);

var<private> global1: vec4<u32> = vec4<u32>(1u, 4785u, 40745u, 16240u);

var<private> global2: vec2<f32>;

var<private> global3: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_1(abs((~vec4<u32>(arg_0.x, global1.x, 74062u, 1u) ^ countOneBits(vec4<u32>(global0.x, 4294967295u, 0u, arg_0.x))) & vec4<u32>(53081u, 0u, ~global1.x, 4294967295u)), ~vec3<i32>(1i, 1i, 1i), vec4<i32>(firstTrailingBit(~1i), _wgslsmith_div_i32(~(-33564i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-2147483647i, 2147483647i)), select(1i, -1i, true)), 1i, abs(1i)));
    let var_1 = -reverseBits(_wgslsmith_clamp_vec2_i32(min(-var_0.b.xx, firstLeadingBit(vec2<i32>(61172i, var_0.c.x))), min(-var_0.b.yx, abs(var_0.b.yy)), var_0.b.xx));
    global0 = var_0.a.wwx & min(var_0.a.ywz, vec3<u32>(global0.x, 1u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 38964u, 0u), vec4<u32>(1u, 45473u, u_input.c.x, u_input.a.x)))));
    var var_2 = reverseBits(min(~(1u << (~arg_0.x % 32u)), ~0u));
    global1 = vec4<u32>(global1.x, var_0.a.x, ~arg_0.x, _wgslsmith_add_u32(0u << (global1.x % 32u), global0.x));
    return select(!vec2<bool>(any(vec4<bool>(false, true, false, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(all(vec4<bool>(false, false, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))), vec2<bool>(firstLeadingBit(u_input.c.x) >= u_input.d.x, true));
}

fn func_2() -> Struct_1 {
    global1 = select(_wgslsmith_clamp_vec4_u32(~(~abs(vec4<u32>(0u, 1u, 77992u, global0.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(11920u, 7309u, global1.x, global0.x) ^ (vec4<u32>(31994u, 0u, 4294967295u, 0u) >> (vec4<u32>(0u, global0.x, 1u, global1.x) % vec4<u32>(32u))), ~(~vec4<u32>(global1.x, global0.x, global1.x, global1.x))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, global0.x)), ~firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, 1u, 16631u)))), countOneBits(~vec4<u32>(global0.x >> (18289u % 32u), 0u | global0.x, ~0u, countOneBits(80154u))), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(global0.yz))), false, func_3(vec2<u32>(~global0.x, ~15029u)).x, !(!all(vec3<bool>(false, false, false)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f * global2.x)), _wgslsmith_f_op_f32(max(377f, _wgslsmith_f_op_f32(-459f + global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, -550f, global2.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 2670f, global2.x)))), vec3<f32>(-1292f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-371f + -726f)), vec3<bool>(any(vec4<bool>(true, false, false, false)), true, false))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(472f, global2.x, 966f) * vec3<f32>(-1000f, global2.x, -347f)), vec3<f32>(global2.x, 1561f, global2.x), true))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2225f, var_0.x, global2.x) + vec3<f32>(var_0.x, global2.x, 405f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1083f, var_0.x, -676f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, var_0.x, global2.x), vec3<f32>(var_0.x, -1591f, -654f)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), any(vec2<bool>(true, true)))))));
    var var_1 = _wgslsmith_clamp_vec2_i32(((vec2<i32>(-1i) * -vec2<i32>(-3337i, -19087i)) << (global0.zy % vec2<u32>(32u))) & -select(select(vec2<i32>(5324i, 1i), vec2<i32>(-2147483647i, -1i), vec2<bool>(true, false)), select(vec2<i32>(83754i, -46890i), vec2<i32>(-1i, -17529i), false), true), vec2<i32>(6812i, 1i), -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(1i, 1i)));
    let var_2 = Struct_1(reverseBits(vec4<u32>(global1.x, 7461u, 1u, 49368u) | ~vec4<u32>(u_input.c.x, u_input.a.x, u_input.d.x, 0u)) | vec4<u32>(6759u, 51158u, u_input.d.x, ~global1.x), abs(_wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(var_1.x, var_1.x, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1.x, var_1.x) & vec3<i32>(var_1.x, var_1.x, 0i), vec3<i32>(var_1.x, 1i, var_1.x) >> (vec3<u32>(global1.x, global0.x, 4294967295u) % vec3<u32>(32u))), reverseBits(~vec3<i32>(-54716i, -54780i, var_1.x)))), select(min(-vec4<i32>(-1i, -2147483647i, -12574i, var_1.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, var_1.x, var_1.x, var_1.x), select(vec4<i32>(var_1.x, 22600i, var_1.x, var_1.x), vec4<i32>(var_1.x, 2147483647i, 1i, var_1.x), vec4<bool>(true, true, true, true)))), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(12528i, -8888i, 0i, 9155i), vec4<i32>(var_1.x, 2147483647i, var_1.x, -2147483647i)), vec4<bool>((var_1.x & 1i) == (1i << (global0.x % 32u)), true, true, false && all(vec3<bool>(true, false, false)))));
    return var_2;
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = ~(~var_0.a.x);
    let var_2 = var_0.c.x;
    let var_3 = 232f;
    let var_4 = vec2<bool>(true, true);
    return countOneBits(abs(_wgslsmith_mult_vec4_i32(-var_0.c, var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u) << (abs(vec2<u32>(44520u, 80997u)) % vec2<u32>(32u)), max(~u_input.a.zy, min(vec2<u32>(global0.x, global0.x), u_input.d))), ~abs(~global0.x), select(45483u, global0.x, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true))), u_input.d.x), vec3<i32>(-1545i, -2147483647i, abs(_wgslsmith_mult_i32(abs(-2147483647i), ~0i))), func_1());
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(exp2(global2.x)), true)), _wgslsmith_f_op_f32(-1085f * 1f)) + _wgslsmith_f_op_f32(trunc(-1015f))), 434f);
    global0 = _wgslsmith_sub_vec3_u32(firstTrailingBit(var_0.a.yzx), ~firstLeadingBit(~global1.zyx));
    var var_1 = Struct_1(~max(_wgslsmith_add_vec4_u32(var_0.a, var_0.a), _wgslsmith_add_vec4_u32(vec4<u32>(29819u, 16095u, global1.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.x, 111886u, var_0.a.x), var_0.a))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.c.yyw, vec3<i32>(var_0.c.x, 2147483647i, _wgslsmith_mult_i32(-8521i, var_0.b.x))), vec3<i32>(countOneBits(~18288i), _wgslsmith_mult_i32(var_0.b.x, 15866i), ~firstLeadingBit(0i))), vec4<i32>(0i, min(var_0.c.x, -1i), var_0.b.x, var_0.b.x));
    global2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1261f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 927f) + vec2<f32>(-855f, -830f))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, 1279f))))));
    var_1 = Struct_1(var_0.a, vec3<i32>(33818i, abs(~(-var_1.b.x)), -(_wgslsmith_div_i32(4242i, var_1.c.x) & 0i)), -(~min(_wgslsmith_clamp_vec4_i32(var_0.c, vec4<i32>(var_0.c.x, -1i, 1i, var_1.c.x), vec4<i32>(var_1.b.x, var_1.b.x, 33452i, var_0.c.x)), var_1.c)));
    var_1 = Struct_1(var_0.a, min(vec3<i32>(var_1.c.x, 1i, -32697i), vec3<i32>(var_0.b.x, _wgslsmith_dot_vec4_i32(select(var_1.c, vec4<i32>(var_1.b.x, 34528i, var_1.b.x, 2147483647i), vec4<bool>(false, false, false, true)), var_1.c), var_1.c.x)), -vec4<i32>(var_1.c.x, 0i, ~var_1.b.x, -var_0.b.x));
    var var_2 = !func_3(~vec2<u32>(firstTrailingBit(38002u), global0.x)).x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(9110u, 46448u, var_1.a.x, global0.x), vec4<u32>(var_0.a.x, 1u, 4294967295u, 48521u)), ~vec4<u32>(global1.x, 51272u, global0.x, 13878u))), _wgslsmith_f_op_f32(1089f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(global2.x, 627f))), reverseBits(23654u), _wgslsmith_dot_vec2_i32(select(vec2<i32>(_wgslsmith_mult_i32(24267i, var_0.c.x), _wgslsmith_clamp_i32(-28350i, var_1.b.x, -1i)), -vec2<i32>(var_1.c.x, 31656i), true), _wgslsmith_mult_vec2_i32(~var_0.b.xy, min(var_1.b.yx, vec2<i32>(1i, var_0.c.x))) | vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.c.yzx, var_1.b), var_0.c.x)), var_1.c >> (vec4<u32>(20813u, global0.x, _wgslsmith_dot_vec2_u32(global0.zx, ~global0.yz), 4294967295u) % vec4<u32>(32u)));
}

