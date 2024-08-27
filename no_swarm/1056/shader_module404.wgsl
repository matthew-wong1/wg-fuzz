struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(-1640f, vec2<u32>(0u, 37059u), vec3<bool>(false, true, true)), 1u, Struct_1(1368f, vec2<u32>(11243u, 25558u), vec3<bool>(false, true, true)), 39936i), Struct_2(Struct_1(838f, vec2<u32>(1u, 4844u), vec3<bool>(false, true, true)), 4294967295u, Struct_1(1000f, vec2<u32>(84412u, 0u), vec3<bool>(true, true, true)), -340i), Struct_2(Struct_1(-277f, vec2<u32>(44080u, 53653u), vec3<bool>(false, false, true)), 19791u, Struct_1(2089f, vec2<u32>(40299u, 0u), vec3<bool>(true, true, true)), 2527i), Struct_2(Struct_1(-106f, vec2<u32>(0u, 0u), vec3<bool>(false, true, false)), 1u, Struct_1(130f, vec2<u32>(1u, 0u), vec3<bool>(true, true, true)), 1i), Struct_2(Struct_1(-1000f, vec2<u32>(0u, 84888u), vec3<bool>(true, false, true)), 47300u, Struct_1(-2162f, vec2<u32>(0u, 7132u), vec3<bool>(false, false, true)), -10602i), Struct_2(Struct_1(-1623f, vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, true, true)), 24616u, Struct_1(1311f, vec2<u32>(0u, 1u), vec3<bool>(false, false, false)), i32(-2147483648)), Struct_2(Struct_1(264f, vec2<u32>(22414u, 10073u), vec3<bool>(false, false, true)), 83281u, Struct_1(-366f, vec2<u32>(167045u, 97046u), vec3<bool>(false, true, true)), 1i), Struct_2(Struct_1(579f, vec2<u32>(0u, 31714u), vec3<bool>(true, false, true)), 1u, Struct_1(-131f, vec2<u32>(1u, 1u), vec3<bool>(true, true, false)), 6609i), Struct_2(Struct_1(288f, vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, true, false)), 1u, Struct_1(-329f, vec2<u32>(9529u, 23719u), vec3<bool>(true, true, false)), -12813i), Struct_2(Struct_1(1669f, vec2<u32>(33743u, 4294967295u), vec3<bool>(false, true, true)), 0u, Struct_1(-248f, vec2<u32>(0u, 64704u), vec3<bool>(true, true, true)), -12166i), Struct_2(Struct_1(192f, vec2<u32>(0u, 53064u), vec3<bool>(false, false, false)), 68479u, Struct_1(651f, vec2<u32>(4186u, 1u), vec3<bool>(false, false, true)), -46340i), Struct_2(Struct_1(-635f, vec2<u32>(110675u, 1u), vec3<bool>(true, true, false)), 66594u, Struct_1(293f, vec2<u32>(2143u, 9491u), vec3<bool>(true, true, false)), 1358i), Struct_2(Struct_1(-1000f, vec2<u32>(11789u, 4294967295u), vec3<bool>(false, false, true)), 4294967295u, Struct_1(-1295f, vec2<u32>(0u, 1u), vec3<bool>(false, false, false)), -15822i));

var<private> global3: array<Struct_1, 13>;

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 13u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(591f + 734f), var_0.a.b, vec3<bool>(!arg_1.c.x, true, false != arg_0.c.x));
    global2 = array<Struct_2, 13>();
    global3 = array<Struct_1, 13>();
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.a)), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(645f - arg_1.a))) + _wgslsmith_f_op_f32(min(arg_1.a, -371f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, -624f, arg_2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_1.a, arg_2.a)), var_1.c.x || !var_1.c.x))));
    return ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(61740i, max(13068i, -1i)), _wgslsmith_mod_i32(-_wgslsmith_div_i32(4987i, var_0.d), ~(-1i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = vec4<i32>(-min(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, global0.x, 49704i), vec3<i32>(-30545i, 21192i, global4.x)), 1i) ^ 0i, 2147483647i, abs(-firstTrailingBit(_wgslsmith_mod_i32(global0.x, -21372i))), _wgslsmith_mult_i32(~min(global4.x, -4963i), -u_input.c.x));
    global0 = _wgslsmith_mod_vec3_i32(var_0.yyw, var_0.xzw);
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(7956u, arg_1.b.x, u_input.b, 1u) >> (~vec4<u32>(1u, 12051u, 1u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(arg_1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), arg_1.b)), u_input.b, _wgslsmith_sub_u32(u_input.b, firstLeadingBit(1u)))));
    global0 = -select(vec3<i32>(-6003i, 26368i, func_3(Struct_1(arg_1.a, arg_1.b, vec3<bool>(true, false, false)), arg_1, global3[_wgslsmith_index_u32(86086u << (1u % 32u), 13u)])), -abs(-var_0.yxz), select(select(vec3<bool>(false, arg_1.c.x, arg_1.c.x), !arg_1.c, true), arg_1.c, select(vec3<bool>(arg_1.c.x, true, false), !vec3<bool>(arg_1.c.x, true, true), select(vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.c, arg_1.c.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(760f, arg_1.a))), 2441f, 1000f, _wgslsmith_f_op_f32(-arg_1.a)) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -815f), 483f)), _wgslsmith_f_op_f32(-992f * _wgslsmith_div_f32(arg_0, 1644f)), -1008f, 563f)));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, var_2.x, 937f, -637f))))), vec4<f32>(1478f, 148f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-504f)) * _wgslsmith_f_op_f32(f32(-1f) * -1001f)), _wgslsmith_f_op_f32(f32(-1f) * -827f)), arg_1.c.x == (var_2.x <= 1429f)));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(881f, -295f, -512f, -768f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-615f, -1386f, -375f, 911f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-766f - 527f), global3[_wgslsmith_index_u32(abs(4294967295u), 13u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, -400f, 454f, 918f))), true | any(vec3<bool>(true, false, false))))));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(259f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x))), 4294967295u, _wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_sub_vec3_i32(countOneBits(reverseBits(min(~vec3<i32>(global4.x, 27433i, 2147483647i), -vec3<i32>(u_input.c.x, global4.x, global4.x)))), max(select(countOneBits(~vec3<i32>(1i, 0i, u_input.c.x)), -vec3<i32>(global0.x, global4.x, -33894i), vec3<bool>(false, true, true)), _wgslsmith_add_vec3_i32(vec3<i32>(global4.x | u_input.a, _wgslsmith_add_i32(55403i, 6075i), -1i), (vec3<i32>(global0.x, -36171i, 33958i) & vec3<i32>(global0.x, 24631i, -1i)) & vec3<i32>(0i, 1i, 1i))));
    global2 = array<Struct_2, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(-139f, -1100f, false)), _wgslsmith_div_f32(-956f, 1357f), _wgslsmith_f_op_f32(step(718f, 1128f)), 680f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-453f, 832f, -140f, 1998f), vec4<f32>(1401f, 1795f, 1219f, 1024f)) + vec4<f32>(1000f, 906f, 569f, -235f)) - vec4<f32>(_wgslsmith_f_op_f32(-611f * -1775f), _wgslsmith_f_op_f32(ceil(357f)), _wgslsmith_f_op_f32(round(890f)), -1169f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(342f, -786f) + -966f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1774f * 1000f)), _wgslsmith_f_op_f32(1f * 315f), 505f));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)), 1f)));
    global1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_1 = u_input.b;
    global3 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = func_1(u_input.b);
}

