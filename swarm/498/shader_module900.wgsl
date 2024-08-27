struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(-488f, vec4<i32>(58464i, 2147483647i, -1i, -1i), vec2<u32>(10346u, 18616u), -589f, vec4<i32>(-1i, 0i, 33628i, -1i)), -433f, -262f, 0i, Struct_1(-376f, vec4<i32>(i32(-2147483648), 13819i, 26079i, i32(-2147483648)), vec2<u32>(4294967295u, 86008u), -310f, vec4<i32>(i32(-2147483648), -13375i, -4606i, -42004i)));

var<private> global3: array<u32, 17>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = vec4<bool>(true, true, select(all(vec3<bool>(true, true, 2147483647i > global2.a.b.x)), true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), true, true, true), true)));
    var var_1 = Struct_4(Struct_2(global2.e, 766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -211f)))), _wgslsmith_dot_vec4_i32(global2.e.e, select(vec4<i32>(16117i, global1.b.x, u_input.a.x, global2.a.e.x) << (vec4<u32>(1u, 1u, 24535u, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(global2.e.e, vec4<i32>(global1.e.x, global1.e.x, global1.b.x, global2.e.b.x)), !var_0.x)), Struct_1(global1.d, firstLeadingBit(vec4<i32>(global2.d, u_input.a.x, 1i, 0i)), vec2<u32>(~36190u, 2939u), 1000f, vec4<i32>(_wgslsmith_dot_vec3_i32(global2.e.b.xwz, u_input.a), u_input.a.x, global2.e.b.x, ~(-10536i)))), select(global1.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(global2.e.b, global1.b), u_input.a.x, 1i), vec4<i32>(-9584i, 1i, abs(u_input.a.x), _wgslsmith_dot_vec3_i32(global1.b.zzx, global1.b.zzz))), !(!all(vec2<bool>(true, false)))));
    global1 = global2.e;
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(var_1.a.a.a)), vec4<i32>(-global2.e.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, -12679i), global2.a.e.yw), _wgslsmith_mult_i32(1i, global2.e.b.x), global1.e.x), _wgslsmith_clamp_vec2_u32(~global1.c, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.e.c.x, 13u)], 13u)], 4294967295u) ^ global1.c, max(global2.e.c, global2.e.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1907f)), 520f), firstTrailingBit(vec4<i32>(var_1.a.a.e.x, global1.e.x, 0i, global2.e.e.x))), -620f, global2.a.d, var_1.a.e.b.x >> (global1.c.x % 32u), global2.e), any(!(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), var_0.x))), ~(-((vec4<i32>(var_1.b.x, 2147483647i, -16620i, 3019i) ^ global2.e.e) >> (vec4<u32>(12693u, global1.c.x, u_input.c, 49822u) % vec4<u32>(32u)))), !var_0.zx, global2.e);
    var_1 = Struct_4(Struct_2(Struct_1(318f, -countOneBits(var_1.a.e.b), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(138652u, 13u)]), _wgslsmith_f_op_f32(abs(-189f)), vec4<i32>(firstTrailingBit(-1i), i32(-1i) * -57350i, ~(-8381i), global2.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.e.d))), global1.b.x, Struct_1(374f, abs(max(global2.a.e, global1.b)), vec2<u32>(4294967295u, countOneBits(var_1.a.e.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + -847f)), vec4<i32>(-26832i, var_2.e.e.x, -u_input.a.x, _wgslsmith_mult_i32(-11393i, global2.a.b.x)))), vec4<i32>(reverseBits(_wgslsmith_sub_i32(0i, min(u_input.a.x, global2.a.e.x))), select(countOneBits(-1671i) >> (reverseBits(global3[_wgslsmith_index_u32(global2.a.c.x, 17u)]) % 32u), 1i, !(true | var_0.x)), global1.b.x, global1.e.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - -341f), 462f)), var_2.e.d));
}

