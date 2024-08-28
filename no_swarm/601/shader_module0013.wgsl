struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<bool, 22>;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(-23796i, i32(-2147483648), -1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    let var_0 = ~u_input.e;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1, _wgslsmith_mod_u32(arg_1, 4294967295u)), 24024u), arg_2.b), select(~arg_2.b, var_0.x, u_input.a != _wgslsmith_add_i32(global2.a.x, u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1881f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-236f, 1000f)))))));
    global2 = Struct_2(vec3<i32>(0i, 2147483647i, -1i));
    var var_3 = !(!vec4<bool>(!arg_2.a.x, all(select(arg_3, vec4<bool>(false, arg_3.x, true, true), false)), true, global0.x));
    return ~(~var_1 & _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_1 & var_0.x, arg_2.b), _wgslsmith_mod_u32(arg_2.b, _wgslsmith_div_u32(u_input.e.x, 105425u)), 17292u));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> vec2<f32> {
    global1 = array<bool, 22>();
    global0 = !(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(3870u, 22u)], arg_2))));
    global0 = !vec2<bool>(true || any(vec2<bool>(arg_2, false)), arg_0.x > 0i);
    let var_0 = arg_3;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_3, -407f)), _wgslsmith_f_op_f32(arg_3 - 702f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-183f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1235f) * vec2<f32>(arg_3, arg_3)))))));
}

fn func_2() -> Struct_5 {
    let var_0 = global0.x;
    let var_1 = -1089f;
    global1 = array<bool, 22>();
    let var_2 = _wgslsmith_mult_vec2_u32(~u_input.e, _wgslsmith_add_vec2_u32(u_input.e, _wgslsmith_sub_vec2_u32(countOneBits(abs(vec2<u32>(47798u, u_input.b))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 7828u, 4294967295u), vec3<u32>(u_input.c, 0u, u_input.d)), 4294967295u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_4(vec4<i32>(global2.a.x, -120439i, u_input.a << (func_3(false, var_2.x, Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(100472u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], false), 45542u), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.c, 22u)], false, global1[_wgslsmith_index_u32(4294967295u, 22u)])) % 32u), u_input.a) | -(~(vec4<i32>(-2147483647i, -41445i, u_input.a, u_input.a) | vec4<i32>(u_input.a, 59411i, 11847i, u_input.a))), Struct_3(global2.a), !all(!(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_2.x, 22u)], true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_f32(-var_1))))));
    return Struct_5(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(u_input.a, -31712i, u_input.a, u_input.a), vec4<i32>(8145i, -1i, global2.a.x, 0i), vec4<bool>(global1[_wgslsmith_index_u32(88402u, 22u)], global0.x, global0.x, true))), min(-vec4<i32>(-2147483647i, 0i, -53613i, global2.a.x), vec4<i32>(u_input.a, 2147483647i, 2147483647i, 1i) << (vec4<u32>(var_2.x, 0u, u_input.d, var_2.x) % vec4<u32>(32u)))), max(_wgslsmith_mult_i32(0i, u_input.a), ~(~1i))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_3, arg_3: i32) -> f32 {
    global2 = Struct_2(-abs(countOneBits(-arg_2.a)));
    var var_0 = Struct_4(select(select(select(!vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.d, 22u)])), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)]), select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.c, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(10674u, 22u)], false, global1[_wgslsmith_index_u32(u_input.d, 22u)], global0.x)), true), vec4<bool>(!global1[_wgslsmith_index_u32(19289u, 22u)], global0.x, false, u_input.b >= 4294967295u)), vec4<bool>(global0.x | true, true, select(any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 22u)], global0.x, global0.x)), global0.x, global1[_wgslsmith_index_u32(4294967295u, 22u)]), global0.x), !select(vec4<bool>(false, true, true, global0.x), !vec4<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], true), select(vec4<bool>(false, true, false, global0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 22u)], false, global0.x, global1[_wgslsmith_index_u32(u_input.c, 22u)]), global0.x))), u_input.b);
    global2 = Struct_2(reverseBits(~(-select(vec3<i32>(arg_3, arg_0.a.x, arg_0.a.x), arg_2.a, var_0.a.wzw))));
    var var_1 = Struct_4(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 22u)], all(!var_0.a.zz), (var_0.a.x & true) && true, select(!global0.x, true, any(vec3<bool>(false, global1[_wgslsmith_index_u32(17241u, 22u)], global1[_wgslsmith_index_u32(1472u, 22u)])))), _wgslsmith_dot_vec2_u32(u_input.e, u_input.e));
    let var_2 = select(_wgslsmith_mult_vec4_u32(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(8677u, 5983u, 40773u, u_input.e.x), vec4<u32>(18991u, 53732u, 36u, u_input.b), vec4<u32>(21930u, 66552u, var_1.b, var_0.b)), firstTrailingBit(vec4<u32>(var_0.b, 1u, 64406u, var_0.b)) >> (select(vec4<u32>(u_input.e.x, u_input.e.x, 53258u, u_input.b), vec4<u32>(var_0.b, 4294967295u, 1u, 38233u), var_1.a) % vec4<u32>(32u)), select(var_1.a, !vec4<bool>(true, true, false, global0.x), true)), select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.b, var_0.b, 0u), vec4<u32>(var_0.b, var_1.b, var_0.b, 27899u)), ~vec4<u32>(4294967295u, 0u, 0u, var_1.b), var_1.a.x || global1[_wgslsmith_index_u32(12265u, 22u)]) >> (~abs(vec4<u32>(var_1.b, 57796u, var_1.b, 1u)) % vec4<u32>(32u))), vec4<u32>(0u, reverseBits(1u), 0u, 4294967295u), var_0.a);
    return -1000f;
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(~global2.a);
    global0 = arg_0.a.zx;
    let var_1 = _wgslsmith_f_op_f32(func_5(Struct_3(vec3<i32>(var_0.a.x, ~0i | -u_input.a, 16516i)), func_2(), Struct_3(global2.a & vec3<i32>(_wgslsmith_mult_i32(var_0.a.x, global2.a.x), _wgslsmith_clamp_i32(34843i, -2147483647i, -38727i), u_input.a << (u_input.e.x % 32u))), -_wgslsmith_dot_vec2_i32(~global2.a.yx, vec2<i32>(var_0.a.x, 2147483647i)) << (41558u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1252f * -1094f)))));
    var var_3 = vec2<i32>(~_wgslsmith_mult_i32(u_input.a, global2.a.x), global2.a.x);
    return arg_0.a.zz;
}

