struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(1i, vec4<f32>(659f, 1369f, 758f, -633f), vec3<f32>(-679f, -309f, 789f), vec3<i32>(4169i, -1i, 2147483647i), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(i32(-2147483648), vec4<f32>(255f, 899f, 157f, 199f), vec3<f32>(1575f, 756f, 1922f), vec3<i32>(0i, -21618i, i32(-2147483648)), vec4<bool>(false, true, true, false)), Struct_1(0i, vec4<f32>(-599f, 977f, 195f, -1049f), vec3<f32>(-1599f, -2619f, -2279f), vec3<i32>(-8764i, -17420i, 2147483647i), vec4<bool>(true, true, false, false)), vec3<u32>(5380u, 19135u, 0u)));

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: array<bool, 1> = array<bool, 1>(true);

var<private> global3: vec4<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = !(!any(vec4<bool>(true, true, all(vec3<bool>(global0.b.b.e.x, arg_0.x, true)), true)));
    var var_1 = ~_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, u_input.c), global3.wwz, true), global3.xyw ^ vec3<u32>(u_input.c, 0u, 4294967295u)), global0.b.c.x), 23u)], vec4<i32>(-1i) * -global1[_wgslsmith_index_u32(min(1u, 4294967295u), 23u)]);
    global4 = global0.a;
    let var_2 = _wgslsmith_div_u32(~global0.b.c.x >> (~global3.x % 32u), firstLeadingBit(u_input.c));
    global1 = array<vec4<i32>, 23>();
    return 1u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = vec2<u32>(func_3(global0.a.e.yyy), 4294967295u);
    global2 = array<bool, 1>();
    var var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(select(global0.b.c.x, _wgslsmith_mult_u32(4294967295u, global0.b.c.x), true), 9354u, firstTrailingBit(u_input.b), 8968u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.c.x, ~reverseBits(21358u), 25075u, 20556u), ~vec4<u32>(0u, u_input.c, firstLeadingBit(global0.b.c.x), ~63723u), vec4<u32>(~global0.b.c.x, _wgslsmith_clamp_u32(1u, var_0.x, u_input.b) | ~global3.x, 74650u, 3493u)));
    var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~global3.x, 0u >> (~global0.b.c.x % 32u), ~global0.b.c.x, 4294967295u), vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, var_0.x) | vec2<u32>(global3.x, global0.b.c.x), abs(var_0), false | global2[_wgslsmith_index_u32(0u, 1u)]), vec2<u32>(~4294967295u, 4294967295u)), abs(u_input.c), 1u, 1u));
    var var_2 = global0.a.e.zw;
    return Struct_3(global0.a, global0.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), -1000f, _wgslsmith_div_f32(arg_2.x, global4.b.x)))).a;
    global1 = array<vec4<i32>, 23>();
    let var_1 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_mod_vec3_u32(abs(countOneBits(vec3<u32>(25029u, 0u, arg_3.b.b.c.x))), func_2(_wgslsmith_f_op_vec3_f32(min(global0.a.b.yxx, vec3<f32>(225f, arg_2.x, global4.c.x)))).b.c), vec3<u32>(func_2(_wgslsmith_f_op_vec3_f32(round(arg_2))).b.c.x, arg_3.b.b.c.x, u_input.b), select(vec3<bool>(!arg_0.x, arg_3.d.e.x || true, all(vec3<bool>(global0.b.b.e.x, global0.a.e.x, false))), vec3<bool>(all(vec3<bool>(true, false, true)), false, !arg_1), arg_0.x)), countOneBits(~arg_3.b.b.c));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1507f);
    var var_3 = arg_3.b.a.c.x;
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(global4.b.x * func_2(_wgslsmith_f_op_vec3_f32(global0.a.b.zxz * vec3<f32>(939f, global0.b.a.b.x, -268f))).a.c.x), -1411f, _wgslsmith_f_op_f32(global0.a.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.c.x - arg_2.x))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    global1 = array<vec4<i32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -1990f)) + global4.b.x);
    global1 = array<vec4<i32>, 23>();
    var var_1 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.b.b.zyz), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global4.b.xwx * _wgslsmith_f_op_vec3_f32(global0.a.b.yyw - vec3<f32>(878f, global0.b.b.c.x, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, global4.c.x, -1000f)), global4.e.zwz))), func_4(vec2<bool>(true, true), global0.b.b.e.x, vec3<f32>(global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.c.x, 311f))), _wgslsmith_div_f32(-844f, -656f)), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(global4.b.x - 582f), _wgslsmith_f_op_f32(1452f + 1000f), 334f), func_2(global0.b.b.c), global0.b.a.d, Struct_1(~u_input.a.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1652f, global0.a.c.x, -527f, global0.b.a.c.x), vec4<f32>(-1000f, global4.b.x, global4.c.x, -759f))), _wgslsmith_f_op_vec3_f32(trunc(global0.b.b.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global4.d.x, -2147483647i), vec3<i32>(global0.b.a.d.x, -2147483647i, u_input.a.x)), !global0.b.b.e))), abs(-select(global4.d, vec3<i32>(global4.d.x, 6857i, global0.b.a.a) ^ global0.a.d, global0.b.a.e.xzy)), func_4(vec2<bool>(global0.b.b.e.x, true), all(vec3<bool>(all(vec3<bool>(global0.a.e.x, true, global4.e.x)), true, select(false, true, global2[_wgslsmith_index_u32(22674u, 1u)]))), global4.b.xyy, Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-509f, 1000f, global0.a.b.x) + global0.a.c) + _wgslsmith_f_op_vec3_f32(trunc(global0.b.b.c))), Struct_3(func_2(vec3<f32>(var_0, global4.c.x, 864f)).b.a, func_4(global4.e.yz, true, global4.b.yxx, Struct_4(global0.a.b.wzy, Struct_3(global0.a, global0.b), global0.a.d, global0.b.a)).b), max(global0.b.b.d, vec3<i32>(global0.b.b.d.x, 0i, global0.a.d.x)), global0.a)).b.b);
    global3 = vec4<u32>(abs(abs(firstLeadingBit(72002u) >> (1u % 32u))), ~arg_1, 4294967295u, 1u);
    return Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(434f, global4.c.x, all(var_1.d.e.xzw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x)), global4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + global0.b.b.b.x)) - _wgslsmith_f_op_vec4_f32(-func_2(vec3<f32>(564f, 860f, 964f)).a.b)), _wgslsmith_div_vec3_f32(var_1.b.b.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.b.c + global0.a.b.xzw)) * var_1.d.c)), firstLeadingBit(max(vec3<i32>(_wgslsmith_add_i32(global4.a, var_1.b.b.a.d.x), _wgslsmith_div_i32(2147483647i, var_1.b.b.b.a), -1i << (global0.b.c.x % 32u)), vec3<i32>(global0.a.a, var_1.d.d.x, u_input.a.x) >> (firstLeadingBit(var_1.b.b.c) % vec3<u32>(32u)))), global0.a.e);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    global1 = array<vec4<i32>, 23>();
    let var_0 = -245i << (0u % 32u);
    let var_1 = Struct_1(global4.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.b.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1589f, global0.a.c.x), func_1(vec2<u32>(u_input.c, 7341u), global3.x).c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-301f, arg_2.b.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.b.x))), !global4.e.x)), -866f), (firstLeadingBit(~global4.d) | _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_2.a.d, arg_1.b.d, vec3<i32>(arg_1.a.d.x, 2147483647i, -34369i)), arg_1.b.d)) | global4.d, select(vec4<bool>(global2[_wgslsmith_index_u32(~0u, 1u)], arg_2.a.e.x, _wgslsmith_f_op_f32(-arg_2.a.b.x) != _wgslsmith_f_op_f32(f32(-1f) * -1217f), global2[_wgslsmith_index_u32(u_input.c, 1u)]), arg_2.b.a.e, func_2(vec3<f32>(arg_1.b.c.x, 289f, _wgslsmith_f_op_f32(arg_1.b.c.x - arg_1.a.b.x))).b.a.e));
    let var_2 = true;
    let var_3 = Struct_4(global0.b.a.b.zzz, Struct_3(var_1, Struct_2(func_4(!global0.a.e.yx, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3, 4294967295u), 1u)], _wgslsmith_div_vec3_f32(arg_1.b.b.zzw, vec3<f32>(362f, -637f, 1732f)), Struct_4(vec3<f32>(-418f, 328f, 818f), arg_2, arg_1.a.d, Struct_1(-45848i, vec4<f32>(global0.a.c.x, 123f, var_1.b.x, 1324f), arg_2.b.b.b.wyw, vec3<i32>(-2147483647i, u_input.a.x, 0i), var_1.e))).a, Struct_1(_wgslsmith_mod_i32(arg_1.a.a, u_input.a.x), func_4(vec2<bool>(true, true), global4.e.x, vec3<f32>(arg_2.b.a.b.x, -183f, arg_2.a.b.x), Struct_4(vec3<f32>(751f, global0.b.a.b.x, -248f), arg_2, vec3<i32>(arg_2.a.a, arg_1.a.a, -11434i), global0.b.b)).b.a.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(676f, arg_2.a.c.x, global0.b.b.b.x) + global0.a.b.yyz), ~var_1.d, global4.e), ~(global0.b.c >> (vec3<u32>(24753u, 8917u, global0.b.c.x) % vec3<u32>(32u))))), -_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d.x, -arg_2.b.b.a, ~(-2147483647i)), global4.d), func_1(func_4(func_2(func_1(vec2<u32>(u_input.c, 0u), 1u).c).b.b.e.xy, var_2, _wgslsmith_f_op_vec3_f32(func_4(arg_1.b.e.xz, global4.e.x, vec3<f32>(global4.b.x, global4.c.x, 1395f), Struct_4(global4.c, arg_2, vec3<i32>(var_0, -2147483647i, -2147483647i), global0.a)).b.a.c + _wgslsmith_f_op_vec3_f32(select(arg_2.b.a.c, vec3<f32>(arg_2.b.b.c.x, arg_2.b.a.b.x, 777f), var_1.e.xzx))), Struct_4(func_2(vec3<f32>(-1518f, -177f, -909f)).b.a.c, arg_2, _wgslsmith_add_vec3_i32(arg_1.b.d, vec3<i32>(0i, global0.b.a.a, -45460i)), var_1)).b.c.xx, 51262u));
    return func_4(!(!(!func_1(vec2<u32>(47904u, arg_2.b.c.x), 31639u).e.xy)), arg_2.a.e.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1245f, -502f, -642f))))), var_3);
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    global0 = arg_0;
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.b.c)), _wgslsmith_f_op_vec3_f32(-arg_0.a.b.yzw)) * global4.b.zxz), func_4(func_1(abs(func_4(arg_0.b.a.e.zx, global4.e.x, global4.b.www, Struct_4(vec3<f32>(arg_0.b.b.c.x, global4.c.x, 315f), arg_0, global4.d, global0.a)).b.c.yx), ~_wgslsmith_sub_u32(516u, arg_0.b.c.x)).e.yz, global0.b.a.e.x, _wgslsmith_f_op_vec3_f32(exp2(arg_0.b.b.c)), Struct_4(vec3<f32>(global0.a.c.x, arg_0.b.a.c.x, _wgslsmith_f_op_f32(global4.b.x + global4.b.x)), func_5(~vec2<u32>(14109u, 4294967295u), Struct_2(arg_0.a, global0.a, vec3<u32>(1061u, arg_0.b.c.x, global3.x)), func_4(vec2<bool>(true, arg_0.b.b.e.x), arg_0.a.e.x, arg_0.b.a.b.xwz, Struct_4(vec3<f32>(arg_0.b.a.b.x, 189f, global4.b.x), arg_0, vec3<i32>(u_input.a.x, arg_0.b.a.a, -1465i), Struct_1(7522i, arg_0.b.b.b, global4.c, vec3<i32>(1i, global0.a.d.x, global0.a.a), vec4<bool>(false, global4.e.x, false, false)))), arg_0.b.c.x), global0.b.b.d, Struct_1(-global0.a.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b.x, 562f, arg_0.a.b.x, global4.b.x)), _wgslsmith_f_op_vec3_f32(max(global0.b.b.b.zwy, global4.b.zzw)), global4.d, global4.e))), vec3<i32>(-1i) * -(~(-vec3<i32>(global4.a, -47793i, u_input.a.x))), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, -1830f, -1305f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b.a.b.xxy, global4.b.ywz, vec3<bool>(global4.e.x, global4.e.x, arg_0.b.b.e.x))))))).a);
    var var_1 = false;
    var var_2 = arg_0.b.c.x;
    let var_3 = !any(!vec2<bool>(var_0.b.b.a.e.x & false, 4294967295u <= var_0.b.b.c.x));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 23>();
    var var_0 = global0.b.c;
    global0 = func_6(func_5(global0.b.c.xy, global0.b, Struct_3(global0.b.a, Struct_2(func_1(vec2<u32>(61103u, u_input.c), 1u), global0.a, ~global0.b.c)), ~(u_input.c ^ var_0.x) | 47895u));
    let var_1 = max((max(global3.zz << (vec2<u32>(73505u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 4294967295u)) << (global0.b.c.xz % vec2<u32>(32u))) & global3.xw, reverseBits(~abs(global0.b.c.zy ^ var_0.yx)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c) - global0.b.a.c), func_4(vec2<bool>(func_2(func_1(vec2<u32>(0u, 1u), 18423u).b.wxy).a.e.x, all(!vec3<bool>(global0.a.e.x, false, true))), !(any(global0.a.e.yy) & !global0.b.a.e.x), global4.b.yyy, Struct_4(global0.b.a.c, func_5(~global0.b.c.xy, global0.b, func_6(Struct_3(global0.b.b, Struct_2(Struct_1(-19224i, vec4<f32>(-1090f, -446f, global4.c.x, -508f), vec3<f32>(global0.a.c.x, 259f, 292f), vec3<i32>(2147483647i, global4.d.x, u_input.a.x), vec4<bool>(false, false, true, true)), global0.a, global0.b.c))), 8164u), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(1i, -1i, u_input.a.x)), global0.a.d), global0.b.a)), vec3<i32>(func_4(global4.e.yw, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, global4.b.x, 901f)), Struct_4(vec3<f32>(global4.c.x, global0.a.b.x, global0.a.c.x), Struct_3(global0.b.a, Struct_2(Struct_1(global4.a, vec4<f32>(-105f, 486f, -345f, 1137f), global4.c, vec3<i32>(global0.b.a.d.x, 55699i, -2147483647i), global0.b.b.e), Struct_1(global4.a, vec4<f32>(global0.a.b.x, global4.c.x, global4.c.x, global0.b.b.b.x), global0.b.a.b.xxy, global0.b.a.d, vec4<bool>(false, global0.a.e.x, true, global4.e.x)), vec3<u32>(global0.b.c.x, 60335u, 12271u))), global4.d, Struct_1(u_input.a.x, vec4<f32>(-514f, global4.b.x, global0.b.b.c.x, -161f), vec3<f32>(1691f, -954f, -475f), vec3<i32>(40597i, 28468i, global0.a.d.x), vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(1u, 1u)])))).a.a, global0.b.b.d.x, abs(~u_input.a.x)) | vec3<i32>(u_input.a.x, -42465i ^ global4.a, global0.a.d.x), global0.b.a);
    var var_3 = Struct_5(_wgslsmith_clamp_u32(global3.x, _wgslsmith_div_u32(25880u, var_2.b.b.c.x ^ var_2.b.b.c.x) | _wgslsmith_mult_u32(var_0.x, 20492u), func_5(vec2<u32>(global0.b.c.x & 4294967295u, 4294967295u), func_6(Struct_3(Struct_1(-2147483647i, global4.b, vec3<f32>(1359f, 149f, 2279f), vec3<i32>(0i, global4.a, var_2.c.x), vec4<bool>(global4.e.x, false, var_2.b.b.a.e.x, global4.e.x)), global0.b)).b, var_2.b, var_2.b.b.c.x).b.c.x), true, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, _wgslsmith_div_f32(-1000f, -182f), _wgslsmith_f_op_f32(-var_2.d.b.x)))).b.a.c.x);
    var_3 = Struct_5(var_2.b.b.c.x, true, _wgslsmith_div_f32(292f, global4.c.x));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(global4.c.x + -818f), _wgslsmith_f_op_f32(f32(-1f) * -1394f), _wgslsmith_f_op_f32(-696f * global4.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1446f + func_6(func_6(var_2.b)).a.c.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x * _wgslsmith_f_op_f32(-var_2.d.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.c.x, 292f) * _wgslsmith_f_op_f32(max(global4.c.x, global4.b.x))))));
    let var_5 = func_4(vec2<bool>(all(vec3<bool>(func_1(vec2<u32>(46585u, 11075u), 17357u).e.x, func_4(vec2<bool>(true, false), global2[_wgslsmith_index_u32(0u, 1u)], global0.b.a.c, Struct_4(vec3<f32>(933f, var_3.c, 534f), Struct_3(Struct_1(0i, vec4<f32>(var_4.x, 1471f, var_3.c, var_2.b.b.a.b.x), vec3<f32>(-1060f, -1356f, 1859f), vec3<i32>(global0.b.a.a, u_input.a.x, 3511i), vec4<bool>(true, false, var_2.b.b.b.e.x, false)), var_2.b.b), global0.b.a.d, global0.b.b)).a.e.x, any(global0.b.b.e.ww))), global2[_wgslsmith_index_u32(global0.b.c.x, 1u)]), global2[_wgslsmith_index_u32(max(~35221u | ~global0.b.c.x, func_6(func_5(vec2<u32>(global0.b.c.x, var_3.a), var_2.b.b, var_2.b, 4294967295u)).b.c.x >> (abs(1u) % 32u)), 1u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.c * vec3<f32>(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(-var_2.b.b.a.c.x), -314f)) + var_2.a), Struct_4(var_4.yzz, func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.b.x, -271f, -1054f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(246f, 381f, var_3.c)))))), global0.a.d, func_4(!func_5(global0.b.c.zy, var_2.b.b, var_2.b, 21480u).a.e.wy, var_2.b.a.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-154f, global0.a.c.x, -404f), vec3<f32>(var_3.c, 2303f, 393f))) + vec3<f32>(-179f, 911f, var_4.x)), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-424f, -890f, var_3.c)), var_2.b, vec3<i32>(2147483647i, global4.a, var_2.b.a.a), func_6(var_2.b).b.a)).b.b));
    let x = u_input.a;
    s_output = StorageBuffer(-10982i, ~vec3<u32>(55271u, var_2.b.b.c.x, _wgslsmith_mult_u32(u_input.c, 4294967295u)), vec3<i32>(7101i, _wgslsmith_add_i32(1i, 1i), u_input.a.x) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, var_5.b.c.x), ~vec3<u32>(var_3.a, 47075u, var_5.b.c.x) << (var_2.b.b.c % vec3<u32>(32u))) % vec3<u32>(32u)));
}

