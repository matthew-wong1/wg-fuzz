struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-164f, -912f, 1159f), vec3<f32>(-1000f, -378f, 1671f), vec3<f32>(-232f, -906f, 402f), vec3<f32>(-594f, 2637f, -174f), vec3<f32>(-1980f, -993f, -563f), vec3<f32>(-668f, 1000f, 561f), vec3<f32>(-282f, 397f, 618f), vec3<f32>(-1337f, 350f, 1619f), vec3<f32>(-1015f, -836f, 109f), vec3<f32>(1087f, -928f, -426f), vec3<f32>(-1210f, 1307f, 1725f), vec3<f32>(763f, -589f, -568f), vec3<f32>(1026f, 1036f, 1749f), vec3<f32>(607f, -1015f, 563f), vec3<f32>(-190f, -1000f, 198f), vec3<f32>(-337f, 1000f, -657f), vec3<f32>(876f, -202f, -439f), vec3<f32>(-1595f, 541f, -713f), vec3<f32>(1466f, 1570f, -536f), vec3<f32>(891f, -1474f, 114f), vec3<f32>(-3045f, -1192f, 362f), vec3<f32>(-622f, -1504f, -2188f), vec3<f32>(872f, -723f, 936f), vec3<f32>(1241f, -1000f, 123f), vec3<f32>(-1612f, 285f, -769f), vec3<f32>(775f, 211f, -777f), vec3<f32>(-1000f, -499f, -522f), vec3<f32>(-194f, 805f, -306f), vec3<f32>(1286f, -1000f, 1000f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> vec4<bool> {
    global0 = array<f32, 2>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-202f, arg_0.x))));
    var var_1 = vec3<i32>(1i, 1i << (_wgslsmith_dot_vec2_u32(~vec2<u32>(57075u, 31635u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1200u, 1u), vec2<u32>(18439u, 19894u))) % 32u), -1i);
    let var_2 = true;
    var_0 = 1f;
    return vec4<bool>(any(select(!select(vec2<bool>(false, arg_1.c), vec2<bool>(true, arg_2.c), true), select(!vec2<bool>(arg_2.d.a.a, true), !vec2<bool>(true, arg_2.d.a.a), select(vec2<bool>(arg_1.b.a.a, true), vec2<bool>(arg_1.d.a.a, true), true)), select(!vec2<bool>(var_2, true), vec2<bool>(arg_2.d.a.a, false), vec2<bool>(true, true)))), all(!select(select(vec2<bool>(false, arg_1.d.a.a), vec2<bool>(false, arg_1.b.a.a), arg_1.d.a.a), vec2<bool>(true, arg_2.b.a.a), var_2)), any(vec3<bool>(false, _wgslsmith_mod_u32(0u, 4294967295u) != _wgslsmith_clamp_u32(1423u, 4294967295u, 46229u), false)), all(!vec4<bool>(var_2, true & arg_1.d.a.a, arg_1.c, all(vec2<bool>(false, arg_1.c)))));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(74172u << (0u % 32u)), _wgslsmith_add_u32(1u, 1u)), 2u)] + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x)))))));
    var var_1 = reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 1u, 1u))), ~min(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 18463u), vec2<u32>(1u, 27944u)), select(vec2<u32>(28913u, 43428u), vec2<u32>(0u, 89550u), arg_0.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.b * arg_0.b)));
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_mod_i32(firstTrailingBit(0i), -(~firstLeadingBit(arg_0.c.x)));
    return select(vec4<bool>(arg_0.a, true, true, all(vec4<bool>(all(vec4<bool>(arg_0.a, true, false, false)), arg_0.a, !arg_0.a, true))), select(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(661f, var_0, -486f) + vec3<f32>(var_0, var_0, -1230f)), Struct_3(Struct_2(Struct_1(arg_0.a, var_2, arg_0.c)), Struct_2(arg_0), !arg_0.a, Struct_2(arg_0), -arg_0.c.x), Struct_3(Struct_2(Struct_1(true, vec2<f32>(var_0, arg_0.b.x), arg_0.c)), Struct_2(arg_0), arg_0.a, Struct_2(Struct_1(arg_0.a, vec2<f32>(var_0, -660f), vec2<i32>(arg_0.c.x, var_3))), u_input.a)), !vec4<bool>(false && arg_0.a, func_3(vec3<f32>(global0[_wgslsmith_index_u32(0u, 2u)], -253f, arg_0.b.x), Struct_3(Struct_2(Struct_1(arg_0.a, arg_0.b, arg_0.c)), Struct_2(arg_0), true, Struct_2(Struct_1(arg_0.a, vec2<f32>(-140f, 157f), vec2<i32>(var_3, 1i))), u_input.a), Struct_3(Struct_2(arg_0), Struct_2(Struct_1(true, vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 2u)], 1064f), vec2<i32>(1i, u_input.a))), arg_0.a, Struct_2(arg_0), 1i)).x, false, true), arg_0.a), !(!func_3(vec3<f32>(-1092f, -244f, var_2.x), Struct_3(Struct_2(arg_0), Struct_2(arg_0), false, Struct_2(arg_0), 1i), Struct_3(Struct_2(Struct_1(arg_0.a, vec2<f32>(326f, 1599f), vec2<i32>(u_input.a, -1i))), Struct_2(Struct_1(true, vec2<f32>(var_0, global0[_wgslsmith_index_u32(4294967295u, 2u)]), arg_0.c)), arg_0.a, Struct_2(Struct_1(arg_0.a, var_2, vec2<i32>(var_3, var_3))), arg_0.c.x))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<bool>) -> Struct_3 {
    global0 = array<f32, 2>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(744f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(867f)) * _wgslsmith_f_op_f32(-265f + global0[_wgslsmith_index_u32(arg_0, 2u)]))), _wgslsmith_f_op_f32(318f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2, 2u)])))))));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-43166i, 1i), vec2<i32>(u_input.a, u_input.a)) <= select(1i, u_input.a, arg_3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global0[_wgslsmith_index_u32(arg_0, 2u)]))), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(1i, 6238i)))), Struct_2(Struct_1(arg_1.x, vec2<f32>(-1099f, global0[_wgslsmith_index_u32(12244u, 2u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -29451i), -vec2<i32>(-2096i, u_input.a)))), arg_1.x, Struct_2(Struct_1(!func_3(global1[_wgslsmith_index_u32(18933u, 29u)], Struct_3(Struct_2(Struct_1(arg_1.x, vec2<f32>(global0[_wgslsmith_index_u32(56383u, 2u)], var_0), vec2<i32>(2147483647i, u_input.a))), Struct_2(Struct_1(true, vec2<f32>(var_0, 385f), vec2<i32>(u_input.a, u_input.a))), false, Struct_2(Struct_1(arg_3.x, vec2<f32>(579f, global0[_wgslsmith_index_u32(arg_2, 2u)]), vec2<i32>(u_input.a, u_input.a))), u_input.a), Struct_3(Struct_2(Struct_1(false, vec2<f32>(1141f, global0[_wgslsmith_index_u32(arg_2, 2u)]), vec2<i32>(2147483647i, -49275i))), Struct_2(Struct_1(true, vec2<f32>(-1213f, 218f), vec2<i32>(u_input.a, 3997i))), arg_1.x, Struct_2(Struct_1(arg_1.x, vec2<f32>(var_0, global0[_wgslsmith_index_u32(57963u, 2u)]), vec2<i32>(u_input.a, u_input.a))), u_input.a)).x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(622f, 319f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1456f, var_0))), _wgslsmith_div_vec2_i32(~vec2<i32>(-30689i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 1i))))), ~u_input.a);
    let var_2 = 25137u;
    let var_3 = -(~(-(~(-vec3<i32>(4613i, u_input.a, u_input.a)))));
    return Struct_3(var_1.a, var_1.d, true, Struct_2(Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.a.b.x), _wgslsmith_f_op_f32(-var_0)), ~(~vec2<i32>(-17905i, u_input.a)))), -var_1.b.a.c.x);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_4(1u, select(vec4<bool>(all(vec4<bool>(true, true, true, true)), select(true, select(false, true, true), true), 56972u != _wgslsmith_dot_vec3_u32(vec3<u32>(59178u, 20446u, 9249u), vec3<u32>(0u, 17138u, 0u)), true), func_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(23278u, 2u)]), vec2<f32>(-676f, 1395f))), firstTrailingBit(vec2<i32>(7647i, arg_0)))), true), 25550u, func_2(Struct_1(!(arg_0 <= -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-211f, global0[_wgslsmith_index_u32(0u, 2u)]), vec2<f32>(global0[_wgslsmith_index_u32(1u, 2u)], -1966f))), vec2<i32>(-arg_0, -arg_0))).xw);
    var var_1 = func_4(0u, select(vec4<bool>(var_0.d.a.a, func_3(vec3<f32>(global0[_wgslsmith_index_u32(0u, 2u)], var_0.d.a.b.x, var_0.d.a.b.x), func_4(20499u, vec4<bool>(var_0.c, false, true, var_0.c), 9349u, vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(var_0.d.a.a, var_0.b.a.b, var_0.d.a.c)), Struct_2(Struct_1(var_0.a.a.a, var_0.d.a.b, var_0.a.a.c)), var_0.c, Struct_2(Struct_1(true, var_0.a.a.b, var_0.d.a.c)), u_input.a)).x, var_0.b.a.a, select(var_0.d.a.a, true, false) & var_0.a.a.a), func_2(Struct_1(true, _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 2u)], 1000f), vec2<f32>(1000f, var_0.d.a.b.x)), vec2<i32>(-2147483647i, arg_0))), !(!func_4(26553u, vec4<bool>(var_0.c, var_0.d.a.a, var_0.c, false), 1u, vec2<bool>(false, var_0.a.a.a)).d.a.a)), abs(~(~_wgslsmith_mult_u32(4712u, 0u))), func_2(var_0.a.a).zy).b.a.b.x;
    var var_2 = ~(~vec2<u32>(select(0u, 4294967295u, true), abs(83538u)) ^ min(~(~vec2<u32>(0u, 10358u)), min(vec2<u32>(1u, 48740u), ~vec2<u32>(63462u, 1u))));
    var var_3 = _wgslsmith_clamp_u32((var_2.x >> ((0u & var_2.x) % 32u)) | firstTrailingBit(_wgslsmith_sub_u32(var_2.x, var_2.x)), abs(~0u), var_2.x) | 98820u;
    let var_4 = var_0;
    return Struct_2(Struct_1(true, vec2<f32>(2460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.a.b.x))), vec2<i32>(arg_0, ~(~(-29107i)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = vec3<i32>(arg_1.a.c.x, -(~u_input.a >> ((49129u >> (0u % 32u)) % 32u)), _wgslsmith_sub_i32(arg_1.a.c.x, 2147483647i)) & _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 2147483647i, 1i) & vec3<i32>(arg_1.a.c.x, arg_1.a.c.x, -57692i), -vec3<i32>(arg_1.a.c.x, arg_0.x, -2147483647i)) ^ -vec3<i32>(-2147483647i, -1i, -2147483647i), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(arg_0.x, 1i, 62278i)), ~(~vec3<i32>(0i, -2147483647i, -2147483647i)), ~abs(vec3<i32>(u_input.a, 0i, arg_0.x))));
    let var_1 = Struct_2(arg_1.a);
    var var_2 = ~arg_0;
    var var_3 = _wgslsmith_f_op_f32(max(var_1.a.b.x, -318f));
    let var_4 = var_1.a.c.x;
    return func_4(0u, vec4<bool>(false != var_1.a.a, all(!func_3(vec3<f32>(-369f, 1086f, var_1.a.b.x), Struct_3(Struct_2(Struct_1(arg_1.a.a, vec2<f32>(var_1.a.b.x, -1000f), arg_0)), Struct_2(Struct_1(arg_1.a.a, vec2<f32>(-1227f, -1120f), arg_1.a.c)), arg_1.a.a, var_1, arg_0.x), Struct_3(var_1, Struct_2(Struct_1(true, vec2<f32>(785f, var_1.a.b.x), vec2<i32>(arg_1.a.c.x, -10667i))), var_1.a.a, var_1, arg_0.x)).xw), all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), var_1.a.a), !vec2<bool>(arg_1.a.a, true), vec2<bool>(false, arg_1.a.a))), true || !(-31848i > u_input.a)), 5621u, func_2(var_1.a).xy).d;
}

