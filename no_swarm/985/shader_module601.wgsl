struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-872f, -1593f, -1146f, 1329f), vec4<f32>(1097f, 530f, 1000f, -1351f), vec4<f32>(663f, -1041f, 898f, 2159f), vec4<f32>(573f, -2358f, 1397f, 1134f), vec4<f32>(120f, 663f, -2575f, -1000f), vec4<f32>(-1029f, -117f, -256f, 693f), vec4<f32>(-693f, 809f, -932f, -836f), vec4<f32>(363f, 1312f, -1841f, -1498f), vec4<f32>(1392f, -1709f, 865f, -1091f), vec4<f32>(-697f, 1629f, -204f, -553f), vec4<f32>(-1000f, 1000f, 402f, 1147f), vec4<f32>(-387f, 1158f, 317f, 1767f), vec4<f32>(-405f, -1512f, -2179f, 1000f), vec4<f32>(-910f, -195f, -338f, 1769f), vec4<f32>(-743f, 670f, -602f, -910f), vec4<f32>(-581f, -1607f, -943f, 391f), vec4<f32>(173f, 1000f, 1077f, -1151f), vec4<f32>(209f, -457f, -1294f, -234f), vec4<f32>(768f, -282f, 1000f, -955f), vec4<f32>(953f, -1080f, -1000f, 108f), vec4<f32>(506f, 1147f, -907f, 311f), vec4<f32>(-782f, -913f, 352f, 846f), vec4<f32>(-2361f, 845f, 1618f, 904f), vec4<f32>(148f, -714f, 284f, 1107f), vec4<f32>(-744f, -1397f, -809f, 1000f), vec4<f32>(-1419f, 252f, 808f, 229f), vec4<f32>(-296f, -1094f, -943f, -1000f), vec4<f32>(-1012f, 508f, -1923f, -237f), vec4<f32>(-1078f, 1803f, -998f, -1322f));

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 28>;

var<private> global3: array<i32, 5> = array<i32, 5>(-81864i, i32(-2147483648), 4458i, 1i, -29985i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> vec4<bool> {
    global3 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.e, 29u)] * vec4<f32>(arg_2.d.x, arg_2.d.x, arg_1.a, 1000f));
    let var_1 = arg_2.e.a.a.x;
    global0 = array<vec4<f32>, 29>();
    var var_2 = Struct_5(arg_0);
    return !(!vec4<bool>(any(select(vec4<bool>(arg_0.a.x, true, global1.a.b, arg_1.c.a.b), vec4<bool>(global1.a.a.x, var_1, true, arg_1.c.a.a.x), vec4<bool>(var_1, false, var_2.a.b, arg_2.e.a.b))), arg_0.a.x, var_1 | false, arg_2.b));
}

fn func_2() -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-374f)) + _wgslsmith_f_op_f32(abs(1453f)))), global3[_wgslsmith_index_u32(0u, 5u)], Struct_2(global1.a), -565f);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -237f);
    var var_2 = vec4<bool>(true, !global1.a.a.x || false, false, any(func_3(Struct_1(vec3<bool>(true, true, global1.a.b), true, select(u_input.d.x, -2147483647i, var_0.c.a.b)), Struct_4(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 5u)], 33001i, 0i), vec4<i32>(-1i, global1.a.c, -38130i, 11076i)), Struct_2(global1.a), 112f), global2[_wgslsmith_index_u32(53798u, 28u)])));
    var var_3 = Struct_1(!vec3<bool>(true, any(vec4<bool>(true, false, false, global1.a.a.x)), false), false, firstTrailingBit(_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 5u)], -35652i) >> (vec2<u32>(u_input.a.x, u_input.e) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b, global1.a.c), u_input.c.xy, u_input.d.zw)))));
    let var_4 = !(global3[_wgslsmith_index_u32(1u, 5u)] != var_0.c.a.c);
    return 0i;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    global0 = array<vec4<f32>, 29>();
    let var_0 = false;
    var var_1 = select(vec2<bool>(arg_0 == func_2(), all(arg_1.c.zx)), vec2<bool>(true, true), false);
    let var_2 = _wgslsmith_div_vec3_i32(-(countOneBits(vec3<i32>(u_input.d.x, 0i, -1i)) & vec3<i32>(2147483647i, global1.a.c, global3[_wgslsmith_index_u32(127359u, 5u)])), -((u_input.c << (u_input.a % vec3<u32>(32u))) << (select(vec3<u32>(u_input.a.x, 0u, u_input.a.x), u_input.a, arg_1.c.x) % vec3<u32>(32u)))) ^ (vec3<i32>(abs(u_input.d.x), 8321i, _wgslsmith_mod_i32(~u_input.c.x, u_input.d.x & 2147483647i)) | u_input.d.zww);
    let var_3 = !(!any(arg_1.e.a.a));
    return global1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(func_1(u_input.d.x, global2[_wgslsmith_index_u32(51074u, 28u)]), any(select(select(vec2<bool>(true, false), global1.a.a.yy, true), vec2<bool>(global1.a.b, false), 1u == u_input.b.x)), i32(-1i) * -61651i));
    let var_0 = Struct_2(global1.a);
    var var_1 = any(func_3(global1.a, Struct_4(_wgslsmith_f_op_f32(521f + -630f), 1i, Struct_2(global1.a), -1483f), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(72397u, ~u_input.a.x), 28u)])) || all(select(select(!vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, global1.a.a.x), select(vec4<bool>(true, global1.a.b, true, true), vec4<bool>(global1.a.b, global1.a.a.x, false, false), vec4<bool>(false, var_0.a.b, true, true)), select(global1.a.b, global1.a.b, true)), !vec4<bool>(true, global1.a.a.x, true, true), vec4<bool>(func_1(1i, Struct_3(false, false, vec3<bool>(global1.a.a.x, false, global1.a.a.x), vec3<f32>(-1770f, 1048f, -560f), var_0)).x, true, true, all(global1.a.a))));
    var var_2 = Struct_3(any(!func_1(2147483647i, Struct_3(true, var_0.a.a.x, vec3<bool>(global1.a.a.x, true, false), vec3<f32>(-588f, -797f, 1000f), var_0)).xy), any(select(vec2<bool>(any(vec2<bool>(global1.a.b, var_0.a.b)), any(global1.a.a)), vec2<bool>(var_0.a.b, true), !(!var_0.a.a.yx))), vec3<bool>(true, false, var_0.a.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(743f, 223f), _wgslsmith_f_op_f32(max(165f, -687f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1409f, _wgslsmith_f_op_f32(659f + -829f)), _wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(1435f + -599f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(768f)) + 583f))), var_0);
    let var_3 = vec3<u32>(~u_input.a.x, u_input.a.x, 16329u);
    var_1 = any(!var_0.a.a) != true;
    let var_4 = global0[_wgslsmith_index_u32(1u & firstLeadingBit(u_input.e), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_div_u32(_wgslsmith_mod_u32(10437u, 81337u), var_3.x), _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.b.wx | vec2<u32>(4294967295u, var_3.x))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.a.c, u_input.d.x, var_2.e.a.c, global1.a.c), ~_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(global1.a.c, 2147483647i, u_input.c.x, global3[_wgslsmith_index_u32(13216u, 5u)])), u_input.d)), var_3.xz, abs(0u));
}

