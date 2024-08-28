struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<bool, 15>;

var<private> global3: array<u32, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1550f - arg_2.x))), _wgslsmith_f_op_f32(floor(564f)));
    var var_1 = 1u;
    let var_2 = _wgslsmith_dot_vec2_i32(~firstTrailingBit(select(-vec2<i32>(u_input.a.x, arg_0), vec2<i32>(132i, arg_0) | vec2<i32>(u_input.d, arg_0), vec2<bool>(true, true))), vec2<i32>(-1i, arg_0));
    return vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1299f))) - arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 142f) + _wgslsmith_f_op_f32(sign(1153f))))), arg_1, _wgslsmith_f_op_f32(trunc(-104f)), 241f);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1368f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(256f * -1415f))))) * -832f), u_input.d, vec4<u32>(0u, max(arg_2.x, 62720u) | ~firstTrailingBit(arg_2.x), u_input.e, reverseBits(firstTrailingBit(_wgslsmith_mod_u32(24739u, u_input.e)))), _wgslsmith_f_op_vec4_f32(func_3(0i, 660f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 392f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1152f, 692f))))))));
    global0 = 36916i ^ (-(~(-arg_3)) | var_0.b);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.d.x + 1f), ~(-(~(-1i))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_0.c.x, 4388u, arg_2.x, 4294967295u)) >> (vec4<u32>(arg_2.x, 1u, var_0.c.x, var_0.c.x) % vec4<u32>(32u)), ~abs(vec4<u32>(4294967295u, 1u, 1u, var_0.c.x)), u_input.c), var_0.d));
    let var_2 = var_1.a;
    return true;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<bool, 15>();
    return vec4<bool>(false, func_2(~u_input.d, vec3<bool>(u_input.b.x != -u_input.b.x, any(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.c.x, 15u)], global2[_wgslsmith_index_u32(arg_0.c.x, 15u)], global2[_wgslsmith_index_u32(33085u, 15u)])), false), arg_0.c.wxy, arg_0.b), any(vec4<bool>(global2[_wgslsmith_index_u32(~(55169u & global3[_wgslsmith_index_u32(4294967295u, 29u)]), 15u)], all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.c.x, 29u)], 15u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.c.x, 29u)], 15u)])), all(!vec4<bool>(global2[_wgslsmith_index_u32(1901u, 15u)], true, global2[_wgslsmith_index_u32(u_input.e, 15u)], false)), true)), all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 15u)], true, false), !select(vec4<bool>(false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5655u, 29u)], 15u)], global2[_wgslsmith_index_u32(arg_0.c.x, 15u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 15u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 15u)], true, global2[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.c.x, 15u)], global2[_wgslsmith_index_u32(arg_0.c.x, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)])), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 78341u, 6977u, 1u), vec4<u32>(arg_0.c.x, u_input.e, 4294967295u, 18633u)), 15u)], !global2[_wgslsmith_index_u32(61457u, 15u)], true, any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], true))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> vec2<i32> {
    var var_0 = -20535i;
    global3 = array<u32, 29>();
    global3 = array<u32, 29>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(627f)) + 1000f);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_sub_i32(27129i, arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), vec2<f32>(var_1, -1792f))).x, -1329f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(-22626i, arg_1.d.x, arg_1.d.yw)).x), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x * var_1)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d * arg_1.d)));
    return -u_input.b;
}

fn func_5(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    global3 = array<u32, 29>();
    var var_0 = Struct_2(Struct_1(331f, -(i32(-1i) * -2000i), vec4<u32>(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 1u), u_input.c.x), 4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.xz)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 306f, -1791f, -2224f), vec4<f32>(908f, 1000f, 1357f, 322f), vec4<bool>(arg_1, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 29u)], 15u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(922f, -391f, 1844f, 1036f)))), !(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.e, 15u)], true))))));
    let var_1 = Struct_2(Struct_1(var_0.a.d.x, u_input.b.x, firstLeadingBit(vec4<u32>(0u, u_input.c.x, global3[_wgslsmith_index_u32(1u, 29u)], u_input.e) ^ min(vec4<u32>(var_0.a.c.x, 4294967295u, var_0.a.c.x, 53159u), var_0.a.c)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.d.x)) * _wgslsmith_f_op_vec4_f32(func_3(2147483647i, var_0.a.d.x, var_0.a.d.xz)).x), _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(select(-1196f, var_0.a.a, func_2(u_input.a.x, vec3<bool>(arg_1, false, arg_1), vec3<u32>(0u, var_0.a.c.x, 1u), var_0.a.b))), _wgslsmith_f_op_f32(-var_0.a.a))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-277f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.d.x - var_1.a.d.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-738f * -1172f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.d.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1102f * var_1.a.d.x) * var_0.a.d.x))));
    let var_3 = var_1;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.b.x;
    var var_0 = func_5(func_4(select(!func_1(Struct_1(-813f, -1i, u_input.c, vec4<f32>(-1828f, 1000f, -181f, 2136f))), !select(vec4<bool>(global2[_wgslsmith_index_u32(6506u, 15u)], false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21956u, 29u)], 15u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34335u, 29u)], 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 15u)], true, global2[_wgslsmith_index_u32(u_input.e, 15u)], global2[_wgslsmith_index_u32(18915u, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 15u)], true, true, global2[_wgslsmith_index_u32(35957u, 15u)])), vec4<bool>(global2[_wgslsmith_index_u32(abs(1026u), 15u)], false, true, true)), Struct_1(_wgslsmith_f_op_f32(-548f * _wgslsmith_f_op_f32(f32(-1f) * -381f)), max(abs(-29783i), select(u_input.d, 0i, false)), vec4<u32>(33652u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e, 13584u), vec3<u32>(37460u, 13011u, u_input.e)), u_input.e, 1u), vec4<f32>(_wgslsmith_f_op_f32(-2149f - -459f), _wgslsmith_f_op_f32(-522f - 1204f), _wgslsmith_div_f32(-1000f, -1488f), _wgslsmith_f_op_f32(-1520f - 742f))), u_input.b.x, func_1(Struct_1(1071f, 1i, ~vec4<u32>(55679u, 0u, u_input.e, 0u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(470f, -281f, -1293f, -1183f))))).xx), true);
    global2 = array<bool, 15>();
    let var_1 = Struct_1(1000f, -1648i, func_5(vec2<i32>(u_input.b.x, u_input.d), all(!vec4<bool>(global2[_wgslsmith_index_u32(79435u, 15u)], false, global2[_wgslsmith_index_u32(u_input.e, 15u)], global2[_wgslsmith_index_u32(var_0.c.x, 15u)]))).c, vec4<f32>(_wgslsmith_f_op_f32(min(1f, var_0.a)), 549f, 228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    global3 = array<u32, 29>();
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(var_1.c.wzy, u_input.c.wwz), min(~0u, ~var_0.c.x)), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(12357u, 57416u), vec2<u32>(var_2.c.x, 4294967295u)), 29u)], _wgslsmith_mult_u32(_wgslsmith_add_u32(77711u, var_2.c.x), var_0.c.x >> (var_1.c.x % 32u))), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(select(var_1.c.x, ~0u, global2[_wgslsmith_index_u32(var_0.c.x, 15u)] | true), 29u)], 1u), firstTrailingBit(_wgslsmith_dot_vec3_u32(~var_1.c.wzw, vec3<u32>(u_input.c.x, var_1.c.x, var_1.c.x) | vec3<u32>(1327u, global3[_wgslsmith_index_u32(0u, 29u)], 1u)))), u_input.a);
}

