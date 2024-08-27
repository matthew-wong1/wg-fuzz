struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, false, false, true, true, false, false, false, false, false, true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_3 {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    return Struct_3(u_input.b.yx & firstLeadingBit(vec2<u32>(~arg_0, arg_3.c)), arg_3, arg_3.b.yww, 1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * arg_2.x) + _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, false))))));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = Struct_3(~(~(~vec2<u32>(4294967295u, u_input.a))), arg_0.b, !func_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_0.d, arg_0.d, arg_0.a.x), vec4<u32>(47369u, 24610u, u_input.d, 0u)), -u_input.e.yxz, vec4<f32>(324f, -1001f, _wgslsmith_f_op_f32(abs(433f)), _wgslsmith_f_op_f32(max(-1000f, 468f))), Struct_2(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], true, false)), vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), arg_0.b.c, -vec2<i32>(u_input.c, u_input.c))).c, 23283u, func_2(firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.d, 31529u, 7758u)), vec3<u32>(u_input.d, arg_0.a.x, 1u))), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(u_input.e.xxz, u_input.e.wzy) >> ((arg_0.d << (u_input.b.x % 32u)) % 32u), u_input.e.x), vec4<f32>(_wgslsmith_f_op_f32(sign(-273f)), arg_0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.a)), arg_0.e.a), func_2(u_input.a, vec3<i32>(min(-26022i, u_input.c), countOneBits(-55828i), u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.a, -786f, arg_0.e.a, 582f))), arg_0.b).b).e);
    var var_1 = arg_0.e;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-136f * _wgslsmith_div_f32(1896f, -310f))))));
    var var_2 = select(arg_0.b.b.wx, var_0.c.zy, all(vec4<bool>(all(select(var_0.b.b.zy, vec2<bool>(var_0.c.x, arg_0.b.b.x), arg_0.b.b.x)), 985f <= _wgslsmith_f_op_f32(exp2(var_0.e.a)), !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.b.x, 47406u), 14u)], -33686i <= u_input.c)));
    var_2 = !var_0.b.b.yw;
    return vec4<bool>(var_0.b.b.x, arg_0.c.x, !all(vec3<bool>(true, true, true)) & true, true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.a, _wgslsmith_div_f32(var_0.e.a, -975f), _wgslsmith_f_op_f32(arg_1.e.a - _wgslsmith_f_op_f32(arg_1.e.a + 147f)), -1724f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.a, _wgslsmith_f_op_f32(-var_0.e.a), _wgslsmith_f_op_f32(2342f - -2213f), _wgslsmith_f_op_f32(-arg_1.e.a))), vec4<bool>(func_3(Struct_3(vec2<u32>(arg_1.d, u_input.a), var_0.b, arg_0.b.xyx, 0u, Struct_1(-179f))).x, global0[_wgslsmith_index_u32(12272u, 14u)], true, any(vec3<bool>(false, true, false))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(592f)), arg_1.e.a, var_0.e.a, 930f))));
    var var_2 = arg_1.b.d.x;
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f) + -432f), _wgslsmith_f_op_f32(trunc(func_2(arg_1.b.c, vec3<i32>(arg_1.b.d.x, 39518i, u_input.e.x), vec4<f32>(-838f, 887f, -861f, -1103f), Struct_2(true, var_0.b.b, 4294967295u, arg_0.d)).e.a)), _wgslsmith_f_op_f32(arg_1.e.a + _wgslsmith_f_op_f32(-arg_1.e.a))))), vec4<f32>(1058f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1196f - _wgslsmith_f_op_f32(var_0.e.a * -286f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, var_0.e.a, false)), _wgslsmith_f_op_f32(step(-1146f, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a))), 376f)));
    let var_3 = var_1.x;
    return vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, arg_0.c | _wgslsmith_div_u32(u_input.a, arg_1.d), 11994u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(var_0.a), vec2<u32>(1u, 4294967295u)), ~29866u)), 14u)], true, var_0.b.a, (_wgslsmith_mult_i32(-arg_1.b.d.x, u_input.e.x) >= _wgslsmith_mod_i32(-40637i, firstLeadingBit(var_0.b.d.x))) || any(var_0.c));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = vec2<bool>(all(arg_0), func_3(func_2(_wgslsmith_mod_u32(4294967295u, u_input.a & 0u), u_input.e.wxw, vec4<f32>(1f, 1f, 1f, 1f), Struct_2(!global0[_wgslsmith_index_u32(u_input.a, 14u)], !arg_0, arg_1 << (arg_1 % 32u), vec2<i32>(-45180i, u_input.e.x)))).x);
    let var_1 = countOneBits(1u);
    var var_2 = func_2(u_input.d, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.e.x, 1i), min(13715i, u_input.c), func_2(0u, u_input.e.zxz, vec4<f32>(562f, 2008f, -316f, -1715f), Struct_2(arg_0.x, vec4<bool>(var_0.x, true, true, false), arg_1, vec2<i32>(-18868i, 2147483647i))).b.d.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.e.x) << (vec3<u32>(arg_1, 1u, 21689u) % vec3<u32>(32u)), max(vec3<i32>(11849i, u_input.e.x, 0i), u_input.e.zxy))), max(countOneBits(vec3<i32>(2816i, u_input.e.x, u_input.c)), ~(~vec3<i32>(u_input.e.x, 75086i, -2147483647i)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-823f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1168f))), _wgslsmith_f_op_f32(210f - -2236f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-522f, -163f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(770f, 908f, -377f, 1392f), vec4<f32>(362f, 565f, -286f, -401f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2518f, 611f, -1120f, -1000f) * vec4<f32>(-455f, -1101f, 680f, 1000f))))))), func_2(_wgslsmith_add_u32(var_1, firstLeadingBit(var_1)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -1i, _wgslsmith_add_i32(-1i, 1i)), vec3<i32>(-7002i, u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, -2147483647i), vec3<i32>(u_input.e.x, 29172i, 2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(471f, 1260f, 950f, -413f))), Struct_2(var_0.x, vec4<bool>(var_0.x, true, select(global0[_wgslsmith_index_u32(arg_1, 14u)], false, false), !var_0.x), arg_1 | 0u, u_input.e.xy & firstLeadingBit(u_input.e.wz))).b).e;
    var_0 = select(!vec2<bool>(false, !func_3(Struct_3(vec2<u32>(44894u, u_input.d), Struct_2(false, vec4<bool>(var_0.x, true, arg_0.x, var_0.x), u_input.b.x, vec2<i32>(u_input.e.x, u_input.c)), vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 14u)], false, true), arg_1, Struct_1(var_2.a))).x), !vec2<bool>(select(func_2(var_1, vec3<i32>(u_input.e.x, -11722i, u_input.c), vec4<f32>(-1068f, var_2.a, var_2.a, -1309f), Struct_2(var_0.x, vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], false, var_0.x, var_0.x), 0u, u_input.e.xw)).c.x, arg_0.x, global0[_wgslsmith_index_u32(37737u, 14u)] | false), true), select(func_4(func_2(7092u, -u_input.e.zww, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 850f, var_2.a, var_2.a)), func_2(var_1, u_input.e.xzz, vec4<f32>(709f, var_2.a, -289f, 1027f), Struct_2(arg_0.x, vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 14u)], true, global0[_wgslsmith_index_u32(1u, 14u)]), var_1, vec2<i32>(u_input.e.x, -4708i))).b).b, func_2(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.e.xwx, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a, var_2.a, -308f, -200f), vec4<f32>(var_2.a, 516f, 530f, var_2.a))), Struct_2(true, arg_0, 4294967295u, u_input.e.xw))).zy, arg_0.zz, select(!(!arg_0.zy), vec2<bool>(!arg_0.x, func_2(1u, vec3<i32>(u_input.e.x, 13991i, u_input.c), vec4<f32>(var_2.a, 429f, -779f, 621f), Struct_2(true, arg_0, 0u, u_input.e.xz)).c.x), vec2<bool>(true, var_0.x))));
    let var_3 = func_2(func_2(_wgslsmith_div_u32(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(0u, 0u))), (~vec3<i32>(2147483647i, 5641i, u_input.c) >> (countOneBits(vec3<u32>(2801u, var_1, 1u)) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_i32(select(u_input.e.wxx, u_input.e.xzz, vec3<bool>(global0[_wgslsmith_index_u32(var_1, 14u)], arg_0.x, arg_0.x)), u_input.e.xyz, vec3<i32>(u_input.e.x, u_input.e.x, u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 806f, var_2.a, var_2.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_2.a, 1116f) * vec4<f32>(var_2.a, 137f, var_2.a, var_2.a))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(172f, 1326f, var_2.a, var_2.a) - vec4<f32>(307f, var_2.a, var_2.a, var_2.a))))), Struct_2(true, !vec4<bool>(false, arg_0.x, arg_0.x, false), ~(~u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.e.x), u_input.e.yy))).a.x, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.e.x | -1i, select(-12118i, 14397i, false)), ~(~11216i), firstTrailingBit(_wgslsmith_mult_i32(u_input.c, u_input.c))), vec3<i32>(17228i, reverseBits(u_input.e.x) | _wgslsmith_add_i32(-22427i, 2147483647i), ~(~u_input.c))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, var_2.a, var_2.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, 111f, var_2.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(535f, var_2.a, var_2.a, 953f), vec4<f32>(-1266f, var_2.a, -416f, var_2.a)))), 0i >= _wgslsmith_mod_i32(3237i, u_input.e.x))))), func_2(abs(0u), ~(~vec3<i32>(-1i, 2147483647i, u_input.e.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, -706f, var_2.a, var_2.a)))), func_2(~_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, var_1), -vec3<i32>(2147483647i, 0i, u_input.e.x), vec4<f32>(_wgslsmith_f_op_f32(-955f * 1999f), 1391f, var_2.a, _wgslsmith_f_op_f32(var_2.a + var_2.a)), Struct_2(func_3(Struct_3(u_input.b.xz, Struct_2(arg_0.x, arg_0, 19619u, vec2<i32>(u_input.e.x, u_input.c)), vec3<bool>(false, false, false), u_input.d, Struct_1(var_2.a))).x, vec4<bool>(true, true, var_0.x, true), var_1 & u_input.b.x, _wgslsmith_mod_vec2_i32(u_input.e.xy, vec2<i32>(u_input.e.x, u_input.e.x)))).b).b).b;
    return Struct_1(_wgslsmith_f_op_f32(sign(var_2.a)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = func_5(func_4(Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -42046i), vec2<i32>(arg_1, 14737i)) == 0i, func_3(func_2(u_input.d, arg_2, vec4<f32>(arg_0.x, -1209f, -457f, 1194f), Struct_2(false, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 14u)], false, false, true), 1u, u_input.e.ww))), abs(u_input.a >> (4294967295u % 32u)), select(select(u_input.e.yy, arg_2.xz, true), vec2<i32>(1i, u_input.c), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(71099u, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)]), vec2<bool>(false, false)))), Struct_3(~(~vec2<u32>(0u, 29058u)), Struct_2(func_2(u_input.b.x, arg_2, vec4<f32>(-251f, arg_0.x, arg_0.x, -575f), Struct_2(false, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false, false), 0u, vec2<i32>(arg_1, arg_1))).b.b.x, !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(47787u, 14u)], global0[_wgslsmith_index_u32(53u, 14u)]), u_input.a << (u_input.a % 32u), vec2<i32>(u_input.e.x, -29048i)), !func_2(38576u, vec3<i32>(u_input.c, arg_2.x, 50302i), vec4<f32>(arg_0.x, 893f, arg_0.x, -208f), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 14u)], vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], true, global0[_wgslsmith_index_u32(u_input.d, 14u)]), 4294967295u, u_input.e.xz)).c, ~abs(5336u), func_2(38669u, vec3<i32>(arg_1, arg_1, -1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1626f, -421f, arg_0.x) - vec4<f32>(1489f, -1001f, arg_0.x, arg_0.x)), func_2(u_input.a, u_input.e.xyx, vec4<f32>(arg_0.x, -1260f, arg_0.x, arg_0.x), Struct_2(true, vec4<bool>(true, false, global0[_wgslsmith_index_u32(4275u, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)]), 24588u, vec2<i32>(-1i, u_input.e.x))).b).e)), ~u_input.a);
    var var_1 = func_2(90016u, u_input.e.wzz, vec4<f32>(1167f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(420f)))), func_5(!(!vec4<bool>(global0[_wgslsmith_index_u32(34122u, 14u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(1u, 14u)])), countOneBits(u_input.a)).a, arg_0.x), Struct_2(abs(-arg_1) != (min(arg_2.x, arg_2.x) << (reverseBits(u_input.b.x) % 32u)), func_4(func_2(u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, u_input.e.x, 33508i), u_input.e.ywx), vec4<f32>(-2320f, 430f, -256f, var_0.a), Struct_2(false, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 14u)], true, true), u_input.b.x, vec2<i32>(arg_2.x, u_input.e.x))).b, func_2(u_input.a << (u_input.b.x % 32u), ~vec3<i32>(arg_2.x, arg_1, 2434i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-974f, 1230f, 1619f, var_0.a))), Struct_2(false, vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], true), 24871u, arg_2.yy))), 1u, u_input.e.zx)).b;
    let var_2 = func_2(28022u, firstTrailingBit(abs(arg_2 << (~u_input.b % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1465f, 111f, 868f, var_0.a)))))), Struct_2(global0[_wgslsmith_index_u32(~14957u, 14u)], vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d, abs(u_input.d)), 14u)], func_2(var_1.c ^ u_input.b.x, firstLeadingBit(vec3<i32>(var_1.d.x, u_input.c, -45576i)), vec4<f32>(-934f, var_0.a, arg_0.x, arg_0.x), func_2(var_1.c, u_input.e.zzz, vec4<f32>(2713f, -362f, var_0.a, arg_0.x), Struct_2(var_1.a, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], true, var_1.a, false), 8188u, vec2<i32>(-2147483647i, arg_2.x))).b).b.b.x, !(var_1.a & false), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.b.x), vec3<u32>(var_1.c, var_1.c, var_1.c)), 14u)]), max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 29979u), u_input.b.xz), _wgslsmith_mod_u32(12615u, ~0u)), var_1.d)).b;
    global0 = array<bool, 14>();
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.x, 605f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_div_vec2_f32(arg_0, vec2<f32>(1797f, arg_0.x)), !var_2.b.yx))));
    return func_2(~abs(0u), arg_2, vec4<f32>(-481f, _wgslsmith_f_op_f32(min(var_3.x, -1657f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-665f)) + arg_0.x)), 1088f), var_2).b;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-587f * 425f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(960f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f - arg_0.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a, arg_0.a))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a, -1042f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2395f), arg_0.a)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-407f, 1354f, 1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(677f, 524f, 450f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.a, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1549f, var_0.x, var_0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1022f, arg_0.a) + vec3<f32>(arg_0.a, arg_0.a, var_0.x))))));
    var var_2 = select(3153u, ~82615u, arg_2.a);
    let var_3 = func_2(~arg_2.c >> (0u % 32u), vec3<i32>(max(_wgslsmith_sub_i32(13324i, u_input.c) >> (1u % 32u), 1i | arg_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 581i, 1i, arg_1.x), ~vec4<i32>(arg_2.d.x, 2147483647i, arg_2.d.x, arg_2.d.x)) & 1i, -36924i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2323f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.a, var_0.x, var_0.x)))), global0[_wgslsmith_index_u32(~arg_2.c, 14u)] != true))), arg_2).b;
    let var_4 = _wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(select(-u_input.e, _wgslsmith_mult_vec4_i32(u_input.e, u_input.e), true), firstLeadingBit(_wgslsmith_sub_vec4_i32(u_input.e, u_input.e))), u_input.e);
    return u_input.d;
}

