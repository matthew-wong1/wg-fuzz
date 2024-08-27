struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, true, true, false, false, false, true, false, true, false, false, true, true);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<u32>(56071u, 13232u), 0u, 4294967295u, vec2<f32>(-399f, 1000f), vec4<u32>(20200u, 59994u, 69869u, 1u)), Struct_1(vec2<u32>(4294967295u, 25664u), 0u, 4294967295u, vec2<f32>(575f, -2714f), vec4<u32>(0u, 8906u, 1u, 8564u)), Struct_1(vec2<u32>(27553u, 830u), 1u, 4294967295u, vec2<f32>(1384f, -689f), vec4<u32>(34312u, 1u, 1594u, 28337u)), Struct_1(vec2<u32>(47926u, 2565u), 33765u, 38711u, vec2<f32>(-1221f, 500f), vec4<u32>(55120u, 26541u, 1u, 16470u)), Struct_1(vec2<u32>(7337u, 2671u), 4294967295u, 2320u, vec2<f32>(-1000f, 530f), vec4<u32>(4294967295u, 0u, 1u, 68166u)), Struct_1(vec2<u32>(0u, 54545u), 33112u, 34769u, vec2<f32>(450f, -340f), vec4<u32>(109943u, 22343u, 19636u, 4214u)), Struct_1(vec2<u32>(15684u, 14808u), 57587u, 15465u, vec2<f32>(-897f, 657f), vec4<u32>(4294967295u, 28021u, 19648u, 173u)), Struct_1(vec2<u32>(5875u, 55283u), 4294967295u, 0u, vec2<f32>(-260f, 344f), vec4<u32>(35409u, 1u, 1763u, 0u)), Struct_1(vec2<u32>(4294967295u, 47972u), 4294967295u, 1u, vec2<f32>(-925f, 882f), vec4<u32>(1u, 61419u, 5453u, 23363u)), Struct_1(vec2<u32>(45515u, 0u), 0u, 0u, vec2<f32>(1873f, -877f), vec4<u32>(0u, 0u, 86597u, 10777u)), Struct_1(vec2<u32>(8062u, 4294967295u), 28486u, 46778u, vec2<f32>(-1001f, -182f), vec4<u32>(39829u, 24682u, 0u, 4294967295u)), Struct_1(vec2<u32>(26504u, 36132u), 51743u, 1u, vec2<f32>(1405f, -538f), vec4<u32>(4294967295u, 4294967295u, 0u, 37052u)), Struct_1(vec2<u32>(20276u, 27525u), 4294967295u, 4294967295u, vec2<f32>(331f, 764f), vec4<u32>(548u, 15242u, 7273u, 60782u)), Struct_1(vec2<u32>(4294967295u, 1u), 3472u, 1u, vec2<f32>(-2045f, -177f), vec4<u32>(29652u, 59157u, 24532u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u), 34921u, 10954u, vec2<f32>(748f, -238f), vec4<u32>(101264u, 1u, 66444u, 25399u)), Struct_1(vec2<u32>(28504u, 0u), 4294967295u, 4294967295u, vec2<f32>(867f, 965f), vec4<u32>(1u, 0u, 4294967295u, 100926u)), Struct_1(vec2<u32>(1u, 1u), 20123u, 73878u, vec2<f32>(-774f, 1000f), vec4<u32>(4294967295u, 32332u, 4664u, 2299u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 17u)];
    let var_1 = !select(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 15u)], global0[_wgslsmith_index_u32(arg_0, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 15u)], true))), false), vec2<bool>(reverseBits(u_input.a) != 1i, true), vec2<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true, global0[_wgslsmith_index_u32(var_0.a.x, 15u)])) | true));
    let var_2 = Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_0.a.x, 1u), var_0.c), abs(var_0.e.yz) >> (var_0.a % vec2<u32>(32u))), ~(~76685u), ~var_0.b, _wgslsmith_f_op_vec2_f32(select(arg_2.xz, var_0.d, true)), var_0.e), max(vec3<i32>(countOneBits(u_input.a), _wgslsmith_mod_i32(arg_1.x, -1i), -1i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2879i, -1i, u_input.b.x, u_input.b.x), u_input.b), ~0i, _wgslsmith_dot_vec2_i32(arg_1.xx, u_input.b.zy))) << (var_0.e.zxw % vec3<u32>(32u)));
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    return 1024f;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d.x) * -1009f) + arg_0.a.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1562f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) - _wgslsmith_f_op_f32(f32(-1f) * -345f)), arg_0.a.d.x, arg_0.a.a.x == 26245u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(0u, _wgslsmith_div_vec3_i32(arg_0.b, u_input.b.yxz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, arg_0.a.d.x, arg_0.a.d.x, -285f)))), _wgslsmith_f_op_f32(select(558f, _wgslsmith_f_op_f32(arg_0.a.d.x - arg_0.a.d.x), !global0[_wgslsmith_index_u32(96703u, 15u)])))), _wgslsmith_f_op_f32(abs(arg_0.a.d.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f) * var_0.x), _wgslsmith_f_op_f32(abs(-710f)), -608f, -1104f));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-136f, _wgslsmith_f_op_f32(f32(-1f) * -1565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))) * var_0.ywz);
    global0 = array<bool, 15>();
    global1 = array<Struct_1, 17>();
    return arg_0.a.d.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(arg_2, select(!(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(49118u, 15u)])), select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(global0[_wgslsmith_index_u32(32608u, 15u)], global0[_wgslsmith_index_u32(arg_3, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 15u)], arg_1, global0[_wgslsmith_index_u32(77007u, 15u)])), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), true), global0[_wgslsmith_index_u32(0u, 15u)])))));
    var var_1 = Struct_2(select(select(!vec2<bool>(false, arg_1), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], any(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a.b, 15u)], arg_1, false, true)))), select(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(true, arg_1), global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true), vec2<bool>(arg_1, true)), vec2<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)])), u_input.b.x < -51497i), vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(arg_3, 15u)], true, false, true)), all(vec4<bool>(true, global0[_wgslsmith_index_u32(99696u, 15u)], true, arg_1)))), !any(vec2<bool>(arg_1, false))), var_0);
    global0 = array<bool, 15>();
    let var_2 = arg_2.a;
    global1 = array<Struct_1, 17>();
    return ~var_2.e;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_div_f32(arg_2.b, 103f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(sign(arg_2.b)))));
    let var_1 = vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b, arg_2.b, true)) - 1177f), -714f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-628f - arg_2.b) + _wgslsmith_f_op_f32(abs(-953f))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.zx, reverseBits(~vec2<u32>(11612u, arg_0.x)) | min(~select(vec2<u32>(arg_0.x, 4294967295u), arg_0.xy, global0[_wgslsmith_index_u32(arg_0.x, 15u)]), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(5115u, arg_0.x), arg_0.yw)))), 17u)];
    var var_3 = u_input.b.x;
    let var_4 = ~u_input.b.yy;
    return min(_wgslsmith_div_i32(~_wgslsmith_mult_i32(var_4.x | var_4.x, _wgslsmith_add_i32(u_input.a, var_4.x)), u_input.b.x << (arg_0.x % 32u)), firstLeadingBit(countOneBits(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(vec3<u32>(1u, 1u, 1u));
    var var_1 = vec4<i32>(378i, u_input.b.x, func_4(func_1(vec2<f32>(_wgslsmith_f_op_f32(-1436f + 985f), _wgslsmith_div_f32(1000f, 729f)), !all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.x, 15u)])), Struct_3(Struct_1(var_0.xz, 35745u, 68333u, vec2<f32>(-547f, -281f), vec4<u32>(var_0.x, 24675u, 87707u, 60131u)), vec3<i32>(u_input.b.x, 11400i, u_input.a)), _wgslsmith_clamp_u32(21508u, 50302u, var_0.x) >> (~43130u % 32u)), vec4<bool>(true, true, any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])) || select(global0[_wgslsmith_index_u32(0u, 15u)], true, global0[_wgslsmith_index_u32(var_0.x, 15u)]), all(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 15u)])) & (global0[_wgslsmith_index_u32(4294967295u, 15u)] && false)), Struct_2(!select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) * -1393f)), !select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], false, true), !vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], false), false)), 1i);
    let var_2 = global0[_wgslsmith_index_u32(~min(var_0.x, _wgslsmith_clamp_u32(countOneBits(var_0.x), var_0.x << (reverseBits(var_0.x) % 32u), ~abs(38609u))), 15u)];
    var var_3 = select(abs(var_0.yx), var_0.yy, false);
    let var_4 = false;
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.yx), 1544i, func_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-706f, -706f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1362f, -157f), vec2<f32>(-302f, -477f)))))), true, Struct_3(Struct_1(~var_0.xy, var_0.x, ~var_3.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1021f, -339f))), ~vec4<u32>(4294967295u, 12022u, 4294967295u, 0u)), u_input.b.xzx), 58512u).xyx, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(u_input.a, 0i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, -30821i, 1998i), vec3<i32>(var_1.x, u_input.a, -7507i), vec3<bool>(var_4, true, global0[_wgslsmith_index_u32(var_3.x, 15u)])), var_1.yyz & u_input.b.wzx), -32944i, -u_input.a)));
}

