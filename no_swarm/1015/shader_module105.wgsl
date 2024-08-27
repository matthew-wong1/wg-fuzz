struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<u32, 10> = array<u32, 10>(3416u, 1u, 58981u, 19249u, 4294967295u, 27297u, 40839u, 3093u, 46627u, 4294967295u);

var<private> global2: i32 = 0i;

var<private> global3: Struct_3 = Struct_3(vec2<u32>(39112u, 58609u));

var<private> global4: vec3<u32> = vec3<u32>(0u, 69725u, 55985u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: u32) -> vec4<bool> {
    return vec4<bool>(true, true, !(arg_1.x >= u_input.a.x), -2147483647i < -abs(arg_1.x));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(767f - 346f)) + 947f) - 831f), select(vec3<u32>(1u, 10252u, ~(~global3.a.x)), _wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, 24252u), vec3<u32>(1u, global3.a.x, global3.a.x))), ~(vec3<u32>(global3.a.x, 0u, global3.a.x) ^ vec3<u32>(global4.x, global1[_wgslsmith_index_u32(global3.a.x, 10u)], 1u)), vec3<u32>(54290u, arg_0, 67244u) | reverseBits(vec3<u32>(0u, global1[_wgslsmith_index_u32(22590u, 10u)], 0u))), select(vec3<bool>(all(vec3<bool>(false, true, false)), false, select(true, false, false)), func_1(684f, _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-16628i, 1i)), 0u).xwx, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_add_u32(u_input.c.x, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), -1061f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1255f) + _wgslsmith_f_op_f32(ceil(-1002f))))), _wgslsmith_add_i32(~abs(u_input.a.x), u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1000f, var_0.d.x, var_0.d.x))))))));
    var var_2 = select(firstTrailingBit(-min(abs(-10131i), u_input.a.x)), 6333i, ((any(vec4<bool>(false, true, false, true)) | true) & !(var_0.e <= 2147483647i)) && any(func_1(var_0.a, u_input.a, u_input.c.x << (u_input.c.x % 32u)).wzx));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-502f + var_0.a)))), select(~(vec3<u32>(24686u, global4.x, arg_0) << (vec3<u32>(48306u, var_0.b.x, 0u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], 19734u, 1u)), vec3<u32>(20351u, 4294967295u, 1u), ~var_0.b), !func_1(var_0.d.x, u_input.a, global4.x).x), ~u_input.b.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, var_0.d.x, 1000f), var_1.xww, vec3<bool>(true, true, true)))))), u_input.a.x), Struct_3(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(global3.a.x, 4294967295u) >> (global4.zx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(global4.zz, global3.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_div_f32(1744f, _wgslsmith_f_op_f32(ceil(var_0.a))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(508f, var_1.x))), var_1.x) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, -687f, var_1.x), vec4<f32>(var_0.d.x, var_0.a, -600f, var_1.x))), vec4<f32>(405f, var_0.a, var_1.x, 768f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(943f, var_0.d.x, var_0.a, var_1.x) * vec4<f32>(var_1.x, 1746f, var_1.x, var_0.a))))), _wgslsmith_mod_vec4_u32(max(firstLeadingBit(vec4<u32>(0u, var_0.b.x, 0u, 12803u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, u_input.b.x, 43252u, global4.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.x, global1[_wgslsmith_index_u32(4294967295u, 10u)], 0u, global3.a.x), vec4<u32>(0u, u_input.c.x, 22208u, 30681u)))), min(min(vec4<u32>(35756u, 1713u, var_0.c, global3.a.x), vec4<u32>(24790u, 12507u, 3658u, 27353u)) | reverseBits(vec4<u32>(global4.x, 2749u, u_input.b.x, global4.x)), ~(~vec4<u32>(arg_0, 4294967295u, 21262u, var_0.c)))), ~(-reverseBits(_wgslsmith_div_i32(-10852i, -28058i))));
    global3 = Struct_3(global4.yx);
    return vec3<u32>(4294967295u, 31277u, 4294967295u);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(15833u, global1[_wgslsmith_index_u32(global4.x, 10u)], global3.a.x)), func_3(u_input.c.x) | vec3<u32>(4294967295u, global3.a.x, 22222u)), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(6607u, global3.a.x), vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(0u, u_input.c.x)), global4.x, 1u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 26595u), 10u)], 10u)]);
    global4 = vec3<u32>(func_3(0u).x, 1u, ~_wgslsmith_mult_u32(~u_input.c.x, global1[_wgslsmith_index_u32(4305u, 10u)]) | max(1u, global4.x));
    global2 = -2147483647i;
    var var_1 = ~vec4<u32>(~firstTrailingBit(~u_input.b.x), global1[_wgslsmith_index_u32(~global3.a.x, 10u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(47270u, 10u)], 73908u, 33407u, var_0), ~(vec4<u32>(global1[_wgslsmith_index_u32(55469u, 10u)], 67420u, 7033u, global1[_wgslsmith_index_u32(33174u, 10u)]) | vec4<u32>(1u, 56369u, 20952u, 50959u))), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(1740u, var_0, global4.x, 101016u)), ~vec4<u32>(11980u, global3.a.x, 1u, global4.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(74772u, global4.x, global3.a.x, 4294967295u), vec4<u32>(u_input.c.x, 6578u, 0u, 1u))));
    global2 = _wgslsmith_mod_i32(-select(2391i, _wgslsmith_clamp_i32(1i, -1i, 28842i), true), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)) & -(~u_input.a.x);
    return 911f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, any(func_1(-789f, firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-11734i, -11175i), vec2<i32>(u_input.a.x, 1i))), ~75076u >> (1u % 32u))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), max(~(vec2<i32>(-2147483647i, u_input.a.x) << (u_input.b % vec2<u32>(32u))), -vec2<i32>(u_input.a.x, 1i) | _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))), ~(~_wgslsmith_div_u32(18702u, u_input.c.x))).x);
    let var_1 = Struct_3(~(~_wgslsmith_sub_vec2_u32(global4.xz, vec2<u32>(56660u, 31879u))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -106f)), vec3<u32>(60095u, ~(u_input.c.x << (1u % 32u)), ~4294967295u), _wgslsmith_mult_u32(global3.a.x, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1697f, 1052f, -1185f), vec3<f32>(629f, -250f, -765f), var_0.x))))), 1i), Struct_3(var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, -1272f, -175f, -795f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, -227f, 174f, -280f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1290f, 554f, -1617f, -854f), vec4<f32>(1352f, -932f, -341f, -1439f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(527f, -197f, 1142f, -1127f) * vec4<f32>(-1992f, 1444f, 1004f, -684f)))))), select(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, global1[_wgslsmith_index_u32(var_1.a.x, 10u)], 46738u), vec4<u32>(global3.a.x, 1u, global4.x, global4.x), vec4<u32>(global4.x, 11699u, 30365u, var_1.a.x)), vec4<u32>(var_1.a.x | 4294967295u, 7750u, 4294967295u, ~16797u)), vec4<u32>(~var_1.a.x & ~0u, 836u, ~firstTrailingBit(20882u), 1u), !(!(!vec4<bool>(true, true, false, var_0.x)))), _wgslsmith_mod_i32(2147483647i, firstLeadingBit(-u_input.a.x)) | ((18572i | firstLeadingBit(u_input.a.x)) & 1i));
    global0 = array<vec2<bool>, 3>();
    var_2 = Struct_4(var_2.a, var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), var_2.a.a, 151f, _wgslsmith_f_op_f32(select(802f, -1579f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1392f)), _wgslsmith_div_f32(var_2.c.x, var_2.c.x), -259f, _wgslsmith_f_op_f32(1000f * 1000f)))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_2.d.x, 10u)], 0u, var_2.b.a.x, 51088u), vec4<u32>(1u, 66646u, 12936u, global1[_wgslsmith_index_u32(var_2.b.a.x, 10u)]) >> (vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(var_1.a.x, 10u)], 1u) % vec4<u32>(32u))), var_2.d) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, var_1.a.x, var_2.b.a.x, 54875u), vec4<u32>(5598u, global1[_wgslsmith_index_u32(50006u, 10u)], var_2.a.b.x, global1[_wgslsmith_index_u32(7763u, 10u)]) ^ vec4<u32>(u_input.c.x, var_1.a.x, global4.x, 4294967295u)) & var_2.d) % vec4<u32>(32u)), -u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(36062u, reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(3845u, 10u)], abs(global3.a.x), global1[_wgslsmith_index_u32(~var_2.b.a.x, 10u)])));
}

