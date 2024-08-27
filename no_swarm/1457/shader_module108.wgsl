struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<f32>, 18>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_2;
    global1 = array<vec4<f32>, 18>();
    global0 = true;
    let var_1 = vec3<i32>(~2147483647i, _wgslsmith_dot_vec4_i32(~(~arg_0.c) | _wgslsmith_add_vec4_i32(max(arg_2.c, vec4<i32>(arg_0.c.x, -10277i, var_0.c.x, var_0.c.x)), vec4<i32>(arg_2.c.x, -44236i, 0i, -10735i)), arg_2.c), 21476i);
    var var_2 = var_0.c.zww << (vec3<u32>(~4294967295u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(64954u, arg_0.b, 1u), vec3<u32>(arg_0.b, 0u, 4294967295u))), arg_2.b ^ 4294967295u) % vec3<u32>(32u));
    return ~firstTrailingBit(countOneBits(~(~vec3<u32>(5274u, u_input.a, 0u))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> f32 {
    let var_0 = 26745u << ((~_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 9738u), vec2<u32>(4294967295u, 14824u))) << (10099u % 32u)) % 32u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-169f, -109f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(206f))))) <= -816f, 14242u, _wgslsmith_add_vec4_i32(vec4<i32>(~(~u_input.b.x), u_input.c, 30399i, -_wgslsmith_sub_i32(u_input.b.x, -2527i)), max(-countOneBits(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, -50416i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 1i, 50691i), ~vec4<i32>(-2147483647i, arg_3.x, -1i, -2147483647i)))));
    var var_2 = !(!vec4<bool>(true, false, arg_1.x >= ~u_input.a, var_1.b >= (35130u >> (var_0 % 32u))));
    let var_3 = (func_3(var_1, !(!vec4<bool>(arg_2.x, arg_2.x, true, true)), Struct_1(all(vec3<bool>(false, true, var_2.x)), arg_1.x, vec4<i32>(-2147483647i, -30714i, var_1.c.x, var_1.c.x))) ^ select(vec3<u32>(var_1.b, abs(var_0), arg_1.x), vec3<u32>(abs(u_input.a), ~1u, arg_0), vec3<bool>(true, true, false & var_2.x))) & _wgslsmith_div_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0, var_1.b, 64220u), vec3<u32>(51191u, 39190u, 20375u))), vec3<u32>(~0u, ~reverseBits(43964u), u_input.a));
    global1 = array<vec4<f32>, 18>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-582f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-337f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f - 743f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global1 = array<vec4<f32>, 18>();
    var var_0 = vec3<bool>(false, (1u << (~u_input.a % 32u)) != _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, arg_2.b, arg_0.b)), min(vec3<u32>(12081u, arg_2.b, 1u), vec3<u32>(4294967295u, arg_0.b, arg_0.b) & vec3<u32>(arg_0.b, 0u, arg_2.b))), any(!vec2<bool>(false, arg_2.a)) & ((arg_0.a | true) || true));
    let var_1 = 343f;
    let var_2 = !(!select(!(!vec4<bool>(true, arg_0.a, true, false)), !vec4<bool>(var_0.x, false, true, false), !(!vec4<bool>(false, arg_2.a, false, arg_2.a))));
    var_0 = select(var_2.wzx, var_2.wwz, true);
    return arg_2;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = all(!vec3<bool>(!(false || arg_1.a), arg_1.a, any(vec2<bool>(arg_1.a, true))));
    global0 = true;
    var var_0 = func_4(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2032f * -1293f), _wgslsmith_f_op_f32(min(705f, 372f)), _wgslsmith_f_op_f32(func_2(44611u, vec2<u32>(16613u, 14240u), vec2<bool>(arg_1.a, arg_1.a), vec2<i32>(arg_1.c.x, arg_2)))))), arg_1, 16689i);
    global1 = array<vec4<f32>, 18>();
    var var_1 = 1i;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(1u);
    var var_1 = Struct_1(func_1(reverseBits(min(_wgslsmith_sub_vec4_i32(vec4<i32>(2060i, -1i, 2147483647i, u_input.c), vec4<i32>(u_input.b.x, 82968i, u_input.b.x, 27527i)), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -18081i))), Struct_1(!any(vec3<bool>(false, false, true)), ~u_input.a, vec4<i32>(u_input.c, _wgslsmith_mod_i32(u_input.c, 11403i), min(12138i, 11405i), firstTrailingBit(2147483647i))), -29340i), ~_wgslsmith_mod_u32(1u, 4294967295u), vec4<i32>(u_input.b.x, 1i, u_input.b.x, -17083i << (u_input.a % 32u)) ^ (vec4<i32>(2147483647i ^ u_input.c, _wgslsmith_add_i32(u_input.c, 1i), 1852i >> (var_0 % 32u), firstLeadingBit(17970i)) ^ ((vec4<i32>(-31536i, u_input.c, 72299i, 826i) << (vec4<u32>(134555u, 1u, var_0, 1u) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(3943u, 11030u, 1u, 2955u), vec4<u32>(var_0, var_0, var_0, 9906u)) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1149f, -238f, -278f) - vec3<f32>(-240f, -1000f, -106f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1337f, 171f, -313f))))), vec3<f32>(-260f, _wgslsmith_div_f32(1151f, -1364f), _wgslsmith_div_f32(172f, -682f))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2236f + 598f) * _wgslsmith_div_f32(-383f, 696f)), _wgslsmith_f_op_f32(f32(-1f) * -2269f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(f32(-1f) * -1025f), func_4(Struct_1(true, 1u, var_1.c), vec3<f32>(616f, -656f, 250f), Struct_1(false, u_input.a, vec4<i32>(4600i, u_input.b.x, u_input.c, u_input.c)), -29377i).a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(319f, 266f)), _wgslsmith_f_op_f32(round(-184f)), _wgslsmith_f_op_f32(-193f - -1277f)))));
    global0 = !(!var_1.a);
    let var_3 = countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, var_1.c.x) | vec2<i32>(2147483647i, var_1.c.x), vec2<i32>(~u_input.b.x, -22593i))) >> (abs(vec2<u32>(min(5499u, ~u_input.a), 1u)) % vec2<u32>(32u));
    let var_4 = var_2.yz;
    var var_5 = Struct_1(func_4(func_4(Struct_1(var_4.x <= var_2.x, ~4294967295u, reverseBits(var_1.c)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_2 + var_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -430f, 622f) * var_2))), func_4(Struct_1(var_1.a, var_0, var_1.c), vec3<f32>(var_4.x, var_2.x, 1650f), Struct_1(true, var_0, var_1.c), i32(-1i) * -1i), u_input.b.x), var_2, func_4(Struct_1(false, u_input.a, abs(var_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -744f, -1000f), vec3<f32>(var_4.x, var_4.x, 725f))), Struct_1(true, 12799u, _wgslsmith_mod_vec4_i32(var_1.c, vec4<i32>(1i, -20556i, var_1.c.x, 28080i))), -1i), ~30773i).a, _wgslsmith_add_u32(var_1.b, ~0u), select(abs(vec4<i32>(u_input.b.x, var_3.x, u_input.b.x, var_3.x)), var_1.c, var_1.a));
    var var_6 = vec2<bool>(!(select(~72303u, func_3(Struct_1(false, 4294967295u, vec4<i32>(var_3.x, var_3.x, 2147483647i, var_5.c.x)), vec4<bool>(var_5.a, true, true, var_1.a), Struct_1(true, var_5.b, vec4<i32>(-35623i, -32341i, var_5.c.x, 87715i))).x, var_5.a) <= var_1.b), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -469f))) - -1542f), vec4<f32>(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(f32(-1f) * -808f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f * 609f) * var_2.x))), var_4.x, -1000f), -u_input.b.x);
}

