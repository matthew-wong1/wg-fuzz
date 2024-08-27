struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<f32>(-241f, -1061f, 1315f, -420f), 1333i, vec2<i32>(0i, i32(-2147483648)), vec3<bool>(false, false, false), vec4<i32>(32639i, -1i, 2147483647i, 1i)), Struct_1(vec4<f32>(-1631f, -1667f, 596f, -126f), i32(-2147483648), vec2<i32>(24228i, 2147483647i), vec3<bool>(false, false, true), vec4<i32>(2147483647i, 29518i, 81484i, 20152i)), Struct_1(vec4<f32>(-765f, 590f, -2278f, -590f), 0i, vec2<i32>(1i, -17347i), vec3<bool>(true, true, true), vec4<i32>(29955i, -9319i, i32(-2147483648), 25363i)), Struct_1(vec4<f32>(185f, 692f, -1000f, -841f), 2147483647i, vec2<i32>(1i, 0i), vec3<bool>(true, true, true), vec4<i32>(22228i, -25358i, 2147483647i, 0i)), Struct_1(vec4<f32>(-1223f, 780f, 2025f, -2256f), 48354i, vec2<i32>(-32092i, -1i), vec3<bool>(true, false, true), vec4<i32>(-22488i, 1i, i32(-2147483648), -1i)), Struct_1(vec4<f32>(-340f, -2010f, -1198f, 980f), -1i, vec2<i32>(2147483647i, 2147483647i), vec3<bool>(false, true, false), vec4<i32>(31058i, -4335i, 44500i, 0i)), Struct_1(vec4<f32>(1984f, 258f, 700f, -1172f), 28952i, vec2<i32>(21873i, -22873i), vec3<bool>(true, true, true), vec4<i32>(2147483647i, i32(-2147483648), -1i, 1i)), Struct_1(vec4<f32>(-990f, -165f, 198f, 378f), 1128i, vec2<i32>(0i, 5780i), vec3<bool>(true, false, true), vec4<i32>(-1i, 0i, -1i, -1i)), Struct_1(vec4<f32>(-1337f, 367f, 1084f, 474f), -1i, vec2<i32>(-26836i, -1i), vec3<bool>(true, false, true), vec4<i32>(2147483647i, 2147483647i, 0i, 21689i)), Struct_1(vec4<f32>(581f, -704f, 2689f, -365f), -27293i, vec2<i32>(i32(-2147483648), 2147483647i), vec3<bool>(false, false, true), vec4<i32>(-6539i, 30658i, i32(-2147483648), 1i)));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-398f, -1466f, 1086f, 1721f), 2147483647i, vec2<i32>(77207i, 38683i), vec3<bool>(true, true, true), vec4<i32>(-1i, 30950i, i32(-2147483648), 5656i));

