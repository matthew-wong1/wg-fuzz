struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2552f, vec2<i32>(-24443i, 0i), true, 31403u, 408f);

var<private> global1: i32 = -69789i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: Struct_4) -> i32 {
    global1 = -33997i;
    var var_0 = !vec3<bool>(select(!all(vec3<bool>(true, global0.c, true)), false, global0.c), true, !arg_1.c.c & true);
    let var_1 = vec2<u32>(4294967295u << (reverseBits(~(arg_3.b.d << (arg_1.c.d % 32u))) % 32u), _wgslsmith_add_u32(0u, ~(10307u << (1u % 32u))));
    var_0 = !vec3<bool>(all(!vec4<bool>(var_0.x, true, false, true)), false, ~(-3919i) == (global0.b.x ^ abs(arg_3.c.x)));
    return 94310i;
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_3(!vec2<bool>(true, global0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(858f, _wgslsmith_f_op_f32(252f + global0.e)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, -1595f))))), !(max(u_input.c.x, u_input.a.x) >= _wgslsmith_mult_u32(u_input.a.x, u_input.c.x)) != true);
    global1 = (~(-2147483647i) & -func_3(27326u < u_input.b.x, Struct_5(Struct_4(global0.b, Struct_1(var_0.b.x, vec2<i32>(global0.b.x, 23409i), global0.c, global0.d, 1586f), vec4<i32>(global0.b.x, 33542i, 1i, global0.b.x), var_0.b), global0.e, Struct_1(var_0.b.x, global0.b, global0.c, u_input.c.x, 713f)), vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), Struct_4(vec2<i32>(global0.b.x, 44528i), Struct_1(-1809f, vec2<i32>(global0.b.x, 0i), true, 0u, -1139f), vec4<i32>(global0.b.x, global0.b.x, global0.b.x, -18861i), var_0.b))) ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~global0.b, vec2<i32>(global0.b.x, global0.b.x)), ~(-13141i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, global0.b.x, 33843i), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 8786i, global0.b.x), vec3<i32>(global0.b.x, 1i, global0.b.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b.x, -43114i, global0.b.x) ^ vec3<i32>(3645i, 4007i, global0.b.x), ~vec3<i32>(0i, 28838i, global0.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global0.b.x, global0.b.x), vec3<i32>(global0.b.x, 1i, 39876i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, global0.e, global0.e) * vec3<f32>(-1290f, 795f, var_0.b.x))))))));
    global1 = -reverseBits(global0.b.x);
    global1 = 23115i;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * 1475f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 213f)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(447f, 1f)), var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1183f + var_1.x)));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> i32 {
    return arg_0;
}

fn func_1() -> Struct_4 {
    global1 = 11247i;
    var var_0 = true;
    var_0 = global0.c;
    var var_1 = global0.d;
    var_0 = countOneBits(func_4(_wgslsmith_mod_i32(-7750i, ~global0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), vec2<u32>(~4294967295u, u_input.b.x))) > (countOneBits(-global0.b.x) >> (((~global0.d | 14161u) | firstTrailingBit(0u)) % 32u));
    return Struct_4(select(global0.b, vec2<i32>(-30524i, _wgslsmith_clamp_i32(abs(35379i), 1i, 2147483647i)), vec2<bool>(all(!vec3<bool>(global0.c, true, false)), all(vec4<bool>(true, global0.c, global0.c, global0.c)))), Struct_1(global0.a, ~reverseBits(vec2<i32>(-1i, 0i) & vec2<i32>(global0.b.x, 5413i)), !any(!vec3<bool>(global0.c, global0.c, global0.c)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(33132u, 66637u, 15804u, 1u), reverseBits(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.c.x))), u_input.c), -191f), vec4<i32>(firstLeadingBit(global0.b.x ^ (global0.b.x << (global0.d % 32u))), -(i32(-1i) * -11425i), 2147483647i, min(0i, global0.b.x >> (firstTrailingBit(u_input.c.x) % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2()).wz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_4(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(var_0.b.b, firstTrailingBit(vec2<i32>(36372i, 16931i))), func_1().b, countOneBits(var_0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(706f, 145f), var_0.d))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.b.a)), var_0.d))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(var_0.d)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.d * var_0.d), _wgslsmith_div_vec2_f32(var_0.d, var_0.d))))));
    let var_1 = global0.b.x;
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.b.x >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global0.d, 0u, 6872u)) % 32u), max(1i, i32(-1i) * -1i)), vec2<i32>(~1i, _wgslsmith_mod_i32(global0.b.x, 60683i))) & var_0.b.b.x;
    global0 = func_1().b;
    var var_2 = vec2<f32>(var_0.d.x, 1f);
    var var_3 = Struct_4(select(min(~(vec2<i32>(1i, global0.b.x) ^ var_0.a), vec2<i32>(-12293i, 14190i)), select(global0.b, min(global0.b, global0.b), vec2<bool>(false, true)) ^ _wgslsmith_mod_vec2_i32(var_0.c.ww, global0.b ^ vec2<i32>(1i, var_0.c.x)), !var_0.b.c), var_0.b, vec4<i32>(-1i, abs(func_3(true, Struct_5(Struct_4(global0.b, Struct_1(global0.a, vec2<i32>(var_0.b.b.x, 14552i), global0.c, u_input.c.x, global0.a), vec4<i32>(var_0.a.x, 5882i, -32236i, -19216i), var_0.d), 546f, Struct_1(global0.e, vec2<i32>(-21550i, var_0.c.x), false, 20994u, var_0.b.a)), vec3<f32>(-1139f, 104f, -651f), func_1())), reverseBits(i32(-1i) * -global0.b.x), func_3(var_0.b.c, Struct_5(Struct_4(vec2<i32>(var_0.a.x, var_0.a.x), var_0.b, vec4<i32>(35037i, 2147483647i, 1i, -1i), var_0.d), _wgslsmith_f_op_f32(var_2.x * var_0.b.e), var_0.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a, 2348f, 612f))))), Struct_4(~vec2<i32>(var_0.c.x, var_0.b.b.x), Struct_1(-1207f, global0.b, false, u_input.a.x, global0.e), var_0.c & var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-893f, var_0.d.x) - var_0.d)))), vec2<f32>(-1085f, _wgslsmith_f_op_f32(-global0.e)));
    global1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~min(~u_input.b.ww, vec2<u32>(countOneBits(14522u), _wgslsmith_div_u32(var_3.b.d, var_3.b.d))), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(u_input.b.x, 18000u, u_input.b.x, 47809u), u_input.b, all(vec2<bool>(true, var_3.b.c))), u_input.b, ~vec4<u32>(4294967295u, ~u_input.b.x, 37936u, 22936u)), u_input.a.yz, -(~var_3.c.xwz));
}

