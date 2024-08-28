struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(2147483647i, 2633i, -16933i, 43312i, -32486i, -40261i, -4683i, 0i, 21157i, 25667i, -36281i, -78498i);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(2147483647i, -3170i), Struct_1(0i, 2147483647i), vec3<i32>(-6086i, 2147483647i, 2147483647i), vec3<u32>(1u, 4294967295u, 2193u)), Struct_3(Struct_1(34453i, 1i), Struct_1(i32(-2147483648), 2147483647i), vec3<i32>(-1i, 58102i, -29335i), vec3<u32>(0u, 1u, 0u)), Struct_3(Struct_1(27875i, -10494i), Struct_1(-1i, -84510i), vec3<i32>(2147483647i, -21703i, 60226i), vec3<u32>(34991u, 34110u, 27450u)));

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d, firstTrailingBit((1u << (u_input.d % 32u)) & 4294967295u)), ~(~(~1u))), 3u)];
    global2 = array<Struct_3, 3>();
    var var_1 = var_0.d.x;
    global3 = select(!vec3<bool>(global3.x, all(vec4<bool>(false, global3.x, false, global1.x)), !global3.x), select(select(!(!vec3<bool>(global1.x, global3.x, global1.x)), select(!vec3<bool>(global3.x, true, false), vec3<bool>(true, global3.x, global1.x), !global3.x), vec3<bool>(true, select(true, global3.x, global1.x), !global1.x)), vec3<bool>(global1.x, global3.x, min(u_input.a.x, u_input.a.x) != 1u), vec3<bool>(arg_1.x > 459f, select(global3.x & global3.x, false, true), false)), !select(select(!vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, false, global3.x), select(vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, false, global1.x), global1.x)), !(!vec3<bool>(global1.x, global1.x, false)), vec3<bool>(global3.x, any(vec4<bool>(global3.x, global3.x, true, true)), true)));
    var_1 = 13524u;
    return !(!select(global3.zx, !(!global3.xz), true));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -105f), true)), _wgslsmith_div_f32(-730f, _wgslsmith_f_op_f32(610f - -428f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-291f, -1295f)))), vec3<f32>(-1174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(623f, 137f))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(select(655f, -278f, global3.x)), global3.x))))), vec3<i32>(-4171i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(14424u, 12u)], u_input.b.x), ~4621i), Struct_1(countOneBits(-_wgslsmith_add_i32(38358i, u_input.c)), -9113i), Struct_1(abs(i32(-1i) * -global0[_wgslsmith_index_u32(1u, 12u)]), global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 12u)]));
    global1 = !(!(!(!func_3(vec2<i32>(-33272i, 0i), vec3<f32>(var_0.a.x, 871f, 304f), 1136f, Struct_2(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(u_input.e, 0i, -1i), var_0.c, Struct_1(var_0.d.b, -1i))))));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    let var_1 = 1000f;
    return max(max(~(~vec4<i32>(-17825i, -73001i, global0[_wgslsmith_index_u32(15579u, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)])), max(-vec4<i32>(var_0.c.a, -16368i, 0i, 1i), -vec4<i32>(0i, global0[_wgslsmith_index_u32(83968u, 12u)], -1i, 1i))), firstTrailingBit(-vec4<i32>(u_input.e, -1i, u_input.e, -46927i))) | vec4<i32>(abs(var_0.b.x >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.d, 0u, u_input.a.x)) % 32u)), max(min(-1i, 1i) | -global0[_wgslsmith_index_u32(u_input.a.x, 12u)], ~_wgslsmith_mult_i32(-12682i, global0[_wgslsmith_index_u32(u_input.d, 12u)])), -var_0.b.x, -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.b.zx, var_0.b.yy, vec2<i32>(22516i, var_0.c.a)), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(55822u, 12u)]) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> i32 {
    global1 = vec2<bool>(all(arg_0), 275f < _wgslsmith_f_op_f32(-1418f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(sign(arg_1)))));
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.b.x), u_input.b.xy)), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.d, 12u)], select(max(-8031i, -2147483647i), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.d, 12u)], u_input.e), !global1.x)), min(abs(u_input.e) ^ -1i, 0i)), countOneBits(func_2()), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(36246u, 12u)], u_input.e, ~0i, _wgslsmith_add_i32(u_input.c, u_input.b.x)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-17957i, -69330i, u_input.c, global0[_wgslsmith_index_u32(u_input.d, 12u)]), vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -1i, -44239i), vec4<bool>(true, false, true, arg_0.x)), ~vec4<i32>(global0[_wgslsmith_index_u32(0u, 12u)], -29544i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 2147483647i))), ~firstTrailingBit(countOneBits(vec4<i32>(-28109i, 1i, global0[_wgslsmith_index_u32(847u, 12u)], -2147483647i)))));
    global0 = array<i32, 12>();
    var var_1 = arg_0;
    let var_2 = select(vec3<bool>(all(global3.yz), arg_0.x, false), vec3<bool>(!any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + _wgslsmith_f_op_f32(701f * arg_1)) < -912f, true), vec3<bool>(true, true, true));
    return u_input.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_4 {
    global0 = array<i32, 12>();
    global3 = !(!select(select(vec3<bool>(true, global3.x, false), select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, global3.x, true), vec3<bool>(global3.x, global1.x, true)), !vec3<bool>(false, true, global1.x)), vec3<bool>(true, global3.x, all(vec3<bool>(false, true, true))), !(!vec3<bool>(global3.x, true, global1.x))));
    global0 = array<i32, 12>();
    var var_0 = !(!select(!(!vec4<bool>(global3.x, true, false, false)), vec4<bool>(false, u_input.d != 1u, any(vec4<bool>(false, true, global3.x, false)), false), vec4<bool>(!global1.x, true, !global3.x, global1.x)));
    var var_1 = true;
    return Struct_4(vec4<i32>(_wgslsmith_mod_i32(-firstLeadingBit(28557i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.x, -60024i, u_input.e, 1i), vec4<i32>(arg_0.x, -53302i, 2147483647i, 0i), vec4<bool>(true, global3.x, false, true)), vec4<i32>(u_input.c, 8133i, global0[_wgslsmith_index_u32(u_input.d, 12u)], -21643i))), -659i, _wgslsmith_dot_vec4_i32((vec4<i32>(-55422i, 2147483647i, arg_2.x, 0i) ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 12u)], arg_2.x, 23090i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)])) >> (_wgslsmith_add_vec4_u32(vec4<u32>(21687u, u_input.d, u_input.d, u_input.a.x), vec4<u32>(u_input.d, u_input.d, u_input.a.x, u_input.d)) % vec4<u32>(32u)), vec4<i32>(-global0[_wgslsmith_index_u32(30269u, 12u)], arg_1.x, i32(-1i) * -63036i, 2147483647i)), arg_0.x), select(global3.x, !all(!vec4<bool>(false, global3.x, true, false)), var_0.x), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-222f, -566f, 380f), vec3<f32>(-1219f, 188f, -802f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -1302f)))), vec3<i32>(38924i, ~abs(arg_0.x), 24061i), Struct_1(arg_0.x, -(global0[_wgslsmith_index_u32(u_input.a.x, 12u)] & arg_0.x)), Struct_1(-1i >> (_wgslsmith_mod_u32(u_input.a.x, 1u) % 32u), arg_2.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(reverseBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.d, 17627u))), abs(~vec4<u32>(u_input.a.x, 1u, u_input.d, u_input.a.x))), min(min(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, 42928u), vec4<u32>(u_input.d, 14377u, u_input.a.x, 27633u))), vec4<u32>(11022u, firstLeadingBit(41564u), _wgslsmith_sub_u32(u_input.d, u_input.a.x), u_input.d & u_input.d)), abs(vec4<u32>(4294967295u, ~0u, firstTrailingBit(19140u), _wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1032f, 730f, 635f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(573f, 200f, -552f)))), ~_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -25813i, -21532i)), arg_0 >> (u_input.a % vec3<u32>(32u))), Struct_1(func_2().x | _wgslsmith_mult_i32(-1i, arg_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_2.x, 1i), vec4<i32>(44752i, 34054i, 2147483647i, arg_0.x) >> (vec4<u32>(u_input.d, 87603u, u_input.d, u_input.a.x) % vec4<u32>(32u)))), Struct_1(2147483647i, reverseBits(arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    let var_0 = func_4(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1158i, global0[_wgslsmith_index_u32(1u, 12u)], 0i), u_input.b), vec3<i32>(-34922i, func_1(global3.zx, -269f), -2147483647i), reverseBits(~vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(209u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]))), _wgslsmith_mod_vec3_i32(-func_2().xzw, ~(vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]) | vec3<i32>(u_input.b.x, u_input.b.x, 11671i)))), abs(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)])), ~firstTrailingBit(u_input.b << (max(vec3<u32>(17516u, 64664u, 0u), u_input.a) % vec3<u32>(32u))));
    var var_1 = vec3<i32>(-1i) * -reverseBits(vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(~0u, 12u)], u_input.b.x));
    let var_2 = vec4<bool>(global1.x, any(!vec4<bool>(!global1.x, false, !global3.x, global1.x)), !(var_0.c.a.x != var_0.c.a.x), (44819u ^ ~u_input.a.x) >= _wgslsmith_sub_u32(u_input.d, var_0.d.x));
    var var_3 = func_4(~u_input.b, -(~func_2().xx ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.x, 1i), firstTrailingBit(u_input.b.zy))), max(vec3<i32>(-15559i, 24770i, select(abs(41486i), select(var_1.x, -2147483647i, true), var_1.x <= 1i)), _wgslsmith_div_vec3_i32(~(~u_input.b), -_wgslsmith_div_vec3_i32(vec3<i32>(5612i, global0[_wgslsmith_index_u32(1u, 12u)], var_0.c.d.b), var_0.c.b)))).c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, 1000f)), _wgslsmith_mult_u32(u_input.a.x, countOneBits(var_0.d.x)), ~func_1(select(!vec2<bool>(false, var_0.b), global3.yy, !global1.x), var_0.c.a.x));
}