var<private> global2: array<i32, 26> = array<i32, 26>(-53571i, -38226i, 0i, -1i, 1i, 1066i, i32(-2147483648), 0i, 12104i, 0i, 0i, -1i, 32131i, -19448i, 20757i, -1i, 0i, 73532i, -50659i, 1i, 3094i, -44486i, -1i, 11322i, 2147483647i, 28080i);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1617f, -1387f, -1553f, 2339f), -1469i, vec2<i32>(0i, -30713i), vec3<bool>(false, true, false), vec4<i32>(28514i, i32(-2147483648), 0i, 25130i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, max(1u, _wgslsmith_add_u32(firstTrailingBit(46711u), ~(~u_input.e.x)))), 10u)];
    var var_1 = global3.c.x;
    global0 = array<Struct_1, 10>();
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    var var_3 = !(var_2.d.x || true);
    return _wgslsmith_add_u32(u_input.e.x, 17579u) < ~1u;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(global3.a.yxw));
    let var_1 = reverseBits(vec2<u32>(0u, u_input.b.x));
    global3 = global0[_wgslsmith_index_u32(~(~u_input.b.x), 10u)];
    let var_2 = Struct_1(global1.a, _wgslsmith_mult_i32(0i, global1.e.x), vec2<i32>(-50763i, global3.c.x), vec3<bool>(false, !func_3(), all(vec3<bool>(true, false, false))), abs(_wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-22252i, global1.c.x, u_input.c, global1.e.x), u_input.d), vec4<i32>(global1.c.x, -2147483647i, u_input.d.x >> (66666u % 32u), -1i))));
    global0 = array<Struct_1, 10>();
    return ~38762u;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global2 = array<i32, 26>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(firstLeadingBit(vec4<u32>(1u, ~u_input.e.x, 22571u, u_input.a)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(165u, u_input.b.x, u_input.a, 556u)), vec4<u32>(u_input.e.x, func_2(), ~u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e)))), firstLeadingBit(reverseBits(vec4<u32>(u_input.a, 1u, u_input.e.x, u_input.b.x)))), 10u)];
    var var_1 = abs(-firstTrailingBit(u_input.d.wxy));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a - vec4<f32>(2096f, arg_0.a.x, global1.a.x, var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x - global3.a.x), _wgslsmith_f_op_f32(ceil(global3.a.x)), _wgslsmith_f_op_f32(select(global1.a.x, 564f, arg_0.d.x)), _wgslsmith_f_op_f32(select(global1.a.x, arg_0.a.x, true)))))), min(reverseBits(_wgslsmith_div_i32(global1.e.x, _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(0u, 26u)], -2147483647i))), _wgslsmith_div_i32(_wgslsmith_div_i32(9096i, 48336i) >> (u_input.b.x % 32u), global2[_wgslsmith_index_u32(u_input.b.x, 26u)])), _wgslsmith_mult_vec2_i32(vec2<i32>(min(17169i, 2147483647i), _wgslsmith_mod_i32(-1579i, -76236i)), -_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, 2147483647i), vec2<i32>(var_1.x, global1.b)), -var_1.xz)), vec3<bool>(true, global1.d.x != select(u_input.d.x < -2147483647i, select(false, true, true), arg_0.d.x), any(select(select(global1.d, arg_0.d, false), !global1.d, arg_0.d.x))), firstLeadingBit(vec4<i32>(-u_input.d.x, _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(arg_0.e.wxw, vec3<i32>(2147483647i, -2147483647i, 13661i))), abs(~51509i), -23603i)));
    var var_2 = ~vec3<u32>(1u, _wgslsmith_add_u32(u_input.a | (u_input.a | 2326u), u_input.a ^ 39573u), ~0u);
    return global0[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.e.x ^ 1u)), 10u)];
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1451f, _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -536f)))), arg_0, _wgslsmith_f_op_f32(-arg_1.a.x));
    let var_1 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2(), ~1u, u_input.e.x), 10u)]);
    var var_2 = arg_1;
    var var_3 = arg_1;
    global3 = func_4(var_1);
    return 33303i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(~23281u, 23864u), u_input.b, true), ~abs(~vec2<u32>(u_input.e.x, u_input.b.x) | ~vec2<u32>(u_input.b.x, u_input.b.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global1.a.x, global3.a.x, true)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(global1.a.x - 259f), _wgslsmith_f_op_f32(global1.a.x - -368f))), _wgslsmith_f_op_vec4_f32(trunc(global1.a)))), func_1(-2337f, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(global3.a)), global3.a)), u_input.d.x, vec2<i32>(1534i, ~2147483647i), vec3<bool>(any(global1.d), global3.d.x & global3.d.x, !global1.d.x), ~global1.e ^ (vec4<i32>(-2147483647i, 466i, global3.c.x, u_input.d.x) ^ u_input.d))), global1.c, select(!vec3<bool>(false, u_input.b.x > u_input.a, !global3.d.x), global3.d, !(!global3.d)), u_input.d);
    var_0 = min(59922u, ~(~u_input.e.x));
    global3 = global0[_wgslsmith_index_u32(29145u, 10u)];
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(max(1u, ~_wgslsmith_div_u32(4294967295u, 77210u))) << (abs(0u) % 32u), 10u)];
    let var_3 = !var_2.d.x;
    var_0 = select(28947u, (0u >> (u_input.a % 32u)) >> (_wgslsmith_mod_u32(1u, firstLeadingBit(u_input.e.x ^ u_input.e.x)) % 32u), var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, var_1.b), reverseBits(global3.c.x)), -25313i, countOneBits(global2[_wgslsmith_index_u32(0u, 26u)]), func_1(-624f, Struct_1(global1.a, global3.b, vec2<i32>(var_1.c.x, u_input.d.x), global1.d, var_1.e))), vec4<i32>(2147483647i, var_1.c.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(var_2.e.zxz), u_input.d.yxw), i32(-1i) * -30553i)), firstLeadingBit(var_1.e) | vec4<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(~0u, 26u)], ~global1.b), -abs(global1.c.x), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(0i, -2147483647i)), ~(-9511i)), -(-max(var_2.c.x, 0i) << (u_input.a % 32u)), global1.a.ww);
}

