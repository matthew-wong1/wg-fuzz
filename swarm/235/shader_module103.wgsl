struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(1581f, vec4<u32>(4294967295u, 0u, 1u, 24070u), vec2<i32>(-20381i, 0i), vec2<bool>(false, true), true), Struct_1(838f, vec4<u32>(35551u, 1u, 1u, 45499u), vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, true), false), Struct_1(-1224f, vec4<u32>(1u, 4294967295u, 1u, 1u), vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, false), true), Struct_1(-201f, vec4<u32>(4294967295u, 4294967295u, 0u, 5945u), vec2<i32>(-20941i, 29037i), vec2<bool>(true, false), false), Struct_1(-203f, vec4<u32>(5129u, 0u, 108056u, 0u), vec2<i32>(2147483647i, 0i), vec2<bool>(false, true), true), Struct_1(406f, vec4<u32>(18967u, 70393u, 15790u, 0u), vec2<i32>(0i, -57295i), vec2<bool>(false, false), true), Struct_1(471f, vec4<u32>(1u, 0u, 1u, 1u), vec2<i32>(16961i, -1i), vec2<bool>(false, false), false));

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: vec3<u32>;

var<private> global3: vec2<f32> = vec2<f32>(1000f, 1383f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(2698f, 767f));
    var var_0 = u_input.d.x;
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(abs(0u << (global2.x % 32u)), 0u), countOneBits(1u ^ _wgslsmith_mult_u32(7478u, global2.x)), ~(~61183u)), arg_1.b.xyx);
    global1 = arg_0;
    var_0 = u_input.d.x;
    return arg_1.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> vec4<f32> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_f32(arg_1.x, -589f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), -2141f)))))), reverseBits(vec4<u32>(max(var_0.b.x, 40865u) | 6500u, abs(~30856u), ~_wgslsmith_sub_u32(arg_0.b.x, 4294967295u), arg_0.b.x)), max(arg_0.c & select(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(var_0.c.x, 1i), select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.d)), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3, -1i), var_0.c) | _wgslsmith_div_vec2_i32(arg_0.c, vec2<i32>(u_input.d.x, u_input.c)))), !(!var_0.d), any(vec4<bool>(true, global1.x, false, (4294967295u <= global2.x) && var_0.e)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, -1226f))), ~var_2.b, reverseBits(countOneBits(_wgslsmith_div_vec2_i32(max(vec2<i32>(6265i, u_input.a), arg_0.c), vec2<i32>(var_2.c.x, u_input.c)))), select(select(!select(var_2.d, vec2<bool>(var_2.d.x, true), vec2<bool>(var_2.e, var_2.e)), !global1.xx, !var_0.d), var_2.d, select(!var_0.d, var_2.d, select(!vec2<bool>(var_0.e, global1.x), vec2<bool>(false, var_0.e), !vec2<bool>(true, var_2.d.x)))), all(vec4<bool>(arg_0.b.x < ~var_2.b.x, all(!vec4<bool>(false, true, false, var_2.e)), all(var_0.d), false)));
    var var_4 = !(select(var_2.a == -1000f, all(!var_0.d), any(select(global1.xyz, vec3<bool>(var_2.e, var_0.d.x, false), true))) & !(!var_2.d.x || false));
    return arg_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global3.x)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-561f * 1403f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(582f - _wgslsmith_f_op_f32(min(global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(~global2.x, 7u)], arg_1, arg_1.x, ~arg_3)).x, arg_2.x)));
    global0 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_1 + arg_1), _wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(global3.x, -330f, global3.x, global3.x)))))))));
    let var_2 = abs(-(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_3, arg_3, -16928i) | vec4<i32>(-72475i, arg_0.x, arg_0.x, arg_3), vec4<i32>(-43709i, -13648i, arg_3, arg_3))));
    global2 = vec3<u32>(4294967295u, 25724u, 4294967295u) >> (~firstTrailingBit(abs(~vec3<u32>(67597u, global2.x, 0u))) % vec3<u32>(32u));
    return select(!(!vec4<bool>(false, arg_2.x, global1.x, true)), !vec4<bool>(arg_2.x, select(any(vec4<bool>(true, true, true, false)), true, arg_2.x || arg_2.x), all(arg_2.xy), global1.x || (global2.x > 1u)), true);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = -vec2<i32>(-46247i, _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, u_input.d.x), -34924i));
    global0 = array<Struct_1, 7>();
    global2 = firstLeadingBit(arg_3 << (arg_3 % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.wz, vec2<u32>(1u, 71919u)), arg_3.zz), arg_3.x, _wgslsmith_sub_u32(global2.x, _wgslsmith_sub_u32(abs(49931u), func_2(vec4<bool>(true, arg_1.x, global1.x, global1.x), global0[_wgslsmith_index_u32(84407u, 7u)], vec3<u32>(44034u, arg_2.x, 0u)))));
    global1 = select(select(vec4<bool>(false, true, any(!global1.xyz), false || arg_1.x), !select(vec4<bool>(arg_1.x, global1.x, arg_1.x, true), !vec4<bool>(false, arg_1.x, true, global1.x), vec4<bool>(global1.x, false, true, false)), any(func_4(vec3<i32>(0i, -67123i, u_input.d.x), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(arg_3.x, 7u)], vec4<f32>(973f, global3.x, arg_0, -355f), arg_0, u_input.b.x)), !vec3<bool>(true, global1.x, true), max(-22506i, u_input.d.x)))), !vec4<bool>(select(true, all(vec2<bool>(arg_1.x, global1.x)), arg_1.x), true, any(global1.yx), global1.x), select(!func_4(vec3<i32>(u_input.d.x, -42368i, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(1627f, global3.x, -1000f, global3.x), vec4<f32>(-908f, -1748f, 2612f, 218f)), !global1.xwx, 1i), !vec4<bool>(all(vec3<bool>(arg_1.x, false, false)), global1.x, arg_1.x, global1.x), false));
    var var_1 = !select(!(!arg_1), select(select(global1.zxz, !global1.www, true), vec3<bool>(arg_1.x, global1.x, all(global1.zx)), !select(arg_1, arg_1, arg_1.x)), true);
    return !vec4<bool>(arg_1.x, true, var_1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    global1 = select(!(!func_1(_wgslsmith_f_op_f32(max(807f, global3.x)), vec3<bool>(false, global1.x, global1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(95398u, 29174u, 0u, 4294967295u)), firstLeadingBit(vec3<u32>(17593u, 4294967295u, global2.x)))), vec4<bool>(true, global1.x, any(select(func_1(global3.x, vec3<bool>(true, true, global1.x), vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec3<u32>(1u, global2.x, 30614u)), !vec4<bool>(global1.x, true, global1.x, global1.x), !global1.x)), any(!(!vec4<bool>(global1.x, global1.x, false, global1.x)))), all(select(func_1(_wgslsmith_f_op_f32(-global3.x), global1.ywx, vec4<u32>(0u, 26384u, global2.x, global2.x) & vec4<u32>(33377u, global2.x, global2.x, 10035u), ~vec3<u32>(global2.x, global2.x, global2.x)), vec4<bool>(true, true, global1.x && global1.x, global1.x), any(!vec4<bool>(global1.x, global1.x, true, global1.x)))));
    var var_1 = _wgslsmith_div_vec2_i32(u_input.d.xz, vec2<i32>(abs(_wgslsmith_add_i32(0i, u_input.d.x << (global2.x % 32u))), u_input.d.x));
    var_1 = -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, abs(-1i), -2617i), vec3<i32>(i32(-1i) * -22003i, 1i, 27042i)), _wgslsmith_mod_i32(min(_wgslsmith_sub_i32(-1i, 0i), ~var_1.x), 1i << (0u % 32u)));
    var var_2 = abs(u_input.d.zz);
    let x = u_input.a;
    s_output = StorageBuffer(~global2.xz, -6377i, vec3<f32>(506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global3.x, -1350f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -596f)))))));
}

