struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(4294967295u, 17308u, 0u, 17955u, 0u, 4294967295u, 1u, 137610u, 4294967295u, 1u, 4294967295u, 5281u, 1u, 1u, 8171u, 1u, 60438u, 52155u, 4294967295u, 0u, 4294967295u, 1u, 0u, 38723u, 0u);

var<private> global1: array<i32, 9> = array<i32, 9>(-8709i, 1i, 1i, -57187i, -1i, 2147483647i, i32(-2147483648), -25396i, 1i);

var<private> global2: vec2<f32> = vec2<f32>(294f, 1124f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    var var_0 = arg_0.b.a;
    let var_1 = false | (firstTrailingBit(global0[_wgslsmith_index_u32(1u, 25u)]) < abs(_wgslsmith_mult_u32(arg_0.b.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46564u, 25u)], 25u)]) & ~1u));
    var var_2 = true;
    var var_3 = false;
    var var_4 = ~(~arg_3.b.c);
    return false;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-535f, arg_2)))))), arg_3, arg_3, Struct_1(vec2<bool>(arg_3.a.x & !arg_3.a.x, func_3(Struct_2(vec2<f32>(global2.x, 549f), arg_3, arg_3, Struct_1(vec2<bool>(true, arg_3.b), arg_3.a.x, global0[_wgslsmith_index_u32(23968u, 25u)], arg_3.d), vec3<bool>(arg_3.a.x, arg_3.a.x, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(160f, -834f, -832f) + vec3<f32>(-605f, -569f, arg_3.d)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_3.c, 1u), vec2<u32>(4294967295u, 28509u)), Struct_2(vec2<f32>(arg_2, -348f), arg_3, Struct_1(arg_3.a, arg_3.a.x, arg_1, arg_2), Struct_1(vec2<bool>(true, true), true, 1u, arg_3.d), vec3<bool>(false, arg_3.a.x, arg_3.a.x)))), true, ~_wgslsmith_clamp_u32(u_input.a >> (1u % 32u), firstLeadingBit(arg_1), ~4294967295u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(775f + global2.x)))))), !select(select(select(vec3<bool>(false, arg_3.b, false), vec3<bool>(arg_3.b, false, false), vec3<bool>(true, arg_3.a.x, arg_3.a.x)), select(vec3<bool>(arg_3.b, arg_3.b, false), vec3<bool>(arg_3.b, true, false), true), vec3<bool>(true, arg_3.b, arg_3.b)), !vec3<bool>(true, arg_3.b, false), !any(vec2<bool>(arg_3.b, true))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-837f, -739f)), var_0.d, Struct_1(select(arg_3.a, vec2<bool>(true, true), true), true, var_0.b.c, -621f), var_0.c, var_0.e), vec4<u32>(~942u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, global0[_wgslsmith_index_u32(u_input.a, 25u)]) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 25u)])), abs(arg_1) ^ _wgslsmith_div_u32(arg_3.c, ~2422u), 1u), arg_3, arg_0);
    var_1 = Struct_3(var_1.a, vec4<u32>(u_input.a, ~(~var_0.c.c), 0u, 76073u), Struct_1(select(select(!var_1.a.e.yx, arg_3.a, arg_3.b), var_1.a.c.a, select(arg_3.a, select(var_1.a.b.a, arg_3.a, var_0.b.a), !arg_3.b)), !var_1.a.e.x, 1u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-728f + _wgslsmith_f_op_f32(-834f - arg_2))))), ~(min(-10210i, ~70834i) >> ((min(97618u, arg_1) >> (45586u % 32u)) % 32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.a.a), Struct_1(vec2<bool>(any(!vec4<bool>(var_1.c.b, var_0.b.b, var_1.a.c.a.x, false)), (58947i > arg_0) && all(var_1.c.a)), all(vec2<bool>(1560f > global2.x, all(vec4<bool>(false, true, true, false)))), ~arg_1, var_0.b.d), var_1.a.d, var_0.d, vec3<bool>(true, !(!var_0.e.x) != false, false));
    var var_3 = var_1.c.b;
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), 1763f, _wgslsmith_f_op_f32(trunc(-641f))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.d))), _wgslsmith_div_f32(var_2.d.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c.d))))), true));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> u32 {
    global0 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_f32(step(arg_2.c.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(969f)), -573f)))))));
    let var_1 = ~(~(~vec3<u32>(~arg_1.a.b.c, min(4294967295u, 1u), ~u_input.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.a.c.d, global2.x, -955f, arg_3))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1118f, -100f, global2.x, arg_1.a.b.d)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -956f, arg_2.c.d, arg_1.c.d) - vec4<f32>(312f, 1637f, arg_1.a.d.d, 667f))))), _wgslsmith_f_op_vec4_f32(func_2(1i, u_input.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -388f))), Struct_1(vec2<bool>(arg_0.x, true), true, 1u ^ var_1.x, -1000f))), !vec4<bool>(true, arg_0.x, false, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3, _wgslsmith_f_op_f32(select(arg_1.c.d, 1761f, true)), _wgslsmith_f_op_f32(-210f * -386f), -622f)))));
    global0 = array<u32, 25>();
    return abs(_wgslsmith_div_u32(abs(1u), abs(abs(u_input.a)))) | _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(3241u, 25u)], ~(~global0[_wgslsmith_index_u32(var_1.x, 25u)] ^ u_input.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = Struct_1(select(arg_2.d.a, arg_0.a, true), arg_1.c.b, 1u, -393f);
    var var_1 = Struct_2(arg_1.a.a, Struct_1(vec2<bool>(select(arg_2.c.b, true, false) && false, true), global2.x >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.d, var_0.d)), var_0.d)), firstLeadingBit(56054u), -559f), Struct_1(select(select(arg_2.d.a, !vec2<bool>(arg_2.d.b, arg_0.a.x), var_0.a), !arg_2.e.yx, !(!arg_1.a.c.b)), any(arg_0.a), ~abs(countOneBits(4294967295u)), _wgslsmith_f_op_f32(-arg_1.a.b.d)), Struct_1(!arg_2.b.a, (arg_1.a.d.b | true) && arg_1.c.b, 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-528f * _wgslsmith_div_f32(arg_0.d, arg_2.a.x)) - 620f)), select(!arg_1.a.e, !(!(!vec3<bool>(arg_1.c.a.x, var_0.b, arg_0.b))), vec3<bool>(any(vec3<bool>(var_0.a.x, var_0.b, arg_2.e.x)), true, false)));
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1.d, arg_1.d, 0i, 8776i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_2.c.c, 9u)], global1[_wgslsmith_index_u32(38315u, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<i32>(global1[_wgslsmith_index_u32(55411u, 9u)], -2147483647i, 0i, arg_1.d))));
    var var_3 = Struct_3(arg_1.a, vec4<u32>(~_wgslsmith_mult_u32(var_1.d.c, select(var_0.c, var_1.b.c, arg_2.c.a.x)), 51504u, 0u, _wgslsmith_sub_u32(4294967295u, 4848u)), Struct_1(vec2<bool>(true, select(false, true, true)), true, arg_2.c.c, _wgslsmith_f_op_f32(-arg_1.a.d.d)), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, arg_1.d, global1[_wgslsmith_index_u32(arg_2.c.c, 9u)]), vec4<i32>(2147483647i, 1i, -32502i, 2147483647i))) >> (var_0.c % 32u));
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.d, global2.x) - vec2<f32>(532f, arg_2.d.d)) * var_1.a) + _wgslsmith_div_vec2_f32(vec2<f32>(1346f, -571f), _wgslsmith_f_op_vec2_f32(select(var_3.a.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, var_0.d))), var_3.c.a))))));
    return StorageBuffer(vec4<u32>(~33641u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~var_3.a.b.c, arg_1.a.c.c), 1u), var_3.c.c, abs(43352u)), firstTrailingBit(vec3<i32>(-1i) * -min(vec3<i32>(var_3.d, -2147483647i, global1[_wgslsmith_index_u32(1u, 9u)]), vec3<i32>(1i, var_2, var_2))), vec4<i32>(reverseBits(-1434i), -var_3.d, _wgslsmith_div_i32(var_3.d & var_2, _wgslsmith_mod_i32(var_2, var_3.d)), firstLeadingBit(-26480i)) >> (vec4<u32>(arg_1.b.x, countOneBits(1u), 0u ^ ~var_3.a.b.c, ~56462u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    let var_0 = !vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x) != global2.x, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -243f)) > _wgslsmith_f_op_f32(exp2(global2.x)), true, true || !(1u >= u_input.a));
    global1 = array<i32, 9>();
    var var_1 = Struct_1(var_0.zw, true, 31924u, 926f);
    global0 = array<u32, 25>();
    let x = u_input.a;
    s_output = func_4(Struct_1(!var_0.ww, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(sign(613f)))) <= _wgslsmith_f_op_f32(-global2.x), global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(func_1(var_0.zyz, Struct_3(Struct_2(vec2<f32>(global2.x, global2.x), Struct_1(var_0.zy, true, var_1.c, -214f), Struct_1(var_1.a, true, var_1.c, var_1.d), Struct_1(vec2<bool>(true, false), true, 4294967295u, 117f), var_0.xxx), vec4<u32>(1u, 43542u, var_1.c, 0u), Struct_1(vec2<bool>(true, false), true, 23908u, 1000f), global1[_wgslsmith_index_u32(26497u, 9u)]), Struct_3(Struct_2(vec2<f32>(2286f, -273f), Struct_1(var_0.xw, var_1.b, var_1.c, global2.x), Struct_1(var_1.a, false, u_input.a, var_1.d), Struct_1(var_0.ww, false, u_input.a, global2.x), var_0.yxx), vec4<u32>(78514u, 4294967295u, var_1.c, 1u), Struct_1(var_0.xw, false, var_1.c, 1000f), global1[_wgslsmith_index_u32(4294967295u, 9u)]), var_1.d))), 25u)], _wgslsmith_f_op_f32(f32(-1f) * -1068f)), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1031f, -1357f)) + vec2<f32>(-1123f, global2.x)), Struct_1(var_1.a, var_0.x, global0[_wgslsmith_index_u32(18231u, 25u)] >> (u_input.a % 32u), -1001f), Struct_1(select(var_1.a, vec2<bool>(var_1.a.x, var_0.x), vec2<bool>(var_0.x, var_1.b)), true, ~1u, -874f), Struct_1(vec2<bool>(var_0.x, true), var_1.b && var_1.a.x, 1u, -1233f), vec3<bool>(!var_1.a.x, var_1.b, var_0.x)), ~(abs(vec4<u32>(31934u, 59020u, u_input.a, u_input.a)) << (select(vec4<u32>(u_input.a, 0u, 1u, var_1.c), vec4<u32>(u_input.a, var_1.c, 3638u, 6967u), var_0) % vec4<u32>(32u))), Struct_1(select(select(var_0.zw, var_1.a, true), !var_0.yy, any(vec2<bool>(var_1.a.x, true))), !var_1.a.x, var_1.c, -1000f), ~firstLeadingBit(abs(-1i))), Struct_2(vec2<f32>(-963f, _wgslsmith_f_op_f32(global2.x * _wgslsmith_div_f32(global2.x, var_1.d))), Struct_1(vec2<bool>(true, var_0.x), var_0.x, ~(~var_1.c), _wgslsmith_f_op_f32(round(-1179f))), Struct_1(var_0.yy, var_1.b, var_1.c, global2.x), Struct_1(select(var_1.a, var_0.yw, func_3(Struct_2(vec2<f32>(global2.x, global2.x), Struct_1(var_0.wz, true, u_input.a, var_1.d), Struct_1(var_0.xz, false, global0[_wgslsmith_index_u32(1u, 25u)], 1000f), Struct_1(vec2<bool>(var_1.b, var_1.b), false, global0[_wgslsmith_index_u32(4294967295u, 25u)], var_1.d), var_0.yyz), vec3<f32>(-241f, -193f, var_1.d), vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 25u)]), Struct_2(vec2<f32>(var_1.d, global2.x), Struct_1(vec2<bool>(var_1.b, false), false, global0[_wgslsmith_index_u32(var_1.c, 25u)], 861f), Struct_1(vec2<bool>(var_0.x, true), var_0.x, var_1.c, global2.x), Struct_1(vec2<bool>(var_0.x, var_0.x), false, 0u, global2.x), var_0.wxw))), var_1.b, 46952u, global2.x), !var_0.xzz));
}

