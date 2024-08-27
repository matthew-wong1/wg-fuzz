struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1;

var<private> global2: vec2<i32> = vec2<i32>(54380i, i32(-2147483648));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(57128i, _wgslsmith_mod_i32(~32825i, global1.b.x), -_wgslsmith_div_i32(_wgslsmith_add_i32(global1.c, 2147483647i), global2.x), 0i), abs(vec4<i32>(~_wgslsmith_sub_i32(global2.x, global2.x), _wgslsmith_mult_i32(7511i, 42323i), _wgslsmith_sub_i32(global1.c | global1.b.x, min(-2147483647i, -222i)), _wgslsmith_dot_vec3_i32(vec3<i32>(24039i, 326i, 39880i), global1.b))));
    global1 = Struct_1(vec3<bool>(false, true, false), _wgslsmith_add_vec3_i32((vec3<i32>(-1i) * -var_0.xyx) & global0.zzy, vec3<i32>(global0.x, 32241i | global2.x, global1.c | ~var_0.x)), -global0.x | _wgslsmith_div_i32(-global2.x, i32(-1i) * -65482i), global1.d);
    global0 = var_0 << (vec4<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, u_input.a.x)), 3129u), _wgslsmith_mod_u32(15853u, firstTrailingBit(49229u))), ~(~u_input.a.x), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(26820u, 0u), vec2<u32>(u_input.a.x, u_input.a.x)))) % vec4<u32>(32u));
    let var_1 = any(!select(vec3<bool>(any(vec4<bool>(false, false, true, arg_0.x)), arg_1.x == -1000f, arg_0.x | arg_0.x), vec3<bool>(true, true, global1.d.x), !(global1.a.x | true)));
    global1 = Struct_1(vec3<bool>(true, !select(false, arg_0.x, var_1) & all(!vec3<bool>(arg_0.x, true, false)), any(global1.a)), -vec3<i32>(abs(global2.x), ~var_0.x & _wgslsmith_mod_i32(16653i, global0.x), ~1i), abs(global1.c), vec3<bool>(arg_0.x, arg_0.x, global1.d.x));
    return Struct_1(!select(select(!vec3<bool>(global1.d.x, global1.d.x, false), vec3<bool>(true, global1.a.x, false), global1.d), select(vec3<bool>(false, arg_0.x, global1.a.x), global1.d, select(vec3<bool>(false, global1.d.x, var_1), vec3<bool>(arg_0.x, global1.a.x, var_1), vec3<bool>(global1.a.x, true, false))), !global1.a), vec3<i32>(global1.b.x, global2.x, -1i) ^ global0.wzw, -2147483647i, vec3<bool>(true, true, true));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -920f)))), _wgslsmith_f_op_f32(f32(-1f) * -1036f)) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2738f * _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_3)))));
    global2 = reverseBits(vec2<i32>(~max(global1.b.x, global1.b.x), ~(-64100i)));
    global2 = vec2<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global0.x, global2.x, global1.b.x), vec4<i32>(global0.x, global1.b.x, -277i, 17541i)), vec4<i32>(-2147483647i, 25281i, 17115i, 1i) | vec4<i32>(global0.x, 2147483647i, global1.c, global0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, -30001i, -2245i, global1.b.x), vec4<i32>(global1.c, 17962i, 0i, global0.x))), ~(~0i));
    let var_1 = select(!(!select(vec4<bool>(arg_2, global1.a.x, true, true), select(vec4<bool>(global1.a.x, true, false, false), vec4<bool>(global1.a.x, arg_2, false, arg_2), arg_2), all(vec4<bool>(false, true, global1.d.x, false)))), vec4<bool>(false, false, arg_2, global1.a.x), !func_2(vec2<bool>(global1.d.x, arg_2), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3, 471f, arg_3)))).d.x && arg_2);
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 966f)), _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(arg_3 + 352f), true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(359f, -267f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 580f))))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(983f, var_0.x)), 729f)), 1000f)));
    return min(~_wgslsmith_sub_i32(global2.x, -global1.b.x >> (48443u % 32u)), abs(global0.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(reverseBits(countOneBits(~firstLeadingBit(vec4<u32>(u_input.a.x, 50976u, u_input.a.x, 1u)))), vec4<u32>(min(reverseBits(25072u), _wgslsmith_add_u32(u_input.a.x << (u_input.a.x % 32u), _wgslsmith_mod_u32(20968u, 6934u))), u_input.a.x, ~(reverseBits(u_input.a.x) ^ ~u_input.a.x), ~u_input.a.x));
    var var_1 = countOneBits(reverseBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(27823i, global2.x, 33052i, arg_1) << (vec4<u32>(4294967295u, u_input.a.x, 26529u, 1u) % vec4<u32>(32u)), countOneBits(vec4<i32>(-27477i, -24534i, global0.x, global1.c)))));
    var var_2 = arg_0.d.x;
    var_2 = false;
    global2 = -vec2<i32>(0i, countOneBits(max(-arg_1, -global0.x)));
    return arg_0;
}

