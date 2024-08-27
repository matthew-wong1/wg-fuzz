struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(-239f, 503f)), _wgslsmith_f_op_f32(floor(896f)));
    let var_1 = _wgslsmith_div_u32(~(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x)), ~0u);
    let var_2 = !(_wgslsmith_f_op_f32(-1f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(167f - var_0.x), _wgslsmith_f_op_f32(-794f - 1047f)))));
    let var_3 = Struct_1(993f, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-6476i, -1i, u_input.a.x, u_input.a.x)), firstLeadingBit(min(vec4<i32>(u_input.a.x, arg_1, arg_1, 14723i), vec4<i32>(41439i, arg_1, arg_1, arg_1)))), vec4<i32>(86221i, u_input.a.x, u_input.a.x << (4294967295u % 32u), 4730i) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, arg_1, 14344i, u_input.a.x), vec4<i32>(arg_1, u_input.a.x, -11793i, arg_1)), select(reverseBits(vec4<i32>(13161i, 11350i, -16265i, u_input.a.x) << (vec4<u32>(arg_0, arg_0, 29472u, 1u) % vec4<u32>(32u))), vec4<i32>(arg_1 >> (var_1 % 32u), arg_1 & 55462i, u_input.a.x | arg_1, arg_1), select(!vec4<bool>(false, var_2, var_2, var_2), select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(true, false, var_2, var_2)), vec4<bool>(var_2, var_2, var_2, true)))), vec2<bool>(true, false), _wgslsmith_add_u32(2285u, arg_0), 66209i);
    global0 = array<Struct_4, 15>();
    return countOneBits(select(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, u_input.c.x, u_input.b.x, 3994u), vec4<u32>(26629u, 1u, 71958u, 0u)), ~_wgslsmith_add_u32(firstTrailingBit(46889u), abs(23508u)), all(!(!var_3.c))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = 141f;
    var_0 = -345f;
    let var_1 = arg_0.e;
    global0 = array<Struct_4, 15>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, (vec2<u32>(arg_0.d, u_input.b.x) & vec2<u32>(18720u, 0u)) >> (~vec2<u32>(arg_0.d, 1u) % vec2<u32>(32u))), reverseBits(4294967295u & func_3(arg_0.d, -55857i))), _wgslsmith_clamp_vec2_u32(~(vec2<u32>(1u, arg_0.d) | u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 1u), max(u_input.b, vec2<u32>(1u, arg_0.d))), vec2<u32>(~arg_0.d, 39454u & arg_0.d)) & _wgslsmith_mult_vec2_u32(u_input.c, u_input.c)), 15u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(min(185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))))), -714f);
}

fn func_4(arg_0: vec4<f32>) -> vec2<u32> {
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    return _wgslsmith_clamp_vec2_u32(select(~_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(7305u, 0u)) ^ u_input.c, _wgslsmith_mod_vec2_u32(~select(vec2<u32>(87854u, u_input.b.x), vec2<u32>(u_input.c.x, 0u), vec2<bool>(false, true)), vec2<u32>(~4294967295u, countOneBits(u_input.b.x))), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false)))), vec2<u32>(u_input.b.x, 4294967295u), firstLeadingBit(min(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 16124u), select(u_input.b, vec2<u32>(u_input.b.x, u_input.c.x), vec2<bool>(true, true))), vec2<u32>(firstLeadingBit(3922u), _wgslsmith_add_u32(u_input.b.x, u_input.c.x)))));
}

