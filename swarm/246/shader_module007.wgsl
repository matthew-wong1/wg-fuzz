struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 20044i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(0u & ~u_input.a) >= ~(~0u ^ u_input.a);
    let var_1 = global0.x;
    let var_2 = !all(vec3<bool>(false != var_0, true, var_0));
    var var_3 = u_input.a;
    let var_4 = u_input.a;
    return Struct_1(~var_4, abs(abs((vec4<u32>(var_4, var_4, 35648u, var_4) >> (vec4<u32>(u_input.a, 48990u, 59028u, 0u) % vec4<u32>(32u))) << (~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_2(countOneBits(reverseBits(vec3<i32>(u_input.b, _wgslsmith_mult_i32(1i, -1i), u_input.b))), -u_input.b, arg_0, arg_0.b.yxy, true);
    let var_1 = func_2();
    var_0 = Struct_2(-var_0.a, u_input.b, arg_0, abs(~vec3<u32>(arg_2.x, 17089u, 38764u) & _wgslsmith_mod_vec3_u32(select(var_0.c.b.xyw, var_1.b.zzy, true), vec3<u32>(arg_0.a, arg_0.a, var_1.a))), var_0.e);
    var_0 = Struct_2(-_wgslsmith_mult_vec3_i32(vec3<i32>(-var_0.a.x, 6374i, _wgslsmith_sub_i32(35536i, 2147483647i)), min(vec3<i32>(var_0.b, global1.x, -3942i), ~var_0.a)), global1.x, func_2(), var_0.d, false);
    var var_2 = var_0.a;
    return ~(var_0.c.b >> (var_0.c.b % vec4<u32>(32u))) >> (vec4<u32>(u_input.a, arg_2.x, arg_0.b.x, countOneBits(var_1.a)) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(498f - 387f), _wgslsmith_f_op_f32(f32(-1f) * -671f), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1596f, 537f)))))))));
    let var_1 = global0.xy;
    var var_2 = arg_2;
    global1 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(1i), var_2.b ^ arg_1.a.x), max(vec2<i32>(2147483647i, arg_0.b), _wgslsmith_add_vec2_i32(arg_0.a.yy, vec2<i32>(1i, global1.x)))), vec2<i32>(arg_1.a.x, -37186i)), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, 1i), arg_0.b, var_2.b), _wgslsmith_dot_vec3_i32(var_2.a, -var_2.a)), 2147483647i), u_input.b);
    var var_3 = Struct_2(~vec3<i32>(~(-1i), max(1i, 36181i), ~(-1i)) ^ arg_1.a, _wgslsmith_dot_vec3_i32(-(~max(arg_1.a, var_2.a)), reverseBits(reverseBits(arg_1.a))), func_2(), arg_1.d & func_3(arg_1.c, _wgslsmith_f_op_f32(ceil(-489f)), arg_0.c.b.zx, vec2<u32>(arg_1.c.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, 19635u, u_input.a), vec3<u32>(arg_2.d.x, var_2.d.x, 1u)))).zyy, true);
    return -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, ~var_2.b, var_2.b), ~abs(arg_1.a));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global1 = func_4(Struct_2(-(vec3<i32>(-2147483647i, global1.x, 0i) << (min(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), 2147483647i, Struct_1(~u_input.a | 13394u, ~(vec4<u32>(u_input.a, 23076u, 4294967295u, u_input.a) >> (vec4<u32>(31769u, 1u, u_input.a, 1u) % vec4<u32>(32u)))), abs(~(~vec3<u32>(u_input.a, u_input.a, 31154u))), true), Struct_2(vec3<i32>(~(-17520i), 2147483647i, ~global1.x) | -vec3<i32>(-44184i, arg_0, 1i), abs(5368i), Struct_1(countOneBits(u_input.a ^ u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 125360u), min(vec4<u32>(5256u, 1u, 15524u, 4294967295u), vec4<u32>(22886u, 44369u, 1u, u_input.a)))), abs(select(reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, 60981u) | vec3<u32>(4294967295u, u_input.a, 55599u), !global0.x)), all(select(global0.xx, !vec2<bool>(global0.x, global0.x), global0.x | false))), Struct_2(-(vec3<i32>(global1.x, u_input.b, u_input.b) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 43464u, u_input.a), vec3<u32>(1u, 52517u, u_input.a)) % vec3<u32>(32u))), firstLeadingBit(-36805i), Struct_1(reverseBits(u_input.a), func_3(func_2(), 1f, _wgslsmith_sub_vec2_u32(vec2<u32>(31774u, u_input.a), vec2<u32>(u_input.a, 23586u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 62989u)))), vec3<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 92151u), u_input.a), func_3(Struct_1(4294967295u, vec4<u32>(1u, u_input.a, 0u, 96145u)), 1272f, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 11564u), vec2<u32>(86580u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(55676u, u_input.a), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u))).x), global0.x));
    var var_0 = -52800i;
    global1 = vec3<i32>(arg_0, arg_0, u_input.b);
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(u_input.a, 1u))), vec2<u32>(~_wgslsmith_sub_u32(8063u, u_input.a), 37068u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(34726u, u_input.a, 4294967295u)), _wgslsmith_clamp_u32(u_input.a << (u_input.a % 32u), u_input.a, u_input.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(45497u, u_input.a), vec2<u32>(u_input.a, u_input.a))));
    var var_2 = global0.x;
    return Struct_2(_wgslsmith_mod_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -57983i, 21411i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, arg_0, arg_0), vec3<i32>(11600i, 11451i, global1.x))), u_input.b, func_2(), ~min(abs(vec3<u32>(11637u, 65316u, u_input.a)), ~(~vec3<u32>(var_1.x, var_1.x, 4294967295u))), all(select(vec4<bool>(true, false, global0.x | global0.x, true), vec4<bool>(true, global0.x, !global0.x, true), vec4<bool>(global0.x, any(vec3<bool>(true, global0.x, false)), !global0.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.wx;
    let var_1 = _wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b, 2147483647i), min(43032i, u_input.b)), _wgslsmith_mult_vec2_i32(reverseBits(global1.zy), max(vec2<i32>(-1i, global1.x), global1.zz))), abs(vec2<i32>(1i, _wgslsmith_mod_i32(43269i, 5882i))) ^ abs(vec2<i32>(-1i, u_input.b)));
    let var_2 = func_1(u_input.b);
    var_0 = vec2<bool>(false, true);
    var var_3 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(func_4(Struct_2(vec3<i32>(-1i, -12199i, var_1.x), var_1.x, func_1(u_input.b).c, ~var_2.d, u_input.a >= 51745u), var_2, func_1(-1i)).x, global1.x), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1634f), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2226f, 318f) + -628f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1447f, -674f, 3071f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -547f, -1134f), vec3<f32>(-935f, 366f, -139f), global0.yzz)), global0.yyw)))), _wgslsmith_mod_vec2_u32(var_2.c.b.ww, abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_2.d.zz, var_2.d.zz), vec2<u32>(67373u, 28578u), countOneBits(var_2.d.xz)))), vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.b, var_2.b, var_2.a.x, -2147483647i) << (vec4<u32>(4294967295u, 4294967295u, var_2.c.a, u_input.a) % vec4<u32>(32u)), min(vec4<i32>(46986i, 3070i, 1i, 36501i), vec4<i32>(-40865i, var_1.x, -780i, 1i)), func_1(0i).e), ~(-vec4<i32>(var_1.x, 0i, var_2.a.x, 1i))), global1.x, -func_4(var_2, func_1(u_input.b), func_1(22083i)).x, u_input.b));
}

