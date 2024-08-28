struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-836i, -1i), vec2<i32>(33229i, 13037i), vec2<i32>(2147483647i, -7002i), vec2<i32>(0i, 1i), vec2<i32>(1i, -45968i), vec2<i32>(0i, -23092i), vec2<i32>(1024i, 32100i), vec2<i32>(13571i, -46137i), vec2<i32>(-66352i, 22109i), vec2<i32>(26304i, 27257i));

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-789f, -1031f));

var<private> global2: f32 = 521f;

var<private> global3: Struct_1 = Struct_1(1u);

var<private> global4: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(1u)), Struct_2(Struct_1(0u)), Struct_2(Struct_1(4294967295u)), Struct_2(Struct_1(0u)), Struct_2(Struct_1(4294967295u)), Struct_2(Struct_1(1u)));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global3 = Struct_1(global3.a);
    let var_0 = Struct_3(max(global3.a, (global3.a >> (88851u % 32u)) & global3.a), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), 2147483647i <= u_input.a.x)), vec3<i32>(-22021i, u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -3604i, u_input.a.x), u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))) | vec3<i32>(-2147483647i, firstTrailingBit(u_input.a.x) ^ _wgslsmith_add_i32(-1i, -1i), ~reverseBits(-1i)), Struct_2(Struct_1(_wgslsmith_div_u32(global3.a, global3.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, global3.a, global3.a), vec3<u32>(global3.a, 4294967295u, 11986u)) % 32u))));
    let var_1 = abs(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 35633u, 0u), vec4<u32>(1u, 42482u, global3.a, 67988u)), vec4<u32>(var_0.a, global3.a, 21572u, 0u) | vec4<u32>(1u, 4294967295u, 4294967295u, 70246u))) ^ 45847u;
    global0 = array<vec2<i32>, 10>();
    global4 = array<Struct_2, 6>();
    return var_0.b & true;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    var var_0 = Struct_5(func_3(), Struct_3(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, 26296u, global3.a), vec3<u32>(0u, global3.a, global3.a))), _wgslsmith_clamp_u32(~global3.a, _wgslsmith_add_u32(global3.a, global3.a), ~0u)), true & !all(vec2<bool>(arg_0.x, arg_0.x)), u_input.a, Struct_2(Struct_1(reverseBits(global3.a)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(948f)) * -977f), _wgslsmith_div_f32(-862f, _wgslsmith_div_f32(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))), -1030f, _wgslsmith_f_op_f32(517f - _wgslsmith_div_f32(_wgslsmith_div_f32(937f, arg_1.x), _wgslsmith_f_op_f32(abs(-239f))))), select(select(vec3<bool>(global3.a <= 66605u, false, any(vec2<bool>(true, arg_0.x))), arg_0, vec3<bool>(arg_1.x < -127f, false, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, true), arg_0, vec3<bool>(arg_0.x, any(vec4<bool>(true, true, true, arg_0.x)), global3.a >= 4294967295u)), (_wgslsmith_mod_u32(global3.a, 4294967295u) & ~global3.a) > ~global3.a));
    global4 = array<Struct_2, 6>();
    global1 = array<vec2<f32>, 1>();
    return Struct_1(~global3.a);
}

fn func_1() -> vec2<bool> {
    let var_0 = -(~abs(u_input.a.x));
    let var_1 = Struct_2(func_2(vec3<bool>(true && any(vec4<bool>(true, true, true, false)), any(vec3<bool>(false, false, true)) & true, (global3.a >= 1u) || all(vec4<bool>(false, true, false, false))), vec3<f32>(_wgslsmith_f_op_f32(-1101f - -296f), -487f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(164f)), _wgslsmith_f_op_f32(1041f - -196f))))));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(select(u_input.a.x, max(u_input.a.x, -88238i), !any(vec3<bool>(false, true, false))) << (max(reverseBits(firstLeadingBit(global3.a)), global3.a) % 32u));
    let var_1 = !select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_1()), false);
    let var_2 = select(select(!vec3<bool>(true, true, var_1.x), vec3<bool>(false, all(vec2<bool>(false, false)) & all(vec4<bool>(true, false, true, var_1.x)), var_1.x), false), select(vec3<bool>(true, var_1.x, var_0 <= u_input.a.x), !vec3<bool>(true, func_3(), all(var_1)), select(vec3<bool>(func_1().x, true, var_1.x), select(select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, false, true), var_1.x), select(vec3<bool>(false, false, false), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, true)), true), true)), select(vec3<bool>(!(!var_1.x), any(var_1), true), !(!select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, false, false), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f)))) < _wgslsmith_f_op_f32(f32(-1f) * -1996f)));
    let var_3 = Struct_5(true, Struct_3(global3.a >> (_wgslsmith_add_u32(_wgslsmith_add_u32(global3.a, global3.a), global3.a) % 32u), true, ~vec3<i32>(u_input.a.x >> (global3.a % 32u), 2147483647i << (global3.a % 32u), select(u_input.a.x, 1i, true)), Struct_2(func_2(select(vec3<bool>(var_2.x, true, var_1.x), var_2, var_1.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(622f, 1264f, 729f)))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(228f + 1000f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(633f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-352f, 1078f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1393f - 949f))), -1232f), vec3<bool>(any(func_1()), all(var_2), any(!select(vec3<bool>(var_2.x, var_2.x, var_1.x), var_2, var_2.x))));
    var var_4 = Struct_4(var_3.b.a);
    var var_5 = countOneBits(~abs(~(vec4<u32>(global3.a, global3.a, 0u, 12521u) ^ vec4<u32>(4294967295u, var_4.a, 0u, var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -885f), 664f))), ((0i << (var_4.a % 32u)) & -28507i) ^ firstTrailingBit(u_input.a.x << (66543u % 32u)), -firstTrailingBit(-var_3.b.c) | vec3<i32>(-(~var_0), -u_input.a.x, _wgslsmith_sub_i32(1i, var_3.b.c.x)), 655f, vec2<i32>(-1i, _wgslsmith_mult_i32(-56183i, abs(var_0)) << (25007u % 32u)));
}

