struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_2, 12>;

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    return _wgslsmith_add_u32(select(93242u, ~(~(~u_input.a.x)), true), 67163u);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_4(Struct_1(abs(reverseBits(~u_input.a.x)), ~_wgslsmith_add_u32(func_3(), global3.a), select(firstTrailingBit(~vec4<u32>(27298u, u_input.b.x, 1u, global3.b)), _wgslsmith_sub_vec4_u32(global3.c, ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 0u)), any(vec2<bool>(true, false)))));
    let var_1 = global2[_wgslsmith_index_u32(global3.b, 12u)];
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(ceil(329f)))), Struct_1(4294967295u, (_wgslsmith_clamp_u32(4294967295u, var_1.c.b, 45837u) | 37063u) | 4294967295u, _wgslsmith_mod_vec4_u32(~vec4<u32>(global3.c.x, 42967u, u_input.b.x, 15156u), select(vec4<u32>(4294967295u, 1u, global3.a, 1u), select(vec4<u32>(var_1.c.a, u_input.a.x, var_1.c.a, u_input.a.x), var_1.c.c, vec4<bool>(true, false, false, var_1.d)), select(vec4<bool>(var_1.d, true, var_1.d, var_1.d), vec4<bool>(true, false, var_1.d, var_1.d), vec4<bool>(var_1.d, var_1.d, false, var_1.d))))), all(vec4<bool>(var_1.d, var_1.d, ~var_0.a.b >= var_1.c.a, true)));
    let var_3 = Struct_2(-1000f, var_2.b, Struct_1(abs(0u), 64883u, abs(~reverseBits(vec4<u32>(1u, 0u, u_input.a.x, var_1.c.a)))), var_1.d);
    let var_4 = 60753u;
    return select(!select(vec4<bool>(true != var_2.d, select(var_1.d, true, false), var_2.d, true), select(vec4<bool>(true, var_3.d, true, false), select(vec4<bool>(true, false, var_2.d, false), vec4<bool>(true, var_2.d, false, var_3.d), vec4<bool>(false, var_3.d, true, false)), select(vec4<bool>(false, false, false, var_3.d), vec4<bool>(var_2.d, false, var_3.d, true), var_1.d)), !(!var_2.d)), !select(select(select(vec4<bool>(var_3.d, false, true, var_2.d), vec4<bool>(var_1.d, true, false, var_2.d), true), vec4<bool>(true, var_1.d, false, var_2.d), !var_2.d), select(vec4<bool>(false, var_1.d, var_1.d, false), vec4<bool>(var_1.d, true, true, true), true), !(!vec4<bool>(var_1.d, false, var_3.d, var_3.d))), false);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = vec3<bool>(all(!(!vec3<bool>(arg_1, arg_1, arg_1))) & true, any(vec2<bool>(true, (0u << (arg_0 % 32u)) >= ~global3.b)), !arg_1);
    let var_1 = select(!vec4<bool>(true, !(!var_0.x), all(vec3<bool>(var_0.x, arg_1, true)), true), select(!vec4<bool>(true, true, any(vec3<bool>(false, var_0.x, false)), any(vec4<bool>(true, true, false, var_0.x))), select(select(select(vec4<bool>(arg_1, arg_1, var_0.x, var_0.x), vec4<bool>(true, arg_1, false, var_0.x), var_0.x), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(arg_1, false, arg_1, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false)), any(vec3<bool>(var_0.x, arg_1, false))), select(vec4<bool>(var_0.x, arg_1, var_0.x, false), func_2(), !vec4<bool>(var_0.x, true, false, true)), !func_2()), !vec4<bool>(true, true, var_0.x, any(vec4<bool>(true, false, true, var_0.x)))), false);
    var var_2 = vec3<f32>(1084f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1273f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1661f) + _wgslsmith_f_op_f32(-861f - 711f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1178f - -1000f)), -548f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(339f, -347f)), _wgslsmith_f_op_f32(f32(-1f) * -1036f)))));
    let var_3 = firstTrailingBit(arg_2.x);
    global3 = Struct_1(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(global3.c, vec4<u32>(_wgslsmith_div_u32(29886u, global3.c.x), _wgslsmith_clamp_u32(52692u, arg_2.x, 0u), func_3(), var_3)), ~abs(arg_2) & _wgslsmith_mult_vec4_u32(global3.c, select(global3.c, global3.c, vec4<bool>(arg_1, arg_1, arg_1, arg_1)))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2792u << (arg_2.x % 32u), 4294967295u, arg_0), vec3<u32>(var_3, 40175u, 0u)), ~1u, var_3, u_input.a.x));
    return Struct_3(select(vec4<bool>(!all(var_0.xz), var_1.x, true, !(var_0.x & arg_1)), !vec4<bool>(arg_1, arg_1, true, var_0.x == false), var_1), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1279f * var_2.x)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1035f), -540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, 464f)))), Struct_1(select(_wgslsmith_sub_u32(var_3, 51013u), _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(108694u, u_input.a.x, 51603u, u_input.a.x)), !var_0.x), (15157u >> (arg_2.x % 32u)) << (1u % 32u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(71119u, global3.b, arg_2.x, global3.a), arg_2), arg_0, u_input.a.x, ~42768u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)) + _wgslsmith_f_op_f32(trunc(var_2.x))) >= _wgslsmith_f_op_f32(-898f * _wgslsmith_div_f32(var_2.x, var_2.x))), global3.c, _wgslsmith_div_vec3_i32(firstLeadingBit(~countOneBits(vec3<i32>(2147483647i, 2147483647i, -1i))), _wgslsmith_sub_vec3_i32(reverseBits(firstTrailingBit(vec3<i32>(0i, 22205i, -57060i))), vec3<i32>(254i, abs(-7212i), 2147483647i))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mult_u32(1u, 34614u), -max(~(-1227i), -37036i) <= (1i | firstTrailingBit(~(-2147483647i))), ~global3.c);
    var var_1 = Struct_3(select(var_0.a, select(!(!var_0.a), vec4<bool>(false, true, true, false || var_0.b.d), true), var_0.a), Struct_2(-769f, vec3<f32>(584f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e * var_0.b.b.x), func_1(75421u, true, vec4<u32>(var_0.b.c.c.x, 1u, global3.b, 1u)).e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.a)) + _wgslsmith_f_op_f32(295f - var_0.e))), Struct_1(~(~var_0.b.c.b), 7394u, (vec4<u32>(global3.b, global3.c.x, global3.a, var_0.c.x) >> (global3.c % vec4<u32>(32u))) >> (vec4<u32>(global3.b, 1u, u_input.a.x, 4294967295u) % vec4<u32>(32u))), !(var_0.b.d && var_0.a.x)), select(~vec4<u32>(_wgslsmith_mod_u32(4294967295u, 6931u), ~var_0.b.c.c.x, ~global3.a, 20848u), vec4<u32>(abs(var_0.c.x), 66497u, ~38759u, abs(abs(var_0.b.c.c.x))), vec4<bool>(var_0.a.x, false, true, select(any(vec3<bool>(true, true, var_0.a.x)), any(vec3<bool>(var_0.b.d, var_0.b.d, var_0.a.x)), true))), var_0.d, -702f);
    let var_2 = Struct_3(vec4<bool>((_wgslsmith_f_op_f32(var_0.e * var_1.e) > var_0.e) && ((4294967295u ^ var_0.b.c.c.x) >= ~27345u), true, all(!var_0.a) == (_wgslsmith_f_op_f32(min(var_0.b.b.x, var_0.e)) <= _wgslsmith_f_op_f32(709f + var_0.e)), false), var_0.b, global3.c, select(abs(_wgslsmith_mod_vec3_i32(-var_0.d, var_1.d << (global3.c.xwx % vec3<u32>(32u)))), abs(vec3<i32>(-1i, _wgslsmith_div_i32(var_1.d.x, 25044i), 1i)), var_0.a.x), _wgslsmith_f_op_f32(-var_0.e));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -432f);
    var var_4 = func_1(0u, var_1.a.x, vec4<u32>(var_0.c.x ^ 1u, 38409u, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(var_2.b.c.b, 2236u, var_0.b.c.b, var_0.b.c.c.x)), ~vec4<u32>(8878u, 0u, var_0.b.c.a, 13385u)), _wgslsmith_mod_u32(~u_input.a.x, global3.a) & ((var_2.c.x >> (global3.b % 32u)) & global3.a))).b.c;
    var var_5 = _wgslsmith_sub_vec4_i32(~vec4<i32>(firstTrailingBit(2138i << (global3.c.x % 32u)), _wgslsmith_dot_vec2_i32(var_0.d.zy << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), min(var_1.d.xz, vec2<i32>(var_2.d.x, var_1.d.x))), abs(0i), 89616i), firstLeadingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_2.d.x, 1i, -22042i, var_1.d.x)), ~abs(vec4<i32>(-21977i, var_1.d.x, var_1.d.x, var_1.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1105f, -377f, var_0.b.a, -437f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 945f, var_2.b.a, var_1.e), vec4<f32>(var_1.e, var_2.e, -906f, 1169f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, 1000f, -222f, 619f) - vec4<f32>(425f, var_1.b.b.x, var_2.e, -1000f))))), vec4<f32>(var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e, var_0.b.a)), _wgslsmith_f_op_f32(ceil(var_2.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))), var_2.a)), -843f, _wgslsmith_f_op_f32(ceil(-834f)));
}

