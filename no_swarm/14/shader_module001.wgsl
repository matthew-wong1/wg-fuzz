struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<u32>(3675u, 1u), vec2<bool>(false, false), 0i, -1i), Struct_2(vec2<u32>(14095u, 47551u), vec2<bool>(false, false), 1i, -11918i), Struct_2(vec2<u32>(51703u, 4294967295u), vec2<bool>(true, true), 33798i, i32(-2147483648)), Struct_2(vec2<u32>(32638u, 4886u), vec2<bool>(true, false), -64217i, 2147483647i), Struct_2(vec2<u32>(0u, 95890u), vec2<bool>(true, false), 1i, i32(-2147483648)), Struct_2(vec2<u32>(0u, 4294967295u), vec2<bool>(true, true), -22615i, 2147483647i), Struct_2(vec2<u32>(1u, 1u), vec2<bool>(true, false), 2147483647i, -31107i), Struct_2(vec2<u32>(0u, 6641u), vec2<bool>(true, true), 1i, 612i), Struct_2(vec2<u32>(75624u, 52167u), vec2<bool>(false, true), -13833i, -3608i), Struct_2(vec2<u32>(41962u, 65949u), vec2<bool>(true, true), 2780i, 2147483647i), Struct_2(vec2<u32>(83670u, 4294967295u), vec2<bool>(false, false), 2147483647i, -22680i), Struct_2(vec2<u32>(55684u, 68606u), vec2<bool>(true, false), 20666i, 2147483647i), Struct_2(vec2<u32>(371u, 0u), vec2<bool>(true, true), 45323i, 2147483647i), Struct_2(vec2<u32>(4294967295u, 76744u), vec2<bool>(true, true), 46875i, -14727i), Struct_2(vec2<u32>(77035u, 4294967295u), vec2<bool>(false, false), -1i, -38476i), Struct_2(vec2<u32>(10192u, 1u), vec2<bool>(false, false), i32(-2147483648), 2147483647i), Struct_2(vec2<u32>(93580u, 77911u), vec2<bool>(true, false), -26725i, i32(-2147483648)), Struct_2(vec2<u32>(69676u, 82589u), vec2<bool>(true, true), 1i, -1i), Struct_2(vec2<u32>(9521u, 38445u), vec2<bool>(false, false), 11097i, -58779i), Struct_2(vec2<u32>(1u, 46459u), vec2<bool>(false, true), 2147483647i, -42041i), Struct_2(vec2<u32>(4294967295u, 1u), vec2<bool>(true, true), -1i, -24336i), Struct_2(vec2<u32>(4294967295u, 0u), vec2<bool>(false, true), 10852i, 1i), Struct_2(vec2<u32>(29133u, 0u), vec2<bool>(false, true), -16831i, 0i), Struct_2(vec2<u32>(0u, 4294967295u), vec2<bool>(true, false), -1i, 13435i), Struct_2(vec2<u32>(65679u, 0u), vec2<bool>(false, false), i32(-2147483648), -17530i), Struct_2(vec2<u32>(0u, 4294967295u), vec2<bool>(false, false), i32(-2147483648), 34511i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: i32) -> vec2<bool> {
    global1 = array<Struct_2, 26>();
    global0 = Struct_1(arg_1.x);
    var var_0 = u_input.c;
    let var_1 = Struct_3(~arg_2, vec3<f32>(1f, 1f, 1f), Struct_1(any(vec2<bool>(arg_1.x, !arg_1.x))), !arg_1);
    var var_2 = !(!select(!select(var_1.d, var_1.d, true), vec3<bool>(true, select(arg_1.x, var_1.c.a, false), false), select(!arg_1, !var_1.d, vec3<bool>(var_1.c.a, var_1.c.a, false))));
    return vec2<bool>(var_2.x, arg_1.x);
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = ~select(min(39139u, ~arg_0.a.x), 1u, true);
    global0 = Struct_1(true);
    var var_1 = select(vec3<bool>(false, false, all(arg_0.b) & (reverseBits(arg_0.a.x) > ~arg_0.a.x)), vec3<bool>(any(arg_0.b), (arg_0.c >= u_input.c.x) & arg_0.b.x, true), arg_0.b.x);
    global1 = array<Struct_2, 26>();
    let var_2 = _wgslsmith_sub_i32(57082i | arg_0.d, -1i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1819f, 377f, -756f, 1691f), vec4<f32>(-1371f, -278f, 242f, -565f)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(-1479f)), _wgslsmith_f_op_f32(max(-354f, 767f)), _wgslsmith_f_op_f32(1610f - 247f), _wgslsmith_f_op_f32(-811f * -1691f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(2634f, -1000f, true)), -1000f, -431f, _wgslsmith_div_f32(-1842f, 720f)) * vec4<f32>(_wgslsmith_f_op_f32(round(621f)), _wgslsmith_div_f32(188f, -102f), -831f, _wgslsmith_f_op_f32(select(329f, -287f, true))))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<f32>) -> bool {
    var var_0 = select(!select(select(!vec3<bool>(true, arg_1.b.x, false), vec3<bool>(arg_1.b.x, global0.a, false), select(vec3<bool>(false, global0.a, true), vec3<bool>(false, true, true), true)), select(vec3<bool>(arg_1.b.x, true, arg_1.b.x), !vec3<bool>(global0.a, global0.a, true), !vec3<bool>(arg_1.b.x, false, global0.a)), any(select(arg_1.b, arg_1.b, vec2<bool>(true, false)))), vec3<bool>(!global0.a, (select(true, global0.a, global0.a) && global0.a) && !func_3(u_input.a.x, vec3<bool>(true, true, global0.a), 0i).x, arg_1.b.x), vec3<bool>(all(select(vec3<bool>(arg_1.b.x, global0.a, global0.a), vec3<bool>(arg_1.b.x, global0.a, global0.a), select(vec3<bool>(arg_1.b.x, false, global0.a), vec3<bool>(global0.a, global0.a, true), true))), global0.a, arg_1.a.x > abs(0u)));
    var var_1 = _wgslsmith_sub_vec3_i32(u_input.c, _wgslsmith_div_vec3_i32(~u_input.c, abs(_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(arg_0, -27392i, u_input.c.x))))) & (u_input.c & u_input.c);
    let var_2 = vec2<i32>(~arg_0, i32(-1i) * -22809i);
    var var_3 = Struct_3(~0i, vec3<f32>(arg_2.x, _wgslsmith_f_op_vec4_f32(func_4(global1[_wgslsmith_index_u32(arg_1.a.x, 26u)])).x, -1139f), Struct_1(!(!(!global0.a))), vec3<bool>(false, true, arg_1.b.x));
    var_0 = var_3.d;
    return true | all(!vec4<bool>(var_3.c.a, false || arg_1.b.x, var_3.d.x, arg_2.x < var_3.b.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_3) -> vec2<i32> {
    global0 = Struct_1(func_5(1i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_0.x, arg_0.x), ~u_input.a.x, firstLeadingBit(33238u), arg_0.x & u_input.a.x), firstLeadingBit(vec4<u32>(arg_0.x, 0u, u_input.a.x, u_input.b.x))), 26u)], _wgslsmith_f_op_vec2_f32(arg_3.b.yy + vec2<f32>(_wgslsmith_f_op_f32(arg_3.b.x * arg_3.b.x), -244f)), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(~u_input.b.yy, func_3(3933u, arg_3.d, -38288i), 42460i, -7932i)))));
    global0 = arg_3.c;
    var var_0 = arg_3.b;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.b) + _wgslsmith_f_op_vec3_f32(arg_3.b + _wgslsmith_f_op_vec4_f32(func_4(global1[_wgslsmith_index_u32(u_input.b.x, 26u)])).xwz));
    global1 = array<Struct_2, 26>();
    return ~(~vec2<i32>(~u_input.c.x, -9955i)) ^ -u_input.c.zz;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    global0 = Struct_1(any(select(!(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), !(!vec3<bool>(true, global0.a, global0.a)), vec3<bool>(arg_0.b.x, all(vec3<bool>(false, global0.a, arg_0.b.x)), false))));
    global1 = array<Struct_2, 26>();
    global0 = Struct_1((_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_1, -1i), 1i) == arg_1) && true);
    let var_0 = func_2(vec2<u32>(~(~(~u_input.b.x)), (4294967295u >> (~arg_0.a.x % 32u)) & 4294967295u), arg_0.b, Struct_1(false), Struct_3(-_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_div_i32(-15064i, arg_1)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(ceil(1178f)), _wgslsmith_f_op_f32(f32(-1f) * -163f)))), Struct_1(true), vec3<bool>(!arg_0.b.x, global0.a, true)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1326f))));
    return global1[_wgslsmith_index_u32(min(~u_input.a.x, ~0u), 26u)];
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> vec2<bool> {
    var var_0 = firstLeadingBit(~u_input.c.xx);
    var_0 = vec2<i32>(firstLeadingBit(arg_1.d), _wgslsmith_add_i32(var_0.x, _wgslsmith_mod_i32(-1488i, i32(-1i) * -1i)));
    var var_1 = ~u_input.a.x;
    let var_2 = vec4<i32>(-52688i, 1i, -_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(countOneBits(-2147483647i), u_input.c.x ^ u_input.c.x, 0i)), u_input.c.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x - arg_2.x), _wgslsmith_f_op_f32(round(arg_2.x)))))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -1000f))), 386f));
    return vec2<bool>(arg_3, !(var_3 != _wgslsmith_f_op_f32(f32(-1f) * -720f)));
}

