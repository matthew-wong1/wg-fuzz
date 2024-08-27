struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: vec2<i32> = vec2<i32>(-37507i, -1i);

var<private> global2: bool;

var<private> global3: Struct_2 = Struct_2(433f, vec3<f32>(-847f, 1460f, 462f), Struct_1(vec4<u32>(1u, 33372u, 13772u, 41881u), vec4<bool>(false, false, true, false), vec2<bool>(true, true), 1580f, vec2<bool>(false, false)), false, 1u);

var<private> global4: u32 = 1u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: f32) -> f32 {
    global4 = _wgslsmith_add_u32(global3.c.a.x, ~select(~1u, 112557u, global3.c.e.x && true));
    global1 = _wgslsmith_div_vec2_i32(select(-max(u_input.c.yz, u_input.c.yz) | vec2<i32>(~u_input.c.x, 60890i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i), u_input.c.zz) >> (~vec2<u32>(44085u, arg_0.x) % vec2<u32>(32u)), any(select(!global3.c.b.ywy, !global3.c.b.wyw, global3.c.b.yzw))), vec2<i32>(~global1.x, global1.x));
    global1 = u_input.c.xy;
    var var_0 = vec2<u32>(arg_0.x & max(global0[_wgslsmith_index_u32(6271u, 1u)], ~39900u), global3.c.a.x);
    global3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -486f), vec3<f32>(_wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(abs(-1862f)))), -2034f, _wgslsmith_f_op_f32(select(arg_2, 644f, (global1.x <= global1.x) || (-2147483647i > u_input.d)))), Struct_1(vec4<u32>(~(~1u), firstTrailingBit(u_input.a), 45104u, ~(~62651u)), global3.c.b, vec2<bool>(!(arg_0.x <= global3.e), global3.d), _wgslsmith_f_op_f32(-826f + -541f), global3.c.b.wx), global3.d, max(global0[_wgslsmith_index_u32(43943u, 1u)], ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 47213u, 39260u), vec3<u32>(var_0.x, 1u, 8919u)) | ~var_0.x));
    return -1318f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.c.a.x, 1u, global0[_wgslsmith_index_u32(1u, 1u)]), global3.c.a.www, vec3<u32>(global3.e, 0u, global3.e)), _wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_div_f32(global3.c.d, -1244f)))), vec3<f32>(-779f, 627f, -213f), global3.c, !((0i == global1.x) && any(vec2<bool>(false, true))), 1u), global3.c.b.wxy, Struct_2(-1130f, _wgslsmith_f_op_vec3_f32(step(global3.b, _wgslsmith_f_op_vec3_f32(-global3.b))), Struct_1(vec4<u32>(global3.c.a.x, 48643u, _wgslsmith_dot_vec3_u32(global3.c.a.zxy, vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(78611u, 1u)], u_input.b.x)), ~1013u), global3.c.b, vec2<bool>(true, u_input.b.x < 135490u), 351f, !vec2<bool>(global3.d, true)), true, _wgslsmith_add_u32(max(u_input.b.x << (0u % 32u), _wgslsmith_mult_u32(0u, global3.e)), 1u)));
    let var_1 = 1u;
    global3 = Struct_2(-871f, var_0.c.b, Struct_1(countOneBits(select(vec4<u32>(18954u, 80350u, 57091u, 0u), var_0.c.c.a, global3.c.b.x) | (vec4<u32>(var_0.a.e, var_1, 9147u, 1u) ^ vec4<u32>(21703u, global3.c.a.x, 86717u, global3.e))), !(!select(var_0.c.c.b, vec4<bool>(true, global3.d, false, true), false)), select(select(var_0.a.c.e, select(var_0.b.yx, var_0.b.xy, true), !global3.c.e), global3.c.b.yy, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -661f))) + _wgslsmith_f_op_f32(func_3(~global3.c.a.yww, global3.a, -1464f))), vec2<bool>(global3.c.e.x, true)), !var_0.c.d, ~(~4294967295u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1181f + var_0.a.a) * global3.b.x);
    global4 = var_1;
    return global3.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> bool {
    global1 = vec2<i32>(firstLeadingBit(global1.x), i32(-1i) * -(~_wgslsmith_div_i32(2147483647i, arg_3.x)));
    let var_0 = Struct_3(Struct_2(global3.a, global3.b, func_2(), true, ~9035u), vec3<bool>(any(select(!global3.c.b, !vec4<bool>(false, true, arg_0.x, global3.c.e.x), false)), _wgslsmith_f_op_f32(ceil(arg_2.a.b.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c.a, -548f)) + _wgslsmith_div_f32(global3.a, arg_2.c.a)), all(arg_2.c.c.b)), arg_2.c);
    let var_1 = _wgslsmith_f_op_f32(floor(-216f));
    var var_2 = Struct_4(Struct_3(var_0.a, global3.c.b.yzx, Struct_2(_wgslsmith_div_f32(var_1, 1061f), arg_2.a.b, Struct_1(arg_2.a.c.a, !global3.c.b, select(vec2<bool>(true, false), var_0.c.c.b.wy, vec2<bool>(var_0.b.x, true)), _wgslsmith_f_op_f32(global3.b.x + 189f), !vec2<bool>(arg_2.c.c.c.x, true)), var_0.c.c.c.x, _wgslsmith_dot_vec2_u32(global3.c.a.wz, select(vec2<u32>(global0[_wgslsmith_index_u32(var_0.c.c.a.x, 1u)], 0u), var_0.c.c.a.wy, arg_2.c.c.c)))), ~global3.c.a);
    global1 = arg_3;
    return true;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_5 {
    global2 = all(select(vec2<bool>((arg_1.b.x | arg_2.x) | arg_1.b.x, !(4294967295u != global0[_wgslsmith_index_u32(arg_1.a.x, 1u)])), select(arg_1.b.wy, arg_1.e, !select(arg_2.ww, vec2<bool>(true, true), global3.d)), false));
    let var_0 = func_2();
    let var_1 = func_2();
    var var_2 = countOneBits(-_wgslsmith_add_i32(abs(countOneBits(u_input.c.x)), _wgslsmith_mod_i32(global1.x, 1i)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f))) + 2162f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + var_0.d), -529f))), var_0, global3.d, min(var_1.a.x, 4294967295u));
    return Struct_5(abs(u_input.c.www));
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5) -> i32 {
    global1 = -_wgslsmith_div_vec2_i32(vec2<i32>(func_4(34826u, Struct_1(vec4<u32>(global3.c.a.x, global3.e, global0[_wgslsmith_index_u32(1u, 1u)], 4294967295u), vec4<bool>(global3.c.b.x, false, global3.c.c.x, global3.d), global3.c.e, 1110f, global3.c.c), global3.c.b).a.x, arg_2.a.x) ^ arg_1.a.zx, ~countOneBits(vec2<i32>(arg_1.a.x, 31640i)));
    var var_0 = Struct_2(1166f, _wgslsmith_f_op_vec3_f32(select(global3.b, vec3<f32>(466f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - global3.c.d), -870f), select(vec3<bool>(global3.c.e.x, true, false && global3.d), select(vec3<bool>(global3.c.b.x, arg_0, false), global3.c.b.yxw, func_2().b.yzy), select(vec3<bool>(true, true, false), func_2().b.yxz, vec3<bool>(true, true, true))))), func_2(), ~(_wgslsmith_dot_vec3_u32(global3.c.a.wyz, global3.c.a.wzx) & ~u_input.b.x) > ~(~reverseBits(global0[_wgslsmith_index_u32(32632u, 1u)])), u_input.a ^ ~(~4294967295u));
    global2 = var_0.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(324f, var_0.c.d)) * _wgslsmith_f_op_f32(-164f + var_0.a)) + -288f) * _wgslsmith_f_op_f32(-var_0.a));
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(var_0.a)), global3.b, global3.c, !global3.c.b.x, ~(~1u));
    var var_1 = arg_1.a.xz;
    return u_input.d >> (global0[_wgslsmith_index_u32(func_2().a.x, 1u)] % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(1i, func_5(global3.c.c.x, Struct_5(vec3<i32>(-12168i, 2147483647i, u_input.c.x) << (global3.c.a.wyw % vec3<u32>(32u))), func_4(~103173u, Struct_1(global3.c.a, global3.c.b, global3.c.c, global3.c.d, global3.c.e), vec4<bool>(func_1(global3.c.b.xxz, -13331i, Struct_3(Struct_2(-2059f, vec3<f32>(-1022f, global3.a, global3.c.d), global3.c, global3.c.b.x, 4294967295u), global3.c.b.zwz, Struct_2(global3.a, global3.b, global3.c, global3.d, u_input.a)), vec2<i32>(global1.x, global1.x)), select(global3.c.b.x, global3.c.b.x, global3.d), all(vec2<bool>(false, false)), false))));
    global0 = array<u32, 1>();
    var var_1 = any(!select(select(global3.c.b, vec4<bool>(global3.d, false, false, true), vec4<bool>(global3.d, false, false, global3.d)), global3.c.b, !global3.c.b));
    global3 = Struct_2(_wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-649f + _wgslsmith_f_op_f32(-global3.b.x))))), _wgslsmith_div_vec3_f32(global3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, -1370f, -169f)))), func_2(), false, reverseBits(select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(74169u, 3149u, 1u), firstTrailingBit(6279u)), 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true)));
    var var_2 = Struct_3(Struct_2(global3.c.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.c.d, global3.c.d, global3.c.d)))), func_2(), !any(vec4<bool>(false, true, global3.d, global3.d)), 0u), func_2().b.wxz, Struct_2(global3.c.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b) * global3.b))), func_2(), true, global3.c.a.x));
    let var_3 = Struct_4(Struct_3(Struct_2(-1000f, vec3<f32>(-1840f, var_2.a.b.x, -306f), global3.c, select(var_2.c.c.c.x, all(var_2.a.c.c), false && var_2.c.c.e.x), func_2().a.x), select(!vec3<bool>(false, false, global3.d), vec3<bool>(all(var_2.a.c.b.xwx), true, true), var_2.b.x), var_2.a), _wgslsmith_add_vec4_u32(~global3.c.a, vec4<u32>(~4294967295u, u_input.b.x, min(115919u, u_input.a), ~global3.c.a.x)) >> ((vec4<u32>(~var_2.a.c.a.x, firstLeadingBit(u_input.b.x), global3.e, ~global0[_wgslsmith_index_u32(6797u, 1u)]) >> (vec4<u32>(4294967295u, ~15901u, abs(u_input.a), var_2.a.e << (var_2.c.e % 32u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = vec3<i32>(~(i32(-1i) * -2147483647i), ~func_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(83415u, var_3.a.a.e), select(vec2<u32>(51618u, 7183u), var_2.a.c.a.zy, false)), func_2(), var_2.a.c.b).a.x, _wgslsmith_div_i32(~(~21414i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d, -2147483647i, global1.x), u_input.c)), max(global1.x, -2147483647i)));
    var var_5 = func_2().b.zxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.a.c.a)) * var_2.a.a))), -(~min(min(u_input.c.zx, var_4.zz), vec2<i32>(0i, -1i))), vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.a.c.a.zyy, vec3<u32>(4294967295u, var_2.c.e, var_3.b.x)), vec3<u32>(global3.e, var_3.a.c.e, var_3.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.b.x)), _wgslsmith_f_op_f32(-398f - global3.b.x)), var_2.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.d))), _wgslsmith_clamp_vec2_u32(~u_input.b ^ vec2<u32>(global3.c.a.x, 4294967295u), vec2<u32>(43568u & global3.e, 4294967295u), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 0u), var_3.a.a.c.a.yw))) & ~(var_2.c.c.a.xy & _wgslsmith_add_vec2_u32(vec2<u32>(var_2.c.e, 66485u), var_2.a.c.a.zw)), u_input.d);
}

