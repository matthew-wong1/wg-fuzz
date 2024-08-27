struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-591f, false, vec3<u32>(4294967295u, 1u, 0u), 16468u, vec2<f32>(941f, -1000f)), Struct_1(-800f, false, vec3<u32>(1u, 0u, 33688u), 0u, vec2<f32>(-971f, 1596f)));

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

var<private> global2: i32;

var<private> global3: vec3<u32> = vec3<u32>(1u, 0u, 177367u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.b.a)), arg_0, global0.a.a, 1000f);
    var var_1 = Struct_1(-1081f, arg_2 > min(i32(-1i) * -22660i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d, arg_1.x), u_input.d)), vec3<u32>(countOneBits(35169u), max(u_input.a, 0u), _wgslsmith_mult_u32(u_input.a, global3.x)), max(_wgslsmith_mult_u32(~(~global0.a.c.x), global0.b.d), 54578u), _wgslsmith_f_op_vec2_f32(-var_0.zw));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1517f, _wgslsmith_f_op_f32(min(-1017f, 203f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.a, 1000f, global0.b.b)) * 639f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.a, 919f) * -252f)) + vec3<f32>(global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(661f + var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.e.x * -1000f), _wgslsmith_f_op_f32(var_1.e.x - 839f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.zzx, _wgslsmith_f_op_vec3_f32(-var_0.zyz))))));
    global0 = Struct_3(Struct_1(1063f, var_1.b, vec3<u32>(u_input.c.x, 25265u >> (0u % 32u), _wgslsmith_mult_u32(u_input.b.x, global0.a.d)) >> (~(~vec3<u32>(var_1.c.x, global3.x, 0u)) % vec3<u32>(32u)), ~1736u, global0.b.e), Struct_1(_wgslsmith_f_op_f32(-global0.a.a), true & !all(global1[_wgslsmith_index_u32(1u, 26u)]), vec3<u32>(15594u, ~1u, _wgslsmith_div_u32(abs(global0.a.c.x), var_1.c.x)), _wgslsmith_sub_u32(~global0.b.d, _wgslsmith_div_u32(4294967295u, 1u)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.a.c.x), global3.xx), vec2<u32>(4294967295u, global3.x) >> (vec2<u32>(u_input.c.x, u_input.a) % vec2<u32>(32u))) % 32u), _wgslsmith_f_op_vec2_f32(max(var_2.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.e.x, var_2.x))) - vec2<f32>(-594f, var_1.e.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1002f, var_2.x, arg_0, -546f) - vec4<f32>(global0.b.e.x, var_1.a, var_0.x, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), -1033f, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(var_0.x * arg_0))), _wgslsmith_f_op_f32(floor(-614f))), !(!global0.b.b))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-175f, _wgslsmith_f_op_f32(arg_0 - -293f), _wgslsmith_div_f32(728f, var_1.e.x), -1885f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 979f, var_2.x, 2525f), vec4<f32>(arg_0, arg_0, -382f, 441f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-613f, -658f, arg_0, 1000f)))));
    return -1358f;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_3(global0.a, Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(global0.a.e.x * _wgslsmith_f_op_f32(-1201f - 1458f)), -vec3<i32>(arg_0, -44924i, arg_0), u_input.d)), global0.a.a != 1782f, u_input.b, abs(u_input.e), _wgslsmith_f_op_vec2_f32(-global0.b.e)));
    global0 = Struct_3(global0.b, global0.b);
    let var_1 = Struct_2(vec2<bool>(!any(!global1[_wgslsmith_index_u32(var_0.a.d, 26u)]), var_0.a.b));
    var_0 = Struct_3(var_0.a, Struct_1(_wgslsmith_f_op_f32(max(var_0.b.e.x, 926f)), all(global1[_wgslsmith_index_u32(min(0u, var_0.b.d), 26u)]), var_0.b.c, 40608u, global0.b.e));
    var var_2 = any(var_1.a);
    return var_0.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, arg_0.x, arg_2.b.e.x, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(arg_0 - arg_0))))));
    var var_1 = arg_2;
    var var_2 = false;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1240f, _wgslsmith_f_op_f32(select(arg_2.b.a, -236f, var_1.b.b)), all(vec2<bool>(true, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1000f))) + _wgslsmith_f_op_f32(exp2(arg_2.b.e.x))), true, _wgslsmith_mod_vec3_u32(select(select(vec3<u32>(1u, 46595u, u_input.b.x), vec3<u32>(global3.x, 4294967295u, global3.x), vec3<bool>(var_1.a.b, true, arg_2.a.b)), u_input.c.xzz, !var_1.b.b) << (var_1.b.c % vec3<u32>(32u)), vec3<u32>(37977u, func_2(max(-54199i, -6701i)).d, firstLeadingBit(global3.x) | u_input.a)), global3.x << (~(35319u | u_input.e) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.zx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy)))));
    let var_4 = Struct_2(select(select(!select(vec2<bool>(var_3.b, global0.a.b), vec2<bool>(true, false), false), vec2<bool>(var_3.b || true, arg_1), var_1.b.c.x <= (u_input.a >> (4294967295u % 32u))), select(select(vec2<bool>(false, false), vec2<bool>(var_1.b.b, arg_1), func_2(u_input.d).b), select(vec2<bool>(global0.b.b, true), vec2<bool>(var_3.b, true), all(vec2<bool>(true, false))), !(-777f == var_1.b.a)), vec2<bool>((u_input.d == u_input.d) && var_1.b.b, !global0.b.b)));
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.d;
    return Struct_1(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1628f * arg_0)), func_4(vec4<f32>(global0.b.e.x, _wgslsmith_f_op_f32(arg_2.b.a * 2457f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_2.b.a + 1000f)), true, func_4(arg_1, global0.a.b, Struct_3(Struct_1(arg_1.x, true, global0.b.c, 4294967295u, vec2<f32>(global0.b.e.x, -1888f)), Struct_1(447f, true, u_input.c.zyz, u_input.e, vec2<f32>(101f, -808f))))).a.b & arg_2.a.b, vec3<u32>(31509u, global0.b.d, arg_2.b.c.x), global0.b.d & countOneBits(23869u), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global0.b.a)), _wgslsmith_f_op_f32(-arg_2.a.a)), _wgslsmith_f_op_vec2_f32(global0.a.e + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(205f, 1279f), vec2<f32>(-123f, arg_1.x))))), _wgslsmith_f_op_vec2_f32(trunc(func_4(_wgslsmith_f_op_vec4_f32(round(arg_1)), global0.b.b, Struct_3(global0.a, global0.a)).a.e))));
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = Struct_3(global0.b, func_5(-342f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1361f, -1819f, -1104f, global0.b.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(105f, global0.a.a, 897f, -329f), vec4<f32>(global0.b.a, -310f, 425f, arg_0.b.a))))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-202f, 348f, -755f, global0.b.a) + vec4<f32>(global0.b.a, arg_0.a.e.x, -1723f, arg_0.a.e.x))), false & !arg_0.a.b, Struct_3(func_2(u_input.d), global0.a)), vec2<i32>(countOneBits(u_input.d & 2147483647i), countOneBits(_wgslsmith_clamp_i32(u_input.d, -2147483647i, -13717i)))));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1245f, var_0.b.e.x, arg_0.a.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(492f, arg_0.a.a, arg_0.a.e.x, global0.b.e.x), vec4<f32>(-353f, arg_0.a.e.x, -1621f, global0.a.e.x))))))), var_0.b.b, Struct_3(Struct_1(-1575f, false, _wgslsmith_mod_vec3_u32(~arg_0.a.c, global0.b.c), ~_wgslsmith_mult_u32(16733u, 1u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global0.b.e, vec2<f32>(-335f, global0.b.e.x), vec2<bool>(arg_0.b.b, arg_0.b.b)))))), func_2(i32(-1i) * -1576i)));
    global3 = firstTrailingBit(global0.a.c);
    global0 = arg_0;
    var var_1 = 57957i;
    return !func_2(~1i >> (~arg_0.a.c.x % 32u)).b;
}

