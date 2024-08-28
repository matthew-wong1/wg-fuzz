struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = 6327i;
    var var_1 = _wgslsmith_mult_i32(firstLeadingBit(15783i), u_input.a.x);
    return true;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = ~arg_1.b.x;
    let var_1 = !(arg_0 && arg_0);
    var var_2 = vec4<bool>(var_1, false, _wgslsmith_dot_vec2_u32(abs(abs(vec2<u32>(arg_2.c.x, 29571u))), vec2<u32>(abs(arg_2.c.x), arg_2.c.x & 4294967295u)) == ~(~1u), false);
    var_2 = vec4<bool>(all(!(!vec4<bool>(var_1, false, true, arg_0))), true != all(select(vec2<bool>(false, true), select(vec2<bool>(var_2.x, arg_0), vec2<bool>(arg_0, var_2.x), vec2<bool>(true, var_2.x)), !vec2<bool>(arg_0, var_1))), select(false, any(select(var_2.xxw, vec3<bool>(arg_0, true, false), !var_2.zyy)), arg_0), !(!var_2.x) != var_1);
    var var_3 = arg_2;
    return !var_2.xx;
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 16685u), vec2<u32>(38138u, 1u)), firstTrailingBit(4294967295u)), 6911u, ~4294967295u), vec4<u32>(4294967295u, 1u, select(79429u, 4294967295u, true) >> (~14621u % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 0u), ~87632u))), vec4<u32>(reverseBits(_wgslsmith_div_u32(0u, firstTrailingBit(32271u))), ~1u, min(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(28511u, 41782u, 17370u), vec3<u32>(1u, 1u, 1u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(70084u, 31413u, 45875u, 0u), vec4<u32>(31379u, 77379u, 29424u, 1437u)) % 32u)), abs(min(_wgslsmith_dot_vec4_u32(vec4<u32>(17816u, 0u, 0u, 4294967295u), vec4<u32>(36015u, 54517u, 1u, 14684u)), 52607u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(683f, -1462f, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1491f)))), vec4<i32>(firstTrailingBit(-(u_input.a.x ^ 2147483647i)), ~u_input.b, _wgslsmith_add_i32(-1i >> (_wgslsmith_add_u32(1u, var_0.x) % 32u), -(i32(-1i) * -10754i)), u_input.a.x), var_0.zyx, vec2<f32>(-1561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1911f + 560f)))), ~countOneBits(~var_0));
    let var_2 = var_1.c;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a.x, var_1.d.x))), vec4<i32>(1i << (~_wgslsmith_mult_u32(var_1.e.x, 0u) % 32u), u_input.b, firstTrailingBit(-1i), 2121i), var_0.xww, var_1.d, ~var_1.e);
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(1033f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1309f, var_1.d.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-161f + var_1.a.x), -126f)))), _wgslsmith_div_vec4_i32(~var_1.b, abs(-var_1.b)), var_1.e.xxz, _wgslsmith_f_op_vec2_f32(trunc(var_1.d)), min(~var_1.e, vec4<u32>(reverseBits(69556u), ~var_0.x, var_0.x, ~var_1.c.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.d), var_1.b, var_1.e.yww, var_3.a, var_3.e);
}

