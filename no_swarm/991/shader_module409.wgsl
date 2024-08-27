struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 12>;

var<private> global3: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = arg_1;
    global3 = global0.xy;
    var var_1 = ~4294967295u;
    var var_2 = u_input.a;
    let var_3 = abs(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a.x, -2147483647i, 0i, 52946i)));
    return countOneBits(~arg_2.a.b);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(-1151f, Struct_1(492f, min(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1854f, -272f, -322f)), Struct_1(-1141f, 37211u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 23351u), 12u)], -828f), _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 30395u), 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-452f))) - -672f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1550f, 1241f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~_wgslsmith_mult_u32(1u, ~1u)));
    var var_1 = var_0.b.b;
    global0 = vec3<bool>(true, _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 30642i, -42387i, 2147483647i), vec4<i32>(u_input.a.x, 6274i, 35653i, u_input.a.x)), 21570i >> (var_0.b.b % 32u)), -1i) > u_input.a.x, true && !(_wgslsmith_f_op_f32(floor(-819f)) >= _wgslsmith_f_op_f32(-var_0.a)));
    let var_2 = Struct_3(var_0.b.a, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -1943f) - 700f), var_0.d);
    let var_3 = Struct_2(Struct_1(-1168f, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.d.b, 4294967295u, 1u), vec4<u32>(var_0.d.b, 4294967295u, 0u, 0u)), abs(vec4<u32>(0u, var_2.d.b, var_2.d.b, 1u))))), var_2.b.a, -1054f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * -1059f)), ~8997u));
    return !vec2<bool>(!all(!vec3<bool>(global3.x, global0.x, global0.x)), global3.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = vec4<bool>(!(!(global3.x | global3.x)), true, global0.x, true);
    global0 = var_0.yyw;
    global3 = select(vec2<bool>(true, false), func_2(), !select(global0.zx, var_0.xy, arg_1));
    var var_1 = Struct_2(Struct_1(arg_0.x, _wgslsmith_mod_u32(firstLeadingBit(~70u), ~1u)), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, Struct_1(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f * arg_0.x))), 58811u));
    var var_2 = ~(~_wgslsmith_div_u32(var_1.a.b, 24935u));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -992f), var_1.a.b);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_3 {
    global2 = array<Struct_2, 12>();
    var var_0 = vec4<u32>(~(~_wgslsmith_mult_u32(~77840u, reverseBits(arg_2.b.b))), 76323u, arg_2.d.b, _wgslsmith_mod_u32(firstLeadingBit(0u), 53509u));
    let var_1 = false;
    var var_2 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 637f)))), !(func_3(vec3<f32>(-103f, arg_2.a, 440f), Struct_1(1000f, 21142u), global2[_wgslsmith_index_u32(arg_2.d.b, 12u)], arg_0) > (arg_2.b.b | arg_2.b.b)), vec3<i32>(arg_1, -22770i, -arg_3.x)), -326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.a) - arg_0))), func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.a, 435f, arg_0) * vec3<f32>(arg_2.a, 630f, arg_0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.a, arg_0, 233f)))), !all(select(vec4<bool>(global3.x, global3.x, global3.x, var_1), vec4<bool>(false, global3.x, false, global3.x), true)), ~vec3<i32>(1779i, arg_3.x, _wgslsmith_div_i32(0i, u_input.a.x))));
    return Struct_3(_wgslsmith_f_op_f32(-625f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-857f, 391f)), -355f, any(global0.yx))))), arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d.a), arg_2.d.a, var_1))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 775f)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), arg_0, 625f)), !(!var_1 && true), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 12>();
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)))), i32(-1i) * -41163i, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -1345f), _wgslsmith_f_op_f32(round(-121f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-109f, -812f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-776f + 427f)), firstLeadingBit(countOneBits(38754u))), 106f, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-740f, 735f, -1500f)), any(select(vec4<bool>(false, true, global0.x, global3.x), vec4<bool>(true, false, global0.x, global0.x), global3.x)), u_input.a)), vec2<i32>(u_input.a.x, 41172i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.d.a)), _wgslsmith_f_op_f32(round(var_0.b.a)), any(vec4<bool>(false, global0.x, global0.x, true)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1517f + 1000f), var_0.a))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.d.a) - 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.a + func_4(var_0.d.a, u_input.a.x, Struct_3(-894f, Struct_1(var_0.b.a, var_0.b.b), -1880f, var_0.d), vec2<i32>(-2147483647i, u_input.a.x)).b.a)))));
    global3 = select(vec2<bool>(all(!vec3<bool>(global0.x, true, global0.x)), false), select(vec2<bool>(global3.x, true), vec2<bool>(global0.x, all(vec3<bool>(false, global3.x, true))), select(select(func_2(), vec2<bool>(global0.x, global3.x), select(vec2<bool>(false, true), global0.xx, vec2<bool>(false, false))), vec2<bool>(true, !global0.x), any(vec4<bool>(global3.x, global0.x, true, global3.x)) && global3.x)), select(global3.x, func_2().x, true));
    var_0 = func_4(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-var_0.b.a)), _wgslsmith_dot_vec3_i32(firstLeadingBit(~_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x) << (vec4<u32>(28954u, var_0.d.b, var_0.d.b, var_0.b.b) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, -10551i, -42478i)), u_input.a.x, abs(_wgslsmith_mod_i32(u_input.a.x, -1i)))), func_4(var_0.c, -1i, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(f32(-1f) * -907f)), func_4(_wgslsmith_f_op_f32(round(var_0.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, -26073i, 0i, u_input.a.x)), Struct_3(-700f, Struct_1(-150f, 7004u), 1264f, var_0.b), u_input.a.yx).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -443f), ~var_0.b.b)), reverseBits(~u_input.a.xy) << (~countOneBits(vec2<u32>(var_0.d.b, var_0.b.b)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, 35898i, u_input.a.x), firstTrailingBit(u_input.a.x)), vec2<i32>(-u_input.a.x, -92273i)));
    var var_2 = Struct_2(Struct_1(-1513f, var_0.d.b), _wgslsmith_f_op_f32(-var_0.d.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.a))))), var_0.a, global3.x)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_clamp_i32(u_input.a.x >> (max(4294967295u, var_0.b.b) % 32u), abs(-35021i), _wgslsmith_add_i32(~(-64734i), u_input.a.x)), func_4(_wgslsmith_div_f32(var_1, _wgslsmith_div_f32(var_0.c, var_0.a)), u_input.a.x, Struct_3(2258f, Struct_1(203f, var_0.d.b), _wgslsmith_f_op_f32(-var_1), Struct_1(713f, var_0.d.b)), ~(~u_input.a.zz)), ~vec2<i32>(_wgslsmith_mod_i32(1i, 4826i), -u_input.a.x)).b);
    global0 = vec3<bool>(!global3.x, !global3.x, !func_2().x);
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -8216i, u_input.a.x), vec4<i32>(u_input.a.x, -16585i, u_input.a.x, 2147483647i)), u_input.a.x) & _wgslsmith_mult_i32(~(~(-56048i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec3<i32>(-1i, 35145i, u_input.a.x)))), ((2750i ^ u_input.a.x) ^ -2147483647i) ^ (abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -23295i), vec4<i32>(-1i, -1i, u_input.a.x, -16002i))) << (var_0.b.b % 32u)), 487f);
}

