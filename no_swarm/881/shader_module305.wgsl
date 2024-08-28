struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_5 = Struct_5(Struct_3(4294967295u, vec4<u32>(23497u, 4294967295u, 0u, 4294967295u), -1659f, vec3<u32>(119049u, 4294967295u, 4294967295u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_4(~u_input.e.xw >> (~(~(u_input.d.wz & vec2<u32>(global1.a.d.x, 0u))) % vec2<u32>(32u)));
    global1 = Struct_5(global1.a);
    global1 = Struct_5(Struct_3(_wgslsmith_mult_u32(reverseBits(var_0.a.x), var_0.a.x), ~u_input.d, global1.a.c, ~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 0u, 4294967295u), vec3<u32>(23162u, global1.a.d.x, global1.a.d.x)))));
    global1 = Struct_5(global1.a);
    var var_1 = Struct_1(vec2<i32>(0i, _wgslsmith_div_i32(-32836i, u_input.c.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(294f, global1.a.c), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1203f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.a.c) - vec2<f32>(492f, global1.a.c)) + vec2<f32>(175f, global1.a.c))))));
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec2<bool> {
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-667f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(global1.a.c, global1.a.c), _wgslsmith_div_f32(global1.a.c, -936f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())));
    var var_2 = Struct_2(~u_input.c, Struct_1(vec2<i32>(11923i, _wgslsmith_add_i32(arg_1, ~(-18222i)))));
    var_2 = Struct_2(_wgslsmith_mult_vec3_i32(abs(select(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -4764i, -2147483647i), vec3<i32>(arg_1, u_input.b.x, -39000i)), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), all(vec2<bool>(true, false)))), vec3<i32>(~(-arg_1), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, var_2.b.a.x, 11022i, var_2.b.a.x), vec4<i32>(8284i, -1i, -1i, arg_1)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1), firstLeadingBit(vec2<i32>(u_input.c.x, -5793i))))), var_2.b);
    var var_3 = _wgslsmith_f_op_f32(-global1.a.c);
    return select(!vec2<bool>(all(vec2<bool>(true, true)), false), vec2<bool>(false, !(!any(vec4<bool>(true, true, false, true)))), any(vec2<bool>(false, false)) & true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_4 {
    global1 = Struct_5(Struct_3(select(arg_2.x, global1.a.a ^ firstLeadingBit(43313u), true), vec4<u32>(4294967295u, global1.a.a, 1u, global1.a.d.x & arg_2.x), _wgslsmith_f_op_f32(ceil(-1000f)), u_input.d.zxw));
    let var_0 = u_input.b.x;
    var var_1 = min(arg_3.b.a, select(u_input.c.zy, ~(-arg_3.a.zz), func_2(Struct_4(abs(u_input.d.zx)), u_input.b.x)));
    let var_2 = Struct_4(abs(global1.a.b.xw));
    let var_3 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(firstTrailingBit(-1i), -40683i));
    return Struct_4(~(select(global1.a.d.xy, vec2<u32>(4294967295u, 1u), -7582i < var_0) >> ((var_2.a ^ arg_2) % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool) -> Struct_4 {
    global1 = Struct_5(Struct_3(~firstLeadingBit(_wgslsmith_mod_u32(u_input.a, 1u)), ~u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.c, global1.a.c) * global1.a.c) * _wgslsmith_f_op_f32(-global1.a.c)), global1.a.d));
    var var_0 = func_4(select(!select(select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), vec2<bool>(true, false)), func_2(Struct_4(u_input.d.yz), u_input.b.x), all(vec4<bool>(arg_2, false, arg_2, false))), vec2<bool>(arg_2, global1.a.c != 1061f), select(select(vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), false), vec2<bool>(true, true)), func_2(Struct_4(u_input.d.wx), arg_0.a.x), false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(arg_1.a.a), 8396u, global1.a.d.x, arg_1.a.a | arg_1.a.b.x), ~(~vec4<u32>(global1.a.a, arg_1.a.b.x, arg_1.a.b.x, 4294967295u)), ~(~arg_1.a.b)), vec2<u32>(430u, 1u), Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, 40283i, 4691i)), u_input.c), _wgslsmith_div_vec3_i32(min(u_input.c, u_input.c), vec3<i32>(arg_0.a.x, 1717i, arg_0.a.x))), Struct_1(vec2<i32>(i32(-1i) * -16053i, _wgslsmith_dot_vec4_i32(vec4<i32>(95378i, 15514i, 2147483647i, u_input.c.x), vec4<i32>(arg_0.a.x, arg_0.a.x, 28083i, u_input.c.x))))));
    var var_1 = select(vec3<bool>(arg_0.a.x != select(arg_0.a.x, -1i, true), all(select(!vec4<bool>(false, arg_2, true, arg_2), select(vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(arg_2, false, false, false), vec4<bool>(arg_2, arg_2, true, arg_2)), true)), _wgslsmith_mult_u32(52020u, 1707u) >= _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, arg_1.a.d.x, 9517u, var_0.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(26326u, arg_1.a.d.x, 3394u, u_input.a), arg_1.a.b))), vec3<bool>(false, true, select(!(!arg_2), arg_2 && (global1.a.b.x >= var_0.a.x), !arg_2)), arg_2);
    let var_2 = -1000f;
    let var_3 = select(vec4<bool>(false, false, arg_2, -52978i != arg_0.a.x), select(vec4<bool>(true, true, all(select(vec3<bool>(var_1.x, true, arg_2), vec3<bool>(arg_2, true, true), arg_2)), true), !(!(!vec4<bool>(arg_2, false, var_1.x, var_1.x))), var_1.x), true);
    return Struct_4(~(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_0.a.x, global1.a.b.x)), u_input.d.wx | vec2<u32>(21747u, u_input.d.x), vec2<u32>(arg_1.a.b.x, arg_1.a.d.x)) & min(global1.a.b.zz, vec2<u32>(global1.a.b.x, 54631u))));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: vec3<i32>) -> i32 {
    global0 = !all(select(vec3<bool>(true, true, select(false, false, false)), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), any(vec3<bool>(true, true, true))), any(vec4<bool>(true, true, true, true))));
    let var_0 = Struct_4(select(~vec2<u32>(global1.a.a << (71420u % 32u), ~u_input.e.x), (u_input.d.wx & ~global1.a.d.yx) << (vec2<u32>(~u_input.e.x, ~66508u) % vec2<u32>(32u)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    global1 = Struct_5(Struct_3(u_input.a, vec4<u32>(0u | _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(1u, arg_1.a.x, 0u, arg_1.a.x)), var_0.a.x >> (~global1.a.b.x % 32u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.a.a, 46103u), vec3<u32>(var_0.a.x, 0u, 8549u))), _wgslsmith_dot_vec3_u32(firstLeadingBit(global1.a.d), vec3<u32>(4294967295u, 18705u, 25744u))), global1.a.c, vec3<u32>(global1.a.a << (50442u % 32u), u_input.d.x, reverseBits(global1.a.b.x))));
    global1 = Struct_5(Struct_3(1u, ~vec4<u32>(1u, reverseBits(63981u), ~4294967295u, var_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_2)))), reverseBits(~countOneBits(vec3<u32>(var_0.a.x, global1.a.d.x, 35992u)))));
    var var_1 = arg_3.zy;
    return ~u_input.c.x;
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_5 {
    global0 = true;
    let var_0 = Struct_1(countOneBits(countOneBits(u_input.c.zz)));
    global0 = false;
    let var_1 = arg_2;
    var var_2 = all(vec3<bool>(!select(true, false, false) | (global1.a.c > arg_1.c), true & all(vec4<bool>(true, true, true, true)), true == all(vec2<bool>(true, false))));
    return Struct_5(Struct_3(~reverseBits(global1.a.d.x >> (u_input.a % 32u)), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), -1325f, abs(~firstTrailingBit(vec3<u32>(var_1, 18848u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(max(u_input.c.x, _wgslsmith_div_i32(func_5(330f, func_1(Struct_1(vec2<i32>(-2147483647i, 2147483647i)), Struct_5(Struct_3(4294967295u, vec4<u32>(1947u, 15809u, u_input.a, global1.a.d.x), 224f, global1.a.b.wyz)), true), global1.a.c, u_input.c | u_input.c), u_input.c.x)), Struct_3(u_input.d.x >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(41482u, 4294967295u), vec2<u32>(global1.a.a, 0u)) >> (~u_input.d.x % 32u)) % 32u), u_input.e ^ global1.a.b, global1.a.c, vec3<u32>(~1u, 1u, global1.a.b.x) ^ global1.a.d), ~(~func_4(vec2<bool>(true, true), min(u_input.d, vec4<u32>(75249u, global1.a.b.x, 472u, 72347u)), ~vec2<u32>(1u, 1u), Struct_2(vec3<i32>(-1i, u_input.b.x, 0i), Struct_1(vec2<i32>(u_input.c.x, -1i)))).a.x));
    var var_1 = global1.a.d.x != 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-290f - _wgslsmith_f_op_f32(sign(-1000f)));
    global1 = func_6(_wgslsmith_dot_vec2_i32(u_input.b, ~u_input.b), func_6(abs(min(_wgslsmith_mult_i32(7345i, u_input.b.x), firstLeadingBit(1i))), Struct_3(_wgslsmith_sub_u32(~4294967295u, max(global1.a.b.x, 40274u)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.a.b, vec4<u32>(u_input.e.x, 25330u, 26555u, 4294967295u)), global1.a.b), global1.a.c, _wgslsmith_add_vec3_u32(~var_0.a.d, func_6(u_input.b.x, var_0.a, global1.a.d.x).a.d)), var_0.a.a).a, 4913u);
    var_2 = var_0.a.c;
    let var_3 = abs(_wgslsmith_clamp_vec4_u32(func_6(u_input.b.x << (_wgslsmith_add_u32(u_input.e.x, var_0.a.d.x) % 32u), var_0.a, u_input.d.x).a.b, u_input.d, select(func_6(0i, func_6(u_input.b.x, Struct_3(8800u, var_0.a.b, -260f, global1.a.d), var_0.a.b.x).a, var_0.a.b.x).a.b, func_6(-7823i, global1.a, u_input.d.x).a.b, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), all(vec4<bool>(true, false, true, false))))));
    var var_4 = Struct_5(Struct_3(_wgslsmith_div_u32(min(global1.a.a, 4294967295u) << (_wgslsmith_mult_u32(var_0.a.d.x, 22308u) % 32u), u_input.a), var_3, var_0.a.c, (~u_input.e.wyw << (max(vec3<u32>(8691u, 10801u, global1.a.b.x), vec3<u32>(var_0.a.a, var_0.a.b.x, global1.a.b.x)) % vec3<u32>(32u))) ^ select(var_0.a.d, _wgslsmith_mod_vec3_u32(vec3<u32>(29390u, 32945u, u_input.e.x), vec3<u32>(var_0.a.b.x, var_0.a.b.x, 1u)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~abs(select(vec4<i32>(u_input.b.x, 1i, u_input.c.x, -1i), vec4<i32>(u_input.c.x, 2147483647i, u_input.b.x, 23110i), false))), u_input.c.x ^ -(-6307i << ((global1.a.d.x & 84828u) % 32u)));
}

