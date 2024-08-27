struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 1>;

var<private> global2: array<vec3<u32>, 28>;

var<private> global3: Struct_1;

var<private> global4: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = false;
    var var_1 = abs(~(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.a, u_input.a.x, 0u)), global2[_wgslsmith_index_u32(u_input.a.x, 28u)]) | _wgslsmith_mult_u32(4294967295u, ~u_input.a.x)));
    let var_2 = reverseBits(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], ~(~global1[_wgslsmith_index_u32(13224u, 1u)])));
    return -1222f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(~firstLeadingBit((vec4<u32>(56270u, 64612u, 1u, 1u) & vec4<u32>(4294967295u, 9133u, global3.a, global0.a)) & firstTrailingBit(vec4<u32>(global0.a, 16447u, global3.a, 61495u))), ~(select(~vec4<u32>(47696u, 28759u, 49817u, global0.a), vec4<u32>(1u, 1u, 32515u, global3.a) | vec4<u32>(0u, 1u, 71472u, 20651u), select(vec4<bool>(false, false, true, global0.c), vec4<bool>(global3.c, false, global3.b, global3.c), true)) << (~(vec4<u32>(74732u, 1u, global3.a, global0.a) | vec4<u32>(global0.a, 4294967295u, u_input.a.x, 18019u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d) + vec2<f32>(-344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(true)))))));
    var var_2 = ~(~global2[_wgslsmith_index_u32(reverseBits(50325u), 28u)]);
    let var_3 = global0.d.x;
    global2 = array<vec3<u32>, 28>();
    return Struct_1(global3.a, !any(select(!vec2<bool>(true, global0.b), select(vec2<bool>(global3.c, global0.b), vec2<bool>(false, global0.b), vec2<bool>(true, false)), !global3.c)), global0.c, _wgslsmith_f_op_vec2_f32(global3.d - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1699f, 472f))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(abs(219f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2241f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.d.x * global0.d.x), _wgslsmith_f_op_f32(ceil(1337f))))), global3.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-791f, 1117f), _wgslsmith_f_op_f32(f32(-1f) * -359f))) * global0.d.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.d.x), 833f, -1051f, global3.d.x) - _wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(533f, global3.d.x, var_0.x, var_0.x))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-var_0);
    let var_2 = !vec3<bool>(all(!vec2<bool>(global0.c, global3.b)), global0.b, global0.b);
    global3 = func_2();
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(vec3<i32>(global1[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_div_i32(reverseBits(-2147483647i ^ arg_2.a.x), ~(-65850i)), ~(~(i32(-1i) * -1i))));
    let var_1 = max(firstTrailingBit(vec2<i32>(firstLeadingBit(firstLeadingBit(-1i)), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global0.a >> (global3.a % 32u), 1u)], 18680i))), reverseBits(reverseBits(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, -1i), vec2<i32>(arg_2.a.x, arg_0.a.x))))));
    global4 = var_0.a.x;
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.a, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global3.a, u_input.a.x), _wgslsmith_clamp_u32(0u, 29980u, global0.a)), 32882u, 1u)), 111575u, global3.a);
    let var_3 = vec4<i32>(~max(-arg_2.a.x, var_1.x), 2147483647i, -24879i, countOneBits(2147483647i));
    return Struct_1(u_input.a.x, true, firstLeadingBit(global0.a) >= global0.a, global0.d);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0.d.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -245f, _wgslsmith_f_op_f32(step(global0.d.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(sign(arg_2.wzy))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(arg_2.ywy)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-427f, global3.d.x, -1202f) - vec3<f32>(global3.d.x, arg_2.x, arg_0.d.x)) + vec3<f32>(arg_3.d.x, global0.d.x, global0.d.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, -272f, var_0)) - _wgslsmith_f_op_vec3_f32(-arg_2.zww))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-472f, 1352f, -1281f), vec3<f32>(arg_2.x, 516f, arg_0.d.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-589f, 1000f, global0.d.x)))))))));
    global1 = array<i32, 1>();
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -189f), 551f, _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(947f - arg_3.d.x)))), var_1);
    let var_3 = arg_3.c;
    return Struct_1(global3.a, var_3, true, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 28>();
    let var_0 = func_5(func_4(func_1(~vec2<u32>(u_input.a.x, 1u), Struct_2(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(0u, 1u)], 5182i, global1[_wgslsmith_index_u32(global0.a, 1u)]))), !(!vec2<bool>(global3.c, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f), 142f)), Struct_2(func_1(select(vec2<u32>(u_input.a.x, 31174u), vec2<u32>(22136u, global0.a), true), func_1(u_input.a, Struct_2(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(global0.a, 1u)], global1[_wgslsmith_index_u32(global0.a, 1u)])), vec2<bool>(global3.b, global0.b)), vec2<bool>(false, false)).a), !vec3<bool>(global0.b, func_2().b, true)), select(all(vec2<bool>(-32148i <= global1[_wgslsmith_index_u32(u_input.a.x, 1u)], all(vec2<bool>(global3.b, true)))), !(!all(vec3<bool>(global3.c, global0.c, global0.c))), global0.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-771f, 1763f, global3.d.x, global0.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, global3.d.x, -254f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.x, 363f, 131f, 1682f) - vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x))))), func_4(func_1(~u_input.a, func_1(vec2<u32>(global3.a, 2505u) >> (u_input.a % vec2<u32>(32u)), Struct_2(vec3<i32>(-21687i, 2147483647i, global1[_wgslsmith_index_u32(75008u, 1u)])), select(vec2<bool>(true, global0.c), vec2<bool>(global0.b, global3.b), false)), select(vec2<bool>(true, global3.b), vec2<bool>(true, true), select(vec2<bool>(global3.c, true), vec2<bool>(false, global0.b), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d.x))) * global3.d.x), Struct_2(vec3<i32>(1i, -17574i, firstTrailingBit(-1i))), vec3<bool>(global3.d.x < -499f, true, func_4(Struct_2(vec3<i32>(45681i, global1[_wgslsmith_index_u32(17780u, 1u)], -1343i)), global0.d.x, Struct_2(vec3<i32>(global1[_wgslsmith_index_u32(global3.a, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)], 17656i)), vec3<bool>(global0.c, global3.c, false)).b & global3.c)));
    var var_1 = func_4(Struct_2(select(vec3<i32>(global1[_wgslsmith_index_u32(6191u, 1u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(17170u, 1u), 1u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(13958u, 1u)], -10878i, -49605i, global1[_wgslsmith_index_u32(1u, 1u)]), vec4<i32>(global1[_wgslsmith_index_u32(global0.a, 1u)], 36513i, -8319i, 30771i))), (vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], 1i, global1[_wgslsmith_index_u32(var_0.a, 1u)]) & vec3<i32>(1i, -37189i, 2147483647i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(37299i, 28803i, global1[_wgslsmith_index_u32(var_0.a, 1u)]), vec3<i32>(global1[_wgslsmith_index_u32(1u, 1u)], -49457i, 2877i)), func_2().b)), global0.d.x, func_1(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.a), u_input.a), select(u_input.a, vec2<u32>(27399u, global0.a), vec2<bool>(true, global0.b))) | ~(vec2<u32>(var_0.a, var_0.a) & vec2<u32>(9349u, global0.a)), Struct_2(countOneBits(vec3<i32>(0i, global1[_wgslsmith_index_u32(global0.a, 1u)], global1[_wgslsmith_index_u32(global3.a, 1u)]) >> (vec3<u32>(1u, global0.a, global0.a) % vec3<u32>(32u)))), select(select(!vec2<bool>(var_0.b, global0.b), vec2<bool>(false, var_0.b), func_5(var_0, false, vec4<f32>(1000f, var_0.d.x, var_0.d.x, -216f), Struct_1(u_input.a.x, global0.c, var_0.b, var_0.d)).b), !(!vec2<bool>(true, global3.b)), !vec2<bool>(false, var_0.c))), vec3<bool>(true, true, true));
    let var_2 = global1[_wgslsmith_index_u32(~0u, 1u)] ^ ~(i32(-1i) * -1i);
    var var_3 = var_0;
    var_3 = Struct_1(~(~firstLeadingBit(0u)), var_3.b, var_1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_3.d.x)), _wgslsmith_f_op_f32(-588f * var_1.d.x)))) + func_2().d));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(~(~vec3<u32>(var_1.a, var_3.a, global3.a))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(var_1.a, 28u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), ~vec3<u32>(var_3.a, 4294967295u, 4294967295u)), global2[_wgslsmith_index_u32(var_3.a, 28u)])), -((vec3<i32>(-19120i, -1i, 12762i) >> (global2[_wgslsmith_index_u32(56435u, 28u)] % vec3<u32>(32u))) | vec3<i32>(28954i, 2147483647i, global1[_wgslsmith_index_u32(1u, 1u)])) << (abs(~global2[_wgslsmith_index_u32(global0.a ^ global0.a, 28u)]) % vec3<u32>(32u)), vec4<u32>(4294967295u, 83032u, ~global0.a ^ ~var_0.a, ~(12359u ^ var_1.a)));
}

