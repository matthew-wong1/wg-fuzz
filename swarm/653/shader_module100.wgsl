struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, false, false, false, false, false, true, false, true, false, true, false, true, false, false, false, false, true, false, false, false, false, true, true);

var<private> global1: Struct_2 = Struct_2(Struct_1(0i, false), vec4<bool>(false, true, false, false), true);

var<private> global2: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<bool, 26>();
    global2 = ~(-44323i);
    global0 = array<bool, 26>();
    var var_0 = Struct_3(global1.b.x, global1.a);
    global1 = Struct_2(global1.a, select(!global1.b, !arg_0.b, select(arg_0.b, select(select(arg_0.b, arg_0.b, vec4<bool>(true, false, false, false)), !arg_0.b, vec4<bool>(arg_0.b.x, false, global1.b.x, arg_0.c)), vec4<bool>(all(arg_0.b.wyx), true, any(vec4<bool>(true, global1.c, false, global0[_wgslsmith_index_u32(u_input.b, 26u)])), true))), true);
    return !(!arg_0.b.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec2<i32>) -> bool {
    let var_0 = select(global1.b.zz, global1.b.xw, all(global1.b.xx));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -875f));
    return global0[_wgslsmith_index_u32(~12808u, 26u)];
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<bool>(!(all(vec2<bool>(false, false)) == global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.a.x, 1u, u_input.e.x), u_input.c), 26u)]), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(2213f, _wgslsmith_f_op_f32(1408f * -1000f)), vec2<f32>(-1350f, _wgslsmith_f_op_f32(f32(-1f) * -675f))), _wgslsmith_mult_vec4_i32(select(~vec4<i32>(-13618i, 1i, global1.a.a, global1.a.a), -vec4<i32>(2147483647i, global1.a.a, 14939i, -1i), global1.b), select(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a.a, 85092i, -1i, global1.a.a), vec4<i32>(global1.a.a, 2104i, 2147483647i, global1.a.a)), vec4<i32>(2147483647i, global1.a.a, global1.a.a, global1.a.a), func_3(Struct_2(Struct_1(-2147483647i, global1.c), global1.b, global0[_wgslsmith_index_u32(u_input.e.x, 26u)])))), -countOneBits(-vec2<i32>(global1.a.a, 2147483647i))), global1.b.x, false);
    let var_1 = Struct_2(global1.a, !vec4<bool>(false, global1.a.b, var_0.x, var_0.x), true);
    let var_2 = global1.a;
    global0 = array<bool, 26>();
    var var_3 = firstLeadingBit(vec4<i32>((2147483647i >> (u_input.b % 32u)) & (var_1.a.a ^ var_2.a), var_2.a, -2844i, 56969i)) ^ vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(33086i, 0i, global1.a.a)), ~vec3<i32>(1i, global1.a.a, 49468i)), var_2.a << (reverseBits(1u) % 32u)), global1.a.a, firstTrailingBit(~(-1i)), firstTrailingBit(-max(42436i, 24607i)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) >= 316f, global1.a);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(global1.a, select(select(global1.b, !global1.b, vec4<bool>(true, !global1.b.x, false & arg_0.b.b, global0[_wgslsmith_index_u32(1u, 26u)])), vec4<bool>(all(!global1.b.xzw), true, global1.a.b, !func_2().a), !(!(!global1.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2626f - 2299f))))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-260f, 1464f), -1000f, !arg_0.a)))));
    let var_1 = var_0;
    let var_2 = max(_wgslsmith_dot_vec3_i32(~max(vec3<i32>(20931i, -49477i, -41804i), vec3<i32>(arg_0.b.a, 1i, -13450i)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.a, var_0.a.a, var_0.a.a) ^ vec3<i32>(global1.a.a, -1i, -16467i), ~vec3<i32>(arg_0.b.a, -14112i, -1i)), ~((vec3<i32>(var_0.a.a, global1.a.a, global1.a.a) ^ vec3<i32>(global1.a.a, -1i, global1.a.a)) & reverseBits(vec3<i32>(5370i, 2147483647i, 2147483647i)))), -(var_1.a.a >> (u_input.d % 32u)));
    let var_3 = _wgslsmith_mod_u32(u_input.c.x, u_input.a.x);
    global2 = ~max(1i, firstLeadingBit(1i));
    return func_2();
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-358f, -538f, 258f), vec3<f32>(-1080f, -425f, -699f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(666f, 316f, -1000f), vec3<f32>(313f, 1298f, -715f), false)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-383f, 866f, -312f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1636f, -1423f, -2462f), vec3<f32>(-1000f, -281f, -223f), global0[_wgslsmith_index_u32(35257u, 26u)]))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(277f, -1804f, -2026f) + vec3<f32>(970f, -1069f, 496f))), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 26u)], u_input.e.x >= u_input.c.x))) - vec3<f32>(1f, 1f, 1f)));
    let var_1 = func_5(Struct_3(global0[_wgslsmith_index_u32(37108u << (firstLeadingBit(~45294u) % 32u), 26u)], arg_0.b)).b;
    let var_2 = var_1.a;
    let var_3 = ~vec4<u32>(~(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, u_input.b))), ~u_input.d, firstTrailingBit(1u) >> (~max(4294967295u, 0u) % 32u), 91019u);
    global1 = Struct_2(func_2().b, select(vec4<bool>(!(var_1.b && arg_0.b.b), func_3(Struct_2(Struct_1(global1.a.a, true), global1.b, global1.a.b)), global0[_wgslsmith_index_u32(reverseBits(~45709u), 26u)], true), vec4<bool>(func_4(_wgslsmith_f_op_vec2_f32(abs(var_0.zx)), vec4<i32>(-23014i, -1i, 1i, arg_0.b.a) >> (vec4<u32>(53324u, 4294967295u, 1u, var_3.x) % vec4<u32>(32u)), -vec2<i32>(42967i, global1.a.a)), arg_0.b.b, reverseBits(4294967295u) < _wgslsmith_add_u32(u_input.d, var_3.x), arg_0.a), true), global1.a.b);
    return Struct_2(func_5(Struct_3(func_4(_wgslsmith_div_vec2_f32(var_0.xx, vec2<f32>(var_0.x, -404f)), ~vec4<i32>(var_2, global1.a.a, global1.a.a, global1.a.a), -vec2<i32>(global1.a.a, -29685i)), Struct_1(var_2, true))).b, !vec4<bool>(!arg_0.a, any(select(vec3<bool>(var_1.b, global1.b.x, true), global1.b.wyz, global1.b.yyw)), true, var_1.b), all(global1.b.wzy));
}