fn func_1() -> Struct_1 {
    global1 = func_4(func_2(!global1.d.zy, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1964f, 211f, -170f), _wgslsmith_div_vec3_f32(vec3<f32>(-809f, -807f, -847f), vec3<f32>(-1042f, 1327f, -1853f)), false))))), _wgslsmith_add_i32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(821f + -874f)), -863f, true | !global1.a.x, 157f), global0.x));
    let var_0 = Struct_1(!vec3<bool>(!func_2(vec2<bool>(global1.a.x, false), vec3<f32>(1000f, 1589f, 204f)).a.x, func_4(func_2(vec2<bool>(false, true), vec3<f32>(252f, 699f, 2304f)), global0.x >> (u_input.a.x % 32u)).a.x, any(global1.d.zx)), vec3<i32>(global2.x, -1982i, 1i), -1i, !(!func_4(Struct_1(vec3<bool>(true, global1.d.x, true), global0.yyw, global0.x, global1.a), global2.x & -7846i).a));
    let var_1 = 211f;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -2897f))), _wgslsmith_f_op_f32(-var_1)), true));
    var var_3 = !select(vec4<bool>(!(!global1.d.x), all(vec3<bool>(global1.a.x, global1.d.x, var_0.d.x)), !var_0.a.x, true), select(vec4<bool>(all(vec3<bool>(true, var_0.d.x, true)), all(vec4<bool>(global1.d.x, true, true, true)), all(vec4<bool>(var_0.d.x, false, var_0.d.x, false)), any(vec4<bool>(var_0.d.x, false, true, global1.d.x))), select(!vec4<bool>(false, var_0.a.x, false, var_0.a.x), select(vec4<bool>(true, true, global1.d.x, true), vec4<bool>(true, true, true, true), global1.a.x), vec4<bool>(global1.a.x, false, global1.a.x, var_0.d.x)), select(!global1.a.x, any(vec2<bool>(global1.a.x, global1.d.x)), any(vec4<bool>(global1.a.x, true, var_0.a.x, var_0.d.x)))), var_0.d.x);
    return var_0;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = u_input.a;
    var var_1 = Struct_1(arg_2.a, ~abs(global0.zwx), arg_2.b.x, vec3<bool>(true, _wgslsmith_clamp_u32(0u, max(arg_1, u_input.a.x), ~4294967295u) == ~arg_1, 1i <= global1.b.x));
    var var_2 = arg_2;
    let var_3 = var_1.b;
    var var_4 = arg_2;
    return global0.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec3<bool>(true, !select(true, any(vec2<bool>(false, global1.d.x)), global1.d.x), !global1.a.x), ~_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(global1.b.x, global1.b.x, global1.b.x)) | global1.b, -vec3<i32>(global0.x, 1i, -49494i)), 0i | _wgslsmith_clamp_i32(-1609i, -2147483647i, -_wgslsmith_clamp_i32(global1.c, global1.b.x, -8579i)), !(!(!global1.d)));
    global2 = -countOneBits(func_5(all(global1.d), u_input.a.x, func_1()));
    let var_0 = ~22323u;
    var var_1 = func_2(global1.a.zx, vec3<f32>(_wgslsmith_f_op_f32(106f - 1092f), _wgslsmith_div_f32(120f, -528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1255f, -592f), _wgslsmith_f_op_f32(-668f + -171f))))));
    var_1 = func_4(func_2(select(vec2<bool>(true, true), global1.a.yx, var_1.a.zx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, 1220f, 259f)))) - vec3<f32>(-511f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -382f)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(select(func_2(vec2<bool>(false, false), vec3<f32>(-687f, -721f, -353f)).b.x, i32(-1i) * -2147483647i, func_1().d.x), -global1.b.x), -8605i));
    let var_2 = Struct_1(var_1.a, _wgslsmith_sub_vec3_i32(var_1.b, vec3<i32>(1i, ~(global0.x ^ -36692i), global2.x)), -4726i, func_4(Struct_1(vec3<bool>(var_1.a.x, false, true), (vec3<i32>(-2147483647i, var_1.b.x, global2.x) | vec3<i32>(global0.x, global2.x, var_1.c)) ^ (vec3<i32>(0i, global1.c, global1.b.x) << (vec3<u32>(u_input.a.x, 1u, var_0) % vec3<u32>(32u))), global2.x, var_1.a), select(_wgslsmith_clamp_i32(i32(-1i) * -11396i, 2147483647i, ~global0.x), var_1.c, false)).d);
    global0 = vec4<i32>(-(_wgslsmith_mult_i32(_wgslsmith_mult_i32(2047i, var_1.c), func_1().b.x) | ~(9240i << (var_0 % 32u))), 57969i | var_1.c, global1.c, reverseBits(0i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(u_input.a)), -833f, 130f);
}

