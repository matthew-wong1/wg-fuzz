struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(15025i, 8850i, 1i, -1i, -25316i, 25097i, 41931i, -7181i);

var<private> global1: bool;

var<private> global2: Struct_3;

var<private> global3: array<bool, 30> = array<bool, 30>(false, true, false, false, false, true, true, true, false, true, true, true, true, false, true, false, false, true, true, false, false, true, true, false, true, false, false, true, false, true);

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = global2.c.c;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f)), 1f, -106f);
    return arg_0.x;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32) -> u32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1124f)) * 949f))) <= _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(843f + -1000f), _wgslsmith_div_f32(807f, -772f)), _wgslsmith_f_op_f32(-544f - _wgslsmith_f_op_f32(f32(-1f) * -756f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(513f))))));
    let var_0 = Struct_5(Struct_2(_wgslsmith_sub_vec2_u32(abs(~global2.b.a), reverseBits(global2.b.a)), global2.b.b), ~(~vec4<u32>(global2.e, 4294967295u, 114945u, global2.b.a.x)) >> (vec4<u32>(global2.a, 55442u, global2.a, 18477u) % vec4<u32>(32u)), ~4294967295u, firstTrailingBit(~global0[_wgslsmith_index_u32(1u, 8u)]));
    global0 = array<i32, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-742f * 1175f)), _wgslsmith_f_op_f32(f32(-1f) * -661f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2426f, -1099f), vec2<f32>(-668f, 586f))), vec2<f32>(-541f, -183f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1179f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) * -194f))));
    global3 = array<bool, 30>();
    return var_0.b.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> Struct_3 {
    global2 = Struct_3(arg_2, Struct_2(firstLeadingBit(_wgslsmith_sub_vec2_u32(global2.b.a ^ vec2<u32>(74010u, global2.a), ~global2.b.a)), all(vec4<bool>(false, false, any(vec2<bool>(global2.b.b, false)), any(global2.c.c.zy)))), global4[_wgslsmith_index_u32(global2.e, 8u)], vec3<bool>(arg_2 < _wgslsmith_div_u32(~arg_2, global2.b.a.x), any(global2.c.c), true), _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mult_u32(global2.b.a.x, 0u)) & arg_2);
    global0 = array<i32, 8>();
    global3 = array<bool, 30>();
    let var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(select(68081u, ~arg_2, any(select(vec4<bool>(false, false, false, true), vec4<bool>(global3[_wgslsmith_index_u32(11406u, 30u)], true, global2.b.b, global2.c.b), global2.c.c.x))), 40638u, ~97573u), 0u);
    global2 = Struct_3(~reverseBits(~(~global2.e)), Struct_2(select(~vec2<u32>(42468u, 24889u), firstTrailingBit(~vec2<u32>(4294967295u, 1u)), !(!global2.c.c.x)), arg_1), Struct_1(max((vec4<i32>(global2.c.a.x, global0[_wgslsmith_index_u32(0u, 8u)], -1i, -37988i) << (vec4<u32>(global2.e, 4294967295u, 4294967295u, arg_2) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(8717u, global2.b.a.x, 0u, var_0), vec4<u32>(0u, arg_2, 4294967295u, 0u), vec4<u32>(66797u, var_0, arg_2, var_0)) % vec4<u32>(32u)), abs(reverseBits(vec4<i32>(2147483647i, 94855i, global2.c.a.x, -18242i)))), !arg_1, select(!global2.c.c, vec3<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 30u)], true, true), any(global2.d.zz) && any(vec4<bool>(arg_1, true, true, global3[_wgslsmith_index_u32(27774u, 30u)])))), select(global2.d, !vec3<bool>(false | global2.b.b, arg_1 & global2.c.c.x, !global2.b.b), false), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global2.b.a, vec2<u32>(~40679u, func_3(1u, u_input.a, u_input.a))), global2.a));
    return Struct_3(_wgslsmith_dot_vec2_u32(global2.b.a, ~(~vec2<u32>(var_0, 4294967295u))), Struct_2(vec2<u32>(61491u, ~33745u), any(vec3<bool>(all(global2.d), select(true, global2.b.b, arg_1), any(global2.c.c)))), Struct_1(abs(global2.c.a), !select(false, global2.b.b, true), select(vec3<bool>(any(global2.d.xx), global2.c.c.x, !global3[_wgslsmith_index_u32(113417u, 30u)]), !global2.c.c, global2.c.c)), vec3<bool>(arg_1, true, true), firstTrailingBit(arg_2) << ((_wgslsmith_add_u32(max(56617u, global2.a), _wgslsmith_add_u32(12905u, arg_2)) | 0u) % 32u));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = global2.c.c;
    global2 = func_4(vec4<i32>(func_2(vec3<i32>(~(-20519i), -2147483647i, arg_0)), 18762i, i32(-1i) * -(u_input.a >> (global2.a % 32u)), global0[_wgslsmith_index_u32(70055u, 8u)] << (_wgslsmith_dot_vec2_u32(vec2<u32>(8028u, global2.e), vec2<u32>(18585u, global2.e)) % 32u)), (global0[_wgslsmith_index_u32(firstTrailingBit(1u), 8u)] <= 1i) | !all(global2.d), reverseBits(countOneBits(0u)) | func_3(~_wgslsmith_add_u32(global2.e, global2.e), -3910i, -91528i));
    global3 = array<bool, 30>();
    global0 = array<i32, 8>();
    let var_1 = global2.d;
    return Struct_2(global2.b.a, global2.b.b || (var_1.x & false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-global2.c.a.x);
    let var_1 = Struct_4(func_4(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(17091i, -2147483647i, u_input.a, -58901i) & global2.c.a, reverseBits(vec4<i32>(-2147483647i, global2.c.a.x, global0[_wgslsmith_index_u32(2416u, 8u)], u_input.a)))), false, global2.a).b, func_1(~select(-1i, u_input.a, false)).a.x, 0u, Struct_3(112668u | ~global2.e, func_1(~(1i >> (var_0.a.x % 32u))), func_4(global2.c.a, func_1(25779i).b, ~23620u).c, vec3<bool>(true, func_1(~global0[_wgslsmith_index_u32(93252u, 8u)]).b, var_0.b), var_0.a.x), false);
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    var var_2 = var_1.d.d.xz;
    var var_3 = -min(_wgslsmith_dot_vec2_i32(vec2<i32>(-86134i, 1i), vec2<i32>(i32(-1i) * -2147483647i, min(u_input.a, global0[_wgslsmith_index_u32(8477u, 8u)]))), _wgslsmith_add_i32(44192i, 1i));
    let var_4 = _wgslsmith_f_op_f32(select(384f, -1685f, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.b, var_1.b), 30u)]));
    let var_5 = global3[_wgslsmith_index_u32(~func_3(min(~1u, select(0u << (global2.a % 32u), ~var_1.b, true)), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, global0[_wgslsmith_index_u32(global2.a, 8u)]), 47758i), ((global0[_wgslsmith_index_u32(var_1.a.a.x, 8u)] | -35242i) ^ -global2.c.a.x) & ~(~global2.c.a.x)), 30u)];
    global4 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(min(1u, _wgslsmith_mod_u32(var_1.a.a.x, var_1.c)), var_1.b, 27948u) << (vec3<u32>(92216u, ~(67052u | var_0.a.x), max(0u, ~var_0.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_4, -1136f)))), _wgslsmith_f_op_f32(floor(var_4)), 1867f))), -271f);
}