fn func_1() -> Struct_3 {
    global0 = array<bool, 26>();
    let var_0 = global1.a.a;
    let var_1 = func_6(func_5(func_2()));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1352f, _wgslsmith_f_op_f32(f32(-1f) * -2139f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1356f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1269f, -1000f, 440f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1035f, 818f, -371f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2300f, -1761f, -371f)), vec3<bool>(false, var_1.a.b, false))))))));
    let var_3 = func_6(func_2());
    return func_5(Struct_3(global0[_wgslsmith_index_u32(24995u, 26u)], var_3.a));
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    global2 = global1.a.a;
    global2 = firstTrailingBit(firstLeadingBit(global1.a.a)) ^ ((i32(-1i) * -(~arg_2.a.a)) | max(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.b.a, global1.a.a), vec3<i32>(58438i, -26237i, 15481i)), func_5(func_5(Struct_3(false, arg_3.a))).b.a));
    var var_0 = vec2<i32>(-1i, _wgslsmith_mod_i32(-30574i, func_2().b.a));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(770f, 346f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(151f, -1068f, global1.a.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(820f * 1000f) + _wgslsmith_f_op_f32(min(-568f, 588f))))), _wgslsmith_f_op_f32(684f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(682f - 145f)))), -1115f));
    let var_1 = ~vec2<i32>(-2147483647i, -global1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_7(func_1(), 1i, func_6(Struct_3(global1.c, func_5(Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], global1.a)).b)), Struct_2(global1.a, vec4<bool>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(34196u, 26u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(2613u, u_input.d), 26u)], any(global1.b.zyz)), true & all(global1.b)))), _wgslsmith_add_i32(select(58777i, 22263i, !func_1().b.b), select(_wgslsmith_mod_i32(-23320i, 26482i), 1i, func_6(func_2()).b.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 622f), vec2<f32>(-613f, 1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-1307f)), _wgslsmith_f_op_f32(max(-176f, -203f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1047f, _wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(max(var_0, -307f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.c.x, 1u), u_input.c), 26u)])))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, -1750f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1634f, -882f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1470f, var_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1627f, var_0)))))));
}

