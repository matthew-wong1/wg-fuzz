struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(u_input.a.x), 16290u), _wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u))), 66343u, 1u), ~vec4<u32>(_wgslsmith_add_u32(u_input.a.x, min(0u, u_input.a.x)), u_input.a.x & 28284u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, 4294967295u))), u_input.a.x));
    var_0 = u_input.a.x & ~1u;
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-470f + 1166f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -884f))), 821f, -969f))), ~u_input.a.x, select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(64538u < (u_input.a.x << (4294967295u % 32u)), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1270f, -1000f, 737f, -377f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-837f, 2534f, -1131f, -490f) - vec4<f32>(729f, 1462f, 703f, -551f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-691f, 737f, -1701f, 903f), vec4<f32>(-2380f, 269f, -389f, -1063f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(953f, -727f, -788f, -1191f)))))))));
    global0 = _wgslsmith_mult_vec2_i32(min(_wgslsmith_sub_vec2_i32(-u_input.b, -vec2<i32>(39207i, -56035i)), u_input.d) | vec2<i32>(~global1[_wgslsmith_index_u32(var_1.b >> (55223u % 32u), 18u)], -global0.x & 2147483647i), vec2<i32>(-2147483647i, abs(u_input.d.x)));
    var_0 = _wgslsmith_clamp_u32(var_1.b, 41593u, ~min(max(_wgslsmith_sub_u32(u_input.a.x, 64519u), ~u_input.a.x), 1u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.x))), -526f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_1.d.yz, vec2<f32>(var_1.a.x, -590f)), vec2<f32>(var_1.d.x, -764f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(146f * var_1.d.x), _wgslsmith_f_op_f32(exp2(var_1.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1903f, -348f)) - var_1.d.zz))));
}

fn func_4(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = arg_0;
    var_0 = Struct_3(firstTrailingBit(select(var_0.a, arg_0.a, var_0.e || (arg_0.e && arg_0.e))), _wgslsmith_f_op_vec2_f32(arg_0.b * arg_0.b), u_input.d.x, _wgslsmith_mult_i32(-52479i, _wgslsmith_sub_i32(abs(u_input.b.x) >> (u_input.a.x % 32u), -global0.x ^ -var_0.c)), !var_0.e);
    let var_1 = -64157i;
    let var_2 = vec2<u32>(var_0.a, _wgslsmith_dot_vec3_u32(~reverseBits(~u_input.a), u_input.a));
    var var_3 = vec4<f32>(var_0.b.x, 1829f, var_0.b.x, _wgslsmith_f_op_f32(step(-1000f, arg_0.b.x)));
    return u_input.b & (~(~(u_input.b ^ u_input.b)) | u_input.b);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<bool> {
    global0 = _wgslsmith_mod_vec2_i32(arg_3 & (firstLeadingBit(-u_input.b) | vec2<i32>(_wgslsmith_dot_vec2_i32(arg_3, arg_3), firstLeadingBit(u_input.d.x))), vec2<i32>(global0.x, _wgslsmith_mult_i32(-285i >> (firstTrailingBit(arg_2.b) % 32u), _wgslsmith_sub_i32(abs(global0.x), global1[_wgslsmith_index_u32(arg_0, 18u)]))));
    var var_0 = vec2<u32>(countOneBits(arg_0), arg_2.b);
    let var_1 = arg_1;
    var var_2 = 1u;
    var var_3 = !arg_2.d;
    return vec4<bool>(var_1, !(_wgslsmith_f_op_f32(-792f + _wgslsmith_f_op_f32(step(-840f, -1000f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(1330f, arg_2.a) - 1f)), !(!(_wgslsmith_f_op_f32(-arg_2.a) == arg_2.a)), var_1);
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = any(func_5(min(u_input.a.x, _wgslsmith_div_u32(~0u, ~u_input.a.x)), u_input.a.x <= ~(u_input.a.x >> (arg_0.x % 32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(333f, 568f) + 1427f), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.x), ~u_input.a.zx), false, vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true)), func_4(Struct_3(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(func_3()), reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), global1[_wgslsmith_index_u32(0u, 18u)] << (arg_0.x % 32u), any(vec4<bool>(true, false, false, true))))));
    var var_1 = Struct_2(-625f, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1607f - 332f))))), select(~min(1u, 41251u), min(4294967295u, ~arg_0.x), (global1[_wgslsmith_index_u32(u_input.a.x, 18u)] <= global1[_wgslsmith_index_u32(u_input.a.x, 18u)]) && true), any(!func_5(arg_0.x, true, Struct_1(1318f, u_input.a.x, false, vec3<bool>(true, true, true)), u_input.d).www), vec3<bool>(all(func_5(61169u, false, Struct_1(2145f, 47433u, false, vec3<bool>(true, true, false)), vec2<i32>(global0.x, global0.x)).wzz), select(true, false, true), true)), true, false);
    global1 = array<i32, 18>();
    var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - -815f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)), var_1.b.c)), Struct_1(_wgslsmith_f_op_f32(1169f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a)) - _wgslsmith_f_op_f32(-var_1.b.a))), 59321u, var_1.c, var_1.b.d), any(!var_1.b.d.zz), true);
    var var_2 = 1027f;
    return _wgslsmith_f_op_f32(-var_1.a);
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.d.x;
    let var_1 = arg_2;
    global0 = -countOneBits(~u_input.d);
    global0 = vec2<i32>(-(~(~func_4(Struct_3(arg_2.b, vec2<f32>(arg_2.a, -279f), -2147483647i, 1234i, arg_2.c)).x)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i) * -vec2<i32>(4509i, u_input.b.x), ~(-u_input.b)), _wgslsmith_add_vec2_i32(-u_input.b, u_input.d)));
    var var_2 = select((_wgslsmith_sub_i32(-2147483647i, global1[_wgslsmith_index_u32(arg_2.b, 18u)] << (u_input.a.x % 32u)) | abs(u_input.b.x)) >= (firstLeadingBit(_wgslsmith_mod_i32(-40710i, global0.x)) & global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), arg_2.c, true || !(var_1.b >= ~76854u));
    return arg_2;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-367f, arg_1.b.x))));
    global1 = array<i32, 18>();
    var var_1 = vec3<u32>(arg_2.b, 4294967295u, ~52035u >> (_wgslsmith_add_u32(_wgslsmith_div_u32(~58334u, min(4147u, u_input.a.x)), abs(1u)) % 32u));
    let var_2 = vec2<i32>(1i, global0.x);
    global0 = vec2<i32>(min((~11742i >> (_wgslsmith_mod_u32(arg_2.b, 71003u) % 32u)) >> (4294967295u % 32u), max(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -1i, var_2.x), -1i)), 1i);
    return func_6(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b.x)) - _wgslsmith_f_op_f32(max(751f, arg_2.a))), -470f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-523f)), _wgslsmith_f_op_f32(func_2(vec4<u32>(arg_1.a, ~28943u, firstLeadingBit(var_1.x), arg_1.a)))), Struct_1(-1197f, u_input.a.x, any(!(!vec2<bool>(arg_1.e, false))), arg_2.d));
}

