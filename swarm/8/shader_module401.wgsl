struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(43793i, i32(-2147483648), 1i, -57054i, -32857i, 2147483647i);

var<private> global1: Struct_1;

var<private> global2: i32 = 1132i;

var<private> global3: Struct_1 = Struct_1(28577u, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    var var_0 = !(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, global1.c, true), vec3<bool>(true, true, true)), vec3<bool>(true, global1.b, true), select(vec3<bool>(true, global1.b, global1.c), vec3<bool>(false, false, false), vec3<bool>(global1.b, true, global3.c))), vec3<bool>(any(vec2<bool>(global1.c, global3.c)), global3.b, false & global1.b), vec3<bool>(global1.b, false || global1.b, all(vec2<bool>(true, true)))));
    var_0 = select(!select(!vec3<bool>(global3.b, var_0.x, global3.b), select(vec3<bool>(global3.b, global3.b, false), select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, global3.b, global3.c), vec3<bool>(var_0.x, global3.c, var_0.x)), !vec3<bool>(global3.c, false, global1.c)), vec3<bool>(global3.c, !global1.c, true)), !(!(!(!vec3<bool>(global3.b, true, false)))), vec3<bool>(true, !(!any(vec4<bool>(true, true, false, false))), select(all(vec3<bool>(global1.c, global3.c, true)), false, false)));
    global1 = Struct_1(_wgslsmith_mult_u32(global3.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(3356u, global3.a) >> (~26512u % 32u), ~(~44361u))), ~(~(~global1.a)) <= ~4294967295u, -73801i != (max(min(0i, global0[_wgslsmith_index_u32(69040u, 6u)]), global0[_wgslsmith_index_u32(global3.a, 6u)] & 2147483647i) ^ 2147483647i));
    global2 = ~(-firstTrailingBit(_wgslsmith_add_i32(u_input.b | -6784i, 76902i)));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a, 1u), reverseBits(vec2<u32>(37854u, global3.a)) & vec2<u32>(41686u, ~global3.a)), select(_wgslsmith_sub_i32(-21195i, ~0i) > _wgslsmith_dot_vec4_i32(max(vec4<i32>(-37219i, 3919i, 7373i, u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(global3.a, 6u)], 44755i, u_input.a, -13508i)), vec4<i32>(-1i, 68486i, u_input.b, 1i) | vec4<i32>(21077i, u_input.a, u_input.a, u_input.a)), false && (var_0.x || true), any(select(!var_0.xz, !vec2<bool>(global3.c, true), select(true, global1.b, global1.b)))), true & (_wgslsmith_dot_vec2_i32(max(vec2<i32>(global0[_wgslsmith_index_u32(global3.a, 6u)], u_input.b), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(global1.a, 6u)])), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], -60206i)) >= u_input.b));
    return min(vec3<i32>(20960i, ~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global1.a, 6u)], u_input.b), firstTrailingBit(global0[_wgslsmith_index_u32(var_1.a, 6u)] ^ 15861i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i | global0[_wgslsmith_index_u32(var_1.a, 6u)], ~0i, -7289i), firstLeadingBit(-vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(61510u, 6u)], 0i))), min(vec3<i32>(-u_input.b, i32(-1i) * -17439i, -u_input.b), select(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.b), vec3<i32>(-24367i, global0[_wgslsmith_index_u32(33340u, 6u)], 6950i)), -vec3<i32>(2147483647i, 2147483647i, u_input.a), !vec3<bool>(true, var_1.c, global3.c))) ^ ~(-vec3<i32>(global0[_wgslsmith_index_u32(global3.a, 6u)], global0[_wgslsmith_index_u32(72048u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec2<u32>(global3.a, 33697u) >> (_wgslsmith_add_vec2_u32(firstLeadingBit(~(~vec2<u32>(57375u, 34753u))), vec2<u32>(~(~arg_0.a), 1u)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_div_vec3_i32(-func_3(), reverseBits(-vec3<i32>(-15069i, ~u_input.b, -50016i)));
    global1 = arg_0;
    var var_2 = Struct_2(select(arg_0.a, max(global1.a, var_0.x), true));
    let var_3 = vec2<u32>(global3.a, 46085u);
    return vec4<u32>(~abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 1u, global1.a, 6067u), vec4<u32>(global3.a, 37612u, var_3.x, var_2.a)), 16096u)), var_0.x, abs(firstLeadingBit(~var_2.a)), 1u);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2.yyy;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_3 + -1000f)))))));
    var var_2 = arg_1;
    global2 = -(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.x), abs(var_0.xy)), u_input.b));
    let var_3 = Struct_2(var_2.a);
    return Struct_1(global1.a, !(all(select(arg_0, vec3<bool>(global1.c, true, false), true)) && false), !(!any(vec3<bool>(false, true, arg_1.c))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(true, select(all(vec2<bool>(true, global1.c)), true, false) || !global3.c);
    let var_1 = func_4(vec3<bool>(all(select(vec2<bool>(false, global1.c), !vec2<bool>(true, global3.c), vec2<bool>(true, global3.c))), global1.b, false), Struct_1(global3.a, !global3.c, true), vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 6u)], ~global0[_wgslsmith_index_u32(global1.a, 6u)] >> (global1.a % 32u), -2147483647i) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 31937u, global1.a, 1u), vec4<u32>(50144u, 1u, global1.a, global1.a) >> (vec4<u32>(global1.a, global3.a, 64873u, global3.a) % vec4<u32>(32u))) ^ func_2(Struct_1(4294967295u, true, false))) % vec4<u32>(32u)), _wgslsmith_div_f32(967f, 375f));
    global1 = var_1;
    global1 = var_1;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -763f))), countOneBits(4294967295u) > ~global3.a)), -831f)));
    return Struct_1(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global3.a, 69702u, var_1.a) << (vec3<u32>(4294967295u, 4552u, var_1.a) % vec3<u32>(32u)), ~vec3<u32>(5798u, var_1.a, global3.a), !vec3<bool>(false, global3.b, true)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global3.a, 2847u, 28268u), _wgslsmith_sub_vec3_u32(vec3<u32>(global3.a, 60697u, 4294967295u), vec3<u32>(global3.a, var_1.a, global3.a)), abs(vec3<u32>(global3.a, 1u, var_1.a)))), (any(!vec4<bool>(var_0.x, false, true, true)) && var_1.c) & true, !(1i >= u_input.a));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = array<i32, 6>();
    let var_0 = global1.b;
    global0 = array<i32, 6>();
    var var_1 = _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(13374u, 6u)] ^ u_input.a, _wgslsmith_div_i32(-29019i, _wgslsmith_sub_i32(-48844i, u_input.a)), _wgslsmith_mod_i32(reverseBits(max(global0[_wgslsmith_index_u32(arg_0.a, 6u)], -42047i)) << (36845u % 32u), u_input.a << (~1u % 32u)));
    global3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(530f, -1053f, 2301f))), vec3<f32>(_wgslsmith_f_op_f32(sign(1838f)), _wgslsmith_f_op_f32(631f * 100f), _wgslsmith_f_op_f32(max(977f, -750f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(func_1(), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 6u)], 0i), vec3<i32>(-27949i, global0[_wgslsmith_index_u32(global3.a, 6u)], u_input.b)), ~0i, ~global0[_wgslsmith_index_u32(4294967295u, 6u)], ~u_input.b) & vec4<i32>(global0[_wgslsmith_index_u32(~global3.a ^ select(global1.a, global1.a, global1.c), 6u)], _wgslsmith_dot_vec2_i32(~vec2<i32>(59403i, 2147483647i), -vec2<i32>(0i, -1i)), u_input.b, ~(~global0[_wgslsmith_index_u32(1u, 6u)])), func_4(!vec3<bool>(true, u_input.b < u_input.a, all(vec4<bool>(global3.c, global3.b, global1.c, false))), func_1(), ~(-firstTrailingBit(vec4<i32>(9571i, u_input.b, global0[_wgslsmith_index_u32(global1.a, 6u)], 0i))), -782f)));
    var var_1 = _wgslsmith_mult_i32(abs(u_input.a), -(firstTrailingBit(u_input.a) | 0i));
    let var_2 = var_0;
    global2 = -1i;
    var var_3 = -(vec2<i32>(0i, ~firstTrailingBit(global0[_wgslsmith_index_u32(global3.a, 6u)])) >> ((_wgslsmith_mult_vec2_u32(max(vec2<u32>(global3.a, 0u), vec2<u32>(39373u, global1.a)), select(vec2<u32>(83677u, 4294967295u), vec2<u32>(global1.a, global1.a), vec2<bool>(false, true))) & vec2<u32>(1u, ~0u)) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_mult_i32(select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(51076i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 6u)], u_input.a, -2147483647i), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(72778u, 6u)], 1i, 0i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(48855i, -2147483647i, u_input.b, -33670i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(28184u, 6u)], 1i, global0[_wgslsmith_index_u32(0u, 6u)], -27478i), vec4<i32>(-15930i, global0[_wgslsmith_index_u32(48142u, 6u)], -56491i, u_input.b)))), abs(global0[_wgslsmith_index_u32(~(~global3.a), 6u)]), global3.b), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -1073f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1139f, -1279f)) * _wgslsmith_f_op_vec2_f32(max(var_0.zz, var_0.xy))))), vec2<u32>(~_wgslsmith_clamp_u32(~global3.a, 1u, global3.a ^ 17511u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.a), _wgslsmith_mod_vec2_u32(vec2<u32>(20585u, global1.a), vec2<u32>(62478u, 74579u)))), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3.a, global3.a, 1u), vec3<u32>(global3.a, 4294967295u, 39529u)), vec3<u32>(884u, global3.a, 0u)), 1u));
}

