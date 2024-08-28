struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(false, vec3<u32>(u_input.a, u_input.a, 0u), 46001i);
    let var_1 = Struct_1(!(!(_wgslsmith_f_op_f32(abs(215f)) == _wgslsmith_f_op_f32(sign(700f)))), var_0.b, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.c, _wgslsmith_div_i32(50675i, 1i)), -min(global1[_wgslsmith_index_u32(55454u, 19u)], _wgslsmith_div_i32(-6752i, global1[_wgslsmith_index_u32(0u, 19u)]))));
    let var_2 = true;
    let var_3 = -13141i;
    var var_4 = -abs(~min(select(vec3<i32>(var_3, 11072i, var_3), vec3<i32>(23209i, -1i, -10155i), var_2), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c, global1[_wgslsmith_index_u32(1u, 19u)], 0i), vec3<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 19u)], -2147483647i, 0i))));
    return var_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true, func_3(), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, 4294967295u), 19u)]);
    global1 = array<i32, 19>();
    var var_1 = select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, false != !var_0.a, !all(!vec4<bool>(var_0.a, var_0.a, var_0.a, true))), true);
    let var_2 = Struct_1(select(!(var_0.a || false), true, true), vec3<u32>(var_0.b.x, ~var_0.b.x, 29111u), i32(-1i) * -countOneBits(~(-1i)));
    global0 = 27119u ^ var_0.b.x;
    return Struct_1(false, ~(vec3<u32>(~var_2.b.x, 4294967295u, 30676u) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(28834u, 1u, var_2.b.x), abs(vec3<u32>(0u, 0u, var_2.b.x)))), 1i | -firstTrailingBit(-10932i));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(561f, _wgslsmith_f_op_f32(-180f * arg_3)) - arg_3) * -1154f)));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, global1[_wgslsmith_index_u32(0u, 19u)]), vec2<i32>(-8923i, 31726i))), -11814i & arg_1.x), countOneBits(arg_1)), -6690i, arg_2.c, -44003i);
    var var_2 = vec4<f32>(arg_3, -235f, _wgslsmith_f_op_f32(-676f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))), arg_3);
    let var_3 = Struct_1(!arg_0.a, arg_0.b, min(global1[_wgslsmith_index_u32(u_input.a, 19u)], -_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 0i ^ arg_0.c)));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3, var_2.x)))) - 937f), 190f));
    return Struct_1(arg_0.a || var_3.a, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_2.b.x, arg_2.b.x), arg_2.b.x), abs(firstLeadingBit(var_3.b.zx))), func_2().b.x, _wgslsmith_div_u32(4294967295u, u_input.a)), 2147483647i);
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(any(vec4<bool>(select(all(vec3<bool>(arg_2.a, false, true)), all(vec4<bool>(arg_2.a, arg_2.a, false, false)), false), !(!arg_2.a), !any(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false)), all(vec2<bool>(arg_2.a, true)) | true)), arg_2.b, 20168i);
    let var_1 = func_4(Struct_1(arg_2.a, vec3<u32>(arg_2.b.x, (4294967295u ^ u_input.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(6544u, 32028u, 141068u), var_0.b), _wgslsmith_add_u32(_wgslsmith_add_u32(47638u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 24834u, var_0.b.x), vec3<u32>(1u, 68216u, arg_2.b.x)))), -1i), vec2<i32>(-1i) * -vec2<i32>(var_0.c, _wgslsmith_add_i32(arg_2.c, arg_2.c)), Struct_1(!var_0.a, vec3<u32>(u_input.a, ~var_0.b.x, ~4294967295u) & ~vec3<u32>(1u, var_0.b.x, 1u), -33405i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))).b;
    global0 = 4294967295u;
    var_0 = Struct_1(!all(select(vec2<bool>(arg_2.a, var_0.a), select(vec2<bool>(true, var_0.a), vec2<bool>(false, false), false), false)), vec3<u32>(0u, u_input.a & 8948u, 7425u), ~(-(_wgslsmith_dot_vec2_i32(vec2<i32>(-38656i, -1i), vec2<i32>(35984i, var_0.c)) >> (~1u % 32u))));
    let var_2 = Struct_1(var_0.a, vec3<u32>(var_1.x, func_2().b.x, ~func_2().b.x), i32(-1i) * -global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(arg_2.b.x, 4294967295u), arg_1), 19u)]);
    return func_4(func_4(var_2, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c, 29201i) | vec2<i32>(global1[_wgslsmith_index_u32(49125u, 19u)], 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.c, var_0.c), vec2<i32>(arg_2.c, var_2.c), vec2<i32>(-31522i, arg_2.c))), vec2<i32>(abs(arg_2.c), ~9458i)), func_2(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1457f))))), ~(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 19u)], arg_2.c), vec2<i32>(var_2.c, -1i)))), var_2, -434f);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = select(vec4<bool>(!arg_0.a, arg_1.a, !select(true, true, true), false), select(select(!select(vec4<bool>(false, false, false, arg_0.a), vec4<bool>(arg_0.a, arg_1.a, false, true), arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_0.a), !arg_1.a), !(!(!vec4<bool>(false, arg_0.a, false, arg_1.a))), vec4<bool>(!func_2().a, true, !arg_1.a, func_2().a)), vec4<bool>(all(select(!vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_0.a, true))), false, !any(select(vec3<bool>(true, arg_1.a, arg_0.a), vec3<bool>(true, true, false), vec3<bool>(arg_0.a, arg_0.a, true))), true));
    let var_1 = !var_0.wxy;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)));
    global1 = array<i32, 19>();
    var var_3 = firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec4_u32((vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) & vec4<u32>(4294967295u, 1u, arg_0.b.x, arg_2.x)) ^ (vec4<u32>(0u, 50510u, 4294967295u, 1u) >> (vec4<u32>(arg_1.b.x, arg_1.b.x, 4294967295u, 48974u) % vec4<u32>(32u))), ~(vec4<u32>(arg_2.x, arg_0.b.x, 0u, 70405u) ^ vec4<u32>(0u, 0u, arg_2.x, arg_0.b.x)), ~(vec4<u32>(0u, 82103u, 1u, u_input.a) | vec4<u32>(arg_1.b.x, u_input.a, arg_0.b.x, 4945u)))));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> StorageBuffer {
    var var_0 = func_6(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(1698f, arg_0) * vec2<f32>(_wgslsmith_f_op_f32(arg_0 + 715f), _wgslsmith_f_op_f32(-arg_0))), firstLeadingBit(~u_input.a), func_4(func_2(), vec2<i32>(abs(14054i), 1i), func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))), Struct_1(true, countOneBits(vec3<u32>(29450u, 4294967295u, 55189u)) << (vec3<u32>(~u_input.a, 196u, 65153u) % vec3<u32>(32u)), -reverseBits(~global1[_wgslsmith_index_u32(u_input.a, 19u)])), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), func_2().b.yx));
    var var_1 = 0u & select(_wgslsmith_dot_vec3_u32(~var_0.b & vec3<u32>(u_input.a, var_0.b.x, 4294967295u), min(var_0.b & vec3<u32>(4294967295u, 22398u, 0u), firstTrailingBit(var_0.b))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, var_0.b), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 0u), firstTrailingBit(vec3<u32>(var_0.b.x, 4294967295u, 4294967295u)))), false);
    var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1000f) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(969f, -1000f), vec2<f32>(1428f, -1010f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0)))))))), (u_input.a ^ func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1226f)), _wgslsmith_sub_u32(var_0.b.x, var_0.b.x), Struct_1(arg_1.x, var_0.b, -16734i)).b.x) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(select(9884u, 24185u, arg_1.x), u_input.a), 37261u) % 32u), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1936f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), arg_1))), ~var_0.b.x, Struct_1(any(vec4<bool>(true, true, var_0.a, false)), _wgslsmith_mult_vec3_u32(var_0.b >> (var_0.b % vec3<u32>(32u)), var_0.b), global1[_wgslsmith_index_u32(min(0u, u_input.a), 19u)] >> (firstTrailingBit(var_0.b.x) % 32u))));
    var_0 = Struct_1(func_2().a, var_0.b, -5425i);
    var_0 = Struct_1(false, var_0.b, -_wgslsmith_sub_i32(-var_0.c, var_0.c) | global1[_wgslsmith_index_u32(145u, 19u)]);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1078f, arg_0))))))), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(~43162u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], -26226i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], 646i)), abs(1i), max(-2147483647i, 2147483647i)), select(vec3<i32>(1i, ~(global1[_wgslsmith_index_u32(u_input.a, 19u)] >> (u_input.a % 32u)), 2147483647i), -vec3<i32>(global1[_wgslsmith_index_u32(18724u, 19u)] & 7019i, -9200i, global1[_wgslsmith_index_u32(1u, 19u)] | global1[_wgslsmith_index_u32(1u, 19u)]), (_wgslsmith_dot_vec3_u32(vec3<u32>(24680u, u_input.a, u_input.a), vec3<u32>(u_input.a, 21216u, u_input.a)) >= ~35071u) != (false && (global1[_wgslsmith_index_u32(27612u, 19u)] < -40137i))));
    global0 = u_input.a;
    var var_1 = true;
    let var_2 = -1330f;
    global0 = 4294967295u;
    global0 = 0u;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(round(var_2))))), vec2<bool>(true, true), false);
}

