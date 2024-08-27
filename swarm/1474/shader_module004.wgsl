struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -646f;

var<private> global1: array<i32, 2> = array<i32, 2>(0i, -1i);

var<private> global2: array<bool, 26>;

var<private> global3: array<bool, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = max(vec2<i32>(-u_input.a, u_input.a), ~arg_3.d);
    global1 = array<i32, 2>();
    global0 = arg_3.a.x;
    global3 = array<bool, 28>();
    var var_1 = -(~(~(-(~vec4<i32>(arg_2.d.x, global1[_wgslsmith_index_u32(4294967295u, 2u)], arg_2.d.x, 16673i)))));
    return arg_3.e;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<bool>) -> vec3<bool> {
    global1 = array<i32, 2>();
    global3 = array<bool, 28>();
    return !vec3<bool>(arg_2.x, arg_2.x, global3[_wgslsmith_index_u32(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_0.x, 609f, -636f))), vec3<bool>(true, false, global3[_wgslsmith_index_u32(0u, 28u)]), vec2<u32>(1u, 0u), vec2<i32>(u_input.a, u_input.a), select(77465u, 10453u, true)), !vec2<bool>(arg_2.x, true), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_1, arg_1, arg_0.x), vec4<f32>(-1000f, arg_1, -1056f, arg_1)), select(vec3<bool>(true, arg_2.x, false), vec3<bool>(true, arg_2.x, global3[_wgslsmith_index_u32(4294967295u, 28u)]), arg_2.x), vec2<u32>(102724u, 4294967295u), vec2<i32>(u_input.a, u_input.a), min(4972u, 4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(806f, -247f, arg_0.x, 2197f))), !vec3<bool>(true, false, arg_2.x), vec2<u32>(79200u, 1u), vec2<i32>(-15243i, global1[_wgslsmith_index_u32(1u, 2u)]), min(37329u, 33859u))), 28u)]);
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    global2 = array<bool, 26>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(f32(-1f) * -1224f))), -476f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-996f, -1543f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -297f), 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, 1105f))) + _wgslsmith_f_op_f32(min(-396f, -1106f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f))))), func_1(vec3<f32>(2896f, 641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2118f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(671f, -984f) * _wgslsmith_f_op_f32(f32(-1f) * -261f)))), vec2<bool>(false, global2[_wgslsmith_index_u32(abs(~20989u), 26u)])), ~(~(~(~vec2<u32>(1u, 0u)))), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(1u, 2u)], 14711i, 1i), firstTrailingBit(firstTrailingBit(arg_0.ywx))), _wgslsmith_add_i32(min(firstLeadingBit(-2147483647i), global1[_wgslsmith_index_u32(1u, 2u)]), 9378i)), max(0u, _wgslsmith_mult_u32(firstLeadingBit(~77571u), min(~5921u, 19290u))));
    var_0 = Struct_1(var_0.a, var_0.b, ~vec2<u32>(_wgslsmith_add_u32(0u, var_0.c.x), abs(42082u)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.zz, arg_0.zz), vec2<i32>(-2147483647i, arg_0.x)), 1u);
    global2 = array<bool, 26>();
    let var_1 = _wgslsmith_f_op_f32(1000f * var_0.a.x);
    return !select(func_1(vec3<f32>(var_1, 1310f, -882f), _wgslsmith_f_op_f32(var_0.a.x + -263f), var_0.b.xx), vec3<bool>(all(!vec2<bool>(var_0.b.x, false)), all(vec4<bool>(false, true, true, false)), true), vec3<bool>(var_0.b.x, var_0.b.x, !(var_1 > var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(reverseBits(vec3<i32>(-1i) * -(vec3<i32>(-1i, 51096i, 1i) | vec3<i32>(-24284i, global1[_wgslsmith_index_u32(5875u, 2u)], u_input.a))), firstTrailingBit(vec3<i32>(16441i, 1i, u_input.a)), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(170f, 105f, _wgslsmith_div_f32(612f, -1462f), 1000f), vec4<f32>(-2430f, 528f, _wgslsmith_f_op_f32(-937f + 763f), -848f)))), select(!func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1677f, 1007f, -592f)), -1000f, vec2<bool>(true, false)), func_3(_wgslsmith_mult_vec4_i32(min(vec4<i32>(12144i, u_input.a, 0i, global1[_wgslsmith_index_u32(1u, 2u)]), vec4<i32>(-21623i, global1[_wgslsmith_index_u32(13692u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(-59108i, u_input.a, global1[_wgslsmith_index_u32(60028u, 2u)], 1i), vec4<i32>(var_0.x, -11571i, 31233i, 7773i)))), global2[_wgslsmith_index_u32(max(func_2(Struct_1(vec4<f32>(-377f, -1649f, -407f, 2282f), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, true), vec2<u32>(4885u, 1u), var_0.xz, 1u), !vec2<bool>(false, global3[_wgslsmith_index_u32(6228u, 28u)]), Struct_1(vec4<f32>(924f, -1216f, 878f, -1409f), vec3<bool>(true, true, false), vec2<u32>(30242u, 1u), vec2<i32>(var_0.x, -68101i), 31035u), Struct_1(vec4<f32>(163f, 1665f, -785f, -1090f), vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 28u)], false), vec2<u32>(1u, 15633u), var_0.yx, 80953u)), _wgslsmith_add_u32(select(30513u, 0u, global2[_wgslsmith_index_u32(10057u, 26u)]), 1u)), 26u)]), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(abs(~vec2<u32>(4294967295u, 26550u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(20384u, 0u), vec2<u32>(5813u, 4294967295u)), 1u)), countOneBits(~vec2<u32>(1u, 1u))), var_0.xz, ~abs(_wgslsmith_clamp_u32(~1u, ~0u, ~4294967295u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, _wgslsmith_f_op_f32(240f + -682f), _wgslsmith_f_op_f32(-599f + 409f), var_1.a.x)))), var_1.b, abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(57882u, 27405u), var_1.c)), ~var_1.d, ~74140u);
    let var_3 = _wgslsmith_f_op_f32(-var_2.a.x);
    global3 = array<bool, 28>();
    global3 = array<bool, 28>();
    var var_4 = min(-abs(_wgslsmith_mult_vec3_i32(var_0, var_0)) >> (vec3<u32>(abs(max(4294967295u, 4294967295u)), 4294967295u, _wgslsmith_mod_u32(var_2.c.x, ~4294967295u)) % vec3<u32>(32u)), var_0);
    var var_5 = ~min(~26413u, 1u);
    var_4 = vec3<i32>(1i, _wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(global1[_wgslsmith_index_u32(var_2.c.x, 2u)], 1i)), vec2<i32>(var_4.x, -2147483647i)), var_0.x) >> (~abs(vec3<u32>(4294967295u, 5738u, ~2021u)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~var_0, vec3<i32>(0i, -2147483647i | var_2.d.x, -43537i)), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.yyw)), _wgslsmith_f_op_vec3_f32(min(var_1.a.yyz, _wgslsmith_f_op_vec3_f32(floor(var_2.a.wzx)))), func_3(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_4.x, 30749i, var_2.d.x), vec4<i32>(6460i, 0i, 12800i, -2147483647i))).x))), _wgslsmith_f_op_f32(-var_2.a.x), ~vec3<i32>(~(-2147483647i), u_input.a | 1i, -8214i ^ var_0.x));
}

