struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(4294967295u, 17452u, 21059u, 45127u, 1u, 7021u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(arg_0 - 1142f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -680f), arg_0))), firstLeadingBit(-1i), ~_wgslsmith_mod_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(68992u, 1u, 0u), vec3<u32>(4294967295u, arg_1.d, arg_1.d)), arg_1.d), ~select(1u, 41263u, true)), _wgslsmith_div_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(-arg_1.e, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.e.x, 1i, u_input.c.x, arg_1.c), vec4<i32>(arg_1.c, 0i, 1i, 22392i)))), arg_1.e));
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_1 = select(abs(55820u), abs(4294967295u ^ var_0.d) >> (_wgslsmith_clamp_u32(~1u, ~58916u, ~(~global0[_wgslsmith_index_u32(80496u, 7u)])) % 32u), !(!(_wgslsmith_mult_i32(-18269i, 17139i) != -arg_1.c)));
    global0 = array<u32, 7>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, 1461f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(931f, arg_0)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, var_0.b)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(141f, arg_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, arg_0)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * arg_1.a) + -857f)), Struct_1(arg_1.e.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(588f, 1812f) * _wgslsmith_f_op_f32(select(arg_1.e.b, -973f, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * arg_1.a))), ~(1i << ((arg_1.c >> (u_input.d % 32u)) % 32u)), abs(u_input.d), vec4<i32>(0i, 11779i, max(-1i, u_input.c.x), u_input.c.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 7u)], 7u)], global0[_wgslsmith_index_u32(1u, 7u)], u_input.b, global0[_wgslsmith_index_u32(u_input.d, 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], 4294967295u, u_input.b) ^ vec4<u32>(arg_1.e.d, 82131u, global0[_wgslsmith_index_u32(138373u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])) % vec4<u32>(32u)))));
    var var_1 = Struct_2(1385f, firstLeadingBit(_wgslsmith_dot_vec4_i32(arg_1.d, _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, 7296i, 1i, 1828i)), arg_1.d))), ~1u, ~firstLeadingBit(vec4<i32>(u_input.c.x, -11460i | arg_1.d.x, _wgslsmith_add_i32(arg_1.d.x, u_input.c.x), -26690i)), Struct_1(176f, -1340f, ~(-23362i), ~arg_1.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(-16814i), -u_input.a.x, _wgslsmith_dot_vec4_i32(arg_1.d, vec4<i32>(arg_1.b, u_input.a.x, arg_1.e.e.x, -1i)), u_input.a.x), select(vec4<i32>(0i, u_input.a.x, 46836i, u_input.c.x) << (vec4<u32>(18827u, 39509u, 4294967295u, 4294967295u) % vec4<u32>(32u)), arg_1.d, arg_0.x), vec4<i32>(-1i & arg_1.d.x, abs(-2147483647i), 2147483647i, -2147483647i))));
    let var_2 = vec4<u32>(u_input.d >> (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 7u)], arg_1.c)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(68867u, 1u), vec2<u32>(24791u, u_input.d)), ~vec2<u32>(u_input.b, var_1.e.d))) % 32u), u_input.b, 9544u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u << (arg_1.c % 32u), ~global0[_wgslsmith_index_u32(arg_1.c, 7u)], global0[_wgslsmith_index_u32(arg_1.c, 7u)]), vec3<u32>(28762u, 45906u, 1u)));
    global0 = array<u32, 7>();
    var var_3 = vec2<i32>(-1i) * -((vec2<i32>(-1i) * -arg_1.d.yy) ^ -max(vec2<i32>(61420i, 0i), arg_1.e.e.yy));
    return u_input.c.x;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(-2657f, 689f))) + vec2<f32>(-744f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1204f, 1163f)) * _wgslsmith_f_op_f32(abs(2129f))))));
    global0 = array<u32, 7>();
    var var_1 = Struct_1(-226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), u_input.a.x, 21740u, vec4<i32>(21693i, 0i, _wgslsmith_div_i32(abs(~(-2147483647i)), firstLeadingBit(firstLeadingBit(-23442i))), u_input.a.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 996f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_1.c, u_input.b, var_1.e);
    var var_3 = firstTrailingBit(vec3<i32>(-1i, _wgslsmith_clamp_i32(var_2.c, 0i & func_2(vec4<bool>(false, false, false, false), Struct_2(var_1.b, -10431i, global0[_wgslsmith_index_u32(7907u, 7u)], vec4<i32>(-38800i, u_input.a.x, u_input.a.x, -18488i), Struct_1(var_0.x, -397f, 0i, u_input.d, var_2.e))), ~(~var_1.c)), -74620i));
    return -738f;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-312f - 623f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1312f, -616f) * -2506f)))), u_input.a.x, global0[_wgslsmith_index_u32(0u & u_input.d, 7u)], vec4<i32>(-1i, -arg_1.d.x, max(-max(arg_1.e.c, arg_1.d.x), max(u_input.c.x, u_input.c.x | 21360i)), u_input.a.x), arg_1.e);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(1031f * 537f), arg_1.e.e.x, 23580u, vec4<i32>(-arg_1.d.x, abs(~(var_0.b >> (39226u % 32u))), -45964i, ~(-2147483647i)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.b + -419f) * _wgslsmith_f_op_f32(max(545f, -1073f)))), 0i, ~(1u & arg_1.c) | firstLeadingBit(659u), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.d.wyz, vec3<i32>(1i, var_0.e.e.x, 0i)), arg_1.d.x, firstTrailingBit(1i), ~(-2147483647i)), ~(~vec4<i32>(0i, 37707i, 2147483647i, u_input.a.x)), -vec4<i32>(var_0.b, -49822i, -1i, u_input.c.x))));
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    var var_2 = !(!select(vec3<bool>(arg_3 || false, any(vec2<bool>(arg_3, false)), true), vec3<bool>(all(vec4<bool>(arg_3, false, false, false)), arg_3 | arg_3, !arg_3), any(select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, arg_3, arg_3), arg_3))));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~func_4(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(u_input.d, 90941u, global0[_wgslsmith_index_u32(348u, 7u)])), Struct_2(_wgslsmith_f_op_f32(func_1()), 38347i, ~9881u, countOneBits(vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x)), Struct_1(621f, 514f, u_input.c.x, u_input.d, vec4<i32>(2147483647i, -40289i, u_input.c.x, -2147483647i))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -421f))), vec2<f32>(-1000f, 1565f))), false));
    let var_1 = max(firstLeadingBit(-1i), -2147483647i);
    let var_2 = ~(~(~(select(vec4<i32>(2147483647i, 0i, 0i, -13516i), vec4<i32>(-28240i, 2147483647i, var_1, u_input.a.x), vec4<bool>(false, false, false, true)) | vec4<i32>(-21378i, u_input.c.x, 35551i, var_1))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-895f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -774f)))))), -func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_add_i32(-1i, var_2.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)] | 28459u, 7u)], var_2, Struct_1(323f, 657f, u_input.c.x, 2379u, vec4<i32>(-1i, u_input.c.x, u_input.c.x, var_1)))), u_input.b, vec4<i32>(_wgslsmith_mult_i32(0i, 1i), 2147483647i, 1i, min(abs(-var_1), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, -10146i, 2147483647i), vec3<i32>(0i, 2147483647i, u_input.a.x), vec3<i32>(var_2.x, -21368i, -10007i)), u_input.a))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-680f - -466f)), 1448f, 2147483647i, firstLeadingBit(0u), ~(~vec4<i32>(18711i, var_2.x, -1i, u_input.c.x))));
    let var_4 = var_3.e.a;
    var var_5 = var_3.e.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x, vec3<i32>(var_3.b, _wgslsmith_clamp_i32(select(~14325i, -var_3.b, true), 25351i | _wgslsmith_sub_i32(var_2.x, 2147483647i), -var_1), abs(abs(i32(-1i) * -2147483647i))), ~var_3.e.d, vec2<u32>(select(4294967295u, firstTrailingBit(global0[_wgslsmith_index_u32(~510u, 7u)]), false), _wgslsmith_dot_vec4_u32(~vec4<u32>(64978u, global0[_wgslsmith_index_u32(22458u, 7u)], u_input.d, u_input.b), ~vec4<u32>(u_input.b, var_3.c, 4294967295u, 71188u)) << (_wgslsmith_clamp_u32(~4294967295u, ~u_input.b, global0[_wgslsmith_index_u32(~24333u, 7u)]) % 32u)));
}

