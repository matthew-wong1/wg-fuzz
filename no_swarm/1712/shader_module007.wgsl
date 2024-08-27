struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(28825i, 33617i), vec2<i32>(0i, 0i), vec2<i32>(3857i, i32(-2147483648)), vec2<i32>(6585i, -1i), vec2<i32>(49569i, 11002i), vec2<i32>(-1i, 1i), vec2<i32>(-21997i, 23972i), vec2<i32>(-11145i, -1i), vec2<i32>(-23759i, 26688i), vec2<i32>(-69780i, 53988i), vec2<i32>(11447i, 74453i), vec2<i32>(-12136i, 45902i), vec2<i32>(18727i, -15729i), vec2<i32>(-55663i, 35634i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(11914i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-14896i, i32(-2147483648)), vec2<i32>(55185i, 4470i), vec2<i32>(0i, 41908i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(3148i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(27643i, -48727i), vec2<i32>(11543i, 1i), vec2<i32>(21633i, -39073i), vec2<i32>(-32312i, 32452i), vec2<i32>(4111i, 9036i));

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<vec2<i32>, 3>;

var<private> global4: f32 = -1052f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<u32> {
    var var_0 = global0.a.c;
    let var_1 = true;
    let var_2 = firstLeadingBit(u_input.a.zyw);
    global0 = Struct_4(Struct_1(~(-global0.b), false, global0.a.c, (_wgslsmith_f_op_f32(1000f + global0.a.e.x) <= _wgslsmith_f_op_f32(step(554f, global0.a.e.x))) | false, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(351f, _wgslsmith_f_op_f32(-global0.a.e.x), 802f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.e * vec3<f32>(global0.a.e.x, global0.a.e.x, 774f)))))), 0i, -arg_1);
    global1 = array<vec2<i32>, 29>();
    return ~u_input.a.wzx;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = -abs(vec3<i32>(27284i, -select(-7003i, 31177i, true), reverseBits(select(21323i, global0.b, global0.a.d))));
    var var_1 = Struct_3(Struct_2(reverseBits(2147483647i), 1u | abs(_wgslsmith_clamp_u32(23971u, 1u, 57855u)), abs(arg_1.a), !global0.a.c, Struct_1(-(~(-2147483647i)), global0.a.c.x, global0.a.c, arg_1.d.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 926f, 2894f) * vec3<f32>(2167f, global0.a.e.x, arg_1.e.e.x)))))), ~vec2<u32>(u_input.a.x << (u_input.a.x % 32u), firstLeadingBit(arg_1.b)) >> (~min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(16328u, u_input.a.x)), vec2<u32>(28738u, 20044u)) % vec2<u32>(32u)), ~func_3(7205i, -(~(-2147483647i))), arg_1.e);
    global4 = 621f;
    var var_2 = ~vec2<u32>(0u, ~(func_3(0i, -31738i).x >> (0u % 32u)));
    let var_3 = arg_0;
    return global2[_wgslsmith_index_u32(1u, 10u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_0.b, 4294967295u, 1u) ^ ~u_input.a.xxx), ~firstTrailingBit(vec3<u32>(u_input.a.x, arg_1.b, u_input.a.x) << (u_input.a.xzx % vec3<u32>(32u))));
    global2 = array<Struct_2, 10>();
    global4 = func_2(global0.a.e.x, Struct_2(arg_2, max(arg_0.b, var_0.x), arg_1.e.a, func_2(-582f, Struct_2(2147483647i << (arg_0.b % 32u), 16802u, arg_0.a, !arg_1.d, arg_1.e)).e.c, func_2(_wgslsmith_f_op_f32(max(-733f, arg_1.e.e.x)), Struct_2(-arg_0.a, ~6105u, ~(-15901i), select(arg_0.e.c, vec4<bool>(global0.a.b, true, false, global0.a.b), arg_1.d), arg_1.e)).e)).e.e.x;
    global1 = array<vec2<i32>, 29>();
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, min(i32(-1i) * -2147483647i, -2147483647i)), u_input.c.x);
    return func_2(arg_1.e.e.x, func_2(arg_1.e.e.x, func_2(1f, func_2(global0.a.e.x, arg_0)))).e;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_3(func_2(global0.a.e.x, global2[_wgslsmith_index_u32(select(0u, u_input.a.x >> ((u_input.a.x ^ 52058u) % 32u), !arg_0.a.b || true), 10u)]), countOneBits(countOneBits(~(~vec2<u32>(87967u, u_input.a.x)))), vec3<u32>(0u, firstTrailingBit(abs(1u)), ~arg_1.x), arg_0.a);
    var var_1 = !var_0.d.c.x;
    global2 = array<Struct_2, 10>();
    var var_2 = u_input.a.x;
    global3 = array<vec2<i32>, 3>();
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.e.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1192f)), Struct_2(arg_0.a.a, u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, arg_0.b), arg_0.c, arg_0.a.a) << (var_0.b.x % 32u), var_0.d.c, global0.a)).e;
}

