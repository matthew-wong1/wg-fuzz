struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
    d: i32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(true, false, false), -16060i, Struct_3(9428i, -923f), -1i, vec2<bool>(true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = Struct_2(u_input.b, abs(firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(9310u, u_input.d.x, 51550u), vec3<u32>(83238u, u_input.d.x, u_input.a)))));
    var var_1 = u_input.c;
    var var_2 = abs(abs(~9576u));
    let var_3 = Struct_4(!vec3<bool>(global0.a.x, global0.e.x, select(true, global0.a.x, arg_0.x) && global0.a.x), -var_0.a >> (1u % 32u), Struct_3(2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(step(-565f, _wgslsmith_f_op_f32(-global0.c.b)))))), countOneBits(24491i), !select(vec2<bool>(global0.a.x, global0.e.x), select(!vec2<bool>(true, arg_0.x), !vec2<bool>(arg_0.x, arg_0.x), all(arg_0.yyx)), vec2<bool>(false, arg_0.x)));
    var var_4 = false;
    return i32(-1i) * -113569i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    global0 = Struct_4(select(global0.a, select(select(!arg_2, vec3<bool>(arg_1, true, true), vec3<bool>(false, false, global0.e.x)), global0.a, vec3<bool>(!arg_2.x, true, false)), !(!vec3<bool>(arg_2.x, false, global0.a.x))), _wgslsmith_clamp_i32(~u_input.b, 47031i, max(_wgslsmith_add_i32(global0.d | 33037i, u_input.b | arg_0), max(arg_0, u_input.b))), Struct_3(~(~(-global0.c.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.b, global0.c.b, true))), _wgslsmith_f_op_f32(max(1477f, _wgslsmith_f_op_f32(-global0.c.b)))))), _wgslsmith_mult_i32(0i, -select(u_input.b, -2147483647i, arg_2.x)) & ~u_input.b, vec2<bool>(!arg_1 && all(!vec2<bool>(global0.a.x, true)), arg_2.x));
    let var_0 = firstTrailingBit(vec4<u32>(~firstLeadingBit(u_input.c.x), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.c.x), vec3<u32>(4294967295u, 16405u, u_input.c.x))), min(u_input.d.x, ~u_input.c.x), 0u) & ~(~vec4<u32>(4294967295u, u_input.c.x, u_input.a, 1u)));
    let var_1 = ~(~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(var_0.yzw, var_0.wwy), var_0.zxy)));
    var var_2 = select(select(vec3<bool>(false, arg_2.x, any(vec4<bool>(false, arg_2.x, global0.e.x, false))), !(!select(global0.a, arg_2, vec3<bool>(true, global0.e.x, global0.a.x))), false), !(!vec3<bool>(1u >= var_0.x, arg_1 && false, true)), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b, 249f, global0.c.b, -276f)) * vec4<f32>(global0.c.b, global0.c.b, global0.c.b, 1340f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.b, global0.c.b, 1125f, -1018f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.b, 577f, global0.c.b, global0.c.b), vec4<f32>(1020f, 1887f, 673f, global0.c.b), vec4<bool>(arg_1, true, var_2.x, true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b, global0.c.b, -266f, global0.c.b)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c.b, _wgslsmith_f_op_f32(global0.c.b - -1072f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b - -1000f))))));
    return var_0.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_5) -> vec2<bool> {
    global0 = Struct_4(global0.a, 17273i, global0.c, -2147483647i, global0.a.zz);
    global0 = Struct_4(global0.a, arg_1.a, Struct_3(_wgslsmith_sub_i32(1i, abs(-63939i)), _wgslsmith_div_f32(global0.c.b, 1657f)), global0.c.a, select(!(!global0.a.yx), select(!select(global0.e, vec2<bool>(global0.a.x, global0.a.x), global0.e), select(!global0.a.xx, !vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(false, global0.a.x)), vec2<bool>(global0.a.x, any(vec4<bool>(true, global0.e.x, global0.a.x, global0.e.x)))), !((global0.a.x && false) != global0.e.x)));
    let var_0 = Struct_2(u_input.b, reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.x, 28601u, 23309u), arg_0.xyx | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, arg_1.b.x, 4294967295u), arg_0.yxx))));
    let var_1 = _wgslsmith_dot_vec4_u32(arg_0, select(~(~(~vec4<u32>(arg_1.b.x, 8914u, arg_1.b.x, 5764u))), ~(~abs(vec4<u32>(0u, arg_0.x, 0u, 0u))), (_wgslsmith_div_i32(1i, global0.c.a) >= u_input.b) == global0.a.x));
    let var_2 = global0.e;
    return vec2<bool>(var_2.x, select(true, 1u == ~arg_1.b.x, any(!vec3<bool>(false, global0.a.x, true))) || global0.a.x);
}

