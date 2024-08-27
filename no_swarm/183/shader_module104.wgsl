struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, false, true, false, true, true, false, true, true, true, false, false, true);

var<private> global1: array<Struct_1, 26>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(24083u, 7368u, 0u), true, -1365f, -1000f, vec2<bool>(false, true)), Struct_1(vec3<u32>(0u, 30009u, 4294967295u), false, -1000f, -1130f, vec2<bool>(false, true)), Struct_1(vec3<u32>(56465u, 34914u, 0u), true, 924f, -762f, vec2<bool>(false, true)), Struct_1(vec3<u32>(99425u, 1u, 2250u), false, -2065f, -272f, vec2<bool>(true, true)), Struct_1(vec3<u32>(0u, 4294967295u, 7288u), true, 104f, 354f, vec2<bool>(false, true)), Struct_1(vec3<u32>(28999u, 0u, 0u), false, 208f, 1785f, vec2<bool>(true, true)), Struct_1(vec3<u32>(14070u, 1u, 0u), true, 1151f, -1066f, vec2<bool>(false, true)), Struct_1(vec3<u32>(0u, 4294967295u, 4678u), false, -1313f, -1904f, vec2<bool>(false, false)));

var<private> global4: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, _wgslsmith_f_op_f32(floor(-834f)), _wgslsmith_f_op_f32(max(arg_1.c, _wgslsmith_f_op_f32(round(1255f)))), arg_1.d));
    global2 = global4.x;
    let var_1 = arg_1.e.x;
    var var_2 = all(!vec4<bool>(true, !(arg_1.c != 984f), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.a.x, arg_2.x), 14u)], !(!var_1)));
    var var_3 = max(15163i, 1i);
    return abs(vec4<i32>(global4.x, max(abs(global4.x), i32(-1i) * -13170i), ~(~(-2147483647i)), max(-(-21019i | u_input.a), max(u_input.a, -3048i))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: bool) -> vec4<i32> {
    global4 = ~abs(_wgslsmith_mod_vec2_i32(-(~vec2<i32>(1i, global4.x)), _wgslsmith_add_vec2_i32(vec2<i32>(-24276i, u_input.a), vec2<i32>(u_input.a, u_input.a))));
    var var_0 = func_3(arg_0, global1[_wgslsmith_index_u32(0u, 26u)], vec4<u32>(0u & abs(min(arg_1, 78989u)), 0u, reverseBits(~16998u), 1u));
    var var_1 = arg_0.a;
    return _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(func_3(Struct_1(vec3<u32>(66067u, arg_1, 6774u), arg_3, arg_0.d, 1179f, vec2<bool>(true, arg_0.b)), Struct_1(vec3<u32>(arg_0.a.x, 86476u, arg_0.a.x), true, arg_0.d, 944f, vec2<bool>(true, arg_0.e.x)), vec4<u32>(arg_0.a.x, arg_1, var_1.x, arg_0.a.x)).x, _wgslsmith_dot_vec2_i32(var_0.xy, var_0.yy), -13029i, arg_2), countOneBits(vec4<i32>(var_0.x, arg_2, 5758i, -40980i)))), vec4<i32>(_wgslsmith_mod_i32(var_0.x | global4.x, arg_2), arg_2, -5791i, 2147483647i));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = arg_0.d;
    let var_1 = -reverseBits(vec3<i32>(max(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(global4.x, 2147483647i, 0i))), u_input.a, -17371i));
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(select(~4252u, 1u, global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.a.x), 14u)])), 26u)];
    global0 = array<bool, 14>();
    var var_3 = reverseBits(abs(_wgslsmith_mod_i32(var_1.x, ~45830i) ^ global4.x));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(34825i, global4.x, -1i, 0i)), max(-(~vec4<i32>(-2147483647i, u_input.a, 77319i, 37748i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_1.x, -17800i, u_input.a), func_2(Struct_1(arg_0.a, false, arg_0.d, var_0, var_2.e), var_2.a.x, u_input.a, false)))), 0i, global4.x, _wgslsmith_dot_vec3_i32(var_1 ^ abs(var_1), func_2(Struct_1(vec3<u32>(33831u, 8543u, arg_0.a.x), false, var_2.d, -1418f, arg_0.e), ~arg_0.a.x, var_1.x, true).xxx) | (abs(1i) << (_wgslsmith_mult_u32(arg_0.a.x, 50410u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global4.x, global4.x, -1i), global4.x, -2147483647i, -23244i), func_1(global1[_wgslsmith_index_u32(~40631u, 26u)])));
    var var_1 = Struct_1(~(~vec3<u32>(min(1u, 57988u), abs(8861u), ~116858u)), true, -813f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f + -1368f) + 1173f), vec2<bool>(true, true));
    var var_2 = Struct_1(~(_wgslsmith_add_vec3_u32(firstLeadingBit(var_1.a), firstLeadingBit(vec3<u32>(var_1.a.x, var_1.a.x, 53103u))) & max(vec3<u32>(var_1.a.x, 4294967295u, var_1.a.x), vec3<u32>(var_1.a.x, var_1.a.x, 38676u))), true, _wgslsmith_div_f32(364f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-419f, 738f))), var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1129f) + var_1.c), var_1.e);
    var var_3 = abs(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(var_2.a.x), var_1.a.x), 4294967295u, 1u)));
    let var_4 = Struct_1(countOneBits(_wgslsmith_sub_vec3_u32(firstTrailingBit(firstTrailingBit(var_1.a)), vec3<u32>(var_1.a.x, 1u, 3739u))), true, var_1.c, _wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(round(-182f))), select(vec2<bool>(false, false), !(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.a.x, 14u)]))), var_0.x != ~1i));
    global1 = array<Struct_1, 26>();
    var_2 = var_4;
    let var_5 = max(countOneBits(var_3.x), ~var_1.a.x);
    var_2 = Struct_1(var_2.a, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(379f)), 565f)) + _wgslsmith_f_op_f32(abs(var_2.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_4.d)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.d, 1000f) * var_2.d)))), select(select(!vec2<bool>(false, var_4.e.x), !select(var_4.e, var_2.e, true), true & all(vec3<bool>(false, var_2.b, false))), vec2<bool>(true, true), select(vec2<bool>(any(var_4.e), var_1.e.x), !(!var_2.e), true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(_wgslsmith_dot_vec2_u32(var_1.a.yx, var_1.a.zx), 1u), 0u, ~var_3.x), 8u)], var_1.a.x, abs(0i), true).zxy, reverseBits(_wgslsmith_clamp_i32(-22215i, i32(-1i) * -2620i, global4.x)) ^ var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(286f)) - _wgslsmith_f_op_f32(var_2.d * var_4.d)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.d, var_4.c, var_2.d, 354f), vec4<f32>(-468f, 243f, var_4.d, 1000f))))))))));
}

