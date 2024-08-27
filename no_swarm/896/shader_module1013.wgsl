struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 958f;

var<private> global1: vec2<u32> = vec2<u32>(1u, 115443u);

var<private> global2: array<i32, 2> = array<i32, 2>(75245i, 1i);

var<private> global3: f32 = -1280f;

var<private> global4: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> f32 {
    global3 = _wgslsmith_div_f32(-678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(562f, -1366f))) * _wgslsmith_f_op_f32(-arg_2.a.e.x)));
    global2 = array<i32, 2>();
    var var_0 = arg_2.c;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(arg_2.e.x)), vec4<f32>(1550f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.e.x, _wgslsmith_f_op_f32(var_0.d.x - 1375f))), var_0.d.x, 1450f));
    var var_2 = Struct_1(u_input.a, ~(~var_0.c.yz), abs(~min(var_0.c, vec3<i32>(u_input.a.x, 2147483647i, -2147483647i)) >> (u_input.d % vec3<u32>(32u))), var_1.b.wwx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -754f, var_0.e.x, var_1.a)), arg_2.c.e)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(var_1.b, _wgslsmith_f_op_vec4_f32(ceil(arg_2.a.e)), !vec4<bool>(arg_1, false, arg_0.x, false)))))));
    return arg_2.e.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), 600f), arg_0)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-290f, _wgslsmith_f_op_f32(1624f - _wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true, Struct_2(Struct_1(vec2<i32>(2147483647i, 5150i), u_input.a, vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]), vec3<f32>(arg_1, -1042f, var_0.x), vec4<f32>(-1000f, -530f, 865f, var_0.x)), vec3<f32>(-110f, 628f, 351f), Struct_1(u_input.a, u_input.a, vec3<i32>(global2[_wgslsmith_index_u32(global4.x, 2u)], u_input.a.x, u_input.a.x), vec3<f32>(arg_1, arg_1, -114f), vec4<f32>(var_0.x, -204f, 132f, 325f)), 1000f, arg_0))))));
    let var_2 = global2[_wgslsmith_index_u32(max(global4.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, ~4294967295u, ~global1.x, 3650u), _wgslsmith_mod_vec4_u32(vec4<u32>(4617u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 55636u, 29240u, global4.x)) >> (select(vec4<u32>(global1.x, global4.x, 32526u, 44961u), vec4<u32>(1u, 7075u, global4.x, global1.x), vec4<bool>(false, true, false, false)) % vec4<u32>(32u)))), 2u)];
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1.x, u_input.c, _wgslsmith_mod_u32(0u << (global4.x % 32u), global1.x)), u_input.c), global1.x);
    let var_4 = _wgslsmith_mult_u32(abs(1u ^ global1.x), reverseBits(global4.x));
    return Struct_3(-127f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1412f, var_1, 911f, -1000f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1000f, 182f, -860f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 130f, var_0.x, 205f)))));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1046f, 1721f)), -1243f);
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * func_2(_wgslsmith_f_op_vec2_f32(exp2(var_0.b.zz)), _wgslsmith_f_op_f32(-var_0.a)).b.x) - 163f), _wgslsmith_f_op_vec4_f32(-var_0.b));
    let var_1 = vec4<f32>(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - 1000f) + 1f), _wgslsmith_div_f32(-987f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1446f, 279f), _wgslsmith_f_op_f32(select(var_0.b.x, var_0.a, true)), true))))), _wgslsmith_f_op_f32(var_0.b.x * 466f), _wgslsmith_f_op_f32(-var_0.b.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), -1144f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1087f - -1210f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-316f))))) + var_0.b.zwz)));
    var var_3 = Struct_4(Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(16807i, 38563i), -u_input.a), ~countOneBits(vec2<i32>(1i, global2[_wgslsmith_index_u32(global1.x, 2u)]))), abs(-u_input.a), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-24760i, global2[_wgslsmith_index_u32(4294967295u, 2u)], u_input.b) | vec3<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 2u)], u_input.b, -5600i), ~vec3<i32>(0i, -2147483647i, u_input.b)), vec3<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 2u)], _wgslsmith_div_i32(u_input.a.x, u_input.a.x), -23087i), select(_wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(1u, 2u)], 15734i, u_input.a.x), vec3<i32>(u_input.b, 1i, 15199i)), vec3<i32>(-1i, 30898i, 2147483647i), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.zx + var_2.xy), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.x, 515f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-671f)))).b.xxz, var_0.b), Struct_2(Struct_1(reverseBits(vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(global4.x, 2u)])), _wgslsmith_mult_vec2_i32(u_input.a, u_input.a) & max(u_input.a, vec2<i32>(30205i, u_input.a.x)), vec3<i32>(-1i) * -vec3<i32>(global2[_wgslsmith_index_u32(38617u, 2u)], -1326i, global2[_wgslsmith_index_u32(0u, 2u)]), var_1.yxy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))), _wgslsmith_f_op_vec3_f32(-var_1.xwx), Struct_1(firstLeadingBit(u_input.a), abs(u_input.a ^ vec2<i32>(0i, -72169i)), vec3<i32>(-2147483647i, 22339i, u_input.a.x) << (vec3<u32>(1u, global1.x, u_input.d.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1386f, var_2.x, 599f), var_0.b.zxx, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(275f, var_1.x, 1254f, -672f) * var_0.b))), var_0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_2.xz, _wgslsmith_f_op_vec2_f32(sign(var_1.wx)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), var_2.xz, select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))))), vec4<bool>(!any(vec3<bool>(false, true, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))) && any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec2<bool>(true, true)), true));
    return Struct_4(Struct_1(vec2<i32>(-2126i, _wgslsmith_add_i32(u_input.b, u_input.b) | reverseBits(var_3.a.a.x)), firstLeadingBit(-vec2<i32>(u_input.b, 41703i)), vec3<i32>(-1i) * -vec3<i32>(global2[_wgslsmith_index_u32(global4.x, 2u)], 0i, u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.a.d))), var_3.b.a.e), var_3.b, !vec4<bool>(any(vec4<bool>(var_3.c.x, var_3.c.x, var_3.c.x, false)) == var_3.c.x, var_3.c.x, !all(var_3.c.wwx), false != (var_3.c.x != var_3.c.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<f32>) -> vec3<u32> {
    global4 = firstTrailingBit(vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(~42665u, global1.x)));
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(func_1().b.c.b.x, u_input.b), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(~1u, 2u)], -3418i), 0i) >> (~u_input.d % vec3<u32>(32u));
    return ~(vec3<u32>(0u, ~(~global1.x), ~max(11935u, 0u)) & vec3<u32>(global1.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(global4.x, 0u), _wgslsmith_mod_u32(global1.x, global1.x)), 40015u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(u_input.d.yz);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-714f)) + -497f))));
    let var_2 = func_4(Struct_3(-1259f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1108f * var_1)), var_1, var_1, -1787f)), func_1(), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 523f, -622f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1418f, var_1, var_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1, 569f) * vec3<f32>(1009f, -719f, -512f))), vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f))));
    global3 = 799f;
    global4 = ~reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, var_0.x), countOneBits(vec2<u32>(global4.x, 0u)), abs(vec2<u32>(u_input.c, 0u))) | select(vec2<u32>(global1.x, 33082u), vec2<u32>(u_input.c, u_input.c), false));
    let var_3 = Struct_4(func_1().b.c, func_1().b, !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, false)))));
    var var_4 = _wgslsmith_div_f32(var_3.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1252f))));
    var var_5 = Struct_4(Struct_1(var_3.a.b, var_3.b.c.b, vec3<i32>(_wgslsmith_div_i32(1i, u_input.b), 46537i, _wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_mult_i32(1i, var_3.b.c.a.x), 1960i)), var_3.b.b, var_3.b.a.e), Struct_2(var_3.a, _wgslsmith_div_vec3_f32(func_1().b.a.d, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.a.d), vec3<f32>(var_3.a.d.x, -363f, var_1)))), func_1().a, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(543f, var_3.b.e.x) * var_3.a.d.xy), _wgslsmith_f_op_vec2_f32(-var_3.a.d.yz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1305f, var_1) * vec2<f32>(-978f, var_1))))), !select(vec4<bool>(true, var_3.c.x, all(vec4<bool>(false, var_3.c.x, true, true)), true), var_3.c, vec4<bool>(true, var_0.x >= 0u, var_1 < var_3.a.e.x, var_3.c.x != true)));
    global1 = countOneBits(_wgslsmith_div_vec2_u32(abs(~select(vec2<u32>(global4.x, 58081u), u_input.d.zx, vec2<bool>(var_3.c.x, var_3.c.x))), ~(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 38885u), u_input.d.xz) << (vec2<u32>(global1.x, var_0.x) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.b.c.a.x, ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(28989i, var_5.a.a.x), ~var_3.a.a.x), _wgslsmith_mult_i32(34757i, -(~(-1i))), var_3.b.c.c.x), vec4<f32>(var_5.b.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_1().b.a.e.x))), -1070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.e.x + _wgslsmith_f_op_f32(var_1 - var_1)))), -1i, vec2<u32>(countOneBits(u_input.c), global1.x | countOneBits(firstTrailingBit(82881u))));
}

