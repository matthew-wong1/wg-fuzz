struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-1321f, 210f, -1603f), vec3<f32>(-1451f, 638f, -1690f), vec3<f32>(441f, -782f, -932f), vec3<f32>(283f, 2715f, 557f), vec3<f32>(118f, 1737f, -587f), vec3<f32>(483f, 2347f, -740f), vec3<f32>(1159f, -329f, 1968f), vec3<f32>(1834f, 302f, 953f), vec3<f32>(-1000f, 590f, -1000f), vec3<f32>(104f, 420f, -1073f), vec3<f32>(-182f, 231f, -647f), vec3<f32>(-932f, -1322f, 387f), vec3<f32>(858f, -1000f, -166f), vec3<f32>(-1186f, 110f, -1069f), vec3<f32>(-558f, -995f, 1931f), vec3<f32>(-1179f, 692f, -1367f), vec3<f32>(-773f, -1146f, -1585f), vec3<f32>(-594f, 922f, -496f), vec3<f32>(-169f, -283f, -1907f), vec3<f32>(-1000f, -1246f, 989f), vec3<f32>(-463f, -1589f, -189f), vec3<f32>(1505f, 423f, -2354f), vec3<f32>(1570f, -475f, -1051f), vec3<f32>(-1000f, -1000f, 167f), vec3<f32>(-809f, 319f, 517f), vec3<f32>(-727f, 1095f, -253f), vec3<f32>(442f, -1997f, -709f), vec3<f32>(-639f, 646f, 1410f), vec3<f32>(377f, 290f, -524f), vec3<f32>(761f, -493f, -248f), vec3<f32>(-601f, 831f, 705f), vec3<f32>(281f, 916f, -1552f));

var<private> global1: vec3<f32>;

var<private> global2: Struct_2;

var<private> global3: u32;

