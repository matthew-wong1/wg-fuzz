struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-8823i), Struct_1(7912i), Struct_1(2482i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-12839i), Struct_1(2147483647i), Struct_1(-12020i), Struct_1(-43644i), Struct_1(56510i), Struct_1(i32(-2147483648)), Struct_1(23254i), Struct_1(88247i), Struct_1(17965i), Struct_1(18612i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(-3276i), Struct_1(-5310i), Struct_1(-1i), Struct_1(-17746i));

var<private> global1: vec4<u32> = vec4<u32>(85417u, 23347u, 1u, 4294967295u);

var<private> global2: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(1516f, 510f, 869f, 1310f), vec4<f32>(1000f, 1608f, -279f, 579f), vec4<f32>(656f, -474f, 828f, 679f), vec4<f32>(-1485f, 1919f, -679f, 808f), vec4<f32>(1078f, 1051f, 119f, 2462f), vec4<f32>(-977f, -1370f, -848f, -1000f), vec4<f32>(1860f, 1204f, -1252f, 917f), vec4<f32>(-909f, 1876f, 965f, -1000f), vec4<f32>(3125f, 1881f, -170f, -3593f), vec4<f32>(1454f, 619f, 393f, 580f), vec4<f32>(1000f, -1000f, -2251f, -855f), vec4<f32>(1321f, 908f, -337f, 454f), vec4<f32>(1000f, 1755f, 1942f, 822f), vec4<f32>(600f, 1000f, 130f, 438f), vec4<f32>(-961f, -394f, -266f, -1260f), vec4<f32>(1081f, -912f, -612f, 1056f));

var<private> global3: Struct_1 = Struct_1(-39715i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    global3 = arg_0;
    global3 = Struct_1(~(~(-3829i)) | arg_1.x);
    return _wgslsmith_f_op_f32(round(-677f));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> vec4<i32> {
    global1 = abs(min(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, u_input.e, u_input.b, global1.x) | vec4<u32>(4294967295u, global1.x, global1.x, u_input.e), vec4<u32>(803u, 4294967295u, 22800u, u_input.c.x) | vec4<u32>(49520u, 0u, 4294967295u, 107615u)) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, 1u, 4294967295u), vec4<u32>(1u, global1.x, global1.x, 1u)) % vec4<u32>(32u)), vec4<u32>(4294967295u, ~(global1.x >> (u_input.e % 32u)), ~_wgslsmith_sub_u32(global1.x, 4294967295u), ~firstTrailingBit(u_input.e))));
    var var_0 = global3.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(arg_2.wxw, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -349f), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2589f), _wgslsmith_f_op_f32(arg_2.x * 394f), all(vec3<bool>(false, false, false))))))));
    global3 = global0[_wgslsmith_index_u32(u_input.b, 22u)];
    global2 = array<vec4<f32>, 16>();
    return ~vec4<i32>(max(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1556i, 1033i, arg_1, -1i), vec4<i32>(arg_0, -2147483647i, global3.a, 1i))), u_input.a), -u_input.a, -(_wgslsmith_clamp_i32(arg_1, arg_0, 35939i) << (0u % 32u)), ~arg_0);
}

fn func_1(arg_0: i32, arg_1: bool) -> StorageBuffer {
    let var_0 = countOneBits(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, 20458u)), u_input.c.zz), ~abs(u_input.c.xx)));
    var var_1 = any(select(!select(vec2<bool>(arg_1, arg_1), !vec2<bool>(false, arg_1), !arg_1), !select(vec2<bool>(arg_1, false), !vec2<bool>(arg_1, true), arg_1 != true), vec2<bool>(arg_1, !arg_1)));
    global1 = vec4<u32>(67262u, ~var_0.x, var_0.x, max(~1u, _wgslsmith_mult_u32(8993u, ~var_0.x)));
    let var_2 = func_3(global3.a, _wgslsmith_mult_i32(-22033i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global3.a, 578i, global3.a), vec4<i32>(arg_0, 55988i, -23649i, global3.a)))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, _wgslsmith_div_u32(global1.x, 4294967295u), 28039u), ~(vec4<u32>(8336u, global1.x, 26915u, u_input.b) & vec4<u32>(38363u, global1.x, 1u, u_input.e))) % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1206f, _wgslsmith_f_op_f32(trunc(772f))) * _wgslsmith_f_op_f32(round(-2970f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(1u, 22u)], vec4<i32>(1i, u_input.d, 6104i, arg_0)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1314f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-678f)))));
    var var_3 = 10690u;
    return StorageBuffer(vec3<u32>(abs(15459u), ~12470u, 1u), select(reverseBits(_wgslsmith_mod_vec4_i32(~var_2, reverseBits(var_2))), func_3(-(~global3.a), _wgslsmith_mult_i32(i32(-1i) * -1i, -u_input.a), global2[_wgslsmith_index_u32(58521u, 16u)]), !vec4<bool>(select(true, arg_1, true), any(vec2<bool>(arg_1, true)), arg_1, all(vec3<bool>(false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(33371u, 22996u), 1u);
    var_0 = global1.x;
    global3 = Struct_1(global3.a);
    var var_2 = global0[_wgslsmith_index_u32(u_input.e, 22u)];
    let x = u_input.a;
    s_output = func_1(3299i, !any(vec4<bool>(true, false, true, true)));
}

