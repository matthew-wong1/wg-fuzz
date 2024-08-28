struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: u32 = 1u;

var<private> global2: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global3: Struct_1 = Struct_1(true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = vec2<bool>(false, !any(!global2[_wgslsmith_index_u32(2223u, 4u)]));
    var var_1 = vec4<u32>(10131u, 4294967295u, _wgslsmith_div_u32(~max(0u, u_input.a.x << (u_input.a.x % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 17365u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), u_input.a.x);
    global0 = Struct_1(true);
    var var_2 = Struct_1(arg_1.x);
    global3 = Struct_1(!arg_1.x);
    return Struct_1(true);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32((vec3<i32>(min(-27409i, -86i), firstTrailingBit(2147483647i), _wgslsmith_div_i32(arg_0, 1i)) >> (arg_1 % vec3<u32>(32u))) << (vec3<u32>(select(~arg_2.x, ~0u, all(global2[_wgslsmith_index_u32(10003u, 4u)])), u_input.a.x, arg_2.x) % vec3<u32>(32u)), -vec3<i32>(2147483647i, -arg_0, -28646i));
    let var_1 = 6631u;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(3350f, 1911f, 1468f, 726f) - vec4<f32>(1204f, 1010f, 543f, -164f)) - vec4<f32>(-728f, -2727f, 804f, 632f))) + vec4<f32>(529f, _wgslsmith_f_op_f32(-1662f * _wgslsmith_f_op_f32(1000f + -651f)), _wgslsmith_f_op_f32(f32(-1f) * -306f), 1243f)), vec3<bool>(true, any(vec4<bool>(true, false, arg_3.a, !arg_3.a)), arg_3.a));
    var var_3 = Struct_1(arg_3.a);
    let var_4 = (~var_0 << (abs(_wgslsmith_mult_vec3_u32(select(arg_1, arg_1, arg_3.a), ~arg_1)) % vec3<u32>(32u))) >> (~arg_1 % vec3<u32>(32u));
    return func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(2166f, _wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(568f, -477f, -110f, 230f) - vec4<f32>(604f, 1000f, 689f, 603f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1650f, 1966f, -226f), vec4<f32>(1000f, 1000f, -1683f, -1333f), true))) - vec4<f32>(_wgslsmith_f_op_f32(103f + -1000f), _wgslsmith_f_op_f32(1159f - -127f), -2084f, _wgslsmith_f_op_f32(-1023f + -587f)))), vec3<bool>(false, true, false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    global1 = ~0u;
    global0 = Struct_1(true);
    let var_0 = _wgslsmith_add_i32(-7612i, -2147483647i ^ u_input.c);
    var var_1 = arg_2;
    let var_2 = vec4<bool>(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -207f, 1441f) * vec4<f32>(-270f, -1445f, -1119f, arg_2)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(508f, arg_2, 1030f, -2536f), vec4<f32>(296f, -1246f, arg_2, arg_2), vec4<bool>(false, true, true, arg_3.a)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(868f, 953f, arg_2, 1068f)), vec4<f32>(arg_2, 871f, arg_2, arg_2))), !vec3<bool>(308f > arg_2, 61955i <= var_0, arg_0.a || true)).a, arg_0.a, !any(select(select(vec2<bool>(global3.a, true), global2[_wgslsmith_index_u32(u_input.a.x, 4u)], arg_3.a), vec2<bool>(arg_3.a, arg_3.a), global2[_wgslsmith_index_u32(~u_input.a.x, 4u)])), false);
    return vec3<bool>(var_2.x, global0.a, arg_1.a);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = Struct_1(global0.a);
    let var_1 = abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), u_input.b)), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.c, 64848i), u_input.b << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))))) & u_input.b;
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 985f, -176f), vec4<f32>(arg_1.x, -561f, arg_1.x, -406f))))))), vec3<bool>(var_0.a, false, !(!all(global2[_wgslsmith_index_u32(0u, 4u)]))));
    let var_3 = arg_0.x;
    var var_4 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), -782f)), arg_1.x, 244f, 1120f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_1.x, -947f, 712f))), vec4<f32>(arg_1.x, 931f, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 208f, -1584f, arg_1.x)))))), func_4(func_3(~_wgslsmith_div_i32(u_input.b.x, 2147483647i), firstLeadingBit(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), max(u_input.a, u_input.a), Struct_1(var_2.a)), Struct_1(all(vec2<bool>(global3.a, true)) == false), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(all(vec3<bool>(var_0.a, arg_0.x, true)))));
    return _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(0i, 1i, u_input.c), vec3<i32>(var_1.x, var_1.x, 1i)), min(vec3<i32>(-6635i, 1i, -1i), vec3<i32>(-1i, -20158i, u_input.b.x))), ~vec3<i32>(-2147483647i, 31373i, var_1.x)), -vec3<i32>(1913i, u_input.c, var_1.x) >> (~vec3<u32>(u_input.a.x, 0u, 11980u) % vec3<u32>(32u))), reverseBits(abs(vec3<i32>(_wgslsmith_clamp_i32(-32556i, u_input.c, u_input.c), _wgslsmith_div_i32(var_1.x, 32182i), _wgslsmith_dot_vec2_i32(var_1, u_input.b)))));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_1 {
    global2 = array<vec2<bool>, 4>();
    var var_0 = Struct_1(!global3.a);
    let var_1 = !func_3(-1948i, firstTrailingBit(~(~vec3<u32>(61123u, arg_1.x, 59172u))), vec2<u32>(min(arg_1.x ^ arg_1.x, ~u_input.a.x), arg_1.x & _wgslsmith_mult_u32(8785u, arg_1.x)), Struct_1(func_4(Struct_1(global3.a), Struct_1(global0.a), _wgslsmith_f_op_f32(step(-757f, -895f)), func_2(vec4<f32>(-895f, -916f, 888f, -1267f), vec3<bool>(var_0.a, var_0.a, global0.a))).x)).a;
    var var_2 = Struct_1(any(select(!func_4(Struct_1(var_1), Struct_1(true), 749f, Struct_1(var_1)), !(!vec3<bool>(false, true, var_1)), true)));
    var var_3 = Struct_1(all(!select(select(vec4<bool>(var_0.a, true, true, true), vec4<bool>(false, var_0.a, true, true), vec4<bool>(global0.a, var_2.a, true, var_1)), !vec4<bool>(false, true, var_1, true), select(vec4<bool>(global3.a, global0.a, false, var_0.a), vec4<bool>(false, var_2.a, false, true), true))));
    return Struct_1(!(any(!vec3<bool>(var_1, true, var_1)) | !(arg_0.x == arg_0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global3 = Struct_1(global0.a);
    var var_0 = func_6(func_5(func_4(Struct_1(true), func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, 1i), vec3<i32>(5177i, 25720i, -1i)), vec3<u32>(u_input.a.x, 4294967295u, 17766u), vec2<u32>(u_input.a.x, u_input.a.x), func_2(vec4<f32>(1684f, 1000f, 157f, 532f), vec3<bool>(arg_0.a, global0.a, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) + _wgslsmith_f_op_f32(f32(-1f) * -105f)), arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1472f, -1000f, 1000f) + vec3<f32>(-680f, 526f, 714f)) + vec3<f32>(-720f, -1863f, -1900f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1451f, 899f, -986f))))), vec2<u32>(1u, 28953u));
    global1 = ~60951u;
    var var_1 = Struct_1(true);
    var var_2 = select(!(!select(!vec4<bool>(false, false, true, arg_0.a), vec4<bool>(arg_1.a, var_0.a, var_1.a, var_0.a), vec4<bool>(global0.a, true, arg_0.a, true))), select(vec4<bool>(true, true, func_4(func_2(vec4<f32>(1000f, -1255f, -741f, 778f), vec3<bool>(var_1.a, arg_0.a, var_0.a)), arg_0, _wgslsmith_f_op_f32(-869f - -1000f), func_6(vec3<i32>(u_input.b.x, u_input.b.x, u_input.c), vec2<u32>(1u, u_input.a.x))).x, arg_0.a), select(vec4<bool>(true, any(vec3<bool>(global0.a, false, false)), var_0.a, arg_1.a), !select(vec4<bool>(false, global3.a, arg_0.a, arg_0.a), vec4<bool>(var_1.a, true, false, false), vec4<bool>(arg_1.a, true, false, var_0.a)), select(select(vec4<bool>(arg_1.a, var_1.a, global3.a, arg_0.a), vec4<bool>(true, global3.a, var_0.a, false), true), vec4<bool>(global0.a, true, true, true), vec4<bool>(global3.a, false, true, var_0.a))), select(vec4<bool>(select(var_1.a, var_1.a, true), true, global0.a, false), !(!vec4<bool>(arg_1.a, false, true, false)), vec4<bool>(false, var_1.a, global3.a, !arg_0.a))), !select(vec4<bool>(0u <= u_input.a.x, false, arg_0.a, !arg_0.a), select(vec4<bool>(global0.a, false, true, false), select(vec4<bool>(false, false, var_1.a, arg_1.a), vec4<bool>(arg_0.a, global0.a, arg_1.a, arg_1.a), vec4<bool>(false, false, false, true)), any(vec4<bool>(arg_1.a, false, var_1.a, arg_0.a))), var_1.a));
    return -994f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(423f, -235f)), _wgslsmith_f_op_f32(ceil(-2000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f * -528f))), _wgslsmith_f_op_f32(func_1(Struct_1(true), Struct_1(all(vec4<bool>(false, true, global3.a, false))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1558f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1726f, -1064f)))), _wgslsmith_f_op_f32(func_1(Struct_1(true), func_6(~vec3<i32>(u_input.b.x, 0i, u_input.c), u_input.a)))) + vec4<f32>(197f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), 727f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f)))), _wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1124f, -1000f) - -844f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1682f)))));
    let var_1 = ~(~(~vec4<u32>(8384u, u_input.a.x | u_input.a.x, 69351u, _wgslsmith_clamp_u32(0u, u_input.a.x, 5645u))));
    let var_2 = -26932i;
    let var_3 = reverseBits(abs(u_input.b));
    global1 = 4294967295u ^ u_input.a.x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(abs(292f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -399f) - _wgslsmith_f_op_f32(-1118f + var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * 1167f))) * 201f));
    let var_5 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-840f + var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-765f, var_4.x)))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -417f)), -615f, _wgslsmith_f_op_f32(exp2(var_4.x))), !vec3<bool>(!(!global3.a), global0.a, func_6(-vec3<i32>(2147483647i, var_3.x, var_3.x), ~u_input.a).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_1, min(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(14685u, var_1.x, 4294967295u, 1u)), ~var_1)), vec4<u32>(17702u, reverseBits(var_1.x), var_1.x, ~(~var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-165f)) - 324f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(193f))), var_0.x), _wgslsmith_sub_i32(-var_3.x << (13860u % 32u), select(-firstLeadingBit(u_input.b.x), ~0i, any(select(vec4<bool>(var_5.a, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(var_5.a, false, true, global3.a))))));
}

