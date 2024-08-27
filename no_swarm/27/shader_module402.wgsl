struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-41780i, 1i, i32(-2147483648), i32(-2147483648)));

var<private> global2: array<Struct_4, 22>;

var<private> global3: vec4<u32>;

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global3 = ~select(~(u_input.b | (u_input.b ^ vec4<u32>(45169u, u_input.b.x, 1u, 23989u))), vec4<u32>(35727u, arg_0.e.a, _wgslsmith_add_u32(u_input.b.x << (1u % 32u), 1u), ~abs(4294967295u)), arg_0.c.d);
    global2 = array<Struct_4, 22>();
    var var_0 = arg_0.c;
    let var_1 = u_input.a;
    global1 = array<vec4<i32>, 1>();
    return _wgslsmith_dot_vec4_i32(min(global1[_wgslsmith_index_u32(1u, 1u)], vec4<i32>(_wgslsmith_add_i32(~arg_0.c.c, _wgslsmith_sub_i32(var_1.x, var_0.c)), var_1.x, _wgslsmith_div_i32(-1i, ~arg_0.c.c), max(2147483647i << (arg_0.c.a % 32u), 38581i))), vec4<i32>(_wgslsmith_mult_i32(abs(-9452i), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_0.e.c), vec2<i32>(32490i, arg_0.c.c))), abs(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -28520i), arg_0.a.zy))), -34778i, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(var_0.a, 1u)], var_1)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_4) -> bool {
    let var_0 = Struct_1(_wgslsmith_mult_u32(select(~_wgslsmith_mod_u32(arg_2.a.c.a, 2738u), 8045u, arg_2.b.c.d.x), 1u), arg_2.a.c.e, arg_2.b.b.x, select(vec4<bool>(arg_2.b.e.e, ~global3.x == 29165u, true, !any(arg_2.a.c.d.zwy)), vec4<bool>(arg_0.x < func_3(arg_2.b), _wgslsmith_f_op_f32(select(1206f, -1000f, false)) >= arg_2.a.d, arg_2.a.e.b, arg_2.b.e.b), select(arg_2.a.c.d, select(vec4<bool>(true, false, false, false), arg_2.b.e.d, select(arg_2.b.e.d, arg_2.a.c.d, arg_2.b.e.e)), all(!vec2<bool>(arg_2.b.e.e, true)))), true);
    var var_1 = ~(_wgslsmith_sub_u32(arg_2.b.c.a, ~1u) ^ 0u);
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.x, arg_2.b.a.x), abs(~u_input.a.x)) >> (abs(12303u << (~arg_1 % 32u)) % 32u);
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.d, arg_2.b.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1095f, arg_2.b.d) - vec2<f32>(arg_2.a.d, -1317f))), vec2<f32>(_wgslsmith_f_op_f32(floor(110f)), arg_2.b.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -846f), arg_2.a.d)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -463f) - arg_2.b.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, arg_2.b.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1402f, 961f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.d, -966f)))))));
    return true;
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = ~(~_wgslsmith_add_u32(u_input.b.x ^ global3.x, reverseBits(firstLeadingBit(arg_0.a))));
    global4 = !arg_0.b;
    global3 = vec4<u32>(~(min(reverseBits(u_input.b.x), 1u) | 17224u), ~_wgslsmith_dot_vec2_u32(u_input.b.ww, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, arg_0.a), vec2<u32>(34673u, arg_0.a)), vec2<u32>(global3.x, 0u) >> (u_input.b.zw % vec2<u32>(32u)))), arg_0.a, ~(~39673u));
    global4 = true;
    return !select(false, arg_0.d.x, !func_2(min(u_input.a.wz, u_input.a.xz), 0u ^ arg_0.a, global2[_wgslsmith_index_u32(4294967295u, 22u)]));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(617f, 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-170f, -334f)), _wgslsmith_f_op_f32(min(-254f, -228f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f))));
    global4 = func_4(Struct_1(u_input.b.x, func_2(vec2<i32>(1i, u_input.a.x), 51441u, Struct_4(Struct_2(u_input.a.zxy, u_input.a, Struct_1(26184u, false, u_input.a.x, vec4<bool>(false, true, true, true), false), var_1, Struct_1(10727u, true, u_input.a.x, vec4<bool>(true, false, true, true), false)), Struct_2(vec3<i32>(37115i, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(u_input.b.x, 1u)], Struct_1(4294967295u, true, u_input.a.x, vec4<bool>(true, true, false, true), false), -1221f, Struct_1(0u, true, -2147483647i, vec4<bool>(true, false, true, true), false)))), countOneBits(-u_input.a.x), vec4<bool>(all(vec2<bool>(true, true)), select(true, true, select(false, true, false)), all(vec2<bool>(true, true)), true), false));
    let var_2 = Struct_2(firstLeadingBit(u_input.a.zyw), vec4<i32>(u_input.a.x, reverseBits(~u_input.a.x), -u_input.a.x, u_input.a.x) | abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 17228i, 5689i, u_input.a.x), abs(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i)))), Struct_1(_wgslsmith_div_u32(50180u, max(abs(u_input.b.x), firstTrailingBit(u_input.b.x))), true, _wgslsmith_mod_i32(2247i, 2147483647i), vec4<bool>(true, true, true, true), select(func_4(Struct_1(97573u, false, u_input.a.x, vec4<bool>(true, false, true, true), true)), true, true && (global3.x > 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), 1319f)), Struct_1(~(~u_input.b.x), ~(~107518u) > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 69204u), ~u_input.b.zx), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(38378i, 9408i)) >> (abs(4294967295u) % 32u), select(vec4<bool>(true, 0u < global3.x, true, true), vec4<bool>(select(true, true, false), true, false, true), true), func_4(Struct_1(0u, true, u_input.a.x, select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), false))));
    let var_3 = Struct_3(~vec2<u32>(_wgslsmith_mod_u32(~u_input.b.x, 0u), u_input.b.x));
    return Struct_2(var_2.a, _wgslsmith_sub_vec4_i32(var_2.b >> (u_input.b % vec4<u32>(32u)), ~firstLeadingBit(global1[_wgslsmith_index_u32(25914u, 1u)])), var_2.c, 1567f, var_2.e);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global3 = u_input.b;
    let var_0 = arg_1.c;
    global2 = array<Struct_4, 22>();
    global0 = _wgslsmith_dot_vec2_i32(u_input.a.yz, arg_1.a.zx);
    let var_1 = !vec4<bool>(any(vec4<bool>(any(arg_1.e.d.yz), arg_1.e.e, arg_1.c.d.x && arg_1.e.e, arg_1.e.e | true)), -2147483647i != -_wgslsmith_add_i32(815i, arg_0.b.x), true, arg_1.e.d.x);
    return vec4<bool>(!(~1i <= func_1().c.c), select(!(var_1.x && var_0.b), arg_1.e.e, func_1().e.d.x), arg_1.c.d.x, !(!(!(!arg_0.e.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.wwx;
    global0 = max(-(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) & -26971i), 2147483647i) ^ u_input.a.x;
    global4 = var_0.x <= _wgslsmith_div_u32(u_input.b.x, var_0.x);
    let var_1 = select(!select(func_5(func_1(), Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, 7351i), vec4<i32>(u_input.a.x, 3468i, 0i, 0i), Struct_1(0u, true, u_input.a.x, vec4<bool>(true, true, true, false), true), 1141f, Struct_1(global3.x, true, -2147483647i, vec4<bool>(false, false, false, true), true)), Struct_1(0u, true, 1i, vec4<bool>(false, true, true, false), false)), func_1().c.d, vec4<bool>(true, true, true, global3.x >= var_0.x)), !vec4<bool>(true, !select(false, false, true), true, _wgslsmith_sub_u32(global3.x, 11365u) >= ~u_input.b.x), true || ((~u_input.b.x | ~66487u) < u_input.b.x));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(16734u, ~max(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(62886u, global3.x)))), firstLeadingBit(~_wgslsmith_mult_u32(var_0.x, 4294967295u)));
    global2 = array<Struct_4, 22>();
    global2 = array<Struct_4, 22>();
    var var_3 = vec3<i32>(u_input.a.x, -_wgslsmith_mult_i32(u_input.a.x, 0i), 1i >> (1u % 32u));
    global2 = array<Struct_4, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().e.a, (firstLeadingBit(_wgslsmith_mod_vec2_i32(var_3.yy, vec2<i32>(var_3.x, -2147483647i))) << (vec2<u32>(1u, ~47295u) % vec2<u32>(32u))) >> (~(vec2<u32>(u_input.b.x, 1u) << (u_input.b.wx % vec2<u32>(32u))) % vec2<u32>(32u)));
}

