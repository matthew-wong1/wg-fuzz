struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(445f, -106f, -470f, 172f), vec4<f32>(875f, -775f, -228f, 1278f), vec4<f32>(168f, 1103f, 661f, -1747f), vec4<f32>(-310f, -619f, -1382f, 877f), vec4<f32>(1138f, -1276f, -1000f, 239f), vec4<f32>(-899f, 853f, -222f, -875f), vec4<f32>(-1531f, -832f, 1277f, -829f), vec4<f32>(864f, -268f, -873f, -847f), vec4<f32>(-1809f, 1457f, -1000f, 667f), vec4<f32>(571f, -1000f, -145f, -838f), vec4<f32>(-1000f, 2222f, -392f, -1968f), vec4<f32>(-701f, 118f, 390f, 388f), vec4<f32>(1080f, 579f, -640f, -237f), vec4<f32>(-1737f, -1452f, 1051f, 354f), vec4<f32>(-374f, 805f, 384f, -350f), vec4<f32>(-1065f, -693f, -644f, 1364f), vec4<f32>(967f, -504f, -356f, 771f), vec4<f32>(754f, 499f, 1138f, -1523f), vec4<f32>(1196f, -1284f, 1335f, 423f), vec4<f32>(-873f, 582f, 696f, 357f), vec4<f32>(2008f, -567f, 703f, 1337f), vec4<f32>(-922f, 136f, -1019f, -1000f), vec4<f32>(-989f, -171f, 1634f, 1724f), vec4<f32>(-730f, -1580f, -1000f, 125f), vec4<f32>(1495f, -2185f, -772f, 1865f), vec4<f32>(-816f, 1427f, 1348f, 521f), vec4<f32>(-107f, 205f, 1157f, 1597f), vec4<f32>(1818f, 737f, -411f, -1000f), vec4<f32>(-271f, -1000f, 593f, 1563f), vec4<f32>(-635f, -744f, -1000f, -677f));

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(13164u, 22577u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(38657u, 12665u), vec2<u32>(88987u, 56563u), vec2<u32>(0u, 6371u), vec2<u32>(35571u, 0u), vec2<u32>(49539u, 21262u), vec2<u32>(4294967295u, 2600u), vec2<u32>(17463u, 21980u), vec2<u32>(28593u, 34106u), vec2<u32>(10556u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u));

var<private> global2: array<Struct_1, 32>;

var<private> global3: array<f32, 22> = array<f32, 22>(1000f, 765f, -903f, 655f, -826f, -419f, -1092f, -498f, -152f, 521f, -730f, -934f, 1941f, -1236f, 1000f, 461f, -856f, 1000f, 1000f, 1524f, 1622f, -145f);

