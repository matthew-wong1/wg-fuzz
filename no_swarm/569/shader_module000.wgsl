struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(false, false), false, 0i, vec4<f32>(-1000f, -1765f, 201f, 960f), vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(false, true), true, 36279i, vec4<f32>(1636f, -1127f, 2861f, 920f), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(true, true), false, -36637i, vec4<f32>(303f, 791f, 666f, -1592f), vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(false, true), true, 2147483647i, vec4<f32>(624f, -351f, -316f, -1700f), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, false), false, 39206i, vec4<f32>(853f, -766f, -1386f, -1226f), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(true, false), true, -15947i, vec4<f32>(1472f, 385f, -776f, -1263f), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(true, true), true, -47017i, vec4<f32>(101f, 1461f, 479f, -318f), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(false, false), false, 0i, vec4<f32>(2040f, -1024f, -1249f, 256f), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(true, false), true, 37246i, vec4<f32>(327f, 1920f, 1991f, 646f), vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(false, false), true, 35270i, vec4<f32>(1019f, -310f, 746f, 1381f), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, false), false, 15443i, vec4<f32>(253f, 201f, 1453f, -157f), vec4<bool>(false, true, true, true)), Struct_1(vec2<bool>(true, false), false, -13249i, vec4<f32>(-527f, -348f, 1018f, -158f), vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(false, true), false, -7096i, vec4<f32>(1380f, -1204f, -753f, 317f), vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(true, false), true, -23148i, vec4<f32>(-131f, 396f, 1441f, -1133f), vec4<bool>(false, true, false, true)), Struct_1(vec2<bool>(true, false), true, 8109i, vec4<f32>(-545f, 1339f, -328f, -151f), vec4<bool>(true, true, true, false)));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d.x)))) + -373f);
    global2 = array<Struct_1, 15>();
    let var_1 = vec3<f32>(_wgslsmith_div_f32(350f, 304f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1600f - global3.d.x))) * global3.d.x), -673f);
    let var_2 = vec3<i32>(u_input.c, -2147483647i, u_input.c);
    global3 = global2[_wgslsmith_index_u32(~1u, 15u)];
    return 3339i;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_1(vec2<bool>(arg_1, true), !(~(~0u) == ~_wgslsmith_mod_u32(u_input.b.x, 77468u)), -1i, global1.d, !select(!global3.e, vec4<bool>(global1.e.x, true, true, !arg_1), global3.b));
    let var_1 = vec2<f32>(109f, _wgslsmith_f_op_f32(sign(arg_0.d.x)));
    var var_2 = ~_wgslsmith_clamp_vec4_i32(abs(~vec4<i32>(var_0.c, var_0.c, 18090i, arg_0.c)) ^ min(~vec4<i32>(global3.c, 0i, 10923i, -11528i), -vec4<i32>(0i, arg_0.c, 2147483647i, 1i)), vec4<i32>(19771i, _wgslsmith_mult_i32(var_0.c, -12087i), global1.c, global3.c), -(-vec4<i32>(global3.c, 33309i, 10530i, global3.c) & ~vec4<i32>(arg_0.c, var_0.c, global1.c, -13257i)));
    global4 = array<Struct_1, 31>();
    var var_3 = abs(_wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, 28180i), var_2.wxy, -var_2.xzw), vec3<i32>(_wgslsmith_div_i32(~0i, 2147483647i), -928i, firstLeadingBit(_wgslsmith_mult_i32(global3.c, 4407i)))));
    return global3.d.wx;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = global1.e.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<bool>(!global1.e.x, !any(arg_1.e.wzz)), false, ~(-(u_input.c & 2147483647i)), _wgslsmith_f_op_vec4_f32(global1.d * vec4<f32>(_wgslsmith_f_op_f32(-global1.d.x), arg_1.d.x, global3.d.x, _wgslsmith_f_op_f32(round(arg_0.x)))), vec4<bool>(func_3() >= max(global1.c, 2147483647i), true, false, all(select(arg_1.e, vec4<bool>(false, true, true, true), global3.e.x)))), _wgslsmith_f_op_f32(-global1.d.x) < _wgslsmith_f_op_f32(-1452f * -124f)));
    let var_2 = select(select(!(!vec2<bool>(global3.b, global1.a.x)), select(global1.e.xx, global1.a, select(select(global1.e.xz, global3.a, global3.e.yw), select(vec2<bool>(global1.e.x, true), vec2<bool>(global1.b, global3.b), vec2<bool>(global3.a.x, false)), select(vec2<bool>(false, global3.a.x), global3.e.xx, true))), true), global1.a, !vec2<bool>(false, any(!vec4<bool>(global1.a.x, false, false, true))));
    let var_3 = Struct_1(arg_1.a, true, -_wgslsmith_mod_i32(-(u_input.c | 23639i), countOneBits(-32088i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(128f, -142f))), _wgslsmith_f_op_f32(150f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2060f + 263f))), arg_0.x, global1.d.x), !global3.e);
    let var_4 = Struct_1(select(global3.e.wy, vec2<bool>(!any(arg_1.e.yzy), _wgslsmith_div_i32(global3.c, 21235i) < 1i), vec2<bool>(arg_1.e.x, true)), !(400f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - 708f), -314f))), var_3.c, arg_1.d, !select(vec4<bool>(var_3.b, !var_2.x, var_2.x, global3.a.x), vec4<bool>(global3.b, false, true, global3.a.x), all(var_3.e.wwx)));
    return _wgslsmith_f_op_f32(global3.d.x * 806f);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec3<bool> {
    global2 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(func_2(global3.d.yy, global4[_wgslsmith_index_u32(u_input.b.x, 31u)]))), _wgslsmith_f_op_f32(func_2(vec2<f32>(global3.d.x, -1000f), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 54152u), 15u)]))) - arg_0));
    return global3.e.wzy;
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    global0 = true;
    global1 = Struct_1(select(select(vec2<bool>(all(global1.e), !arg_3), !select(global3.e.zz, global1.e.yw, true), vec2<bool>(false, true)), !(!(!vec2<bool>(false, global1.b))), _wgslsmith_mod_u32(u_input.b.x, u_input.a) < _wgslsmith_clamp_u32(1u, u_input.b.x, 52227u)), global1.c == global3.c, 12227i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.d, vec4<f32>(-1280f, 333f, -608f, -292f), global3.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.x, arg_2.x, arg_2.x, global3.d.x) * vec4<f32>(1672f, arg_2.x, -395f, 620f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global1.d)), _wgslsmith_div_vec4_f32(vec4<f32>(global3.d.x, 2620f, arg_2.x, -1552f), vec4<f32>(global1.d.x, global1.d.x, global1.d.x, -1108f))))), !(!arg_1));
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(~1u, u_input.b.x)), 31u)];
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-790f - -1995f)))), _wgslsmith_f_op_f32(global3.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1071f)), _wgslsmith_f_op_f32(floor(-909f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(global3.d.x * arg_2.x), true)))), var_0.d);
    let var_2 = select(vec3<bool>(select(true, (u_input.a >= u_input.a) & arg_3, var_0.a.x), true && arg_3, global3.e.x), vec3<bool>(false, true, firstLeadingBit(u_input.a) < ~45884u), !(!vec3<bool>(true, !arg_1.x, any(global1.e))));
    return global4[_wgslsmith_index_u32(~u_input.a, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 31>();
    global0 = false;
    var var_0 = func_5(all(func_1(-1316f, global1.c, vec2<bool>(true, global1.b), !select(global3.e.xzy, global1.e.wwz, vec3<bool>(false, true, true)))), global3.e, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(318f, global3.d.x)), 489f, _wgslsmith_f_op_f32(global3.d.x - global3.d.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(-global3.d.x), global3.d.x), _wgslsmith_f_op_vec3_f32(round(global3.d.yyz)))), true);
    var var_1 = func_5(!(all(!global1.e.zyw) | !(8152u != u_input.a)), select(var_0.e, select(select(select(var_0.e, var_0.e, var_0.e), vec4<bool>(global3.b, global1.e.x, global1.b, var_0.e.x), false), !global3.e, global1.e), select(global1.e, global1.e, -global1.c >= global1.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(global1.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f), 532f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.d.x)))))), all(!(!global3.e))).d;
    let var_2 = u_input.b;
    let var_3 = Struct_1(vec2<bool>(true, !global3.a.x), func_1(var_1.x, _wgslsmith_mod_i32(reverseBits(global1.c), ~var_0.c), var_0.e.ww, vec3<bool>(global3.a.x, !(!var_0.a.x), true)).x, ~2147483647i, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.d.x))))), func_5(all(vec4<bool>(true, global3.b, false, false)), vec4<bool>(true, all(global1.e.yxz), true, -14822i > var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-234f, global3.d.x, -825f), vec3<f32>(1228f, global1.d.x, global1.d.x)) * func_5(true, global3.e, vec3<f32>(984f, 181f, var_1.x), true).d.yxx), any(!vec3<bool>(global1.e.x, true, global3.b))).d.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1315f, var_0.d.x), -465f)))), !vec4<bool>(global1.a.x, false, func_1(_wgslsmith_f_op_f32(var_1.x - var_0.d.x), ~global3.c, !vec2<bool>(global3.e.x, global1.b), global3.e.yxy).x, func_5(any(vec3<bool>(true, var_0.a.x, true)), !global1.e, vec3<f32>(189f, -854f, 1262f), any(global3.e.xxw)).b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global3.d.yy, vec2<f32>(-1041f, 1401f)))))), global2[_wgslsmith_index_u32(u_input.a, 15u)])), 1u, ~(-20795i), var_2.x);
}