fn func_2(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(countOneBits(-57447i), _wgslsmith_add_i32(countOneBits(16072i), -1i)), _wgslsmith_div_vec2_i32(~select(vec2<i32>(-15116i, -2147483647i), vec2<i32>(global1.b.x, global1.e.x), vec2<bool>(false, false)), vec2<i32>(-arg_0.x, select(0i, 9165i, false))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-328f - _wgslsmith_f_op_f32(func_3(56873u))), -1524f) - _wgslsmith_f_op_f32(sign(global2.e.d)));
    var var_3 = Struct_5(min(vec2<i32>(global2.d, -2147483647i), abs(~vec2<i32>(-1i, 1i))), true, vec3<bool>(0i == ~global1.b.x, true, true));
    let var_4 = -286f;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-345f, global2.e.d, var_4) + vec3<f32>(global1.d, global1.a, var_4)))))))));
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global1.e)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-121f, global2.a.a, 1021f), vec3<f32>(1272f, 1762f, global2.e.a)))) * vec3<f32>(-2163f, global2.a.a, 2268f))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> u32 {
    global3 = array<u32, 17>();
    var var_0 = 52070u & global2.e.c.x;
    var var_1 = Struct_5(select(-global2.a.e.zy, ~global2.e.e.ww, false), true, select(vec3<bool>(false, arg_0.d.x & (false != arg_0.b), true), !(!(!vec3<bool>(false, arg_0.b, arg_0.d.x))), arg_0.d.x && true));
    let var_2 = Struct_5(global2.a.e.wy, arg_0.d.x, var_1.c);
    var var_3 = Struct_2(arg_0.a.a, -2072f, -801f, 1i, global2.e);
    return ~u_input.b;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_5) -> vec2<u32> {
    global1 = global2.a;
    let var_0 = ~(min(reverseBits(vec4<u32>(4294967295u, arg_2.e.c.x, arg_2.e.c.x, global0[_wgslsmith_index_u32(14338u, 13u)]) >> (vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.e.c.x, 17u)], 13u)], 55524u, arg_2.e.c.x) % vec4<u32>(32u))), select(vec4<u32>(0u, 4294967295u, 1u, arg_2.a.c.x) & vec4<u32>(4294967295u, u_input.b, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global3[_wgslsmith_index_u32(1u, 17u)], u_input.b, global2.a.c.x), vec4<u32>(arg_0.x, global3[_wgslsmith_index_u32(arg_0.x, 17u)], 0u, global3[_wgslsmith_index_u32(arg_0.x, 17u)])), select(vec4<bool>(false, arg_1.c.x, false, true), vec4<bool>(arg_3.b, false, true, arg_3.b), false))) << (_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.e.c.x, arg_2.e.c.x, u_input.b, 67706u), vec4<u32>(3200u, 1u, 31146u, 1u))), ~(~vec4<u32>(0u, arg_2.e.c.x, u_input.b, 43631u)), vec4<u32>(~1u, ~arg_2.a.c.x, select(global2.a.c.x, 28063u, true), global2.a.c.x)) % vec4<u32>(32u)));
    return _wgslsmith_add_vec2_u32(global1.c, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(~arg_2.e.c), ~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], arg_0.x)), abs(vec2<u32>(global3[_wgslsmith_index_u32(~arg_2.a.c.x, 17u)], _wgslsmith_sub_u32(4294967295u, var_0.x))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, 0u), ~var_0.ww), vec2<u32>(select(92208u, 4294967295u, arg_3.b), func_4(Struct_3(arg_2, arg_1.c.x, global2.a.e, arg_3.c.xz, global2.a), vec3<f32>(310f, 2339f, global1.d))), ~_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(arg_0.x, 17u)]), global1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~22692u, 0u, ~0u), vec3<u32>(global3[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_add_u32(0u, 62808u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(41358u, 17u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12540u, 13u)], 17u)], 13u)], u_input.b), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 17u)], 17u)], 0u, 51092u, 1u)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_4(Struct_3(Struct_2(Struct_1(global2.a.d, global2.e.b, vec2<u32>(4294967295u, 0u), global1.d, vec4<i32>(u_input.a.x, u_input.a.x, -35812i, -2147483647i)), global1.a, -1973f, global2.a.b.x, global2.e), true, vec4<i32>(global2.e.e.x, 28417i, global2.e.e.x, u_input.a.x), vec2<bool>(false, true), Struct_1(-296f, global1.e, vec2<u32>(68260u, u_input.c), global2.e.d, vec4<i32>(global2.a.b.x, global1.b.x, global2.e.b.x, -40666i))), _wgslsmith_f_op_vec3_f32(func_1())), global1.c.x ^ 0u), 13u)], _wgslsmith_div_u32(firstLeadingBit(1u), ~reverseBits(u_input.b))), Struct_5(u_input.a.xx, all(vec4<bool>(global2.c <= 388f, false, select(true, true, true), true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), true)), Struct_2(global2.e, _wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_vec3_f32(func_1()).x, global2.e.b.x & (i32(-1i) * -global1.b.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) * -895f), _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, global2.a.e.x, global2.e.b.x, u_input.a.x), ~vec4<i32>(global2.a.e.x, global2.e.e.x, -2147483647i, global1.b.x)), global1.c, -657f, vec4<i32>(-1i, u_input.a.x, 41278i, -global1.b.x))), Struct_5(global1.e.zz, true, vec3<bool>(true, true, true)));
    global2 = Struct_2(Struct_1(-1000f, ~firstLeadingBit(max(global1.b, global1.e)), ~(min(global2.a.c, global2.a.c) >> (vec2<u32>(var_0.x, global3[_wgslsmith_index_u32(10359u, 17u)]) % vec2<u32>(32u))), global2.e.d, vec4<i32>(global2.e.b.x, -global2.a.b.x, 30861i, 17219i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(global2.e.d, global2.e.d), false)) + -225f)), -415f, firstTrailingBit(-2446i), Struct_1(_wgslsmith_f_op_f32(-global1.a), firstTrailingBit(vec4<i32>(i32(-1i) * -4897i, i32(-1i) * -46137i, -2147483647i, -global2.a.e.x)), global1.c, _wgslsmith_f_op_f32(-global2.c), vec4<i32>(abs(~0i), -11717i, _wgslsmith_div_i32(global1.b.x, u_input.a.x), -31330i)));
    let var_1 = Struct_4(Struct_2(global2.e, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(global2.c + global2.e.a)), _wgslsmith_div_f32(-507f, _wgslsmith_f_op_f32(trunc(1228f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.d) + _wgslsmith_f_op_f32(-123f * global1.d)), ~49462i, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-976f, global2.a.a)))), -_wgslsmith_sub_vec4_i32(global2.a.b, global1.b), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) * -2170f), _wgslsmith_sub_vec4_i32(global1.e, global1.b) & min(vec4<i32>(-2147483647i, global1.e.x, -16555i, -1i), vec4<i32>(1i, -2147483647i, global1.e.x, 1i)))), abs(global1.b));
    let var_2 = 654f;
    global3 = array<u32, 17>();
    var_0 = reverseBits(global1.c);
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1393f, global1.a)), -(select(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(var_1.b.x, global1.e.x, -2147483647i, 13534i), vec4<bool>(false, true, true, false)) & (vec4<i32>(u_input.a.x, 0i, global1.b.x, 1i) & vec4<i32>(-56226i, var_1.b.x, 2147483647i, global2.d))) & global2.e.e, ~var_1.a.a.c, var_1.a.e.a, reverseBits(vec4<i32>(global2.a.b.x, 2147483647i, _wgslsmith_add_i32(~global2.d, var_1.b.x), u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(global1.d - global1.d);
    var var_4 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) == !all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, firstLeadingBit(u_input.a.x) | abs(global1.e.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_1.a.b, 115f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(899f, 159f, var_2))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global1.d, global2.b)))), vec3<bool>(true, any(vec2<bool>(true, true)), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2(vec4<i32>(global2.a.b.x, -1i, 0i, -9415i))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2, global2.e.a, var_1.a.c), vec3<f32>(1228f, var_1.a.a.d, var_1.a.b))))))), ~(countOneBits(reverseBits(vec3<u32>(0u, 1u, global3[_wgslsmith_index_u32(0u, 17u)]))) >> (select(~vec3<u32>(40857u, global2.e.c.x, global1.c.x), vec3<u32>(global3[_wgslsmith_index_u32(global1.c.x, 17u)], global0[_wgslsmith_index_u32(var_0.x, 13u)], global2.a.c.x) << (vec3<u32>(41051u, 37393u, u_input.b) % vec3<u32>(32u)), true) % vec3<u32>(32u))), 383f);
}

