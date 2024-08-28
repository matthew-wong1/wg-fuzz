struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -11851i, 1i);

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(1005f, 529f, 723f, 2037f), vec4<f32>(-1000f, -1280f, 112f, 757f), vec4<f32>(281f, -1013f, -597f, -280f), vec4<f32>(1121f, -1645f, 283f, 1437f), vec4<f32>(495f, -258f, 181f, -1419f), vec4<f32>(-867f, -348f, 159f, 990f), vec4<f32>(1283f, 1598f, 1000f, -236f), vec4<f32>(-1508f, 915f, -239f, -2179f), vec4<f32>(-1292f, -444f, 1692f, 2242f), vec4<f32>(-1546f, 1677f, -794f, -889f), vec4<f32>(-1000f, 348f, 1278f, -957f), vec4<f32>(-112f, 324f, -1992f, 1556f), vec4<f32>(-230f, 1917f, -285f, -272f));

var<private> global2: i32 = 57051i;

var<private> global3: vec4<f32> = vec4<f32>(1315f, -1054f, 221f, 796f);

var<private> global4: array<u32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = !select(arg_1.a, select(vec4<bool>(true, true, arg_1.c.b <= u_input.a.x, select(arg_1.e, false, arg_1.a.x)), vec4<bool>(true, true, true, true), select(arg_1.a, select(vec4<bool>(false, arg_1.e, true, true), vec4<bool>(false, arg_1.a.x, arg_1.e, arg_1.e), vec4<bool>(false, arg_1.e, false, arg_1.a.x)), all(arg_1.a))), any(!(!vec4<bool>(true, true, arg_1.e, true))));
    var var_1 = var_0;
    let var_2 = vec4<f32>(1000f, -1296f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.a, _wgslsmith_f_op_f32(round(global3.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(2349f, arg_3.a))))))), global3.x);
    var var_3 = firstTrailingBit(global0.x);
    let var_4 = arg_3;
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, -140f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(780f - global3.x), _wgslsmith_f_op_f32(var_2.x * arg_3.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.c.a, global3.xx, var_1.ww))))), global3.yw));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(0u, 30u)], abs(_wgslsmith_mod_u32(0u, u_input.b.x)), min(4294967295u, 4294967295u)), 1u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, -959f)))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, -227f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, 1402f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global0.x, Struct_3(vec4<bool>(true, true, false, false), vec4<u32>(1u, u_input.b.x, 0u, 33823u), Struct_1(vec2<f32>(global3.x, 825f), var_0), 4294967295u, false), global0.yz, Struct_2(2717f)))))), _wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.b.zy)) & 4294967295u);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = Struct_2(global3.x);
    let var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - arg_1.x)));
    let var_2 = _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(~abs(~_wgslsmith_add_u32(1u, var_1.b)), 13u)], global1[_wgslsmith_index_u32(~firstTrailingBit(reverseBits(arg_2)), 13u)]);
    global1 = array<vec4<f32>, 13>();
    let var_3 = vec2<i32>(global0.x | -1i, global0.x);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~_wgslsmith_dot_vec4_u32(~vec4<u32>(51374u, global4[_wgslsmith_index_u32(1u, 30u)], 4235u, global4[_wgslsmith_index_u32(16447u, 30u)]), _wgslsmith_mult_vec4_u32(u_input.c, u_input.b)) | func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.yyw, vec3<f32>(1000f, -728f, global3.x)) + global3.zyw), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(465f, global3.x, global3.x), _wgslsmith_f_op_vec3_f32(round(global3.wyz)), true)), ~firstTrailingBit(global4[_wgslsmith_index_u32(61046u, 30u)]), true)) >> (countOneBits(((1u ^ u_input.c.x) << (func_2(global3.x).b % 32u)) << (~_wgslsmith_mod_u32(u_input.c.x, u_input.b.x) % 32u)) % 32u);
    var var_1 = Struct_3(vec4<bool>(any(vec3<bool>(true, true, true)), true, false, true), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, min(u_input.b, u_input.b)), global4[_wgslsmith_index_u32(select(~global4[_wgslsmith_index_u32(u_input.a.x, 30u)], global4[_wgslsmith_index_u32(0u, 30u)] & u_input.b.x, true), 30u)], u_input.c.x | 14448u, ~u_input.a.x)), Struct_1(global3.zx, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(44564u, 30u)], abs(_wgslsmith_dot_vec3_u32(vec3<u32>(103019u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)]), u_input.b.zzz))), 30u)]), _wgslsmith_div_u32(u_input.a.x >> (~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 30u)], 30u)] % 32u), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.c.x, 125680u), countOneBits(62421u)), 30u)]), (_wgslsmith_f_op_f32(-2824f + 1893f) > _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(-21887i, Struct_3(vec4<bool>(false, false, true, false), vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25717u, 30u)], 30u)]), Struct_1(vec2<f32>(global3.x, -1365f), 7685u), 0u, false), vec2<i32>(global0.x, 9547i), Struct_2(global3.x))).x, _wgslsmith_div_f32(146f, global3.x))) & true);
    var var_2 = var_1.c;
    global4 = array<u32, 30>();
    let var_3 = Struct_2(global3.x);
    global3 = global1[_wgslsmith_index_u32(var_1.c.b, 13u)];
    let var_4 = vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(3545i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x)) & global0.x, _wgslsmith_add_i32(reverseBits(global0.x), 35644i), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.x), -global0.yx)));
    var var_5 = 29182u;
    let x = u_input.a;
    s_output = StorageBuffer(-1031f, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~(~u_input.b.yw), u_input.b.yw), var_1.b.wx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2108f))) - 349f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-522f * _wgslsmith_f_op_f32(-var_3.a)) - -1000f)), _wgslsmith_div_vec4_i32(~vec4<i32>(i32(-1i) * -45548i, var_4.x >> (var_2.b % 32u), ~47657i, i32(-1i) * -2147483647i), (firstLeadingBit(vec4<i32>(58592i, 3725i, global0.x, var_4.x)) ^ max(vec4<i32>(9506i, global0.x, -42267i, 1i), vec4<i32>(global0.x, 2147483647i, var_4.x, var_4.x))) & max(firstLeadingBit(vec4<i32>(global0.x, var_4.x, global0.x, -25481i)), vec4<i32>(var_4.x, global0.x, -19978i, var_4.x) & vec4<i32>(-2147483647i, global0.x, global0.x, var_4.x))));
}

