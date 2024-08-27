struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 22> = array<i32, 22>(-20615i, 1i, 10292i, -10720i, 1i, -1i, -49418i, -31511i, i32(-2147483648), 1i, 4996i, i32(-2147483648), 11171i, 0i, -1i, 43629i, 1577i, 1i, 2147483647i, 1718i, 13401i, 0i);

var<private> global2: bool;

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<i32>(1i, 1i), -1156f), Struct_1(vec2<i32>(-9492i, 1i), 156f), false, Struct_1(vec2<i32>(-20403i, -32946i), -1000f)), Struct_2(Struct_1(vec2<i32>(-35401i, i32(-2147483648)), -1931f), Struct_1(vec2<i32>(46158i, -15936i), -349f), false, Struct_1(vec2<i32>(71709i, -1i), -2367f)), Struct_2(Struct_1(vec2<i32>(-37016i, i32(-2147483648)), 295f), Struct_1(vec2<i32>(-24613i, 57976i), -1000f), false, Struct_1(vec2<i32>(1i, 11613i), 210f)), Struct_2(Struct_1(vec2<i32>(-19712i, -21185i), 288f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 190f), true, Struct_1(vec2<i32>(2147483647i, 1i), 1000f)), Struct_2(Struct_1(vec2<i32>(-6763i, -44742i), -609f), Struct_1(vec2<i32>(i32(-2147483648), 1i), -1207f), true, Struct_1(vec2<i32>(45371i, i32(-2147483648)), 473f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 191f), Struct_1(vec2<i32>(2147483647i, -85476i), -1876f), false, Struct_1(vec2<i32>(0i, 1i), 146f)), Struct_2(Struct_1(vec2<i32>(-6896i, 2147483647i), -208f), Struct_1(vec2<i32>(-89500i, 2704i), -1123f), false, Struct_1(vec2<i32>(2147483647i, -2522i), 941f)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.b), -1686f, _wgslsmith_f_op_f32(-446f + global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return arg_3.b;
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(reverseBits(global0.a), _wgslsmith_f_op_f32(-340f + _wgslsmith_f_op_f32(f32(-1f) * -817f)));
    global0 = func_1(!(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true))), 1i, Struct_2(Struct_1(var_0.a, var_0.b), func_1(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), global0.a.x, Struct_2(Struct_1(vec2<i32>(-81i, global1[_wgslsmith_index_u32(1u, 22u)]), 555f), func_1(vec4<bool>(true, true, false, false), -1i, global3[_wgslsmith_index_u32(1u, 7u)], Struct_2(Struct_1(var_0.a, var_0.b), Struct_1(vec2<i32>(-102545i, global1[_wgslsmith_index_u32(1u, 22u)]), var_0.b), false, Struct_1(var_0.a, global0.b))), true, Struct_1(vec2<i32>(1i, var_0.a.x), var_0.b)), Struct_2(Struct_1(vec2<i32>(var_0.a.x, -1i), global0.b), Struct_1(vec2<i32>(global0.a.x, -65139i), 1311f), select(false, false, true), func_1(vec4<bool>(false, false, false, false), -1i, global3[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_2(Struct_1(var_0.a, var_0.b), Struct_1(global0.a, -536f), true, Struct_1(vec2<i32>(-10184i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), global0.b))))), true, func_1(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), any(vec2<bool>(false, false))), -1i, Struct_2(func_1(vec4<bool>(true, false, true, false), global0.a.x, Struct_2(Struct_1(vec2<i32>(global0.a.x, 0i), var_0.b), Struct_1(vec2<i32>(-3862i, -8926i), 1000f), false, Struct_1(vec2<i32>(global0.a.x, -22590i), var_0.b)), global3[_wgslsmith_index_u32(u_input.a.x, 7u)]), Struct_1(var_0.a, global0.b), all(vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(2147483647i, -25436i), -297f)), global3[_wgslsmith_index_u32(~min(4294967295u, 1u), 7u)])), global3[_wgslsmith_index_u32(~countOneBits(max(u_input.a.x, 1u)) | max(~59958u, ~(u_input.a.x | 1u)), 7u)]);
    var var_1 = abs(~u_input.a);
    let var_2 = firstLeadingBit(global1[_wgslsmith_index_u32(firstTrailingBit(max(_wgslsmith_mult_u32(60788u, 1u), firstLeadingBit(~1u))), 22u)]);
    var var_3 = !(!(!vec2<bool>(u_input.a.x <= 4294967295u, any(vec3<bool>(false, true, false)))));
    return _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], -2147483647i, var_2), countOneBits(vec4<i32>(var_2, var_2, 0i, 0i) ^ vec4<i32>(0i, -1i, global1[_wgslsmith_index_u32(4294967295u, 22u)], global0.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(13551i, 14865i, global1[_wgslsmith_index_u32(var_1.x, 22u)], 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.a.x, var_0.a.x, global0.a.x), vec4<i32>(-11342i, -2094i, 26580i, var_0.a.x))))), vec4<i32>(abs(~1i), global0.a.x, firstTrailingBit(-4628i), ~var_2 | 18333i));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_2 {
    global0 = func_1(vec4<bool>(all(arg_1.wz) & arg_0.x, arg_1.x, true, false), _wgslsmith_dot_vec4_i32(~func_3(), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global0.a.x, global0.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 22u)])))), global3[_wgslsmith_index_u32(reverseBits(~reverseBits(u_input.a.x)), 7u)], global3[_wgslsmith_index_u32(~reverseBits(1u), 7u)]);
    global2 = arg_0.x;
    var var_0 = abs(vec3<i32>(global0.a.x, -2147483647i, firstTrailingBit(i32(-1i) * -12664i)));
    let var_1 = vec4<bool>(any(!vec4<bool>(arg_0.x, arg_1.x, any(vec3<bool>(arg_0.x, false, true)), false)), ~_wgslsmith_sub_i32(1i, ~global0.a.x) <= ~(~(44032i >> (1u % 32u))), false, any(vec3<bool>(arg_0.x, false, -752f == global0.b)));
    let var_2 = -844f;
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a.x), 7u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_0.a.x == global0.a.x;
    global1 = array<i32, 22>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~(1u | reverseBits(u_input.a.x)), arg_1), ~(~0u));
    global1 = array<i32, 22>();
    var_0 = any(vec4<bool>(true, !(-957f < global0.b), false, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.c, true), vec3<bool>(false, arg_2.c, true)))));
    return Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_1), 22u)], 7901i), vec2<i32>(16178i, ~arg_2.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.a.b, -413f)) * global0.b), global0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1395f)))), -1702f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -309f));
    let var_2 = global3[_wgslsmith_index_u32(~u_input.a.x, 7u)];
    global0 = func_4(func_1(select(!select(vec4<bool>(true, false, true, var_0.c), vec4<bool>(true, var_0.c, false, false), var_2.c), vec4<bool>(all(vec2<bool>(var_2.c, true)), !var_0.c, select(true, false, var_2.c), var_2.c), vec4<bool>(var_2.c, true, var_2.c, all(vec4<bool>(false, false, var_2.c, true)))), -global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(15001u, max(0u, 86737u)), 22u)], global3[_wgslsmith_index_u32(~u_input.a.x, 7u)], global3[_wgslsmith_index_u32(1u, 7u)]), ~6654u, func_2(!(!select(vec2<bool>(var_2.c, var_2.c), vec2<bool>(var_0.c, var_0.c), var_0.c)), vec4<bool>(var_0.c, !(var_2.c & true), all(!vec3<bool>(false, var_0.c, var_0.c)), var_2.c)));
    let var_3 = var_2.b;
    global3 = array<Struct_2, 7>();
    let var_4 = func_4(Struct_1(global0.a, var_2.a.b), 13280u, Struct_2(func_4(Struct_1(vec2<i32>(-20112i, var_2.a.a.x), global0.b), u_input.a.x, Struct_2(func_1(vec4<bool>(true, var_0.c, false, var_2.c), 679i, global3[_wgslsmith_index_u32(8441u, 7u)], Struct_2(var_0.a, Struct_1(var_0.b.a, var_0.d.b), false, var_2.b)), func_2(vec2<bool>(var_0.c, var_0.c), vec4<bool>(true, var_2.c, false, true)).a, all(vec3<bool>(false, var_0.c, true)), var_0.d)), Struct_1(var_0.a.a, var_1.x), true, func_1(vec4<bool>(!var_2.c, var_2.c, true, true), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec3<i32>(-1i, 2147483647i, 1i)), Struct_2(var_2.a, Struct_1(global0.a, 1824f), var_2.c | var_2.c, Struct_1(var_3.a, var_1.x)), func_2(vec2<bool>(var_2.c, var_0.c), vec4<bool>(var_0.c, var_0.c, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, var_0.b.b, ~_wgslsmith_sub_vec2_i32(func_4(var_4, abs(u_input.a.x), global3[_wgslsmith_index_u32(~45611u, 7u)]).a, _wgslsmith_add_vec2_i32(max(var_3.a, var_3.a), _wgslsmith_clamp_vec2_i32(var_4.a, vec2<i32>(-2147483647i, 0i), var_4.a))), _wgslsmith_div_i32(global0.a.x, -2147483647i));
}

