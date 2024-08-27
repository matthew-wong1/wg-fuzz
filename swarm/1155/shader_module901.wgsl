struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30>;

var<private> global1: Struct_1 = Struct_1(true, 28739i, 234f, -496i, vec4<f32>(-110f, -1040f, -2222f, 368f));

var<private> global2: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global2 = -930f;
    var var_0 = _wgslsmith_f_op_vec4_f32(-global1.e);
    let var_1 = vec2<bool>(abs(~abs(-24935i)) == _wgslsmith_add_i32(_wgslsmith_div_i32(countOneBits(-6679i), -21292i), global1.d), ~global1.d == ~(~0i));
    global0 = array<vec4<u32>, 30>();
    let var_2 = u_input.a.x;
    return select(~u_input.a.x, ~4294967295u, 0u < firstTrailingBit(26826u & u_input.b.x)) << ((_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(0u, var_2)), _wgslsmith_dot_vec3_u32(vec3<u32>(57942u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 25482u, var_2) >> (u_input.a % vec3<u32>(32u))), 23453u) << (0u % 32u)) % 32u);
}

fn func_3() -> u32 {
    let var_0 = Struct_1((global1.a & false) | false, firstLeadingBit(abs(abs(u_input.d.x)) << (u_input.b.x % 32u)), _wgslsmith_f_op_f32(exp2(global1.e.x)), _wgslsmith_mult_i32(~u_input.c.x, -(~(~global1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.e.x, global1.c, -402f, global1.c), vec4<f32>(790f, 414f, 1057f, global1.c))) + _wgslsmith_f_op_vec4_f32(select(global1.e, vec4<f32>(-709f, 1315f, global1.c, global1.c), true)))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.c)), 392f)), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)), global1.c)));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, ~_wgslsmith_mod_u32(u_input.a.x, 1u)) & _wgslsmith_mod_vec3_u32(u_input.b.zyx, ~(~vec3<u32>(u_input.a.x, 1u, 1u))), vec3<u32>(~u_input.a.x, ~60891u, abs(~max(16529u, 0u))));
    global1 = var_0;
    var var_2 = vec4<bool>(var_0.a, true, any(select(vec2<bool>(true, false), vec2<bool>(global1.a, any(vec2<bool>(global1.a, global1.a))), true)), !any(vec2<bool>(false, global1.a)) || all(vec4<bool>(global1.a, all(vec4<bool>(global1.a, var_0.a, false, var_0.a)), true, false)));
    var var_3 = u_input.d;
    return ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 33253u, u_input.b.x), vec3<u32>(18586u, u_input.a.x, u_input.b.x)), vec3<u32>(min(4294967295u, 59496u), firstLeadingBit(29386u), u_input.b.x)), 1u);
}

fn func_1() -> vec4<u32> {
    var var_0 = all(!vec2<bool>(true, u_input.b.x != func_2(u_input.d.zxz)));
    var var_1 = ((0i >> (~min(u_input.a.x, u_input.a.x) % 32u)) & (9145i >> (u_input.a.x % 32u))) >> (_wgslsmith_div_u32(func_3(), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], vec4<u32>(u_input.a.x, u_input.b.x, 23257u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x)) << (u_input.a.x % 32u)) % 32u);
    var_1 = firstLeadingBit(abs(-(~(-34445i))));
    var var_2 = global1.a;
    let var_3 = global1.a;
    return ~countOneBits(~global0[_wgslsmith_index_u32(countOneBits(0u), 30u)]);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = abs(func_1().ywx);
    var var_1 = select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.yx, ~func_1().zz), ~(abs(u_input.b.xz) | _wgslsmith_add_vec2_u32(u_input.b.xw, u_input.b.yz)), ~(~var_0.yy)), vec2<u32>(~func_1().x, (33193u << (~arg_1.x % 32u)) ^ max(4294967295u, arg_1.x)), !select(select(!vec2<bool>(global1.a, true), select(vec2<bool>(false, false), vec2<bool>(global1.a, global1.a), false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = global1.e.yz;
    var var_3 = arg_2;
    var_3 = arg_2;
    return arg_1.wyw;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.e.wzz, _wgslsmith_f_op_vec3_f32(max(global1.e.yxw, _wgslsmith_f_op_vec3_f32(global1.e.zyw + vec3<f32>(-250f, -146f, global1.e.x)))), !(!(!vec3<bool>(true, global1.a, global1.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global1.e.wxw))) + _wgslsmith_f_op_vec3_f32(arg_3.e.yzz - _wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, arg_1.x, arg_3.c)))));
}

fn func_6(arg_0: vec3<f32>) -> Struct_1 {
    global1 = Struct_1(global1.a, -64734i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(arg_0.x * 1016f))), -886f), i32(-1i) * -7869i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(global1.e, vec4<f32>(global1.e.x, -576f, 1662f, global1.c), any(vec2<bool>(global1.a, global1.a)))), global1.e)))));
    global0 = array<vec4<u32>, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(global1.e))));
    global1 = Struct_1(global1.a, ~(-11672i), _wgslsmith_f_op_f32(round(809f)), u_input.d.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global1.e, var_0))))));
    var var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, reverseBits(u_input.b.x)), max(u_input.a.x, u_input.a.x), u_input.b.x), abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ ~func_4(global1.e, vec4<u32>(u_input.a.x, u_input.b.x, 32439u, 0u), Struct_1(false, 0i, var_0.x, 1i, global1.e)));
    return Struct_1(!(!(false && (15353u != var_1.x))), _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(u_input.c.x, u_input.c.x, 0i, 13392i), vec4<i32>(2147483647i, u_input.c.x, -19665i, 19619i) ^ u_input.d) | firstLeadingBit(-u_input.d)), var_0.x, 0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, 369f)), var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(global1.c - arg_0.x)) + var_0), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1614f, arg_0.x, -846f, 464f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-427f, 1459f, -1699f, 124f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-231f - global1.e.x))))));
    let var_0 = global1.e;
    let var_1 = func_6(_wgslsmith_f_op_vec3_f32(func_5(global1.a, vec2<f32>(var_0.x, var_0.x), func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.e), _wgslsmith_f_op_vec4_f32(-global1.e))), func_1(), Struct_1(global1.a & global1.a, ~(-2147483647i), var_0.x, min(u_input.d.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(global1.e - vec4<f32>(var_0.x, 899f, -849f, var_0.x)))), Struct_1(any(vec4<bool>(true, true, true, true)), -60865i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -3025f)), -2147483647i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(global1.e, vec4<f32>(global1.e.x, -2270f, var_0.x, 386f), vec4<bool>(global1.a, global1.a, global1.a, true)))))))));
    let var_2 = _wgslsmith_f_op_f32(step(-2024f, _wgslsmith_f_op_f32(step(1000f, 1286f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-891f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x - global1.c)))));
    var var_4 = _wgslsmith_mult_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, 24123u, u_input.b.x), 16421u, max(33096u, u_input.a.x), ~0u), ~_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), vec4<u32>(max(u_input.a.x, u_input.a.x), ~u_input.a.x, u_input.b.x, 1u))), vec4<u32>(_wgslsmith_sub_u32(func_3(), 16821u), countOneBits(reverseBits(_wgslsmith_add_u32(2001u, u_input.a.x))), 30918u, ~34836u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.e.wxx);
}

