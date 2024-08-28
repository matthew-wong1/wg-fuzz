struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(14420i, 5343i, -21376i, 15112i);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-489f, vec2<f32>(1030f, 1644f)), Struct_1(-1266f, vec2<f32>(457f, 830f)), Struct_1(-756f, vec2<f32>(-238f, -712f)), Struct_1(-357f, vec2<f32>(-1027f, -810f)), Struct_1(533f, vec2<f32>(593f, -340f)), Struct_1(-1225f, vec2<f32>(149f, -737f)), Struct_1(676f, vec2<f32>(-887f, 682f)), Struct_1(-1000f, vec2<f32>(-935f, -678f)), Struct_1(576f, vec2<f32>(975f, -610f)), Struct_1(-1000f, vec2<f32>(-1887f, -1000f)), Struct_1(1443f, vec2<f32>(-285f, -2515f)), Struct_1(-1457f, vec2<f32>(543f, 1222f)), Struct_1(-192f, vec2<f32>(-427f, -997f)), Struct_1(-1371f, vec2<f32>(-272f, 404f)), Struct_1(-1080f, vec2<f32>(316f, -1250f)), Struct_1(-225f, vec2<f32>(1012f, 649f)), Struct_1(-1334f, vec2<f32>(1000f, 244f)), Struct_1(-1082f, vec2<f32>(-581f, 117f)), Struct_1(254f, vec2<f32>(167f, -715f)), Struct_1(127f, vec2<f32>(-1026f, -170f)));

var<private> global2: array<f32, 30> = array<f32, 30>(388f, 837f, -105f, 749f, -770f, -530f, 201f, 154f, 1093f, -248f, -191f, 107f, 2472f, -638f, 309f, 349f, -1024f, 1359f, -1112f, -1000f, -101f, -361f, -1352f, 474f, -801f, -338f, -698f, -1193f, -1634f, 371f);

var<private> global3: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec3<i32> {
    global3 = countOneBits(u_input.d);
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(130u, 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.b | u_input.b, 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)]))), global2[_wgslsmith_index_u32(max((4294967295u | u_input.a) >> (u_input.a % 32u), ~(~u_input.c)), 30u)], 172f) - vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 30u)]), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(min(u_input.c ^ 23143u, 99798u), 30u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 30u)] * _wgslsmith_f_op_f32(-410f - -959f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(127f))))), 253f));
    global2 = array<f32, 30>();
    var var_1 = u_input.b;
    var_1 = max(firstLeadingBit(_wgslsmith_mult_u32(u_input.a, ~0u)), u_input.b);
    return _wgslsmith_sub_vec3_i32(global0.www, -(~(-vec3<i32>(2147483647i, -2147483647i, 31710i))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = !(~_wgslsmith_clamp_u32(0u, u_input.c, u_input.a) != 21771u) & !all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)));
    global1 = array<Struct_1, 20>();
    let var_1 = select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), !any(vec3<bool>(true, true, true))), any(vec3<bool>(true, any(vec2<bool>(true, true)), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32((u_input.a << (u_input.c % 32u)) | 26747u, 1u), 30u)]));
    let var_3 = var_1.x;
    return func_2().x;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = arg_0;
    global3 = global0.x;
    let var_1 = false;
    let var_2 = false;
    global1 = array<Struct_1, 20>();
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(func_2(), select(vec3<i32>(global0.x, arg_0, 51429i), vec3<i32>(-22288i, -4059i, arg_0), vec3<bool>(var_1, true, false))), global0.xxw), -abs(abs(-1i))), ~(_wgslsmith_div_i32(func_3(Struct_2(global0.x, 0u, global1[_wgslsmith_index_u32(u_input.a, 20u)]), global0.x, arg_0), -51146i) >> (u_input.a % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(false, _wgslsmith_clamp_i32(func_1(-1i), u_input.d, 17480i) == ~(~(-50955i)));
    var var_1 = true;
    var var_2 = 0u;
    var var_3 = _wgslsmith_add_vec4_i32(select(firstLeadingBit(firstTrailingBit(-vec4<i32>(-10308i, 72617i, u_input.d, u_input.d))), _wgslsmith_add_vec4_i32(-vec4<i32>(0i, 25992i, 0i, 7083i) << ((vec4<u32>(u_input.c, 6168u, u_input.a, 4294967295u) ^ vec4<u32>(u_input.c, 93351u, u_input.b, 9241u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.d, 52110i) & vec4<i32>(54164i, -46879i, global0.x, 0i), vec4<i32>(global0.x, 23229i, global0.x, global0.x))), ((38023u << (u_input.b % 32u)) ^ _wgslsmith_clamp_u32(23711u, 4294967295u, 43947u)) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(20432u, 62894u))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(13364i, u_input.d, 1i, 1150i) & ~vec4<i32>(3036i, global0.x, global0.x, global0.x), -(vec4<i32>(31107i, -1i, -2147483647i, 0i) ^ vec4<i32>(global0.x, 11808i, u_input.d, global0.x))), abs(vec4<i32>(-1i) * -vec4<i32>(0i, 1i, -1i, global0.x))));
    global2 = array<f32, 30>();
    var var_4 = Struct_2(-24663i, firstLeadingBit(57756u) >> (u_input.c % 32u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(29393u, u_input.b), 20u)]);
    let var_5 = vec2<i32>(_wgslsmith_sub_i32(var_3.x, _wgslsmith_mult_i32(~(-14952i), ~(i32(-1i) * -7130i))), ~(~firstTrailingBit(i32(-1i) * -39290i)));
    var_4 = Struct_2(8980i, 30099u, Struct_1(1547f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_4.c.b)) * vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 30u)], 165f)) + vec2<f32>(-929f, _wgslsmith_f_op_f32(-869f + 363f)))));
    let var_6 = select(select(vec2<bool>(true, any(vec4<bool>(false, var_0.x, var_0.x, false))), select(vec2<bool>(false, var_0.x), var_0, select(var_0, !var_0, true)), all(vec4<bool>(true, true, false, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x))))), !var_0, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.b.x, vec2<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~1u, 30u)])), var_4.c.b.x), 0u);
}

