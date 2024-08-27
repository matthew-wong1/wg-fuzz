struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    var var_0 = -2695f;
    var var_1 = Struct_1(min(~abs(abs(vec3<u32>(u_input.c, u_input.a, u_input.c))), vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.c, u_input.c)), u_input.a) ^ vec3<u32>(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), vec3<u32>(0u, u_input.a, u_input.c)), 4294967295u)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))), -2147483647i, 29857u);
    let var_2 = global0[_wgslsmith_index_u32(var_1.a.x, 1u)];
    var var_3 = _wgslsmith_div_vec4_i32(-abs(-(vec4<i32>(0i, u_input.d, var_1.c, u_input.d) << (vec4<u32>(121466u, 22338u, 1u, var_1.d) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(0u, 1u)], -(~vec2<i32>(var_2.x, var_2.x))), ~u_input.d, -u_input.b.x, -(i32(-1i) * -2147483647i)));
    var var_4 = vec3<bool>(any(!vec3<bool>(any(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false)), true, true)), !(!var_1.b.x), select(any(var_1.b.zz), true, all(vec4<bool>(any(var_1.b.yy), all(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), var_1.b.x, !var_1.b.x))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-190f, -355f) + vec2<f32>(-204f, 532f))))));
}

fn func_4(arg_0: vec2<f32>) -> i32 {
    var var_0 = -2147483647i;
    var var_1 = u_input.a;
    var var_2 = vec4<u32>(4294967295u, ~u_input.a, ~select(~firstTrailingBit(4294967295u), _wgslsmith_mult_u32(u_input.c & u_input.a, ~u_input.c), ~u_input.c >= ~0u), 1u);
    var_1 = 4294967295u;
    var_2 = ~abs(~vec4<u32>(var_2.x, _wgslsmith_dot_vec2_u32(var_2.yz, var_2.wy), var_2.x << (32809u % 32u), var_2.x));
    return u_input.b.x >> ((var_2.x << (u_input.c % 32u)) % 32u);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_1(vec3<u32>(~u_input.c, 1u, 68492u), vec3<bool>(true, true, false), func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(~u_input.d)), vec2<f32>(_wgslsmith_f_op_f32(101f - 368f), _wgslsmith_f_op_f32(ceil(628f))), false))), _wgslsmith_add_u32(select(u_input.c, 0u, any(vec3<bool>(true, true, true)) || any(vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(31910u ^ u_input.c, _wgslsmith_div_u32(u_input.a, u_input.a)))));
    global0 = array<vec2<i32>, 1>();
    var var_1 = Struct_1(var_0.a, select(var_0.b, !var_0.b, var_0.b.x), select(_wgslsmith_clamp_i32(-func_4(vec2<f32>(-226f, -1000f)), -(-2147483647i & var_0.c), i32(-1i) * -50194i), u_input.b.x, true & !all(var_0.b.zz)), (~1u ^ _wgslsmith_add_u32(~0u, u_input.a)) & (1u | ((u_input.a ^ 0u) ^ ~u_input.c)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(279f, 446f)))) + vec2<f32>(-2291f, _wgslsmith_f_op_vec2_f32(func_3(u_input.b.x)).x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, 1491f) * vec2<f32>(1314f, -213f)))));
    global0 = array<vec2<i32>, 1>();
    return ~u_input.a;
}

