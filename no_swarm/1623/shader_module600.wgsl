struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: vec4<f32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = select(true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), select(true, false, false))), false) | true;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), arg_1.a.x, arg_1.a.x, Struct_2(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 0u, u_input.a.x)), vec3<u32>(44241u, 23306u, 0u) | vec3<u32>(1u, arg_0, arg_0)), ~vec3<i32>(16575i, arg_2.x, _wgslsmith_div_i32(arg_2.x, 22942i)), true));
    var var_2 = false;
    let var_3 = global0[_wgslsmith_index_u32(0u, 18u)];
    var_0 = !any(select(vec4<bool>(false, true, all(vec3<bool>(false, var_1.d.c, var_1.d.c)), var_3.d.c), vec4<bool>(select(var_1.d.c, false, false), true, false, var_1.d.c), true));
    return ~34922u;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: i32) -> vec4<bool> {
    global0 = array<Struct_3, 18>();
    let var_0 = select(-min(vec2<i32>(arg_3, arg_3), vec2<i32>(arg_3 >> (20177u % 32u), arg_3 << (u_input.a.x % 32u))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(1i, arg_3)), firstLeadingBit(vec2<i32>(2147483647i, arg_3))), ~reverseBits(vec2<i32>(23707i, arg_3))) >> (vec2<u32>(~(22948u >> (0u % 32u)), arg_1) % vec2<u32>(32u)), !(!any(vec4<bool>(true, true, true, true))) | any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    return vec4<bool>(false, true, u_input.a.x != min(4294967295u, (6710u >> (arg_1 % 32u)) >> (_wgslsmith_sub_u32(48955u, u_input.a.x) % 32u)), false);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(1455f + _wgslsmith_f_op_f32(floor(arg_3.b))), -1060f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -513f)), Struct_2(0u, _wgslsmith_mod_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, -1i), arg_3.d.b), vec3<i32>(-21950i, -2147483647i, 59829i), vec3<bool>(true, arg_2.x, true)), abs(vec3<i32>(20855i, arg_3.d.b.x, arg_3.d.b.x))), ~arg_0 > ((arg_0 & arg_0) & ~2147483647i)));
    let var_1 = reverseBits(u_input.a.x);
    var var_2 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(min(max(vec3<u32>(arg_3.d.a, 15773u, 4294967295u), vec3<u32>(67546u, 1u, var_0.d.a)), ~vec3<u32>(0u, arg_3.d.a, 1u)), countOneBits(vec3<u32>(u_input.a.x, 9943u, arg_3.d.a))), 0u);
    let var_3 = -(i32(-1i) * -arg_0);
    var var_4 = abs(reverseBits(~select(-2147483647i | arg_1.d.b.x, ~1i, func_4(vec4<f32>(arg_3.b, var_0.a, arg_1.b, -929f), 53801u, arg_1.c, 1i).x)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + var_0.c)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-1679f + _wgslsmith_f_op_f32(step(global1.x, -694f)))) + -910f), -1000f, arg_1.d);
    var var_1 = 1i;
    global1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-515f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x + 448f), -492f))), _wgslsmith_f_op_f32(func_5(arg_1.d.b.x, Struct_3(_wgslsmith_f_op_f32(-var_0.a), var_0.c, _wgslsmith_f_op_f32(var_0.a * arg_1.c), arg_1.d), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(882f, -240f, global1.x, global1.x), vec4<f32>(arg_0.x, -1094f, arg_0.x, var_0.b), vec4<bool>(true, true, false, true))), func_3(12493u, Struct_1(vec4<f32>(-420f, 549f, 1620f, 141f)), vec4<i32>(arg_3, arg_2.x, 0i, -1i)), -668f, -arg_1.d.b.x), Struct_3(-168f, 1000f, -1000f, var_0.d))), global1.x, _wgslsmith_f_op_f32(-1099f + 1027f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b)))), -1459f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-375f - arg_0.x) + _wgslsmith_f_op_f32(floor(global1.x))), -1000f))), all(select(!(!vec3<bool>(arg_1.d.c, false, var_0.d.c)), select(!vec3<bool>(false, var_0.d.c, true), vec3<bool>(true, true, true), var_0.d.c), arg_1.d.c))));
    global0 = array<Struct_3, 18>();
    var var_2 = 1013f;
    return arg_2.x;
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 22680i), vec2<i32>(2147483647i, 33792i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 76552i, 21676i), vec3<i32>(24992i, 2147483647i, 0i)), -32036i, 0i) << (countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u)), select(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, -1i), vec4<i32>(29871i, -68379i, 51171i, 1i)), vec4<i32>(-1i) * -vec4<i32>(21074i, -6984i, -24339i, -3052i), u_input.a.x <= countOneBits(u_input.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -16189i), _wgslsmith_dot_vec4_i32(vec4<i32>(-44345i, 50153i, 42128i, 0i), vec4<i32>(2147483647i, -1i, 15637i, 1i)), ~(-6968i), 1i) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32234u)), ~vec4<u32>(u_input.a.x, 698u, u_input.a.x, u_input.a.x), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(1i, 24615i), min(1i, -28342i), ~13691i, 2147483647i))), ~firstLeadingBit(func_2(_wgslsmith_f_op_vec2_f32(-global1.xz), Struct_3(-505f, -994f, global1.x, Struct_2(u_input.a.x, vec3<i32>(-2147483647i, 0i, 32158i), false)), select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-1i, -1i), false), 1i)), 0i);
    let var_1 = Struct_2(u_input.a.x, abs(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, func_2(global1.wz, global0[_wgslsmith_index_u32(1u, 18u)], var_0.yz, var_0.x), _wgslsmith_div_i32(var_0.x, -2147483647i)), i32(-1i) * -8221i, _wgslsmith_dot_vec3_i32(var_0.wxy, var_0.zzy) << (118531u % 32u))), select(!(true & any(vec4<bool>(false, false, true, false))), select(true, !all(vec3<bool>(false, false, true)), false), false));
    var var_2 = firstTrailingBit(103836u);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(318f, global1.x, global1.x, global1.x) - vec4<f32>(global1.x, global1.x, global1.x, global1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -505f, -672f, 380f), vec4<f32>(global1.x, global1.x, -730f, global1.x)))))));
    var_0 = vec4<i32>(_wgslsmith_mult_i32(var_0.x, abs(var_0.x)), _wgslsmith_mod_i32(53518i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.b.x), var_0.yx), ~(-1i)) << (58967u % 32u)), max(~var_1.b.x, _wgslsmith_dot_vec2_i32(-var_0.wy, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_1.b.x), vec3<i32>(var_0.x, var_0.x, -1i)), var_0.x))), -2147483647i);
    return Struct_3(global1.x, -102f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(f32(-1f) * -890f))), Struct_2(30150u, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 4475i, -4241i) >> ((vec3<u32>(35213u, 0u, 93813u) ^ vec3<u32>(u_input.a.x, 0u, 46146u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.wyw, var_0.xyz), -var_1.b)), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(0i, _wgslsmith_clamp_i32(22731i, 1i, max(-21017i, 2147483647i)) | -1i, -_wgslsmith_clamp_i32(0i, 18050i, 6722i) & firstTrailingBit(2147483647i << (u_input.a.x % 32u)), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -29580i, 29525i, 0i), vec4<i32>(0i, -1i, 103022i, 2147483647i))), ~(~(-1i)))));
    let var_1 = func_1();
    let var_2 = func_1().d;
    let var_3 = _wgslsmith_f_op_f32(min(var_1.b, -292f));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + -2327f))) - _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * var_3)))), -473f, _wgslsmith_f_op_f32(-var_1.b), var_3);
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(679f, _wgslsmith_f_op_f32(max(-997f, 993f)), _wgslsmith_f_op_f32(sign(-251f)), _wgslsmith_f_op_f32(ceil(var_1.a))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.c, var_3))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, var_3, -1365f, var_3), vec4<f32>(var_1.c, var_1.a, 2127f, 1663f), vec4<bool>(false, var_1.d.c, var_2.c, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -811f, -1000f, var_1.a)))))));
    let var_4 = vec3<u32>(var_1.d.a, var_1.d.a, var_1.d.a);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-983f, var_1.c, global1.x, -1000f)))))), vec2<f32>(-1000f, -446f), 4294967295u, countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 10097u, u_input.a.x, var_1.d.a), vec4<u32>(var_1.d.a, 24002u, var_1.d.a, var_4.x), vec4<u32>(var_1.d.a, var_2.a, var_1.d.a, var_1.d.a)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(54575u, 4294967295u, 47244u, var_1.d.a), vec4<u32>(35479u, 41929u, var_2.a, var_2.a), vec4<u32>(2769u, var_4.x, u_input.a.x, u_input.a.x)), ~(vec4<u32>(var_2.a, 4294967295u, 1u, 4294967295u) >> (vec4<u32>(u_input.a.x, var_4.x, u_input.a.x, var_1.d.a) % vec4<u32>(32u))))));
}