fn func_6(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    global0 = array<f32, 2>();
    global1 = array<vec3<f32>, 29>();
    let var_0 = -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.c.x, arg_2.a.c.x, -7282i), vec3<i32>(-2147483647i, 6978i, -2147483647i)), ~arg_2.a.c.x, _wgslsmith_mult_i32(u_input.a, -43431i), u_input.a)), select(select(vec4<i32>(arg_2.a.c.x, -32940i, u_input.a, 37569i) << (vec4<u32>(19850u, 0u, 1u, 2461u) % vec4<u32>(32u)), countOneBits(vec4<i32>(21273i, arg_2.a.c.x, arg_2.a.c.x, -1i)), vec4<bool>(arg_0, true, arg_2.a.a, arg_0)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(0i, 6286i, u_input.a, arg_2.a.c.x), vec4<i32>(u_input.a, -23558i, arg_2.a.c.x, u_input.a)), vec4<i32>(-1i, -10590i, arg_2.a.c.x, u_input.a)), any(vec2<bool>(true, true))));
    global1 = array<vec3<f32>, 29>();
    global1 = array<vec3<f32>, 29>();
    return firstLeadingBit(abs(0u >> (~(4294967295u << (0u % 32u)) % 32u)));
}

fn func_7(arg_0: vec2<i32>, arg_1: u32) -> Struct_2 {
    global1 = array<vec3<f32>, 29>();
    let var_0 = func_1(firstLeadingBit(-2147483647i));
    let var_1 = countOneBits(~(~(~vec3<u32>(arg_1, arg_1, 28786u) & select(vec3<u32>(arg_1, arg_1, 55043u), vec3<u32>(23718u, arg_1, arg_1), vec3<bool>(var_0.a.a, true, var_0.a.a)))));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    return Struct_2(var_0.a);
}

