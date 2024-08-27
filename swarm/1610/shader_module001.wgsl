struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<u32, 29> = array<u32, 29>(0u, 12032u, 15989u, 27687u, 72954u, 4294967295u, 4294967295u, 4294967295u, 19450u, 1u, 35637u, 26291u, 4294967295u, 1u, 1u, 64416u, 1u, 0u, 1u, 80928u, 0u, 59705u, 1u, 0u, 0u, 4294967295u, 62399u, 17809u, 1u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> u32 {
    global2 = array<u32, 29>();
    let var_0 = select(!select(vec3<bool>(any(vec2<bool>(global1.a, false)), global0.a, !global0.a), global1.b, all(!global0.b.zx)), select(vec3<bool>(select(-2147483647i != u_input.b, true, any(global1.b.yy)), !(!global1.a), any(!vec4<bool>(global1.a, global0.a, global1.b.x, true))), select(vec3<bool>(select(true, global0.b.x, true), 12677i <= u_input.b, true), select(global0.b, vec3<bool>(global0.b.x, false, global1.b.x), select(global0.b, vec3<bool>(global0.b.x, false, global1.b.x), global0.a)), all(select(vec4<bool>(global1.b.x, false, global1.a, true), vec4<bool>(false, global0.a, false, global1.b.x), global1.a))), false), global0.b);
    global2 = array<u32, 29>();
    let var_1 = vec3<f32>(global0.c, _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c)) * 1517f), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -2420f)) + _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -2171f)))));
    let var_2 = Struct_1(select(any(vec2<bool>(true, true)), var_0.x, select(true, !(false | var_0.x), true == all(var_0.zy))), !(!global1.b), -659f);
    return abs(firstLeadingBit(_wgslsmith_clamp_u32(firstLeadingBit(u_input.d), u_input.d | global2[_wgslsmith_index_u32(u_input.d, 29u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(u_input.d, 29u)]))) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global2[_wgslsmith_index_u32(1u, 29u)]) ^ vec2<u32>(u_input.c, 18914u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24968u, 29u)], 29u)], global2[_wgslsmith_index_u32(1u, 29u)])));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    global1 = arg_3;
    let var_0 = -137f;
    let var_1 = arg_2.d.b;
    let var_2 = vec3<u32>(arg_0.x, func_3(), firstLeadingBit(arg_2.a));
    global2 = array<u32, 29>();
    return Struct_1(false, !(!vec3<bool>(!arg_2.c.a, all(global0.b.xx), global1.a)), _wgslsmith_div_f32(-979f, 1f));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_3 {
    global1 = func_2(~((~vec2<u32>(4294967295u, arg_1.a) ^ ~vec2<u32>(u_input.d, 4294967295u)) << (vec2<u32>(29035u, abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.a, 29u)], 29u)])) % vec2<u32>(32u))), 4294967295u & ~u_input.c, arg_1, arg_1.c);
    let var_0 = Struct_1(!global1.b.x, select(select(vec3<bool>(arg_0.x > 832f, -1338f >= global1.c, false), vec3<bool>(false, !arg_1.c.b.x, !global0.b.x), global1.a), vec3<bool>(true, !select(false, arg_1.c.a, global0.a), true), select(global0.b.x, any(global1.b.yy) && true, !all(vec2<bool>(false, global1.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b - 227f))));
    var var_1 = 31374i;
    var_1 = -24790i;
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(exp2(var_0.c)), var_0, arg_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1679f));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<bool>) -> vec2<f32> {
    var var_0 = arg_2;
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(858f, global1.c, 561f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.c, arg_2.e, var_0.b) * vec3<f32>(arg_0.e, -204f, global0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1296f, 499f, -2031f)))))))), Struct_3(~arg_0.a, _wgslsmith_f_op_f32(exp2(var_0.b)), Struct_1(any(arg_3), !func_2(vec2<u32>(0u, u_input.c), 1u, arg_2, Struct_1(true, arg_3.xyw, global1.c)).b, arg_2.b), Struct_2(~(~vec2<i32>(var_0.d.a.x, -2147483647i)), arg_2.d.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_0.e)))), arg_2.d.d), _wgslsmith_f_op_f32(f32(-1f) * -113f)));
    var_0 = arg_2;
    global0 = func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.e, _wgslsmith_f_op_f32(-890f + var_0.d.c.x), 672f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(570f, -616f, 351f)))))), Struct_3(countOneBits(abs(_wgslsmith_sub_u32(u_input.d, 19664u))), _wgslsmith_f_op_f32(1255f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * -1453f) - _wgslsmith_div_f32(global1.c, -737f))), func_2(~(vec2<u32>(4294967295u, u_input.c) << (arg_1.zy % vec2<u32>(32u))), max(0u, select(0u, 33881u, arg_3.x)), arg_2, Struct_1(global0.b.x, !vec3<bool>(var_0.c.b.x, true, arg_2.c.a), var_0.e)), Struct_2(min(select(arg_2.d.b.xx, arg_0.d.b.xz, var_0.c.b.x), func_1(vec3<f32>(var_0.e, global0.c, global1.c), Struct_3(20324u, var_0.d.c.x, arg_0.c, Struct_2(var_0.d.a, vec3<i32>(-24425i, 500i, arg_0.d.d), vec2<f32>(1225f, global1.c), arg_2.d.d), -1814f)).d.b.zx), -vec3<i32>(u_input.e, arg_0.d.a.x, -6071i), vec2<f32>(global0.c, var_0.c.c), 1i), _wgslsmith_f_op_f32(sign(145f)))).c;
    let var_1 = ~var_0.d.b.yx;
    return _wgslsmith_f_op_vec2_f32(arg_0.d.c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(-var_0.b))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global1 = func_2(vec2<u32>((func_1(vec3<f32>(1103f, global1.c, -462f), Struct_3(4294967295u, arg_3.c, arg_3, arg_1, global0.c)).a >> ((4294967295u << (global2[_wgslsmith_index_u32(u_input.d, 29u)] % 32u)) % 32u)) ^ (~0u ^ ~global2[_wgslsmith_index_u32(u_input.c, 29u)]), 3532u), ~(~4294967295u), Struct_3(~36304u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f + _wgslsmith_f_op_f32(floor(global1.c)))), arg_3, Struct_2(arg_1.a, min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, 3385i, arg_2.x), vec3<i32>(0i, arg_2.x, 28432i)), ~vec3<i32>(arg_2.x, 9618i, arg_1.b.x)), arg_0, ~0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c))), Struct_1(global0.a, vec3<bool>(all(vec3<bool>(false, true, global1.a)) & global0.b.x, true, all(!vec2<bool>(global0.b.x, true))), _wgslsmith_div_f32(arg_0.x, -1759f)));
    let var_0 = _wgslsmith_f_op_f32(-arg_3.c);
    var var_1 = Struct_1(!select(true, true, !(!arg_3.a)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)] == u_input.c, true && global1.b.x, global0.a), global0.b, vec3<bool>(false || global0.b.x, global2[_wgslsmith_index_u32(1u, 29u)] != 47237u, true)), vec3<bool>(true, true, any(select(global1.b.xy, global0.b.xy, true))), global0.b), 2086f);
    let var_2 = _wgslsmith_f_op_f32(-global1.c);
    var var_3 = Struct_1(true, func_2(~select(vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.d, 29u)]), ~vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 29u)], 52942u), true), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(func_1(vec3<f32>(1202f, 1071f, var_1.c), Struct_3(41327u, arg_0.x, Struct_1(true, vec3<bool>(arg_3.b.x, false, true), global1.c), Struct_2(arg_2.wx, vec3<i32>(-42560i, arg_2.x, -14346i), arg_0, -1i), global0.c)).a, 29u)], ~u_input.c), 29u)] >> (44936u % 32u), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.c, 2364f, -425f), vec3<f32>(var_1.c, 1256f, 1000f))), Struct_3(abs(4294967295u), -252f, arg_3, Struct_2(vec2<i32>(47520i, arg_1.d), arg_1.b, vec2<f32>(-260f, arg_3.c), arg_1.d), _wgslsmith_f_op_f32(abs(global0.c)))), arg_3).b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.c.x)), _wgslsmith_f_op_f32(sign(1965f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(902f)) - arg_0.x))));
    return func_2(vec2<u32>(~u_input.d, select(98216u & _wgslsmith_mult_u32(u_input.c, u_input.d), ~(~4294967295u), global1.b.x)), u_input.d << (82882u % 32u), Struct_3(_wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 29u)]) | vec2<u32>(27436u, u_input.d)), ~vec2<u32>(u_input.c, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-139f - arg_3.c), -368f)) - _wgslsmith_f_op_vec2_f32(func_4(func_1(vec3<f32>(global1.c, arg_1.c.x, arg_0.x), Struct_3(u_input.c, var_2, Struct_1(var_1.b.x, var_3.b, var_2), Struct_2(arg_2.ww, vec3<i32>(-26101i, arg_2.x, 0i), vec2<f32>(-852f, global1.c), -2147483647i), -1472f)), select(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 46949u, global2[_wgslsmith_index_u32(11057u, 29u)], u_input.d), vec4<u32>(0u, 14996u, u_input.c, u_input.d), global1.b.x), func_1(vec3<f32>(1125f, arg_0.x, var_3.c), Struct_3(u_input.c, global0.c, Struct_1(var_1.a, global1.b, 1993f), arg_1, var_1.c)), select(vec4<bool>(global0.a, false, var_1.a, var_3.a), vec4<bool>(var_1.b.x, global1.a, false, false), global1.a))).x), Struct_1(true, vec3<bool>(any(vec4<bool>(var_1.a, true, false, false)), var_3.a, true), _wgslsmith_f_op_f32(var_1.c + -1446f)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, var_0, 2228f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_0.x, -843f))), Struct_3(0u, _wgslsmith_f_op_f32(-global1.c), Struct_1(arg_3.b.x, var_3.b, var_1.c), func_1(vec3<f32>(global1.c, -1511f, arg_3.c), Struct_3(global2[_wgslsmith_index_u32(u_input.c, 29u)], var_1.c, Struct_1(var_3.a, vec3<bool>(true, true, true), -606f), Struct_2(arg_1.b.yz, arg_1.b, vec2<f32>(var_0, -1045f), arg_2.x), -1111f)).d, _wgslsmith_f_op_f32(-var_2))).d, global0.c), arg_3);
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(u_input.d, global0.c, Struct_1(true, func_2(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(arg_0, 0u)), ~(~global2[_wgslsmith_index_u32(29283u, 29u)]), func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-127f, 1095f, 1402f), vec3<f32>(-1000f, -1355f, -164f), vec3<bool>(arg_2.b.x, false, true))), func_1(vec3<f32>(arg_2.c, global1.c, -729f), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 29u)], -1221f, Struct_1(arg_1, vec3<bool>(arg_1, false, arg_2.b.x), global1.c), Struct_2(vec2<i32>(u_input.b, 59962i), vec3<i32>(u_input.e, 3585i, 15388i), vec2<f32>(global1.c, global0.c), 13531i), arg_2.c))), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -809f, 182f)), Struct_3(global2[_wgslsmith_index_u32(1u, 29u)], 1000f, Struct_1(true, arg_2.b, global1.c), Struct_2(vec2<i32>(-2147483647i, u_input.b), vec3<i32>(1i, -2147483647i, u_input.e), vec2<f32>(-833f, -775f), u_input.e), arg_2.c)).c).b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-746f + arg_2.c)))), Struct_2(vec2<i32>(u_input.a, -u_input.b), -reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(1i, -8512i, 2147483647i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, _wgslsmith_f_op_f32(f32(-1f) * -212f))), -reverseBits(1i | u_input.b)), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.c, -805f)))) * vec2<f32>(_wgslsmith_div_f32(global1.c, global1.c), arg_2.c)), func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.c, -350f, 384f), vec3<f32>(703f, global1.c, -1313f))))), Struct_3(arg_0, _wgslsmith_f_op_f32(select(726f, 514f, false)), Struct_1(false, arg_2.b, 268f), Struct_2(vec2<i32>(33404i, u_input.a), vec3<i32>(u_input.e, 0i, 0i), vec2<f32>(global1.c, -109f), 2147483647i), global0.c)).d, countOneBits(vec4<i32>(~2147483647i, ~(-2147483647i), 1i | u_input.e, _wgslsmith_mod_i32(1i, -1i))), Struct_1(arg_1, !arg_2.b, _wgslsmith_f_op_f32(ceil(global0.c)))).c);
    var var_1 = Struct_3(abs(~u_input.c >> (0u % 32u)), 198f, Struct_1(true, !global0.b, _wgslsmith_f_op_f32(-133f - _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(floor(354f))))), var_0.d, _wgslsmith_f_op_f32(-global1.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.d.c + var_0.d.c);
    var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.e)))), _wgslsmith_f_op_f32(global0.c - _wgslsmith_div_f32(global1.c, -268f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-756f * 450f)))), Struct_3(u_input.d, arg_2.c, Struct_1(true, vec3<bool>(true, false, false), _wgslsmith_f_op_vec2_f32(func_4(Struct_3(u_input.c, arg_2.c, arg_2, Struct_2(var_1.d.a, var_0.d.b, var_0.d.c, 1i), 2347f), ~vec4<u32>(u_input.c, arg_0, u_input.d, var_1.a), func_1(vec3<f32>(arg_2.c, arg_2.c, global1.c), Struct_3(4294967295u, var_1.e, var_1.c, var_1.d, 790f)), select(vec4<bool>(var_1.c.b.x, true, false, true), vec4<bool>(arg_1, true, true, false), arg_1))).x), var_0.d, var_1.b));
    var var_3 = 370f;
    return Struct_2(vec2<i32>(~(~u_input.a & _wgslsmith_dot_vec3_i32(var_1.d.b, vec3<i32>(-19104i, u_input.a, var_1.d.b.x))), _wgslsmith_mod_i32(~1i, 2147483647i)), vec3<i32>((var_1.d.d & min(0i, 33386i)) << (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(22305u, 17887u)), ~vec2<u32>(13954u, u_input.d)), 29u)] % 32u), ~(-(i32(-1i) * -2147483647i)), var_1.d.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2 - vec2<f32>(arg_2.c, var_0.c.c)))) + _wgslsmith_f_op_vec2_f32(-var_0.d.c)), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(17050i, var_1.d.b.x, u_input.a, u_input.e) << (vec4<u32>(global2[_wgslsmith_index_u32(var_0.a, 29u)], 19330u, 4294967295u, var_1.a) % vec4<u32>(32u)), ~vec4<i32>(-38945i, 1i, 28335i, var_0.d.b.x)) >> (global2[_wgslsmith_index_u32(var_1.a, 29u)] % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~firstTrailingBit(global2[_wgslsmith_index_u32(countOneBits(50579u) & ~u_input.c, 29u)]), true, func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-200f, global1.c), vec2<f32>(832f, -328f))) - _wgslsmith_f_op_vec2_f32(func_4(func_1(vec3<f32>(-182f, 361f, -117f), Struct_3(u_input.d, -1809f, Struct_1(global0.a, global0.b, global0.c), Struct_2(vec2<i32>(u_input.a, -1i), vec3<i32>(4492i, 45609i, u_input.a), vec2<f32>(1666f, global0.c), -21042i), 1000f)), _wgslsmith_mod_vec4_u32(vec4<u32>(17610u, global2[_wgslsmith_index_u32(u_input.d, 29u)], u_input.d, u_input.d), vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 4294967295u, 43737u)), Struct_3(17732u, 983f, Struct_1(true, global1.b, -1339f), Struct_2(vec2<i32>(-11288i, u_input.a), vec3<i32>(-13357i, u_input.e, 6193i), vec2<f32>(712f, global0.c), -5051i), global0.c), select(vec4<bool>(false, true, global0.b.x, false), vec4<bool>(false, global1.a, global1.a, global0.b.x), vec4<bool>(true, false, global1.a, global1.a))))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1873f, 380f, global0.c), vec3<f32>(-657f, 276f, -1284f), vec3<bool>(false, global0.b.x, global1.b.x)))), Struct_3(~u_input.c, global0.c, func_1(vec3<f32>(global1.c, global0.c, global0.c), Struct_3(0u, global0.c, Struct_1(global0.b.x, global1.b, -546f), Struct_2(vec2<i32>(-8335i, 1i), vec3<i32>(u_input.b, u_input.b, -11660i), vec2<f32>(global1.c, global1.c), u_input.e), -972f)).c, func_1(vec3<f32>(847f, global1.c, global1.c), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 29u)], global1.c, Struct_1(false, global1.b, global1.c), Struct_2(vec2<i32>(u_input.b, u_input.b), vec3<i32>(u_input.e, 0i, -1030i), vec2<f32>(-1883f, -1330f), 2147483647i), global1.c)).d, _wgslsmith_f_op_f32(global1.c - global0.c))).d, _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.e, u_input.a, u_input.b, u_input.b)), -abs(vec4<i32>(2147483647i, 65482i, u_input.a, 754i))), Struct_1(true & func_2(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 29u)], 29u)], 4172u), global2[_wgslsmith_index_u32(u_input.c, 29u)], Struct_3(4294967295u, -1561f, Struct_1(global1.b.x, global1.b, 815f), Struct_2(vec2<i32>(u_input.a, u_input.e), vec3<i32>(34251i, -33278i, u_input.a), vec2<f32>(-535f, global0.c), 23669i), global0.c), Struct_1(false, vec3<bool>(false, global1.b.x, global1.b.x), global0.c)).b.x, global1.b, _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(f32(-1f) * -467f)))));
    var var_1 = abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(var_0.a.x), ~u_input.e, var_0.b.x, u_input.e ^ -4928i), vec4<i32>(countOneBits(u_input.b), min(u_input.b, var_0.a.x), max(-2784i, -4881i), _wgslsmith_mod_i32(-1i, var_0.a.x))));
    global2 = array<u32, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1339f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.c.x, 689f)))), _wgslsmith_f_op_f32(f32(-1f) * -1561f)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c, 715f, 612f, -114f), vec4<f32>(1593f, -1165f, 897f, -996f))), vec4<f32>(-158f, -561f, -373f, 726f), select(vec4<bool>(global0.a, true, global0.a, global1.a), vec4<bool>(global1.a, true, global0.a, true), false)))))));
    global2 = array<u32, 29>();
    var var_3 = var_0;
    var_1 = var_0.a.x;
    let var_4 = var_0;
    let var_5 = ~(~_wgslsmith_clamp_vec2_u32(~select(vec2<u32>(9784u, 621u), vec2<u32>(1u, global2[_wgslsmith_index_u32(12440u, 29u)]), vec2<bool>(false, global1.a)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.c, 29u)]), vec2<u32>(4294967295u, 45445u)), ~vec2<u32>(68947u, 38559u)), ~(vec2<u32>(u_input.d, global2[_wgslsmith_index_u32(u_input.d, 29u)]) << (vec2<u32>(9185u, 0u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-531f, global1.c, global1.c, var_3.c.x), vec4<f32>(320f, var_4.c.x, -2024f, var_0.c.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1372f, global0.c, global1.c, -504f))))), var_5.x);
}

