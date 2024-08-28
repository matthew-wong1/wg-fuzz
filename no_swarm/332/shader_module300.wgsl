struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_3, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_5) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-31709i, _wgslsmith_clamp_i32(arg_3.b.x, -38883i, 29755i), -u_input.c, 1i), vec4<i32>(-1959i, _wgslsmith_mod_i32(max(5509i ^ arg_2.x, _wgslsmith_add_i32(global0.b.x, u_input.c)), _wgslsmith_div_i32(~(-16308i), u_input.c | arg_2.x)), -38702i, i32(-1i) * -2147483647i));
    global0 = arg_3;
    var_0 = _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(~(~vec2<i32>(2147483647i, arg_3.b.x)), vec2<i32>(min(global0.b.x, 0i), ~arg_3.b.x)), abs(~(-_wgslsmith_mult_vec2_i32(arg_2.yx, vec2<i32>(arg_2.x, arg_2.x)))));
    var_0 = ~arg_3.b.x;
    var var_1 = arg_1;
    return ~((1u << (select(_wgslsmith_dot_vec2_u32(arg_1.b.zy, vec2<u32>(u_input.d.x, var_1.b.x)), _wgslsmith_div_u32(arg_1.b.x, var_1.b.x), true) % 32u)) >> (46546u % 32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_5 {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.c, 7557i), select(vec2<i32>(arg_1.c, -23507i), vec2<i32>(global0.b.x, 4945i), true)) << (0u % 32u)), 1i, -50151i, countOneBits(_wgslsmith_mod_i32(firstLeadingBit(~u_input.c), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 12255i, 26707i, arg_1.c), global0.b))));
    global1 = array<Struct_3, 29>();
    var var_1 = arg_0.x;
    global0 = Struct_5(firstLeadingBit(global0.a) | vec2<u32>(arg_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, arg_1.b.x, 1u) << (u_input.d.zwz % vec3<u32>(32u)), vec3<u32>(global0.a.x, global0.a.x, 12410u))), vec4<i32>(-1i) * -vec4<i32>(103537i, firstTrailingBit(global0.b.x), 1i >> (0u % 32u), firstLeadingBit(0i)));
    let var_2 = true;
    return Struct_5(select(vec2<u32>(u_input.a, u_input.b), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(53151u, global0.a.x), global0.a, arg_1.a < -657f), vec2<u32>(func_3(Struct_1(vec3<f32>(arg_1.a, -1088f, arg_1.a), u_input.d), Struct_1(vec3<f32>(-272f, 2134f, 1530f), u_input.d), vec3<i32>(6149i, arg_1.c, 1i), Struct_5(vec2<u32>(1u, 50152u), vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.c))), abs(4294967295u)), ~(~u_input.d.zw)), all(arg_0)), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), -var_0.x, global0.b.x, var_0.x));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> Struct_5 {
    global0 = func_2(select(vec3<bool>(!any(vec2<bool>(true, false)), true, select(false, false, true)), vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), Struct_3(arg_0.a, firstLeadingBit(u_input.d), _wgslsmith_mult_i32((0i & u_input.c) << (61863u % 32u), -reverseBits(-2147483647i))));
    var var_0 = arg_0.b.wx;
    var var_1 = Struct_5(arg_0.b.yy, global0.b);
    global1 = array<Struct_3, 29>();
    let var_2 = -1245f;
    return func_2(vec3<bool>(any(vec3<bool>(all(vec4<bool>(false, true, false, false)), false, false)), any(vec3<bool>(false, false, false)) | false, true), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-164f, _wgslsmith_f_op_f32(-1513f - -1458f))), arg_1.b, _wgslsmith_mult_i32(arg_2 & ~1i, -40978i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_3(-1330f, vec4<u32>(0u, 4412u, ~397u, global0.a.x), _wgslsmith_mult_i32(u_input.c, -select(global0.b.x, 57538i, true))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-648f, 163f, 158f)) + vec3<f32>(1f, 1f, 1f))), vec4<u32>(_wgslsmith_div_u32(44689u, 49983u), u_input.b, _wgslsmith_sub_u32(4294967295u, global0.a.x), u_input.d.x ^ 53948u) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(42654u, 19696u, global0.a.x, global0.a.x), vec4<u32>(global0.a.x, 27540u, u_input.d.x, 5484u))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), global0.b.zw) << (countOneBits(global0.a) % vec2<u32>(32u)), vec2<i32>(u_input.c, -global0.b.x)), firstLeadingBit(-1i)));
    global0 = func_2(vec3<bool>(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), select(select(any(vec2<bool>(true, false)), true, true), true, (u_input.a >> (global0.a.x % 32u)) <= 1u), true), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -378f)), -1000f, false || all(vec4<bool>(true, true, false, true)))), vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(15782u, u_input.d.x, u_input.b, global0.a.x))), global0.a.x, _wgslsmith_mod_u32(func_2(vec3<bool>(false, true, false), Struct_3(-134f, u_input.d, -27734i)).a.x, func_2(vec3<bool>(false, true, false), Struct_3(132f, vec4<u32>(1u, 4294967295u, 2908u, 7504u), u_input.c)).a.x), u_input.a), _wgslsmith_clamp_i32(~0i, u_input.c, ~(i32(-1i) * -3677i))));
    global0 = func_1(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -737f), u_input.d | select(vec4<u32>(101493u, global0.a.x, global0.a.x, 4294967295u), vec4<u32>(global0.a.x, 1u, 1u, 9102u), false), (~global0.b.x ^ global0.b.x) & max(_wgslsmith_clamp_i32(global0.b.x, global0.b.x, u_input.c), ~9748i)), Struct_1(vec3<f32>(1f, 1f, 1f), select(_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(57885u, 36715u, 1u, 87032u)) >> (select(u_input.d, vec4<u32>(1u, u_input.d.x, 0u, u_input.d.x), false) % vec4<u32>(32u)), u_input.d, vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, false, true, false)), global0.b.x < -645i, any(vec4<bool>(false, true, true, true))))), -25283i);
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1449f)), _wgslsmith_f_op_f32(f32(-1f) * -1279f), true)), select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.a, u_input.b), vec4<u32>(0u, global0.a.x, 24387u, global0.a.x)), u_input.d, select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))) >> (~(vec4<u32>(82016u, 4294967295u, global0.a.x, global0.a.x) ^ u_input.d) % vec4<u32>(32u)), firstTrailingBit(-u_input.c)));
    let var_1 = -_wgslsmith_dot_vec2_i32(global0.b.zx, ~global0.b.xw);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c, var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.c, -11328i, 2147483647i), max(global0.b.zzy, global0.b.yww)), -4707i) >> (~var_0.a.b % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, -523f, var_0.a.a) - vec3<f32>(var_0.a.a, -1523f, var_0.a.a)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(223f, 966f, var_0.a.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.a, var_0.a.a, -723f), vec3<f32>(var_0.a.a, var_0.a.a, 1715f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-643f, var_0.a.a, var_0.a.a))))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-187f, -1000f, _wgslsmith_f_op_f32(trunc(var_0.a.a)))))));
}

