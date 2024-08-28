struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec3<bool> {
    global2 = Struct_1(global2.a);
    let var_0 = _wgslsmith_f_op_f32(trunc(586f));
    global1 = abs(_wgslsmith_sub_vec3_i32(firstLeadingBit(abs(countOneBits(vec3<i32>(global1.x, -28630i, 1i)))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -2147483647i, u_input.c), vec3<i32>(-22027i, 26445i, global1.x) | vec3<i32>(1i, 2147483647i, u_input.a)), abs(firstTrailingBit(vec3<i32>(global1.x, global1.x, u_input.a))))));
    var var_1 = 4294967295u;
    global1 = ~_wgslsmith_mod_vec3_i32(~firstTrailingBit(vec3<i32>(2147483647i, -1i, u_input.c) >> (vec3<u32>(u_input.b, 21503u, u_input.d) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(max(firstTrailingBit(vec3<i32>(2147483647i, 29929i, global1.x)), vec3<i32>(global1.x, -4263i, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(11537i, u_input.a, u_input.a), vec3<i32>(0i, global1.x, -39023i)) ^ (vec3<i32>(20747i, -1i, global1.x) << (vec3<u32>(u_input.e, u_input.d, 0u) % vec3<u32>(32u)))));
    return select(!select(select(vec3<bool>(global2.a, arg_0.e.b.a, true), vec3<bool>(global2.a, false, false), !vec3<bool>(false, arg_1.a, arg_1.a)), vec3<bool>(2147483647i > u_input.a, global2.a, all(vec4<bool>(true, true, true, false))), true), vec3<bool>(select(any(vec3<bool>(false, arg_1.a, arg_1.a)), true, false), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(arg_0.e.c.a, true, false))), select(select(vec3<bool>(true, global2.a, true), vec3<bool>(arg_1.a, true, false), vec3<bool>(false, global2.a, true)), !vec3<bool>(global2.a, global2.a, true), false), !(!vec3<bool>(arg_1.a, arg_0.b.e.a, arg_1.a))), select(vec3<bool>(false, true, false), !(!vec3<bool>(arg_1.a, true, false)), true)));
}

fn func_4(arg_0: vec3<bool>) -> bool {
    global0 = ~1u;
    global2 = Struct_1(select(u_input.e >= ~0u, any(select(vec2<bool>(true, global2.a), arg_0.yz, arg_0.xx)), all(!vec4<bool>(true, true, global2.a, true))) || true);
    global2 = Struct_1(u_input.b >= 58604u);
    let var_0 = Struct_1(true);
    var var_1 = 0u;
    return true;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    var var_0 = !select(select(vec4<bool>(all(vec4<bool>(true, false, global2.a, global2.a)), true, all(vec4<bool>(global2.a, global2.a, global2.a, global2.a)), true), vec4<bool>(all(vec2<bool>(global2.a, true)), true, true, false), func_4(func_3(Struct_3(Struct_2(Struct_1(true), Struct_1(false), Struct_1(true), u_input.b, Struct_1(global2.a)), Struct_2(Struct_1(global2.a), Struct_1(true), Struct_1(true), arg_1, Struct_1(global2.a)), Struct_1(global2.a), arg_2.x, Struct_2(Struct_1(false), Struct_1(global2.a), Struct_1(global2.a), 4294967295u, Struct_1(global2.a))), Struct_1(global2.a)))), !select(!vec4<bool>(false, false, false, global2.a), vec4<bool>(global2.a, global2.a, false, true), global2.a), vec4<bool>(true, global2.a, any(vec2<bool>(global2.a, global2.a)), func_4(vec3<bool>(true, true, true))));
    global2 = Struct_1(false);
    global0 = 1u;
    var var_1 = Struct_3(Struct_2(Struct_1(var_0.x), Struct_1(true == global2.a), Struct_1(global2.a), ~u_input.d, Struct_1(true)), Struct_2(Struct_1(global2.a), Struct_1(any(!vec3<bool>(true, var_0.x, true))), Struct_1(global2.a), ~arg_1, Struct_1(var_0.x)), Struct_1(!func_4(vec3<bool>(false, false, var_0.x))), -105f, Struct_2(Struct_1(false), Struct_1(!(37548i == arg_0)), Struct_1(var_0.x), reverseBits(select(~u_input.b, 1u, var_0.x & var_0.x)), Struct_1(false)));
    var_1 = Struct_3(Struct_2(var_1.a.e, var_1.b.c, var_1.c, 58745u, Struct_1(any(vec2<bool>(true, true)))), Struct_2(var_1.a.e, var_1.e.a, Struct_1(func_3(Struct_3(var_1.b, Struct_2(Struct_1(false), var_1.e.e, var_1.a.a, 1u, Struct_1(false)), Struct_1(true), 751f, Struct_2(Struct_1(true), Struct_1(false), var_1.b.b, 4459u, var_1.e.a)), Struct_1(var_0.x)).x), u_input.e, var_1.c), Struct_1(var_1.c.a), 1131f, var_1.a);
    return 0u;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    global1 = firstLeadingBit(~(~(-vec3<i32>(global1.x, u_input.c, 94424i))));
    var var_0 = Struct_3(Struct_2(arg_3.e.c, arg_3.e.c, arg_3.a.c, arg_1.x, arg_3.a.c), Struct_2(arg_3.b.e, Struct_1(true && global2.a), Struct_1(false), 1u, Struct_1(true && (53152u > u_input.e))), Struct_1(arg_3.a.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1033f * arg_3.d)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_3.d, arg_3.d)), arg_3.d)) * arg_3.d)), Struct_2(Struct_1(arg_3.b.b.a), Struct_1(!func_4(vec3<bool>(false, global2.a, true))), arg_3.c, 4294967295u, Struct_1(any(!vec4<bool>(false, global2.a, arg_3.e.a.a, arg_3.e.a.a)))));
    var var_1 = true;
    let var_2 = global2.a;
    var var_3 = arg_3.a;
    return var_3.b;
}

