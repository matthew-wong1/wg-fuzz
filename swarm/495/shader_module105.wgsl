struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(vec2<f32>(-696f, -1255f), vec4<u32>(65172u, 0u, 28693u, 0u)), Struct_5(vec2<f32>(589f, 228f), vec4<u32>(0u, 4294967295u, 1u, 1103u)), Struct_5(vec2<f32>(279f, 410f), vec4<u32>(3816u, 4034u, 15038u, 0u)), Struct_5(vec2<f32>(-2111f, -1235f), vec4<u32>(4294967295u, 83121u, 0u, 4294967295u)));

var<private> global1: array<vec2<f32>, 12>;

var<private> global2: array<i32, 8>;

var<private> global3: array<bool, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 890f, 421f, arg_2.x) * vec4<f32>(1141f, -1600f, 491f, -300f)))), global1[_wgslsmith_index_u32(u_input.b, 12u)], vec3<i32>(-7551i, abs(reverseBits(global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), u_input.e.x)), _wgslsmith_f_op_vec2_f32(step(global1[_wgslsmith_index_u32(37045u, 12u)], vec2<f32>(-1000f, _wgslsmith_f_op_f32(arg_2.x - -750f)))));
    var var_1 = Struct_4(true || (any(!vec3<bool>(arg_3, true, global3[_wgslsmith_index_u32(4294967295u, 32u)])) | (false & arg_3)), var_0.a, u_input.a);
    let var_2 = vec4<i32>(-46784i, _wgslsmith_sub_i32(var_0.a.c.x, -36716i), firstTrailingBit(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(39214u, 8u)], var_1.b.c.x)), var_0.a.c.x);
    let var_3 = vec4<bool>(any(!select(select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.c.x, 32u)]), vec4<bool>(true, true, arg_3, global3[_wgslsmith_index_u32(var_1.c.x, 32u)])), vec4<bool>(global3[_wgslsmith_index_u32(0u, 32u)], false, arg_3, true), !arg_3)), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 12391i, var_0.a.c.x, -31497i), var_2)) == _wgslsmith_mult_i32(var_1.b.c.x, i32(-1i) * -5006i), true, any(select(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(7478u, 32u)], false)), vec3<bool>(!arg_3, true, true), vec3<bool>(!var_1.a, true, true))));
    var_0 = Struct_2(var_1.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(178f, -550f), arg_1.zx)), _wgslsmith_f_op_vec2_f32(-arg_2), !var_1.a || !global3[_wgslsmith_index_u32(52263u, 32u)])))));
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_5) -> u32 {
    let var_0 = Struct_1(vec4<f32>(arg_2.a.x, arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1222f), arg_2.a.x, func_3(-1363f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, 925f, 595f)), global1[_wgslsmith_index_u32(max(u_input.a.x, 59406u), 12u)], true))), arg_2.a.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(0u), 12u)]))))), (-vec3<i32>(-15201i, 0i, u_input.e.x) & (u_input.e >> (~u_input.c % vec3<u32>(32u)))) | u_input.e);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_2.a)), vec2<f32>(723f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 * 285f), _wgslsmith_f_op_f32(-arg_2.a.x)))), any(arg_0))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(1000f, _wgslsmith_f_op_f32(-1151f * 933f), 1220f, var_1.x), any(select(select(arg_0, vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(1u, 32u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 32u)], true, arg_0.x)), vec3<bool>(false, false, true), !global3[_wgslsmith_index_u32(48247u, 32u)])))));
    var var_3 = Struct_3(arg_0);
    var var_4 = abs(-(-855i << (select(arg_2.b.x, 3308u, false) % 32u))) | -_wgslsmith_div_i32(var_0.c.x, firstTrailingBit(_wgslsmith_mult_i32(1i, var_0.c.x)));
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f + -165f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f * arg_1.b.x))))));
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(u_input.d), 32u)];
    let var_2 = firstLeadingBit(vec3<i32>((firstLeadingBit(-1i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-2142i, arg_0))) << (~(~u_input.c.x) % 32u), arg_1.c.x, -(global2[_wgslsmith_index_u32(u_input.d, 8u)] << (37675u % 32u)) >> (~func_2(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 32u)], global3[_wgslsmith_index_u32(9881u, 32u)], true), -1000f, Struct_5(global1[_wgslsmith_index_u32(u_input.d, 12u)], vec4<u32>(41284u, 1747u, 1u, u_input.d))) % 32u)));
    var var_3 = Struct_4(true != select(!all(vec2<bool>(false, true)), true, true), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.wx)), max(-countOneBits(vec3<i32>(arg_1.c.x, -1i, global2[_wgslsmith_index_u32(4294967295u, 8u)])), select(vec3<i32>(var_2.x, -100160i, global2[_wgslsmith_index_u32(33204u, 8u)]), u_input.e, select(vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(u_input.c.x, 32u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 32u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec3<bool>(global3[_wgslsmith_index_u32(19915u, 32u)], global3[_wgslsmith_index_u32(u_input.c.x, 32u)], global3[_wgslsmith_index_u32(1u, 32u)]))))), reverseBits(u_input.a));
    global0 = array<Struct_5, 4>();
    return Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.b.b.x, arg_1.b.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -1000f) - arg_1.a.zy))), arg_2.xzx), vec2<f32>(-524f, _wgslsmith_f_op_f32(var_3.b.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, var_3.b.a.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(382f)) - _wgslsmith_f_op_f32(-arg_0.b.x))), 101f, arg_0.b.x, arg_0.a.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.x, 552f, -1674f, arg_0.b.x))) + _wgslsmith_f_op_vec4_f32(min(arg_0.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, arg_0.b.x, -801f, -2940f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.a.x, 523f, arg_0.b.x, -396f)))))));
    var var_1 = 0i << ((_wgslsmith_add_u32(_wgslsmith_div_u32(abs(13243u), u_input.d), u_input.d) & (u_input.b >> (u_input.c.x % 32u))) % 32u);
    let var_2 = Struct_3(select(!vec3<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(53450u, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)])), true, 0u > u_input.a.x), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 32u)] && true, true, any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(0u, 32u)]))), false));
    var var_3 = Struct_2(func_1(-_wgslsmith_mult_i32(countOneBits(-48495i), arg_0.a.c.x), func_1(min(arg_1, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.e.x)), arg_0.a, -select(vec4<i32>(arg_0.a.c.x, 1i, -617i, -20825i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 8u)], arg_1, -16516i, 1i), vec4<bool>(var_2.a.x, false, global3[_wgslsmith_index_u32(2632u, 32u)], var_2.a.x))).a, vec4<i32>(-u_input.e.x, 2147483647i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.b, 8u)], 45322i) << (~48358u % 32u), arg_0.a.c.x)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a.x, 20047u), 12u)]) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(732f, _wgslsmith_f_op_f32(284f * -2063f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 1183f), vec2<f32>(-720f, var_0.x), vec2<bool>(global3[_wgslsmith_index_u32(1u, 32u)], false)))))))));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(floor(-1046f)) <= var_0.x, arg_0.a, ~(u_input.c << (~reverseBits(vec3<u32>(u_input.a.x, 23574u, 4294967295u)) % vec3<u32>(32u))));
    return var_3.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_3 {
    global1 = array<vec2<f32>, 12>();
    var var_0 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec2_f32(-arg_2.xy), vec3<i32>(abs(-u_input.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(66959u, 8u)], 25647i, arg_0.a.c.x) | vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.e.x, u_input.e.x), -vec3<i32>(u_input.e.x, arg_0.a.c.x, 1i) >> (abs(u_input.a) % vec3<u32>(32u))), -24466i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(step(var_0.b.x, 1395f)), arg_1.a.x && arg_1.a.x)) * _wgslsmith_f_op_f32(ceil(arg_0.b.x))), arg_0.a.b.x, arg_0.b.x, _wgslsmith_f_op_f32(floor(867f))));
    var var_2 = true;
    var var_3 = true;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 4>();
    global1 = array<vec2<f32>, 12>();
    global2 = array<i32, 8>();
    var var_0 = func_5(Struct_2(func_4(func_1(1i & global2[_wgslsmith_index_u32(u_input.c.x, 8u)], Struct_1(vec4<f32>(707f, 765f, 674f, 749f), global1[_wgslsmith_index_u32(4294967295u, 12u)], u_input.e), vec4<i32>(-31348i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], -1i, 1i)), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.d, u_input.d), 8u)]), vec2<f32>(_wgslsmith_f_op_f32(round(func_4(Struct_2(Struct_1(vec4<f32>(-769f, -1000f, 426f, -159f), global1[_wgslsmith_index_u32(u_input.a.x, 12u)], vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.e.x, -1i)), vec2<f32>(607f, 678f)), 2147483647i).a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1389f)))), Struct_3(select(vec3<bool>(all(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(u_input.a.x, 8u)] != 2147483647i, all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 32u)], false, global3[_wgslsmith_index_u32(u_input.d, 32u)], global3[_wgslsmith_index_u32(67789u, 32u)]))), !vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)]), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1081f, -777f, 2168f, 615f), vec4<f32>(1544f, -1508f, -1450f, 766f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(583f, 217f, 854f, -153f))))), vec4<f32>(1280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-378f, 188f)) - _wgslsmith_f_op_f32(-1132f + 326f)), _wgslsmith_f_op_f32(floor(939f)), 1753f), !select(select(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(31886u, 32u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], false, false, global3[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 32u)], true, global3[_wgslsmith_index_u32(u_input.d, 32u)])), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], false, global3[_wgslsmith_index_u32(u_input.b, 32u)], true), all(vec2<bool>(false, global3[_wgslsmith_index_u32(113346u, 32u)]))))));
    global0 = array<Struct_5, 4>();
    let var_1 = select(func_5(Struct_2(func_4(func_1(54260i, Struct_1(vec4<f32>(-1201f, -584f, 1000f, -283f), global1[_wgslsmith_index_u32(15971u, 12u)], u_input.e), vec4<i32>(u_input.e.x, -2147483647i, u_input.e.x, 11303i)), countOneBits(u_input.e.x)), global1[_wgslsmith_index_u32(abs(u_input.c.x), 12u)]), func_5(Struct_2(func_1(-16432i, Struct_1(vec4<f32>(-414f, 1164f, 513f, -782f), vec2<f32>(-267f, -1513f), vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x)), vec4<i32>(global2[_wgslsmith_index_u32(u_input.d, 8u)], -4256i, global2[_wgslsmith_index_u32(19620u, 8u)], -1i)).a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1449f, -1184f), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))), Struct_3(var_0.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(283f, -762f, -402f, 138f) - vec4<f32>(1363f, -1522f, -1762f, 892f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 798f, -105f, 864f), vec4<f32>(-964f, -203f, -856f, 1324f)), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1941f, 798f), 898f, _wgslsmith_f_op_f32(round(248f)), 902f) - _wgslsmith_div_vec4_f32(vec4<f32>(105f, 339f, 103f, -920f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-761f, -125f, -1000f, -833f), vec4<f32>(-110f, -1262f, 763f, -599f)))))).a.yx, select(vec2<bool>(var_0.a.x, func_5(func_1(global2[_wgslsmith_index_u32(0u, 8u)], Struct_1(vec4<f32>(101f, 1025f, 134f, -488f), global1[_wgslsmith_index_u32(u_input.d, 12u)], u_input.e), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 8u)], -61614i, u_input.e.x, 0i)), Struct_3(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(311f, -1735f, -257f, 758f) * vec4<f32>(1447f, -1810f, -1259f, -1230f))).a.x), var_0.a.zy, select(vec2<bool>(true, true), !vec2<bool>(var_0.a.x, true), true && func_3(155f, vec3<f32>(690f, 448f, -874f), global1[_wgslsmith_index_u32(u_input.c.x, 12u)], var_0.a.x))), !(true | any(!vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.c.x, 32u)]))));
    global2 = array<i32, 8>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(456f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -771f), _wgslsmith_f_op_f32(sign(-1596f))) * _wgslsmith_f_op_f32(select(-525f, -1771f, !var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

