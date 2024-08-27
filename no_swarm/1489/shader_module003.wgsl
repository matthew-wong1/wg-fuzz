struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: array<f32, 5> = array<f32, 5>(-1401f, 547f, -484f, 372f, -728f);

var<private> global2: i32;

var<private> global3: f32 = 100f;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 23u)];
    let var_1 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(_wgslsmith_mod_u32(~u_input.c, ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, 61457u), u_input.a), ~4294967295u), ~((vec3<u32>(6737u, 0u, u_input.a) ^ vec3<u32>(14051u, 17686u, u_input.a)) ^ (vec3<u32>(0u, 6307u, 1u) >> (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u)))), !(!all(vec3<bool>(true, false, arg_0)))), vec3<u32>(u_input.a, abs(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2616u, u_input.a, u_input.c), vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.a)))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4475u), select(vec2<u32>(0u, 4294967295u), vec2<u32>(48743u, u_input.c), false))));
    let var_2 = Struct_1(-998f, select(~(~vec2<u32>(u_input.a, u_input.c)), abs(vec2<u32>(select(u_input.c, u_input.c, false), 1u)), false), vec4<f32>(506f, _wgslsmith_div_f32(1000f, -619f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-867f)))), _wgslsmith_f_op_f32(-460f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(379f)), _wgslsmith_f_op_f32(var_0.x - 553f)))), select(vec4<bool>(arg_0, false, !all(vec4<bool>(false, arg_0, false, false)), (456f >= global1[_wgslsmith_index_u32(1u, 5u)]) && (2147483647i <= u_input.d)), vec4<bool>(any(vec4<bool>(arg_0, true, arg_0, arg_0)), true, false, false), any(!(!vec4<bool>(arg_0, arg_0, arg_0, false)))), select(!(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, arg_0))), !(!select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, false, false))), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 5u)])) != _wgslsmith_f_op_f32(var_0.x - 1545f)));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(var_2.c.xyw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, 1368f, 248f) + vec3<f32>(var_0.x, -270f, var_2.c.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-769f, var_0.x, -785f), var_2.c.zwy, var_2.e))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_2.b.x, 23u)] - vec3<f32>(1564f, 1084f, var_2.c.x))))))), global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(30242u, 85549u)), ~_wgslsmith_dot_vec3_u32(~var_1, var_1)), 23u)]));
    global2 = u_input.d;
    return arg_0;
}

