struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, false, false, false, false, false, true, true, false, true, false, true, true, false, false, false, false, false, false, true, true, true, true, true, false);

var<private> global1: i32 = 17683i;

var<private> global2: array<vec4<f32>, 24>;

var<private> global3: u32 = 0u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global3 = _wgslsmith_dot_vec4_u32(~arg_0.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x << (63470u % 32u), 16818u, 1u, u_input.e), arg_0.a & ~arg_0.a));
    return ~select(1u, u_input.d, all(select(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 25u)], arg_0.b.x), vec2<bool>(false, arg_0.b.x)), vec2<bool>(true, arg_0.b.x), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(24313u, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], false), arg_0.b.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec4<u32> {
    global3 = 0u;
    var var_0 = Struct_1(vec4<u32>(~63615u, func_3(Struct_1(vec4<u32>(0u, 1u, u_input.e, 32753u), vec2<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.e, 25u)]), 10812i, vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(25824u, 25u)])), arg_1.x) ^ ~u_input.b, firstLeadingBit(~4787u), _wgslsmith_clamp_u32((u_input.b ^ u_input.b) | ~33503u, (u_input.b << (u_input.e % 32u)) << (4294967295u % 32u), reverseBits(reverseBits(1u)))), vec2<bool>(!(!any(vec4<bool>(false, true, false, false))), true), max(37684i, 1i), vec3<bool>(all(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(115u, 25u)], global0[_wgslsmith_index_u32(u_input.e, 25u)], true))), false, all(vec3<bool>(0u == u_input.e, global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(~63816u, 25u)]))));
    var var_1 = Struct_1(~var_0.a, var_0.d.xx, _wgslsmith_add_i32(min(reverseBits(-33041i), 15114i), -_wgslsmith_add_i32(-u_input.a, var_0.c | -29310i)), vec3<bool>(var_0.d.x, all(var_0.d.xz), all(var_0.b)));
    global3 = ~1u;
    var var_2 = Struct_1(~var_0.a >> (var_1.a % vec4<u32>(32u)), var_1.d.xy, firstTrailingBit(1i), vec3<bool>(all(!(!vec4<bool>(true, true, var_0.b.x, global0[_wgslsmith_index_u32(var_1.a.x, 25u)]))), _wgslsmith_div_i32(-u_input.a, -15089i ^ var_0.c) > _wgslsmith_div_i32(i32(-1i) * -11381i, -10141i), any(!(!vec4<bool>(var_1.b.x, var_0.b.x, true, var_0.b.x)))));
    return ~select(~(~var_0.a), _wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(u_input.b, ~var_0.a.x, abs(46335u), countOneBits(4294967295u))), select(select(!vec4<bool>(true, true, true, var_0.b.x), select(vec4<bool>(var_2.d.x, var_0.d.x, true, false), vec4<bool>(false, false, var_1.d.x, true), vec4<bool>(false, false, false, var_2.d.x)), !vec4<bool>(true, true, var_1.b.x, var_0.b.x)), vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_0.a.x, 25u)] & var_0.b.x, var_2.d.x), !(!vec4<bool>(false, var_2.d.x, false, var_0.d.x))));
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1((~select(vec4<u32>(1u, u_input.e, u_input.b, u_input.d), vec4<u32>(u_input.e, u_input.e, u_input.b, u_input.d), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 25u)], false, true)) | ~func_2(vec2<i32>(-8723i, u_input.c.x), vec2<f32>(-845f, -1036f))) ^ vec4<u32>(1u, abs(_wgslsmith_mod_u32(u_input.e, 0u)), ~firstTrailingBit(u_input.d), ~1u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.d), 25u)]), u_input.c.x, vec3<bool>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(28948u, 4294967295u, 63497u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(66273u, 1u, u_input.b, u_input.d), vec4<u32>(67651u, u_input.b, u_input.e, u_input.d))) != ~155407u, all(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 25u)], true), vec3<bool>(false, false, false), false)), false));
    let var_1 = var_0.b.x | !any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(41262u, 25u)], false), var_0.b, var_0.b.x), !var_0.b, var_0.b));
    global3 = 115197u;
    global3 = ~countOneBits(1u);
    global2 = array<vec4<f32>, 24>();
    return select(select(!(!var_0.d.xx), !(!var_0.b), any(vec3<bool>(all(var_0.d), true, true))), var_0.b, !vec2<bool>(18955i <= u_input.a, !var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 1u;
    let var_0 = Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 23623u, u_input.d, u_input.d), vec4<u32>(u_input.e, 47484u, u_input.b, u_input.e)), ~(~vec4<u32>(u_input.e, 1u, u_input.e, u_input.e)))), !select(func_1(), vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 62213u, u_input.b, 19474u), vec4<u32>(4544u, u_input.d, 37526u, u_input.d)), 25u)]), select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<bool>(true, false)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 25u)], false), vec2<bool>(true, true))), -27656i, select(!vec3<bool>(all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 25u)], true)), global0[_wgslsmith_index_u32(countOneBits(u_input.b), 25u)], true & global0[_wgslsmith_index_u32(0u, 25u)]), !(!select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(80667u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(82244u, 25u)], false, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 25u)]))), vec3<bool>(true, global0[_wgslsmith_index_u32(22711u, 25u)], all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 25u)], false)))));
    var var_1 = 1425f;
    var var_2 = vec4<i32>(u_input.a, var_0.c, u_input.c.x, var_0.c);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-124f - 197f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-373f + 217f))), -1400f)));
    var_2 = min(~abs(-abs(u_input.c)), u_input.c);
    let var_4 = Struct_1(var_0.a, vec2<bool>(true, global0[_wgslsmith_index_u32(8456u, 25u)]), 10736i, var_0.d);
    let var_5 = 2147483647i << (~var_4.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-942f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-708f)), var_3))), (~var_0.a.xyx | ~var_4.a.yyy) ^ var_0.a.wxy);
}

