struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 3> = array<u32, 3>(60775u, 27199u, 4294967295u);

var<private> global2: vec4<i32> = vec4<i32>(9483i, i32(-2147483648), 2147483647i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global1 = array<u32, 3>();
    let var_0 = _wgslsmith_add_u32(42224u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u), vec4<u32>(0u, 90895u, u_input.c.x, u_input.a)), firstLeadingBit(u_input.c.x)), 3u)], _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(107816u, 59359u)) | 1u)));
    return ~u_input.d;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-370f + 1261f);
    global1 = array<u32, 3>();
    let var_2 = var_0;
    let var_3 = all(!vec4<bool>(select(false, any(vec2<bool>(false, true)), all(vec2<bool>(false, false))), true, true, false));
    return u_input.d;
}

fn func_2(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(u_input.d, abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, -2147483647i, 0i, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, -1i), vec4<i32>(global2.x, u_input.d, 18142i, global2.x)))), 28321i, global2.x);
    global2 = max(select((var_0.b << (vec4<u32>(u_input.b, 9462u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], u_input.a) % vec4<u32>(32u))) | -var_0.b, _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, u_input.d, u_input.d, 8923i), ~vec4<i32>(var_0.c, 0i, 39672i, u_input.d)), true) >> (vec4<u32>(u_input.a, ~(~0u), ~_wgslsmith_sub_u32(4294967295u, 0u), 0u) % vec4<u32>(32u)), var_0.b);
    var var_1 = Struct_1(13475i, vec4<i32>(_wgslsmith_add_i32(50694i, abs(-18836i >> (global1[_wgslsmith_index_u32(0u, 3u)] % 32u))), u_input.d, var_0.c, 1i), countOneBits(u_input.d), 1i);
    var var_2 = vec3<u32>(~u_input.c.x, 0u, global1[_wgslsmith_index_u32(~(82127u | arg_0.x), 3u)]);
    let var_3 = Struct_1(~global2.x, select(vec4<i32>(-(~2147483647i), countOneBits(func_3(Struct_1(2147483647i, var_0.b, -16577i, global2.x), global2.x, Struct_1(2147483647i, var_0.b, var_1.a, -6730i))), _wgslsmith_clamp_i32(-2147483647i, u_input.d, _wgslsmith_mod_i32(33878i, -15841i)), func_3(Struct_1(var_1.a, vec4<i32>(6329i, var_0.a, var_1.b.x, -9324i), global2.x, 0i), ~u_input.d, Struct_1(-1i, vec4<i32>(u_input.d, global2.x, var_0.a, -2147483647i), 1i, 21172i))), vec4<i32>(firstTrailingBit(global2.x) | -u_input.d, ~1i, _wgslsmith_add_i32(~var_0.d, 1i), ~var_1.a), !(_wgslsmith_f_op_f32(max(170f, -1479f)) <= _wgslsmith_f_op_f32(step(1519f, 339f)))), _wgslsmith_div_i32(36173i, -49386i), _wgslsmith_add_i32(~(~(-1i)), -10804i) & _wgslsmith_mult_i32(var_0.a, abs(select(-17248i, global2.x, false))));
    return false;
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    global2 = -(vec4<i32>(u_input.d, ~func_1(Struct_1(-4474i, vec4<i32>(-5418i, global2.x, 17540i, -27239i), global2.x, u_input.d), Struct_1(global2.x, vec4<i32>(2147483647i, u_input.d, global2.x, 62087i), 1i, global2.x)), select(-18526i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.x, global2.x, u_input.d), vec4<i32>(-4257i, global2.x, -9052i, 0i)), any(arg_0.zx)), ~u_input.d) << (vec4<u32>(~(~u_input.a), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 43083u, 49963u, 7889u)), vec4<u32>(177903u, 4294967295u, 34880u, u_input.b)), 3u)], 3u)], ~global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(40396u, 3u)]) % vec4<u32>(32u)));
    let var_0 = !(!(!arg_0.x));
    var var_1 = ~firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(90970u >> (global1[_wgslsmith_index_u32(u_input.b, 3u)] % 32u), u_input.c.x), firstTrailingBit(60842u)));
    var_1 = vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~u_input.b, 3u)], 13691u), global1[_wgslsmith_index_u32(7382u, 3u)]);
    let var_2 = Struct_1(global2.x, _wgslsmith_sub_vec4_i32(min(vec4<i32>(-9275i, global2.x, ~12248i, u_input.d), (vec4<i32>(-60269i, global2.x, -59842i, u_input.d) | vec4<i32>(u_input.d, u_input.d, 6019i, -4414i)) << (~vec4<u32>(110603u, 56489u, 1u, 4294967295u) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(-25461i, -22528i, 1i, _wgslsmith_add_i32(u_input.d, u_input.d)))), ~(-(i32(-1i) * -u_input.d)), ~(-21675i));
    return ~_wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(1u, 36152u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -1000f)) * _wgslsmith_f_op_f32(306f - 139f))))) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2361f + -2031f) + _wgslsmith_f_op_f32(1921f - -1331f))));
    let var_2 = Struct_1(-19546i ^ u_input.d, _wgslsmith_mult_vec4_i32(-(~(vec4<i32>(u_input.d, global2.x, global2.x, -9966i) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)], u_input.c.x, u_input.a) % vec4<u32>(32u)))), vec4<i32>(global2.x, -46258i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, u_input.d), u_input.d, func_1(Struct_1(u_input.d, vec4<i32>(global2.x, global2.x, global2.x, global2.x), -2147483647i, 18793i), Struct_1(-2147483647i, vec4<i32>(global2.x, -31408i, global2.x, u_input.d), -2147483647i, global2.x))), u_input.d)), _wgslsmith_mod_i32(~(~global2.x), 902i) & (_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -1i, u_input.d, u_input.d), vec4<i32>(-1i, -21609i, 49195i, 1i)) ^ 2147483647i), _wgslsmith_add_i32(countOneBits(i32(-1i) * -u_input.d), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, 4162i, u_input.d, -2147483647i) >> (vec4<u32>(45307u, 1u, 5172u, 1u) % vec4<u32>(32u))), vec4<i32>(1i, -2147483647i, ~global2.x, -global2.x))));
    global2 = -_wgslsmith_div_vec4_i32(var_2.b, abs(min(vec4<i32>(var_2.c, var_2.d, global2.x, 1i) ^ vec4<i32>(u_input.d, 0i, 2147483647i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, global2.x, 1i), vec4<i32>(var_2.d, u_input.d, global2.x, 11115i)))));
    let var_3 = func_4(vec3<bool>(true, func_2(vec2<u32>(4294967295u, u_input.c.x)), true)) <= _wgslsmith_mod_u32(func_4(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), _wgslsmith_dot_vec3_u32(u_input.c, select(vec3<u32>(43363u, 4294967295u, 63280u), ~vec3<u32>(28043u, 2730u, u_input.a), func_2(vec2<u32>(30918u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63188u, 3u)], 3u)])))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -177f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1709f)))), -1534f)), -vec3<i32>(max(~0i, 8121i), ~firstTrailingBit(-82565i), ~(-2147483647i) | var_4.d), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-623f + 1712f), _wgslsmith_f_op_f32(-395f + 583f), -1264f)))));
}