fn func_2() -> u32 {
    global0 = array<vec3<f32>, 23>();
    let var_0 = countOneBits(u_input.a);
    let var_1 = select(select(select(vec2<bool>(true, var_0 < 1u), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), -47621i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-22300i, u_input.d, 28999i), vec3<i32>(13873i, -1i, -1i))), vec2<bool>(true, true), !(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(7407u, 5u)]) != _wgslsmith_f_op_f32(613f * 1644f))), select(vec2<bool>(true, true), select(vec2<bool>(true, u_input.b.x == u_input.e), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec3<bool>(false, false, false))), true), all(vec3<bool>(true, true, false))), true && ((-u_input.d >= -u_input.d) || !func_3(false)));
    global1 = array<f32, 5>();
    let var_2 = Struct_2(!var_1.x, Struct_1(global1[_wgslsmith_index_u32(var_0, 5u)], vec2<u32>(~(~0u), ~1u >> (~var_0 % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(46318u, 5u)]), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0, 5u)], global1[_wgslsmith_index_u32(46829u, 5u)], var_1.x)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(27898u, 5u)], -404f), -716f), vec4<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(33205u, 5u)])), _wgslsmith_f_op_f32(476f + global1[_wgslsmith_index_u32(u_input.a, 5u)]), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 5u)])), -126f), var_1.x)), !select(!vec4<bool>(false, var_1.x, false, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x), !vec4<bool>(var_1.x, true, var_1.x, true)), select(select(select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, false, var_1.x), true)), vec3<bool>(true, func_3(true), !var_1.x), select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_1.x), vec3<bool>(true, true, true)))), ~(~(~vec4<u32>(3862u, u_input.c, u_input.a, u_input.a))), 30925u);
    return firstTrailingBit(~(~1u << (_wgslsmith_dot_vec3_u32(var_2.c.xyy, var_2.c.yxy) % 32u)) & var_2.c.x);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(u_input.c, firstLeadingBit(~_wgslsmith_mod_u32(max(u_input.c, 1u), func_2())));
    global2 = 20539i;
    var var_1 = _wgslsmith_mod_vec4_i32(~(-vec4<i32>(-1i, u_input.d | u_input.b.x, u_input.b.x, ~u_input.b.x)), firstLeadingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.e, u_input.e, 16221i), vec4<i32>(-16964i, 2147483647i, u_input.d, u_input.e))) >> (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(15656u, u_input.c, 34571u, var_0)), vec4<u32>(_wgslsmith_add_u32(1062u, 45309u), 0u, 0u, var_0)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0)))), -737f, 128f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(var_0, 23u)]) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(0u, 5u)], 269f, -604f)))))), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(341f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-580f + 1751f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(267f, global1[_wgslsmith_index_u32(var_0, 5u)], global1[_wgslsmith_index_u32(41273u, 5u)]) * vec3<f32>(537f, arg_0, global1[_wgslsmith_index_u32(0u, 5u)])))))));
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(19846u, var_0) ^ vec2<u32>(4294967295u, 1870u ^ u_input.c), vec2<u32>(u_input.a, var_0), !vec2<bool>(var_0 < 40906u, global1[_wgslsmith_index_u32(u_input.c, 5u)] <= var_2.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0, 63189u), vec2<u32>(u_input.c, 1u))) ^ ~abs(vec2<u32>(u_input.c, 1u)), min(reverseBits(~vec2<u32>(var_0, 1u)), vec2<u32>(firstLeadingBit(1371u), ~4294967295u)))), 23u)];
    return Struct_2(!any(vec3<bool>(true, u_input.c < var_0, all(vec3<bool>(true, false, true)))), Struct_1(arg_0, abs(select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, u_input.c), vec2<u32>(40879u, 29991u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(10186u, 39156u)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -530f, -681f, var_2.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -2214f, global1[_wgslsmith_index_u32(9316u, 5u)], arg_0))))), vec4<bool>(true, true, true, true), vec3<bool>(true, false, all(vec3<bool>(false, true, true)))), ~vec4<u32>(u_input.a, u_input.c, _wgslsmith_mod_u32(5389u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, u_input.c), vec2<u32>(4294967295u, var_0))), countOneBits(abs(var_0))), _wgslsmith_mod_u32(~12888u, ~1u));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 5u)] + -767f)))) - arg_1.b.c.x), arg_1.c.xy, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(1u, 5u)], arg_1.b.c.x, global1[_wgslsmith_index_u32(49710u, 5u)]))))))), vec4<bool>(arg_1.b.e.x, true || (global1[_wgslsmith_index_u32(arg_1.b.b.x, 5u)] >= _wgslsmith_f_op_f32(round(1439f))), false, any(!(!vec2<bool>(false, arg_1.a)))), select(arg_1.b.e, !select(!vec3<bool>(arg_1.a, true, true), vec3<bool>(arg_1.b.e.x, true, arg_1.b.d.x), true), arg_1.b.e));
    global1 = array<f32, 5>();
    var var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(-213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1116f)) + _wgslsmith_f_op_f32(ceil(1022f)))), func_3(var_1.b.d.x))), ~var_1.c.xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, var_1.b.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(193f * var_1.b.c.x), global1[_wgslsmith_index_u32(var_1.b.b.x, 5u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(201f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.c.x, 5u)])))), select(!(!select(var_0.d, vec4<bool>(true, arg_1.a, true, true), false)), arg_1.b.d, var_0.d), var_1.b.d.yzx);
    let var_3 = select(vec2<bool>(true, !(var_1.b.e.x || all(var_1.b.e.zx))), !select(select(!var_1.b.e.yz, var_2.e.xz, var_2.e.xy), func_1(_wgslsmith_f_op_f32(step(210f, var_1.b.c.x))).b.d.zx, true), all(select(vec2<bool>(false, func_1(var_1.b.a).b.d.x), vec2<bool>(false, false), func_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 5u)] - var_0.c.x)).b.e.zy)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) - _wgslsmith_div_f32(-948f, -182f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1.b.c.x)))), _wgslsmith_f_op_f32(-183f - var_1.b.a))), -341f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_mod_i32(u_input.b.x, 1i), func_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 5u)])), abs(1u))));
    let var_1 = func_1(global1[_wgslsmith_index_u32(1u, 5u)]).b;
    let var_2 = func_1(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.b, vec2<u32>(var_1.b.x, 15500u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 13004u, 58951u), vec4<u32>(u_input.c, 62483u, 0u, var_1.b.x)), ~9294u))), 5u)]).b;
    let var_3 = func_1(_wgslsmith_f_op_f32(var_1.c.x + var_0.x));
    let var_4 = func_1(var_1.c.x).b;
    let var_5 = var_3;
    var var_6 = true;
    var var_7 = var_5;
    global0 = array<vec3<f32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.b.x, 39585i, _wgslsmith_dot_vec3_u32(var_3.c.xyx, vec3<u32>(~(~26991u), ~var_1.b.x >> (_wgslsmith_add_u32(u_input.c, u_input.a) % 32u), ~(~48867u))));
}

