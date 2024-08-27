struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: bool;

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = Struct_3(abs(-(~(~vec3<i32>(arg_1.b, arg_2, var_0.b)))));
    global2 = arg_1.a.b;
    var var_2 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.b.x, 0u) & arg_0, vec2<u32>(arg_1.c, 4294967295u) << (vec2<u32>(var_0.c, arg_1.c) % vec2<u32>(32u))), vec2<u32>(0u, 57248u ^ var_0.c)), u_input.b.yz, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.c >> (1u % 32u), 19657u), 1u), var_0.c));
    global0 = array<u32, 25>();
    return !(!var_0.a.a.ww);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = arg_1.x;
    var var_1 = 0u;
    global2 = any(select(!vec2<bool>(arg_1.x, false), select(global1.yx, func_3(u_input.b.zx, Struct_2(Struct_1(vec4<bool>(true, false, true, global1.x), true), u_input.a, 27084u), ~(-45310i)), !(!global1.x)), false));
    global1 = vec3<bool>(arg_0.x == 1675i, (global0[_wgslsmith_index_u32(18964u, 25u)] < ~(~14222u)) && (arg_0.x >= ~(-u_input.a)), true);
    global1 = vec3<bool>(true, !arg_1.x, !(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), 25u)] <= 0u));
    return !vec3<bool>(false, !(!all(vec2<bool>(arg_1.x, true))), countOneBits(0i) < abs(~u_input.c));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global3 = ~_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -30054i), -vec2<i32>(u_input.a, u_input.c)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.b.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.a, u_input.a))) | (-vec2<i32>(u_input.c, 2147483647i) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-5949i, u_input.a), vec2<i32>(31000i, -2147483647i))));
    global1 = func_2(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(1667i, u_input.a, u_input.c), vec3<i32>(1i, -23304i, 71367i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(-13139i, u_input.a, u_input.c), -vec3<i32>(u_input.c, 0i, 1i))), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(2265i, u_input.c, 4308i)), -vec3<i32>(u_input.a, u_input.a, u_input.a)) & -min(vec3<i32>(2147483647i, u_input.c, -1i), vec3<i32>(-1i, u_input.a, 18670i))), !vec2<bool>(any(!vec3<bool>(true, true, global1.x)), global1.x));
    global0 = array<u32, 25>();
    let var_0 = Struct_1(vec4<bool>(_wgslsmith_mod_u32(~0u, global0[_wgslsmith_index_u32(35794u, 25u)] & 0u) < (u_input.b.x >> (_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.yy) % 32u)), false, all(select(!vec3<bool>(global1.x, true, false), vec3<bool>(false, true, false), global1.x || false)), func_3(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.yz), Struct_2(Struct_1(vec4<bool>(false, true, global1.x, false), global1.x), 7867i >> (0u % 32u), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18735u, 25u)], 25u)], 25u)])), (u_input.a & u_input.c) >> (_wgslsmith_div_u32(u_input.b.x, 18117u) % 32u)).x), global1.x);
    var var_1 = !select(vec3<bool>(var_0.b, ~u_input.c > _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-70578i, -48027i)), ~u_input.c <= _wgslsmith_mult_i32(u_input.a, 18804i)), !var_0.a.wyx, false);
    return Struct_2(var_0, u_input.a, u_input.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    var var_0 = !arg_0.a.a.zxz;
    var var_1 = max(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, arg_0.c), vec2<u32>(61097u, 0u)), global0[_wgslsmith_index_u32(~arg_0.c, 25u)]);
    global3 = select(min(arg_1.a.x, -1i), _wgslsmith_add_i32(arg_1.a.x, arg_0.b), !func_1(1f).a.b);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 25u)], u_input.b.x), u_input.b.xy), 25u)];
    var var_3 = func_3(firstTrailingBit(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 25u)], 7686u)) ^ u_input.b.yx, Struct_2(arg_0.a, i32(-1i) * -1i, ~(~arg_0.c)), -2147483647i).x;
    return arg_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    global0 = array<u32, 25>();
    var var_0 = _wgslsmith_add_u32((abs(4294967295u) & global0[_wgslsmith_index_u32(22243u, 25u)]) >> (global0[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 0u)), 25u)] % 32u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~(~(~global0[_wgslsmith_index_u32(0u, 25u)])), 25u)], select(~min(u_input.b.x, 1u), 57811u, false)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(35569i, u_input.c, 34536i, u_input.c)) | _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, 31421i), vec4<i32>(-2147483647i, u_input.c, 0i, -10266i)), vec4<i32>(-3360i, u_input.a, u_input.a, -1i)), vec4<i32>(~_wgslsmith_sub_i32(-32665i, u_input.c), u_input.c, 1i, u_input.a), ~select(vec4<i32>(-2147483647i, -24658i, u_input.c, u_input.c), vec4<i32>(u_input.a, -1i, 21560i, u_input.a), global1.x) | _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, u_input.a, -2147483647i, -39084i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, -1i), vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a)))), _wgslsmith_f_op_f32(878f - 1000f), func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -962f)), Struct_3(-min(vec3<i32>(u_input.c, u_input.a, u_input.c), vec3<i32>(-11333i, u_input.a, -2147483647i)))));
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - -1000f))))).a;
    global1 = vec3<bool>(func_3(select(~(~u_input.b.zy), u_input.b.yz, var_1.a.ww), func_1(_wgslsmith_f_op_f32(f32(-1f) * -367f)), -2147483647i).x, true, true);
    let var_2 = 1066f;
    global3 = -1i;
    global3 = var_0.a.x;
    global1 = vec3<bool>(false, _wgslsmith_f_op_f32(-var_2) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - 444f)), 10694i > ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(min(u_input.b, u_input.b) >> (u_input.b % vec3<u32>(32u))) << ((vec3<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), 4682u, 53927u) >> (~u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1405f, 258f, var_2, var_2))) + _wgslsmith_div_vec4_f32(vec4<f32>(1146f, 604f, 1517f, var_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, var_2) * vec4<f32>(var_2, var_2, var_2, 953f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(756f, var_2, _wgslsmith_f_op_f32(trunc(-2462f)), _wgslsmith_f_op_f32(f32(-1f) * -231f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1041f, var_2, var_2)))))));
}

