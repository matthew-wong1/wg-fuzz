struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<f32, 9> = array<f32, 9>(589f, 1465f, -530f, -445f, 1076f, 1368f, 1543f, -422f, -814f);

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(1149f, true), Struct_2(1015f, true), Struct_2(-1358f, true), Struct_2(-1603f, true), Struct_2(-411f, false), Struct_2(-570f, true), Struct_2(-1411f, true), Struct_2(-769f, true), Struct_2(-407f, false), Struct_2(147f, false), Struct_2(-889f, true), Struct_2(656f, false), Struct_2(-340f, true), Struct_2(-737f, false), Struct_2(-1424f, true), Struct_2(-185f, true), Struct_2(-624f, true), Struct_2(-285f, false), Struct_2(-1000f, false), Struct_2(1000f, true), Struct_2(-283f, false), Struct_2(-873f, true), Struct_2(-1109f, true), Struct_2(-1308f, false), Struct_2(792f, true), Struct_2(1000f, false), Struct_2(-918f, true), Struct_2(368f, true), Struct_2(1221f, true), Struct_2(-1000f, false), Struct_2(-877f, false), Struct_2(-162f, false));

var<private> global3: bool;

var<private> global4: array<i32, 25> = array<i32, 25>(-9996i, -1i, 32776i, 1i, i32(-2147483648), 58957i, -46883i, 2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i, -3196i, 0i, 0i, -8334i, 37573i, -11520i, i32(-2147483648), 2147483647i, 0i, 25620i, -37673i, 1i, 0i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 9u)] - global1[_wgslsmith_index_u32(4294967295u, 9u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.d, 9u)], 1210f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 9u)])))), true);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, abs(4294967295u), 10775u, firstTrailingBit(u_input.e.x)), abs(abs(vec4<u32>(121343u, u_input.e.x, u_input.e.x, u_input.d)))) & _wgslsmith_mult_u32(~firstTrailingBit(26623u), 15645u), firstTrailingBit(0u) & _wgslsmith_div_u32(~u_input.e.x, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 63968u), u_input.e))), ~(~max(25281u, u_input.b)), ~4294967295u);
    var var_2 = Struct_3(!all(select(select(vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 12u)]), true), vec2<bool>(true, true), select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true), global0[_wgslsmith_index_u32(1u, 12u)]))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(0i, u_input.a.x)), reverseBits(-2147483647i), -(global4[_wgslsmith_index_u32(1u, 25u)] | -2147483647i), global4[_wgslsmith_index_u32(u_input.b, 25u)]), -(-vec4<i32>(global4[_wgslsmith_index_u32(68252u, 25u)], global4[_wgslsmith_index_u32(u_input.d, 25u)], u_input.a.x, global4[_wgslsmith_index_u32(50068u, 25u)]) ^ vec4<i32>(global4[_wgslsmith_index_u32(var_1.x, 25u)], u_input.a.x, 55830i, global4[_wgslsmith_index_u32(46547u, 25u)]))), Struct_1(abs(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(78971u, u_input.c.x, 1u)), vec3<u32>(u_input.b, u_input.e.x, 25508u))), var_0.a));
    let var_3 = -vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_2.b.xzz ^ vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), -u_input.a), ~(~var_2.b.zww)), _wgslsmith_dot_vec2_i32(var_2.b.wy | ~vec2<i32>(var_2.b.x, 17792i), max(vec2<i32>(-52884i, 52869i), u_input.a.xz) & firstLeadingBit(u_input.a.xx)), _wgslsmith_sub_i32(43890i, -1i));
    let var_4 = vec4<bool>(all(select(select(!vec3<bool>(true, var_0.b, var_0.b), !vec3<bool>(var_0.b, false, true), vec3<bool>(false, false, var_0.b)), !vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(1u, 12u)], false), !(true & var_0.b))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(var_2.c.a.x), ~_wgslsmith_mod_u32(12511u, 1u)), 25u)] <= -14152i, true, global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_1.x, var_2.c.a.x, 1u, var_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, var_2.c.a.x), vec4<u32>(var_2.c.a.x, var_1.x, 0u, var_1.x))), (vec4<u32>(7658u, 1u, u_input.e.x, 4294967295u) & vec4<u32>(1u, 11015u, var_2.c.a.x, var_1.x)) ^ ~vec4<u32>(27832u, 14266u, var_1.x, var_2.c.a.x)), 1u, all(vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(58947u, 12u)], false, true)), all(vec3<bool>(false, var_0.b, var_2.a)), all(vec4<bool>(global0[_wgslsmith_index_u32(111666u, 12u)], var_2.a, var_0.b, false))))), 12u)]);
    return ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_2.c.a.x, u_input.c.x, 10118u), firstLeadingBit(u_input.e))));
}

