struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-2059f, vec2<f32>(-194f, 484f)), 682f, vec4<f32>(1006f, -466f, -181f, -323f), true);

var<private> global1: i32;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(1240f, vec2<f32>(-600f, -978f)), -818f, vec4<f32>(-1000f, -494f, 348f, 1425f), true), Struct_2(Struct_1(-327f, vec2<f32>(-1908f, 995f)), -574f, vec4<f32>(189f, -780f, 1332f, 1988f), true), Struct_2(Struct_1(287f, vec2<f32>(1116f, -644f)), -1144f, vec4<f32>(659f, -2076f, -1582f, 1989f), true), Struct_2(Struct_1(-672f, vec2<f32>(-850f, 1000f)), -769f, vec4<f32>(-1721f, -1259f, 626f, -1259f), false), Struct_2(Struct_1(-1155f, vec2<f32>(535f, 1996f)), -1230f, vec4<f32>(-850f, -163f, 1620f, 409f), true), Struct_2(Struct_1(-192f, vec2<f32>(-714f, -754f)), -809f, vec4<f32>(-129f, -501f, 311f, 1272f), false), Struct_2(Struct_1(1667f, vec2<f32>(-293f, -428f)), 1424f, vec4<f32>(-470f, -101f, -455f, -666f), true), Struct_2(Struct_1(-501f, vec2<f32>(-1687f, 824f)), 923f, vec4<f32>(978f, -1075f, -674f, 1259f), true), Struct_2(Struct_1(-592f, vec2<f32>(-409f, 693f)), -1218f, vec4<f32>(-355f, -1000f, -333f, -1062f), false), Struct_2(Struct_1(-976f, vec2<f32>(535f, 742f)), -900f, vec4<f32>(952f, 1467f, 1355f, 388f), true), Struct_2(Struct_1(-1483f, vec2<f32>(-1000f, 1744f)), -520f, vec4<f32>(-228f, 427f, 200f, 562f), true), Struct_2(Struct_1(-1056f, vec2<f32>(-106f, -212f)), -514f, vec4<f32>(1148f, -439f, 1206f, -130f), true), Struct_2(Struct_1(803f, vec2<f32>(2459f, 1374f)), -400f, vec4<f32>(1195f, -605f, -1234f, -1436f), true), Struct_2(Struct_1(709f, vec2<f32>(-1024f, 913f)), 688f, vec4<f32>(-1000f, 157f, -192f, 1149f), true), Struct_2(Struct_1(1000f, vec2<f32>(-1430f, -1080f)), -1638f, vec4<f32>(437f, 535f, 863f, -1000f), false), Struct_2(Struct_1(1000f, vec2<f32>(201f, -1244f)), -1470f, vec4<f32>(-492f, -153f, 235f, 770f), true), Struct_2(Struct_1(-284f, vec2<f32>(-2099f, 2783f)), -914f, vec4<f32>(603f, 1149f, 1000f, 881f), true), Struct_2(Struct_1(778f, vec2<f32>(-433f, 250f)), -132f, vec4<f32>(1331f, -777f, 230f, -1830f), false), Struct_2(Struct_1(899f, vec2<f32>(715f, -285f)), 1985f, vec4<f32>(-1965f, 414f, 457f, -2533f), false), Struct_2(Struct_1(-778f, vec2<f32>(-2065f, 1093f)), 1000f, vec4<f32>(1000f, 235f, -1811f, 167f), false), Struct_2(Struct_1(1263f, vec2<f32>(121f, 222f)), 851f, vec4<f32>(918f, 1000f, 223f, -794f), false), Struct_2(Struct_1(-1000f, vec2<f32>(613f, 117f)), -1000f, vec4<f32>(1287f, 445f, -485f, 973f), true), Struct_2(Struct_1(-1000f, vec2<f32>(1000f, 1271f)), 1356f, vec4<f32>(867f, 1061f, -542f, -754f), false), Struct_2(Struct_1(1027f, vec2<f32>(-667f, 1000f)), -594f, vec4<f32>(845f, -638f, 1764f, -1095f), true), Struct_2(Struct_1(-1406f, vec2<f32>(592f, -1473f)), 1380f, vec4<f32>(-1710f, -600f, -228f, 1119f), false));

