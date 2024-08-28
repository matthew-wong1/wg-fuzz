struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5>;

var<private> global1: array<i32, 22> = array<i32, 22>(1701i, 0i, -1i, 0i, 0i, 45957i, 0i, 46203i, -5064i, -38994i, 1i, -8797i, 10266i, i32(-2147483648), 2147483647i, -1i, -19312i, 39480i, -25351i, i32(-2147483648), -69654i, 68068i);

var<private> global2: vec3<f32> = vec3<f32>(-221f, -1192f, 1899f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = vec2<bool>(select(!(!any(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.a.x))), !any(select(vec4<bool>(arg_0.c, arg_0.c, false, false), vec4<bool>(arg_0.c, arg_0.a.x, false, arg_0.a.x), arg_0.c)), true & all(!vec3<bool>(false, arg_0.a.x, true))), false | arg_0.a.x);
    global2 = _wgslsmith_f_op_vec3_f32(step(arg_1.xyy, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1.xxz + arg_1.zxx)))));
    var var_1 = select(vec2<bool>(true, true), !var_0, var_0.x);
    global1 = array<i32, 22>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -965f))) + global2.x);
    return ~reverseBits(firstLeadingBit(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(31508u, 0u, 4294967295u, 17160u), any(var_0))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~1u, _wgslsmith_mod_u32(10337u, 11141u), _wgslsmith_dot_vec3_u32(vec3<u32>(6208u, 43037u, 11783u), vec3<u32>(28691u, 57464u, 4294967295u))), func_3(Struct_1(vec2<bool>(false, false), 1000f, true), vec4<f32>(global2.x, 488f, global2.x, 1935f))), vec4<u32>(~1u, func_3(Struct_1(vec2<bool>(true, arg_0), global2.x, true), vec4<f32>(-1750f, global2.x, global2.x, global2.x)).x >> (1u % 32u), 1u, ~(~8522u))) >> (~(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(firstTrailingBit(77930u), 1u, min(0u, 4294967295u), _wgslsmith_div_u32(0u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(201f)))))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 94171u), var_0.zw) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~var_0.yy, firstTrailingBit(vec2<u32>(97837u, var_0.x)), vec2<u32>(var_0.x, var_0.x) & var_0.zx)), true || arg_0, abs(~u_input.a.zy) << (~var_0.zx % vec2<u32>(32u)), Struct_1(vec2<bool>(true, arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -732f), global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, 1470f, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(306f, 773f)) - -515f) <= global2.x));
    var var_2 = _wgslsmith_mult_vec3_i32((-vec3<i32>(41590i, var_1.d.x, 8451i) << (vec3<u32>(var_0.x, var_1.b, 1806u) % vec3<u32>(32u))) | ((u_input.a.wxz >> (vec3<u32>(62849u, var_0.x, var_0.x) % vec3<u32>(32u))) >> (firstLeadingBit(vec3<u32>(var_0.x, 4294967295u, 4294967295u)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(u_input.a.x & var_1.d.x, global1[_wgslsmith_index_u32(var_0.x & var_1.b, 22u)]), -5458i, 1i)) | _wgslsmith_div_vec3_i32(~u_input.a.wzy, abs(vec3<i32>(u_input.a.x, -36645i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, var_1.b), vec2<u32>(4294967295u, 4294967295u)), 22u)])));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, -268f, var_1.a), vec3<f32>(global2.x, 447f, -238f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), -1176f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, global2.x, global2.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * vec3<f32>(-1656f, 621f, -247f)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-913f, 1000f, var_1.a)))))))));
    let var_3 = global0[_wgslsmith_index_u32(var_0.x, 5u)];
    return Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, _wgslsmith_mod_u32(22511u, firstTrailingBit(var_0.x))), var_0.xz));
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(vec2<u32>(func_3(Struct_1(vec2<bool>(true, true), 1257f, true), vec4<f32>(694f, -893f, 731f, global2.x)).x | arg_0.a.x, ~4294967295u));
    let var_1 = ~(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0.a.x, 4936u, 42196u), vec4<u32>(4294967295u, var_0.a.x, 89213u, 14863u))) >> (vec4<u32>(~var_0.a.x ^ _wgslsmith_mod_u32(1046u, 26211u), ~_wgslsmith_add_u32(92386u, 76381u), ~arg_0.a.x, arg_0.a.x) % vec4<u32>(32u)));
    global1 = array<i32, 22>();
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-217f * global2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-1341f - global2.x)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1265f, _wgslsmith_f_op_f32(round(-326f))))), _wgslsmith_f_op_f32(max(1193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1623f - global2.x)))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(527f * -1771f))))))));
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(var_1.x), 5u)];
    return _wgslsmith_f_op_f32(-var_3.a);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(208f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(true))) - _wgslsmith_f_op_f32(round(1596f)))), ~(firstLeadingBit(~47731u) << (1u % 32u)), any(vec4<bool>(true, true, true, true)) | (true | select(true, all(vec2<bool>(true, true)), true)), vec2<i32>(~global1[_wgslsmith_index_u32(16u, 22u)], -26609i), Struct_1(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, true, true, false)), false)), global2.x, any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)))));
    var_0 = Struct_3(-522f, ~(~var_0.b), any(select(select(vec3<bool>(var_0.e.a.x, false, var_0.c), select(vec3<bool>(false, var_0.c, true), vec3<bool>(var_0.e.a.x, true, var_0.c), var_0.e.c), vec3<bool>(var_0.e.c, var_0.c, var_0.c)), !select(vec3<bool>(var_0.e.c, true, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), true), var_0.e.a.x)), firstTrailingBit(-countOneBits(var_0.d)), var_0.e);
    global0 = array<Struct_4, 5>();
    var var_1 = var_0.b;
    var var_2 = Struct_1(select(select(select(select(var_0.e.a, var_0.e.a, true), vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(false, var_0.e.c), var_0.e.a, var_0.e.a)), vec2<bool>(true, true), select(!vec2<bool>(false, var_0.c), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, true))), var_0.e.a, var_0.e.a), -103f, false);
    return var_0.e;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: i32) -> Struct_1 {
    global1 = array<i32, 22>();
    var var_0 = _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-arg_0.b));
    var_0 = -901f;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(-1323f)))), vec3<bool>(any(!(!vec2<bool>(arg_0.a.x, arg_0.a.x))), arg_0.a.x, func_1().a.x && arg_0.c));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), -443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + -2327f));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_5(func_1(), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(36395u, 42153u, 0u), min(vec3<u32>(95784u, 1u, 1u), vec3<u32>(1u, 4294967295u, 74213u))) >> (reverseBits(reverseBits(0u)) % 32u), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(9720u, 1u), 0u), 0u | _wgslsmith_mult_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(65582u, 15015u, 4294967295u), vec3<u32>(12963u, 21042u, 1u)))), 22u)], u_input.a.x | u_input.b, u_input.a.x);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.b, -956f))) * vec3<f32>(global2.x, _wgslsmith_f_op_f32(311f + var_1.b), global2.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-var_1.b)), global2.x, var_1.b))));
    var var_3 = var_1.c && false;
    var var_4 = Struct_2(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 7120u), vec3<u32>(13363u, 5068u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(59473u, 57398u), vec2<u32>(4294967295u, 46213u))), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)));
    let var_5 = !func_5(Struct_1(!var_1.a, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(global2.x + -786f)), !(!var_1.a.x)), countOneBits(17075i), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, -22504i), vec4<i32>(-38336i, global1[_wgslsmith_index_u32(var_4.a.x, 22u)], u_input.a.x, global1[_wgslsmith_index_u32(var_4.a.x, 22u)])), firstLeadingBit(4953i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, global1[_wgslsmith_index_u32(var_4.a.x, 22u)], -2147483647i, u_input.b)), u_input.a) >> (var_4.a.x % 32u)).c;
    var var_6 = _wgslsmith_mult_u32(1u, (1u | var_4.a.x) | 1u) << (~7355u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(29687u | _wgslsmith_add_u32(14170u, func_3(var_1, vec4<f32>(1000f, -992f, global2.x, 635f)).x), var_4.a.x), _wgslsmith_f_op_vec3_f32(-var_2), 1i, -(abs(u_input.b) << (~17094u % 32u)), vec3<f32>(global2.x, var_2.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(func_4(Struct_2(vec2<u32>(1u, 24572u)))))));
}

