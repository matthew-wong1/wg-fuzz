struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1683f, 292f, -1479f, 1091f), vec3<u32>(91234u, 1u, 4294967295u), vec3<f32>(161f, 372f, -1000f), true, true), vec2<i32>(-12738i, 10543i), Struct_1(vec4<f32>(1010f, 455f, 512f, -1401f), vec3<u32>(20925u, 1u, 61701u), vec3<f32>(-1172f, -1046f, -976f), false, true), vec4<f32>(-355f, 1194f, 915f, 1507f), true);

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = false;
    let var_1 = global1.c.b;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1947f, 699f, arg_3.d.a.c.x, arg_1.d.d.x))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.d.d.x, arg_3.d.a.c.x, arg_3.d.d.x, 1631f)))))), abs(_wgslsmith_mod_vec3_u32(select(vec3<u32>(global0[_wgslsmith_index_u32(arg_3.d.c.b.x, 23u)], u_input.a.x, 68193u), vec3<u32>(18041u, arg_1.d.a.b.x, u_input.a.x), true), u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1848f, arg_3.d.a.a.x, arg_3.d.d.x) * vec3<f32>(global1.a.c.x, arg_3.d.c.a.x, 644f)), _wgslsmith_f_op_vec3_f32(trunc(arg_3.d.c.c)))) + _wgslsmith_f_op_vec3_f32(global1.a.c - arg_3.d.d.yzx)), (firstTrailingBit(-1i) ^ -2147483647i) == -_wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.xz), !(_wgslsmith_f_op_f32(f32(-1f) * -438f) != _wgslsmith_f_op_f32(arg_3.d.a.a.x * global1.a.a.x))), max(_wgslsmith_clamp_vec2_i32(-arg_1.c, arg_1.d.b, countOneBits(vec2<i32>(arg_3.b, 2147483647i))), arg_1.d.b), arg_3.d.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.a.a.x, arg_1.d.d.x, 1116f, -1265f)))) * _wgslsmith_f_op_vec4_f32(ceil(arg_1.d.d))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.a.a))))), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(-801f + arg_3.d.d.x), -699f, _wgslsmith_f_op_f32(exp2(global1.c.a.x))))));
    let var_4 = arg_1.d.a;
    return ~(~abs(vec3<u32>(max(38169u, 42087u), ~global1.c.b.x, 1u)));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<u32> {
    global0 = array<u32, 23>();
    var var_0 = -reverseBits(u_input.b);
    var var_1 = Struct_2(Struct_1(global1.c.a, func_3(!select(vec3<bool>(true, true, arg_1), vec3<bool>(false, false, false), vec3<bool>(arg_1, global1.c.d, arg_1)), Struct_3(vec2<i32>(0i, u_input.c.x), global1.b.x | global1.b.x, u_input.c.zy, Struct_2(global1.c, vec2<i32>(-2147483647i, global1.b.x), Struct_1(vec4<f32>(1929f, -126f, 1052f, global1.d.x), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a.x), vec3<f32>(-1070f, 785f, arg_0), arg_1, true), global1.c.a, arg_1), select(vec4<bool>(true, global2.x, false, arg_1), vec4<bool>(arg_1, global1.e, false, global2.x), vec4<bool>(false, false, arg_1, global2.x))), select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(false, global1.c.e, arg_1, arg_1), select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(true, true, true, false), global2.x)), Struct_3(countOneBits(vec2<i32>(global1.b.x, -3382i)), abs(global1.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, 2147483647i), vec2<i32>(u_input.c.x, 1i)), Struct_2(Struct_1(vec4<f32>(arg_0, arg_0, global1.a.a.x, global1.c.a.x), global1.c.b, vec3<f32>(arg_0, 2613f, -1410f), arg_1, global2.x), u_input.c.yy, Struct_1(global1.d, vec3<u32>(1u, global1.c.b.x, u_input.a.x), global1.a.a.zwz, true, true), vec4<f32>(1527f, 884f, global1.d.x, global1.d.x), true), vec4<bool>(false, arg_1, global1.a.d, true))), global1.c.a.wwx, select(all(!global2.xy), all(!vec3<bool>(arg_1, true, global2.x)), false), !all(vec4<bool>(global2.x, global2.x, global1.e, global2.x))), vec2<i32>(u_input.c.x, abs(_wgslsmith_add_i32(reverseBits(2415i), u_input.b))), global1.a, vec4<f32>(global1.c.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, global1.a.a.x, arg_1)) - _wgslsmith_f_op_f32(arg_0 * arg_0)))), _wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(-global1.d.x))), !(!(any(vec2<bool>(global2.x, false)) || arg_1)));
    let var_2 = global1.a;
    var var_3 = countOneBits(-2147483647i);
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec3<bool>(arg_2.a.d, global2.x, any(!select(vec3<bool>(true, global1.e, global1.c.d), !vec3<bool>(global2.x, true, global1.c.e), !vec3<bool>(false, false, global2.x))));
    global1 = arg_0;
    global2 = !var_0;
    global0 = array<u32, 23>();
    var var_1 = u_input.a ^ _wgslsmith_mod_vec3_u32(vec3<u32>(~max(u_input.a.x, 28443u), ~_wgslsmith_sub_u32(arg_2.c.b.x, 4294967295u), ~arg_2.c.b.x), ~(~abs(u_input.a)));
    return Struct_2(arg_2.a, _wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(arg_0.b, ~vec2<i32>(arg_2.b.x, 0i)), ~min(arg_0.b >> (u_input.a.zy % vec2<u32>(32u)), vec2<i32>(global1.b.x, 2147483647i))), global1.c, arg_2.d, !var_0.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = ~(~(~(1u >> (firstLeadingBit(1u) % 32u))));
    var var_1 = 21398i & global1.b.x;
    let var_2 = func_4(arg_0.d, _wgslsmith_clamp_u32(global1.a.b.x, _wgslsmith_add_u32(arg_1.x, ~u_input.a.x), global0[_wgslsmith_index_u32(76564u, 23u)]), Struct_2(Struct_1(arg_2.a, u_input.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a.x, global1.d.x, arg_2.a.x), _wgslsmith_f_op_vec3_f32(max(arg_2.a.zwx, vec3<f32>(-858f, arg_2.c.x, arg_0.d.d.x))))), arg_0.e.x, all(select(arg_0.e.xzy, arg_0.e.xxz, false))), arg_0.d.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_2.a))), func_2(_wgslsmith_f_op_f32(-arg_0.d.c.c.x), all(vec3<bool>(false, global2.x, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(sign(arg_0.d.a.a.x)), _wgslsmith_f_op_f32(-arg_2.a.x)), true, global1.b.x <= (global1.b.x >> (0u % 32u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.c.x, 1230f, arg_0.d.d.x, arg_0.d.a.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, global1.d.x, -1435f, 1216f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_0.d.a.a.x, arg_2.a.x, 108f) * arg_2.a))))), true));
    var var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_div_f32(999f, 734f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1436f)), _wgslsmith_f_op_f32(f32(-1f) * -364f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1594f, 466f)) - _wgslsmith_f_op_f32(-1270f * var_2.a.c.x))), arg_0.d.a.b, var_2.d.xxy, any(!vec3<bool>(global1.a.d, false, arg_0.e.x)), true), -(vec2<i32>(-1i) * -global1.b), arg_0.d.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_2.a, vec4<f32>(arg_2.c.x, _wgslsmith_f_op_f32(var_2.c.a.x * arg_0.d.c.c.x), _wgslsmith_f_op_f32(-global1.d.x), 482f), !func_4(Struct_2(Struct_1(vec4<f32>(var_2.a.c.x, global1.d.x, global1.c.a.x, global1.a.c.x), vec3<u32>(0u, 2622u, arg_2.b.x), vec3<f32>(2119f, arg_2.a.x, -254f), false, global2.x), vec2<i32>(u_input.b, 1i), Struct_1(arg_0.d.a.a, vec3<u32>(u_input.a.x, 2308u, global0[_wgslsmith_index_u32(global1.a.b.x, 23u)]), vec3<f32>(global1.a.a.x, -560f, arg_2.a.x), global2.x, true), vec4<f32>(arg_0.d.c.c.x, 1176f, arg_2.a.x, var_2.d.x), arg_0.d.c.e), arg_0.d.a.b.x, Struct_2(var_2.c, u_input.c.yy, global1.c, var_2.d, true)).c.e)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(arg_0.d, global1.a.b.x, Struct_2(arg_0.d.c, u_input.c.yy, var_2.a, vec4<f32>(arg_0.d.d.x, arg_0.d.d.x, arg_2.c.x, arg_2.a.x), arg_0.e.x)).d.x, 958f, var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -647f)) + global1.d)), arg_0.e.x);
    let var_4 = arg_0;
    return abs(_wgslsmith_div_u32(10865u, ~func_3(vec3<bool>(arg_2.d, arg_2.d, true), arg_0, !arg_0.e, arg_0).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec4_u32(min(~max(vec4<u32>(global1.c.b.x, global1.c.b.x, global1.c.b.x, u_input.a.x), vec4<u32>(28785u, global1.a.b.x, 1u, 4294967295u)), min(firstLeadingBit(vec4<u32>(1743u, global0[_wgslsmith_index_u32(1u, 23u)], 4294967295u, 0u)), vec4<u32>(4294967295u, 26214u, 19641u, global1.c.b.x))), vec4<u32>(1u, global1.a.b.x, global1.a.b.x, func_1(Struct_3(global1.b, -9359i, vec2<i32>(u_input.c.x, 13818i), Struct_2(global1.a, u_input.c.yy, Struct_1(global1.d, vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 23u)], u_input.a.x), global1.d.wxw, false, true), global1.c.a, global1.a.d), vec4<bool>(true, global1.e, false, true)), global1.c.b.xz, Struct_1(vec4<f32>(-1000f, global1.a.c.x, global1.c.a.x, global1.a.a.x), u_input.a, global1.d.yzz, true, global2.x))));
    let var_1 = vec2<bool>(all(global2.zx), !(!any(vec4<bool>(global2.x, global2.x, false, true))));
    var var_2 = all(!select(!(!vec3<bool>(true, var_1.x, global1.a.d)), vec3<bool>(var_1.x, true, var_1.x), select(!vec3<bool>(true, var_1.x, global1.e), select(vec3<bool>(global1.c.e, true, false), vec3<bool>(var_1.x, global1.a.d, var_1.x), false), true)));
    var var_3 = !vec3<bool>(true, false, any(select(!global2.zx, vec2<bool>(true, true), !vec2<bool>(global2.x, global2.x))));
    var var_4 = Struct_3(-firstLeadingBit(-reverseBits(vec2<i32>(u_input.b, global1.b.x))), select(global1.b.x, -25588i, global1.a.d), ~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_sub_i32(u_input.c.x, global1.b.x)), select(-u_input.c.yx, u_input.c.xy << (global1.a.b.zz % vec2<u32>(32u)), global2.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.c.a))), func_2(global1.c.c.x, any(vec3<bool>(var_3.x, false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-356f, global1.c.c.x, global1.d.x))), var_3.x, 1u != select(global0[_wgslsmith_index_u32(4294967295u, 23u)], 60698u, false)), u_input.c.yz, global1.c, global1.d, global1.a.d), !vec4<bool>(all(select(vec4<bool>(true, true, global1.a.d, false), vec4<bool>(false, global1.e, false, global1.e), true)), any(vec4<bool>(true, false, var_3.x, false)), all(select(vec4<bool>(global1.e, var_1.x, var_3.x, true), vec4<bool>(true, var_3.x, true, global2.x), true)), global1.c.a.x < _wgslsmith_f_op_f32(floor(-1594f))));
    var_2 = var_1.x;
    let var_5 = func_4(var_4.d, global0[_wgslsmith_index_u32(var_4.d.c.b.x, 23u)], var_4.d).a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(25768i, global1.b.x, -44235i)), vec3<i32>(var_4.c.x, var_4.d.b.x << (51597u % 32u), i32(-1i) * -1i), countOneBits(u_input.c)), _wgslsmith_f_op_f32(var_4.d.a.a.x * -247f), _wgslsmith_f_op_f32(round(-483f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.a.a.x, _wgslsmith_f_op_f32(1f * 1903f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -204f), global1.d.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)))), vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -676f))))));
}

