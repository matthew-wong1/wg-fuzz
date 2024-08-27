struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

var<private> global2: Struct_5;

var<private> global3: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(0i, 1i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 8588i), vec2<i32>(0i, -35995i), vec2<i32>(-16723i, -66595i), vec2<i32>(-1275i, -8100i), vec2<i32>(-32386i, 23765i), vec2<i32>(70645i, -32201i), vec2<i32>(i32(-2147483648), -1092i), vec2<i32>(52053i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-35795i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -21030i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(38469i, -1i), vec2<i32>(i32(-2147483648), 2788i), vec2<i32>(1i, -1i), vec2<i32>(18171i, 0i), vec2<i32>(16158i, -1i), vec2<i32>(6993i, 2147483647i), vec2<i32>(51153i, 2192i), vec2<i32>(-38381i, -30679i), vec2<i32>(1i, -1i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-208f)));
    var var_0 = true;
    var var_1 = ~_wgslsmith_mult_vec2_u32(~u_input.a.wy, select(~(vec2<u32>(20308u, 0u) & vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.yw, global0.yw));
    var_0 = var_1.x >= ~15025u;
    var var_2 = select(-select(global2.a.x, ~(-1i), any(vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec3_i32(arg_0, arg_0)), -(~(-42225i)))), (i32(-1i) * -2147483647i) > -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(22859i, 1i, global2.a.x, arg_0.x)), vec4<i32>(19304i, 1i, arg_0.x, -1i)));
    return ~(~min(_wgslsmith_clamp_u32(~var_1.x, ~1u, _wgslsmith_add_u32(var_1.x, 4294967295u)), var_1.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_vec2_u32(select(u_input.a.wy, arg_0, global0.yy), (~(u_input.a.xx | u_input.a.zw) >> (~(vec2<u32>(arg_0.x, arg_0.x) | vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u))) | arg_0);
    let var_1 = 25355i >> (var_0.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(select(802f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(310f, -1530f)))), true));
    global2 = Struct_5(-(firstTrailingBit(global2.a >> (u_input.a.xy % vec2<u32>(32u))) >> (~(vec2<u32>(var_0.x, 0u) << (arg_0 % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = select(!(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, global0.x, false, global0.x), global0.x), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x)))), select(!select(select(vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, true, global0.x, false), true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(false, true, global0.x, false)), !vec4<bool>(true, select(false, true, false), !global0.x, select(true, true, true)), global0.x), global0.x);
    return vec3<i32>(2147483647i, 3914i, global2.a.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    let var_0 = vec3<i32>(reverseBits(_wgslsmith_sub_i32(global2.a.x, _wgslsmith_clamp_i32(global2.a.x, -2613i, global2.a.x))), -29540i, 15955i);
    global1 = 1586f;
    var var_1 = var_0.zy;
    let var_2 = vec4<i32>(2147483647i, 0i, 1i, _wgslsmith_dot_vec2_i32(-(global2.a | vec2<i32>(var_0.x, 71355i)), ~firstTrailingBit(global2.a)));
    var var_3 = func_4(vec2<u32>(~func_3(vec3<i32>(0i, var_2.x, var_2.x)), 0u), _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(var_2.x, _wgslsmith_div_i32(-1i, -1i)) ^ -(~var_1.x), var_2.x));
    return 32956u;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<u32>) -> bool {
    let var_0 = Struct_2(arg_1.ywx, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1171f, 888f, 350f))), vec4<f32>(-744f, -343f, 375f, -1969f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(458f, 462f, -1174f, -1330f) + vec4<f32>(-1000f, -224f, 889f, 325f)))), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 30367u) | ~u_input.a.x, u_input.a.x)), Struct_1(-1i, u_input.a, true, reverseBits(vec3<i32>(min(arg_0, 7237i), _wgslsmith_sub_i32(arg_0, -12867i), countOneBits(global2.a.x)))), -vec3<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(global2.a.x, -2147483647i)), global2.a.x, _wgslsmith_div_i32(global2.a.x, global2.a.x)), Struct_1(_wgslsmith_mult_i32(0i, abs(-17931i)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(28145u, 1u, u_input.a.x, 1u)), firstTrailingBit(vec4<u32>(u_input.a.x, 28340u, 0u, 0u)), u_input.a | u_input.a), arg_1.x, ~vec3<i32>(func_4(arg_2, arg_0).x, firstLeadingBit(0i), arg_0)));
    var var_1 = var_0.e.b.x << (arg_2.x % 32u);
    let var_2 = Struct_4(select(var_0.a, var_0.a, true), firstLeadingBit(~(arg_2.x << (u_input.a.x % 32u)) | var_0.b), var_0);
    return any(select(!vec4<bool>(false, false, !var_0.a.x, global0.x), arg_1, vec4<bool>(countOneBits(7341u) >= ~arg_2.x, any(arg_1.zxx), var_2.a.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = Struct_4(vec3<bool>(global0.x | global0.x, true, true), _wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.wx), firstTrailingBit(u_input.a.yz), true), ~vec2<u32>(55830u, 985u)) & (1u ^ (48354u ^ _wgslsmith_add_u32(4294967295u, u_input.a.x))), Struct_2(!vec3<bool>(true, func_1(global2.a.x, vec4<bool>(global0.x, global0.x, true, false), u_input.a.yz), 1u < u_input.a.x), 91047u ^ _wgslsmith_add_u32(u_input.a.x | 8614u, ~u_input.a.x), Struct_1(-1i, ~u_input.a | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 87437u, 44846u, u_input.a.x), u_input.a), true, countOneBits(vec3<i32>(global2.a.x, global2.a.x, global2.a.x))), countOneBits(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -17121i, 1i), vec3<i32>(-2147483647i, global2.a.x, global2.a.x))), Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-4287i, 31528i, global2.a.x, global2.a.x)), -vec4<i32>(global2.a.x, 5373i, 29034i, -1i)), vec4<u32>(func_2(vec4<f32>(986f, 400f, 2026f, -577f), 2454u), u_input.a.x, ~u_input.a.x, 0u), all(vec3<bool>(global0.x, global0.x, global0.x)), _wgslsmith_add_vec3_i32(func_4(u_input.a.xx, global2.a.x), ~vec3<i32>(-29218i, -1i, 0i)))));
    let var_2 = var_1.c.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(981f, _wgslsmith_f_op_f32(-339f * _wgslsmith_f_op_f32(f32(-1f) * -765f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1304f, -381f, true)) + _wgslsmith_div_f32(-368f, _wgslsmith_div_f32(458f, -1025f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1406f, 723f, -1000f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(303f, -1077f, 615f), vec3<f32>(-324f, -906f, -2772f), global0.x))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(1280f, -119f)), _wgslsmith_f_op_f32(ceil(1414f)), _wgslsmith_f_op_f32(1360f - -596f)), vec3<f32>(1f, 1f, 1f), true)))));
    let var_4 = -min(var_1.c.c.d, reverseBits(abs(var_1.c.c.d))) << ((abs(vec3<u32>(35865u, countOneBits(1u), firstTrailingBit(u_input.a.x))) >> (u_input.a.wwy % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_5 = Struct_5(firstLeadingBit(var_1.c.e.d.zz));
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1431f, -1000f, -638f, var_3.x), vec4<f32>(-1359f, var_3.x, var_3.x, var_3.x), vec4<bool>(global0.x, true, false, false))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, 934f, var_3.x, 651f), vec4<f32>(var_3.x, 506f, -124f, var_3.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1376f, 163f, 1000f, var_3.x) + vec4<f32>(-1466f, var_3.x, var_3.x, var_3.x)) * vec4<f32>(-241f, var_3.x, 423f, -570f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 842f, -1277f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 302f, var_3.x, var_3.x)))));
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_6.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-593f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~func_3(var_1.c.c.d)), u_input.a.x ^ 1u, ~(~73271u)), _wgslsmith_mod_i32(max(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.a, 2147483647i), vec2<i32>(global2.a.x, var_2.d.x)), vec2<i32>(80756i, global2.a.x)), -func_4(vec2<u32>(u_input.a.x, 55480u), var_4.x).x), i32(-1i) * -41504i), ~firstTrailingBit(var_1.c.c.b.zyz), -2147483647i);
}

