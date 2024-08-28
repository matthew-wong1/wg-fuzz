struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global1 = all(vec3<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, false, false))), true));
    let var_0 = -(~1i);
    let var_1 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    global0 = array<f32, 31>();
    var var_2 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, false, true)), vec2<bool>(true, true)));
    return vec4<i32>(16346i, ~(-(~var_0)), 8384i, 2147483647i);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = firstLeadingBit(u_input.a.x);
    let var_1 = Struct_1(vec3<bool>(true, true, true), true);
    return var_1.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = select(~0u, 0u, arg_2.x);
    var var_1 = 64754u;
    var var_2 = vec4<bool>(any(vec3<bool>(!(arg_0.x == arg_0.x), true, arg_3.b.e)), !all(arg_3.b.d.a.xx), !(all(vec2<bool>(false, arg_2.x)) | arg_3.a.b), true);
    var_1 = u_input.a.x;
    var var_3 = arg_3.b;
    return arg_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = reverseBits(_wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(1u, 4294967295u))) | _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.a.ww << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(96580u, 8740u), u_input.a.wx) % vec2<u32>(32u)), vec2<u32>(abs(arg_1), 4294967295u)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, arg_1)), vec2<u32>(24165u, arg_2) << (vec2<u32>(38301u, arg_1) % vec2<u32>(32u))));
    let var_1 = Struct_3(func_4(vec4<i32>(_wgslsmith_sub_i32(min(0i, arg_3.a), -44121i), arg_3.a, -arg_3.a, arg_3.a), Struct_1(!(!arg_3.d.a), arg_3.a > _wgslsmith_mod_i32(-35628i, -37991i)), arg_0.a, Struct_3(func_4(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, 1i, arg_3.a), vec4<i32>(-21322i, 1i, arg_3.a, 0i)), func_4(vec4<i32>(-1i, -11212i, 1i, -1i), arg_0, arg_0.a, Struct_3(Struct_1(arg_3.d.a, arg_3.c), Struct_2(1i, arg_3.b, true, arg_0, false))).d, arg_0.a, Struct_3(Struct_1(vec3<bool>(arg_3.b, arg_0.a.x, false), true), Struct_2(arg_3.a, arg_0.b, true, Struct_1(vec3<bool>(arg_3.c, arg_3.b, true), arg_0.a.x), arg_3.c))).d, Struct_2(-2147483647i, all(vec4<bool>(false, arg_3.b, arg_3.d.b, true)), all(vec2<bool>(arg_3.c, arg_0.b)), func_4(vec4<i32>(arg_3.a, arg_3.a, 1i, arg_3.a), arg_3.d, arg_3.d.a, Struct_3(Struct_1(arg_0.a, arg_3.d.b), Struct_2(arg_3.a, false, arg_0.a.x, Struct_1(vec3<bool>(arg_3.e, arg_3.d.a.x, arg_3.e), arg_0.a.x), false))).d, arg_0.a.x))).d, arg_3);
    global0 = array<f32, 31>();
    let var_2 = arg_3.d.a.x;
    return arg_3;
}

fn func_1() -> Struct_2 {
    global0 = array<f32, 31>();
    return func_5(Struct_1(!vec3<bool>(false, false, any(vec2<bool>(false, false))), true), ~4294967295u, u_input.a.x, func_4(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-77045i, -13254i, 14609i, -2040i), vec4<i32>(1i, -52113i, -5795i, 0i)), func_2(1000f)), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false)), true && func_3(vec4<i32>(1i, -12064i, 36215i, 57643i))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true)), Struct_3(Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), Struct_2(1i, true, true, Struct_1(vec3<bool>(false, false, true), false), true))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    global0 = array<f32, 31>();
    let var_0 = select(vec4<bool>(true, any(vec4<bool>(true, true, all(vec4<bool>(true, true, arg_3.d.b, arg_3.c)), !arg_3.c)), false, _wgslsmith_mod_i32(min(arg_2, arg_3.a), arg_2 ^ arg_2) > arg_2), !select(!(!vec4<bool>(arg_3.c, false, arg_3.b, arg_3.b)), vec4<bool>(!arg_3.c, arg_3.c & true, arg_3.d.a.x, arg_3.d.a.x), all(!vec4<bool>(false, true, false, arg_3.c))), !arg_3.c != true);
    let var_1 = vec3<f32>(global0[_wgslsmith_index_u32(~arg_1.x, 31u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, arg_1.x, 36460u), 31u)]))), -426f), global0[_wgslsmith_index_u32(1u, 31u)]);
    global1 = !(!arg_3.e);
    var var_2 = ~4294967295u;
    return Struct_3(Struct_1(!func_4(vec4<i32>(0i, 44274i, 1i, arg_2) & vec4<i32>(-2147483647i, arg_2, arg_2, 2147483647i), Struct_1(vec3<bool>(arg_3.d.a.x, arg_3.b, arg_3.c), false), !vec3<bool>(arg_3.b, arg_3.c, false), Struct_3(arg_3.d, arg_3)).d.a, func_1().c), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_mod_vec3_u32(vec3<u32>(76903u, ~61655u, ~firstLeadingBit(0u)), abs(u_input.a.wzz)), u_input.a, _wgslsmith_sub_i32(-2552i, reverseBits(32173i) >> (u_input.a.x % 32u)), func_1());
    var var_1 = true;
    var_0 = func_6(u_input.a.wyw, _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(u_input.a.x), u_input.a.x ^ u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 224u), 1u), 4294967295u), u_input.a), ~func_1().a, Struct_2(-_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.b.a, var_0.b.a, var_0.b.a), abs(vec3<i32>(var_0.b.a, -20884i, 2147483647i))), 370f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))), !func_5(Struct_1(var_0.a.a, var_0.b.b), ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.a.zx), var_0.b).e, func_6(~vec3<u32>(45746u, 75449u, 0u), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 42439u), u_input.a), u_input.a), var_0.b.a, var_0.b).a, func_5(var_0.b.d, ~(~u_input.a.x), u_input.a.x, Struct_2(33868i, var_0.a.a.x & false, var_0.b.b, func_1().d, any(vec3<bool>(false, var_0.b.b, var_0.b.d.a.x)))).e));
    var var_2 = abs(_wgslsmith_mult_vec3_u32(u_input.a.xzw, ~abs(u_input.a.xww)));
    var var_3 = Struct_2(var_0.b.a, false, !(false || (var_0.b.a <= 27981i)), var_0.b.d, _wgslsmith_add_u32(18051u, 1u | _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, var_2.x, 18369u, u_input.a.x))) != reverseBits(_wgslsmith_mod_u32(max(4294967295u, 0u), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(-abs(-vec3<i32>(1i, var_0.b.a, var_3.a)), max(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.a, var_3.a, var_0.b.a), vec3<i32>(-2147483647i, var_3.a, var_0.b.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.a, var_3.a, var_3.a), vec3<i32>(var_0.b.a, -67349i, var_0.b.a))), max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.a, -1i, var_3.a), vec3<i32>(var_0.b.a, -1i, -14195i)), firstLeadingBit(vec3<i32>(var_3.a, var_3.a, -50093i))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, -1329f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1145f, global0[_wgslsmith_index_u32(1u, 31u)])), vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], -648f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(55035u, 31u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(18920u, 31u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1721f, 1318f) * vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]))))));
}

