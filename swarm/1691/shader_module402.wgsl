struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: array<i32, 23>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(global3.b, 23u)];
    let var_1 = -arg_2.c;
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(30980u, ~37454u, 1u << (~firstLeadingBit(u_input.a) % 32u), 0u), vec4<u32>(20553u, 0u, ~(~firstLeadingBit(1u)), reverseBits(_wgslsmith_clamp_u32(4294967295u, max(u_input.a, var_0.b), ~1u))));
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-694f, arg_1.a.x), vec2<f32>(1376f, arg_2.a.x))) - arg_2.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), -299f))), _wgslsmith_clamp_u32(global3.b, ~arg_1.b, firstTrailingBit(countOneBits(var_0.b)) | 4294967295u), vec3<i32>(arg_2.c.x, select(-1i, ~global2[_wgslsmith_index_u32(1u, 23u)], true), 1i));
    var_2 = ~(~select(~vec4<u32>(0u, arg_1.b, arg_2.b, var_2.x), vec4<u32>(4294967295u, arg_2.b, arg_1.b, 4294967295u) ^ vec4<u32>(33777u, 31905u, arg_1.b, var_3.b), vec4<bool>(false, false, true, true)) & ~abs(~vec4<u32>(8992u, 4294967295u, var_2.x, arg_1.b)));
    return any(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), any(vec2<bool>(false, false)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> bool {
    global3 = arg_0;
    var var_0 = Struct_1(arg_0.a, u_input.c.x, ~(~_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, arg_0.c.x, global3.c.x), arg_2.wzy)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a), ~_wgslsmith_sub_u32(u_input.c.x << (global3.b % 32u), 1u) ^ global3.b, select(~_wgslsmith_sub_vec3_i32(arg_0.c, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, -1i, -2147483647i), vec3<i32>(-1i, global3.c.x, global2[_wgslsmith_index_u32(arg_0.b, 23u)]))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, global3.c.x, 1i) >> (vec3<u32>(60510u, var_0.b, arg_0.b) % vec3<u32>(32u)), ~vec3<i32>(global2[_wgslsmith_index_u32(global3.b, 23u)], 44206i, global3.c.x)), vec3<i32>(u_input.b, -1i, max(-53983i, -23906i))), vec3<bool>(false, func_3(~u_input.b, arg_0, Struct_1(vec2<f32>(var_0.a.x, arg_0.a.x), arg_0.b, vec3<i32>(arg_2.x, -2147483647i, 2375i))), false)));
    global3 = var_1;
    let var_2 = arg_0;
    return !(true || (_wgslsmith_div_i32(2147483647i, ~global2[_wgslsmith_index_u32(21515u, 23u)]) < _wgslsmith_mod_i32(arg_2.x ^ 59971i, 2147483647i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(!vec3<bool>(all(vec4<bool>(false, false, false, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.x, global2[_wgslsmith_index_u32(0u, 23u)], -6230i, -2147483647i), vec4<i32>(-10483i, -56042i, -1i, arg_1.c.x)) >= -26123i, true), vec3<bool>(!all(vec2<bool>(true, true)), true, 4294967295u > max(global3.b, ~60668u)), all(!vec4<bool>(true, any(vec4<bool>(true, true, false, true)), false, true)));
    var_0 = select(vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - -432f) + _wgslsmith_div_f32(1227f, arg_1.a.x)) == global3.a.x, select(arg_0.b >= arg_1.b, true, func_2(global0[_wgslsmith_index_u32(arg_1.b, 23u)], arg_0.b, vec4<i32>(38861i, 2147483647i, 1i, -1i))) && var_0.x), !(!vec3<bool>(20612i == arg_1.c.x, true, arg_0.a.x <= arg_1.a.x)), select(select(vec3<bool>(var_0.x, !var_0.x, true), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, var_0.x)), !vec3<bool>(true, false, var_0.x), !var_0.x), true), select(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(true, true, true), true), !(!vec3<bool>(false, var_0.x, var_0.x)), var_0.x), vec3<bool>(var_0.x, all(var_0.xz), all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)))));
    global0 = array<Struct_1, 23>();
    var var_1 = -(~arg_1.c.x);
    var var_2 = select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global3.c.x, 1i, u_input.b, 17137i), -vec4<i32>(-1i, 27000i, u_input.b, 53109i)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 1279u), _wgslsmith_sub_u32(1u, global3.b)), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.c.x), u_input.c.xy | u_input.c.zx)) % 32u), -_wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 23u)], firstLeadingBit(firstLeadingBit(0i))), var_0.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(175f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.a.x)))))), abs(_wgslsmith_div_u32(23767u, arg_0.b)), vec3<i32>(arg_0.c.x, u_input.b, max(countOneBits(u_input.b), _wgslsmith_add_i32(_wgslsmith_div_i32(-29539i, 24139i), ~(-1i)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<bool>) -> Struct_1 {
    return func_1(arg_0, global0[_wgslsmith_index_u32(arg_1.b, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(func_1(global0[_wgslsmith_index_u32(~abs(38695u), 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), Struct_1(vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(ceil(510f))), 4294967295u, -global3.c), ~reverseBits(~max(vec4<i32>(u_input.b, -1i, 5376i, global3.c.x), vec4<i32>(-2147483647i, 37024i, 62422i, 0i))), !select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(false, any(vec4<bool>(false, true, true, true))), true));
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1470f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(max(global3.a.x, global3.a.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -1949f, global3.a.x, global3.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(round(1298f)), 1000f, _wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(global3.a.x)), global3.a.x, _wgslsmith_f_op_f32(262f * 218f), -1036f)))));
    let var_1 = any(select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), vec2<bool>(true, true), true), vec2<bool>(!(global3.b > 83314u), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), vec2<bool>(all(vec3<bool>(true, false, true)), true)));
    global1 = array<vec2<i32>, 12>();
    global0 = array<Struct_1, 23>();
    var var_2 = func_1(global0[_wgslsmith_index_u32(~(~(~global3.b)) << (u_input.a % 32u), 23u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, global3.a.x)))), 103491u, vec3<i32>(u_input.b, 14866i, ~max(global2[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b))));
    let var_3 = select(_wgslsmith_div_vec2_u32(~vec2<u32>(global3.b, u_input.a) >> ((u_input.c.yx | ~vec2<u32>(55343u, var_2.b)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(global3.b, ~49342u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(12531u, 4294967295u)))), _wgslsmith_div_vec2_u32(u_input.c.xx, u_input.c.zx), vec2<bool>(all(vec2<bool>(var_1, var_1 != var_1)), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(global3.c.x, -var_2.c.x, var_2.c.x, -22121i), ~(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, -26997i, global2[_wgslsmith_index_u32(13400u, 23u)]), vec4<i32>(global2[_wgslsmith_index_u32(48506u, 23u)], -2147483647i, -6139i, 84311i)) ^ reverseBits(vec4<i32>(-61368i, 23083i, global2[_wgslsmith_index_u32(4294967295u, 23u)], -1i)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global3.b), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - global3.a.x) + var_0.x), vec3<u32>(u_input.a, ~4294967295u, max(1u, u_input.c.x) ^ (_wgslsmith_div_u32(13873u, var_2.b) & max(0u, 45892u))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global3.b, _wgslsmith_div_u32(var_2.b, global3.b)), _wgslsmith_sub_u32(0u, global3.b) << (abs(4294967295u) % 32u)), abs(abs(firstTrailingBit(vec2<u32>(13821u, global3.b))))));
}

