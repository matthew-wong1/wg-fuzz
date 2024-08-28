struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: u32,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = true;

var<private> global2: Struct_4 = Struct_4(true, Struct_3(true, vec2<bool>(true, false), -672f), 17947u, vec3<i32>(-1i, -1i, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> f32 {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2, 0u), ~(~vec2<u32>(arg_2, 1u))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 34435u), vec2<u32>(19567u, 0u)), _wgslsmith_clamp_u32(7703u, arg_2, 35013u)), global2.c), vec2<u32>(firstTrailingBit(arg_2), global2.c) ^ firstTrailingBit(abs(vec2<u32>(arg_2, 4294967295u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * global2.b.c)), global2.b.c)), vec3<bool>(all(!vec3<bool>(true, arg_0.a, arg_1.a)), !arg_1.a, any(!select(arg_0.b, vec2<bool>(true, false), arg_0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -1000f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, arg_0.c) * vec2<f32>(-818f, global2.b.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.c, 127f)))))), select(select(!select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(true, true, global2.b.a), true), !vec3<bool>(arg_0.b.x, arg_1.a, global2.b.a), vec3<bool>(false, true, any(vec4<bool>(false, true, global2.a, true)))), vec3<bool>(select(global2.a, arg_1.b.x, all(arg_1.b)), all(select(vec3<bool>(false, global2.a, true), vec3<bool>(true, true, false), false)), !(2147483647i < global2.d.x)), arg_1.a), arg_2 != reverseBits(69010u));
    let var_2 = true;
    let var_3 = select(select(vec2<bool>(arg_0.b.x, arg_1.a), !select(vec2<bool>(false, global2.a), select(global2.b.b, vec2<bool>(false, var_2), arg_1.b), false), true), !arg_0.b, vec2<bool>(var_2, _wgslsmith_mult_i32(47447i, _wgslsmith_add_i32(global2.d.x, 91520i)) <= u_input.a));
    let var_4 = !var_1.e;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.a)))))), 1815f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_2(global2.b.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !(!(!vec3<bool>(global2.a, global2.a, global2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.c, arg_0)), vec2<f32>(global2.b.c, arg_0))), !vec3<bool>(true, any(vec4<bool>(true, global2.b.b.x, global2.a, true)), true & global2.b.b.x), 1u <= arg_3.x), _wgslsmith_add_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_3.x, 46254u, arg_3.x), vec4<u32>(arg_3.x, arg_3.x, global2.c, arg_3.x)), vec4<u32>(15773u, global2.c, 0u, 1u), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(global2.c, global2.c, global2.c, 0u) | vec4<u32>(arg_3.x, global2.c, 1u, global2.c)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 0u), vec4<u32>(47631u, 4294967295u, arg_3.x, arg_3.x)), ~(vec4<u32>(global2.c, 1u, global2.c, 29927u) << (vec4<u32>(global2.c, arg_3.x, 1u, global2.c) % vec4<u32>(32u))))));
    var var_1 = -1116f;
    global0 = ~(-vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 2147483647i, 2147483647i), global2.d) ^ (global2.d.x ^ -555i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(408f, 673f, -1412f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1768f, 159f, 1479f))))))) + vec3<f32>(_wgslsmith_f_op_f32(arg_2 * global2.b.c), -1000f, global2.b.c));
    let var_3 = global2.c;
    return 4294967295u;
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> f32 {
    let var_0 = vec3<u32>(~1u, func_4(_wgslsmith_f_op_f32(func_3(Struct_3(global2.a, select(vec2<bool>(false, true), arg_0.d.b.b, global2.b.b), 771f), Struct_3(true, !arg_0.d.b.b, _wgslsmith_f_op_f32(-arg_0.d.b.c)), 36197u)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2.d.x, -15339i), ~vec3<i32>(global0.x, -5550i, -2619i)), 51959i), global2.b.c, abs(countOneBits(vec3<u32>(arg_1, arg_1, arg_0.d.c))) << (abs(~vec3<u32>(4092u, global2.c, global2.c)) % vec3<u32>(32u))), ~_wgslsmith_sub_u32(max(~11134u, 11113u), ~global2.c));
    global1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c) + _wgslsmith_f_op_f32(f32(-1f) * -522f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-960f)))) > -465f);
    var var_1 = Struct_2(vec2<bool>(!select(!arg_0.a, true, global2.b.b.x), !all(!vec2<bool>(arg_0.d.b.a, global2.a))), Struct_1(_wgslsmith_f_op_f32(1022f - _wgslsmith_f_op_f32(-583f + arg_0.d.b.c)), vec3<bool>(false, any(global2.b.b), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.c, global2.b.c), vec2<f32>(arg_0.b.c, 1178f), vec2<bool>(false, false)))), select(vec3<bool>(true && arg_0.b.a, arg_0.c < 1u, global2.a), !(!vec3<bool>(true, global2.b.b.x, arg_0.a)), global2.a), arg_0.b.b.x), ~vec4<u32>(global2.c, _wgslsmith_add_u32(arg_0.d.c, global2.c), ~_wgslsmith_add_u32(14420u, 0u), _wgslsmith_add_u32(1u, var_0.x)));
    let var_2 = Struct_4(arg_0.b.a, Struct_3(arg_0.d.b.b.x, vec2<bool>(false, var_1.b.b.x), _wgslsmith_f_op_f32(max(global2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(185f * arg_0.b.c))))), ~1u, vec3<i32>(arg_0.e, -2147483647i, arg_0.e));
    var_1 = Struct_2(var_2.b.b, var_1.b, ~var_1.c);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(101f, _wgslsmith_div_f32(var_1.b.a, global2.b.c))) + _wgslsmith_f_op_f32(func_3(Struct_3(true, arg_0.d.b.b, -1145f), Struct_3(var_2.b.b.x, var_1.b.b.xx, var_1.b.a), max(arg_1, 12612u)))), _wgslsmith_f_op_f32(f32(-1f) * -1411f)) - arg_0.b.c);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_5(false, global2.b, global2.c, Struct_4(false, Struct_3(true, arg_0.b.b, arg_1.b.a), 614u, arg_0.d), global2.d.x), 1u)), _wgslsmith_f_op_f32(arg_1.b.c.x + arg_0.b.c), _wgslsmith_f_op_f32(-global2.b.c), arg_0.b.c))));
    var var_1 = any(vec2<bool>((1u > (arg_0.c >> (global2.c % 32u))) != true, !all(select(vec2<bool>(false, global2.b.a), global2.b.b, global2.b.a))));
    let var_2 = 0u;
    global1 = !global2.b.b.x;
    global1 = global2.a;
    return vec2<bool>(global2.b.b.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(true, Struct_3(!global2.b.a, select(vec2<bool>(true, true && global2.a), select(func_1(Struct_4(global2.a, global2.b, global2.c, vec3<i32>(-2147483647i, -28303i, 24207i)), Struct_2(vec2<bool>(false, true), Struct_1(2889f, vec3<bool>(true, global2.b.b.x, global2.b.b.x), vec2<f32>(global2.b.c, global2.b.c), vec3<bool>(false, global2.b.a, true), true), vec4<u32>(global2.c, 97787u, 10630u, 7832u))), !vec2<bool>(global2.a, global2.b.b.x), func_1(Struct_4(false, global2.b, global2.c, vec3<i32>(global2.d.x, 0i, u_input.a)), Struct_2(global2.b.b, Struct_1(396f, vec3<bool>(global2.a, false, global2.a), vec2<f32>(global2.b.c, -1065f), vec3<bool>(global2.b.b.x, global2.a, global2.b.b.x), true), vec4<u32>(450u, 0u, 4294967295u, global2.c)))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b.c)) + _wgslsmith_f_op_f32(-global2.b.c))), firstLeadingBit(global2.c), _wgslsmith_add_vec3_i32((countOneBits(vec3<i32>(22579i, global2.d.x, global2.d.x)) & -global2.d) & max(global2.d, global2.d & vec3<i32>(u_input.a, global2.d.x, 38204i)), global2.d));
    let var_0 = -1i;
    global2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.c, _wgslsmith_f_op_f32(-global2.b.c))) < _wgslsmith_f_op_f32(f32(-1f) * -282f), Struct_3(((global2.b.a || false) & false) | any(vec4<bool>(global2.b.b.x, global2.a, false, true)), !global2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1760f - global2.b.c) - global2.b.c))), abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(global2.c << (global2.c % 32u), global2.c), 36926u)), -abs(vec3<i32>(firstTrailingBit(36619i), _wgslsmith_dot_vec4_i32(vec4<i32>(2016i, u_input.a, global0.x, -2147483647i), vec4<i32>(global0.x, var_0, global2.d.x, -1i)), -46739i)));
    global1 = _wgslsmith_f_op_f32(global2.b.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b.c))), -850f)) > global2.b.c;
    var var_1 = global2.d.xy & vec2<i32>(3187i, global0.x & -41489i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.b.c, -901f))));
}

