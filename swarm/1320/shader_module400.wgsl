struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(41718u, 0u, 12998u));

var<private> global1: Struct_3 = Struct_3(vec2<f32>(-352f, -1115f), Struct_2(vec2<bool>(false, false), vec4<u32>(0u, 0u, 89989u, 9438u)), vec2<u32>(40449u, 4294967295u), Struct_1(vec2<u32>(14062u, 5824u), vec3<u32>(4294967295u, 75282u, 0u), vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(87093u, 4294967295u, 4294967295u), vec4<bool>(false, false, true, true)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(select(global1.c.x, _wgslsmith_add_u32(u_input.d.x, 62821u), !global1.b.a.x), _wgslsmith_dot_vec3_u32(global1.e.b, ~global1.b.b.xwx)), _wgslsmith_clamp_vec2_u32(~select(u_input.d, global1.d.a, vec2<bool>(true, true)), vec2<u32>(0u, u_input.a.x) & countOneBits(u_input.a.ww), abs(_wgslsmith_sub_vec2_u32(u_input.e.yx, vec2<u32>(global1.d.b.x, global1.d.b.x)))), vec2<u32>(u_input.a.x, 21695u)), vec3<u32>(1u, 17414u, 19085u), vec4<bool>(false, true, global1.b.a.x | !all(global1.e.c.zwz), (10196u > select(global1.e.b.x, 39779u, false)) & global1.d.c.x));
    global0 = array<vec3<u32>, 1>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-global1.a), global1.b, vec2<u32>(_wgslsmith_div_u32(var_0.b.x, 44911u), ~_wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(74910u, u_input.e.x, global1.c.x, global1.c.x), global1.d.c.x), vec4<u32>(4294967295u, 4294967295u, u_input.c, global1.b.b.x))), Struct_1(global1.d.a, ~u_input.e, select(select(global1.e.c, var_0.c, select(global1.d.c, var_0.c, global1.d.c)), vec4<bool>(true, true, false & var_0.c.x, false), !select(var_0.c, vec4<bool>(true, global1.b.a.x, global1.d.c.x, var_0.c.x), global1.d.c.x))), global1.e);
    var_0 = var_1.e;
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1653f, 504f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -222f)))))))), Struct_2(vec2<bool>(global1.b.a.x, !(u_input.b.x <= u_input.b.x)), ~global1.b.b), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, firstTrailingBit(27681u)), select(vec2<u32>(44205u, var_0.b.x), max(var_1.e.b.zy, vec2<u32>(28842u, var_0.b.x)), all(global1.d.c.zzz)) ^ ~(vec2<u32>(10940u, var_0.a.x) & vec2<u32>(1u, 4294967295u))), global1.d, Struct_1(abs(var_0.b.xy), ~_wgslsmith_mult_vec3_u32(vec3<u32>(67698u, 29061u, global1.b.b.x), vec3<u32>(1u, 0u, var_1.d.b.x)), !(!select(vec4<bool>(global1.e.c.x, false, var_0.c.x, false), vec4<bool>(var_1.b.a.x, var_1.d.c.x, false, true), var_0.c))));
    return var_1.d.c.x & false;
}

