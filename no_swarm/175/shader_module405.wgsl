struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false));

var<private> global1: vec4<i32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(abs(arg_0.b)), _wgslsmith_f_op_f32(trunc(-216f)));
    var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = var_1;
    let var_3 = ~(-_wgslsmith_add_i32(-8050i, u_input.a)) & min(-14816i, u_input.a);
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = max(15123i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1686i, 1i, arg_1.x, 0i), vec4<i32>(26694i, 232i, 0i, arg_1.x) | vec4<i32>(-53564i, global1.x, -13954i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(-51612i, arg_1.x, 2147483647i, arg_1.x), vec4<i32>(-2147483647i, 0i, 9585i, global1.x)) << (~vec4<u32>(1u, 33354u, 42994u, 41215u) % vec4<u32>(32u)))) == _wgslsmith_dot_vec4_i32(min(vec4<i32>(min(-1i, 34565i), _wgslsmith_sub_i32(-2147483647i, arg_0), u_input.a, global1.x), abs(vec4<i32>(arg_1.x, 3684i, 0i, -2147483647i))), vec4<i32>(-2147483647i, min(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 28410i, arg_1.x, arg_1.x), vec4<i32>(arg_0, arg_1.x, arg_0, arg_1.x))), ~(~u_input.a), -1i));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -138f), arg_3.b.x, _wgslsmith_f_op_f32(arg_2.c - arg_3.b.x));
    var var_2 = u_input.a;
    var var_3 = arg_2.a.yx;
    let var_4 = 436f;
    return arg_3;
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = !(!arg_0.a.x);
    let var_1 = arg_0;
    let var_2 = Struct_1(func_3(u_input.a, vec3<i32>(_wgslsmith_div_i32(u_input.a, u_input.a) | (global1.x << (42407u % 32u)), 2147483647i, _wgslsmith_dot_vec3_i32(countOneBits(global1.wzy), ~global1.xxw)), func_2(func_2(Struct_1(vec3<bool>(true, var_1.a.x, false), var_1.b, -1491f), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, u_input.a), global1.zzw), _wgslsmith_add_i32(-2147483647i, global1.x), 1i), max(global1.ywx, vec3<i32>(global1.x, -2147483647i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1.x, global1.x, 25509i), select(vec4<i32>(1i, global1.x, -7574i, -24185i), vec4<i32>(global1.x, u_input.a, global1.x, 0i), vec4<bool>(var_1.a.x, arg_0.a.x, arg_0.a.x, var_1.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -13737i, 25307i, global1.x) & vec4<i32>(u_input.a, global1.x, u_input.a, 44701i), vec4<i32>(13317i, -2147483647i, global1.x, 2147483647i))), Struct_1(!global0[_wgslsmith_index_u32(countOneBits(56243u), 13u)], _wgslsmith_f_op_vec3_f32(var_1.b - var_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.c)), arg_0.b.x))).a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(725f, 608f, 391f), arg_0.a.x)) - _wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(537f, arg_0.c, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.b.x, 1520f)), var_1.b.x, 1460f))), vec3<bool>(true, true, -1110f > _wgslsmith_f_op_f32(-arg_0.c)))), var_1.c);
    var var_3 = abs(11940u);
    let var_4 = Struct_1(global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 2190f, -513f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(round(var_2.b.x))) + _wgslsmith_f_op_f32(-var_1.c)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.b - arg_0.b), var_2.b, vec3<bool>(select(true, arg_0.a.x, var_4.a.x), false, true))) - var_4.b));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(!(!select(vec3<bool>(arg_0, arg_0, true), global0[_wgslsmith_index_u32(arg_1, 13u)], vec3<bool>(arg_0, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_3(min(u_input.a, global1.x), abs(global1.yxw), func_2(Struct_1(global0[_wgslsmith_index_u32(arg_1, 13u)], vec3<f32>(-246f, -737f, -718f), -653f), global1.ywz, u_input.a, global1.x), func_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(352f, 807f, -559f), 1616f), vec3<i32>(u_input.a, 11635i, u_input.a), 57954i, -28925i))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f) + _wgslsmith_div_f32(1947f, -353f)), 156f))));
    var var_1 = -563f;
    global0 = array<vec3<bool>, 13>();
    global0 = array<vec3<bool>, 13>();
    let var_2 = !any(vec2<bool>(true, true));
    return Struct_1(vec3<bool>((_wgslsmith_f_op_f32(var_0.b.x + var_0.c) < _wgslsmith_f_op_f32(1785f + 899f)) || (var_0.b.x <= _wgslsmith_f_op_f32(-var_0.c)), any(var_0.a.zz), all(var_0.a)), _wgslsmith_f_op_vec3_f32(-var_0.b), var_0.b.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(30062i, abs(-7550i), 21797i, countOneBits(_wgslsmith_clamp_i32(global1.x, -2147483647i, global1.x)))), -vec4<i32>(global1.x, 15564i, _wgslsmith_mod_i32(-global1.x, -30063i), (35880i >> (1u % 32u)) & global1.x));
    global0 = array<vec3<bool>, 13>();
    let var_0 = 1u;
    var var_1 = arg_0;
    var var_2 = arg_0.a.x;
    return Struct_1(vec3<bool>(var_1.a.x, arg_0.a.x, arg_0.b.x < _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-913f, _wgslsmith_f_op_vec3_f32(func_4(arg_0)).x, _wgslsmith_f_op_f32(1352f + var_1.b.x))), func_3(70307i, global1.xxx, func_3(u_input.a, min(~vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(-6814i, -2103i, global1.x) & global1.zzz), func_2(func_3(global1.x, global1.zzx, Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, false), var_1.b, -241f), Struct_1(var_1.a, vec3<f32>(361f, -1684f, -379f), -1731f)), global1.wxz, _wgslsmith_mod_i32(u_input.a, 1i), _wgslsmith_mod_i32(0i, -3381i)), Struct_1(func_1(var_1.a.x, 4294967295u).a, _wgslsmith_div_vec3_f32(arg_0.b, var_1.b), -1421f)), arg_0).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(false, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8352u, 14189u, 68538u), vec4<u32>(0u, 49086u, 4294967295u, 0u)))));
    global1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.a, 28942i, u_input.a, global1.x)), ~vec4<i32>(-11704i, global1.x, -1i, 8203i)), vec4<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a | -1i, reverseBits(u_input.a)), global1.x, abs(firstLeadingBit(global1.x)))), vec4<i32>(0i, u_input.a, u_input.a, -_wgslsmith_mult_i32(u_input.a, 1i)));
    var var_1 = var_0;
    global0 = array<vec3<bool>, 13>();
    global1 = min(select(vec4<i32>(global1.x, global1.x, -u_input.a, u_input.a | global1.x), min(reverseBits(vec4<i32>(-51615i, global1.x, global1.x, -29435i)), ~vec4<i32>(17063i, 0i, 1i, u_input.a)), !var_1.a.x) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 38661u, 27678u, 4654u), select(vec4<u32>(17556u, 4294967295u, 108218u, 35995u), vec4<u32>(67121u, 49476u, 10580u, 8114u), false)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -max(vec4<i32>(global1.x, -1i, global1.x, global1.x), vec4<i32>(1i, 2147483647i, global1.x, -15461i)), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-20489i, global1.x, u_input.a, u_input.a), vec4<i32>(29824i, -3596i, 16271i, 1i)))));
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, _wgslsmith_f_op_f32(max(-167f, _wgslsmith_f_op_f32(floor(var_2.b.x)))), _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(-var_0.b.x)))), vec2<i32>(_wgslsmith_mult_i32(u_input.a, min(0i, _wgslsmith_clamp_i32(-6645i, 13803i, u_input.a))), _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(-118i, u_input.a, -1i), -u_input.a)));
}

