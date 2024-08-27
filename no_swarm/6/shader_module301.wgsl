struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-437f, 875f, 1504f, 1716f);

var<private> global1: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_mod_vec3_u32(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0, u_input.a), vec3<u32>(26433u, var_0, var_0))) ^ reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 48286u, u_input.a), vec3<u32>(u_input.a, 43127u, global1.b.a.x)), vec3<u32>(55771u, global1.b.a.x, var_0))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.b.a.x, 1u, 110587u), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(var_0, 1u, 50885u)), abs(vec3<u32>(53896u, u_input.a, 1u)))));
    let var_2 = 0u;
    var var_3 = global1.b.a.x;
    let var_4 = Struct_1(var_1.xx, !(global1.a.x >= _wgslsmith_dot_vec3_i32(-global1.a.zyy, ~vec3<i32>(24241i, u_input.b.x, global1.a.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(402f, 122f)), _wgslsmith_f_op_f32(exp2(global1.b.c.x)), global0.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b.c + vec3<f32>(-1965f, -441f, 713f)), global0.wzz)))));
    return global1.b.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_3(global1.b.b, u_input.a, Struct_2(abs(global1.a & _wgslsmith_clamp_vec4_i32(global1.a, global1.a, vec4<i32>(u_input.b.x, -2147483647i, -21197i, arg_2.x))), global1.b));
    let var_1 = any(arg_1.xww);
    let var_2 = countOneBits(select(select(~(~vec4<u32>(var_0.c.b.a.x, 4294967295u, 21180u, 88316u)), min(~vec4<u32>(1u, arg_0.x, u_input.a, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 3906u, 0u), vec4<u32>(global1.b.a.x, global1.b.a.x, arg_0.x, 1u))), vec4<bool>(false, !var_1, false, true)), ~vec4<u32>(_wgslsmith_mult_u32(21335u, arg_0.x), 4294967295u, 1u, _wgslsmith_mod_u32(16130u, 43053u)), arg_1));
    var var_3 = ~_wgslsmith_sub_vec2_i32(abs(firstLeadingBit(-u_input.b)), u_input.b);
    var_3 = vec2<i32>(global1.a.x, -57936i);
    return select(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, -global1.a.x), -27795i, _wgslsmith_div_i32(var_0.c.a.x, i32(-1i) * -30451i), -arg_2.x), vec4<i32>(_wgslsmith_dot_vec2_i32(global1.a.ww, vec2<i32>(global1.a.x, arg_3.x)), abs(global1.a.x), 1i ^ _wgslsmith_add_i32(-1i, arg_3.x), var_3.x), -_wgslsmith_add_vec4_i32(global1.a >> (var_2 % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x, 30045i, 36097i))), global1.a, vec4<bool>(false, select(!(global1.b.b | arg_1.x), var_0.a, false), global1.b.b, any(!vec3<bool>(false, global1.b.b, var_0.c.b.b))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> Struct_4 {
    global1 = Struct_2(-func_4(firstLeadingBit(vec3<u32>(1u, 82023u, 78923u)), vec4<bool>(global1.b.b, true, true, func_3()), vec3<i32>(~arg_0.x, _wgslsmith_sub_i32(u_input.b.x, 2147483647i), ~u_input.b.x), vec2<i32>(~u_input.b.x, min(25518i, u_input.b.x))), Struct_1(_wgslsmith_clamp_vec2_u32(global1.b.a, vec2<u32>(countOneBits(1u), _wgslsmith_add_u32(u_input.a, 1u)), firstLeadingBit(global1.b.a)), false, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global0.xzz, vec3<f32>(-183f, -899f, 225f))))));
    let var_0 = Struct_3(false, 53324u, Struct_2(~((arg_0 >> (vec4<u32>(global1.b.a.x, 53725u, u_input.a, 1u) % vec4<u32>(32u))) ^ select(arg_0, arg_0, vec4<bool>(true, global1.b.b, global1.b.b, global1.b.b))), Struct_1(vec2<u32>(global1.b.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 64165u), vec3<u32>(1u, global1.b.a.x, 7434u))), true || !global1.b.b, vec3<f32>(1584f, _wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(102f * -902f)))));
    global1 = Struct_2(~(~global1.a), Struct_1(global1.b.a, global1.b.b, vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), global0.x, _wgslsmith_f_op_f32(global1.b.c.x * _wgslsmith_f_op_f32(-369f + global1.b.c.x)))));
    let var_1 = vec2<bool>(any(!select(select(vec3<bool>(global1.b.b, var_0.a, true), vec3<bool>(global1.b.b, true, global1.b.b), var_0.a), select(vec3<bool>(false, var_0.c.b.b, global1.b.b), vec3<bool>(var_0.c.b.b, false, global1.b.b), var_0.a), vec3<bool>(var_0.c.b.b, false, false))), false);
    var var_2 = arg_1;
    return Struct_4(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.c.b.a | var_0.c.b.a, global1.b.a), reverseBits(vec2<u32>(u_input.a, u_input.a))), var_0);
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_4) -> f32 {
    var var_0 = func_2(abs(arg_2.b.c.a), _wgslsmith_div_f32(global1.b.c.x, _wgslsmith_f_op_f32(exp2(arg_2.b.c.b.c.x)))).b.c.b;
    var_0 = global1.b;
    let var_1 = -u_input.b;
    var var_2 = abs(_wgslsmith_sub_i32(arg_1.x, _wgslsmith_mult_i32(-2147483647i, arg_2.b.c.a.x)));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-916f)), global0.x, arg_2.b.c.b.c.x, _wgslsmith_f_op_f32(-196f * -292f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2.b.c.b.c.x)), var_0.c.x, 814f, _wgslsmith_f_op_f32(step(global1.b.c.x, global1.b.c.x))) - vec4<f32>(-1672f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -987f), 1049f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1291f, arg_2.b.c.b.c.x, arg_2.b.c.b.c.x, -477f), vec4<f32>(-772f, arg_2.b.c.b.c.x, var_0.c.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.b.c.x, -1000f, global1.b.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.b.c.b.c.x, var_0.c.x, var_0.c.x, -468f)))), func_2(vec4<i32>(1i, u_input.b.x, u_input.b.x, -31628i) & vec4<i32>(u_input.b.x, -2147483647i, 45781i, arg_2.b.c.a.x), global1.b.c.x).b.a)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_0.c.x - -1000f), global0.x, -2401f))))));
    return global1.b.c.x;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    var var_0 = ~arg_0.b.c.a.yyw;
    var var_1 = _wgslsmith_f_op_f32(func_5(10388i, global1.a.wxw, func_2(vec4<i32>(~var_0.x, min(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, 0i, 0i, 14666i), vec4<i32>(arg_0.b.c.a.x, 2147483647i, -1i, u_input.b.x))), -2147483647i, _wgslsmith_mod_i32(~(-16761i), global1.a.x)), global1.b.c.x)));
    var_1 = global0.x;
    var var_2 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(abs(-31239i), arg_0.b.c.a.x, u_input.b.x)), ~vec3<i32>(min(-30335i, global1.a.x), (1i | arg_0.b.c.a.x) & func_4(vec3<u32>(2354u, 0u, 75900u), vec4<bool>(arg_3.x, true, global1.b.b, true), vec3<i32>(-2147483647i, var_0.x, u_input.b.x), vec2<i32>(2147483647i, arg_1)).x, max(177i, arg_1)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.x, max(global1.a.x, -7218i)), -_wgslsmith_dot_vec3_i32(global1.a.wwy, global1.a.yyz)), arg_0.b.c.a.x, -1i));
    var var_3 = arg_3;
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_2, 21649u, global1.b.a.x, global1.b.a.x), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.b.b, 18880u, u_input.a, arg_0.b.b), vec4<u32>(1u, 4294967295u, arg_0.a, 0u))), _wgslsmith_sub_vec4_u32(abs(abs(~vec4<u32>(0u, arg_2, 10140u, 131153u))), ~vec4<u32>(min(arg_0.b.c.b.a.x, u_input.a), arg_2, u_input.a, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a ^ _wgslsmith_sub_u32(4294967295u, select(1u, func_1(Struct_4(global1.b.a.x, Struct_3(global1.b.b, 1u, Struct_2(global1.a, Struct_1(global1.b.a, true, vec3<f32>(-908f, 1108f, -562f))))), _wgslsmith_mult_i32(global1.a.x, u_input.b.x), 20911u, vec2<bool>(false, true)), all(vec3<bool>(false, global1.b.b, true)) || false));
    let var_1 = 4294967295u;
    var var_2 = func_2(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * global1.b.c.x), _wgslsmith_f_op_f32(trunc(global0.x)))), -1339f, !func_3())) + global1.b.c.x)).b.c.b;
    var var_3 = global1.a.x;
    var_2 = func_2(vec4<i32>(_wgslsmith_div_i32(2147483647i, select(min(30272i, 1i), 9704i ^ global1.a.x, true)), -_wgslsmith_dot_vec2_i32(-global1.a.ww, func_2(global1.a, 1294f).b.c.a.yz), 1i, 1i), -798f).b.c.b;
    var var_4 = func_2(vec4<i32>(-1i, global1.a.x, -_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, global1.a.x, -1i), firstLeadingBit(2483i)), select(4578i, ~8115i, any(vec4<bool>(false, global1.b.b, true, true)))), -168f).b.c;
    var var_5 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(global1.b.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.b.c.x, 1000f, 938f)))))))));
    let var_6 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(516f - var_4.b.c.x), _wgslsmith_f_op_f32(exp2(var_2.c.x)), _wgslsmith_f_op_f32(global1.b.c.x - -808f), global1.b.c.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, -702f, -1629f, var_2.c.x) + vec4<f32>(global1.b.c.x, 1524f, -796f, var_2.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.c.x, -756f, 303f, 293f) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1061f - -1337f), _wgslsmith_f_op_f32(round(-445f)))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_5.x))), _wgslsmith_f_op_f32(-403f + _wgslsmith_f_op_f32(global1.b.c.x * var_5.x)))));
    let x = u_input.a;
    s_output = StorageBuffer((var_2.a.x & 1u) >> (~92038u % 32u), ~70927u, _wgslsmith_f_op_f32(-global1.b.c.x));
}

