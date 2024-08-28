struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-436f, -666f, -544f), vec3<f32>(827f, 1271f, -329f), vec3<f32>(226f, 116f, 1130f), vec3<f32>(-868f, 1227f, -278f), vec3<f32>(578f, -419f, 1000f), vec3<f32>(-204f, -249f, -238f), vec3<f32>(440f, -3193f, 231f), vec3<f32>(-787f, 229f, -713f), vec3<f32>(1971f, -731f, -238f), vec3<f32>(-1005f, -131f, -132f), vec3<f32>(-976f, -999f, 369f), vec3<f32>(-464f, 468f, -398f), vec3<f32>(1000f, 1000f, -1675f), vec3<f32>(1238f, 501f, -1678f), vec3<f32>(561f, -222f, 1000f), vec3<f32>(-819f, 371f, 1746f), vec3<f32>(1000f, 131f, -585f), vec3<f32>(270f, 345f, 1567f));

var<private> global1: bool = false;

var<private> global2: i32 = 1i;

var<private> global3: array<f32, 30>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u ^ _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(80u, 1u, 23373u)), max(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u))), 30u)]), 59258u, select(firstLeadingBit(vec2<u32>(6282u, _wgslsmith_mult_u32(20150u, 0u))), min(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 42353u), vec2<u32>(29185u, 1u)), min(vec2<u32>(23050u, 4294967295u), vec2<u32>(1u, 4294967295u)))), arg_1), global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(76339u, 13857u, 4294967295u), 0u), ~vec3<u32>(2139u, 4294967295u, 0u))), 30u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1732f * -1691f), _wgslsmith_sub_u32(var_0.b, ~_wgslsmith_mod_u32(var_0.b, _wgslsmith_dot_vec2_u32(var_0.c, vec2<u32>(var_0.b, var_0.c.x)))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(var_0.c.x, var_0.b)), max(~vec2<u32>(var_0.c.x, var_0.b), vec2<u32>(var_0.b, 4294967295u))) | ~select(vec2<u32>(0u, 1u), ~var_0.c, !vec2<bool>(arg_1, arg_1)), _wgslsmith_f_op_f32(-var_0.a));
    let var_2 = !vec4<bool>(true, false, arg_1, 1i != ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 0i, 24420i), vec4<i32>(u_input.b, 1i, u_input.a, u_input.c)));
    var var_3 = Struct_2(var_0);
    var var_4 = var_3.a;
    return vec4<u32>(1u, ~_wgslsmith_mod_u32(4294967295u, var_0.c.x), ~83826u, ~countOneBits(~7553u)) | ~vec4<u32>(var_4.b, ~42455u, _wgslsmith_add_u32(~1u, 0u), 4294967295u);
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1433f) >= _wgslsmith_div_f32(global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(59195u, 1u), vec2<u32>(48917u, 17933u)), 27771u), 30u)], _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(select(~16963u, _wgslsmith_div_u32(4294967295u, 41859u), true), 30u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33539u, 1u, 4294967295u, 1u), func_3(-1084f, false)), 30u)], true)));
    let var_1 = vec4<bool>(any(!(!(!vec3<bool>(var_0, false, false)))), all(!(!select(vec3<bool>(true, var_0, false), vec3<bool>(true, true, var_0), var_0))), var_0, true);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 30u)])));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(1374f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(422f, -958f, var_0))))), ~1u, _wgslsmith_div_vec2_u32(func_3(-683f, var_1.x).zw, vec2<u32>(26330u, ~40397u)) << (vec2<u32>(54832u, ~1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1550f)), global3[_wgslsmith_index_u32(~15186u, 30u)])));
    global1 = !any(!select(vec4<bool>(var_1.x, true, var_0, var_0), select(vec4<bool>(var_0, var_1.x, var_1.x, var_0), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(false, true, true, false)), var_1));
    return var_1.zzz;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = -407f;
    let var_1 = -(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(arg_1.a.b | 57460u, ~arg_2.b, _wgslsmith_div_u32(0u, arg_1.a.c.x)) % vec3<u32>(32u))) >> (vec3<u32>(~4294967295u, ~(~arg_1.a.b << (arg_2.c.x % 32u)), 27567u) % vec3<u32>(32u));
    global3 = array<f32, 30>();
    global0 = array<vec3<f32>, 18>();
    var var_2 = select(func_2(), !(!vec3<bool>(1i >= var_1.x, true, all(vec2<bool>(false, false)))), vec3<bool>(false, arg_0.x != abs(u_input.b ^ -12273i), false));
    return arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = func_3(1069f, !(arg_1.a.b < max(0u, ~4294967295u))).x;
    global2 = u_input.b;
    let var_1 = select(!vec4<bool>(false, ~4294967295u <= var_0, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), (arg_1.a.b == 4294967295u) == true), !select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, select(false, false, true), true)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(109f)) - 601f))), arg_1.a.a));
    global1 = true || (_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c, u_input.c), select(countOneBits(u_input.a), u_input.a ^ u_input.c, var_1.x != var_1.x)) > -2147483647i);
    return arg_1.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = select(!func_2().zz, vec2<bool>(any(vec3<bool>(any(vec4<bool>(false, true, false, true)), true, global3[_wgslsmith_index_u32(arg_1.b, 30u)] <= 673f)), true), vec2<bool>(true, true));
    var_0 = vec2<bool>(any(vec3<bool>(!var_0.x, true, any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, true, var_0.x))))), !(arg_1.c.x > ((4294967295u >> (arg_1.c.x % 32u)) >> (~arg_1.c.x % 32u))));
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~9179u, arg_1.b), arg_1.c), arg_1.c) >> (~countOneBits(vec2<u32>(_wgslsmith_mod_u32(153402u, 4294967295u), ~0u)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1.b, 30u)]))));
    var var_3 = func_1(arg_3, func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.x ^ -2147483647i, arg_3.x), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, -2147483647i, arg_3.x), arg_2.x)), Struct_2(arg_1), func_4(vec2<f32>(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(9821u, 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(func_1(vec2<i32>(arg_3.x, arg_0.x), Struct_2(arg_1), Struct_1(arg_1.d, 0u, var_1, -723f)).a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(17973u, 30u)], arg_1.d, -1000f, arg_1.a), vec4<f32>(var_2, 410f, global3[_wgslsmith_index_u32(arg_1.c.x, 30u)], 457f)))))), arg_1);
    return 2848u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.c;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(1u, 30u)])), ~(~8128u), vec2<u32>(_wgslsmith_sub_u32(6302u, 1u), 34524u), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 9545u), vec2<u32>(4294967295u, 91091u)), vec2<u32>(1u, 1u)), 30u)]));
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))));
    var var_3 = ~vec4<u32>(var_0.b & _wgslsmith_add_u32(var_0.c.x, ~61084u), func_5((vec3<i32>(u_input.b, u_input.c, 4318i) | vec3<i32>(-2147483647i, u_input.c, u_input.b)) ^ vec3<i32>(-1i, 0i, 25891i), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, 141f)), func_1(vec2<i32>(u_input.a, 38070i), Struct_2(Struct_1(-695f, 11762u, var_0.c, global3[_wgslsmith_index_u32(var_1.x, 30u)])), Struct_1(-1314f, var_1.x, var_0.c, var_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1335f, var_0.d, 205f, 1186f))), vec2<i32>(_wgslsmith_add_i32(68227i, u_input.a), u_input.b), -vec2<i32>(54171i, 0i)), _wgslsmith_mod_u32(~select(var_0.b, 4294967295u, true), 63387u), var_1.x);
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.b, 11221i)), func_1(vec2<i32>(u_input.b, -2147483647i), Struct_2(Struct_1(438f, var_0.b, vec2<u32>(1u, 0u), -962f)), Struct_1(-1000f, 50005u, var_0.c, global3[_wgslsmith_index_u32(0u, 30u)])), func_4(vec2<f32>(var_0.a, -2393f), Struct_2(Struct_1(-284f, var_1.x, vec2<u32>(var_3.x, 0u), var_0.a)), vec4<f32>(var_0.d, global3[_wgslsmith_index_u32(14892u, 30u)], var_0.a, -425f))).a.c.x, 14166u), 30u)], -1783f)));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(1459u), ~var_1.x), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(func_3(-919f, false), vec4<u32>(1u, var_3.x, var_1.x, var_3.x)), select(~vec4<u32>(0u, 31958u, var_3.x, 4294967295u), vec4<u32>(var_1.x, 71609u, 38237u, var_3.x), func_2().x), vec4<u32>(~var_3.x, 1u, _wgslsmith_div_u32(var_3.x, 1u), 4393u)), ~vec4<u32>(var_0.c.x, var_0.c.x, var_3.x, var_3.x) | select(vec4<u32>(1u, var_0.b, 39015u, var_0.b), _wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 1u, 81543u, 36588u), vec4<u32>(107869u, 37465u, 0u, var_1.x)), any(vec3<bool>(false, false, false)))), -32707i, ~countOneBits(0u), var_0.d);
}

