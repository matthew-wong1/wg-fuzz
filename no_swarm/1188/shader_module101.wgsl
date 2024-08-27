struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(40916u, Struct_1(1u), false);

var<private> global1: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(26590u, Struct_1(1u), false));

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(false, 35027u), Struct_2(false, 0u), Struct_2(false, 4294967295u), Struct_2(false, 48566u), Struct_2(true, 0u), Struct_2(false, 4294967295u), Struct_2(false, 4294967295u), Struct_2(true, 54101u), Struct_2(false, 23225u), Struct_2(false, 4294967295u), Struct_2(false, 17656u), Struct_2(true, 56804u), Struct_2(true, 19369u), Struct_2(false, 1u), Struct_2(false, 26323u), Struct_2(false, 1u), Struct_2(false, 1u), Struct_2(true, 62334u), Struct_2(false, 9160u), Struct_2(false, 60331u), Struct_2(true, 12238u), Struct_2(false, 41465u), Struct_2(false, 20920u), Struct_2(true, 8061u), Struct_2(true, 0u), Struct_2(true, 33334u), Struct_2(false, 59985u), Struct_2(false, 1u), Struct_2(false, 46973u), Struct_2(false, 58194u), Struct_2(false, 1u));

var<private> global3: array<u32, 22>;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 0u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> f32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, var_0, 1i), vec3<i32>(-2147483647i, -62452i, 1i))), -vec3<i32>(u_input.a, ~var_0, -5454i ^ _wgslsmith_div_i32(var_0, -10407i)));
    global0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(arg_1.b, 1u) | reverseBits(_wgslsmith_div_u32(~52961u, ~arg_3.a.b))), 1u)];
    var var_2 = select(!select(vec3<bool>(!arg_1.a, global0.c, all(vec3<bool>(arg_3.b.x, global0.c, global0.c))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), !vec3<bool>(arg_3.a.a, false, arg_1.a)), arg_1.a), vec3<bool>((!arg_1.a != true) && select(arg_3.b.x & global0.c, true, arg_1.a), all(select(arg_3.b, arg_3.b, true)), all(vec3<bool>(arg_1.a, false, global0.c)) | (~0u < _wgslsmith_clamp_u32(1u, arg_0.a, arg_0.a))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.a, false), vec3<bool>(true, global0.c, false), vec3<bool>(global0.c, arg_1.a, arg_1.a)), select(vec3<bool>(true, true, true), vec3<bool>(arg_3.b.x, false, false), arg_1.a)), vec3<bool>(false, false, false || global0.c), vec3<bool>(arg_3.a.a & false, any(vec2<bool>(true, arg_3.a.a)), true)), vec3<bool>(true, true, true), false));
    var var_3 = _wgslsmith_div_vec4_u32(~firstTrailingBit(min(vec4<u32>(arg_3.c.a, 667u, arg_0.a, global4.x), vec4<u32>(24243u, 42861u, 20632u, global4.x)) | (vec4<u32>(1u, global0.a, arg_3.a.b, 4294967295u) & vec4<u32>(arg_0.a, 0u, arg_0.a, 35005u))), ~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global4.x, global3[_wgslsmith_index_u32(arg_1.b, 22u)], arg_0.a, global0.a), vec4<u32>(global3[_wgslsmith_index_u32(5616u, 22u)], 43982u, arg_1.b, arg_3.a.b)) & vec4<u32>(global3[_wgslsmith_index_u32(arg_3.c.a, 22u)], global0.b.a, global0.b.a, global3[_wgslsmith_index_u32(arg_0.a, 22u)])));
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-958f)), _wgslsmith_f_op_f32(func_3(global0.b, Struct_2(false, global4.x), -1630f, Struct_3(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 22u)], 31u)], vec2<bool>(false, false), global0.b)))), -1000f)))), 1542f, -930f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-475f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1244f - 396f) + 1f), _wgslsmith_div_f32(-657f, 1f)))));
    let var_1 = var_0.x;
    var var_2 = Struct_3(Struct_2(any(vec3<bool>(global0.c, global0.c, true)) == !(!global0.c), global0.a), vec2<bool>(true, global0.c), Struct_1(22673u));
    var var_3 = !var_2.b.x;
    let var_4 = ~reverseBits(vec2<i32>(arg_1, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, arg_0, arg_0, -30208i), vec4<i32>(u_input.a, -1i, arg_1, arg_1) & vec4<i32>(527i, arg_1, arg_1, arg_1))));
    return Struct_3(Struct_2(global0.c, firstTrailingBit(global4.x)), select(var_2.b, var_2.b, true), Struct_1(~_wgslsmith_mult_u32(var_2.c.a, ~59120u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    let var_0 = global0.c;
    global4 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~(~4294967295u)), ~arg_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(12713u, 6546u), arg_0.zy), arg_0.yx)), arg_0);
    global4 = arg_0;
    let var_1 = !(!select(arg_1.b, func_2(-3911i ^ u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-36927i, -18594i))).b, arg_1.b.x));
    global2 = array<Struct_2, 31>();
    return global1[_wgslsmith_index_u32(global0.b.a, 1u)];
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(max(74868u << (_wgslsmith_mult_u32(reverseBits(105563u), ~4294967295u) % 32u), ~4294967295u));
    var var_2 = func_4(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, min(global3[_wgslsmith_index_u32(arg_0.b, 22u)], 6858u), 61867u), vec3<u32>(~22580u, 4294967295u << (global4.x % 32u), global4.x)), func_2(1i, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(437f, _wgslsmith_f_op_f32(ceil(-1897f)))) + _wgslsmith_f_op_f32(step(-1766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-467f)))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(2664u, 31840u, 1u, global0.b.a)) ^ ~max(vec4<u32>(0u, 1164u, var_1.a, 0u), vec4<u32>(121321u, 1u, 0u, arg_0.b)), vec4<u32>(1u, _wgslsmith_mod_u32(1u, 1u) << ((arg_0.b & global3[_wgslsmith_index_u32(global0.b.a, 22u)]) % 32u), 0u, min(4294967295u, global3[_wgslsmith_index_u32(select(0u, 61144u, false), 22u)]))), 31u)]);
    let var_3 = _wgslsmith_sub_u32(1u, 1u);
    var_2 = func_4(vec3<u32>(min(0u, abs(0u) << (global0.b.a % 32u)), 41267u, ~var_1.a), func_2(u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 84413i), vec3<i32>(u_input.a, -18065i, 2147483647i)), select(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(397i, 0i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a), select(vec3<bool>(false, false, var_2.c), vec3<bool>(arg_0.a, var_2.c, global0.c), vec3<bool>(false, global0.c, arg_0.a))))), -1321f, global2[_wgslsmith_index_u32(var_1.a, 31u)]);
    return func_2(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(31033i, -2147483647i, u_input.a, u_input.a), vec4<i32>(31509i, 2147483647i, 2147483647i, u_input.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2353i, 0i, -779i), vec3<i32>(17517i, 1i, -29346i)), vec3<i32>(u_input.a, u_input.a, u_input.a))), u_input.a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_1.a;
    return arg_1.c;
}