fn func_1() -> Struct_1 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_add_u32(var_0, var_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -195f), 121f, any(vec2<bool>(true, true))))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2))), var_2) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_2)), -1461f))), u_input.a, ~(~vec3<u32>(10534u, 0u, var_1) >> (countOneBits(vec3<u32>(88557u, 68973u, var_1)) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, _wgslsmith_mult_u32(1u, var_1), var_1), max(vec3<u32>(var_1, 0u, var_0) | vec3<u32>(var_1, var_1, 11247u), vec3<u32>(var_1, 13816u, 36936u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1217f) - vec2<f32>(var_2, var_2))))), ~vec4<u32>(var_1, 22463u, abs(var_0), var_0));
    let var_4 = ~(~(~countOneBits(vec3<u32>(1u, 4294967295u, 0u))));
    return func_4(select(vec2<bool>(select(all(vec3<bool>(true, true, false)), func_2(Struct_1(var_3.d, vec4<i32>(u_input.a.x, var_3.b.x, -47047i, 0i), var_3.c, vec2<f32>(var_2, var_3.a.x), vec4<u32>(var_0, var_3.c.x, var_3.c.x, var_1)), 0u, Struct_1(var_3.d, u_input.a, var_4, var_3.d, vec4<u32>(4294967295u, var_0, 4294967295u, var_0))), true), !all(vec2<bool>(false, true))), !vec2<bool>(func_2(Struct_1(vec2<f32>(1572f, -1000f), vec4<i32>(var_3.b.x, u_input.b, -2147483647i, 28151i), vec3<u32>(var_4.x, 14105u, var_0), vec2<f32>(1000f, var_3.d.x), var_3.e), var_0, Struct_1(vec2<f32>(-1000f, var_3.d.x), vec4<i32>(var_3.b.x, 0i, 10683i, u_input.b), var_3.c, var_3.d, var_3.e)), true), func_3(true, Struct_1(var_3.a, var_3.b, _wgslsmith_add_vec3_u32(vec3<u32>(var_0, 4294967295u, var_3.e.x), var_4), vec2<f32>(303f, -760f), var_3.e), Struct_1(vec2<f32>(var_3.a.x, -832f), min(vec4<i32>(u_input.a.x, var_3.b.x, -40237i, 32728i), vec4<i32>(3232i, u_input.a.x, u_input.a.x, var_3.b.x)), firstLeadingBit(var_4), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_3.d.x)), vec4<u32>(var_4.x, 12404u, var_1, var_3.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-986f, var_2, 1000f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = func_4(select(vec2<bool>(select(false, false, true) | true, true), vec2<bool>(func_3(true, arg_2, arg_1, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.d.x, arg_2.a.x, var_0.d.x), vec3<f32>(320f, var_0.d.x, -331f), vec3<bool>(false, true, true)))).x, true), select(vec2<bool>(arg_0.e.x < 0u, any(vec3<bool>(true, false, false))), select(vec2<bool>(true, false), vec2<bool>(false, false), all(vec4<bool>(true, false, false, true))), true)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(371f, _wgslsmith_f_op_f32(abs(107f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1007f, -1270f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_2.d.x) - vec2<f32>(arg_1.a.x, 1209f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -208f), var_0.a.x)))), ~arg_1.b, _wgslsmith_mult_vec3_u32(~vec3<u32>(~arg_0.e.x, 1u, min(arg_2.e.x, var_0.e.x)), ~((vec3<u32>(0u, 13550u, arg_2.c.x) | vec3<u32>(arg_2.c.x, arg_0.c.x, 4294967295u)) & firstTrailingBit(vec3<u32>(28348u, var_0.e.x, 35567u)))), vec2<f32>(-1838f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-597f * _wgslsmith_f_op_f32(floor(var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - var_0.a.x) - _wgslsmith_f_op_f32(arg_0.a.x + arg_2.d.x))))), ~_wgslsmith_clamp_vec4_u32(abs(arg_0.e << (vec4<u32>(arg_1.c.x, 4294967295u, arg_2.e.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(arg_2.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(6525u, 0u, var_0.c.x), var_0.c), 0u, 6523u), countOneBits(arg_1.e | vec4<u32>(1u, 4294967295u, 75358u, arg_0.e.x))));
    let var_1 = arg_0.d.x;
    var var_2 = Struct_1(var_0.a, firstTrailingBit(vec4<i32>(reverseBits(1i), ~(-1i), 0i, _wgslsmith_dot_vec3_i32(var_0.b.xxy, -arg_0.b.wwy))), arg_0.e.www, _wgslsmith_f_op_vec2_f32(max(arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_0.d.x) - arg_1.d.x), _wgslsmith_div_f32(903f, _wgslsmith_f_op_f32(step(458f, 851f)))))), vec4<u32>(_wgslsmith_sub_u32(var_0.e.x, 60697u), 0u, ~_wgslsmith_div_u32(var_0.c.x, 59572u), 48483u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(-1943f, -389f));
    let var_1 = ~(-6919i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-578f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 + var_0)), var_0))) - 739f);
    var var_3 = func_5(func_1(), func_1(), func_1(), vec3<u32>(48116u, 7611u, 1u));
    var var_4 = Struct_1(var_3.a, max(vec4<i32>(~(-1i) >> (var_3.e.x % 32u), var_1, ~var_1, -(var_1 << (19995u % 32u))), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, var_3.b.x, u_input.a.x, -8097i)), var_3.c, vec2<f32>(_wgslsmith_f_op_f32(floor(func_4(vec2<bool>(false, true)).d.x)), var_3.d.x), var_3.e);
    var_4 = Struct_1(_wgslsmith_div_vec2_f32(var_4.a, vec2<f32>(-707f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1383f + var_4.a.x), _wgslsmith_f_op_f32(-var_2)))), vec4<i32>(var_4.b.x, 1i, -(~u_input.b), _wgslsmith_mod_i32(2147483647i ^ func_5(Struct_1(vec2<f32>(-245f, var_4.a.x), vec4<i32>(21125i, -1i, var_1, 36031i), vec3<u32>(1u, 0u, var_4.c.x), var_3.a, var_3.e), Struct_1(var_3.a, var_3.b, var_4.e.ywx, var_3.a, var_4.e), Struct_1(vec2<f32>(-1446f, var_3.d.x), u_input.a, vec3<u32>(2212u, var_4.c.x, 41307u), var_3.d, vec4<u32>(1u, var_3.e.x, var_4.c.x, var_3.e.x)), vec3<u32>(var_4.e.x, var_3.c.x, var_4.c.x)).b.x, firstTrailingBit(-30671i))), _wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(4294967295u, 1u, var_4.c.x) >> (var_4.e.yxx % vec3<u32>(32u))), (_wgslsmith_mod_vec3_u32(vec3<u32>(46819u, 11347u, var_3.c.x), var_4.c) | _wgslsmith_mult_vec3_u32(var_4.c, var_4.c)) & abs(vec3<u32>(var_4.c.x, 0u, var_3.c.x))), vec2<f32>(_wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(trunc(var_3.d.x))), var_2), var_4.e);
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f + var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(816f)) - 141f))), (vec4<i32>(_wgslsmith_sub_i32(var_3.b.x, 2147483647i), var_4.b.x, _wgslsmith_sub_i32(var_1, var_3.b.x), 0i) | var_3.b) << (vec4<u32>(42696u, ~(2475u << (var_4.e.x % 32u)), _wgslsmith_sub_u32(abs(53051u), var_3.c.x), 2480u & var_3.e.x) % vec4<u32>(32u)), func_5(func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_3.d, var_4.a))), vec4<i32>(-1i) * -vec4<i32>(var_1, 2147483647i, 0i, u_input.a.x), vec3<u32>(3520u, var_3.e.x, ~1u), func_1().d, var_4.e), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.d)), var_3.b, _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_3.e.x, var_3.e.x, var_3.c.x)), max(var_3.c, var_4.c)), _wgslsmith_f_op_vec2_f32(var_3.a * var_4.d), vec4<u32>(~4294967295u, 1u, var_4.e.x ^ 24303u, ~17922u)), select(vec3<u32>(_wgslsmith_dot_vec4_u32(var_4.e, var_3.e), 1u, var_3.e.x), var_3.c, all(func_3(true, Struct_1(var_3.d, u_input.a, var_4.e.ywz, var_3.a, var_4.e), Struct_1(vec2<f32>(var_3.a.x, var_0), u_input.a, var_4.c, vec2<f32>(var_2, var_0), vec4<u32>(12590u, var_4.e.x, var_3.e.x, var_3.c.x)), vec3<f32>(-241f, -1247f, var_4.a.x))))).c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 322f)), var_2), var_3.e);
    let var_6 = func_4(select(vec2<bool>(false, true), vec2<bool>(any(vec2<bool>(true, false)) & any(vec3<bool>(true, false, false)), _wgslsmith_div_u32(var_5.c.x, var_4.c.x) <= 0u), !any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, var_0, var_4.a.x, var_6.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, var_3.d.x)))))), 3825i);
}

