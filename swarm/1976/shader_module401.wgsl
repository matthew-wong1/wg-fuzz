struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: f32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-527f, 545f, 145f, -1590f, 289f, 503f, 396f, 1000f, 1669f, 185f, 920f, -2681f, 1382f, -459f, -2543f, -1000f, 2317f, 952f, -807f, -1000f, 1068f, 1305f, 112f, -1122f);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-48898i, 12361i, 0i, -1i), vec4<i32>(2147483647i, -1i, -35048i, 0i), vec4<i32>(-54118i, 24499i, i32(-2147483648), -5522i), vec4<i32>(1i, -31096i, -1i, 38758i), vec4<i32>(i32(-2147483648), 1i, 0i, 44679i), vec4<i32>(0i, 1969i, i32(-2147483648), -30352i), vec4<i32>(37818i, -48150i, 0i, -25342i), vec4<i32>(24032i, -49846i, 2147483647i, 32601i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> vec3<u32> {
    let var_0 = Struct_5(Struct_4(true, true, Struct_1(~(vec3<u32>(4294967295u, u_input.a, 0u) & vec3<u32>(63849u, u_input.a, u_input.a)), vec4<u32>(1u | u_input.a, ~12716u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 11630u), countOneBits(15709u)), vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 24u)])), _wgslsmith_div_f32(661f, -1358f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_2 * global0[_wgslsmith_index_u32(4294967295u, 24u)])), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec4<u32>(4294967295u, 72148u, 0u, u_input.a)), countOneBits(vec2<i32>(40478i, 15678i))), !(!(!vec4<bool>(false, arg_0, true, false))), -(~(~vec2<i32>(-30097i, -2147483647i)))), Struct_2(Struct_1(vec3<u32>(15099u, 13633u, ~35216u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], 773f, arg_1.x, arg_2), vec4<f32>(arg_2, arg_1.x, global0[_wgslsmith_index_u32(42836u, 24u)], arg_2)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, -943f, global0[_wgslsmith_index_u32(0u, 24u)], -698f)))), max(1813u >> (u_input.a % 32u), _wgslsmith_clamp_u32(1u, u_input.a, u_input.a)), ~_wgslsmith_div_vec2_i32(vec2<i32>(41024i, 35713i), vec2<i32>(-26847i, 37733i))), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, global1.x), global1.x || global1.x), !any(select(vec3<bool>(true, false, false), vec3<bool>(arg_0, true, false), false))), arg_2, vec2<bool>(!(!(arg_0 | arg_0)), any(select(vec2<bool>(true, false), vec2<bool>(arg_0, global1.x), vec2<bool>(false, false))) && true), 36146u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f));
    global2 = array<vec4<i32>, 8>();
    var_1 = arg_1.x;
    let var_2 = var_0.d;
    return ~(~var_0.b.a.a);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.x, 24u)] + _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1853f))))));
    var_0 = _wgslsmith_f_op_f32(trunc(-1966f));
    let var_1 = ~(arg_2.x >> (_wgslsmith_clamp_u32(~1u, _wgslsmith_mod_u32(arg_2.x, arg_0.e.a.x), 4294967295u) % 32u));
    var var_2 = Struct_1(~vec3<u32>(~(~0u), ~abs(99292u), arg_2.x), vec4<u32>(_wgslsmith_div_u32(~4294967295u, ~0u), _wgslsmith_clamp_u32(84167u, _wgslsmith_div_u32(u_input.a, arg_0.a.x), 4294967295u), _wgslsmith_mult_u32(~arg_0.a.x, 1u), u_input.a) ^ vec4<u32>(arg_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1, u_input.a), vec3<u32>(var_1, 456u, var_1) ^ arg_0.a), u_input.a, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 24u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 7500u, arg_0.e.b.x), arg_0.e.b), 24u)]), arg_0.b), firstLeadingBit(func_3(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, global0[_wgslsmith_index_u32(29841u, 24u)], -954f)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1, 4294967295u), ~4294967295u), 24u)]).x), ~vec2<i32>(24846i, _wgslsmith_div_i32(-arg_0.e.e.x, arg_3)));
    global1 = vec2<bool>(countOneBits(-2147483647i) <= abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.e.e, arg_0.e.e), arg_0.e.e)), true);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c.x)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 24u)]))), 1631f, _wgslsmith_f_op_f32(trunc(539f)), _wgslsmith_f_op_f32(-349f * -255f))));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(func_4(Struct_3(func_3(var_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-966f, var_0.x, var_0.x)), -1000f) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), firstLeadingBit(vec3<u32>(23644u, 4050u, 6901u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1552f)) - 1530f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global0[_wgslsmith_index_u32(5884u, 24u)])) >= _wgslsmith_f_op_f32(438f + _wgslsmith_f_op_f32(sign(-1191f))), global1.x, Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec4<u32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 74182u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 98395u, 4294967295u)), 4294967295u, reverseBits(u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1461f, 319f, -2035f, 167f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], -210f, -1000f))), 23278u, min(-vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, 0i) << (vec2<u32>(4294967295u, 41006u) % vec2<u32>(32u))))), true, vec2<u32>(1u, ~max(u_input.a, 1u)), arg_0));
    var var_3 = Struct_3(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 18511u, u_input.a), func_3(!global1.x, var_0.yzx, _wgslsmith_f_op_f32(-var_0.x))), func_3(global1.x, var_0.yyy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 24u)]) - 340f)), reverseBits(vec3<u32>(u_input.a, 21411u, u_input.a) << (~vec3<u32>(4294967295u, 1u, 1u) % vec3<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1192f, _wgslsmith_f_op_f32(-var_0.x)) - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -201f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) < _wgslsmith_div_f32(global0[_wgslsmith_index_u32(820u, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 24u)]))), all(vec3<bool>(!(arg_0 != arg_0), !any(vec4<bool>(true, false, true, false)), global1.x)), Struct_1(~vec3<u32>(~71586u, u_input.a, firstTrailingBit(u_input.a)), ~abs(vec4<u32>(1711u, 1u, u_input.a, 72508u)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(0u), 24u)]), -523f, _wgslsmith_f_op_f32(step(1127f, var_0.x))), u_input.a, countOneBits(~(vec2<i32>(54051i, arg_0) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))));
    let var_4 = Struct_4(var_3.e.e.x == arg_0, var_1 || var_3.c, var_3.e, vec4<bool>(true, (var_3.e.e.x << (abs(var_3.a.x) % 32u)) != (arg_0 ^ -var_3.e.e.x), all(vec4<bool>(!global1.x, true, var_1, true)), any(!vec4<bool>(false, true, true, var_1))), _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -10238i, var_3.e.e.x) ^ select(-vec2<i32>(36206i, arg_0), var_3.e.e, false), vec2<i32>(~abs(var_3.e.e.x), 1i)));
    return var_4;
}