fn func_6(arg_0: Struct_1) -> i32 {
    var var_0 = ~(~global1.x);
    global2 = Struct_1(false);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1663f + _wgslsmith_f_op_f32(246f - -829f)), _wgslsmith_f_op_f32(f32(-1f) * -1832f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 283f), vec2<f32>(-1468f, -568f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -394f) * vec2<f32>(963f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-275f, -1628f))))));
    global1 = vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(global1.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 67526i), vec3<i32>(u_input.c, u_input.c, global1.x))), 2147483647i, min(_wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec2_i32(global1.yy, vec2<i32>(global1.x, -27389i))), firstLeadingBit(global1.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2251f, var_1.x, 931f, var_1.x)), vec4<f32>(var_1.x, 489f, -229f, 515f))))));
    return global1.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> bool {
    global1 = -(vec3<i32>(u_input.a, ~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 46588i), vec2<i32>(2147483647i, 30186i)) << (max(u_input.e, u_input.e) % 32u)) ^ reverseBits(vec3<i32>(arg_0.x, 2147483647i, _wgslsmith_mult_i32(global1.x, -14977i))));
    global1 = vec3<i32>(1i, func_6(func_5(func_2(arg_0.x, 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 536f) + vec3<f32>(arg_1.x, arg_1.x, 1881f))), vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(13450u, u_input.b)), u_input.b, min(0u, u_input.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -34981i, 30966i), vec4<i32>(1i, global1.x, global1.x, arg_2.x)) | global1.x, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(global2.a), 1u, Struct_1(global2.a)), Struct_2(Struct_1(false), Struct_1(global2.a), Struct_1(global2.a), u_input.e, Struct_1(global2.a)), Struct_1(false), _wgslsmith_f_op_f32(min(arg_1.x, -1104f)), Struct_2(Struct_1(true), Struct_1(global2.a), Struct_1(global2.a), u_input.b, Struct_1(global2.a))))), 38781i);
    global0 = _wgslsmith_dot_vec4_u32(~(min(vec4<u32>(26092u, 14781u, 3829u, 86705u) >> (vec4<u32>(37012u, u_input.b, 14190u, u_input.e) % vec4<u32>(32u)), vec4<u32>(u_input.e, u_input.d, u_input.d, 0u)) << ((vec4<u32>(u_input.d, u_input.e, 9903u, u_input.e) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.e, 73028u, 65025u), vec4<u32>(0u, u_input.b, 4294967295u, 65885u), vec4<u32>(u_input.b, u_input.e, u_input.e, u_input.d))) % vec4<u32>(32u))), select(firstLeadingBit(~(~vec4<u32>(0u, 4294967295u, u_input.d, u_input.b))), _wgslsmith_add_vec4_u32(~(vec4<u32>(7728u, u_input.e, u_input.b, 18336u) << (vec4<u32>(u_input.e, 4294967295u, u_input.b, 67764u) % vec4<u32>(32u))), ~vec4<u32>(46897u, 1u, 13509u, 19954u)), !(!vec4<bool>(false, global2.a, true, true))));
    var var_0 = 44684u;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(false, func_1(vec2<i32>(global1.x, 0i) >> (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)), vec4<f32>(-625f, -441f, -895f, -744f), vec2<i32>(u_input.c, global1.x)), global2.a && false, true)) != global2.a;
    let var_1 = select(func_3(Struct_3(Struct_2(func_5(u_input.e, vec4<u32>(30155u, 4294967295u, u_input.e, u_input.b), 1i, Struct_3(Struct_2(Struct_1(true), Struct_1(true), Struct_1(global2.a), u_input.e, Struct_1(true)), Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(false), 13921u, Struct_1(false)), Struct_1(global2.a), 769f, Struct_2(Struct_1(true), Struct_1(true), Struct_1(global2.a), 58613u, Struct_1(false)))), func_5(0u, vec4<u32>(3453u, u_input.e, 1460u, u_input.b), 34262i, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(true), u_input.b, Struct_1(global2.a)), Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(global2.a), u_input.e, Struct_1(global2.a)), Struct_1(true), 2128f, Struct_2(Struct_1(global2.a), Struct_1(true), Struct_1(false), u_input.d, Struct_1(false)))), Struct_1(true), u_input.e, Struct_1(false)), Struct_2(func_5(u_input.b, vec4<u32>(0u, 2620u, u_input.e, u_input.b), -23221i, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(global2.a), 1u, Struct_1(true)), Struct_2(Struct_1(false), Struct_1(global2.a), Struct_1(true), 5425u, Struct_1(global2.a)), Struct_1(false), -699f, Struct_2(Struct_1(false), Struct_1(global2.a), Struct_1(global2.a), u_input.e, Struct_1(global2.a)))), func_5(u_input.d, vec4<u32>(49177u, u_input.b, 1u, 45702u), u_input.c, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(true), Struct_1(true), u_input.d, Struct_1(true)), Struct_2(Struct_1(global2.a), Struct_1(true), Struct_1(global2.a), 0u, Struct_1(global2.a)), Struct_1(false), -187f, Struct_2(Struct_1(false), Struct_1(global2.a), Struct_1(true), u_input.d, Struct_1(false)))), func_5(u_input.d, vec4<u32>(0u, 1u, u_input.b, u_input.d), -43463i, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(global2.a), u_input.d, Struct_1(global2.a)), Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(true), u_input.e, Struct_1(true)), Struct_1(true), 1000f, Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(global2.a), u_input.e, Struct_1(false)))), u_input.b << (u_input.d % 32u), func_5(u_input.b, vec4<u32>(0u, u_input.e, u_input.e, 13372u), -1i, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(true), u_input.b, Struct_1(true)), Struct_2(Struct_1(true), Struct_1(global2.a), Struct_1(global2.a), 62159u, Struct_1(false)), Struct_1(true), -1296f, Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(global2.a), u_input.d, Struct_1(false))))), Struct_1(true), -148f, Struct_2(Struct_1(global2.a), Struct_1(true), Struct_1(global2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.b), vec3<u32>(1u, 0u, 4940u)), func_5(1u, vec4<u32>(40804u, 60185u, u_input.b, u_input.e), u_input.a, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(false), 43701u, Struct_1(global2.a)), Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(false), u_input.d, Struct_1(global2.a)), Struct_1(global2.a), 510f, Struct_2(Struct_1(true), Struct_1(false), Struct_1(global2.a), u_input.e, Struct_1(global2.a)))))), func_5(0u, ~vec4<u32>(u_input.d, u_input.e, u_input.b, 1u), 43796i, Struct_3(Struct_2(Struct_1(true), Struct_1(global2.a), Struct_1(false), 118825u, Struct_1(false)), Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(global2.a), 19030u, Struct_1(false)), func_5(u_input.d, vec4<u32>(28168u, 5732u, 1u, u_input.d), 2147483647i, Struct_3(Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), u_input.e, Struct_1(global2.a)), Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(global2.a), u_input.e, Struct_1(global2.a)), Struct_1(true), -454f, Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(global2.a), 0u, Struct_1(global2.a)))), 1f, Struct_2(Struct_1(false), Struct_1(true), Struct_1(global2.a), u_input.b, Struct_1(global2.a))))).yz, select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(global2.a, global2.a), vec2<bool>(true, global2.a), true)), all(!vec4<bool>(true, false, global2.a, true))), !(func_1(vec2<i32>(global1.x, 0i), vec4<f32>(1134f, 336f, -485f, 641f), vec2<i32>(u_input.c, 8660i)) & global2.a)), !func_5(max(u_input.e, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(39040u, u_input.e, u_input.e, 18345u), ~vec4<u32>(6443u, u_input.d, u_input.b, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 90339u, 27430u, 1272u), vec4<u32>(u_input.e, 55036u, u_input.e, u_input.e))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -1i, 686i), vec3<i32>(-7220i, global1.x, global1.x)), select(vec3<i32>(1i, 21014i, u_input.c), vec3<i32>(global1.x, 35447i, global1.x), vec3<bool>(false, global2.a, false))), Struct_3(Struct_2(Struct_1(false), Struct_1(false), Struct_1(true), 12934u, Struct_1(global2.a)), Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(true), u_input.e, Struct_1(true)), Struct_1(global2.a), -1000f, Struct_2(Struct_1(false), Struct_1(true), Struct_1(global2.a), 0u, Struct_1(false)))).a);
    var var_2 = Struct_3(Struct_2(func_5(0u ^ (0u ^ u_input.b), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(31371u, u_input.b, u_input.e, 1u)), abs(vec4<u32>(40243u, 38463u, u_input.d, 1u))), u_input.c, Struct_3(Struct_2(Struct_1(true), Struct_1(var_1.x), Struct_1(true), u_input.b, Struct_1(false)), Struct_2(Struct_1(global2.a), Struct_1(true), Struct_1(true), u_input.d, Struct_1(false)), Struct_1(true), 865f, Struct_2(Struct_1(true), Struct_1(true), Struct_1(global2.a), u_input.d, Struct_1(false)))), Struct_1(global2.a), func_5(47925u, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 34991u, 4294967295u, u_input.b) << (vec4<u32>(11787u, 4294967295u, u_input.e, 46046u) % vec4<u32>(32u)), abs(vec4<u32>(11363u, u_input.d, 1u, 1u))), 23692i, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(var_1.x), Struct_1(false), u_input.e, Struct_1(false)), Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(global2.a), u_input.b, Struct_1(global2.a)), func_5(1u, vec4<u32>(15134u, 1u, u_input.b, 4294967295u), -9244i, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(global2.a), Struct_1(var_1.x), u_input.d, Struct_1(var_1.x)), Struct_2(Struct_1(var_1.x), Struct_1(false), Struct_1(global2.a), u_input.b, Struct_1(false)), Struct_1(true), -1340f, Struct_2(Struct_1(true), Struct_1(var_1.x), Struct_1(global2.a), u_input.e, Struct_1(false)))), -392f, Struct_2(Struct_1(true), Struct_1(false), Struct_1(true), 49424u, Struct_1(true)))), ~func_2(1i, u_input.e, vec3<f32>(456f, -1000f, -317f)) | _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 51352u)), vec2<u32>(u_input.e, 1u)), func_5(_wgslsmith_mod_u32(12673u, 1u), ~vec4<u32>(u_input.b, 1u, u_input.d, 1886u), firstLeadingBit(_wgslsmith_sub_i32(u_input.c, u_input.a)), Struct_3(Struct_2(Struct_1(true), Struct_1(true), Struct_1(global2.a), 53056u, Struct_1(var_1.x)), Struct_2(Struct_1(var_1.x), Struct_1(false), Struct_1(var_1.x), u_input.d, Struct_1(var_1.x)), func_5(u_input.b, vec4<u32>(u_input.b, u_input.e, 0u, u_input.e), 1i, Struct_3(Struct_2(Struct_1(var_1.x), Struct_1(false), Struct_1(true), 48811u, Struct_1(true)), Struct_2(Struct_1(var_1.x), Struct_1(true), Struct_1(true), u_input.d, Struct_1(global2.a)), Struct_1(var_1.x), -523f, Struct_2(Struct_1(false), Struct_1(var_1.x), Struct_1(global2.a), u_input.e, Struct_1(true)))), -1416f, Struct_2(Struct_1(global2.a), Struct_1(false), Struct_1(false), u_input.b, Struct_1(true))))), Struct_2(func_5(~(~1u), countOneBits(vec4<u32>(41584u, u_input.e, 0u, 4294967295u)), -reverseBits(u_input.c), Struct_3(Struct_2(Struct_1(false), Struct_1(var_1.x), Struct_1(global2.a), u_input.e, Struct_1(false)), Struct_2(Struct_1(false), Struct_1(var_1.x), Struct_1(true), u_input.d, Struct_1(global2.a)), func_5(15313u, vec4<u32>(u_input.e, 0u, u_input.d, 4294967295u), global1.x, Struct_3(Struct_2(Struct_1(global2.a), Struct_1(var_1.x), Struct_1(global2.a), u_input.b, Struct_1(true)), Struct_2(Struct_1(var_1.x), Struct_1(global2.a), Struct_1(global2.a), u_input.d, Struct_1(false)), Struct_1(true), 435f, Struct_2(Struct_1(false), Struct_1(global2.a), Struct_1(true), 6708u, Struct_1(global2.a)))), 1305f, Struct_2(Struct_1(false), Struct_1(true), Struct_1(global2.a), u_input.d, Struct_1(true)))), func_5(u_input.d, min(vec4<u32>(u_input.e, 3591u, 2117u, 1u), ~vec4<u32>(u_input.d, u_input.e, u_input.b, u_input.e)), global1.x, Struct_3(Struct_2(Struct_1(true), Struct_1(false), Struct_1(false), 9151u, Struct_1(global2.a)), Struct_2(Struct_1(true), Struct_1(global2.a), Struct_1(false), u_input.e, Struct_1(global2.a)), Struct_1(true), _wgslsmith_f_op_f32(-1656f + 737f), Struct_2(Struct_1(true), Struct_1(false), Struct_1(global2.a), 19247u, Struct_1(false)))), Struct_1(true), ~_wgslsmith_clamp_u32(u_input.d ^ u_input.b, abs(u_input.b), 48081u), Struct_1(true)), Struct_1(true), 327f, Struct_2(func_5(33640u, vec4<u32>(u_input.e, 9510u, 30745u, abs(u_input.e)), u_input.a, Struct_3(Struct_2(Struct_1(false), Struct_1(true), Struct_1(var_1.x), 1u, Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), u_input.d, Struct_1(global2.a)), Struct_1(false), -1250f, Struct_2(Struct_1(false), Struct_1(false), Struct_1(false), u_input.e, Struct_1(false)))), Struct_1(var_1.x), func_5(~u_input.d, select(_wgslsmith_mod_vec4_u32(vec4<u32>(24284u, u_input.e, u_input.b, 0u), vec4<u32>(0u, 0u, 57573u, u_input.b)), vec4<u32>(u_input.e, 33707u, u_input.b, 42856u), u_input.e < u_input.d), abs(-global1.x), Struct_3(Struct_2(Struct_1(true), Struct_1(var_1.x), Struct_1(true), 103353u, Struct_1(global2.a)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true), u_input.e, Struct_1(var_1.x)), Struct_1(false), _wgslsmith_f_op_f32(-926f - -517f), Struct_2(Struct_1(false), Struct_1(global2.a), Struct_1(false), u_input.b, Struct_1(var_1.x)))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, 42660u)), ~(~vec2<u32>(u_input.b, u_input.e))), func_5(0u, vec4<u32>(abs(8987u), 4294967295u, 34884u << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 0u))), abs(global1.x) >> (u_input.b % 32u), Struct_3(Struct_2(Struct_1(global2.a), Struct_1(true), Struct_1(var_1.x), 0u, Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false), u_input.b, Struct_1(var_1.x)), func_5(u_input.b, vec4<u32>(u_input.e, 15987u, 4294967295u, u_input.d), global1.x, Struct_3(Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), u_input.b, Struct_1(true)), Struct_2(Struct_1(true), Struct_1(global2.a), Struct_1(global2.a), u_input.b, Struct_1(true)), Struct_1(var_1.x), -505f, Struct_2(Struct_1(false), Struct_1(var_1.x), Struct_1(false), u_input.b, Struct_1(false)))), _wgslsmith_f_op_f32(sign(653f)), Struct_2(Struct_1(true), Struct_1(global2.a), Struct_1(false), u_input.b, Struct_1(var_1.x))))));
    var_2 = Struct_3(var_2.e, Struct_2(func_5(~(~var_2.a.d), ~countOneBits(vec4<u32>(0u, var_2.b.d, 4294967295u, u_input.e)), ~global1.x, Struct_3(var_2.a, var_2.a, func_5(0u, vec4<u32>(1u, var_2.a.d, var_2.e.d, 0u), u_input.a, Struct_3(Struct_2(Struct_1(true), var_2.c, Struct_1(true), 0u, var_2.e.e), Struct_2(var_2.b.c, var_2.a.b, var_2.c, var_2.e.d, Struct_1(true)), var_2.c, -1402f, var_2.a)), -1202f, var_2.e)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global1.x, u_input.a), vec3<i32>(2147483647i, 7254i, 0i)) < global1.x), func_5(max(u_input.d, u_input.d) | 21178u, vec4<u32>(var_2.b.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.d, u_input.e), vec2<u32>(var_2.b.d, u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.b.d), vec2<u32>(var_2.b.d, 1u)), abs(19286u)), countOneBits(global1.x), Struct_3(Struct_2(var_2.b.b, Struct_1(false), var_2.b.c, 148599u, var_2.a.e), var_2.e, func_5(var_2.b.d, vec4<u32>(var_2.e.d, 4294967295u, u_input.b, u_input.b), u_input.a, Struct_3(Struct_2(Struct_1(true), var_2.e.c, var_2.a.c, 935u, Struct_1(true)), var_2.a, var_2.b.b, var_2.d, Struct_2(var_2.c, var_2.a.e, Struct_1(var_2.c.a), 0u, var_2.a.b))), _wgslsmith_f_op_f32(-var_2.d), var_2.e)), _wgslsmith_clamp_u32(1u, 0u, 32917u), var_2.a.c), func_5(var_2.a.d, _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_2.b.d, 0u, var_2.b.d, u_input.b)), ~vec4<u32>(19183u, u_input.e, 101948u, u_input.b)), _wgslsmith_mod_i32(i32(-1i) * -38875i, ~_wgslsmith_div_i32(-2199i, 13781i)), Struct_3(Struct_2(func_5(u_input.e, vec4<u32>(4294967295u, 6373u, var_2.a.d, 9833u), 1i, Struct_3(var_2.e, Struct_2(Struct_1(var_1.x), var_2.c, var_2.c, 56970u, var_2.b.b), var_2.b.b, 1142f, Struct_2(Struct_1(var_2.b.e.a), var_2.a.e, Struct_1(var_1.x), 10507u, var_2.b.a))), Struct_1(var_2.c.a), var_2.a.c, 1u, var_2.b.e), var_2.a, var_2.e.e, -809f, Struct_2(func_5(var_2.a.d, vec4<u32>(u_input.b, var_2.e.d, 0u, var_2.a.d), global1.x, Struct_3(Struct_2(Struct_1(false), var_2.c, Struct_1(true), var_2.e.d, Struct_1(true)), Struct_2(var_2.b.a, var_2.b.a, Struct_1(var_2.b.a.a), 1u, Struct_1(var_1.x)), Struct_1(true), -1112f, Struct_2(Struct_1(true), Struct_1(global2.a), var_2.a.c, 0u, var_2.a.c))), Struct_1(global2.a), Struct_1(global2.a), ~u_input.b, Struct_1(true)))), _wgslsmith_f_op_f32(-var_2.d), var_2.e);
    var var_3 = !select(vec2<bool>(select(false, false, true) || (var_2.d <= var_2.d), func_5(_wgslsmith_clamp_u32(1u, 2495u, u_input.d), vec4<u32>(6050u, 39081u, 0u, var_2.b.d), -1i, Struct_3(var_2.b, var_2.a, var_2.c, -1000f, Struct_2(var_2.a.c, var_2.a.e, var_2.a.c, u_input.e, Struct_1(var_2.a.b.a)))).a), vec2<bool>(true, true), true);
    var var_4 = var_2.b.a;
    let var_5 = ~select(~(~(vec3<u32>(1u, u_input.e, var_2.b.d) >> (vec3<u32>(74885u, 4294967295u, 60125u) % vec3<u32>(32u)))), vec3<u32>(~4294967295u, u_input.b << (var_2.e.d % 32u), 23228u) << ((~vec3<u32>(53437u, var_2.b.d, u_input.e) & countOneBits(vec3<u32>(u_input.d, var_2.a.d, var_2.a.d))) % vec3<u32>(32u)), u_input.c > _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, -15730i, -1903i), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_2.d), var_2.d, var_2.d, var_2.d));
}