var<private> global4: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-885f, arg_2.a), vec2<f32>(global3[_wgslsmith_index_u32(28952u, 22u)], 277f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, global3[_wgslsmith_index_u32(u_input.b.x, 22u)]) * vec2<f32>(334f, arg_2.a)), !arg_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.a, 1564f), vec2<f32>(arg_2.a, arg_2.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], -220f) + vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], 476f))), select(select(vec2<bool>(arg_0.x, arg_1.x), arg_0.zy, true), select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false), true), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(3069u, 22u)], global3[_wgslsmith_index_u32(1u, 22u)]), vec2<f32>(-2756f, -214f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], 524f) * vec2<f32>(-288f, 623f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(1u, 22u)], 481f) + vec2<f32>(-319f, global3[_wgslsmith_index_u32(4294967295u, 22u)])))))));
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(min(_wgslsmith_add_vec3_u32(u_input.c, u_input.b.yyy << (u_input.c % vec3<u32>(32u))), u_input.b.zwx), vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.c.x, ~u_input.a), u_input.b.x)), _wgslsmith_mod_vec3_u32(u_input.c, u_input.b.zzy));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_3 = abs(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(arg_2.b << (0u % 32u)), -u_input.d), u_input.d));
    global2 = array<Struct_1, 32>();
    return 546f;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(u_input.a, 32u)]))), 1851f), ~26459i);
    let var_1 = vec2<i32>(8615i, -41838i);
    let var_2 = var_0;
    var var_3 = u_input.b.x ^ u_input.b.x;
    var var_4 = 4415i;
    return Struct_1(-1695f, -_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.b, -1i), _wgslsmith_sub_vec2_i32(var_1, var_1)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = 37088u;
    let var_1 = !select(vec2<bool>(arg_0, any(!vec4<bool>(arg_0, arg_2, arg_2, true))), select(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_2, true), vec2<bool>(arg_2, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, arg_2), vec2<bool>(true, false))), select(vec2<bool>(false, arg_2), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_2, true)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_2, true), vec2<bool>(true, arg_2))), vec2<bool>(true, true)), select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, true), arg_0)), !select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), vec2<bool>(arg_0, arg_2)), (arg_3.b > -56218i) | arg_0));
    global4 = true;
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, false, var_1.x), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(var_1.x, var_1.x, false), arg_2), false), select(select(vec3<bool>(arg_0, arg_2, false), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, arg_0, true)), select(vec3<bool>(arg_0, arg_2, false), vec3<bool>(var_1.x, false, arg_0), vec3<bool>(arg_0, true, false)), all(vec4<bool>(arg_0, arg_2, false, arg_2))), arg_3))), global2[_wgslsmith_index_u32(62189u, 32u)], Struct_1(-1176f, 2147483647i), max(vec3<i32>(arg_1.b, 1i, ~_wgslsmith_mult_i32(arg_3.b, arg_1.b)), countOneBits(-(vec3<i32>(u_input.d, 10027i, 30141i) >> (vec3<u32>(1u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))))));
    let var_3 = !(~firstLeadingBit(firstTrailingBit(u_input.c.x)) >= _wgslsmith_mult_u32(~(84597u << (0u % 32u)), abs(u_input.c.x) & 4294967295u));
    return vec3<i32>(arg_3.b, u_input.d, max(func_2(1668f, func_2(_wgslsmith_f_op_f32(round(arg_3.a)), func_2(1000f, var_2, arg_1, vec3<i32>(var_2.b, -47723i, -70499i)), Struct_1(-485f, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(38918i, arg_3.b, -1i), vec3<i32>(73783i, -29418i, u_input.d))), func_2(var_2.a, func_2(arg_3.a, Struct_1(311f, 1i), Struct_1(207f, u_input.d), vec3<i32>(var_2.b, arg_3.b, arg_1.b)), func_2(512f, Struct_1(632f, var_2.b), var_2, vec3<i32>(2147483647i, var_2.b, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-9615i, arg_3.b, var_2.b), vec3<i32>(0i, u_input.d, var_2.b))), vec3<i32>(u_input.d, arg_1.b, var_2.b) & ~vec3<i32>(2147483647i, -1i, arg_1.b)).b, ~arg_1.b & _wgslsmith_clamp_i32(arg_3.b, 0i, arg_1.b)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    global1 = array<vec2<u32>, 16>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(reverseBits(25952u), 22u)], global3[_wgslsmith_index_u32(countOneBits(reverseBits(~1u)), 22u)])), _wgslsmith_div_f32(943f, -529f), arg_1.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-302f + _wgslsmith_f_op_f32(-1587f + global3[_wgslsmith_index_u32(63028u, 22u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1725f) - _wgslsmith_f_op_f32(step(-986f, global3[_wgslsmith_index_u32(16934u, 22u)]))), _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-2304f * arg_1.a))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1188f), 385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 22u)] * 659f) - arg_1.a)))), all(vec2<bool>(select(false, true, false), true)) == (u_input.c.x == ~(u_input.b.x << (81183u % 32u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_0.x))) * -1000f), abs(countOneBits(~1i)));
    var var_3 = func_2(-1000f, func_2(1332f, arg_1, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1870f))), 21181i), arg_3), arg_1, max(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, 18686i), _wgslsmith_mult_vec3_i32(vec3<i32>(6705i, arg_2, arg_1.b) ^ vec3<i32>(0i, 0i, arg_3.x), arg_3)), vec3<i32>(~(-1i), -34190i, _wgslsmith_mult_i32(~(-1i), 1i))));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1429f, 2089f))))) * func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_1, global2[_wgslsmith_index_u32(1u, 32u)], vec3<i32>(_wgslsmith_clamp_i32(arg_1.b, u_input.d, arg_2), -1i, ~var_3.b)).a), Struct_1(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, -1216f <= var_2.a), vec3<bool>(true, true, true), Struct_1(-728f, i32(-1i) * -13955i))), select(var_3.b, _wgslsmith_mod_i32(-46282i, 1i), true)), func_2(_wgslsmith_f_op_f32(select(-1000f, global3[_wgslsmith_index_u32(28460u, 22u)], !(-23786i != arg_2))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.a, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], false))), u_input.d ^ ~arg_2), func_2(var_2.a, global2[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.b.x)), 32u)], var_2, -_wgslsmith_clamp_vec3_i32(arg_3, arg_3, vec3<i32>(54336i, arg_2, 0i))), ~vec3<i32>(-arg_2, 50547i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_2.b, arg_2) & _wgslsmith_mod_vec3_i32(arg_3, vec3<i32>(2147483647i, -1i, -38308i)), arg_3) ^ vec3<i32>(func_4(any(vec3<bool>(false, false, true)), func_2(-758f, arg_1, global2[_wgslsmith_index_u32(14947u, 32u)], arg_3), true, func_2(var_1.x, var_2, global2[_wgslsmith_index_u32(0u, 32u)], vec3<i32>(-21249i, u_input.d, 3107i))).x, _wgslsmith_add_i32(1i, arg_0.x), arg_0.x));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(-_wgslsmith_sub_i32(~0i, u_input.d), max(max(10909i, 3631i), arg_0.b));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-1056f * -393f)), -1i);
    let var_2 = global2[_wgslsmith_index_u32(80183u, 32u)];
    let var_3 = 334f;
    global3 = array<f32, 22>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * -175f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * 408f) + _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(u_input.a, 32u)]))))), func_4(true, func_2(arg_0.a, func_5(vec2<i32>(4682i, 1i), var_1, 23704i, abs(vec3<i32>(var_1.b, u_input.d, 36549i))), global2[_wgslsmith_index_u32(23028u >> (1u % 32u), 32u)], -max(vec3<i32>(-2147483647i, var_2.b, var_0), vec3<i32>(var_1.b, 50143i, 0i))), !all(vec4<bool>(true, true, true, true)), var_1).x);
}