fn func_1() -> bool {
    global1 = array<vec2<i32>, 29>();
    global0 = Struct_4(func_5(Struct_4(func_4(func_2(-945f, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), func_2(-264f, Struct_2(-1i, u_input.a.x, u_input.c.x, global0.a.c, global0.a)), ~48145i), ~u_input.b, abs(global0.a.a)), select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x >> (3493u % 32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(91159u, 9886u, u_input.a.x), u_input.a.zxw), ~4294967295u, _wgslsmith_sub_u32(15682u, u_input.a.x), 1u), global0.a.c.x)), 44822i, _wgslsmith_mod_i32(1i, global0.b));
    global4 = _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.e.x)), Struct_2(_wgslsmith_clamp_i32(~u_input.c.x, countOneBits(0i), 640i), _wgslsmith_add_u32(min(2251u, u_input.a.x), ~49843u), global0.a.a | (global0.a.a ^ 2147483647i), !vec4<bool>(global0.a.d, false, false, global0.a.d), Struct_1(i32(-1i) * -34651i, false, global0.a.c, true, vec3<f32>(-952f, 261f, 627f)))).e.e.x);
    global1 = array<vec2<i32>, 29>();
    global2 = array<Struct_2, 10>();
    return global0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(any(select(vec4<bool>(true, global0.a.b, global0.a.c.x, true), !vec4<bool>(true, global0.a.d, false, false), global0.a.b)), global0.a.b, func_1(), global0.a.c.x), select(vec4<bool>(global0.a.d, func_2(_wgslsmith_f_op_f32(-557f + global0.a.e.x), global2[_wgslsmith_index_u32(u_input.a.x, 10u)]).e.d, all(global0.a.c.zzz), false), vec4<bool>(firstLeadingBit(u_input.c.x) < -19532i, global0.a.c.x, global0.a.c.x, any(vec3<bool>(global0.a.d, true, true)) == false), false), global0.a.c);
    let var_1 = Struct_3(func_2(_wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.e.x)))), global2[_wgslsmith_index_u32(71554u, 10u)]), vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 38573u, u_input.a.x)), ~vec3<u32>(37695u, u_input.a.x, 13185u) << (firstTrailingBit(vec3<u32>(u_input.a.x, 12006u, 23248u)) % vec3<u32>(32u))), 4294967295u), vec3<u32>(firstTrailingBit(min(u_input.a.x, u_input.a.x)) & _wgslsmith_clamp_u32(4294967295u, u_input.a.x, _wgslsmith_sub_u32(4294967295u, u_input.a.x)), 0u, u_input.a.x), Struct_1(u_input.c.x, true, !vec4<bool>(var_0.x, true, false, func_5(Struct_4(global0.a, global0.b, 2147483647i), vec4<u32>(u_input.a.x, u_input.a.x, 56072u, u_input.a.x)).d), global0.a.c.x, _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.e.x, _wgslsmith_f_op_f32(max(-1952f, global0.a.e.x)), _wgslsmith_f_op_f32(-global0.a.e.x)), vec3<f32>(_wgslsmith_div_f32(global0.a.e.x, -1000f), func_5(Struct_4(global0.a, u_input.b, u_input.c.x), u_input.a).e.x, _wgslsmith_div_f32(global0.a.e.x, global0.a.e.x)))));
    global4 = global0.a.e.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.e.zy - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.e.x - var_1.d.e.x))), func_5(Struct_4(global0.a, var_1.a.c, -2147483647i), countOneBits(vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, 62694u))).e.x)) - vec2<f32>(func_5(Struct_4(var_1.a.e, 13185i, func_5(Struct_4(global0.a, 2147483647i, 1i), vec4<u32>(46049u, var_1.c.x, u_input.a.x, 4294967295u)).a), u_input.a | (u_input.a ^ vec4<u32>(var_1.c.x, u_input.a.x, u_input.a.x, 4294967295u))).e.x, func_2(_wgslsmith_f_op_f32(sign(func_2(global0.a.e.x, Struct_2(global0.b, 0u, u_input.c.x, var_0, var_1.a.e)).e.e.x)), var_1.a).e.e.x));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.e.x)) - _wgslsmith_f_op_f32(abs(889f)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_1.d.e.x * _wgslsmith_f_op_f32(-var_1.a.e.e.x)))) * global0.a.e.yx);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xx | ~_wgslsmith_add_vec2_u32(vec2<u32>(45326u, u_input.a.x), var_1.c.xy), vec4<f32>(1898f, _wgslsmith_f_op_f32(ceil(-565f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-519f))) + var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(433f + _wgslsmith_f_op_f32(abs(var_1.d.e.x))))), ~(~u_input.a.zzw));
}

