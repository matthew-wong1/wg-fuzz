struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 9234u, 4294967295u, 1u));

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<vec2<bool>, 21>;

var<private> global4: i32 = 1i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    var var_0 = 1i;
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, 0i, 0i), vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<i32>(22295i, 70255i, -1i))), 65174i, ~12426i, u_input.d), vec4<i32>(1i, min(1i, abs(-u_input.d)), u_input.d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d) ^ vec2<i32>(-2147483647i, -34942i), ~vec2<i32>(1i, u_input.d))));
    return (_wgslsmith_dot_vec3_i32(~(-vec3<i32>(2147483647i, -1i, u_input.d)), -vec3<i32>(u_input.d, u_input.d, 0i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 21306u, global1.a.x), global1.a.xyx) % vec3<u32>(32u))) | (_wgslsmith_clamp_i32(abs(u_input.d), u_input.d, 2147483647i) >> (1u % 32u))) & -1i;
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = ~vec4<i32>(-(~33211i), -(_wgslsmith_add_i32(u_input.d, -13137i) >> (global0.a.x % 32u)), 21232i, -1498i);
    var var_1 = 2147483647i;
    var var_2 = Struct_4(Struct_3((func_3(false, Struct_3(false, vec3<u32>(18378u, global1.a.x, 1u)), Struct_1(global1.a)) >> (~4294967295u % 32u)) > reverseBits(u_input.d | var_0.x), ~firstLeadingBit(vec3<u32>(1u, 1u, 1u))), Struct_3(false, global0.a.www));
    let var_3 = reverseBits(var_0.wz);
    var var_4 = !(!vec3<bool>(true, true, var_2.b.a));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-663f, -225f, arg_0.x, -418f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1792f, arg_0.x, 276f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, -1000f, 823f)))) + vec4<f32>(-746f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 416f, arg_0.x) + vec4<f32>(arg_0.x, 1000f, -1000f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1015f, arg_0.x, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, 1297f, arg_0.x, 316f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    global2 = array<Struct_2, 10>();
    global1 = arg_1.a;
    global4 = ~(-5019i);
    var var_0 = -1076f;
    var var_1 = select(select(vec3<bool>(true, ~arg_2 <= _wgslsmith_dot_vec2_u32(arg_1.a.a.zy, arg_1.a.a.yw), (global0.a.x == 4294967295u) && all(vec3<bool>(false, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec4<bool>(true, true, false, false))), true || (4294967295u > u_input.a.x)), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), false, _wgslsmith_div_f32(115f, arg_0.x) > _wgslsmith_f_op_f32(f32(-1f) * -1474f)), vec3<bool>(true, false, true), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-1i, u_input.d)) >= -50661i), true);
    return Struct_3(any(!vec2<bool>(!var_1.x, !var_1.x)), ~(~u_input.e.xwz | arg_3.a.a.xwx) << (vec3<u32>(~22141u, 92152u, ~u_input.b) % vec3<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = -2147483647i;
    global4 = u_input.d;
    let var_1 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1, global1.a.x, global1.a.x), global1.a), 60287u), 4294967295u), global0.a.xx);
    global1 = Struct_1((_wgslsmith_add_vec4_u32(abs(u_input.e), vec4<u32>(var_1.x, global1.a.x, global1.a.x, global0.a.x)) >> (~(~vec4<u32>(global1.a.x, var_1.x, 0u, global0.a.x)) % vec4<u32>(32u))) & (~vec4<u32>(39227u, global1.a.x, global0.a.x, arg_1) | ~(u_input.e | global1.a)));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-429f, -603f, 1077f), vec3<f32>(-1201f, -360f, -1327f), arg_0))))))), Struct_2(Struct_1(global0.a)), ~19398u, Struct_2(Struct_1(global0.a)));
    return Struct_1(u_input.e);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<i32>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1243f + 232f))) - _wgslsmith_f_op_f32(-2136f * _wgslsmith_f_op_f32(max(300f, 1264f)))) - _wgslsmith_f_op_f32(-875f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2120f, 1107f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(-315f, -931f, -248f))).x - _wgslsmith_f_op_f32(-1088f - -745f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f * 462f) + _wgslsmith_f_op_f32(-1677f * -309f)))));
    let var_1 = Struct_1(select(vec4<u32>(abs(_wgslsmith_dot_vec2_u32(u_input.e.zw, vec2<u32>(arg_2.b.b.x, 1u))), ~arg_2.b.b.x, u_input.b, 29918u), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.a, reverseBits(vec4<u32>(1u, arg_1.a.x, 8660u, arg_0.x)), u_input.e), vec4<u32>(select(arg_1.a.x, 21211u, true), 0u, 57095u, _wgslsmith_add_u32(0u, arg_0.x))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1741f, 544f, var_0.x)), Struct_2(arg_1), func_1(true, arg_1.a.x, arg_0.x).a.x, global2[_wgslsmith_index_u32(global0.a.x, 10u)]).a || true));
    let var_2 = !(!vec4<bool>(any(vec3<bool>(arg_2.a.a, true, true)), !any(vec4<bool>(arg_2.b.a, true, false, arg_2.b.a)), arg_2.b.a, all(vec2<bool>(true, true))));
    var var_3 = var_2;
    global0 = Struct_1(vec4<u32>(~53242u, u_input.c.x, arg_2.a.b.x, 53745u));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -890f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-122f, var_0.x, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_5(~vec3<u32>(12291u, 24552u, u_input.a.x), func_1(true, min(4294967295u, 61958u), global1.a.x ^ global1.a.x), Struct_4(Struct_3(false, vec3<u32>(global0.a.x, 6815u, 4294967295u)), Struct_3(false, global0.a.wyz)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d), vec4<i32>(u_input.d, 61406i, 2147483647i, u_input.d)), countOneBits(u_input.d), ~0i))), 903f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-884f))) + 223f)));
    global0 = func_1(select(global0.a.x > 0u, !any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), select(_wgslsmith_f_op_f32(f32(-1f) * -1015f) != _wgslsmith_f_op_f32(-1194f + var_0.x), select(true, true, all(vec3<bool>(true, true, false))), true || all(global3[_wgslsmith_index_u32(global0.a.x, 21u)]))), ~u_input.e.x, _wgslsmith_div_u32(~(~4294967295u), abs(4294967295u)));
    var var_1 = Struct_1(global0.a);
    var var_2 = vec3<bool>(true, false, true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~u_input.e ^ var_1.a)), _wgslsmith_f_op_f32(var_0.x - var_0.x), ~(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, var_0.x, var_0.x, var_0.x)), Struct_2(Struct_1(var_1.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(54124u, 4294967295u), u_input.c.zy), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global1.a.x), 10u)]).b.x & _wgslsmith_mod_u32(global0.a.x, _wgslsmith_add_u32(26280u, global0.a.x))));
}

