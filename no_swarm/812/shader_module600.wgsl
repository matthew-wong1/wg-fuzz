struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<u32>(1516u, 8535u, 67818u)), Struct_1(vec3<u32>(1u, 76502u, 4294967295u)), 16399u, true), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 49666u)), Struct_1(vec3<u32>(39036u, 29160u, 0u)), 8637u, false), Struct_2(Struct_1(vec3<u32>(35437u, 4294967295u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u)), 13198u, false), Struct_2(Struct_1(vec3<u32>(22909u, 4294967295u, 44054u)), Struct_1(vec3<u32>(9252u, 14902u, 0u)), 69520u, false), Struct_2(Struct_1(vec3<u32>(0u, 8616u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 33235u)), 30541u, true), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec3<u32>(1u, 1u, 1u)), 7328u, true), Struct_2(Struct_1(vec3<u32>(11380u, 32000u, 6319u)), Struct_1(vec3<u32>(21645u, 3716u, 4294967295u)), 51192u, true), Struct_2(Struct_1(vec3<u32>(0u, 50311u, 36684u)), Struct_1(vec3<u32>(29242u, 1u, 0u)), 62256u, false), Struct_2(Struct_1(vec3<u32>(20689u, 18612u, 37623u)), Struct_1(vec3<u32>(29183u, 15342u, 0u)), 1u, true), Struct_2(Struct_1(vec3<u32>(2175u, 42465u, 88880u)), Struct_1(vec3<u32>(0u, 58210u, 45215u)), 0u, false), Struct_2(Struct_1(vec3<u32>(48713u, 334u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 2134u)), 12469u, true), Struct_2(Struct_1(vec3<u32>(15869u, 3087u, 35245u)), Struct_1(vec3<u32>(0u, 0u, 44268u)), 1u, true), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 22915u)), Struct_1(vec3<u32>(21145u, 4294967295u, 5357u)), 43969u, false), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<u32>(1u, 20119u, 4294967295u)), 1u, true), Struct_2(Struct_1(vec3<u32>(0u, 1u, 31662u)), Struct_1(vec3<u32>(4294967295u, 1u, 53459u)), 0u, false), Struct_2(Struct_1(vec3<u32>(4627u, 1u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 26313u, 11882u)), 19277u, true), Struct_2(Struct_1(vec3<u32>(8225u, 37324u, 46587u)), Struct_1(vec3<u32>(92529u, 0u, 81218u)), 54008u, false), Struct_2(Struct_1(vec3<u32>(53429u, 4294967295u, 62730u)), Struct_1(vec3<u32>(77695u, 36162u, 0u)), 40664u, false), Struct_2(Struct_1(vec3<u32>(0u, 20764u, 32550u)), Struct_1(vec3<u32>(1u, 17996u, 0u)), 38524u, true), Struct_2(Struct_1(vec3<u32>(22112u, 44674u, 23249u)), Struct_1(vec3<u32>(18176u, 0u, 4294967295u)), 31778u, true));

var<private> global2: Struct_2;

var<private> global3: vec3<i32> = vec3<i32>(11770i, -5006i, i32(-2147483648));

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 1u, 24436u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    global1 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(595f * _wgslsmith_div_f32(-966f, -506f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f))) * _wgslsmith_f_op_f32(-1098f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f)), 1148f, false))));
    let var_1 = vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], reverseBits(global0[_wgslsmith_index_u32(global2.a.a.x, 27u)]));
    var var_2 = arg_2;
    let var_3 = Struct_2(Struct_1(~(~_wgslsmith_sub_vec3_u32(arg_1.a, arg_2.a))), arg_1, countOneBits(global4.x), false);
    return select(vec4<bool>(true, any(vec2<bool>(true, !arg_3)), true, any(!(!vec2<bool>(global2.d, true)))), vec4<bool>(all(select(!vec4<bool>(false, var_3.d, global2.d, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, global2.d)))), all(!(!vec3<bool>(global2.d, true, false))), false, !(_wgslsmith_f_op_f32(f32(-1f) * -1529f) <= _wgslsmith_f_op_f32(var_0 * var_0))), true);
}

