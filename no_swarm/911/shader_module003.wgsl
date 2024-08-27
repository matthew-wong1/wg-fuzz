struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_1.b.c.x, arg_1.b.c.x), _wgslsmith_div_u32(0u, 1u)) & ~(~arg_1.b.c.wx), ~_wgslsmith_clamp_vec2_u32(arg_1.b.c.xz, ~arg_1.b.c.xw, vec2<u32>(0u, 4548u))), vec2<u32>(_wgslsmith_clamp_u32(~1u, ~_wgslsmith_sub_u32(4294967295u, 1u), 4294967295u), reverseBits(~(~arg_1.b.c.x))), select(vec2<u32>(_wgslsmith_mod_u32(33585u, 1u), 1u), arg_1.b.c.wz, false));
    var var_1 = any(vec2<bool>(arg_2.x, false));
    global0 = array<vec4<bool>, 14>();
    return arg_2;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_add_i32(-52070i, u_input.a.x), ~1i), u_input.a.x, countOneBits(countOneBits(u_input.a.x)));
    let var_1 = !(!func_3(1i, Struct_3(vec4<i32>(u_input.a.x, -5135i, u_input.a.x, u_input.a.x), Struct_1(415f, global0[_wgslsmith_index_u32(1u, 14u)], vec4<u32>(0u, 1u, 29869u, 3330u), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), true)));
    let var_2 = Struct_1(-992f, select(!(!(!global0[_wgslsmith_index_u32(33436u, 14u)])), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(1u, 0u))), 14u)], global0[_wgslsmith_index_u32(abs(firstTrailingBit(~1u)), 14u)]), ~(~max(~vec4<u32>(4294967295u, 83282u, 46639u, 4294967295u), ~vec4<u32>(77030u, 1u, 94813u, 67042u))), select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, var_1.x, var_1.x), true), !vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(true, false, true), !select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, true), false)), vec3<bool>(false, var_1.x, any(!vec2<bool>(false, var_1.x))), !(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), true))), !vec3<bool>(any(func_3(0i, Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), Struct_1(-1283f, global0[_wgslsmith_index_u32(4294967295u, 14u)], vec4<u32>(4294967295u, 32423u, 4294967295u, 40538u), vec3<bool>(var_1.x, true, true), vec3<bool>(false, false, true))), var_1)), all(var_1), true));
    var_0 = u_input.a.x;
    var var_3 = _wgslsmith_mod_u32(~0u, var_2.c.x);
    return vec3<bool>((any(func_3(-2147483647i, Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), var_2), var_2.b.xx)) || true) == (1i <= -select(0i, u_input.a.x, var_1.x)), all(vec2<bool>(!(u_input.a.x > u_input.a.x), -2147483647i != u_input.a.x)), var_2.b.x);
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<bool>, 14>();
    let var_0 = all(func_2());
    var var_1 = all(vec3<bool>(!var_0, true, true));
    let var_2 = 2147483647i == firstTrailingBit(2147483647i);
    var_1 = var_0;
    return Struct_3(vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -2147483647i), -39013i, 54166i), Struct_1(-1000f, global0[_wgslsmith_index_u32(0u, 14u)], vec4<u32>(1u, 1u, 1u, 1u), func_2(), vec3<bool>(true, var_2, !var_0)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<bool> {
    global0 = array<vec4<bool>, 14>();
    var var_0 = all(vec2<bool>(any(vec3<bool>(arg_1.b.d.x != true, true, !arg_1.b.e.x)), arg_1.b.e.x));
    var_0 = ~(arg_0 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.c.x, arg_1.b.c.x), _wgslsmith_add_vec2_u32(arg_1.b.c.zw, arg_1.b.c.yx)) % 32u)) < (-2147483647i | arg_1.a.x);
    let var_1 = _wgslsmith_mult_i32(18521i, max(reverseBits(countOneBits(func_1().a.x)), arg_1.a.x));
    global0 = array<vec4<bool>, 14>();
    return vec2<bool>(any(arg_1.b.e.xx), any(arg_1.b.b.xy));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_1(arg_2.a, vec4<bool>(((2147483647i ^ u_input.a.x) >= 49513i) || true, arg_0.x, any(vec4<bool>(false, true, arg_0.x, arg_0.x)), 15470u == ~(arg_1.x ^ 1u)), select(~max(vec4<u32>(31821u, arg_1.x, arg_1.x, 1u), vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), ~vec4<u32>(arg_1.x, 1u, 36442u, 0u)), true) ^ abs((vec4<u32>(30838u, 1u, 13567u, arg_1.x) ^ vec4<u32>(0u, 16742u, 4294967295u, arg_1.x)) | vec4<u32>(0u, arg_1.x, arg_1.x, 28383u)), select(!vec3<bool>(arg_0.x, arg_3.x > -9286i, all(arg_0)), vec3<bool>(!func_1().b.e.x, !any(vec3<bool>(false, true, true)), true), !select(!vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, true, arg_0.x), func_1().b.b.wzz)), vec3<bool>(true, func_2().x, arg_0.x));
    let var_1 = vec2<f32>(-226f, -208f);
    var var_2 = vec3<i32>(firstTrailingBit(0i ^ _wgslsmith_div_i32(-24803i, -arg_3.x)), -23365i, u_input.a.x);
    let var_3 = Struct_2(-986f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-793f))), _wgslsmith_f_op_f32(var_0.a + arg_2.a))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(var_3.b + arg_2.a), 155f);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    let var_0 = Struct_4(_wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(0u, 40273u, 65290u, 4294967295u)), select(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 87506u, 17341u, 4709u), vec4<u32>(9519u, 4294967295u, 30795u, 4294967295u), vec4<u32>(31621u, 14400u, 1u, 0u)), reverseBits(vec4<u32>(0u, 0u, 15612u, 1u))), ~vec4<u32>(48811u, 1u, 1u, 30057u), true)));
    global0 = array<vec4<bool>, 14>();
    let var_1 = func_5(select(vec2<bool>(true, true), func_4(-1i, func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(415f, 1933f, -280f)))), !func_4(1i, Struct_3(vec4<i32>(u_input.a.x, 1046i, 2147483647i, u_input.a.x), Struct_1(1000f, global0[_wgslsmith_index_u32(var_0.a.x, 14u)], vec4<u32>(var_0.a.x, 1u, 1u, 1u), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(768f, -1933f, 207f), vec3<f32>(1417f, 104f, -208f)))).x), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.a.x, var_0.a.x), var_0.a), ~vec4<u32>(7204u, var_0.a.x, var_0.a.x, 49864u)), ~(~vec4<u32>(var_0.a.x, 1u, var_0.a.x, 0u))), ~abs(var_0.a.x ^ 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.a.x, 1408u), vec3<u32>(0u, var_0.a.x, 4294967295u)), var_0.a.xyz), vec3<u32>(61922u, 23494u & var_0.a.x, ~var_0.a.x))), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1069f, -494f)) * -799f))), ~(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-16530i, u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec4<i32>(u_input.a.x, 0i, 1i, u_input.a.x)), -vec4<i32>(-13567i, u_input.a.x, u_input.a.x, -33483i)) | vec4<i32>(0i, -2147483647i, -1i, _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.zx))));
    global0 = array<vec4<bool>, 14>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a));
    var var_3 = _wgslsmith_add_u32(var_1.b.c.x, max(1u, 879u));
    var var_4 = var_1.b.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.a);
}

