struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: array<vec4<i32>, 11>;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(532f, 820f, true, 12212i, vec4<f32>(-1208f, 1148f, -2324f, 1596f)), Struct_1(645f, -483f, true, -14762i, vec4<f32>(-1430f, 585f, 1208f, -1000f)), Struct_1(533f, -449f, false, -12368i, vec4<f32>(-672f, -835f, -1368f, 375f)), Struct_1(737f, -842f, false, 0i, vec4<f32>(839f, 1458f, -1913f, -405f)), Struct_1(762f, 842f, true, -10556i, vec4<f32>(1347f, 1000f, 427f, -2160f)), Struct_1(876f, -778f, true, 1i, vec4<f32>(-990f, 761f, 810f, 1529f)), Struct_1(1066f, 1141f, false, -8861i, vec4<f32>(-408f, -364f, 497f, -438f)), Struct_1(-528f, -1473f, false, 1i, vec4<f32>(-440f, -362f, -1624f, 1668f)), Struct_1(1526f, 1310f, false, 1i, vec4<f32>(373f, 461f, 1000f, -862f)), Struct_1(332f, -1068f, false, -29498i, vec4<f32>(1197f, 188f, 1000f, 3066f)), Struct_1(1148f, 707f, false, -51093i, vec4<f32>(1000f, 555f, -1050f, -1169f)), Struct_1(-914f, 1164f, false, -26599i, vec4<f32>(566f, -1671f, 707f, 1000f)), Struct_1(-671f, -686f, true, 1669i, vec4<f32>(1347f, -140f, 1084f, -598f)), Struct_1(-720f, -949f, false, 2147483647i, vec4<f32>(2158f, -334f, 1250f, -1230f)), Struct_1(-558f, 338f, true, 0i, vec4<f32>(579f, 1758f, 528f, -2301f)), Struct_1(-1000f, -1136f, false, 44792i, vec4<f32>(-295f, 925f, 1000f, 1920f)), Struct_1(-1324f, 1709f, true, -66713i, vec4<f32>(-1000f, -335f, 726f, -1320f)), Struct_1(-967f, 1509f, true, 1i, vec4<f32>(1085f, -1000f, -103f, -1758f)), Struct_1(1532f, -1000f, true, 16679i, vec4<f32>(-860f, 1277f, 1000f, 944f)), Struct_1(-568f, -870f, false, 0i, vec4<f32>(571f, -1506f, -935f, -159f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    global4 = array<Struct_1, 20>();
    var var_0 = !select(select(!(!vec3<bool>(arg_0.c, true, global2.c)), vec3<bool>(true, true, true), vec3<bool>(global2.c, true, all(vec3<bool>(true, true, false)))), select(!(!vec3<bool>(arg_0.c, arg_0.c, true)), vec3<bool>(true, true, true), true), arg_0.c);
    let var_1 = Struct_1(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a, global0.x))))), any(vec3<bool>(all(!var_0.xz), _wgslsmith_mod_i32(global2.d, -24718i) >= -19526i, any(vec3<bool>(false, false, arg_0.c)) || true)), 2147483647i, global2.e);
    let var_2 = arg_0.c;
    var_0 = vec3<bool>(any(select(!vec2<bool>(var_0.x, false), var_0.zy, var_0.x)), arg_0.c, var_2);
    return -1079f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1642f + -2485f)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global2.e.xx, _wgslsmith_f_op_vec2_f32(-global2.e.wz))));
    let var_0 = _wgslsmith_f_op_f32(-global0.x);
    global2 = global4[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var var_1 = -2287f;
    global4 = array<Struct_1, 20>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-var_0)) - global2.b), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(20618u, u_input.c)), 20u)], ~(-440i), ~0i)), _wgslsmith_f_op_f32(f32(-1f) * -880f), false, reverseBits(0i), vec4<f32>(_wgslsmith_div_f32(-1733f, global0.x), _wgslsmith_f_op_f32(var_0 * global2.a), 1168f, _wgslsmith_f_op_f32(max(-704f, global0.x)))), _wgslsmith_mult_vec3_i32(-vec3<i32>(765i, -1i, u_input.b.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.c, u_input.c, 42731u)) % vec3<u32>(32u)), min(vec3<i32>(30384i, arg_0, 2147483647i) | vec3<i32>(arg_0, -34170i, 0i), vec3<i32>(u_input.b.x, u_input.b.x, global2.d))), Struct_1(_wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(step(-980f, 560f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(383f, 2281f, global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -578f))), any(select(vec4<bool>(global2.c, false, global2.c, global2.c), vec4<bool>(true, true, global2.c, global2.c), true)), -_wgslsmith_sub_i32(arg_0, arg_0), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-228f, 1000f, var_0, global0.x))))), all(vec2<bool>(true, true)))), global2.c, arg_0, global2.e);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_2(-18791i).a), arg_0.a, true)), 785f, var_0.c, -23659i, var_0.e);
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(-25486i, -2147483647i), firstTrailingBit(-2147483647i)), vec2<i32>(-arg_0.d, global2.d));
    var var_3 = Struct_1(2965f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-global2.a)))), false != var_0.c, -var_1.d, _wgslsmith_f_op_vec4_f32(round(global2.e)));
    let var_4 = func_2(_wgslsmith_mod_i32(_wgslsmith_add_i32(~(-36654i), 65670i | -global2.d), var_1.d));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.e.xz)) - vec2<f32>(-260f, global2.a)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(arg_0.e.yw)))))));
    var var_1 = func_5(func_2(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(23636i, u_input.b.x), ~(i32(-1i) * -72280i), firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_1, arg_1)))));
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2005f) + global2.a), !(func_2(0i).c & true) & true, i32(-1i) * -3434i, global2.e);
    global4 = array<Struct_1, 20>();
    return true && var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(countOneBits(u_input.c), 20u)];
    global3 = array<vec4<i32>, 11>();
    global4 = array<Struct_1, 20>();
    var var_1 = ~_wgslsmith_dot_vec2_u32(select(u_input.a, reverseBits(~u_input.a), func_1(global4[_wgslsmith_index_u32(4294967295u, 20u)], abs(vec3<i32>(-2147483647i, var_0.d, global2.d)), Struct_1(-1146f, global2.a, true, 2147483647i, global2.e), select(vec4<bool>(var_0.c, true, var_0.c, var_0.c), vec4<bool>(true, true, var_0.c, false), global2.c))), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x & u_input.a.x, 1u)));
    global4 = array<Struct_1, 20>();
    let var_2 = global4[_wgslsmith_index_u32(61296u, 20u)];
    let var_3 = func_5(global4[_wgslsmith_index_u32(0u, 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(var_2.d, _wgslsmith_add_i32(35211i, -13257i))), vec2<i32>(-1i, var_2.d)), ~u_input.a.x, firstTrailingBit(-2147483647i));
}