fn func_7(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_3(firstLeadingBit(2147483647i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(981f, 789f, -475f) - vec3<f32>(622f, -230f, -854f)), vec3<f32>(-1451f, -1643f, -478f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1329f, -1468f, 296f) - vec3<f32>(-327f, 1118f, 628f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(211f, -187f, 880f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(114f, 934f, -730f)) * vec3<f32>(-902f, 823f, -351f)))), Struct_1(false), !(!(!select(vec3<bool>(true, false, global0.a), vec3<bool>(true, arg_0.x, true), arg_0.x))));
    let var_1 = 1u;
    let var_2 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(firstTrailingBit(0u), u_input.a.x, countOneBits(var_1)), firstLeadingBit(u_input.a.zzx), true), u_input.a.zyx);
    let var_3 = var_0;
    let var_4 = var_3.c;
    return Struct_3(var_3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(997f, var_3.b.x), _wgslsmith_f_op_f32(var_0.b.x - -816f), var_3.b.x))), var_4, select(!vec3<bool>(var_3.d.x, true, func_5(2147483647i, global1[_wgslsmith_index_u32(1u, 26u)], var_0.b.zy, vec4<f32>(-1000f, -1406f, var_3.b.x, var_0.b.x))), !var_0.d, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(reverseBits(-_wgslsmith_add_i32(u_input.c.x, u_input.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-668f - 1165f), -842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1840f))))), Struct_1(false), select(vec3<bool>(all(vec2<bool>(true, true)), true, global0.a), !select(vec3<bool>(global0.a, global0.a, global0.a), !vec3<bool>(global0.a, false, global0.a), !vec3<bool>(global0.a, false, global0.a)), any(vec2<bool>(true, !global0.a))));
    global0 = Struct_1(false && !any(select(vec3<bool>(var_0.c.a, false, false), vec3<bool>(false, false, global0.a), global0.a)));
    var var_1 = var_0.c;
    let var_2 = func_7(func_6(!(!select(var_0.d, vec3<bool>(global0.a, var_0.c.a, false), var_0.d.x)), func_1(Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(8421u, u_input.b.x)), !vec2<bool>(global0.a, false), 20383i, -47155i ^ u_input.c.x), -(u_input.c.x | -54549i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, -103f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1499f, var_0.b.x, 473f, var_0.b.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.d.x, false, global0.a, var_1.a), vec4<bool>(true, true, false, false))))), true));
    let var_3 = countOneBits(~u_input.c.xy);
    global0 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.c.x, ~49910i), u_input.c, _wgslsmith_div_f32(var_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, -106f))), _wgslsmith_f_op_f32(abs(var_0.b.x)))), 60814i);
}

