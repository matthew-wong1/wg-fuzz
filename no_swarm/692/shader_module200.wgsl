struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), -487f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(580f, 149f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.x)) - 347f)), _wgslsmith_f_op_f32(-arg_1.a.x)), ~1u);
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(130808u, 4294967295u, (115196u | ~var_0.b) << (~(~arg_0.x) % 32u), 0u), arg_0);
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    return _wgslsmith_dot_vec2_u32(~arg_0.wy >> (~(~abs(vec2<u32>(1u, 34637u))) % vec2<u32>(32u)), ~arg_0.xz);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1f + 1124f), 2806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1201f - -962f)))), u_input.b & ~_wgslsmith_add_u32(countOneBits(885u), _wgslsmith_mult_u32(u_input.b, u_input.b)));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_1 = arg_2;
    var var_2 = global0[_wgslsmith_index_u32(70789u, 27u)];
    return global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(9857u, var_2.b) >> (var_0.b % 32u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, 4294967295u, 51814u, var_0.b)), select(vec4<u32>(u_input.b, u_input.b, u_input.b, 108095u), vec4<u32>(18850u, 1u, var_0.b, u_input.b), arg_2.x))), select(24011u, var_0.b << (func_3(vec4<u32>(var_0.b, 1u, var_0.b, 4294967295u), Struct_1(var_2.a, 1u)) % 32u), false)), var_0.b), 27u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = ~(~arg_3.b);
    var var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(8263u, 27u)];
    var var_3 = ~(i32(-1i) * -3164i);
    let var_4 = 2360i;
    return ~u_input.b;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, 2131f, arg_0.a.x, arg_1))), vec4<f32>(arg_0.a.x, arg_0.a.x, arg_1, 409f))))), u_input.b);
    var var_1 = 1u;
    var_1 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.x, -551f, var_0.a.x, arg_1))) - arg_0.a))), _wgslsmith_f_op_vec4_f32(trunc(arg_0.a))), Struct_1(var_0.a, 57739u), _wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, -2147483647i), abs(vec2<i32>(-2147483647i, u_input.a))), ~vec2<i32>(_wgslsmith_add_i32(u_input.a, 12303i), _wgslsmith_mult_i32(-1i, u_input.c))), func_2(u_input.a, ~_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, 1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -14857i, u_input.a, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, -1092i))), arg_2));
    var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(var_0.a.xwz));
    return 529f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(-1000f, -641f, -973f, 2712f), 0u), -540f, vec4<bool>(true, true, true, false))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-459f)), 1f)) + _wgslsmith_f_op_f32(step(-1517f, _wgslsmith_f_op_f32(min(232f, 323f)))))) + _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1895f, -2806f)))), true)));
    let var_1 = func_2(u_input.a, vec4<i32>(min(-11373i, 34799i ^ u_input.a) ^ -4282i, -u_input.c, 50065i, -u_input.a), vec4<bool>(false, true, ((u_input.b ^ u_input.b) << (_wgslsmith_div_u32(1u, u_input.b) % 32u)) < 4294967295u, (u_input.b >= ~u_input.b) != true));
    let var_2 = func_2(abs(-28702i), _wgslsmith_sub_vec4_i32(reverseBits(abs(-vec4<i32>(-92923i, 0i, -1i, u_input.c))), countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.c, -2147483647i), vec4<i32>(u_input.c, 2147483647i, u_input.c, -2147483647i)), vec4<i32>(-2474i, u_input.c, u_input.a, u_input.a), -vec4<i32>(2147483647i, u_input.a, u_input.a, 34776i)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), true), vec4<bool>(true, true, false, true || any(vec3<bool>(false, true, false))), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false), true)));
    var var_3 = select(select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !any(vec3<bool>(false, true, false))), -26859i <= u_input.a), !(!vec3<bool>(any(vec3<bool>(true, true, true)), false, var_1.b >= 4294967295u)), vec3<bool>(all(vec3<bool>(true, true, true)) && !(-2147483647i <= u_input.a), true, any(vec4<bool>(var_2.b < u_input.b, true, select(true, true, true), all(vec2<bool>(true, true))))));
    let var_4 = var_2;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.www, _wgslsmith_clamp_vec2_u32(~firstLeadingBit(vec2<u32>(63328u, 0u)), ~firstTrailingBit(select(vec2<u32>(0u, var_1.b), vec2<u32>(4294967295u, 1u), true)), select(vec2<u32>(u_input.b, _wgslsmith_mod_u32(var_2.b, var_2.b)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_4.b, var_1.b), vec2<u32>(var_2.b, var_4.b)), vec2<u32>(var_1.b, u_input.b) & vec2<u32>(1u, 52426u), ~vec2<u32>(0u, u_input.b)), var_3.yz)), -483f, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_1.b, var_1.b, var_1.b), vec4<u32>(69608u, 4294967295u, 29793u, var_2.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.b, 1u, var_4.b), select(vec4<u32>(1u, var_2.b, var_4.b, var_4.b), vec4<u32>(58354u, var_4.b, 43415u, 0u), vec4<bool>(true, false, false, var_3.x)))), vec4<u32>(1u, u_input.b, var_1.b >> (var_1.b % 32u), var_2.b) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(var_4.b, 14924u, 59764u, u_input.b), select(vec4<u32>(1u, 4294967295u, 5388u, 59432u), vec4<u32>(var_2.b, 8631u, 9706u, u_input.b), vec4<bool>(true, var_3.x, false, false)))), -2147483647i);
}

