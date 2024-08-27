struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, true, true), 1u), 1108f, Struct_1(vec4<bool>(false, true, false, true), 0u));

var<private> global1: array<bool, 23>;

var<private> global2: array<f32, 22>;

var<private> global3: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(vec4<bool>(false, true, true, false), 1u), vec4<i32>(i32(-2147483648), 0i, 2867i, 23599i)), Struct_3(Struct_1(vec4<bool>(false, false, true, false), 53711u), vec4<i32>(30383i, -18562i, i32(-2147483648), 1i)), Struct_3(Struct_1(vec4<bool>(false, false, true, true), 71377u), vec4<i32>(8722i, -31827i, -1i, -5560i)), Struct_3(Struct_1(vec4<bool>(false, false, false, true), 0u), vec4<i32>(63180i, 14032i, 2147483647i, -13203i)), Struct_3(Struct_1(vec4<bool>(false, true, true, true), 71266u), vec4<i32>(-2840i, i32(-2147483648), 8497i, -1i)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), 50828u), vec4<i32>(0i, -19522i, -4466i, -25143i)), Struct_3(Struct_1(vec4<bool>(false, false, false, false), 4294967295u), vec4<i32>(-23796i, -17530i, 6344i, 1i)), Struct_3(Struct_1(vec4<bool>(true, false, false, true), 60888u), vec4<i32>(2147483647i, 2147483647i, -10357i, i32(-2147483648))), Struct_3(Struct_1(vec4<bool>(true, false, false, true), 0u), vec4<i32>(2147483647i, 85454i, -1i, 2147483647i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1626f, global2[_wgslsmith_index_u32(12555u, 22u)], -897f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.b + _wgslsmith_div_f32(global0.b, -883f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0.a.b, 22u)], -147f) + 526f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f) * _wgslsmith_f_op_f32(abs(1077f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1031f, global2[_wgslsmith_index_u32(u_input.c, 22u)], _wgslsmith_f_op_f32(floor(global0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global0.a.b, 22u)], 1484f, global0.b) + vec3<f32>(-616f, global0.b, 1075f))))));
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(min(reverseBits(arg_0.x), ~2147483647i)), -_wgslsmith_div_i32(arg_0.x, -arg_0.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.zz, -(arg_0.yy & arg_0.yy)), 1i), 0i);
    var_2 = vec3<i32>(abs(min(abs(arg_0.x), u_input.a) ^ ~_wgslsmith_mult_i32(-15141i, 0i)), abs(1i), -1i);
    let var_3 = Struct_2(global0.a, var_1.x, global0.c);
    return vec2<u32>(reverseBits(abs(~global0.a.b << (1u % 32u))), 109892u);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    var var_0 = ~func_3(vec3<i32>(u_input.b, 0i, 0i)) >> (func_3(select(countOneBits(~vec3<i32>(2147483647i, 1i, 0i)), select(vec3<i32>(arg_3.x, arg_3.x, -4452i) << (vec3<u32>(u_input.c, global0.c.b, 4294967295u) % vec3<u32>(32u)), vec3<i32>(arg_0, 37043i, -11743i), !vec3<bool>(global1[_wgslsmith_index_u32(43109u, 23u)], false, true)), abs(arg_1.b) < 0u)) % vec2<u32>(32u));
    var var_1 = 703f;
    var_1 = -1000f;
    var var_2 = !(var_0.x > 4294967295u);
    let var_3 = ~vec3<i32>(-8317i, arg_3.x, reverseBits(~(-4055i))) << ((_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(72039u, 15427u, 2877u), ~vec3<u32>(13346u, arg_1.b, 3918u)), vec3<u32>(23212u, 81847u, var_0.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(57699u, 14167u, var_0.x)) % vec3<u32>(32u))) & (firstTrailingBit(vec3<u32>(u_input.c, 23251u, arg_1.b) ^ vec3<u32>(arg_1.b, arg_1.b, arg_1.b)) >> (vec3<u32>(4294967295u, max(79317u, 55501u), ~0u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(329f)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(1u & var_0.x, abs(arg_1.b)), 22u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(u_input.a, global0.c, global0.a.a.x, ~(~vec2<i32>(28685i, arg_1)))), arg_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-757f, arg_3))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1401f - arg_3)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_3, global2[_wgslsmith_index_u32(global0.c.b, 22u)], global0.b)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2595f, global2[_wgslsmith_index_u32(23034u, 22u)], arg_2, 768f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1127f, 935f, 345f, global0.b), vec4<f32>(global2[_wgslsmith_index_u32(1u, 22u)], 1000f, arg_3, -272f), false))))))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(~firstLeadingBit(1u), ~(global0.c.b | u_input.c))), u_input.c, 75462u), 9u)];
    let var_2 = reverseBits(min(_wgslsmith_clamp_vec3_i32((vec3<i32>(5027i, -29560i, u_input.b) << (vec3<u32>(0u, 1u, u_input.c) % vec3<u32>(32u))) | var_1.b.yxy, var_1.b.wxw, -vec3<i32>(u_input.a, arg_1, arg_1)), reverseBits(vec3<i32>(arg_1, _wgslsmith_div_i32(u_input.a, 0i), abs(arg_1)))));
    var var_3 = vec2<i32>(countOneBits(var_2.x), -var_1.b.x >> (~abs(_wgslsmith_div_u32(0u, arg_0.b)) % 32u));
    let var_4 = -firstLeadingBit(~firstLeadingBit(abs(var_2.x)));
    return Struct_2(Struct_1(!select(select(arg_0.a, vec4<bool>(global1[_wgslsmith_index_u32(15619u, 23u)], global0.a.a.x, arg_0.a.x, var_1.a.a.x), global1[_wgslsmith_index_u32(var_1.a.b, 23u)]), select(vec4<bool>(arg_0.a.x, global1[_wgslsmith_index_u32(var_1.a.b, 23u)], global0.a.a.x, false), arg_0.a, false), 120800u != var_1.a.b), arg_0.b << (abs(arg_0.b) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-996f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), -218f), var_1.a);
}