fn func_6(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(6676u, 31u)];
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(47118u, 22u)], 33990u, _wgslsmith_sub_u32(~(global3[_wgslsmith_index_u32(arg_1.a, 22u)] >> (76113u % 32u)), _wgslsmith_sub_u32(arg_1.a, ~57385u))), vec3<u32>(max(0u ^ _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global0.b.a, 22u)], 4294967295u), reverseBits(~var_0.b)), 13401u, _wgslsmith_mult_u32(1u, 1u)));
    var var_2 = vec4<i32>(27427i, u_input.a, abs(_wgslsmith_mod_i32(u_input.a, min(0i, u_input.a)) >> (~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(arg_1.b.a, 22u)], global0.a) % 32u)), _wgslsmith_dot_vec3_i32(-max(vec3<i32>(u_input.a, 43157i, u_input.a) << (vec3<u32>(global0.b.a, global0.a, var_1.x) % vec3<u32>(32u)), abs(vec3<i32>(0i, u_input.a, -3367i))), vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, 70704i, u_input.a, -2147483647i)), -u_input.a, u_input.a)));
    var var_3 = _wgslsmith_sub_vec3_i32(~(-select(var_2.wxw >> (vec3<u32>(48193u, 52052u, 35351u) % vec3<u32>(32u)), var_2.zzz << (vec3<u32>(var_1.x, var_0.b, var_1.x) % vec3<u32>(32u)), false)), var_2.yzz >> (vec3<u32>(reverseBits(~1u), abs(_wgslsmith_div_u32(32800u, 4294967295u)), var_1.x) % vec3<u32>(32u)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1131f, 637f), _wgslsmith_f_op_f32(-430f - -1594f), false)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2121f + 697f)), _wgslsmith_f_op_f32(f32(-1f) * -1737f)))), _wgslsmith_f_op_f32(f32(-1f) * -1036f), -582f);
    return func_1(global2[_wgslsmith_index_u32(global4.x & ~4294967295u, 31u)]).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(0u, 1u)];
    let var_0 = Struct_3(Struct_2(global0.c, _wgslsmith_add_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~global4.x, 22u)], countOneBits(52268u)), (70270u & global3[_wgslsmith_index_u32(0u, 22u)]) ^ global4.x)), !(!(!vec2<bool>(true, global0.c))), func_6(global0.c, Struct_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a, 4294967295u, global3[_wgslsmith_index_u32(343u, 22u)]), ~vec3<u32>(global4.x, global4.x, global0.a)), func_5(global2[_wgslsmith_index_u32(~0u, 31u)], func_1(Struct_2(false, 4294967295u))), all(vec2<bool>(global0.c, global0.c)))));
    var var_1 = 25699u;
    let var_2 = func_1(global2[_wgslsmith_index_u32(var_0.c.a & _wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, global0.b.a), firstTrailingBit(var_0.c.a)), 31u)]);
    global2 = array<Struct_2, 31>();
    var var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1026f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-684f, -1516f)), -1107f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1879f + -304f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(567f)) * _wgslsmith_f_op_f32(f32(-1f) * -809f)))), abs(firstTrailingBit(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_mod_i32(u_input.a, 2147483647i), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(60419i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(55010i, 2147483647i), vec2<i32>(14059i, u_input.a)), -29393i ^ u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -22048i, -2147483647i), vec4<i32>(840i, u_input.a, u_input.a, u_input.a), vec4<i32>(-51443i, -6219i, -1829i, 54773i) | vec4<i32>(u_input.a, 21638i, -1i, 17080i)), vec4<i32>(_wgslsmith_div_i32(388i, -46912i), ~(-7549i), 0i, abs(-1i)))), ~func_6(func_2(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-24350i, 28047i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a))).b.x, Struct_4(var_0.c.a, func_6(false, global1[_wgslsmith_index_u32(63318u, 1u)]), true)).a);
}