fn func_2(arg_0: bool, arg_1: f32) -> vec4<f32> {
    let var_0 = vec4<bool>(false, any(!(!(!global1.d.c))), !all(select(select(vec4<bool>(global1.e.c.x, true, false, true), global1.d.c, arg_0), global1.e.c, false)), true);
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a * global1.a)), global1.b, max(vec2<u32>(4294967295u, ~firstLeadingBit(global1.c.x)), u_input.d), Struct_1(~vec2<u32>(1u, 66551u) << (~vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(global1.d.b, _wgslsmith_div_vec3_u32(vec3<u32>(1u, 3041u, u_input.d.x), vec3<u32>(global1.e.a.x, u_input.e.x, 4294967295u)), select(u_input.a.www, vec3<u32>(27787u, 1u, u_input.a.x), vec3<bool>(false, arg_0, global1.e.c.x)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0, arg_0, true, true), global1.d.c), any(vec3<bool>(true, arg_0, false)))), Struct_1(u_input.e.xy, ~u_input.a.wyz, vec4<bool>(true, global1.b.a.x & !arg_0, func_3(0i, 372f) & false, global1.b.a.x)));
    global0 = array<vec3<u32>, 1>();
    let var_1 = vec2<bool>(any(vec2<bool>(all(var_0.zz), any(global1.d.c))), false);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-277f, -456f) * vec2<f32>(-442f, global1.a.x)), _wgslsmith_f_op_vec2_f32(-global1.a), select(var_1, global1.e.c.ww, vec2<bool>(true, global1.b.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(-1270f * -826f), _wgslsmith_f_op_f32(101f + global1.a.x)))), global1.b, vec2<u32>(abs(0u), u_input.e.x), Struct_1(_wgslsmith_mod_vec2_u32(global1.e.b.yy, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e.zx, global1.b.b.yy), global1.c)), global1.d.b, vec4<bool>(true, !(arg_0 != global1.e.c.x), abs(u_input.b.x) <= 10508i, true)), Struct_1(global1.e.a, _wgslsmith_clamp_vec3_u32(global1.b.b.wzx, vec3<u32>(33887u, global1.c.x, 110303u & u_input.e.x), select(vec3<u32>(27903u, 4294967295u, 29239u), global1.d.b, var_0.yxz)), var_0));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(840f, 232f, global1.a.x, global1.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1878f, -333f, 1920f, 1981f) * vec4<f32>(global1.a.x, -444f, 236f, 778f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(-807f)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1622f), _wgslsmith_f_op_f32(728f - var_2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -226f, arg_1, -822f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(860f, -726f, 881f, arg_1) + vec4<f32>(arg_1, -1000f, -378f, arg_1)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a.x, -2165f, arg_1, -973f))), !vec4<bool>(false, var_2.d.c.x, true, false)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    global0 = array<vec3<u32>, 1>();
    var var_0 = !global1.e.c.ywx;
    var var_1 = Struct_1(vec2<u32>(~(u_input.e.x >> (abs(4294967295u) % 32u)), global1.c.x ^ firstLeadingBit(u_input.e.x)), max(global1.b.b.zyw, (~global0[_wgslsmith_index_u32(global1.c.x, 1u)] >> ((vec3<u32>(1u, u_input.d.x, 4294967295u) ^ vec3<u32>(26705u, 16512u, 4294967295u)) % vec3<u32>(32u))) << (vec3<u32>(30793u, select(u_input.e.x, global1.e.a.x, arg_1), _wgslsmith_mod_u32(4294967295u, global1.e.a.x)) % vec3<u32>(32u))), select(select(select(!vec4<bool>(false, global1.e.c.x, var_0.x, false), select(vec4<bool>(arg_1, global1.e.c.x, false, false), global1.e.c, vec4<bool>(var_0.x, arg_1, false, arg_1)), global1.d.c), !select(vec4<bool>(true, true, false, arg_1), vec4<bool>(true, arg_1, global1.d.c.x, var_0.x), false), global1.d.c), global1.d.c, true));
    var var_2 = vec4<i32>(_wgslsmith_add_i32(65782i | _wgslsmith_mult_i32(_wgslsmith_add_i32(13140i, -2147483647i), u_input.b.x), -5395i), u_input.b.x, u_input.b.x, u_input.b.x);
    var_0 = vec3<bool>(!(global1.d.b.x != min(var_1.b.x, u_input.d.x)), true & var_0.x, true);
    return Struct_2(select(select(select(select(vec2<bool>(var_0.x, true), global1.e.c.zy, var_0.zx), vec2<bool>(true, true), !global1.b.a), vec2<bool>(!var_0.x, select(true, false, arg_1)), func_3(abs(1i), _wgslsmith_f_op_f32(abs(-244f)))), var_0.zx, global1.b.a), firstLeadingBit(~u_input.a));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = global1.b;
    var var_1 = true;
    var var_2 = global1.b;
    var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(all(global1.d.c), _wgslsmith_f_op_f32(max(-1729f, 381f)))) - _wgslsmith_f_op_vec4_f32(func_2(!global1.d.c.x, global1.a.x))), global1.b.a.x);
    let var_3 = countOneBits(vec3<u32>(0u, _wgslsmith_mod_u32(84460u, countOneBits(5363u)), 1u) >> (~vec3<u32>(41376u, firstTrailingBit(u_input.a.x), ~global1.b.b.x) % vec3<u32>(32u)));
    return -9793i & _wgslsmith_sub_i32(arg_0, arg_0 ^ -u_input.b.x);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(global1.a.x, global1.a.x);
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global1.a)), vec2<f32>(1024f, -1625f), !vec2<bool>(false, global1.d.c.x))), global1.a, !vec2<bool>(arg_2.c.x, true)))), Struct_2(select(!global1.b.a, vec2<bool>(true, !global1.d.c.x), global1.d.c.x & true), min(_wgslsmith_clamp_vec4_u32(func_4(vec4<f32>(arg_1.x, 166f, 109f, 184f), false).b, ~vec4<u32>(0u, u_input.d.x, u_input.a.x, arg_2.a.x), vec4<u32>(arg_2.a.x, 0u, 4294967295u, global1.e.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, global1.e.a.x, u_input.c), vec4<u32>(0u, global1.c.x, 0u, 4294967295u)) ^ global1.b.b)), vec2<u32>(u_input.d.x, ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(17469u, 1178u)), select(global1.b.b.xw, u_input.a.zw, vec2<bool>(false, true)))), global1.e, Struct_1(vec2<u32>(abs(u_input.a.x >> (17489u % 32u)), global1.b.b.x), ~(~(~arg_2.b)), !select(arg_2.c, vec4<bool>(arg_2.c.x, arg_2.c.x, true, false), select(vec4<bool>(arg_2.c.x, arg_2.c.x, global1.e.c.x, global1.b.a.x), global1.e.c, arg_2.c.x))));
    var var_1 = Struct_1(~vec2<u32>(u_input.a.x, 25064u), ~global1.d.b, vec4<bool>(1u >= (_wgslsmith_sub_u32(u_input.e.x, 78000u) << (global1.b.b.x % 32u)), all(arg_2.c.wx), false, all(!global1.d.c.zw)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1600f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec4_f32(func_2(true, arg_1.x)).x) + _wgslsmith_div_f32(835f, _wgslsmith_f_op_f32(exp2(arg_1.x)))));
    var var_2 = u_input.b.wy;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(7611i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-973f, _wgslsmith_f_op_vec4_f32(func_2(-29130i != u_input.b.x, -1117f)).x))), Struct_1(vec2<u32>(global1.b.b.x, ~global1.d.b.x), global1.d.b, select(vec4<bool>(0u == u_input.e.x, func_4(vec4<f32>(-428f, 618f, -1331f, -1282f), true).a.x, global1.e.c.x, false), global1.e.c, select(global1.e.c, global1.e.c, global1.e.c))));
    var var_1 = Struct_1(~(u_input.a.xz | firstTrailingBit(~u_input.a.yx)), reverseBits(var_0.b.xzx >> (~countOneBits(var_0.b.yyz) % vec3<u32>(32u))), select(vec4<bool>(var_0.a.x, false, global1.b.a.x, !any(var_0.a)), select(vec4<bool>(false, global1.b.a.x, all(global1.d.c), true), !global1.e.c, vec4<bool>(!global1.b.a.x, global1.e.c.x, true, global1.e.c.x || global1.b.a.x)), global1.e.c));
    global0 = array<vec3<u32>, 1>();
    var var_2 = 4294967295u;
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.x, -1328f, _wgslsmith_f_op_f32(round(739f)), -327f))), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(vec4<i32>(40073i, u_input.b.x, 2147483647i, u_input.b.x) << (vec4<u32>(4294967295u, var_0.b.x, 0u, var_0.b.x) % vec4<u32>(32u))), global1.c.x, 668f, ~_wgslsmith_div_vec2_u32(var_0.b.yx | var_3.b.yz, ~var_0.b.yy) | (var_3.b.zx << (vec2<u32>(_wgslsmith_mult_u32(var_0.b.x, u_input.e.x), 10164u) % vec2<u32>(32u))), 2147483647i);
}