var<private> global4: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    var var_0 = any(select(vec2<bool>(select(any(vec2<bool>(global4.x, global2.b.a)), u_input.d == u_input.d, !global4.x), true), !(!vec2<bool>(global4.x, global2.b.a)), !global4.ww));
    var var_1 = Struct_2(global2.b.c.zxz, Struct_1(global4.x, _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(trunc(723f)))), vec4<u32>(~global2.b.e.x, ~u_input.b, _wgslsmith_div_u32(global2.b.c.x, 4294967295u), _wgslsmith_sub_u32(global2.a.x, 0u)) & global2.b.c, vec3<f32>(global1.x, global2.b.b, global2.b.d.x), _wgslsmith_div_vec2_u32(global2.b.c.wz, global2.a.zx)));
    global4 = !select(select(select(vec4<bool>(false, global4.x, global2.b.a, false), !vec4<bool>(global4.x, var_1.b.a, var_1.b.a, true), select(vec4<bool>(var_1.b.a, global4.x, true, var_1.b.a), vec4<bool>(var_1.b.a, global2.b.a, true, true), global4.x)), select(vec4<bool>(global4.x, true, true, true), !vec4<bool>(var_1.b.a, var_1.b.a, global2.b.a, var_1.b.a), global4.x), var_1.b.a == true), !vec4<bool>(all(vec3<bool>(var_1.b.a, global2.b.a, false)), true, !global4.x, false), !select(!vec4<bool>(true, false, global2.b.a, false), !vec4<bool>(var_1.b.a, var_1.b.a, false, true), true));
    var var_2 = -select(u_input.e, u_input.e, false);
    let var_3 = Struct_2(~_wgslsmith_add_vec3_u32(var_1.a, vec3<u32>(34039u, var_1.b.e.x >> (1u % 32u), select(0u, var_1.a.x, true))), var_1.b);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b.b))), global1.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> bool {
    global0 = array<vec3<f32>, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-25671i, _wgslsmith_sub_vec4_i32(u_input.e & u_input.e, -u_input.e)))) + global1.x);
    let var_1 = Struct_3(0u, Struct_1(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(225f, arg_2.b.b, true)))), arg_2.b.c, arg_2.b.d, vec2<u32>(114918u, arg_1.x >> (~1u % 32u))), arg_2, abs(~min(1u, arg_1.x >> (arg_1.x % 32u))));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(518f)), arg_2.b.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-297f * -1342f))), -555f, arg_2.b.d.x);
    var var_3 = 1u;
    return !select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.b.d.x))) >= -510f, any(select(vec4<bool>(var_1.b.a, true, global2.b.a, true), vec4<bool>(var_1.c.b.a, true, false, false), true)), arg_0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_1((_wgslsmith_f_op_f32(-1332f * _wgslsmith_f_op_f32(-arg_3.b.d.x)) > 1000f) && select(!func_2(vec2<bool>(arg_3.b.a, global4.x), arg_3.a, Struct_2(arg_3.b.c.yxx, global2.b), u_input.c), global2.b.a, all(vec4<bool>(true, true, false, true))), global1.x, ~select(vec4<u32>(_wgslsmith_clamp_u32(38949u, u_input.d, 1u), 1u, _wgslsmith_mod_u32(global2.a.x, 4294967295u), _wgslsmith_div_u32(31317u, arg_3.a.x)), select(global2.b.c, countOneBits(global2.b.c), !arg_0), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(global2.a.x, arg_3.b.c.x)), 32u)] - _wgslsmith_f_op_vec3_f32(-global2.b.d))), select(~select(vec2<u32>(arg_1, global2.b.c.x), vec2<u32>(arg_3.a.x, 9056u), arg_3.b.b != 3553f), arg_3.b.e, select(select(!vec2<bool>(arg_3.b.a, arg_0.x), !global4.wx, true), !global4.yx, !select(vec2<bool>(true, false), vec2<bool>(false, false), global4.yw))));
    global2 = Struct_2(select(global2.a, reverseBits(reverseBits(_wgslsmith_clamp_vec3_u32(var_0.c.wyz, arg_3.a, vec3<u32>(6409u, 32494u, 1u)))), any(vec4<bool>(all(arg_0.wzy), !arg_0.x, arg_0.x, global2.b.e.x >= 42494u))), global2.b);
    global1 = global2.b.d;
    let var_1 = Struct_4(vec3<i32>(1i, u_input.c, u_input.a), global2.b, _wgslsmith_mod_i32(u_input.a, firstLeadingBit(u_input.c)), Struct_2(~(~vec3<u32>(global2.a.x, global2.a.x, var_0.e.x)), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1030f * global2.b.d.x) + _wgslsmith_f_op_f32(-global1.x)), arg_3.b.c, vec3<f32>(-871f, _wgslsmith_f_op_f32(sign(-1699f)), _wgslsmith_f_op_f32(-arg_3.b.b)), var_0.c.zw | global2.b.e)));
    var var_2 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, arg_1 & arg_3.b.c.x), countOneBits(var_0.c.x)), ~1u), arg_3.b, arg_3, ~0u);
    return Struct_3(var_1.d.b.c.x, var_1.b, arg_3, _wgslsmith_add_u32(5033u, arg_3.a.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<i32>) -> Struct_5 {
    let var_0 = Struct_5(Struct_1(any(!vec4<bool>(false, arg_2, true, true)), 1000f, ~vec4<u32>(reverseBits(u_input.b), 4294967295u, global2.a.x, arg_0.x ^ 4294967295u), global2.b.d, vec2<u32>(35855u, 448u)), func_4(!vec4<bool>(func_2(arg_1.zx, vec3<u32>(u_input.b, u_input.d, 55419u), Struct_2(vec3<u32>(global2.a.x, 55819u, arg_0.x), Struct_1(arg_2, global1.x, global2.b.c, vec3<f32>(global1.x, -556f, global2.b.b), global2.a.zy)), -2147483647i), true, false, !global4.x), ~global2.a.x, func_2(vec2<bool>(0u >= arg_0.x, false), global2.b.c.zyx, Struct_2(global2.b.c.xzx, global2.b), _wgslsmith_mult_i32(5059i, firstLeadingBit(-2147483647i))), Struct_2(vec3<u32>(global2.a.x << (4294967295u % 32u), _wgslsmith_sub_u32(global2.b.c.x, global2.a.x), _wgslsmith_mult_u32(0u, 51325u)), Struct_1(global2.b.a, _wgslsmith_f_op_f32(floor(global1.x)), global2.b.c, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.b.b, global1.x, global2.b.d.x))), min(vec2<u32>(1u, 26771u), arg_0)))), func_4(vec4<bool>(arg_1.x, all(select(arg_1, vec4<bool>(global2.b.a, true, arg_1.x, arg_2), vec4<bool>(false, true, arg_2, arg_1.x))), !func_2(vec2<bool>(arg_1.x, global2.b.a), global2.a, Struct_2(vec3<u32>(arg_0.x, 37506u, u_input.b), Struct_1(arg_2, global1.x, vec4<u32>(0u, 0u, u_input.d, 4294967295u), global2.b.d, global2.b.c.yx)), u_input.e.x), true), _wgslsmith_dot_vec4_u32(global2.b.c | (global2.b.c >> (global2.b.c % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(arg_0.x, u_input.d), ~u_input.b, abs(0u), ~global2.a.x)), any(select(vec4<bool>(arg_1.x, false, arg_1.x, false), !vec4<bool>(global4.x, arg_2, true, true), select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(false, false, global4.x, global2.b.a), false))), func_4(arg_1, abs(~4294967295u), arg_2, func_4(select(arg_1, arg_1, vec4<bool>(arg_1.x, false, false, true)), func_4(arg_1, arg_0.x, global4.x, Struct_2(vec3<u32>(4294967295u, u_input.b, 1u), Struct_1(false, global1.x, vec4<u32>(global2.b.e.x, arg_0.x, 4294967295u, arg_0.x), vec3<f32>(-506f, global1.x, global2.b.b), vec2<u32>(4294967295u, 4294967295u)))).c.a.x, true, Struct_2(global2.a, global2.b)).c).c).c);
    var var_1 = max(~reverseBits(abs(18815i)), _wgslsmith_sub_i32(~firstLeadingBit(~u_input.e.x), u_input.c));
    var_1 = ~firstLeadingBit(0i);
    var var_2 = _wgslsmith_dot_vec3_i32(~u_input.e.zxz, ~(~(max(vec3<i32>(1i, -24594i, u_input.c), vec3<i32>(u_input.a, -16171i, u_input.c)) << (vec3<u32>(var_0.b.d, 1u, var_0.a.e.x) % vec3<u32>(32u)))));
    global0 = array<vec3<f32>, 32>();
    return var_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_5) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2.b.d - vec3<f32>(1000f, _wgslsmith_f_op_f32(min(965f, global1.x)), global1.x)))), func_1(~arg_1.a.e, !select(!vec4<bool>(global4.x, false, false, arg_1.a.a), !vec4<bool>(arg_1.b.c.b.a, global2.b.a, arg_1.b.c.b.a, arg_1.b.c.b.a), select(vec4<bool>(arg_1.c.b.a, global2.b.a, global2.b.a, false), vec4<bool>(arg_1.a.a, true, true, arg_1.c.b.a), vec4<bool>(global4.x, global2.b.a, global2.b.a, arg_1.b.b.a))), !func_4(vec4<bool>(global2.b.a, false, true, false), arg_0.x, global4.x, func_1(vec2<u32>(3623u, 8689u), vec4<bool>(global2.b.a, false, true, global2.b.a), global4.x, u_input.e).b.c).b.a, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.a, u_input.e.x, 28098i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c), u_input.e), max(vec4<i32>(1i, u_input.c, u_input.a, u_input.c), u_input.e)), vec4<i32>(abs(u_input.c), ~74769i, u_input.c, ~(-10110i)))).b.b.d));
    let var_0 = select(vec4<bool>(true, global2.b.a, arg_1.a.a, false), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_f_op_f32(select(global1.x, global1.x, true))) <= -777f, global4.x, all(!(!vec3<bool>(arg_1.a.a, arg_1.a.a, global2.b.a))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.e.x, 2147483647i), firstLeadingBit(u_input.e.zyz)) <= (i32(-1i) * -1i)), true);
    var var_1 = Struct_2(vec3<u32>(_wgslsmith_sub_u32(~(~4294967295u), reverseBits(u_input.b)), ~(0u >> ((1u ^ arg_1.c.a.x) % 32u)), ~u_input.b), func_1(global2.a.zy, var_0, ~global2.b.e.x >= 4294967295u, vec4<i32>(-2147483647i << (func_1(vec2<u32>(arg_1.c.a.x, 27511u), vec4<bool>(global2.b.a, true, false, global2.b.a), global2.b.a, u_input.e).a.c.x % 32u), u_input.a, u_input.c, u_input.c)).b.c.b);
    let var_2 = select(-u_input.e.wwy, ~(_wgslsmith_add_vec3_i32(u_input.e.xzw, u_input.e.yzx) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 70168u, var_1.b.c.x), global2.a, select(vec3<u32>(4294967295u, arg_1.b.a, 20249u), arg_1.a.c.zyy, vec3<bool>(var_1.b.a, true, false))) % vec3<u32>(32u))), global4.ywx);
    var var_3 = -406f;
    return Struct_4(countOneBits(firstTrailingBit(~var_2 & -vec3<i32>(u_input.c, 2443i, u_input.a))), func_4(!vec4<bool>(true, true, global4.x, !global2.b.a), ~1u, arg_1.a.d.x < _wgslsmith_f_op_f32(exp2(arg_1.b.b.d.x)), func_1(select(select(var_1.a.yx, vec2<u32>(var_1.b.c.x, arg_1.a.e.x), vec2<bool>(true, global2.b.a)), vec2<u32>(0u, 1u), global4.xw), var_0, var_1.b.a, u_input.e).b.c).b, ~(-1i) >> (_wgslsmith_dot_vec2_u32(min(vec2<u32>(63548u, u_input.b), global2.a.yy), global2.a.xy) % 32u), Struct_2(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(arg_1.c.b.e.x, var_1.b.e.x), _wgslsmith_add_u32(arg_0.x, arg_0.x)), ~global2.a.x, abs(u_input.b)), func_4(var_0, u_input.b, true, arg_1.b.c).b));
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_4) -> bool {
    global4 = select(select(select(select(!vec4<bool>(global2.b.a, false, arg_0, global4.x), vec4<bool>(true, false, global2.b.a, true), vec4<bool>(false, false, false, arg_3.b.a)), vec4<bool>(arg_3.b.a, !arg_3.b.a, true, func_2(vec2<bool>(true, global2.b.a), global2.b.c.yyy, Struct_2(vec3<u32>(57154u, 4294967295u, 62919u), arg_3.d.b), -2147483647i)), vec4<bool>(false, false, arg_0, global2.b.a)), !(!(!vec4<bool>(true, arg_3.b.a, false, false))), select(vec4<bool>(true, true, all(global4.zy), true), select(vec4<bool>(true, false, arg_0, true), !vec4<bool>(arg_3.d.b.a, true, false, global4.x), func_5(vec2<u32>(arg_1.x, arg_3.b.e.x), Struct_5(global2.b, Struct_3(arg_1.x, arg_3.d.b, arg_3.d, 1u), Struct_2(global2.b.c.wxx, Struct_1(true, 1329f, global2.b.c, arg_3.d.b.d, global2.a.xy)))).d.b.a), select(!vec4<bool>(global2.b.a, true, false, false), select(vec4<bool>(global4.x, true, false, false), vec4<bool>(arg_3.d.b.a, true, arg_0, arg_0), vec4<bool>(false, arg_3.b.a, false, arg_3.b.a)), true))), !vec4<bool>(false, ~(-12250i) <= ~u_input.e.x, false, select(false, arg_3.b.a & arg_0, arg_3.a.x >= 38656i)), select(vec4<bool>(all(vec4<bool>(arg_0, arg_0, true, false)), false, global2.b.a, all(!global4.wyy)), select(select(vec4<bool>(global4.x, true, arg_3.b.a, global2.b.a), select(vec4<bool>(global4.x, global2.b.a, arg_0, global2.b.a), vec4<bool>(arg_3.d.b.a, true, arg_3.d.b.a, arg_0), false), false), !select(vec4<bool>(false, global2.b.a, false, false), vec4<bool>(arg_0, global4.x, false, arg_3.b.a), false), !(!global2.b.a)), true));
    global0 = array<vec3<f32>, 32>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.d.x, global1.x, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_3.c, u_input.e)) - _wgslsmith_f_op_f32(sign(arg_2.x)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, global2.b.b, -1093f, var_0)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, global2.b.b, var_0, var_0), vec4<f32>(arg_2.x, 1004f, arg_2.x, -329f))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(550f, arg_3.b.b) * _wgslsmith_f_op_f32(104f - arg_3.d.b.d.x))))));
    return !global2.b.a;
}