fn func_7(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = func_5(0u, !all(func_5(countOneBits(u_input.a.x), arg_2.c, arg_2, abs(u_input.b)).xzz), arg_2, -_wgslsmith_mod_vec2_i32(abs(vec2<i32>(arg_0, -1i)), _wgslsmith_mod_vec2_i32(-u_input.b, _wgslsmith_mod_vec2_i32(u_input.b, u_input.b))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(394f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(arg_2.a, vec2<f32>(arg_2.a, -1000f), Struct_1(arg_2.a, arg_1, var_0.x, vec3<bool>(true, false, false))).a - _wgslsmith_f_op_f32(-arg_2.a)))), arg_2, (func_6(-151f, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(788f, arg_2.a), vec2<f32>(512f, arg_2.a))), arg_2).d.x && false) && true, true);
    let var_2 = _wgslsmith_div_vec3_u32(firstTrailingBit(u_input.a), u_input.a);
    let var_3 = arg_2.d;
    let var_4 = arg_1 <= ~_wgslsmith_sub_u32(arg_1, var_2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-767f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d;
    let var_0 = Struct_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_7(7178i, firstLeadingBit(53580u), func_1(vec4<i32>(1i, global0.x, 0i, u_input.d.x), Struct_3(44948u, vec2<f32>(884f, -116f), global1[_wgslsmith_index_u32(51151u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], false), Struct_1(854f, u_input.a.x, true, vec3<bool>(true, false, true))), reverseBits(34830i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f * -730f))))), 874i, -1i, true);
    global0 = u_input.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, -1000f, var_0.b.x), vec3<f32>(var_0.b.x, var_0.b.x, 141f), func_6(var_0.b.x, vec2<f32>(var_0.b.x, var_0.b.x), Struct_1(116f, u_input.a.x, true, vec3<bool>(false, var_0.e, true))).d)))), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(func_2(~vec4<u32>(4294967295u, var_0.a, 85914u, 4294967295u))), -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_0.a, abs(~1u)) & var_0.a, _wgslsmith_dot_vec3_u32(reverseBits(firstTrailingBit(abs(u_input.a))), vec3<u32>(reverseBits(u_input.a.x) ^ var_0.a, ~func_1(vec4<i32>(global0.x, global1[_wgslsmith_index_u32(0u, 18u)], -37642i, u_input.b.x), var_0, Struct_1(var_0.b.x, var_0.a, var_0.e, vec3<bool>(false, true, false))).b, abs(1u))), u_input.b);
}