fn func_7(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_3 {
    global0 = array<bool, 14>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-115f + func_5(vec4<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 14u)])), !global0[_wgslsmith_index_u32(arg_3, 14u)], !global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)] && false), 54017u).a), 135f));
    global0 = array<bool, 14>();
    var var_1 = 1623f;
    let var_2 = arg_0.x;
    return func_2(arg_0.x, vec3<i32>(~reverseBits(-1400i), 51084i, _wgslsmith_div_i32(~(-2147483647i), ~(34382i ^ u_input.c))), vec4<f32>(var_0, var_0, 915f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-299f)) * func_5(func_4(Struct_2(global0[_wgslsmith_index_u32(arg_3, 14u)], vec4<bool>(global0[_wgslsmith_index_u32(var_2, 14u)], global0[_wgslsmith_index_u32(arg_3, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)], false), arg_0.x, u_input.e.wx), Struct_3(vec2<u32>(arg_0.x, 1u), Struct_2(true, vec4<bool>(global0[_wgslsmith_index_u32(var_2, 14u)], false, false, global0[_wgslsmith_index_u32(1u, 14u)]), 42496u, u_input.e.xy), vec3<bool>(global0[_wgslsmith_index_u32(var_2, 14u)], true, false), var_2, Struct_1(var_0))), arg_3).a)), func_1(vec2<f32>(_wgslsmith_f_op_f32(-327f + _wgslsmith_div_f32(1152f, 404f)), 303f), ~(-u_input.c), u_input.e.zwz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_7(~vec3<u32>(_wgslsmith_clamp_u32(34951u << (u_input.a % 32u), 19813u, _wgslsmith_add_u32(1u, u_input.b.x)), ~1u, func_6(Struct_1(-671f), u_input.e.xw, func_1(vec2<f32>(486f, -801f), 0i, u_input.e.yyw))), func_2((abs(u_input.a) << (_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(1u, u_input.d)) % 32u)) & min(u_input.a, func_2(u_input.d, vec3<i32>(u_input.e.x, -97247i, -2147483647i), vec4<f32>(1000f, 1000f, -159f, 762f), Struct_2(false, vec4<bool>(false, false, false, var_0), u_input.b.x, u_input.e.zx)).d), select(u_input.e.yyy, -_wgslsmith_add_vec3_i32(u_input.e.wzz, u_input.e.zwz), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-405f, -1056f, -668f, 1000f))), Struct_2(!var_0, vec4<bool>(u_input.e.x >= u_input.c, global0[_wgslsmith_index_u32(0u ^ u_input.b.x, 14u)], !var_0, false), 1u, select(-u_input.e.wx, _wgslsmith_clamp_vec2_i32(vec2<i32>(31012i, -1i), u_input.e.zw, u_input.e.yz), vec2<bool>(true, true)))).e.a, u_input.c, 77047u);
    var var_2 = !func_7(u_input.b, var_1.e.a, -44896i, 0u).b.b;
    let var_3 = u_input.e.x;
    var_2 = vec4<bool>(func_3(func_2(~select(4294967295u, 4294967295u, var_1.c.x), ~(~vec3<i32>(1i, 95121i, 0i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1740f, var_1.e.a, var_1.e.a, var_1.e.a)), Struct_2(true, !vec4<bool>(true, var_0, global0[_wgslsmith_index_u32(var_1.a.x, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), abs(u_input.a), select(var_1.b.d, vec2<i32>(u_input.c, var_3), var_0)))).x, true, false, !func_3(func_2(var_1.b.c, -vec3<i32>(-6848i, 0i, 1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-427f, 669f, -163f, var_1.e.a), vec4<f32>(552f, -475f, var_1.e.a, var_1.e.a), vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 14u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false))), Struct_2(false, vec4<bool>(true, var_1.b.b.x, true, true), 0u, u_input.e.zz))).x);
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, var_1.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f + -580f)))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(158421u, 4294967295u, 12286u, u_input.d), ~vec4<u32>(1u, 1u, 42088u, 9045u))), reverseBits(~_wgslsmith_mult_u32(u_input.b.x, select(1u, var_1.a.x, true))));
}