fn func_1(arg_0: Struct_3) -> vec3<i32> {
    global2 = array<f32, 22>();
    global0 = func_4(global0.c, u_input.b, global2[_wgslsmith_index_u32(u_input.c, 22u)], _wgslsmith_f_op_f32(func_2(24544i, Struct_1(global0.a.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.b, 4294967295u, 1u, 5169u), vec4<u32>(1u, arg_0.a.b, 30485u, global0.a.b))), all(arg_0.a.a), arg_0.b.yy)));
    global3 = array<Struct_3, 9>();
    global0 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(627f, _wgslsmith_f_op_f32(-183f + -1391f))), func_4(Struct_1(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(5444u, 23u)], false, true), arg_0.a.a, all(arg_0.a.a.ww)), ~1u), 11978i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.c.b, 22u)]))), -1891f).c);
    global2 = array<f32, 22>();
    return vec3<i32>(-2147483647i, arg_0.b.x, firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, u_input.a ^ -19217i)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> Struct_2 {
    global3 = array<Struct_3, 9>();
    let var_0 = _wgslsmith_add_i32(-20779i, abs(_wgslsmith_add_i32(u_input.b, u_input.a))) | _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0.x, func_1(Struct_3(global0.a, vec4<i32>(1i, arg_0.x, u_input.a, u_input.b))).x, reverseBits(-54096i)), _wgslsmith_mod_i32(24678i, -11806i));
    global1 = array<bool, 23>();
    global0 = func_4(Struct_1(vec4<bool>(any(func_4(Struct_1(vec4<bool>(arg_1.a.a.x, arg_1.b, global0.a.a.x, true), global0.c.b), 0i, global2[_wgslsmith_index_u32(0u, 22u)], arg_1.e.b).a.a.zz), true, (global1[_wgslsmith_index_u32(u_input.c, 23u)] & arg_1.b) | false, global1[_wgslsmith_index_u32(1u, 23u)]), 1u), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) + -1071f), _wgslsmith_f_op_f32(-arg_3));
    var var_1 = firstLeadingBit(~(~(~vec4<u32>(global0.c.b, 18043u, arg_1.a.b, arg_1.a.b) & ~vec4<u32>(global0.a.b, arg_1.a.b, global0.c.b, u_input.c))));
    return Struct_2(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f)) * _wgslsmith_div_f32(-119f, _wgslsmith_f_op_f32(f32(-1f) * -1144f))), func_4(Struct_1(vec4<bool>(select(global0.a.a.x, true, global0.c.a.x), global0.a.a.x, global1[_wgslsmith_index_u32(~arg_2, 23u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 60647u), 23u)]), global0.a.b), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1400f, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1070f))))).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    global0 = func_5(func_1(Struct_3(global0.a, vec4<i32>(24496i, _wgslsmith_add_i32(0i, 0i), _wgslsmith_add_i32(u_input.a, 0i), 1i))), Struct_4(Struct_1(!func_4(Struct_1(global0.a.a, 1u), -2147483647i, 108f, global2[_wgslsmith_index_u32(4294967295u, 22u)]).a.a, global0.a.b), !select(u_input.b > 515i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(136220u, 51259u), 23u)], !global0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1815f, global2[_wgslsmith_index_u32(9341u, 22u)]) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(942f))))), global0.a.a, Struct_2(global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b - global0.b))), global0.a)), countOneBits(u_input.c) << (func_4(func_4(Struct_1(global0.a.a, 78154u), -2147483647i, global2[_wgslsmith_index_u32(func_3(vec3<i32>(u_input.b, 0i, 6152i)).x, 22u)], 923f).a, _wgslsmith_dot_vec2_i32(-vec2<i32>(26060i, -24297i), ~vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_f_op_f32(-466f + _wgslsmith_div_f32(global0.b, 670f)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(32014u, ~150976u), 22u)]).c.b % 32u), _wgslsmith_f_op_f32(1822f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1443f), _wgslsmith_f_op_f32(max(global0.b, -168f))))));
    global2 = array<f32, 22>();
    let var_0 = func_4(func_4(func_4(Struct_1(global0.a.a, max(u_input.c, 471u)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - global2[_wgslsmith_index_u32(u_input.c, 22u)])), global2[_wgslsmith_index_u32(u_input.c, 22u)]).a, u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1220f), global2[_wgslsmith_index_u32(1u, 22u)]).c, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) + 283f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.b, global0.b, u_input.a == -68878i)), _wgslsmith_div_f32(525f, 487f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-248f, -1025f, 788f), vec3<f32>(1000f, global2[_wgslsmith_index_u32(var_0.a.b, 22u)], var_0.b), var_0.c.a.xzz))))), 82613u, 0u, -vec3<i32>(u_input.b, -30220i, ~2147483647i) >> (firstTrailingBit(~(~vec3<u32>(global0.a.b, 69286u, global0.c.b))) % vec3<u32>(32u)));
}

