struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<bool>(false, true, true), vec4<bool>(false, false, false, true), 4294967295u), Struct_2(vec3<bool>(false, false, true), vec4<bool>(true, true, true, false), 27960u), Struct_2(vec3<bool>(true, true, true), vec4<bool>(false, false, true, false), 0u), Struct_2(vec3<bool>(false, true, true), vec4<bool>(false, true, false, false), 4294967295u), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, true, false, true), 4294967295u), Struct_2(vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), 4294967295u), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), 0u), Struct_2(vec3<bool>(true, true, false), vec4<bool>(true, true, false, true), 10030u), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, false, false, true), 18146u), Struct_2(vec3<bool>(true, false, true), vec4<bool>(false, true, false, true), 1u), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, false, false, true), 4294967295u), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, true, true, true), 50427u), Struct_2(vec3<bool>(true, true, true), vec4<bool>(false, true, true, true), 41109u), Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, false, true, false), 1u), Struct_2(vec3<bool>(true, true, false), vec4<bool>(true, true, false, false), 29504u), Struct_2(vec3<bool>(false, false, false), vec4<bool>(true, true, true, false), 30626u), Struct_2(vec3<bool>(true, true, false), vec4<bool>(true, false, true, false), 1u));

var<private> global2: array<Struct_5, 23>;

var<private> global3: i32 = -57656i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_5(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1424f - -1297f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f - 1926f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(785f, -775f)) + _wgslsmith_f_op_f32(f32(-1f) * -1212f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1251f))))), Struct_2(!vec3<bool>(true, true, select(true, false, false)), vec4<bool>(true, true || (u_input.a.x < -2147483647i), any(vec3<bool>(false, true, false)), true), _wgslsmith_div_u32(58630u, ~14799u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(921f, -2150f, 1234f))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(967f, 1563f, -382f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -323f));
    let var_1 = global0.x;
    var var_2 = select(~vec4<i32>(i32(-1i) * -1i, global0.x, reverseBits(u_input.a.x ^ u_input.a.x), u_input.a.x), u_input.a, var_0.b.a.x);
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-200f))), var_0.a.x)), vec2<u32>(var_0.b.c ^ 65866u, _wgslsmith_dot_vec2_u32(vec2<u32>(109336u, var_0.b.c), vec2<u32>(var_0.b.c, 23261u)) | ~64456u), var_0.b.c, select(vec4<bool>(false, 20535i <= var_2.x, !var_0.b.b.x, false), vec4<bool>(true, var_0.b.a.x | true, true, var_0.b.b.x), vec4<bool>(false, any(vec2<bool>(true, var_0.b.b.x)), !var_0.b.a.x, !var_0.b.b.x)), var_0.b));
    var_2 = u_input.a;
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(var_2.x, u_input.a.x)), global0.yy), select(global0.xz, vec2<i32>(var_2.x & (u_input.a.x | u_input.a.x), -(var_2.x << (4294967295u % 32u))), var_3.a.e.b.x), min(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~var_2.yz, global0.xz >> (var_3.a.b % vec2<u32>(32u))), vec2<i32>(2147483647i, ~60877i)), -u_input.a.xw));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    global2 = array<Struct_5, 23>();
    global2 = array<Struct_5, 23>();
    let var_0 = !select(!vec4<bool>(global0.x == -27063i, true, true, true), vec4<bool>(!(arg_0.a != global0.x), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), false, any(vec2<bool>(true, false)) || true), 4294967295u > _wgslsmith_div_u32(_wgslsmith_clamp_u32(4994u, 81305u, 1u), 2272u));
    var var_1 = Struct_1(-4092i, func_3().x);
    global0 = abs(~(-_wgslsmith_sub_vec3_i32(~u_input.a.xwx, ~vec3<i32>(global0.x, 0i, 14043i))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-691f, arg_1.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-249f - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_add_i32(global0.x, 12883i) == ~65272i)))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_3 {
    global0 = vec3<i32>(max(~0i, _wgslsmith_clamp_i32(-(u_input.a.x | arg_1), 0i, 23386i)), min(-29779i, firstLeadingBit(~(-24985i)) & (firstLeadingBit(arg_1) >> ((13442u << (arg_0 % 32u)) % 32u))), global0.x);
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_sub_i32(u_input.a.x, 40068i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 0i), func_3())), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x), _wgslsmith_f_op_f32(round(arg_2.a.x)), _wgslsmith_f_op_f32(abs(-373f))))))), arg_2.c.x, arg_2.a.x, _wgslsmith_f_op_f32(trunc(arg_2.d.x)));
    let var_1 = !select(!vec2<bool>(!arg_3.x, arg_2.b.c < arg_0), select(arg_3, vec2<bool>(arg_3.x || true, 1u >= arg_2.b.c), vec2<bool>(true, false)), !(_wgslsmith_f_op_f32(2633f + var_0.x) < _wgslsmith_f_op_f32(-arg_2.d.x)));
    var var_2 = _wgslsmith_div_f32(var_0.x, arg_2.a.x);
    global2 = array<Struct_5, 23>();
    return Struct_3(_wgslsmith_f_op_f32(-var_0.x), ~(select(vec2<u32>(arg_0, arg_2.b.c), vec2<u32>(arg_2.b.c, 1u) | vec2<u32>(87275u, 0u), !vec2<bool>(var_1.x, false)) | (~vec2<u32>(1u, 34721u) << (~vec2<u32>(arg_2.b.c, 8542u) % vec2<u32>(32u)))), arg_0, !arg_2.b.b, arg_2.b);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_4) -> Struct_2 {
    return arg_1.a.e;
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec4<u32> {
    global2 = array<Struct_5, 23>();
    global1 = array<Struct_2, 17>();
    var var_0 = _wgslsmith_mult_vec2_i32(global0.zz << (_wgslsmith_mult_vec2_u32(vec2<u32>(53400u, firstLeadingBit(4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.c, arg_0.c), vec2<u32>(arg_0.c, 1u)), vec2<u32>(0u, 1u) >> (vec2<u32>(arg_0.c, 34580u) % vec2<u32>(32u)))) % vec2<u32>(32u)), -global0.yy);
    var var_1 = -1663f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(155f, -910f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)))));
    global2 = array<Struct_5, 23>();
    return vec4<u32>(~_wgslsmith_add_u32(abs(1u), arg_0.c) ^ 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, 1u, arg_2.c, 23737u)), ~vec4<u32>(31753u, 4294967295u, 0u, 29990u)) << (vec4<u32>(arg_0.c, ~33890u, arg_0.c, 0u) % vec4<u32>(32u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, 4294967295u, 60092u, arg_0.c), vec4<u32>(arg_2.c, 12440u, arg_2.c, 12699u)))), arg_2.c, func_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_2.c), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.c, 1u), vec2<u32>(arg_2.c, arg_2.c))) >> (_wgslsmith_div_u32(33068u, _wgslsmith_dot_vec4_u32(vec4<u32>(17700u, arg_2.c, arg_0.c, arg_0.c), vec4<u32>(0u, arg_2.c, arg_0.c, 0u))) % 32u), global0.x << (35581u % 32u), Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1071f, 1063f, 892f)))), func_5(arg_2.a.yy, Struct_4(Struct_3(-232f, vec2<u32>(arg_2.c, 1u), arg_2.c, vec4<bool>(false, arg_2.a.x, false, arg_2.b.x), arg_2)), Struct_5(vec3<f32>(-144f, -113f, 517f), arg_2, vec3<f32>(1560f, -170f, 1562f), vec2<f32>(1354f, 458f)), Struct_4(Struct_3(1189f, vec2<u32>(arg_0.c, 1u), 0u, vec4<bool>(true, false, false, true), arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1887f, 372f, 197f) * vec3<f32>(-205f, -310f, 751f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1320f, -567f, -648f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2153f, -450f))))), func_2(reverseBits(arg_0.c), -func_3().x, global2[_wgslsmith_index_u32(~77333u >> (1u % 32u), 23u)], arg_2.a.zy).e.b.yy).e.c);
}

