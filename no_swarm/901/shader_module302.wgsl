struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(109i, 1i, i32(-2147483648));

var<private> global1: vec4<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    global1 = select(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(global1.x, arg_0, arg_0, !all(vec2<bool>(true, arg_0))), select(vec4<bool>(false, global1.x, all(global1.wy), u_input.c < u_input.c), select(!vec4<bool>(arg_0, true, global1.x, global1.x), vec4<bool>(false, arg_0, false, true), all(vec2<bool>(global1.x, global1.x))), !(!vec4<bool>(arg_0, false, global1.x, true)))), !(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, true, false, true)), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(false, global1.x, global1.x, global1.x))), vec4<bool>((any(vec4<bool>(global1.x, arg_0, global1.x, false)) & true) | true, arg_0, true, false));
    var var_0 = global1.wwy;
    var_0 = select(global1.xxx, global1.ywx, select(!(!vec3<bool>(false, var_0.x, arg_0)), global1.yxw, global1.wxx));
    var var_1 = Struct_1(u_input.d.yz, reverseBits(_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.d.x, 33567u, 40348u, u_input.c), vec4<u32>(u_input.c, u_input.a, 39000u, u_input.d.x)), vec4<u32>(select(0u, u_input.a, false), min(u_input.d.x, 37392u), 17930u, ~u_input.a))));
    var var_2 = !select(vec4<bool>(!any(var_0.xy), !(arg_0 | global1.x), true, any(select(vec3<bool>(false, false, false), global1.zwz, vec3<bool>(true, false, arg_0)))), !(!vec4<bool>(var_0.x, true, false, arg_0)), any(vec4<bool>(var_0.x, arg_0, arg_0, false)) && any(select(vec3<bool>(global1.x, arg_0, arg_0), global1.xzz, arg_0)));
    return ~select(vec3<u32>(44968u, _wgslsmith_div_u32(13795u, var_1.a.x) >> (70958u % 32u), reverseBits(countOneBits(u_input.a))), u_input.d, vec3<bool>(all(vec4<bool>(var_0.x, var_0.x, true, true)), false, all(!vec3<bool>(global1.x, var_0.x, false))));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec2<u32> {
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>((i32(-1i) * -46944i) | u_input.b, -28846i, ~arg_0.a.c.x) << (_wgslsmith_clamp_vec3_u32(func_3(global1.x), vec3<u32>(reverseBits(27429u), ~u_input.d.x, arg_0.a.a.b.x), arg_0.b.a.b.zyz) % vec3<u32>(32u)), abs(arg_0.a.c.xxw));
    global0 = ~max(abs(_wgslsmith_mod_vec3_i32(arg_0.b.c.zxz, arg_0.b.c.yyy)), max(_wgslsmith_add_vec3_i32(arg_0.b.c.wxx, arg_0.b.c.yzz), min(vec3<i32>(-2147483647i, -24846i, -2147483647i), arg_0.b.c.wwz))) >> (_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), vec2<u32>(50551u, 4294967295u)), func_3(true).x)), vec3<u32>(max(1u, arg_1.x), 17286u, max(~arg_1.x, _wgslsmith_add_u32(12049u, arg_1.x)))) % vec3<u32>(32u));
    global1 = !(!select(select(!vec4<bool>(true, false, global1.x, true), vec4<bool>(false, global1.x, false, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), select(select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(false, true, false, global1.x)), vec4<bool>(false, global1.x, true, global1.x), select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, true, global1.x, true))), !(!vec4<bool>(global1.x, false, global1.x, false))));
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_1.x, 1u), vec3<u32>(0u, 4294967295u, u_input.a)), ~5747u), 870u), arg_0.b.a.b);
    global1 = vec4<bool>(arg_0.a.a.a.x == ~(~abs(4294967295u)), true, global1.x, global1.x);
    return _wgslsmith_add_vec2_u32(arg_0.a.b.b.zx, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(28747u, select(arg_0.a.b.a.x, arg_0.a.b.b.x, global1.x)), vec2<u32>(select(26970u, u_input.a, global1.x), abs(62892u))), vec2<u32>(~arg_0.a.b.a.x, _wgslsmith_dot_vec2_u32(var_0.a, ~vec2<u32>(1u, 51468u)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_3(vec4<u32>(_wgslsmith_mod_u32(~(~18057u), _wgslsmith_mult_u32(8336u, u_input.a) | 1u), abs(27429u), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_add_u32(34594u, u_input.d.x)), _wgslsmith_add_u32(u_input.c, 0u)), vec2<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(1i, global0.x, global0.x, u_input.b)), select(vec4<i32>(u_input.b, 2147483647i, global0.x, u_input.b), select(vec4<i32>(global0.x, 8352i, 1i, -2147483647i), vec4<i32>(u_input.b, global0.x, -1i, -1i), vec4<bool>(true, false, false, global1.x)), select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, true, arg_0, true), vec4<bool>(false, global1.x, false, false)))), u_input.b), reverseBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(19714u, 1u, 33916u, 4294967295u), vec4<u32>(u_input.d.x, 1u, u_input.c, u_input.c), vec4<u32>(0u, u_input.d.x, 0u, 63535u)))), Struct_2(Struct_1(u_input.d.yy, ~vec4<u32>(u_input.d.x, u_input.a, 4294967295u, 4294967295u)), Struct_1(~func_2(Struct_4(Struct_2(Struct_1(u_input.d.zx, vec4<u32>(u_input.c, u_input.d.x, u_input.a, 40484u)), Struct_1(vec2<u32>(u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.a, 0u, 1u)), vec4<i32>(2147483647i, 1i, 0i, u_input.b)), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<u32>(59458u, u_input.d.x, 0u, u_input.c)), Struct_1(vec2<u32>(1874u, u_input.a), vec4<u32>(u_input.c, 49655u, u_input.c, 1u)), vec4<i32>(2147483647i, global0.x, global0.x, -81427i))), vec2<u32>(1u, 4294967295u), vec3<f32>(-1032f, 728f, 375f)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 21518u, u_input.d.x, 70188u), vec4<u32>(0u, u_input.a, 1u, 18780u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.a), vec4<u32>(u_input.d.x, 4294967295u, 18802u, u_input.a)), vec4<u32>(51010u, 0u, u_input.d.x, u_input.a) | vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x))), _wgslsmith_div_vec4_i32(-vec4<i32>(-1i, -11999i, 2147483647i, -1i) << (vec4<u32>(u_input.c, u_input.c, u_input.a, 14244u) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.b, -33872i, u_input.b, global0.x)))));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-610f + -530f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1042f + 383f), _wgslsmith_div_f32(-515f, 1365f)), -1310f, global1.x)))));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, -873f, -806f, var_2.x)))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1873f))), var_2.x, _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(sign(-168f))))))));
    return var_3.d.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = global1.x;
    var var_1 = Struct_3(vec4<u32>(4294967295u, abs(4294967295u), ~1u, 13056u >> (arg_1.b.x % 32u)), global0.yz, _wgslsmith_mod_vec4_u32(arg_1.b, vec4<u32>(_wgslsmith_mod_u32(~1u, 2512u), arg_1.b.x, abs(func_1(global1.x).a.x), u_input.d.x)), Struct_2(Struct_1(arg_1.a & _wgslsmith_sub_vec2_u32(arg_1.a, arg_1.b.xw), arg_1.b), Struct_1(~u_input.d.xx, func_1(true).b), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.x, 2147483647i, -2147483647i), vec3<i32>(global0.x, 1i, global0.x), true), _wgslsmith_clamp_vec3_i32(vec3<i32>(-29305i, u_input.b, u_input.b), vec3<i32>(-1i, -22364i, -26112i), vec3<i32>(1i, global0.x, -71368i))), global0.x, ~u_input.b)));
    let var_2 = 453f;
    let var_3 = Struct_1(vec2<u32>(var_1.d.b.a.x, min(1u, var_1.a.x)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.xy, abs(var_1.d.a.a)), ~(~vec2<u32>(var_1.a.x, 0u))) % vec2<u32>(32u)), var_1.d.a.b);
    var var_4 = vec3<bool>(global1.x, any(select(global1.zz, select(!global1.zx, global1.zw, all(global1.yx)), select(vec2<bool>(false, true), global1.wx, global1.zy))), true);
    return _wgslsmith_sub_u32(~0u, ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec4<u32>(u_input.d.x & ~10794u, 4294967295u, min(1u, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-515f, -1210f)), func_1(global1.x))), 4294967295u));
    var var_1 = Struct_3(vec4<u32>(_wgslsmith_mult_u32(abs(1u), var_0.x), countOneBits(min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 35320u, 14029u, u_input.a), var_0), var_0.x)), u_input.a, 29046u), global0.zz, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, ~var_0.x, func_2(Struct_4(Struct_2(Struct_1(var_0.xy, var_0), Struct_1(vec2<u32>(var_0.x, var_0.x), vec4<u32>(u_input.a, 67026u, u_input.c, u_input.a)), vec4<i32>(u_input.b, global0.x, u_input.b, -28380i)), Struct_2(Struct_1(var_0.zw, var_0), Struct_1(vec2<u32>(16536u, 0u), vec4<u32>(u_input.a, u_input.c, var_0.x, var_0.x)), vec4<i32>(global0.x, -23043i, 1839i, 25753i))), u_input.d.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1279f, 320f, 1000f))).x, ~u_input.a << (~u_input.a % 32u)), vec4<u32>(_wgslsmith_mod_u32(u_input.c, ~4294967295u), ~u_input.c, 54540u, func_3(global1.x).x)), Struct_2(Struct_1(vec2<u32>(13798u ^ u_input.a, ~1u), vec4<u32>(abs(u_input.a), firstTrailingBit(1u), 128627u, 1u)), Struct_1(countOneBits(~vec2<u32>(var_0.x, 1u)), ~var_0), ~vec4<i32>(global0.x | -1i, _wgslsmith_div_i32(0i, u_input.b), i32(-1i) * -2147483647i, ~39374i)));
    var_1 = Struct_3(max(vec4<u32>(4294967295u, func_3(global1.x).x, firstTrailingBit(var_1.c.x) ^ abs(4294967295u), _wgslsmith_add_u32(33501u, 1u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, var_1.c.x, var_1.d.b.a.x), vec4<u32>(39633u, 1u, u_input.a, var_0.x)) % 32u)), select(firstLeadingBit(vec4<u32>(1u, var_1.a.x, 0u, var_0.x)), vec4<u32>(19462u, 4294967295u, u_input.d.x, ~4294967295u), true)), _wgslsmith_div_vec2_i32(var_1.b, var_1.d.c.zx ^ abs(vec2<i32>(var_1.d.c.x, var_1.b.x))), vec4<u32>(~1u, 1u, 22988u & _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, 59688u), var_1.d.a.b.wyx), ~vec3<u32>(var_0.x, var_0.x, var_0.x)), firstLeadingBit(~1u)), var_1.d);
    let var_2 = u_input.a;
    let var_3 = vec3<bool>(global1.x, false, global1.x & any(!select(global1.zyx, global1.yxy, vec3<bool>(global1.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(16586i, _wgslsmith_mod_i32(-_wgslsmith_sub_i32(var_1.b.x, u_input.b), -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(446f, 1706f, -2150f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-877f, -237f, 464f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, -860f, 678f) - vec3<f32>(161f, -535f, -133f)) - vec3<f32>(1529f, 824f, -865f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-242f, 173f, 420f) + vec3<f32>(2560f, 1430f, 820f)), vec3<f32>(1000f, -808f, 575f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(712f, -505f, 1447f, 440f), vec4<f32>(769f, -963f, -581f, -840f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1858f, -226f, 234f, 2105f) - vec4<f32>(936f, 1000f, -1443f, 1000f)), var_3.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-196f, 370f, 147f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, 1000f, 188f)) * vec3<f32>(2293f, -841f, 573f))))));
}