fn func_7(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = vec4<bool>(false, func_2(select(select(global4.yy, vec2<bool>(true, true), true), vec2<bool>(any(global4.zxy), true), any(!global4.zxw)), ~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(52842u, 12344u, global2.b.c.x)), vec3<u32>(83088u, u_input.b, 1963u) | global2.a), Struct_2(~global2.b.c.wzx & ~vec3<u32>(46411u, 4294967295u, 0u), func_1(firstTrailingBit(global2.a.zy), vec4<bool>(global2.b.a, true, global4.x, true), !global2.b.a, select(vec4<i32>(u_input.a, -1i, u_input.a, u_input.c), vec4<i32>(20327i, 524i, u_input.e.x, -2147483647i), global4.x)).c.b), i32(-1i) * -1i), true, !(!all(!vec3<bool>(true, global4.x, global2.b.a))));
    var var_1 = func_5(~global2.a.yy << (global2.a.zy % vec2<u32>(32u)), Struct_5(Struct_1(func_4(var_0, 1u, false, Struct_2(global2.a, global2.b)).c.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), global2.b.b)), vec4<u32>(77738u, 24893u, 9872u, u_input.d), _wgslsmith_f_op_vec3_f32(max(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, global2.b.d.x, 179f)))), ~vec2<u32>(global2.b.c.x, 25249u)), func_1(_wgslsmith_div_vec2_u32(global2.a.yz ^ global2.a.zx, vec2<u32>(u_input.b, global2.a.x)), var_0, func_5(global2.b.c.zy, Struct_5(Struct_1(var_0.x, global2.b.b, global2.b.c, vec3<f32>(1000f, global1.x, arg_0.x), vec2<u32>(global2.a.x, global2.b.c.x)), Struct_3(u_input.d, Struct_1(false, global1.x, vec4<u32>(1u, 1u, u_input.d, global2.a.x), global0[_wgslsmith_index_u32(global2.b.e.x, 32u)], global2.a.xz), Struct_2(global2.a, global2.b), 1u), Struct_2(vec3<u32>(4294967295u, 71316u, global2.b.e.x), Struct_1(global2.b.a, arg_0.x, vec4<u32>(51308u, global2.a.x, 56214u, global2.b.e.x), vec3<f32>(923f, arg_0.x, 683f), global2.a.yx)))).b.a, firstTrailingBit(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))).b, Struct_2(~(vec3<u32>(u_input.d, global2.b.c.x, global2.a.x) >> (vec3<u32>(u_input.d, 54462u, 85262u) % vec3<u32>(32u))), func_4(vec4<bool>(arg_1, false, var_0.x, true), 1u, true, Struct_2(global2.b.c.ywx, global2.b)).b)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(428f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f), global1.x), !select(func_2(vec2<bool>(arg_1, var_0.x), var_1.d.b.c.wzz, Struct_2(vec3<u32>(u_input.b, u_input.d, u_input.b), var_1.b), 0i), true | var_0.x, true)))));
    let var_3 = vec4<bool>(true, var_1.b.c.x != 0u, !(!global2.b.a), global2.b.a);
    global4 = vec4<bool>(var_1.b.a, global4.x, false, true);
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<i32>(u_input.c, ~u_input.c, _wgslsmith_clamp_i32(u_input.a, ~(u_input.a << (global2.b.e.x % 32u)), ~select(u_input.c, 51953i, global4.x))), Struct_1(!select(false, true, false), 1716f, vec4<u32>(1218u, ~(~4294967295u), select(0u, _wgslsmith_sub_u32(global2.b.c.x, 62288u), 698i != u_input.c), _wgslsmith_sub_u32(1u, global2.b.c.x)), global0[_wgslsmith_index_u32(u_input.d, 32u)], global2.a.xy), 2147483647i, func_7(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-894f)) - 109f), 467f, global1.x), func_6(any(global4.yyz), ~(~vec2<u32>(23614u, u_input.b)), global2.b.d.zz, func_5(vec2<u32>(u_input.b, u_input.d), func_1(vec2<u32>(u_input.b, global2.a.x), vec4<bool>(false, global4.x, false, global2.b.a), global2.b.a, vec4<i32>(22519i, u_input.e.x, u_input.e.x, -21146i))))));
    let var_1 = global4.x;
    let var_2 = ~reverseBits(-(~1i));
    global4 = vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~0u, global2.b.c.x), ~func_1(vec2<u32>(0u, u_input.b), vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a), false, vec4<i32>(u_input.c, var_0.a.x, -2147483647i, u_input.e.x)).c.a.x) <= ~8777u, !global2.b.a, true, global2.b.a);
    var var_3 = vec2<i32>(select(u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~var_0.a.zx, vec2<i32>(-5353i, var_0.a.x)), abs(~vec2<i32>(17737i, u_input.c))), var_0.d.b.a), var_0.a.x);
    let var_4 = 1429f;
    global4 = !vec4<bool>(!func_7(vec3<f32>(var_0.b.b, -411f, var_0.d.b.b), true & global2.b.a).b.a, true, global2.b.a, !(~var_3.x < reverseBits(26510i)));
    var_0 = Struct_4(abs(vec3<i32>(var_2, -max(-1i, 0i), var_0.c)), func_1(countOneBits(var_0.b.c.yx), vec4<bool>(!(!global2.b.a), !(!var_0.d.b.a), true, any(!vec4<bool>(global4.x, true, false, var_0.b.a))), true, u_input.e).b.b, ~abs(var_2), var_0.d);
    var var_5 = global2.b.d.xz;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e.yzw);
}

