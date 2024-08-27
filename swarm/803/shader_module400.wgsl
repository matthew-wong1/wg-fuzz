struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: array<f32, 23>;

var<private> global2: f32 = 181f;

var<private> global3: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-20005i, 90349i, 2147483647i), vec3<i32>(2286i, 0i, 0i), vec3<i32>(15236i, -48242i, 1i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(6689i, 2147483647i, 36998i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(9248i, 0i, -1i));

var<private> global4: array<Struct_4, 9>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global4 = array<Struct_4, 9>();
    return -(vec4<i32>(countOneBits(arg_0.c.x), ~(-60395i), 1i, arg_0.c.x) ^ vec4<i32>(abs(-9163i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), arg_0.c.zw), 2147483647i, u_input.a));
}

fn func_3() -> vec4<i32> {
    var var_0 = 4294967295u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(805f, -122f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_f_op_f32(step(1980f, -765f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(572f)))), -1441f);
    let var_2 = ~max(-min(vec2<i32>(-46199i, -42892i), vec2<i32>(u_input.a, 16927i)), vec2<i32>(select(_wgslsmith_div_i32(u_input.a, -23507i), _wgslsmith_mod_i32(u_input.a, -2147483647i), true), reverseBits(-35921i)));
    var var_3 = abs(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 1u) ^ vec3<u32>(u_input.b, u_input.b, 7683u)), vec3<u32>(u_input.b, 71316u, 4294967295u) | vec3<u32>(33031u, 1u, 0u)));
    return ~max(reverseBits(-vec4<i32>(u_input.a, -1i, 2147483647i, u_input.a)), -(vec4<i32>(0i, -2147483647i, u_input.a, 22069i) << (vec4<u32>(4294967295u, var_3.x, 21292u, 83312u) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_5, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_1(select(select(select(vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(false, false, arg_1, arg_1), all(arg_0.c)), vec4<bool>(any(vec3<bool>(false, false, arg_0.c.x)), any(vec2<bool>(arg_1, arg_1)), !arg_1, global1[_wgslsmith_index_u32(u_input.b, 23u)] == arg_0.e), !(!vec4<bool>(true, arg_1, arg_0.c.x, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, arg_0.c.x, true), !vec4<bool>(true, true, true, arg_1)), !select(select(vec4<bool>(false, false, arg_1, false), vec4<bool>(arg_1, true, false, arg_1), arg_0.c.x), select(vec4<bool>(arg_1, arg_1, arg_0.c.x, arg_1), vec4<bool>(arg_1, arg_0.c.x, false, arg_0.c.x), vec4<bool>(arg_1, arg_1, true, true)), true)), _wgslsmith_div_f32(674f, 393f), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(~arg_0.b.x, u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), arg_0.b.xw)), abs(-vec4<i32>(arg_0.b.x, u_input.a, 37875i, u_input.a)))));
    global1 = array<f32, 23>();
    var var_1 = ~(vec4<i32>(u_input.a, -(u_input.a & 11092i), -1i, var_0.c.x) << (_wgslsmith_div_vec4_u32(min(vec4<u32>(0u, arg_0.a, arg_0.a, 1u), vec4<u32>(48277u, 68840u, 0u, 0u) ^ vec4<u32>(arg_0.a, 1u, 17458u, 4294967295u)), ~vec4<u32>(4294967295u, arg_0.a, u_input.b, u_input.b) | ~vec4<u32>(arg_0.a, u_input.b, 0u, 4294967295u)) % vec4<u32>(32u)));
    let var_2 = abs(func_3().xy);
    var var_3 = firstTrailingBit(~((1u ^ _wgslsmith_clamp_u32(27132u, u_input.b, u_input.b)) << (17035u % 32u)));
    return Struct_2(~((firstLeadingBit(vec2<u32>(26788u, 710u)) ^ ~vec2<u32>(74236u, arg_0.d)) & ((vec2<u32>(u_input.b, 39225u) | vec2<u32>(u_input.b, u_input.b)) & vec2<u32>(arg_0.a, u_input.b))), 1i);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f - 1000f))))));
    let var_0 = !select(arg_2.yy, arg_2.wy, arg_0.a.x);
    let var_1 = _wgslsmith_f_op_f32(max(arg_0.b, -607f));
    global3 = array<vec3<i32>, 7>();
    var var_2 = func_4(Struct_5(~_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_add_u32(u_input.b, 4294967295u), _wgslsmith_add_u32(u_input.b, 4294967295u)), _wgslsmith_sub_vec4_i32(func_2(Struct_1(arg_0.a, arg_0.b, arg_0.c)), func_3()), arg_2.xzw, ~(~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b, arg_0.b), _wgslsmith_f_op_f32(-arg_0.b))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1116f - 295f))))), all(!vec2<bool>(false | arg_3, any(arg_2))));
    return func_4(Struct_5(1u, vec4<i32>(arg_0.c.x, 1i, ~abs(var_2.b), -func_2(Struct_1(arg_2, var_1, vec4<i32>(u_input.a, arg_0.c.x, u_input.a, 1356i))).x), vec3<bool>(true, false, arg_2.x | true), 4294967295u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1283f)))), u_input.b >= 4294967295u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_5) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(arg_0.b, 37766i), 36688i, min(min(i32(-1i) * -23045i, ~arg_2.b.x), u_input.a) ^ u_input.a);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)) + arg_2.e))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_0.a.x, 23u)])) - 799f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 23u)]), -1242f)));
    var var_1 = Struct_1(vec4<bool>(select(arg_2.c.x, false, false), true, arg_1.b.x, (-519f < _wgslsmith_f_op_f32(trunc(-802f))) & any(vec2<bool>(arg_2.c.x, arg_1.b.x))), arg_2.e, select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-17295i, arg_0.b, -2147483647i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.b.x, 0i, 1i, -1i), arg_2.b)), vec4<i32>(min(-2147483647i, var_0.x), 1i, 4740i, _wgslsmith_mult_i32(1i, 43344i))), vec4<i32>(-2147483647i, -(i32(-1i) * -451i), var_0.x, u_input.a | u_input.a), true | all(select(vec4<bool>(false, true, arg_1.a.x, false), vec4<bool>(arg_1.a.x, true, false, false), true))));
    var var_2 = arg_0;
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(1u, 9u)];
    let var_1 = var_0.b.x;
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.b, 33413u), 23u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b << (17300u % 32u), 23u)], _wgslsmith_f_op_f32(round(-1312f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)])))))));
    let var_4 = 341f;
    let var_5 = global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(18035u, u_input.b)), func_5(func_1(Struct_1(vec4<bool>(var_0.b.x, true, var_0.b.x, false), var_4, vec4<i32>(1i, -49457i, u_input.a, 26650i)), vec4<i32>(-5705i, var_2, var_2, 0i), vec4<bool>(true, var_0.b.x, true, var_0.b.x), false), Struct_4(vec2<bool>(var_0.b.x, var_0.b.x), var_0.a), Struct_5(73220u, vec4<i32>(1i, u_input.a, u_input.a, -2147483647i), global0[_wgslsmith_index_u32(1u, 9u)], u_input.b, -466f)))), 7u)];
    global4 = array<Struct_4, 9>();
    let var_6 = Struct_3(~(-(abs(var_5.yz) << (~vec2<u32>(55185u, 92279u) % vec2<u32>(32u)))), min(u_input.b << (countOneBits(func_4(Struct_5(u_input.b, vec4<i32>(12896i, var_2, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.b, 9u)], u_input.b, -1000f), var_0.b.x).a.x) % 32u), u_input.b), max(min(~4294967295u, firstTrailingBit(firstTrailingBit(u_input.b))), ~_wgslsmith_mult_u32(1u, ~73197u)));
    let var_7 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), u_input.b, u_input.b), ~(~max(vec3<u32>(u_input.b, var_6.b, u_input.b), vec3<u32>(u_input.b, var_6.b, 1u)))), vec3<u32>(4294967295u, u_input.b, ~u_input.b)), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_4, 512f), -1055f))), -2131f, (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(1u, var_6.c), vec2<u32>(var_6.c, 4294967295u))) >> (vec2<u32>(0u, 47945u) % vec2<u32>(32u))) & vec2<u32>(firstLeadingBit(~u_input.b), countOneBits(min(var_6.c, 111570u))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_6.c, 23u)], -1060f), _wgslsmith_f_op_f32(f32(-1f) * -369f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-733f))))), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(14638u, 23u)]))));
}

