struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<f32>(-687f, 714f)), Struct_2(vec2<f32>(-567f, -1000f)), Struct_2(vec2<f32>(662f, -729f)), Struct_2(vec2<f32>(832f, -1000f)), Struct_2(vec2<f32>(-662f, 1048f)), Struct_2(vec2<f32>(214f, -1792f)), Struct_2(vec2<f32>(-177f, 1167f)));

var<private> global1: f32;

var<private> global2: bool = true;

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-872f, -897f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> Struct_1 {
    global3 = global0[_wgslsmith_index_u32(min(~u_input.c, reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(u_input.c, 2857u)))) | min(u_input.c | u_input.c, _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(0u, ~0u))), 7u)];
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a.x, 1000f))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global3.a.x, global3.a.x), _wgslsmith_f_op_f32(var_0 + 712f)) * global3.a))), vec3<bool>(31142u >= ~(~u_input.c), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false)), !(~u_input.c < u_input.c)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<u32>) -> vec3<i32> {
    global2 = true;
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-func_1().a), select(!select(func_1().b, vec3<bool>(true, true, false), true), vec3<bool>((global3.a.x <= 2262f) & false, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), any(vec4<bool>(false, false, true, true)) || true), !(-200f <= _wgslsmith_f_op_f32(max(-1000f, arg_1.x)))));
    return -min(arg_0.xzz, -countOneBits(~vec3<i32>(3292i, 17655i, u_input.b)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = arg_0.b.x;
    var var_1 = _wgslsmith_dot_vec4_u32(countOneBits(~abs(vec4<u32>(23113u, u_input.c, 4294967295u, u_input.c))), _wgslsmith_div_vec4_u32(select(min(vec4<u32>(77706u, u_input.c, 1u, 0u), vec4<u32>(18920u, 4294967295u, u_input.c, 25327u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 1u), vec4<u32>(16740u, 0u, u_input.c, 1u), vec4<u32>(4294967295u, u_input.c, u_input.c, 0u)), vec4<bool>(false, arg_0.b.x, arg_0.b.x, false)), max(select(vec4<u32>(u_input.c, u_input.c, 19094u, u_input.c), vec4<u32>(u_input.c, 51828u, 112152u, 49104u), true), ~vec4<u32>(35577u, u_input.c, u_input.c, 89472u)))) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c, _wgslsmith_add_u32(~0u, _wgslsmith_div_u32(u_input.c, 19686u))), firstTrailingBit(52094u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.xxz) + _wgslsmith_f_op_vec3_f32(step(arg_1.zwy, _wgslsmith_f_op_vec3_f32(vec3<f32>(222f, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x) - arg_1.yzz))));
    var var_3 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(27391u, u_input.c, 4294967295u)), 4294967295u, 40385u, 0u >> (u_input.c % 32u)), (vec4<u32>(494u, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(36644u, 4294967295u, u_input.c, u_input.c), vec4<u32>(3587u, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(4294967295u, u_input.c)) | min(7049u, 1u), 105002u, 0u, ~u_input.c), abs(reverseBits(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)))), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(66931u, u_input.c, 0u, u_input.c) << (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), vec4<u32>(u_input.c, 4294967295u, 10828u, 0u)) & vec4<u32>(4294967295u, u_input.c, ~u_input.c, ~42306u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)));
    return vec3<bool>(abs(var_3.x) < ~(~u_input.c | _wgslsmith_add_u32(u_input.c, 76524u)), true, arg_0.b.x);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> u32 {
    var var_0 = func_1();
    var var_1 = ~_wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(-22939i, -27405i, -1i)), vec3<i32>(u_input.a, -2147483647i, -24379i)) ^ (vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(2624i, 2147483647i, u_input.b)), vec3<i32>(-1i, -12545i, -14845i) ^ vec3<i32>(arg_2, 1i, -1i)));
    let var_2 = Struct_2(global3.a);
    var var_3 = Struct_1(var_0.a, select(var_0.b, !(!var_0.b), func_4(func_1(), vec4<f32>(_wgslsmith_f_op_f32(round(-945f)), _wgslsmith_div_f32(1052f, var_2.a.x), 683f, _wgslsmith_f_op_f32(trunc(-1335f))), func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, var_1.x, u_input.b, -2147483647i), vec4<i32>(arg_2, -6203i, arg_2, -2147483647i), vec4<i32>(arg_2, -1i, -1i, -18733i)), var_0.a, ~arg_2, reverseBits(vec4<u32>(u_input.c, u_input.c, 0u, 0u))))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.a.x * -1297f), _wgslsmith_div_f32(-1815f, var_3.a.x)))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(vec2<f32>(1175f, 338f));
    var var_1 = select(true, arg_0.b.x, arg_2.b.x);
    let var_2 = arg_0;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1081f, 754f))) - _wgslsmith_f_op_f32(-global3.a.x)));
    var var_1 = -240f;
    let var_2 = func_1();
    let var_3 = var_2.b.zx;
    let var_4 = u_input.c;
    var var_5 = (i32(-1i) * -2147483647i) >> (~var_4 % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec3_i32(reverseBits(-vec3<i32>(u_input.a, u_input.a, u_input.b)), reverseBits(vec3<i32>(8169i, u_input.a, u_input.b)))), ~(-(i32(-1i) * -11068i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)), var_2.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(var_2, func_2(~43164u, vec4<f32>(global3.a.x, 411f, 644f, var_0), 0i << (u_input.c % 32u), _wgslsmith_f_op_f32(-2190f + global3.a.x)), var_2))), u_input.c);
}