fn func_1() -> f32 {
    global3 = -u_input.a.x;
    global1 = array<Struct_2, 17>();
    let var_0 = ~func_6(func_5(vec2<bool>(true, true), Struct_4(func_2(1u, -1i, global2[_wgslsmith_index_u32(96638u, 23u)], vec2<bool>(false, true))), Struct_5(vec3<f32>(338f, -569f, -1213f), Struct_2(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), 4294967295u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1386f, 440f, -1000f), vec3<f32>(776f, 710f, 593f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(977f, 165f), vec2<f32>(-263f, -1374f)))), Struct_4(Struct_3(1000f, vec2<u32>(19945u, 4294967295u), 27836u, vec4<bool>(true, false, false, false), Struct_2(vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), 63914u)))), _wgslsmith_mod_i32(1i, ~global0.x), Struct_2(!func_2(17970u, global0.x, Struct_5(vec3<f32>(1299f, -519f, 491f), global1[_wgslsmith_index_u32(23813u, 17u)], vec3<f32>(335f, 1132f, 751f), vec2<f32>(946f, 1000f)), vec2<bool>(false, false)).e.a, vec4<bool>(true, true, true, true), _wgslsmith_div_u32(_wgslsmith_mod_u32(29741u, 9456u), 1u)));
    global1 = array<Struct_2, 17>();
    var var_1 = true;
    return -827f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(692f)) + _wgslsmith_div_f32(637f, 284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1290f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-128f, 1467f)), -1653f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), -328f, _wgslsmith_f_op_f32(func_1()), -1419f))), ~_wgslsmith_add_vec4_i32(~vec4<i32>(10134i, -1i, 2147483647i, global0.x), firstTrailingBit(u_input.a) >> (countOneBits(vec4<u32>(4294967295u, 4294967295u, 2150u, 4294967295u)) % vec4<u32>(32u))), firstTrailingBit(1u));
}