var<private> global3: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(select(max(countOneBits(vec3<u32>(u_input.b, u_input.b, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(26992u, 66005u, u_input.b))), firstLeadingBit(reverseBits(vec3<u32>(1u, u_input.b, 4294967295u))), select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(true, arg_0, global0.d), all(vec4<bool>(arg_0, global0.d, arg_0, global0.d)))), ~select(vec3<u32>(u_input.b, 1u, 18221u), firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<bool>(false, true, global0.d))), select(abs(min(vec3<u32>(u_input.b, 35193u, 4294967295u), vec3<u32>(45214u, 14148u, u_input.b))) & (select(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(u_input.b, u_input.b, 34278u), global0.d) & countOneBits(vec3<u32>(4294967295u, u_input.b, u_input.b))), ~vec3<u32>(u_input.b, max(u_input.b, 1u), u_input.b), false));
    global2 = array<Struct_2, 25>();
    var var_1 = -select(~vec3<i32>(-62514i, -arg_3, -34743i | u_input.a.x), _wgslsmith_clamp_vec3_i32(u_input.a.xxx | vec3<i32>(arg_3, arg_3, 21819i), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.xwz, u_input.a.zzz), vec3<i32>(2147483647i, arg_3, u_input.a.x)), _wgslsmith_clamp_vec3_i32(u_input.a.xyy, u_input.a.yyy, u_input.a.zzz)), false);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2044f), _wgslsmith_f_op_f32(arg_1.x * arg_2))), arg_2, global0.b);
    var var_3 = Struct_1(-210f, var_2.xy);
    return arg_0;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = abs(66304u);
    let var_1 = select(any(vec3<bool>(true, func_3(global0.d, _wgslsmith_div_vec2_f32(arg_0.a.b, vec2<f32>(-1098f, arg_0.c.x)), -1367f, -u_input.a.x), true)), all(!select(!vec4<bool>(arg_1.x, false, arg_1.x, true), select(vec4<bool>(arg_1.x, true, global0.d, true), vec4<bool>(true, arg_1.x, true, true), false), u_input.a.x == u_input.a.x)), -(firstTrailingBit(-1i) | -1i) <= (_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) & _wgslsmith_mod_i32(~u_input.a.x, -23840i)));
    var_0 = u_input.b;
    global0 = arg_0;
    let var_2 = vec2<u32>(~((select(0u, u_input.b, arg_0.d) >> (~u_input.b % 32u)) << ((countOneBits(u_input.b) << (~0u % 32u)) % 32u)), ~((~u_input.b >> (1u % 32u)) | u_input.b));
    return Struct_2(arg_0.a, -211f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, arg_0.a.a, 1177f, -1119f)))) * arg_0.c), true);
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    global2 = array<Struct_2, 25>();
    global1 = 10976i;
    global0 = func_2(global2[_wgslsmith_index_u32(~reverseBits(~u_input.b), 25u)], !(!(!vec2<bool>(global0.d, false))));
    var var_0 = firstLeadingBit(arg_0.x);
    var var_1 = _wgslsmith_mult_vec3_u32(~firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 1u, 44516u), vec3<u32>(u_input.b, u_input.b, 1u))), ~_wgslsmith_sub_vec3_u32(~(vec3<u32>(36448u, 1u, u_input.b) ^ vec3<u32>(57797u, u_input.b, 31752u)), vec3<u32>(~1221u, 55035u | u_input.b, ~u_input.b)));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(-53093i, -1i, ~_wgslsmith_div_i32(u_input.a.x, arg_0.x)), ~(-1729i));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    return Struct_2(func_2(func_2(func_2(global2[_wgslsmith_index_u32(61333u, 25u)], vec2<bool>(global0.d, arg_3.d)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(arg_3.d, true))), !select(select(vec2<bool>(global0.d, false), vec2<bool>(false, arg_3.d), vec2<bool>(arg_3.d, global0.d)), select(vec2<bool>(arg_3.d, arg_3.d), vec2<bool>(false, true), vec2<bool>(arg_3.d, true)), select(vec2<bool>(arg_3.d, false), vec2<bool>(global0.d, true), vec2<bool>(global0.d, false)))).a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.c.x)) - 1079f))))), _wgslsmith_f_op_vec4_f32(-arg_3.c), arg_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec3<i32>(-4228i, 51915i, ~12617i));
    let var_1 = global0.a;
    global0 = global2[_wgslsmith_index_u32(~u_input.b, 25u)];
    let var_2 = func_4(vec2<u32>(u_input.b, ~4294967295u) | ~(~select(vec2<u32>(1u, u_input.b), vec2<u32>(51441u, 1u), false)), u_input.b, vec4<i32>(_wgslsmith_div_i32(-var_0.x, func_1(u_input.a.wzw)) & u_input.a.x, -abs(~(-15275i)), -32402i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(17103i, u_input.a.x, 23233i), var_0), 58883i), _wgslsmith_add_i32(11126i, -var_0.x), u_input.a.x)), func_2(func_2(Struct_2(global0.a, -422f, vec4<f32>(var_1.b.x, 1814f, -892f, -972f), true), select(!vec2<bool>(true, global0.d), select(vec2<bool>(global0.d, global0.d), vec2<bool>(global0.d, global0.d), vec2<bool>(true, true)), !global0.d)), !vec2<bool>(u_input.b <= u_input.b, global0.d)));
    global1 = -firstLeadingBit(_wgslsmith_add_i32(-4760i << (u_input.b % 32u), 2147483647i));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -648f);
    let var_4 = vec3<u32>(_wgslsmith_mod_u32(min(abs(u_input.b) << (u_input.b % 32u), 45878u), u_input.b), u_input.b, u_input.b);
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.x), u_input.a.x | reverseBits(_wgslsmith_sub_i32(36004i, u_input.a.x) | -var_0.x), i32(-1i) * -var_0.x, 2147483647i);
}