fn func_5(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = any(vec3<bool>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0, arg_0, u_input.a), vec4<u32>(0u, 100741u, u_input.c, arg_0))) > _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 1u, 2021u, arg_0)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a), vec4<u32>(u_input.c, 10683u, u_input.c, arg_0))), arg_1, !any(vec3<bool>(true, arg_1, false)) && false));
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_mod_u32(arg_0 | 71066u, arg_0), _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, arg_0), arg_0)), vec3<u32>(_wgslsmith_div_u32(1u, arg_0), min(min(26396u, arg_0), func_2(17510i)), ~1u)), !vec3<bool>(arg_1, !var_0, !(!arg_1)), 11346i, arg_0);
    global0 = array<vec2<i32>, 1>();
    return Struct_1(var_1.a, vec3<bool>(true, all(vec4<bool>(true, false, false, true)) | var_0, !all(select(var_1.b, vec3<bool>(true, true, false), true))), -36817i, var_1.a.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    var var_0 = _wgslsmith_sub_vec2_u32(~arg_0.yx, vec2<u32>(abs(18768u), _wgslsmith_add_u32(~u_input.c, arg_0.x))) ^ ~vec2<u32>(7104u, u_input.a);
    let var_1 = arg_0.yx;
    return func_5(func_2(-arg_3 & 9209i), select(false, !any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), true));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(41890i, arg_1.c, arg_0.c, arg_0.c) & vec4<i32>(-2147483647i, arg_0.c, -51304i, arg_1.c), vec4<i32>(arg_1.c, u_input.b.x, -2147483647i, arg_0.c) ^ vec4<i32>(0i, 2505i, u_input.d, 0i)), -firstLeadingBit(max(vec4<i32>(2147483647i, u_input.d, 50393i, 1i), vec4<i32>(arg_1.c, u_input.d, 20347i, arg_0.c)))), countOneBits(vec4<i32>(-1i) * -vec4<i32>(2147483647i, arg_0.c, -1i, arg_0.c)));
    global0 = array<vec2<i32>, 1>();
    var var_1 = select(vec4<bool>(any(select(func_1(arg_2, -1i, vec4<i32>(arg_1.c, 1i, -2147483647i, arg_0.c), 2147483647i).b, select(arg_1.b, arg_1.b, vec3<bool>(arg_1.b.x, arg_1.b.x, true)), func_5(86330u, arg_1.b.x).b)), arg_0.b.x, true, any(select(!arg_1.b.zx, !arg_0.b.yx, !arg_0.b.zy))), select(vec4<bool>(true, arg_1.b.x, false, !func_5(arg_1.d, true).b.x), vec4<bool>(arg_0.b.x, true, true, arg_1.b.x), ~(-arg_0.c) < 2147483647i), !select(select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), select(vec4<bool>(arg_1.b.x, arg_1.b.x, true, true), vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_1.b.x), arg_0.b.x), any(vec3<bool>(arg_1.b.x, true, arg_0.b.x))), vec4<bool>(true, true, true, true), !(!arg_1.b.x)));
    var_1 = vec4<bool>(any(arg_1.b), -reverseBits(i32(-1i) * -3711i) <= _wgslsmith_div_i32(arg_0.c, ~(-3173i)), false, !(!(firstTrailingBit(1u) < _wgslsmith_div_u32(11640u, 1u))));
    global0 = array<vec2<i32>, 1>();
    return abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 66657u, ~func_2(arg_1.c)), vec3<u32>(~(~arg_2.x), abs(4294967295u), ~8826u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    var var_0 = Struct_1(func_6(func_1(~(~vec3<u32>(1u, u_input.c, 43275u)), u_input.b.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(-20970i, u_input.d, u_input.b.x, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -23379i, 27414i, -34835i), vec4<i32>(u_input.b.x, u_input.b.x, 11281i, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -4341i, 16263i, u_input.b.x), vec4<i32>(-24294i, u_input.d, u_input.b.x, -2147483647i))), ~firstTrailingBit(2147483647i)), func_5(abs(firstTrailingBit(u_input.a)), true && select(false, true, true)), _wgslsmith_add_vec3_u32(select(~vec3<u32>(u_input.c, 4294967295u, 51423u), vec3<u32>(0u, u_input.a, u_input.c) << (vec3<u32>(u_input.a, 45077u, 89243u) % vec3<u32>(32u)), false), ~(~vec3<u32>(u_input.c, u_input.a, 16085u))), 229f), vec3<bool>(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true)), true), _wgslsmith_div_i32(2147483647i, u_input.d | 1i), ~(~(~1u)));
    let var_1 = vec3<f32>(-1351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-184f, 531f)))))));
    let var_2 = max(vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 46522i), vec2<i32>(1i, var_0.c))) << (~11872u % 32u), u_input.b.x & -2147483647i, abs(u_input.d), var_0.c), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.c, u_input.b.x, var_0.c, var_0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, var_0.c, u_input.d, u_input.d), vec4<i32>(-2147483647i, u_input.d, 4877i, var_0.c))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, 1i, u_input.d, u_input.b.x), select(vec4<i32>(1i, var_0.c, u_input.b.x, -1i), vec4<i32>(-52815i, u_input.b.x, u_input.d, u_input.d), var_0.b.x))) | vec4<i32>(_wgslsmith_mult_i32(-21283i, var_0.c), -func_1(vec3<u32>(u_input.c, var_0.a.x, 18104u), 31187i, vec4<i32>(-32921i, var_0.c, 2147483647i, u_input.d), 1i).c, 1i, (u_input.b.x << (var_0.a.x % 32u)) >> (~u_input.c % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(-634f)), 1f, _wgslsmith_f_op_f32(select(var_1.x, -1012f, select(var_0.b.x, false, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-652f))))))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, 26297u, 78642u, 17354u)) >> ((vec4<u32>(u_input.a, 4294967295u, u_input.c, var_0.d) << (vec4<u32>(18797u, u_input.c, var_0.d, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), select(~vec4<u32>(var_0.a.x, 34266u, 1u, var_0.d), vec4<u32>(u_input.c, u_input.a, 4294967295u, 1u) << (vec4<u32>(var_0.a.x, 0u, u_input.c, var_0.d) % vec4<u32>(32u)), vec4<bool>(false, var_0.b.x, true, var_0.b.x))) << ((~firstLeadingBit(vec4<u32>(558u, 4294967295u, var_0.d, 0u)) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, 35398u, 4294967295u), vec4<u32>(4294967295u, 0u, 8135u, 68957u)), vec4<u32>(47139u, u_input.a, 4294967295u, 7415u) ^ vec4<u32>(0u, 83814u, 4294967295u, var_0.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), reverseBits(max(vec4<u32>(1u, u_input.c, var_0.d, var_0.a.x) ^ (vec4<u32>(u_input.a, var_0.d, 54278u, u_input.a) ^ vec4<u32>(u_input.a, 1u, 15262u, 4294967295u)), ~vec4<u32>(u_input.c, 0u, u_input.c, var_0.d))), select(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, 11331i, -24438i, var_2.x), _wgslsmith_clamp_vec4_i32(var_2, vec4<i32>(var_2.x, var_2.x, 0i, -47606i), vec4<i32>(var_0.c, var_2.x, 2147483647i, 28762i)))), -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_2.x, 1i, 2147483647i), vec4<i32>(u_input.b.x, -2147483647i, 35912i, 2147483647i)) >> (vec4<u32>(26747u, u_input.a, 1u, _wgslsmith_div_u32(0u, 8671u)) % vec4<u32>(32u)), any(vec4<bool>(true, false, true, true))));
}