fn func_1() -> vec2<u32> {
    global0 = array<vec4<f32>, 30>();
    let var_0 = func_6(func_5(-vec2<i32>(_wgslsmith_mult_i32(u_input.d, -2147483647i), firstTrailingBit(-23394i)), global2[_wgslsmith_index_u32(u_input.c.x, 32u)], _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-11915i, -55335i), vec2<i32>(-3580i, 29379i)), u_input.d), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.d, u_input.d, -2147483647i)), func_4(true, Struct_1(-2410f, u_input.d), false, func_2(-631f, global2[_wgslsmith_index_u32(1u, 32u)], Struct_1(global3[_wgslsmith_index_u32(118968u, 22u)], -1i), vec3<i32>(1i, 2147483647i, u_input.d))))));
    var var_1 = _wgslsmith_div_vec3_i32(~firstLeadingBit(reverseBits(vec3<i32>(-26892i, var_0.b, 80591i) << (u_input.c % vec3<u32>(32u)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b, var_0.b, var_0.b) >> (u_input.b.xzw % vec3<u32>(32u)), abs(vec3<i32>(u_input.d, u_input.d, 13623i) << (u_input.c % vec3<u32>(32u)))));
    let var_2 = vec4<i32>(u_input.d, _wgslsmith_add_i32(countOneBits(var_0.b), 20465i), var_1.x, reverseBits(-142i));
    var var_3 = var_2.x;
    return u_input.b.zw;
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> u32 {
    global3 = array<f32, 22>();
    let var_0 = 396f;
    let var_1 = vec4<f32>(global3[_wgslsmith_index_u32(arg_3.x, 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(256f, -920f, true)))))), func_6(global2[_wgslsmith_index_u32(arg_1, 32u)]).a, global3[_wgslsmith_index_u32(~(~(~_wgslsmith_add_u32(arg_3.x, 48317u))), 22u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))) + _wgslsmith_f_op_f32(step(-1654f, _wgslsmith_f_op_f32(-var_1.x))))));
    var var_3 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(func_1().x, 937u, 4294967295u), countOneBits(vec3<u32>(_wgslsmith_mod_u32(84068u, 1u), 1u, abs(arg_1)))), ~abs(u_input.b.zwz));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x & 0u, 22u)], -895f, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.b.x, 22u)]))))), vec3<f32>(_wgslsmith_f_op_f32(abs(534f)), global3[_wgslsmith_index_u32(u_input.a, 22u)], global3[_wgslsmith_index_u32(1u, 22u)]), false)));
    var var_1 = u_input.a;
    var var_2 = select(17588i, _wgslsmith_clamp_i32(u_input.d, abs(~u_input.d), -18534i), func_7(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(1u, 0u, u_input.c.x, u_input.c.x)), 32u)], ~_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.a, 35377u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy)), ~u_input.c.xy & func_1()) <= 1u);
    global4 = select(func_5(select(func_4(false, Struct_1(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], u_input.d), true, Struct_1(-487f, 0i)).yy, select(vec2<i32>(10685i, u_input.d), vec2<i32>(u_input.d, u_input.d), false), true), func_5(vec2<i32>(0i, u_input.d), func_6(global2[_wgslsmith_index_u32(0u, 32u)]), u_input.d, abs(vec3<i32>(39234i, 0i, u_input.d))), u_input.d, abs(vec3<i32>(12202i, -39070i, 1i) >> (u_input.c % vec3<u32>(32u)))).b, reverseBits(u_input.d), true) <= _wgslsmith_dot_vec3_i32(select(~vec3<i32>(-21594i, -589i, u_input.d), vec3<i32>(~u_input.d, u_input.d, u_input.d), true && select(true, false, false)), countOneBits(vec3<i32>(u_input.d, min(1i, u_input.d), firstLeadingBit(u_input.d))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-1000f - var_0.x), min(~2147483647i, ~abs(_wgslsmith_clamp_i32(u_input.d, -49691i, -22521i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(func_1().x & ~(u_input.c.x ^ u_input.c.x), 22u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.yz, vec2<f32>(228f, var_0.x), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-var_0.zx), global3[_wgslsmith_index_u32(u_input.c.x, 22u)] <= var_0.x)), vec2<f32>(var_3.a, -924f), true)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-970f, var_3.a)))), vec2<f32>(var_3.a, -473f))), _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d, var_3.b, -2147483647i, -16732i), vec4<i32>(21180i, 0i, -1i, var_3.b))), -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_3.b, u_input.d, var_3.b, u_input.d)), vec4<i32>(-1i, u_input.d, 1i, -2147483647i) | vec4<i32>(var_3.b, 2147483647i, -21317i, 2147483647i))), ~firstTrailingBit(vec2<u32>(u_input.b.x | u_input.b.x, 20439u)));
}

