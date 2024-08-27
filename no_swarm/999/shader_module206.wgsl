struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<f32>(-2001f, 1537f, 1000f, 1057f), 23743i, false), Struct_1(vec4<f32>(-178f, -597f, 768f, -313f), 38350i, true), Struct_1(vec4<f32>(-957f, -1000f, -999f, -1000f), 26398i, false), Struct_1(vec4<f32>(-223f, -1372f, -1458f, -2643f), i32(-2147483648), true), Struct_1(vec4<f32>(-878f, -605f, -705f, -192f), 31463i, true), Struct_1(vec4<f32>(2329f, 1000f, 988f, 314f), 2147483647i, false), Struct_1(vec4<f32>(-382f, -2648f, 548f, -372f), -9856i, true), Struct_1(vec4<f32>(1644f, 110f, -1038f, -1719f), 62390i, false), Struct_1(vec4<f32>(413f, -469f, -1000f, 787f), 12403i, false), Struct_1(vec4<f32>(-1643f, -508f, 155f, 1037f), 2147483647i, false));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: Struct_1;

var<private> global3: array<vec2<i32>, 17>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    return global0[_wgslsmith_index_u32(~(u_input.a << (4832u % 32u)), 10u)];
}

fn func_3() -> f32 {
    var var_0 = 4294967295u;
    var var_1 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(u_input.b.x, u_input.a)), 10u)];
    let var_2 = 1i;
    let var_3 = global0[_wgslsmith_index_u32((~u_input.a >> (u_input.b.x % 32u)) | u_input.a, 10u)];
    var_1 = func_2(!select(!vec3<bool>(var_1.c, false, var_3.c), vec3<bool>(global2.c != global2.c, !var_3.c, true), select(vec3<bool>(global1.x, global2.c, var_3.c), select(vec3<bool>(global1.x, var_3.c, global2.c), vec3<bool>(global2.c, false, var_1.c), true), any(vec2<bool>(var_3.c, false)))), true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-608f, _wgslsmith_f_op_f32(var_3.a.x * 1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, var_1.a.x) * var_3.a.xz)))));
    return global2.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_3, -3320i, -57928i), -vec3<i32>(arg_3, -2147483647i, u_input.c.x)), vec3<i32>(-global2.b, _wgslsmith_add_i32(0i, global2.b), arg_3) ^ min(-vec3<i32>(4923i, 15458i, -36312i), abs(vec3<i32>(1i, arg_0.b, 61088i)))) ^ (vec3<i32>(-1i) * -vec3<i32>(0i, global2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, 0i, arg_3, 13777i), vec4<i32>(u_input.c.x, arg_0.b, arg_3, arg_3))));
    var_0 = vec2<u32>(~4294967295u, min(140388u, ~arg_1));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.a.zw))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 + arg_0.a.x), -1083f)), arg_2) + global2.a.xw));
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(2233f * _wgslsmith_f_op_f32(-185f * arg_0.a.x)), _wgslsmith_f_op_f32(-1840f + arg_0.a.x))), func_2(!vec3<bool>(global1.x, arg_0.c, false), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.yz * vec2<f32>(arg_0.a.x, arg_2)) - vec2<f32>(arg_2, var_3.a.x))).b & -17827i, arg_0.c);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global1 = select(select(vec2<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(arg_1.c, false, arg_2)))), vec2<bool>(any(select(vec2<bool>(true, arg_2), vec2<bool>(false, false), arg_2)), !global2.c), abs(u_input.a) > 1u), vec2<bool>(global2.c, !(1211f <= _wgslsmith_f_op_f32(arg_0 * -1254f))), select(global2.c, true, global2.c));
    global2 = func_2(select(vec3<bool>(select(true, global2.a.x == global2.a.x, any(vec2<bool>(global2.c, global2.c))), ~u_input.a > countOneBits(u_input.b.x), global2.c), vec3<bool>(all(!vec4<bool>(global2.c, arg_2, true, arg_2)), true, false), select(vec3<bool>(global2.c, func_2(vec3<bool>(true, false, global2.c), global2.c, vec2<f32>(arg_1.a.x, arg_0)).c, !arg_2), select(vec3<bool>(arg_1.c, global2.c, arg_2), vec3<bool>(false, arg_2, true), vec3<bool>(global1.x, arg_1.c, global2.c)), vec3<bool>(all(vec2<bool>(global1.x, global2.c)), all(vec4<bool>(arg_1.c, true, false, global1.x)), arg_1.c))), select(true, arg_2, (u_input.b.x > _wgslsmith_add_u32(u_input.b.x, u_input.b.x)) || false), global2.a.xw);
    global1 = !(!vec2<bool>(all(vec4<bool>(global2.c, global2.c, global1.x, arg_2)) || true, global2.c));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.a.zzx)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.zww) + arg_1.a.xzy));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(func_4(Struct_1(arg_1.a, arg_1.b, false), 52552u, 1320f, _wgslsmith_div_i32(u_input.c.x, 29419i)).a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(arg_0, 1691f), _wgslsmith_f_op_f32(max(-822f, var_0.x))) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-global2.a.x), -265f, 237f)))), -26313i, true);
    return func_4(func_2(!vec3<bool>(true, global1.x, false), global2.c, global2.a.xx), 1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f), global2.a.x) * func_2(!(!vec3<bool>(true, true, global2.c)), select(!global2.c, arg_1.c || global2.c, all(vec4<bool>(true, true, true, global1.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(840f, -929f), vec2<f32>(-671f, 954f), vec2<bool>(true, true)))))).a.x), select(-global2.b, _wgslsmith_clamp_i32(1i, ~_wgslsmith_mult_i32(-61576i, 0i), -15562i), global1.x));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 10u)];
    let var_2 = func_5(global2.a.x, func_4(func_2(vec3<bool>(true, false, true), all(!vec2<bool>(global1.x, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1261f, arg_0.x))), ~countOneBits(u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), 1i), var_1.c);
    global2 = global0[_wgslsmith_index_u32(u_input.b.x, 10u)];
    global0 = array<Struct_1, 10>();
    return global0[_wgslsmith_index_u32(~(~u_input.a >> (~(~1u) % 32u)), 10u)];
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    global1 = select(vec2<bool>(arg_1.c || arg_0.c, !arg_0.c), !(!vec2<bool>(arg_1.c, global2.c & false)), global1.x);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(-664f - global2.a.x)), -1198f, _wgslsmith_f_op_f32(min(arg_1.a.x, arg_0.a.x))) - _wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1121f), arg_1.a.x, -622f, _wgslsmith_f_op_f32(-arg_1.a.x)))), ~_wgslsmith_mult_i32(~global2.b, arg_0.b) >> ((arg_2 >> (~4294967295u % 32u)) % 32u), arg_0.c);
    global3 = array<vec2<i32>, 17>();
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(926f, var_0.a.x, _wgslsmith_f_op_f32(func_3()), arg_0.a.x) * vec4<f32>(-1705f, _wgslsmith_f_op_f32(step(-1000f, global2.a.x)), _wgslsmith_f_op_f32(1000f - 345f), func_1(arg_1.a).a.x)))), -u_input.c.x & select(1i, _wgslsmith_mod_i32(arg_0.b, func_5(var_0.a.x, Struct_1(vec4<f32>(-887f, -1360f, -123f, 215f), arg_1.b, false), global2.c).b), false | arg_0.c), !global2.c);
    let var_1 = arg_1;
    return ~vec3<i32>(var_1.b, -2147483647i << ((firstLeadingBit(arg_2) << (u_input.a % 32u)) % 32u), _wgslsmith_mult_i32(1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, arg_2), vec3<u32>(arg_2, 4294967295u, u_input.b.x)) % 32u), var_0.b << (u_input.b.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    let var_1 = ~u_input.b.x;
    let var_2 = func_6(func_1(global2.a), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1 >> (_wgslsmith_sub_u32(var_1 | var_1, firstLeadingBit(23383u)) % 32u), ~1u), 10u)], 4317u);
    var var_3 = Struct_1(global2.a, -8347i, !any(vec3<bool>(false, global2.c, true)));
    let var_4 = select(func_4(func_4(func_4(Struct_1(global2.a, -23935i, false), 39004u, var_3.a.x, -2147483647i), u_input.b.x, global2.a.x, _wgslsmith_add_i32(var_2.x, 1i)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a.x * 383f))), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_3.b, 1i), -54839i ^ global2.b)).c | true, func_2(select(select(vec3<bool>(global2.c, true, global2.c), vec3<bool>(global1.x, true, global1.x), vec3<bool>(var_3.c, false, global2.c)), select(select(vec3<bool>(var_3.c, var_3.c, global2.c), vec3<bool>(var_3.c, global2.c, true), false), !vec3<bool>(global1.x, false, var_3.c), true || global2.c), !vec3<bool>(global2.c, global2.c, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-744f, 925f)) - _wgslsmith_f_op_f32(428f - global2.a.x)) >= global2.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_3.a.xw)), vec2<f32>(var_3.a.x, -810f)))).c, func_1(_wgslsmith_f_op_vec4_f32(-global2.a)).c);
    global3 = array<vec2<i32>, 17>();
    var_3 = global0[_wgslsmith_index_u32(var_1, 10u)];
    let var_5 = vec4<i32>(_wgslsmith_mult_i32(~(-(~(-29411i))), _wgslsmith_div_i32(var_3.b, u_input.c.x) | -(2147483647i >> (u_input.b.x % 32u))), 2147483647i, firstTrailingBit(_wgslsmith_sub_i32(func_2(vec3<bool>(true, var_3.c, false), func_2(vec3<bool>(true, false, global1.x), global1.x, vec2<f32>(global2.a.x, 720f)).c, _wgslsmith_f_op_vec2_f32(-var_3.a.zy)).b, -20839i)), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.c.x << (~(~u_input.b.x) % 32u)), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(0i, 0i), var_5.yy ^ u_input.c)), var_3.b, ~(88u >> (~(var_1 | 11408u) % 32u)));
}