fn func_1() -> i32 {
    let var_0 = Struct_5(func_2(abs(54950i)), Struct_2(Struct_1(~abs(vec3<u32>(u_input.a, u_input.a, 18876u)), firstTrailingBit(vec4<u32>(24981u, u_input.a, 66356u, 15390u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 24u)], 855f, global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], -398f, -2376f, 239f)))), _wgslsmith_mult_u32(reverseBits(u_input.a), ~63068u), vec2<i32>(1i, 1i)), select(select(vec2<bool>(false, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), true), vec2<bool>(global1.x, global1.x)), vec2<bool>(false, true), func_2(1i).d.zw), !(u_input.a >= 4294967295u) != global1.x), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, u_input.a), 24u)])), !select(vec2<bool>(true, any(vec2<bool>(global1.x, false))), !(!vec2<bool>(global1.x, true)), vec2<bool>(true | global1.x, global1.x)), 79022u);
    global2 = array<vec4<i32>, 8>();
    let var_1 = var_0.b.a.c.zw;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(var_0.a.c.b.xzx, -120f, false, var_0.d.x, Struct_1(var_0.b.a.b.wyx, vec4<u32>(26392u, u_input.a, 41150u, var_0.a.c.a.x), vec4<f32>(-234f, -271f, var_1.x, 695f), 1u, vec2<i32>(var_0.a.c.e.x, var_0.b.a.e.x))), global1.x, vec2<u32>(4294967295u, u_input.a), -2147483647i)), func_2(0i).c.c.x, global0[_wgslsmith_index_u32(16064u, 24u)]))) - var_0.b.a.c.zwy), var_0.b.a.c.zwy));
    global2 = array<vec4<i32>, 8>();
    return var_0.b.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global1 = select(vec2<bool>(any(vec3<bool>(global1.x, true, global1.x)), !global1.x), !(!vec2<bool>(true, global1.x)), !(!select(vec2<bool>(true, true), vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x))));
    let var_1 = select(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, 2801i), func_1()), select(vec2<i32>(1i, 1i), vec2<i32>(42818i, 1i), !vec2<bool>(true, global1.x)), abs(vec2<i32>(-12880i, -1i))) << ((max(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 32673u)) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7490u), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.a ^ 79187u)) % vec2<u32>(32u)), -(~vec2<i32>(1i, 1i)), select(!vec2<bool>(all(vec4<bool>(global1.x, false, global1.x, global1.x)), !global1.x), vec2<bool>(true, true), !vec2<bool>(!global1.x, global0[_wgslsmith_index_u32(4294967295u, 24u)] > global0[_wgslsmith_index_u32(u_input.a, 24u)])));
    let var_2 = ~var_1;
    global0 = array<f32, 24>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~15973u, 24u)]) * -2702f);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(u_input.a & u_input.a, 8u)], -global2[_wgslsmith_index_u32(min(u_input.a, _wgslsmith_clamp_u32(62420u, 0u, firstTrailingBit(u_input.a))), 8u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], 364f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], var_3))))));
}

