struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec3<i32> = vec3<i32>(0i, 0i, 2147483647i);

var<private> global2: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true));

var<private> global3: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 74137u, 44387u, 0u), vec4<u32>(9573u, 59067u, 53629u, 4294967295u), vec4<u32>(81431u, 4294967295u, 4294967295u, 31439u), vec4<u32>(965u, 0u, 10932u, 1u), vec4<u32>(59437u, 1u, 0u, 0u), vec4<u32>(1962u, 7549u, 39965u, 1u), vec4<u32>(32485u, 0u, 5588u, 0u), vec4<u32>(4294967295u, 21u, 25818u, 0u), vec4<u32>(4819u, 10587u, 4294967295u, 53140u), vec4<u32>(56871u, 59486u, 39451u, 45784u), vec4<u32>(0u, 4294967295u, 75175u, 1u), vec4<u32>(1u, 10285u, 4294967295u, 0u), vec4<u32>(22309u, 25983u, 19999u, 63824u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 74695u, 4294967295u), vec4<u32>(17542u, 0u, 70360u, 20319u), vec4<u32>(34283u, 4294967295u, 1u, 25967u), vec4<u32>(1u, 6232u, 0u, 1u), vec4<u32>(34596u, 0u, 1u, 0u), vec4<u32>(10544u, 4758u, 85939u, 46370u), vec4<u32>(12078u, 4294967295u, 13634u, 14627u), vec4<u32>(0u, 0u, 16351u, 22310u), vec4<u32>(4738u, 29100u, 4294967295u, 40958u), vec4<u32>(4294967295u, 80783u, 31339u, 1u), vec4<u32>(3355u, 4701u, 1u, 0u), vec4<u32>(24150u, 19862u, 4294967295u, 7219u), vec4<u32>(1u, 56046u, 82258u, 20074u), vec4<u32>(4294967295u, 197u, 1u, 1u), vec4<u32>(0u, 0u, 0u, 93526u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)) || !all(global2[_wgslsmith_index_u32(~(~33959u), 8u)]);
    global0 = max(select(-_wgslsmith_sub_i32(1i, -37619i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_1.x, arg_0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, arg_0.a, 26286i), u_input.d.zzz), 0i, -1i), u_input.d), all(vec3<bool>(true, true, true))), arg_1.x);
    var var_1 = _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(firstTrailingBit(28698u), 29u)], _wgslsmith_clamp_vec4_u32(min(vec4<u32>(~1u, 22261u, 15321u, u_input.a.x), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 46855u)), 29u)]), ~select(vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u), global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(min(1u, u_input.a.x), 8u)]), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, max(u_input.c.x, u_input.c.x), 29539u) | 1u, 29u)]));
    var var_2 = Struct_5(~(~(-vec2<i32>(-28688i, arg_1.x) << (var_1.yw % vec2<u32>(32u)))), global1.x, Struct_4(vec3<i32>(u_input.d.x, -29601i, ~arg_1.x), _wgslsmith_mult_i32(1i, abs(arg_0.a)), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-790f + -887f), _wgslsmith_f_op_f32(f32(-1f) * -971f)), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(134f, -724f)) - _wgslsmith_div_f32(-513f, -1004f)))));
    var var_3 = !(!(0u >= u_input.a.x) & any(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), -17353i <= global1.x)));
    return !(!vec2<bool>(select(false, 4294967295u > var_1.x, false), !any(vec2<bool>(false, true))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    global1 = min(_wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(-u_input.d.zzx, -vec3<i32>(-2147483647i, global1.x, 49874i)), -u_input.d.yxz), u_input.d.yyy);
    let var_0 = select(func_3(Struct_2(global1.x), u_input.d.yy), vec2<bool>(false, select(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true)), false);
    let var_1 = arg_0;
    global1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -(firstTrailingBit(u_input.d.yxw) << (min(u_input.c, u_input.a) % vec3<u32>(32u))), firstTrailingBit(select(-u_input.d.zwz, u_input.d.zzy, !(!vec3<bool>(true, true, var_0.x)))), vec3<i32>(_wgslsmith_div_i32(-1i, ~48708i), u_input.b, ~0i));
    let var_2 = true;
    return Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-526f, 284f))))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2045f * 377f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1496f)) * -2673f)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    let var_0 = func_2(~arg_2.b);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a))), u_input.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.c.c + -1453f), -1237f)) * var_0.a), _wgslsmith_f_op_f32(abs(var_0.a)))));
    global1 = u_input.d.yww;
    var var_2 = Struct_2(_wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(~(~arg_3.a), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.b, 5251i, u_input.d.x, arg_1.a), u_input.d)), _wgslsmith_clamp_i32(-firstTrailingBit(arg_1.a), -43997i >> ((arg_2.b >> (u_input.c.x % 32u)) % 32u), select(global1.x & global1.x, 1i << (arg_0.c.c.b % 32u), !arg_1.b.x))));
    var var_3 = arg_0.c;
    return 2644u;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_0.wx;
    var var_1 = true;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1201f), arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c, 940f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c))))), arg_2.a);
    global0 = 39370i;
    var var_3 = Struct_4(vec3<i32>(-19508i, min(1i, global1.x), -3958i), _wgslsmith_sub_i32(reverseBits(21681i), _wgslsmith_add_i32(countOneBits(u_input.b), -1i)), func_2(~countOneBits(735u)));
    return Struct_1(-1i, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~vec4<u32>(u_input.c.x, func_1(Struct_5(global1.zy, 17335i, Struct_4(u_input.d.wxz, u_input.d.x, Struct_3(-196f, u_input.a.x, -917f))), Struct_1(-2147483647i, vec3<bool>(true, true, true)), Struct_3(494f, 4294967295u, 1000f), Struct_1(u_input.d.x, vec3<bool>(false, true, true))), ~u_input.a.x, _wgslsmith_mult_u32(0u, 0u)) << (vec4<u32>(countOneBits(func_2(u_input.c.x).b), _wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(u_input.c.x)), 0u, ~(~1u)) % vec4<u32>(32u)), reverseBits(34592u), func_2(~1u));
    var var_1 = -376f;
    let var_2 = _wgslsmith_mod_vec3_i32(u_input.d.xzw, vec3<i32>(~(-1i), 1i, i32(-1i) * -28083i));
    var_0 = func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, abs(u_input.c.x), max(u_input.c.x, reverseBits(35065u)), 56760u), ~global3[_wgslsmith_index_u32(func_2(_wgslsmith_mult_u32(1532u, u_input.a.x)).b, 29u)]), 0u, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-794f))) - 625f), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1110f)) + _wgslsmith_f_op_f32(161f * -1000f)))));
    var_0 = func_4(~select(~(global3[_wgslsmith_index_u32(u_input.a.x, 29u)] & global3[_wgslsmith_index_u32(u_input.c.x, 29u)]), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) ^ firstLeadingBit(u_input.a.x), 29u)], !vec4<bool>(var_0.b.x, true, false, var_0.b.x)), abs(select(reverseBits(1u), 4095u, true)), func_2(64681u));
    let var_3 = Struct_4(firstTrailingBit(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-2915i, 2147483647i, global1.x), vec3<i32>(0i, 0i, u_input.b) | vec3<i32>(var_0.a, -1i, var_2.x)), abs(vec3<i32>(0i, -39930i, -113i)))), -2147483647i, Struct_3(-732f, u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, var_3.b), func_4(vec4<u32>(u_input.a.x, 1u, 95813u, 4294967295u), u_input.c.x, Struct_3(var_3.c.c, u_input.c.x, var_3.c.a)).a), max(-var_0.a, 0i), -1i) << (select(1u, countOneBits(~16123u), true) % 32u), vec3<bool>(!(!func_4(vec4<u32>(4294967295u, var_3.c.b, var_3.c.b, u_input.a.x), 417u, Struct_3(-1000f, var_3.c.b, 799f)).b.x), select(true, true, false), false));
    let var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.c));
}

