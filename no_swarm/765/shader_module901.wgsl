struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: i32 = -27405i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<f32> {
    global1 = _wgslsmith_mod_i32(firstTrailingBit(1i), ~(-abs(u_input.d)));
    var var_0 = global0[_wgslsmith_index_u32(39504u, 30u)];
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_1 = var_0.c;
    return vec2<f32>(-725f, -731f);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(373f, arg_2) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-840f, 1000f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1999f, 1210f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-595f, -676f))))), _wgslsmith_f_op_vec2_f32(func_3()))));
    global0 = array<Struct_2, 30>();
    var var_1 = select(vec2<u32>(0u, 1u), vec2<u32>(0u, _wgslsmith_add_u32(countOneBits(u_input.b), 0u) | u_input.e), arg_1.wy);
    let var_2 = global0[_wgslsmith_index_u32(43436u, 30u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_2.b.b);
    return true;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = array<Struct_2, 30>();
    var var_0 = select(!select(!(!vec3<bool>(arg_2.b.c, false, arg_1.c)), !vec3<bool>(arg_2.c.c, false, true), !all(vec3<bool>(false, arg_1.c, arg_2.c.c))), vec3<bool>(true, all(vec2<bool>(any(vec2<bool>(arg_2.b.c, arg_2.c.c)), arg_1.c)), arg_2.c.c), select(vec3<bool>(arg_2.a.c, arg_1.c, arg_2.b.c), vec3<bool>(!(!arg_2.b.c), true, !(arg_1.a <= arg_2.c.a)), vec3<bool>(false, true, arg_2.a.c)));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(min(arg_1.a, 2147483647i), 0i, i32(-1i) * -40152i, arg_2.c.a)), vec4<i32>(13471i, arg_2.a.a, 29423i, _wgslsmith_add_i32(-9712i, ~25577i))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x - -551f), -838f), _wgslsmith_f_op_vec2_f32(arg_1.b + _wgslsmith_f_op_vec2_f32(-arg_2.b.b))))), func_2(!vec3<bool>(true, var_0.x | true, false), select(!(!vec4<bool>(var_0.x, arg_2.b.c, arg_1.c, arg_1.c)), vec4<bool>(arg_2.a.c, select(false, false, true), true, true), vec4<bool>(arg_1.b.x > -252f, all(var_0.zx), arg_2.c.d.x == 1u, any(vec3<bool>(var_0.x, arg_1.c, var_0.x)))), _wgslsmith_f_op_f32(sign(-740f))), ~arg_2.b.d);
    global1 = 1i >> (~_wgslsmith_clamp_u32(countOneBits(4294967295u), countOneBits(28080u), arg_1.d.x) % 32u);
    var var_2 = Struct_2(arg_1, Struct_1(10836i, arg_1.b, true, _wgslsmith_mod_vec4_u32(arg_2.b.d, firstLeadingBit(vec4<u32>(arg_2.c.d.x, 32204u, 1u, u_input.b)))), arg_1);
    return 1u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = !arg_0.zz;
    var var_1 = false || (1u < firstTrailingBit(2944u >> (~arg_2.c.d.x % 32u)));
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.b.x, arg_2.b.b.x)))) * 1000f), Struct_1(~(-2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-936f, arg_2.b.b.x, false)), arg_2.a.b.x)), all(select(vec2<bool>(arg_2.b.c, true), vec2<bool>(true, false), func_2(arg_0, vec4<bool>(arg_2.c.c, true, false, var_0.x), -1223f))), vec4<u32>(u_input.a ^ _wgslsmith_div_u32(u_input.b, u_input.e), ~_wgslsmith_mult_u32(1u, arg_2.a.d.x), 9776u, arg_2.c.d.x)), Struct_2(Struct_1(arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(select(-377f, -799f, false)), _wgslsmith_f_op_f32(step(-383f, arg_2.a.b.x))), !arg_2.b.c && (arg_2.a.b.x > 516f), vec4<u32>(4294967295u, min(63812u, u_input.a), u_input.b >> (u_input.a % 32u), arg_2.c.d.x ^ u_input.b)), Struct_1(countOneBits(~1i), arg_2.c.b, true, vec4<u32>(3585u, 121544u, ~56462u, u_input.b)), Struct_1(arg_2.b.a, vec2<f32>(arg_2.c.b.x, _wgslsmith_f_op_f32(max(-1363f, 2089f))), !any(vec4<bool>(var_0.x, arg_2.b.c, true, arg_2.b.c)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 41426u, arg_2.a.d.x, 68887u), vec4<u32>(1u, u_input.e, 1u, 4294967295u) << (arg_2.a.d % vec4<u32>(32u))))));
    global0 = array<Struct_2, 30>();
    let var_3 = arg_0.yx;
    return arg_2.c;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mod_vec2_i32(-vec2<i32>(-reverseBits(0i), arg_1.a), vec2<i32>(u_input.c, select(_wgslsmith_add_i32(60468i, u_input.c), select(-37706i, arg_1.a, true || arg_1.c), !select(false, arg_1.c, false))));
    var var_1 = vec4<bool>(false, false, arg_1.c, any(!(!(!vec4<bool>(false, arg_1.c, arg_1.c, false)))));
    global0 = array<Struct_2, 30>();
    var var_2 = Struct_2(Struct_1(0i, arg_1.b, any(vec2<bool>(arg_1.d.x > 1u, true)), ~(~countOneBits(vec4<u32>(arg_0.x, u_input.b, 16877u, arg_0.x)))), func_1(vec3<bool>(!(7689u < u_input.e), false, false), vec3<i32>(~0i, 0i | u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-25960i, 2147483647i, arg_1.a), firstTrailingBit(vec3<i32>(arg_1.a, u_input.d, u_input.d)))), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(2147483647i, -26438i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.b.x, 299f))), var_1.x, ~vec4<u32>(arg_0.x, 1u, arg_0.x, 63373u)), func_1(var_1.zwz, vec3<i32>(1i, 1i, 1i), Struct_2(Struct_1(arg_1.a, arg_1.b, true, arg_1.d), arg_1, arg_1)), func_1(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), var_1.zxy), min(vec3<i32>(arg_1.a, u_input.d, 6716i), vec3<i32>(-22814i, var_0.x, -23954i)), Struct_2(Struct_1(arg_1.a, vec2<f32>(arg_1.b.x, 207f), var_1.x, vec4<u32>(4294967295u, 0u, arg_0.x, 107136u)), Struct_1(-2147483647i, arg_1.b, false, vec4<u32>(4294967295u, 59235u, 0u, 1u)), arg_1)))), Struct_1(-var_0.x & abs(u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(128f, arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x))), u_input.b <= arg_1.d.x, arg_1.d));
    var var_3 = ~countOneBits(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(55387i, arg_1.a), firstLeadingBit(vec2<i32>(var_0.x, -31944i))), ~(-vec2<i32>(var_0.x, -11796i))));
    return ~var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, -1385f) - vec2<f32>(1477f, 1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(354f, 1129f), vec2<f32>(324f, -1235f), false)), all(vec3<bool>(true, true, false))))))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(func_5(~vec3<u32>(10236u, u_input.e, u_input.a) & vec3<u32>(u_input.a, u_input.e, u_input.b), func_1(vec3<bool>(true, true, false), _wgslsmith_div_vec3_i32(vec3<i32>(56707i, u_input.d, u_input.c), vec3<i32>(-6716i, 0i, 1i)), global0[_wgslsmith_index_u32(39029u, 30u)])), -1i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-802f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1581f), var_0.x)))), false, ~firstLeadingBit(~(~vec4<u32>(60787u, u_input.b, 37258u, u_input.e))));
    global1 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(countOneBits(u_input.c), 2147483647i, 0i)), min(vec3<i32>(-(~1i), ~(-9848i), -1i), vec3<i32>(-2147483647i, u_input.d, u_input.c << (u_input.a % 32u))));
    let var_2 = vec4<i32>(~var_1.a, 1i, ~(-1i), reverseBits(_wgslsmith_mod_i32(1i, u_input.d) >> (6824u % 32u))) | ~(~vec4<i32>(var_1.a >> (15272u % 32u), firstTrailingBit(var_1.a), -7200i, var_1.a));
    var var_3 = Struct_1(_wgslsmith_mult_i32(0i, 0i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2028f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(632f * var_0.x), _wgslsmith_f_op_f32(min(-1604f, -1948f))))))), (true && !(true && var_1.c)) || var_1.c, _wgslsmith_mult_vec4_u32(~var_1.d, firstLeadingBit(~vec4<u32>(1u, u_input.a, 1u, 16996u))));
    var_3 = func_1(select(vec3<bool>(any(vec3<bool>(var_1.c, true, true)), var_0.x != var_1.b.x, true), vec3<bool>(func_2(vec3<bool>(var_3.c, var_3.c, true), select(vec4<bool>(var_3.c, var_1.c, false, var_3.c), vec4<bool>(false, true, true, var_3.c), vec4<bool>(var_3.c, var_1.c, var_1.c, true)), var_0.x), any(select(vec4<bool>(var_1.c, var_3.c, true, var_3.c), vec4<bool>(var_3.c, false, var_3.c, false), vec4<bool>(false, var_1.c, var_1.c, true))), (false || var_3.c) && var_1.c), var_1.c), -var_2.xyy, global0[_wgslsmith_index_u32(var_3.d.x, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, var_1.b.x))))), -437f, var_2);
}

