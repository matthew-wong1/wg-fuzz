struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(9600u);

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global3: Struct_2 = Struct_2(4294967295u);

var<private> global4: array<vec2<bool>, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = 1i;
    global3 = Struct_2(_wgslsmith_mod_u32(4294967295u, ~_wgslsmith_sub_u32(~18357u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.e, 20134u, 50548u, global1.a), vec4<u32>(82281u, 12863u, 1u, 0u)))));
    global1 = Struct_2(~35532u);
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), var_0, reverseBits(arg_0), abs(arg_0)), ~(-vec4<i32>(8116i, arg_0, -42699i, -1i))) >> (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.e, 33653u, global2.x, 0u), firstLeadingBit(vec4<u32>(global2.x, 22025u, global3.a, global2.x))), abs(vec4<u32>(50691u, global3.a, 43509u, global2.x))) % vec4<u32>(32u)), select(vec4<i32>(u_input.a, -50663i, 1i, _wgslsmith_div_i32(49867i, -u_input.a)), vec4<i32>(_wgslsmith_mod_i32(~var_0, ~arg_0), 0i, var_0, abs(reverseBits(-29319i))), vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, 1158f)));
    return 135f;
}

fn func_2() -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global0.e), ~(vec3<u32>(global0.e, 68746u, global2.x) << (~vec3<u32>(global1.a, global0.e, 52189u) % vec3<u32>(32u))));
    global4 = array<vec2<bool>, 20>();
    global4 = array<vec2<bool>, 20>();
    let var_1 = u_input.a;
    global0 = Struct_1(_wgslsmith_f_op_f32(func_3(1i)), !any(global4[_wgslsmith_index_u32(abs(min(956u, global0.e)), 20u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-170f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1542f), _wgslsmith_f_op_f32(-759f - _wgslsmith_f_op_f32(trunc(global0.d))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.d)))) + -118f), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, global1.a)), vec3<u32>(reverseBits(~global3.a), 0u << (global0.e % 32u), global3.a)));
    return Struct_2(~_wgslsmith_add_u32(abs(global3.a), 75163u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    let var_0 = global0.b;
    var var_1 = -abs(arg_2);
    let var_2 = arg_0;
    var var_3 = vec3<i32>(u_input.a ^ min(u_input.a, countOneBits(arg_2)), arg_2, _wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(arg_2, -22630i) ^ -1i), arg_2 << (abs(37475u) % 32u), arg_2));
    global2 = ~select(~vec2<u32>(global1.a, var_2.a), ~abs(vec2<u32>(global1.a, 119380u)), true) ^ vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~var_2.a, 4294967295u, 8852u & global2.x), ~arg_1.e), 4294967295u);
    return max(-vec3<i32>(arg_2, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, var_3.x, 2147483647i), vec3<i32>(arg_2, arg_2, 26283i) | vec3<i32>(u_input.a, -2147483647i, arg_2)), (u_input.a | u_input.a) ^ _wgslsmith_mod_i32(-26527i, -18193i)), select(select(~(-vec3<i32>(2147483647i, u_input.a, 2147483647i)), ~vec3<i32>(28276i, arg_2, u_input.a), vec3<bool>(arg_1.b, arg_1.b, arg_1.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, -2147483647i, -20724i), vec3<i32>(0i, var_3.x, arg_2) & vec3<i32>(arg_2, 76792i, arg_2)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_3.x, arg_2), vec3<i32>(arg_2, var_3.x, u_input.a)))), select(!(!vec3<bool>(arg_1.b, arg_1.b, false)), select(select(vec3<bool>(global0.b, false, arg_1.b), vec3<bool>(false, false, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, true)), !vec3<bool>(global0.b, true, true), !global0.b), all(select(vec3<bool>(true, arg_1.b, false), vec3<bool>(global0.b, global0.b, global0.b), global0.b)))));
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    let var_1 = firstLeadingBit(_wgslsmith_div_vec3_i32(func_4(func_2(), Struct_1(-270f, global0.b & global0.b, global0.d, -1888f, 1u), u_input.a), ~abs(_wgslsmith_div_vec3_i32(vec3<i32>(-28392i, -19810i, u_input.a), vec3<i32>(-3147i, -1i, -1i)))));
    var var_2 = -1i;
    let var_3 = Struct_2(global3.a);
    let var_4 = u_input.a;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-145f, global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(-405f * global0.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -116f))), global0.a))), !(!(any(vec4<bool>(global0.b, true, false, true)) && (true | global0.b))), global0.c, global0.d, var_3.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = ~(~0i);
    let var_1 = 1f;
    global0 = Struct_1(arg_1.c, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) + 121f), _wgslsmith_f_op_f32(f32(-1f) * -396f), arg_0.x);
    global1 = func_2();
    global3 = Struct_2(~28737u);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_f_op_f32(global0.a + 289f)))))), global0.c, 946f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * global0.a)), _wgslsmith_f_op_f32(-1735f * _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(global0.d * 1655f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(global0.e, global0.e)), func_1())), _wgslsmith_f_op_vec3_f32(func_5(~vec2<u32>(global0.e, global2.x), Struct_1(_wgslsmith_f_op_f32(global0.a - global0.a), all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(-global0.a), -814f, _wgslsmith_sub_u32(var_0.a, global0.e))))));
    global0 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))));
    let var_3 = global0.e;
    let var_4 = vec2<u32>(global0.e, 29406u);
    let x = u_input.a;
    s_output = StorageBuffer(~func_2().a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yx) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2446f, var_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, global0.a)) - vec2<f32>(-799f, var_1.x)))), 0u, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(757f, -661f, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(336f, global0.d, -255f) + vec3<f32>(global0.d, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-420f, 1050f, var_1.x))))))));
}

