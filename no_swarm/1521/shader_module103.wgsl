struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(603f, -800f), vec3<i32>(-27174i, 1i, i32(-2147483648)), 0u, true, 14556i), Struct_1(vec2<f32>(239f, -745f), vec3<i32>(i32(-2147483648), 2576i, 2147483647i), 1u, false, 4990i), Struct_1(vec2<f32>(2246f, 563f), vec3<i32>(-24357i, 1i, 9530i), 0u, true, i32(-2147483648)));

var<private> global1: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(4569u, ~firstTrailingBit(arg_0.c)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d.x, 20955u, arg_0.c)), abs(~countOneBits(vec3<u32>(u_input.d.x, u_input.d.x, arg_0.c))))), 3u)];
    var var_1 = all(!vec3<bool>(1u >= ~arg_0.c, true, var_0.d));
    global0 = array<Struct_1, 3>();
    var_1 = false;
    var var_2 = select(!(!select(!vec4<bool>(true, arg_0.d, false, arg_0.d), vec4<bool>(false, false, var_0.d, var_0.d), true)), select(select(vec4<bool>(any(vec3<bool>(false, false, arg_0.d)), any(vec4<bool>(true, true, arg_0.d, var_0.d)), false | var_0.d, var_0.d), select(!vec4<bool>(var_0.d, false, true, true), vec4<bool>(false, arg_0.d, var_0.d, true), var_0.d), select(!vec4<bool>(true, var_0.d, var_0.d, true), select(vec4<bool>(arg_0.d, var_0.d, var_0.d, true), vec4<bool>(arg_0.d, false, true, true), false), select(vec4<bool>(false, arg_0.d, false, true), vec4<bool>(false, true, var_0.d, true), false))), select(vec4<bool>(!var_0.d, arg_0.d, var_0.d, var_0.d), select(select(vec4<bool>(false, false, arg_0.d, var_0.d), vec4<bool>(false, arg_0.d, var_0.d, true), vec4<bool>(true, arg_0.d, var_0.d, arg_0.d)), select(vec4<bool>(true, false, var_0.d, arg_0.d), vec4<bool>(false, arg_0.d, false, arg_0.d), true), 597f == var_0.a.x), !select(vec4<bool>(arg_0.d, true, false, arg_0.d), vec4<bool>(var_0.d, false, arg_0.d, true), true)), !select(vec4<bool>(true, arg_0.d, var_0.d, false), select(vec4<bool>(false, false, arg_0.d, true), vec4<bool>(arg_0.d, true, false, var_0.d), arg_0.d), arg_0.d)), vec4<bool>((arg_0.d | false) || !var_0.d, true, !(!var_0.d || true), false));
    return var_0.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> u32 {
    global0 = array<Struct_1, 3>();
    global1 = ~1u >= (u_input.d.x & ~_wgslsmith_div_u32(31501u, func_3(global0[_wgslsmith_index_u32(124337u, 3u)])));
    global0 = array<Struct_1, 3>();
    var var_0 = 4294967295u;
    var var_1 = Struct_1(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(round(-333f))), vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_u32(arg_1.x, 13777u >> (~countOneBits(u_input.d.x) % 32u), u_input.a), any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(true, false, true))), -17105i);
    return ~_wgslsmith_sub_u32(4294967295u, var_1.c) ^ abs(~firstLeadingBit(arg_1.x));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.c, abs(_wgslsmith_sub_u32(countOneBits(func_2(vec3<f32>(1021f, -1294f, 284f), vec2<u32>(u_input.d.x, arg_0.c))), ~(42077u << (u_input.d.x % 32u)))), ~arg_0.c), 3u)];
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a)), _wgslsmith_f_op_vec2_f32(select(var_0.a, arg_0.a, true)), !vec2<bool>(false, var_0.d)))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-abs(0i), 2147483647i, -arg_0.b.x), u_input.c.xzz, min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, var_0.e, 1i) << (vec3<u32>(4294967295u, 74104u, arg_0.c) % vec3<u32>(32u)), -var_0.b), vec3<i32>(1i, 1i, _wgslsmith_sub_i32(var_0.e, 0i)))), 2690u, any(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, var_0.d)), vec2<bool>(arg_0.d, arg_0.d), var_0.a.x >= arg_0.a.x)), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, arg_0.b.x), var_0.e), _wgslsmith_div_i32((arg_0.e & -16891i) & -14757i, max(1i, ~1i))));
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a), _wgslsmith_f_op_vec2_f32(exp2(arg_0.a)))))), _wgslsmith_mult_vec3_i32((-var_0.b >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, var_0.c), vec3<u32>(757u, u_input.d.x, 4294967295u)) % vec3<u32>(32u))) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, arg_0.e), vec3<i32>(u_input.b, 1i, 0i)) & countOneBits(u_input.c.xxx)), var_0.b), 97593u, false, u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> bool {
    global1 = any(vec4<bool>(true, !select(true, true, arg_0.d) && (!arg_0.d && arg_0.d), arg_0.a.x >= func_1(func_1(arg_0)).a.x, any(arg_2)));
    let var_0 = Struct_1(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1974f, _wgslsmith_f_op_f32(f32(-1f) * -168f))))), vec3<i32>(~(~arg_0.e), firstTrailingBit(~1i), 1i), 0u, arg_0.b.x != -1i, ~arg_0.e);
    let var_1 = 1745u;
    var var_2 = select(!select(!(!vec3<bool>(false, false, arg_0.d)), select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(arg_0.d, true, arg_0.d), vec3<bool>(true, true, true)), !any(vec4<bool>(true, var_0.d, arg_2.x, true))), vec3<bool>(true, true, true), true);
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.a.x, var_0.a.x, var_0.b.x != -50002i)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f));
}

fn func_5(arg_0: vec2<bool>) -> vec2<u32> {
    global1 = arg_0.x;
    let var_0 = select(abs(~_wgslsmith_add_vec2_u32(~vec2<u32>(39095u, 0u), u_input.d)), vec2<u32>(10594u, ~7352u), all(select(!vec3<bool>(true, arg_0.x, arg_0.x), select(!vec3<bool>(arg_0.x, false, false), vec3<bool>(true, true, true), any(vec3<bool>(true, arg_0.x, arg_0.x))), false)));
    let var_1 = global0[_wgslsmith_index_u32(func_3(func_1(func_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(0u), select(u_input.d.x, 16411u, arg_0.x), _wgslsmith_div_u32(var_0.x, 35971u)), 3u)]))), 3u)];
    global0 = array<Struct_1, 3>();
    var var_2 = vec2<u32>(~func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -764f) * vec2<f32>(var_1.a.x, -660f)), var_1.b, var_1.c | 158643u, !var_1.d, _wgslsmith_add_i32(u_input.b, u_input.c.x))).c, var_1.c);
    return vec2<u32>(var_2.x, countOneBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var_0 = _wgslsmith_dot_vec2_u32(u_input.d, func_5(vec2<bool>(false, func_4(func_1(Struct_1(vec2<f32>(-1000f, 895f), vec3<i32>(u_input.b, 0i, u_input.b), 1u, true, 24229i)), 0u, vec2<bool>(true, true)))));
    var_0 = ~_wgslsmith_mult_u32(78184u, 33279u);
    var var_1 = vec4<i32>(6679i, 1i, u_input.b | (i32(-1i) * -abs(21588i)), 12591i);
    let var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3028f), 1f) + 1f)), 1456f);
}