fn func_8(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    global1 = array<vec3<f32>, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.b));
    global1 = array<vec3<f32>, 29>();
    var var_1 = true;
    var var_2 = true;
    return func_4(0u, select(!vec4<bool>(arg_1.a, select(arg_0.a.a, true, false), any(vec4<bool>(true, false, false, false)), true), select(func_3(global1[_wgslsmith_index_u32(0u, 29u)], func_4(50697u, vec4<bool>(true, true, true, false), 7331u, vec2<bool>(arg_0.a.a, arg_1.a)), func_4(35293u, vec4<bool>(false, false, arg_0.a.a, arg_1.a), 43845u, vec2<bool>(false, true))), !select(vec4<bool>(arg_1.a, arg_0.a.a, arg_1.a, arg_0.a.a), vec4<bool>(true, arg_0.a.a, true, false), false), !(!vec4<bool>(true, true, arg_0.a.a, true))), !vec4<bool>(arg_1.a, arg_1.a, false, func_7(vec2<i32>(arg_1.c.x, 13200i), 14646u).a.a)), func_6(false, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1103f * -648f), _wgslsmith_div_f32(541f, -1000f), func_4(1u, vec4<bool>(true, arg_1.a, arg_0.a.a, arg_1.a), 29663u, vec2<bool>(arg_0.a.a, false)).b.a.b.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1244f, 747f, -1046f)))), arg_0), !(!(!(!vec2<bool>(true, arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(vec2<i32>(u_input.a, ~0i), func_6(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1102f, 1618f, global0[_wgslsmith_index_u32(0u, 2u)])), func_5(vec2<i32>(-40304i, 9740i), func_1(u_input.a), vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(11057u, 4294967295u))))), Struct_1(func_2(Struct_1(any(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(426f, global0[_wgslsmith_index_u32(67296u, 2u)]), vec2<f32>(394f, -291f), true)), vec2<i32>(u_input.a, 73576i))).x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(88859u, 2u)])))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(405f, -555f) + vec2<f32>(-600f, global0[_wgslsmith_index_u32(4294967295u, 2u)]))))), countOneBits(vec2<i32>(-u_input.a, i32(-1i) * -9772i))));
    var_0 = func_4(4294967295u, func_3(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~countOneBits(58691u), 29u)]), Struct_3(func_4(countOneBits(21881u), !vec4<bool>(var_0.b.a.a, var_0.a.a.a, var_0.c, var_0.b.a.a), ~53513u, !vec2<bool>(true, var_0.c)).d, func_4(54130u, !vec4<bool>(true, false, var_0.a.a.a, true), 60786u, vec2<bool>(var_0.c, var_0.a.a.a)).d, true, func_5(select(var_0.a.a.c, var_0.a.a.c, var_0.b.a.a), func_1(-2147483647i), ~vec3<u32>(79016u, 4294967295u, 9102u), vec2<u32>(1u, 1u)), 1i), func_4(1u, select(select(vec4<bool>(var_0.a.a.a, true, true, false), vec4<bool>(true, var_0.d.a.a, false, false), false), vec4<bool>(false, true, false, var_0.d.a.a), vec4<bool>(var_0.a.a.a, var_0.d.a.a, false, var_0.c)), abs(max(0u, 48816u)), vec2<bool>(true, true))), firstLeadingBit(~(16195u << (select(1u, 5549u, var_0.a.a.a) % 32u))), !vec2<bool>(var_0.d.a.c.x >= u_input.a, var_0.b.a.a));
    global0 = array<f32, 2>();
    var var_1 = !((_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d.a.b.x))) == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 2u)])) == func_8(Struct_2(Struct_1(var_0.a.a.a, var_0.a.a.b, var_0.d.a.c)), Struct_1(true, vec2<f32>(-548f, 462f), vec2<i32>(-1124i, u_input.a))).c);
    global0 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(12649u, 4294967295u), vec2<u32>(1u, 1u)), 2u)], func_8(var_0.b, Struct_1(false, vec2<f32>(global0[_wgslsmith_index_u32(120897u, 2u)], var_0.b.a.b.x), vec2<i32>(var_0.d.a.c.x, var_0.b.a.c.x))).b.a.b.x, true)), var_0.d.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a.b.x + var_0.b.a.b.x)), func_7(vec2<i32>(~u_input.a, ~var_0.b.a.c.x), ~(~4294967295u)).a.b.x), max(~reverseBits(select(vec2<u32>(10559u, 2590u), vec2<u32>(20241u, 4294967295u), var_0.a.a.a)), abs(reverseBits(vec2<u32>(1u, 1u)))), vec3<u32>(_wgslsmith_clamp_u32(~34992u, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 1u), 1u), 2757u), firstLeadingBit(0u), ~(~countOneBits(1u))));
}

