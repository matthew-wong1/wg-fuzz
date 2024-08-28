struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = vec3<bool>(false, !any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))) || ((select(true, false, false) != true) && (any(vec4<bool>(true, false, false, false)) & all(vec3<bool>(true, false, false)))), true);
    var_0 = vec3<bool>(!(!(!var_0.x) != var_0.x), var_0.x, var_0.x);
    var_0 = !select(select(select(vec3<bool>(true, var_0.x, true), !vec3<bool>(false, var_0.x, true), var_0.x), vec3<bool>(!var_0.x, true, var_0.x), select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(var_0.x, var_0.x, var_0.x))), select(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, false, false), true), true), vec3<bool>(false, any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x)), !vec3<bool>(true, var_0.x & var_0.x, var_0.x & false));
    global0 = array<vec3<f32>, 24>();
    global0 = array<vec3<f32>, 24>();
    return abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1496i), vec2<i32>(_wgslsmith_clamp_i32(arg_1.b.x, 0i, -594i), arg_1.a))) & arg_1.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.xw);
    let var_1 = vec2<u32>(19467u, max(_wgslsmith_mod_u32(17935u, 4294967295u), _wgslsmith_sub_u32(u_input.a.x, 0u)));
    let var_2 = Struct_1(~arg_0.x & _wgslsmith_add_i32(max(_wgslsmith_dot_vec2_i32(arg_0.xy, arg_0.xx), _wgslsmith_mod_i32(32732i, arg_0.x)), func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1372f, -2634f, 191f, 195f))), Struct_1(arg_0.x, vec4<i32>(arg_0.x, 50992i, 27641i, arg_0.x), vec4<i32>(-34i, arg_0.x, -22502i, -1i)))), max(vec4<i32>(arg_0.x, min(-arg_1, arg_0.x), arg_0.x, ~reverseBits(2147483647i)), reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, -2147483647i, -48713i, 0i), vec4<i32>(-58539i, -12877i, arg_1, -2147483647i)))), vec4<i32>(arg_1, arg_1, ~(~(~arg_0.x)), 4913i));
    var var_3 = _wgslsmith_mult_u32(~(~var_1.x), var_1.x);
    let var_4 = ~4294967295u;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_4(arg_0: f32) -> i32 {
    let var_0 = Struct_1(max(-45864i, ~_wgslsmith_mod_i32(-30086i, 1i)), ~vec4<i32>(firstTrailingBit(-18777i), 0i | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 0i), vec3<i32>(34977i, 2147483647i, 24144i)), ~countOneBits(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 11316i), vec2<i32>(-16491i, 2344i)) | firstLeadingBit(-3539i)), vec4<i32>(-2147483647i, ~abs(1i), ~8538i, _wgslsmith_mult_i32(~(-13878i), 1i)));
    var var_1 = _wgslsmith_mod_vec2_i32(~(-var_0.c.zx ^ vec2<i32>(1i, _wgslsmith_div_i32(6721i, -34692i))), vec2<i32>(var_0.c.x, _wgslsmith_sub_i32(~max(2147483647i, var_0.c.x), 2147483647i)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(ceil(arg_0))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, 1641f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 740f) - vec2<f32>(-527f, -467f))))), Struct_1(var_1.x, -abs(vec4<i32>(var_1.x, 1i, var_0.c.x, 0i)), vec4<i32>(var_1.x, 0i, ~var_0.c.x << ((u_input.a.x & u_input.a.x) % 32u), -(~61513i))));
    var var_3 = !select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false);
    let var_4 = Struct_1(var_1.x, -vec4<i32>(_wgslsmith_div_i32(-2406i, var_0.c.x), _wgslsmith_add_i32(var_1.x, -2147483647i), -(var_0.a & var_1.x), firstLeadingBit(2147483647i << (u_input.a.x % 32u))), ~(-vec4<i32>(var_1.x, var_2.b.c.x, var_2.b.b.x, -9628i) << ((~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u) ^ ~u_input.a) % vec4<u32>(32u))));
    return var_0.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec3<i32>(0i, arg_0.x, arg_0.x), 1i))))))), ~min(-(~vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x)), abs(vec4<i32>(2147483647i, arg_0.x, -2700i, 1i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 939u, 19698u) % vec4<u32>(32u)))), reverseBits(vec4<i32>(2147483647i, 2147483647i, 2147483647i, arg_0.x)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -281f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1149f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1063f + 440f) + -962f))));
    let var_3 = -(~(select(var_0.c.x, -1i | var_0.a, false) & -(var_0.c.x << (u_input.a.x % 32u))));
    var var_4 = vec2<bool>(true, true);
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(7625u, 24u)]));
    var var_1 = var_0.zz;
    var_0 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + 215f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1858f) * _wgslsmith_f_op_f32(ceil(664f))))), -881f);
    var_0 = _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], vec3<f32>(-524f, 312f, 1017f)))))), all(select(vec2<bool>(true, true), vec2<bool>(true, select(true, true, false)), vec2<bool>(true, true)))));
    return func_1(abs(vec2<i32>(abs(arg_1.c.x), _wgslsmith_add_i32(arg_0.c.x, -1i))) & max(firstLeadingBit(vec2<i32>(-16899i, -794i)), -(~arg_0.c.yz)));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> i32 {
    global0 = array<vec3<f32>, 24>();
    global0 = array<vec3<f32>, 24>();
    global0 = array<vec3<f32>, 24>();
    global0 = array<vec3<f32>, 24>();
    let var_0 = Struct_1(func_1(-(~abs(arg_0.b.b.zx))).a, vec4<i32>(arg_0.b.b.x, func_1(-arg_0.b.c.zy).b.x, _wgslsmith_mod_i32(abs(1i), func_5(arg_0.b, arg_0.b).b.x), max(_wgslsmith_sub_i32(arg_0.b.a, arg_0.b.c.x), max(arg_0.b.c.x, -28964i))) ^ ~arg_0.b.c, _wgslsmith_mult_vec4_i32(firstTrailingBit(abs(vec4<i32>(arg_0.b.a, arg_0.b.b.x, -17710i, 2147483647i))) ^ select(vec4<i32>(-2147483647i, arg_0.b.c.x, 3390i, arg_0.b.c.x), vec4<i32>(arg_0.b.b.x, arg_0.b.a, arg_0.b.a, arg_0.b.a), true), func_1(vec2<i32>(_wgslsmith_mult_i32(1i, 18908i), ~2147483647i)).b));
    return ~arg_0.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(~firstTrailingBit(~60195i), -_wgslsmith_div_i32(-1i, i32(-1i) * -29697i), 12536i, _wgslsmith_div_i32(~(~(-1i)), _wgslsmith_clamp_i32(-34617i, i32(-1i) * -52309i, -12858i))), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_div_i32(5465i, -1i), 1i, min(32104i, -9741i), 65509i), false);
    var_0 = vec4<i32>(1i, 1i ^ var_0.x, firstTrailingBit(countOneBits(var_0.x)), func_6(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1915f, 305f), vec2<f32>(1153f, 1000f))), func_5(func_1(vec2<i32>(var_0.x, 2147483647i)), func_1(var_0.xx))), u_input.a.x >> (9749u % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-504f * -921f), 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = select(var_0.x, abs(var_0.x), select(any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), select(any(vec4<bool>(true, true, false, true)), true, true), any(vec2<bool>(true, all(vec2<bool>(true, false))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, -268f, 831f) * vec4<f32>(715f, var_2, 103f, var_2)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))), 984f, _wgslsmith_f_op_f32(var_2 * 1675f), -1791f));
    var_0 = _wgslsmith_mult_vec4_i32(max(-vec4<i32>(1i, var_0.x, -2147483647i, var_0.x), vec4<i32>(_wgslsmith_add_i32(var_0.x, -2147483647i), var_0.x, func_6(Struct_2(vec2<f32>(var_2, 1000f), Struct_1(-30581i, vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x), vec4<i32>(var_0.x, -2147483647i, 22226i, var_0.x))), u_input.a.x, var_3.x), var_0.x)) << (vec4<u32>(4319u ^ u_input.a.x, u_input.a.x, 24218u, reverseBits(abs(u_input.a.x))) % vec4<u32>(32u)), vec4<i32>(-1i) * -(~vec4<i32>(43987i, var_0.x, var_0.x, 0i) >> (_wgslsmith_mult_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u))));
    let var_4 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(1u, ~u_input.a.x), vec2<u32>(firstTrailingBit(firstTrailingBit(u_input.a.x)), _wgslsmith_dot_vec3_u32(reverseBits(u_input.a.wzy), u_input.a.wzw)));
}