fn func_6(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_3 {
    global2 = arg_0.x;
    global1 = array<vec3<bool>, 26>();
    global0 = Struct_3(func_5(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-980f, 1000f, global0.a.e.x, -616f))), func_4(vec4<f32>(-748f, -435f, _wgslsmith_f_op_f32(min(arg_1, -1331f)), arg_1), !(!arg_2.x), Struct_3(global0.a, Struct_1(1065f, false, vec3<u32>(global0.a.c.x, global0.a.d, global0.a.c.x), u_input.c.x, global0.a.e))), arg_0), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1788f + _wgslsmith_div_f32(-814f, -930f))), func_4(vec4<f32>(global0.a.e.x, _wgslsmith_f_op_f32(select(global0.a.a, global0.b.e.x, false)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(func_3(global0.a.e.x, arg_3, -37906i))), global0.b.b, Struct_3(func_5(arg_1, vec4<f32>(1970f, -204f, global0.b.e.x, arg_1), Struct_3(global0.a, global0.a), vec2<i32>(arg_0.x, u_input.d)), Struct_1(arg_1, false, vec3<u32>(4294967295u, u_input.b.x, global3.x), u_input.e, global0.b.e))).a.b, global0.b.c, global0.a.c.x, global0.a.e));
    var var_0 = ~(~select(global0.b.c.xz, global3.zx, true));
    global3 = max(vec3<u32>(55819u ^ var_0.x, 0u, 36619u) >> (u_input.c.yyz % vec3<u32>(32u)), u_input.c.yyy);
    return Struct_3(func_2(arg_0.x), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(~(-(~(vec2<i32>(12714i, 9861i) | vec2<i32>(u_input.d, u_input.d)))), _wgslsmith_f_op_f32(exp2(global0.b.e.x)), vec4<bool>(all(select(!vec2<bool>(false, global0.a.b), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)), select(!func_1(Struct_3(global0.b, Struct_1(-1163f, false, u_input.c.wzx, u_input.c.x, vec2<f32>(-518f, 766f)))), true, global0.b.b), 24959u < global3.x, ((global0.a.e.x == global0.a.a) || false) && all(vec3<bool>(global0.b.b, global0.b.b, global0.b.b))), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 27340i, 2147483647i), vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<i32>(u_input.d, 2147483647i, u_input.d)));
    global2 = ~((_wgslsmith_mult_i32(-u_input.d, 32934i) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -31410i), vec2<i32>(-72488i, -2147483647i))) | (_wgslsmith_mult_i32(-u_input.d, u_input.d) << (_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x) % 32u)));
    var var_0 = Struct_2(select(select(vec2<bool>(any(vec4<bool>(true, true, false, false)), global0.a.b), select(!vec2<bool>(false, global0.a.b), vec2<bool>(false, true), all(global1[_wgslsmith_index_u32(global3.x, 26u)])), all(vec2<bool>(true, true))), !vec2<bool>(true, !global0.b.b), vec2<bool>(!(u_input.c.x > 28015u), true | (u_input.d <= u_input.d))));
    let var_1 = ~global3.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.e.x * global0.b.e.x) * global0.b.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.b.e.x, _wgslsmith_mult_vec3_i32(vec3<i32>(28564i, u_input.d, u_input.d), vec3<i32>(-22360i, 0i, 50890i)), -2147483647i << (global0.b.c.x % 32u)))), -1545f, _wgslsmith_f_op_f32(-global0.a.a));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, _wgslsmith_f_op_f32(-global0.b.e.x)));
    var var_5 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~((global0.b.d ^ 1u) >> (52394u % 32u)), _wgslsmith_mult_u32(~global0.b.d ^ ~global0.b.c.x, 4294967295u)), global0.b.c.x);
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(u_input.d << (3360u % 32u)).e.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.d, u_input.d, u_input.d), abs(vec4<i32>(1i, 0i, 80767i, -2147483647i)))));
}

