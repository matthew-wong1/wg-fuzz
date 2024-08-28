struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-1816f, 681f, 277f), vec3<f32>(-261f, -148f, 1362f), vec3<f32>(-596f, -1189f, 671f), vec3<f32>(1070f, -302f, 251f), vec3<f32>(-1730f, 1732f, 686f), vec3<f32>(418f, -915f, 742f), vec3<f32>(1282f, -733f, 489f), vec3<f32>(-214f, -1437f, 265f), vec3<f32>(-555f, -721f, 1096f), vec3<f32>(-690f, 425f, 358f), vec3<f32>(-1805f, -542f, -1048f), vec3<f32>(441f, -686f, -536f), vec3<f32>(1589f, -289f, -1499f), vec3<f32>(1414f, 444f, -1311f), vec3<f32>(619f, -417f, 1892f), vec3<f32>(-2881f, -179f, -1066f), vec3<f32>(-2813f, 1752f, -135f), vec3<f32>(-1626f, -1000f, -936f), vec3<f32>(-1827f, 158f, -118f), vec3<f32>(-1176f, -507f, 1865f));

var<private> global1: array<f32, 26> = array<f32, 26>(1000f, 1343f, 788f, -1573f, -1152f, -997f, 1580f, 1134f, -1089f, -472f, 104f, 1439f, -1033f, -1593f, 1000f, -322f, 458f, 480f, -244f, -1324f, 1506f, 761f, -974f, 1340f, 1308f, -903f);

var<private> global2: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> i32 {
    global1 = array<f32, 26>();
    let var_0 = Struct_2(-(~(-vec2<i32>(13287i, u_input.e))), u_input.b.x);
    global2 = ~0i;
    var var_1 = 1356f;
    global0 = array<vec3<f32>, 20>();
    return -2147483647i;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec2<i32> {
    global2 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-u_input.e, u_input.e, u_input.e, arg_2.b) & vec4<i32>(1i, ~u_input.e, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, arg_2.b, u_input.c), vec4<i32>(-1i, 38884i, 31663i, -60812i)))), ~(-abs(vec4<i32>(arg_2.a.x, 3826i, 7395i, -46239i) & vec4<i32>(-1i, arg_2.a.x, u_input.b.x, 12916i))));
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a, 0u), ~u_input.d, u_input.d, u_input.a), (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.d)) ^ firstTrailingBit(vec4<u32>(u_input.a, 0u, 4294967295u, 73810u))), _wgslsmith_div_u32(17191u, u_input.d)), _wgslsmith_mult_vec2_u32(min(vec2<u32>(max(19217u, u_input.d), ~u_input.d), vec2<u32>(~u_input.a, ~u_input.d)), select(~vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.a, 0u), false) & ~(~vec2<u32>(0u, 1u))));
    var var_1 = Struct_2(min(vec2<i32>(-u_input.e, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, 2147483647i, -2147483647i), vec3<i32>(u_input.b.x, arg_2.b, arg_2.a.x)), abs(vec3<i32>(37420i, arg_2.a.x, u_input.e)))), _wgslsmith_sub_vec2_i32(countOneBits(-vec2<i32>(arg_2.b, 0i)), (u_input.b >> (vec2<u32>(u_input.a, 5773u) % vec2<u32>(32u))) << (~vec2<u32>(0u, 15192u) % vec2<u32>(32u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, func_2(), -41351i, ~(-u_input.e)), ~(~(vec4<i32>(arg_2.a.x, u_input.b.x, u_input.e, u_input.b.x) << (vec4<u32>(u_input.a, 83581u, 4900u, var_0.x) % vec4<u32>(32u))))));
    var var_2 = var_0.x;
    var_0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(abs(var_0.x), var_0.x ^ var_0.x), vec2<u32>(var_0.x, reverseBits(0u))), abs(~vec2<u32>(101982u, 1u)));
    return firstLeadingBit(firstTrailingBit(arg_2.a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1258f, _wgslsmith_f_op_f32(select(-1979f, arg_0.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 26u)])), 461f) - global0[_wgslsmith_index_u32(1u, 20u)]));
    global2 = min(arg_1.x, _wgslsmith_dot_vec3_i32(arg_1, _wgslsmith_div_vec3_i32(arg_1 << (countOneBits(vec3<u32>(4294967295u, u_input.a, 61863u)) % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-19725i, -19292i, u_input.c), vec3<i32>(-2147483647i, 9502i, 3594i)))));
    let var_1 = Struct_3(select(select(vec4<bool>(true, any(vec4<bool>(true, false, true, false)), false, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), all(vec2<bool>(true, false))), select(vec4<bool>(true, select(false, false, true), select(true, true, true), 2147483647i == arg_1.x), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), !any(vec4<bool>(true, false, true, false))), true), true);
    global0 = array<vec3<f32>, 20>();
    global2 = reverseBits(max(_wgslsmith_dot_vec4_i32(-vec4<i32>(38979i, arg_1.x, 0i, arg_1.x), abs(vec4<i32>(50241i, arg_1.x, arg_1.x, -45506i))), -2147483647i)) & -((~u_input.c | u_input.e) << (_wgslsmith_dot_vec2_u32(vec2<u32>(20069u, u_input.d) | vec2<u32>(4294967295u, 19708u), vec2<u32>(u_input.d, 1u) ^ vec2<u32>(u_input.a, u_input.a)) % 32u));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-vec4<i32>(_wgslsmith_dot_vec2_i32(func_1(-386f, Struct_3(vec4<bool>(true, true, false, true), true), Struct_2(u_input.b, u_input.e)), vec2<i32>(0i, u_input.e)), abs(~u_input.b.x), _wgslsmith_clamp_i32(countOneBits(-6880i), func_1(1095f, Struct_3(vec4<bool>(true, true, true, false), false), Struct_2(u_input.b, u_input.c)).x, -20960i), -min(2147483647i, 1i)));
    global2 = min(-2147483647i, -func_3(vec4<f32>(_wgslsmith_div_f32(990f, global1[_wgslsmith_index_u32(u_input.a, 26u)]), 832f, global1[_wgslsmith_index_u32(~u_input.d, 26u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(19316u, 26u)] * global1[_wgslsmith_index_u32(u_input.d, 26u)])), -firstTrailingBit(var_0.wwz)));
    var var_1 = select(vec3<bool>(!((var_0.x > var_0.x) | any(vec3<bool>(true, false, true))), all(vec4<bool>(true, true, true, true)), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), vec3<bool>(true, true, true), !(all(vec4<bool>(true, true, true, true)) == (true && any(vec4<bool>(false, true, false, true)))));
    var var_2 = 28175u;
    var var_3 = firstTrailingBit(-_wgslsmith_add_vec3_i32(vec3<i32>(abs(u_input.c), _wgslsmith_clamp_i32(-38968i, u_input.e, -46550i), _wgslsmith_mult_i32(u_input.b.x, 2147483647i)), vec3<i32>(u_input.c, u_input.b.x, _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(0i, 32646i, var_0.x, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_i32(u_input.b, ~(u_input.b ^ vec2<i32>(var_3.x, var_3.x)), vec2<i32>(-1i) * -var_0.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1507f)))))), -105f, _wgslsmith_f_op_f32(1772f - _wgslsmith_f_op_f32(sign(-1726f))), var_0.yyx);
}

