struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(1000f, 1454f), vec2<f32>(1000f, -789f));

var<private> global2: f32;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = global3.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, _wgslsmith_f_op_f32(sign(480f)), -274f), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) * -747f), _wgslsmith_f_op_f32(floor(-1000f))), !global3.x)));
    global1 = array<vec2<f32>, 2>();
    return global3.yz;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> vec3<f32> {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = arg_1;
    global1 = array<vec2<f32>, 2>();
    let var_2 = var_0.c;
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.b.x)), -318f, -2581f);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(firstTrailingBit(firstLeadingBit(-8264i)), ~24476i) >> (~38161u % 32u), u_input.c.x, _wgslsmith_sub_i32(1i, firstTrailingBit(-1i)));
    global1 = array<vec2<f32>, 2>();
    var var_1 = arg_0.d;
    let var_2 = arg_2;
    let var_3 = all(select(!(!select(vec4<bool>(false, false, true, global3.x), vec4<bool>(true, false, false, true), true)), !vec4<bool>(any(vec3<bool>(arg_0.d, false, arg_2.d)), false, arg_2.d, false), !(!(true && arg_0.d))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = func_4(Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(951f, 1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(arg_0.c.x, 2u)], global1[_wgslsmith_index_u32(arg_0.c.x, 2u)], false)))), ~(~(~arg_0.c)), select(true, all(global3.zx), arg_0.d)), global3.x, Struct_1(-1572f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)))), arg_0.c, select(true, false, all(func_2(-448f, vec3<f32>(1293f, arg_1, arg_0.a))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-388f, -392f)), _wgslsmith_div_f32(-1000f, -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-202f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global3.x, arg_0, arg_0.c, true)))))));
    global0 = u_input.b;
    let var_1 = func_4(var_0, countOneBits(u_input.b) < ~(-(~(-4774i))), func_4(func_4(Struct_1(_wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_vec2_f32(round(var_0.b)), ~vec4<u32>(0u, var_0.c.x, 13924u, 3040u), true), global3.x, Struct_1(_wgslsmith_f_op_f32(min(347f, var_0.a)), vec2<f32>(1220f, var_0.b.x), ~arg_0.c, arg_0.a <= 800f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1245f, 1354f, 628f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1050f, arg_1, -216f))), vec3<bool>(arg_0.d, true, false)))), !any(select(vec3<bool>(true, arg_0.d, true), vec3<bool>(true, false, true), var_0.d)), var_0, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), var_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1249f, -1000f, arg_1) * vec3<f32>(arg_1, var_0.a, var_0.a))))))).c.xy;
    let var_2 = u_input.d.x ^ _wgslsmith_mod_i32(firstTrailingBit(~u_input.a.x) ^ 1i, _wgslsmith_div_i32(u_input.d.x, u_input.c.x));
    let var_3 = var_0;
    return -250f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_div_i32(2147483647i, -2147483647i), reverseBits(_wgslsmith_clamp_i32(u_input.b, u_input.a.x, u_input.d.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1944f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-423f, global1[_wgslsmith_index_u32(12454u, 2u)], vec4<u32>(6118u, 21883u, 22465u, 1u), true), -1845f)) * _wgslsmith_f_op_f32(abs(202f))), func_4(func_4(Struct_1(-1216f, global1[_wgslsmith_index_u32(28593u, 2u)], vec4<u32>(50863u, 0u, 1u, 4294967295u), true), global3.x, Struct_1(1841f, global1[_wgslsmith_index_u32(20611u, 2u)], vec4<u32>(4294967295u, 0u, 4586u, 0u), false), vec3<f32>(161f, 368f, 1072f)), true, Struct_1(-311f, vec2<f32>(-122f, 1336f), vec4<u32>(1u, 35491u, 1u, 1u), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(213f, -1093f, 1000f) * vec3<f32>(-529f, -278f, 1000f))).b.x))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(200f, -1561f, _wgslsmith_f_op_f32(1044f + 579f)))))));
    let var_2 = Struct_1(-2231f, vec2<f32>(1f, var_1.x), ~(~select(vec4<u32>(4294967295u, 1u, 10230u, 8663u), vec4<u32>(90680u, 28806u, 1u, 1u), vec4<bool>(global3.x, false, global3.x, true)) << (func_4(Struct_1(-1000f, vec2<f32>(var_1.x, var_1.x), vec4<u32>(1u, 4294967295u, 0u, 43755u), global3.x), global3.x, func_4(Struct_1(-779f, vec2<f32>(var_1.x, var_1.x), vec4<u32>(0u, 0u, 4294967295u, 52209u), global3.x), global3.x, Struct_1(var_1.x, global1[_wgslsmith_index_u32(67220u, 2u)], vec4<u32>(1u, 75508u, 0u, 0u), global3.x), var_1), vec3<f32>(-622f, -215f, var_1.x)).c % vec4<u32>(32u))), all(global3.xx));
    var var_3 = select(~4294967295u, ~var_2.c.x, (_wgslsmith_f_op_f32(ceil(298f)) != _wgslsmith_f_op_f32(floor(1255f))) || !select(false, var_2.d, all(vec4<bool>(false, global3.x, false, true))));
    global3 = !select(vec3<bool>(true, true, true), vec3<bool>(true, all(!vec4<bool>(true, var_2.d, true, false)), (807f <= var_1.x) && false), var_2.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_div_f32(var_1.x, -1450f)));
    var var_4 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(func_4(Struct_1(-249f, vec2<f32>(var_2.a, var_2.a), vec4<u32>(4294967295u, 0u, var_2.c.x, var_2.c.x), var_2.d), false, Struct_1(-1873f, vec2<f32>(1000f, var_1.x), vec4<u32>(var_2.c.x, 57514u, var_2.c.x, 0u), var_2.d), vec3<f32>(472f, 2299f, var_2.a)).c.x, _wgslsmith_mod_u32(8444u, 3010u)), ~var_2.c.x, ~1u), vec3<u32>(var_2.c.x, 86259u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(18376u, 22361u, 1u, 0u), vec4<u32>(var_2.c.x, 21888u, var_2.c.x, 14069u)), vec4<u32>(var_2.c.x, 34335u, var_2.c.x, 36433u)))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(var_2.c.x), reverseBits(26891u), ~var_2.c.x), ~1u >> ((var_2.c.x << (0u % 32u)) % 32u)), _wgslsmith_mod_u32((var_2.c.x >> (var_2.c.x % 32u)) & var_2.c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(57369u, var_2.c.x, var_2.c.x, 22990u), var_2.c), ~var_2.c.x, ~var_2.c.x))), ~var_2.c.x);
    var_0 = vec2<i32>(u_input.c.x, 21731i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-15977i, -2147483647i, u_input.d.x, 1i), vec4<i32>(var_0.x, var_0.x, u_input.c.x, var_0.x)), i32(-1i) * -44767i, ~3879i, var_0.x), -_wgslsmith_add_vec4_i32(vec4<i32>(37104i, 0i, 16871i, u_input.c.x), vec4<i32>(u_input.b, 2147483647i, u_input.c.x, 0i))), select(countOneBits(firstTrailingBit(vec4<i32>(0i, var_0.x, -23945i, -1i))), vec4<i32>(_wgslsmith_div_i32(2147483647i, -2161i), -u_input.d.x, 29852i & u_input.d.x, -11113i), !(!vec4<bool>(true, var_2.d, var_2.d, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f + _wgslsmith_f_op_f32(func_1(var_2, _wgslsmith_f_op_f32(-var_2.b.x))))), vec2<u32>(62606u, var_4.x) << (var_4.yx % vec2<u32>(32u)));
}