fn func_2(arg_0: f32) -> vec3<i32> {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(~u_input.c.x, u_input.e.x << (~4294967295u % 32u), 4294967295u), u_input.b, u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 239f) + global1[_wgslsmith_index_u32(u_input.e.x, 9u)]));
    var var_1 = _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(u_input.d, var_0.a.x, 1u)), vec3<u32>(abs(1u), 0u, 52567u)), ~func_3());
    let var_2 = firstTrailingBit(reverseBits(u_input.e.yy));
    global0 = array<bool, 12>();
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    return u_input.a;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_4 {
    global1 = array<f32, 9>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, global1[_wgslsmith_index_u32(~40307u, 9u)])) + arg_0.a), _wgslsmith_f_op_f32(arg_0.a - arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1029f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d ^ 1u, 9u)] + _wgslsmith_f_op_f32(1291f - global1[_wgslsmith_index_u32(7377u, 9u)]))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 29131u, 4294967295u) >> (u_input.e % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x))), 9u)]);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2386f))), var_0.x)));
    var var_2 = false;
    var var_3 = countOneBits(1540i);
    return Struct_4(!(!vec2<bool>(global0[_wgslsmith_index_u32(24124u, 12u)] || arg_0.b, any(vec4<bool>(arg_0.b, global0[_wgslsmith_index_u32(32090u, 12u)], arg_0.b, global0[_wgslsmith_index_u32(u_input.d, 12u)])))), Struct_3(true, reverseBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, arg_1, -28186i, 1i), vec4<i32>(arg_1, 14963i, 1i, -32186i)))), Struct_1(~vec3<u32>(4294967295u, u_input.d, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(min(-250f, 1471f))))), select(vec2<bool>(false, true), vec2<bool>(var_0.x == -146f, arg_0.b), arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 32>();
    global4 = array<i32, 25>();
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.e.x, 48437u, u_input.d), Struct_3(true, vec4<i32>(-24045i, global4[_wgslsmith_index_u32(u_input.c.x, 25u)], global4[_wgslsmith_index_u32(0u, 25u)], 12157i), Struct_1(vec3<u32>(u_input.d, 0u, u_input.c.x), -976f)))) * _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(13664u, 9u)], global1[_wgslsmith_index_u32(8052u, 9u)])))), false), -_wgslsmith_dot_vec3_i32(func_2(-370f), countOneBits(~vec3<i32>(-39891i, global4[_wgslsmith_index_u32(u_input.d, 25u)], global4[_wgslsmith_index_u32(21979u, 25u)]))));
    let var_1 = reverseBits(u_input.d);
    global4 = array<i32, 25>();
    var var_2 = vec3<i32>(-68374i, -var_0.b.b.x, abs(-1i) >> (~select(var_0.b.c.a.x ^ 0u, min(var_0.b.c.a.x, 10073u), !global0[_wgslsmith_index_u32(u_input.c.x, 12u)]) % 32u));
    var var_3 = Struct_4(!(!(!vec2<bool>(var_0.c.x, true))), func_4(global2[_wgslsmith_index_u32(max(~_wgslsmith_mult_u32(0u, var_1), ~var_0.b.c.a.x), 32u)], _wgslsmith_dot_vec3_i32(u_input.a, u_input.a >> (~vec3<u32>(u_input.e.x, var_0.b.c.a.x, 10012u) % vec3<u32>(32u)))).b, vec2<bool>(all(select(!var_0.a, var_0.a, global0[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(93594u, 32u)], -2147483647i).b.c.a.x, 12u)])), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.b.c.b)), 909f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(abs(var_3.b.c.a.x), 9u)]))), _wgslsmith_f_op_f32(func_1(abs(vec3<u32>(67512u, var_1, var_3.b.c.a.x)), func_4(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1, 1u, 8365u), 32u)], -3859i).b))), ~(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_0.b.c.a.x, 122055u, var_3.b.c.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(49533u, var_1, u_input.c.x, 838u), vec4<u32>(34369u, var_0.b.c.a.x, var_3.b.c.a.x, var_3.b.c.a.x))) ^ vec4<u32>(_wgslsmith_sub_u32(var_0.b.c.a.x, var_0.b.c.a.x), 1u, 4294967295u, _wgslsmith_clamp_u32(40342u, 12124u, 16286u))), global1[_wgslsmith_index_u32(~0u, 9u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(284f, 836f, 1064f) + vec3<f32>(var_3.b.c.b, global1[_wgslsmith_index_u32(56169u, 9u)], 2660f)))) + vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(17170u, 9u)] * var_0.b.c.b), -822f, _wgslsmith_div_f32(-1296f, -1480f))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.c.b), var_3.b.c.b, var_3.b.c.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(var_0.b.c.a.x, 9u)], -1620f, 815f))))));
}