fn func_2() -> Struct_5 {
    var var_0 = ~(~u_input.c.x);
    global0 = Struct_4(global0.a, 7320i, Struct_3(-_wgslsmith_add_i32(i32(-1i) * -17623i, ~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(155f)) * -1000f) - global0.c.b)), 1i, global0.a.zx);
    global0 = Struct_4(vec3<bool>(global0.e.x, 2147483647i != u_input.b, global0.a.x), _wgslsmith_div_i32(-2147483647i, 555i), global0.c, 1i >> (u_input.a % 32u), vec2<bool>(global0.a.x, true));
    global0 = Struct_4(vec3<bool>(false, !(!all(vec4<bool>(global0.e.x, global0.e.x, global0.a.x, true))), !(!global0.a.x)), -2147483647i, global0.c, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, u_input.b) ^ vec2<i32>(2147483647i, 2147483647i), vec2<i32>(7420i, -1i)) ^ _wgslsmith_clamp_i32(1i | u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(49416i, u_input.b), vec2<i32>(-38410i, 1035i)), ~global0.d)), func_5(vec4<u32>(func_4(func_3(vec4<bool>(false, false, true, global0.a.x)), !global0.e.x, select(vec3<bool>(global0.a.x, true, global0.a.x), global0.a, true)), firstLeadingBit(~u_input.c.x), 42861u, _wgslsmith_dot_vec2_u32(~u_input.d, ~vec2<u32>(u_input.c.x, u_input.a))), Struct_5(global0.b, vec3<u32>(~4294967295u, ~0u, u_input.a))));
    var var_1 = Struct_4(global0.a, global0.b, Struct_3(1i, _wgslsmith_f_op_f32(global0.c.b - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-192f * 1784f)))), u_input.b & global0.d, !(!func_5(abs(vec4<u32>(7721u, u_input.a, u_input.a, u_input.d.x)), Struct_5(u_input.b, vec3<u32>(15276u, 1u, 56783u)))));
    return Struct_5(_wgslsmith_mult_i32(~firstTrailingBit(0i), firstLeadingBit(u_input.b)), vec3<u32>(~12983u, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, 19642u, 41234u), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.c.x))), 10202u) ^ vec3<u32>(1u, 1u, 1u));
}

fn func_6(arg_0: Struct_5) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_add_i32(arg_0.a ^ 2147483647i, _wgslsmith_div_i32(arg_0.a, 8870i) & _wgslsmith_mult_i32(12972i, 0i)) << (min(_wgslsmith_clamp_u32(1u, 32777u, abs(6503u)), 4294967295u | u_input.c.x) % 32u), global0.c.b);
    var var_1 = false & global0.e.x;
    let var_2 = max(41771u, reverseBits(0u));
    var var_3 = vec3<u32>(firstLeadingBit(func_4(-3507i, !(35023u >= u_input.d.x), !select(vec3<bool>(false, global0.e.x, global0.a.x), vec3<bool>(global0.a.x, false, global0.a.x), global0.e.x))), _wgslsmith_add_u32(u_input.d.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, u_input.d.x, arg_0.b.x, u_input.d.x), vec4<u32>(6506u, 1u, 4294967295u, 32387u)), _wgslsmith_mult_u32(arg_0.b.x, var_2))), ~var_2);
    var_1 = !(select(var_2, 4294967295u, false) > ~_wgslsmith_dot_vec2_u32(arg_0.b.xy, var_3.yz));
    return Struct_4(select(!(!(!vec3<bool>(true, global0.a.x, false))), vec3<bool>(global0.e.x, global0.c.b >= _wgslsmith_f_op_f32(-1431f - global0.c.b), true), ((i32(-1i) * -2147483647i) > global0.d) | false), abs(-_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a, global0.d, 35765i, arg_0.a), ~vec4<i32>(var_0.a, var_0.a, -1074i, arg_0.a))), Struct_3((_wgslsmith_mod_i32(global0.c.a, 0i) << (104707u % 32u)) << (u_input.c.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))))), arg_0.a, select(select(vec2<bool>(any(global0.a), all(vec4<bool>(global0.e.x, global0.e.x, global0.a.x, true))), !func_5(vec4<u32>(4294967295u, 70121u, 4294967295u, 11066u), arg_0), select(!global0.a.zz, select(global0.a.zx, global0.e, vec2<bool>(global0.a.x, false)), global0.a.x)), global0.a.yx, var_3.x != arg_0.b.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_f_op_f32(f32(-1f) * -947f));
    global0 = func_6(func_2());
    let var_1 = vec2<f32>(var_0, _wgslsmith_f_op_f32(exp2(global0.c.b)));
    var var_2 = firstLeadingBit(arg_0);
    var var_3 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.a) & 0u, u_input.a), 0u);
    return Struct_3(0i, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = func_1(vec3<i32>(1i, u_input.b, _wgslsmith_mod_i32(3367i, _wgslsmith_clamp_i32(abs(global0.c.a), -1i, -19907i))), 27355i);
    let var_2 = Struct_2(41237i, vec3<u32>(24215u, ~u_input.d.x, u_input.a));
    let var_3 = Struct_1(var_2.a, countOneBits(vec2<i32>(~var_0, _wgslsmith_mod_i32(var_1.a, u_input.b))) | countOneBits(max(select(vec2<i32>(var_0, var_0), vec2<i32>(var_1.a, 31810i), global0.a.zx), _wgslsmith_mult_vec2_i32(vec2<i32>(-15704i, u_input.b), vec2<i32>(13831i, -14171i)))), var_1.b);
    let var_4 = func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-(~var_1.a), i32(-1i) * -12957i, var_2.a), vec3<i32>(-2147483647i, -_wgslsmith_div_i32(-1i, -1i), -29517i)), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-805f, -296f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-668f, var_1.b)))))), _wgslsmith_f_op_f32(var_3.c - var_3.c), _wgslsmith_div_u32(~_wgslsmith_mod_u32(var_2.b.x, firstLeadingBit(4294967295u)), _wgslsmith_clamp_u32(~1u, ~21524u, var_2.b.x) & ~func_2().b.x));
}