fn func_6(arg_0: bool) -> u32 {
    var var_0 = firstLeadingBit(1u);
    var var_1 = _wgslsmith_mod_u32(0u, func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-480f * 175f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)), 5149u, Struct_1(vec3<bool>(!arg_0, global0.x, false), ~u_input.b), vec4<bool>(true, true, u_input.a > u_input.a, true)));
    let var_2 = vec3<u32>(~u_input.c, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.e, ~vec2<u32>(u_input.b, u_input.b)), countOneBits(~vec2<u32>(0u, u_input.e.x))), _wgslsmith_mult_u32(min(~_wgslsmith_sub_u32(u_input.c, 1964u), abs(4294967295u)), reverseBits(u_input.b) ^ func_3(true, min(u_input.b, u_input.e.x), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], false, global1[_wgslsmith_index_u32(4294967295u, 22u)]), u_input.d), vec4<bool>(arg_0, false, false, true))));
    global0 = vec2<bool>(global0.x, true);
    var var_3 = Struct_2(global2.a);
    return max(~u_input.e.x, reverseBits(u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(all(func_1(Struct_1(vec3<bool>(false, true, global0.x), u_input.d)))) >> (func_3(true, u_input.c, Struct_1(vec3<bool>(u_input.a == 2147483647i, any(vec4<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.c, 22u)], false, false)), !global1[_wgslsmith_index_u32(12335u, 22u)]), ~u_input.d), !(!(!vec4<bool>(global0.x, global0.x, true, global0.x)))) % 32u);
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e & vec2<u32>(u_input.e.x << (4294967295u % 32u), var_0), _wgslsmith_add_vec2_u32(u_input.e, ~vec2<u32>(66034u, u_input.e.x))), ~(u_input.e & (select(vec2<u32>(var_0, var_0), u_input.e, vec2<bool>(true, true)) << (vec2<u32>(u_input.e.x, 48547u) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, 285f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1385f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(round(1000f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1228f - -1066f) - -1311f))));
    var var_3 = Struct_3(abs(global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(1u, u_input.d, vec4<u32>(select(u_input.e.x, 20089u, false), max(func_3(global0.x, 32400u, Struct_1(vec3<bool>(global0.x, false, false), var_0), vec4<bool>(global0.x, false, global0.x, false)), 1u), ~u_input.c, abs(46360u) & ~u_input.c) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, ~4294967295u, 47059u >> (var_0 % 32u)), select(firstTrailingBit(vec4<u32>(0u, var_0, 1u, u_input.c)), reverseBits(vec4<u32>(40415u, 1u, var_0, 4294967295u)), global0.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(func_5(Struct_3(countOneBits(vec3<i32>(global2.a.x, -1i, var_3.a.x))), Struct_5(_wgslsmith_dot_vec3_i32(-var_3.a, _wgslsmith_div_vec3_i32(vec3<i32>(global2.a.x, global2.a.x, u_input.a), global2.a))), Struct_3((var_3.a >> (vec3<u32>(var_0, 67697u, 15298u) % vec3<u32>(32u))) & ~vec3<i32>(2147483647i, u_input.a, u_input.a)), -28904i)));
}