fn func_3(arg_0: Struct_2) -> i32 {
    global3 = countOneBits(vec3<i32>(min(u_input.a, 41085i), 38274i, abs(select(firstLeadingBit(-1i), u_input.a, !arg_0.d))));
    global3 = select(vec3<i32>(global0[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, global4.x), vec4<u32>(global4.x, 4294967295u, global2.c, 1u)), firstTrailingBit(global2.a.a.x)), 27u)], global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b.x), 27u)], ~19746i), -_wgslsmith_add_vec3_i32(-(vec3<i32>(global3.x, -903i, global3.x) | vec3<i32>(global0[_wgslsmith_index_u32(arg_0.a.a.x, 27u)], global3.x, u_input.a)), vec3<i32>(-2147483647i, -3453i, global0[_wgslsmith_index_u32(32510u, 27u)]) << (vec3<u32>(1u, 4294967295u, arg_0.b.a.x) % vec3<u32>(32u))), true);
    let var_0 = arg_0.d != (_wgslsmith_f_op_f32(f32(-1f) * -191f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -164f), -1263f, !global2.d))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1784f * -193f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(633f, -1000f, global2.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1209f, -1169f)))));
    var var_2 = !vec3<bool>(true, any(vec4<bool>(!arg_0.d, true, true, any(vec2<bool>(global2.d, true)))), false);
    return abs(firstTrailingBit(-global0[_wgslsmith_index_u32(4294967295u, 27u)]));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<u32>) -> StorageBuffer {
    let var_0 = Struct_1(~_wgslsmith_sub_vec3_u32(max(global2.a.a, ~global2.a.a), arg_3.yxy));
    return StorageBuffer(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x << (global2.b.a.x % 32u), 79638u), abs(_wgslsmith_mult_vec2_u32(arg_3.yy, vec2<u32>(4294967295u, 4294967295u)))));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = ~(_wgslsmith_mod_i32(-13866i, global3.x) & 48213i) << (_wgslsmith_div_u32(global2.a.a.x, 44109u) % 32u);
    global1 = array<Struct_2, 20>();
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_div_u32(global2.c, _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, global4.x), 44548u)), 4294967295u);
    global1 = array<Struct_2, 20>();
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(45591u), ~min(_wgslsmith_mult_u32(global2.b.a.x, firstTrailingBit(9602u)), _wgslsmith_add_u32(abs(global2.c), _wgslsmith_sub_u32(global2.b.a.x, 0u)))), 20u)];
    return func_4(23601u, !func_2(u_input.a, Struct_1(global2.a.a), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(global4.x, 0u, 15811u), vec3<u32>(global4.x, global4.x, 1972u))), true), _wgslsmith_sub_i32(func_3(global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), ~u_input.a), min(~(vec4<u32>(global4.x, 211u, global4.x, global4.x) | vec4<u32>(38583u, 31204u, 1u, global2.b.a.x)), ~vec4<u32>(1u, global2.a.a.x, 4294967295u, 0u)) | vec4<u32>(_wgslsmith_mod_u32(~u_input.b.x, 1u), reverseBits(abs(23037u)), _wgslsmith_clamp_u32(~28024u, 1u, 30114u), global2.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -373f))) - _wgslsmith_f_op_f32(f32(-1f) * -1529f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f))));
    var var_1 = -firstLeadingBit(-(vec4<i32>(1i, 1i, 0i, 27158i) << (select(vec4<u32>(global2.c, global4.x, 0u, global2.b.a.x), vec4<u32>(4294967295u, global2.b.a.x, global2.c, 2450u), vec4<bool>(global2.d, false, false, false)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1670f);
    let x = u_input.a;
    s_output = func_1(true);
}

