struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: array<f32, 16>;

var<private> global2: array<u32, 1>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = !(!any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))));
    global2 = array<u32, 1>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a * _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -1921f), arg_2.a)) + arg_2.a)));
    var var_2 = Struct_1(arg_2.a);
    let var_3 = var_2.a.x;
    return 442f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = Struct_1(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(11445u, 16u)])));
    let var_1 = !vec4<bool>(false, true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1465f)) - global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 1u)], 16u)]) > _wgslsmith_f_op_f32(func_3(select(vec4<u32>(global2[_wgslsmith_index_u32(60890u, 1u)], 0u, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.a.x), vec4<u32>(10985u, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.a.x), false), _wgslsmith_f_op_f32(exp2(arg_0)), var_0)));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 648f, _wgslsmith_f_op_f32(-arg_0), var_0.a.x));
    global0 = array<Struct_3, 5>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1941f);
}

fn func_2(arg_0: f32) -> vec2<f32> {
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.a.x, 1u)], 16u)], -u_input.b.x, _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x, 13240u, global2[_wgslsmith_index_u32(4294967295u, 1u)], 72022u), 572f, Struct_1(vec2<f32>(arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 16u)])))), 1i)), -1000f)));
    global1 = array<f32, 16>();
    let var_1 = select(firstTrailingBit(-1i << (~u_input.a.x % 32u)), 0i, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))));
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(-arg_0))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1412f, global1[_wgslsmith_index_u32(abs(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40720u, 1u)], 1u)])), 16u)]) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(-247f)))))));
    var var_1 = !arg_1;
    let var_2 = ~(~u_input.b);
    var var_3 = vec4<bool>(u_input.b.x >= _wgslsmith_sub_i32(~(~2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, u_input.b.x, -32665i, u_input.b.x), vec4<i32>(-65155i, var_2.x, var_2.x, -24871i))), any(!(!(!vec2<bool>(arg_1, arg_1)))), ((global2[_wgslsmith_index_u32(17305u, 1u)] > u_input.a.x) == arg_1) != arg_1, arg_1);
    let var_4 = var_2;
    return Struct_3(select(select(vec4<bool>(false, false, true, any(var_3.zww)), !(!vec4<bool>(arg_1, var_3.x, var_3.x, false)), !var_3.x | (57874u <= u_input.a.x)), !select(vec4<bool>(false, arg_1, var_3.x, var_3.x), vec4<bool>(true, true, true, true), vec4<bool>(var_3.x, true, arg_1, false)), vec4<bool>(arg_1, !arg_1, all(vec4<bool>(false, var_3.x, arg_1, false)) | !arg_1, true)), min(_wgslsmith_mod_vec2_i32(vec2<i32>(~28544i, _wgslsmith_mult_i32(u_input.b.x, -22891i)), -vec2<i32>(var_2.x, var_4.x)), max(_wgslsmith_div_vec2_i32(u_input.b, var_4), vec2<i32>(-118054i, var_4.x)) ^ vec2<i32>(-113709i, var_4.x)), firstLeadingBit(vec3<i32>(var_4.x, -1i, -1i >> ((arg_0.x | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 1u)], 1u)]) % 32u))), firstLeadingBit(min(firstLeadingBit(u_input.b.x), var_2.x)) | var_4.x, _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(5094u, 1u)]), vec4<u32>(u_input.a.x, 1u, 26436u, 1u))), vec4<u32>(~(~27884u), 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16337u, 1u)], 1u)], arg_0.x & arg_0.x)));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    let var_0 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, arg_0.d, 47588i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, arg_0.b.x, -2147483647i)) | reverseBits(vec4<i32>(26824i, 2147483647i, 1i, -52481i)), vec4<i32>(i32(-1i) * -13603i, u_input.b.x, 1i, arg_0.c.x))) ^ vec4<i32>(_wgslsmith_add_i32(2147483647i, -13950i), arg_0.d, 1i, -u_input.b.x >> (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(12430u, global2[_wgslsmith_index_u32(u_input.a.x, 1u)])), 1u)] % 32u));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(536f, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<f32>(428f, global1[_wgslsmith_index_u32(18104u, 16u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 399f)))));
    var var_2 = var_1.a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 16u)]), 219f);
    global0 = array<Struct_3, 5>();
    return Struct_2(var_1.a);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = func_1(~(~(~(~u_input.a))), false).a.x;
    var var_1 = 1u;
    var var_2 = global0[_wgslsmith_index_u32(abs(arg_3.e), 5u)];
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 5916i;
    var var_1 = Struct_2(func_6(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1518f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(819f, global1[_wgslsmith_index_u32(21205u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]))))), func_5(func_1(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), true), 30544u), Struct_3(vec4<bool>(all(vec4<bool>(false, true, false, false)), any(vec3<bool>(false, true, true)), true, true), (u_input.b >> (vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 40013u) % vec2<u32>(32u))) << (firstTrailingBit(u_input.a) % vec2<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(0i, var_0, u_input.b.x), _wgslsmith_sub_i32(var_0, -u_input.b.x), countOneBits(~global2[_wgslsmith_index_u32(62883u, 1u)]))));
    global0 = array<Struct_3, 5>();
    var var_2 = 12233i;
    let var_3 = func_5(Struct_3(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec2<i32>(-1i) * -min(vec2<i32>(-23510i, var_0), u_input.b), ~(~vec3<i32>(u_input.b.x, u_input.b.x, var_0) & vec3<i32>(var_0, -46513i, var_0)), func_1(firstLeadingBit(u_input.a), any(vec3<bool>(true, true, true))).b.x, 18665u << (_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4437u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), u_input.a) % 32u)), 1u).a;
    var var_4 = true;
    let var_5 = global2[_wgslsmith_index_u32(~((_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58487u, 1u)], 1u)], 65609u, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<u32>(48141u, 36168u, u_input.a.x) & vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], 1u)])) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 2411u, u_input.a.x, 1u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30093u, 1u)], 1u)], 0u, global2[_wgslsmith_index_u32(4294967295u, 1u)], u_input.a.x)) | _wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(u_input.a.x, 1u)])) % 32u)) >> (63477u % 32u)), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1433f, 1446f, -971f))), vec3<f32>(-656f, var_1.a.a.x, 706f))), vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a.x * 822f), _wgslsmith_f_op_f32(-var_1.a.a.x), 666f), _wgslsmith_f_op_f32(var_1.a.a.x - -207f) < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 16u)])))), ~(~1u), _wgslsmith_clamp_u32(~(_wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(89732u, 1u)], 1u)], 1u)]) ^ abs(global2[_wgslsmith_index_u32(0u, 1u)])), reverseBits(0u), 1u));
}