fn func_1() -> vec4<i32> {
    let var_0 = func_4(vec4<f32>(-2543f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f - 749f)), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(func_2(Struct_1(1746f, vec4<i32>(-1i, u_input.a.x, 0i, u_input.a.x), vec2<bool>(true, false), 21153u, u_input.a.x), vec2<f32>(402f, 1218f), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))))) | _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.b), vec2<u32>(24366u, ~(~u_input.c.x)));
    global0 = array<Struct_4, 15>();
    var var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -firstLeadingBit(~vec4<i32>(15324i, -18058i, u_input.a.x, -2132i)), -vec4<i32>(u_input.a.x, -62149i, u_input.a.x, min(-1i, 51093i)));
    global0 = array<Struct_4, 15>();
    return vec4<i32>(countOneBits(countOneBits(-(2147483647i | u_input.a.x))), i32(-1i) * -(u_input.a.x >> (~79416u % 32u)), firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, -85497i)), countOneBits(max(_wgslsmith_dot_vec3_i32(~u_input.a, _wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), -1i)));
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    global0 = array<Struct_4, 15>();
    let var_0 = Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, 0u, 36884u), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b.x, 4294967295u, 74559u, arg_2.d)), vec4<u32>(u_input.c.x, ~10168u, 44507u >> (0u % 32u), u_input.b.x))), arg_2);
    global0 = array<Struct_4, 15>();
    let var_1 = var_0.b.c.x;
    var var_2 = _wgslsmith_f_op_f32(-arg_3);
    return var_0.a.yxz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(countOneBits(select(select(~vec3<u32>(u_input.b.x, u_input.c.x, 34944u), vec3<u32>(u_input.c.x, u_input.b.x, 28568u) >> (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), vec3<u32>(u_input.b.x, ~0u, u_input.c.x), true)), _wgslsmith_mult_vec3_u32(func_5(2147483647i >> (abs(u_input.b.x) % 32u), select(func_1(), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 19727i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -1i)), true), Struct_1(_wgslsmith_f_op_f32(step(1280f, 754f)), -vec4<i32>(-98971i, -1i, 53281i, u_input.a.x), vec2<bool>(true, true), ~u_input.b.x, 12346i >> (0u % 32u)), _wgslsmith_f_op_f32(exp2(1f))), func_5(min(abs(u_input.a.x), u_input.a.x), vec4<i32>(4718i, -787i, u_input.a.x, 1i) ^ ~vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x), Struct_1(_wgslsmith_f_op_f32(func_2(Struct_1(-499f, vec4<i32>(-13722i, u_input.a.x, -22978i, u_input.a.x), vec2<bool>(false, true), 4294967295u, 32128i), vec2<f32>(722f, -276f), vec2<bool>(false, false))), vec4<i32>(-1i, -2147483647i, 1i, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x), vec3<u32>(u_input.b.x, 157873u, 0u)), -u_input.a.x), 1072f)));
    let var_1 = Struct_2(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), any(vec2<bool>(true, true)))), _wgslsmith_add_i32(34651i, u_input.a.x), true);
    let var_2 = var_0;
    let var_3 = 1098f;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-274f + _wgslsmith_f_op_f32(-var_3)))), -239f, var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_3, -102f)))))) - 434f));
    let var_5 = Struct_3(abs(abs(max(vec4<u32>(var_2.x, 0u, var_2.x, u_input.b.x), vec4<u32>(0u, var_2.x, 1u, u_input.c.x)) & vec4<u32>(38267u, 0u, u_input.b.x, 80229u))), Struct_1(var_4.x, vec4<i32>(-6429i, countOneBits(-15447i), select(countOneBits(-1i), var_1.b, var_1.a), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-19638i, var_1.b, var_1.b)) << (var_0.x % 32u)), select(vec2<bool>(any(vec4<bool>(false, false, var_1.c, false)), true), vec2<bool>(false, any(vec4<bool>(var_1.a, var_1.c, true, false))), true), 1u, 615i));
    let var_6 = Struct_1(_wgslsmith_f_op_f32(floor(var_4.x)), var_5.b.b, vec2<bool>(false, true), ~187u, var_5.b.e >> (0u % 32u));
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_6.b.x), _wgslsmith_div_vec2_i32(~u_input.a.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(-var_6.b.x, _wgslsmith_clamp_i32(-6890i, var_6.e, 1i)), min(_wgslsmith_mult_vec2_i32(var_5.b.b.zz, vec2<i32>(var_1.b, u_input.a.x)), _wgslsmith_sub_vec2_i32(u_input.a.zz, vec2<i32>(1i, u_input.a.x))))), firstTrailingBit(var_1.b), u_input.a.x);
}

