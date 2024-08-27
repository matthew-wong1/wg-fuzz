struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 4>;

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = 0i;
    let var_1 = Struct_1(!(!global1.b.a), global1.d, global1.b.c);
    global3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 366f, global3.x, global3.x) + vec4<f32>(1172f, global3.x, global3.x, -2006f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(380f, global3.x, -1827f, -1239f))), vec4<f32>(global3.x, 1000f, global3.x, global3.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1225f, global3.x, global3.x, 1412f) + vec4<f32>(global3.x, 417f, 297f, global3.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1000f, -1018f, 1790f))))));
    global2 = array<Struct_1, 4>();
    return any(select(vec2<bool>(var_1.a.x & true, true || any(vec4<bool>(false, var_1.b, false, false))), select(vec2<bool>(!global1.c.x, all(vec3<bool>(false, var_1.a.x, global1.c.x))), select(global1.b.a.ww, select(vec2<bool>(global1.d, var_1.b), global1.c.xy, var_1.a.x), select(var_1.a.xw, var_1.a.zy, global1.c.zy)), var_1.b), global3.x == _wgslsmith_f_op_f32(-global3.x)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(global3.yz * _wgslsmith_f_op_vec2_f32(-global3.xx));
    var var_1 = Struct_1(!select(select(select(vec4<bool>(arg_3, arg_1.x, global1.d, true), vec4<bool>(arg_3, false, false, arg_1.x), vec4<bool>(arg_1.x, false, false, false)), !vec4<bool>(arg_1.x, false, global1.c.x, true), vec4<bool>(false, arg_1.x, arg_3, arg_1.x)), vec4<bool>(func_3(), arg_3 != global1.b.a.x, false, true), !(!arg_1.x)), global1.c.x, vec3<u32>(global1.a.x >> (((19209u << (0u % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.a, global1.a.x), vec4<u32>(54107u, global1.b.c.x, global1.a.x, global1.a.x))) % 32u), select(reverseBits(firstTrailingBit(4294967295u)), u_input.c ^ abs(1u), true || all(vec2<bool>(arg_3, global1.b.b))), 42599u));
    var var_2 = ~vec4<u32>(_wgslsmith_mult_u32(~(~0u), u_input.c), max(~1u, 1u), firstTrailingBit(global1.b.c.x), u_input.a);
    var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + 326f))));
    var var_3 = !select(func_3(), false != arg_3, !(any(global1.b.a) & (var_1.a.x | arg_1.x)));
    return global1.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec4<f32> {
    global0 = array<i32, 14>();
    global3 = vec4<f32>(arg_3.x, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-arg_3.x));
    var var_0 = func_2(19405i, !arg_0.ww, -900f, all(!(!global1.b.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), arg_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) + -1784f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x - arg_3.x)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - arg_3.x)), 1521f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x))))));
    return vec4<f32>(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x)))))), 1137f, _wgslsmith_f_op_f32(min(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(sign(global3.x))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -627f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(806f * _wgslsmith_f_op_f32(f32(-1f) * -1545f)) + global3.x), _wgslsmith_f_op_f32(trunc(-405f)), -141f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(857f, 332f, 230f, global3.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1456f, 149f, global3.x, -601f), _wgslsmith_f_op_vec4_f32(func_1(global1.b.a, 1u, vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], -5901i, 1i), global3.yz)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1418f, global3.x, global3.x, 248f)), _wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, true, true, false), global1.b.c.x, vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<f32>(global3.x, global3.x))))), !select(global1.b.a, vec4<bool>(false, global1.c.x, true, global1.d), false)))));
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(global1.a.x, 14u)], -21666i, -44041i) ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], -2147483647i, 1i, global0[_wgslsmith_index_u32(11572u, 14u)]), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 0i, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 19840i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-12198i, 6210i, global0[_wgslsmith_index_u32(u_input.c, 14u)], 2147483647i) ^ vec4<i32>(1i, -1i, global0[_wgslsmith_index_u32(global1.b.c.x, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(global1.a.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], 4380i), vec4<i32>(global0[_wgslsmith_index_u32(54081u, 14u)], global0[_wgslsmith_index_u32(global1.a.x, 14u)], -1i, 24465i)))) & global0[_wgslsmith_index_u32(61530u, 14u)], global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(11528u, u_input.c) & vec2<u32>(4294967295u, u_input.b.x))), 14u)]);
    let var_1 = _wgslsmith_mult_vec4_u32(min(select(_wgslsmith_add_vec4_u32(min(vec4<u32>(global1.a.x, 1u, 36812u, global1.b.c.x), vec4<u32>(38314u, 1u, 4294967295u, 57576u)), vec4<u32>(4294967295u, 1u, 0u, 25717u) & vec4<u32>(1u, global1.b.c.x, global1.b.c.x, 1u)), firstTrailingBit(~vec4<u32>(45497u, 69168u, u_input.c, 4294967295u)), global1.b.a), vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.b.x, global1.a.x, u_input.a), vec4<u32>(u_input.c, global1.b.c.x, u_input.a, u_input.a)), u_input.c, 0u)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(1u, ~u_input.c, global1.b.c.x), u_input.a, 6879u));
    var var_2 = var_1.x;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, 457f, false)) + -183f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(554f, 1652f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(global3.x + 1011f))), _wgslsmith_f_op_vec4_f32(func_1(!vec4<bool>(global1.c.x, global1.d, global1.c.x, global1.d), ~var_1.x, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 14u)], -2147483647i, 0i), vec3<i32>(-24967i, -17646i, var_0)), firstTrailingBit(-1i), var_0), global3.wy))));
    let x = u_input.a;
    s_output = StorageBuffer(abs((vec4<i32>(-1i) * -vec4<i32>(var_0, var_0, 1i, global0[_wgslsmith_index_u32(4294967295u, 14u)])) | min(-vec4<i32>(global0[_wgslsmith_index_u32(0u, 14u)], 7088i, 1i, 0i), vec4<i32>(-2009i, global0[_wgslsmith_index_u32(var_1.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], 15578i))), vec3<i32>(~(-19942i), _wgslsmith_div_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x & u_input.a, 14u)]), global0[_wgslsmith_index_u32(global1.a.x | global1.a.x, 14u)] >> (~1u % 32u)) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(func_2(1i, global1.b.a.zz, -1784f, global1.b.b).c, vec3<u32>(1u, 17608u, u_input.a)), _wgslsmith_mult_vec3_u32(global1.b.c, var_1.xyz >> (var_1.wzy % vec3<u32>(32u))), var_1.wyy) % vec3<u32>(32u)));
}

