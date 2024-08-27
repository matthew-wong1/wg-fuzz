struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -40315i;

var<private> global1: array<f32, 29> = array<f32, 29>(138f, 421f, 1112f, 879f, -1051f, 108f, 859f, -573f, -686f, -1197f, 1000f, -600f, -1000f, 100f, -690f, 302f, -138f, 1088f, 626f, 1000f, -304f, -1377f, 765f, 100f, -436f, -256f, 1181f, -858f, 789f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    let var_0 = max(_wgslsmith_mod_vec2_u32(u_input.a, arg_0), _wgslsmith_add_vec2_u32(firstTrailingBit(min(~vec2<u32>(23445u, 25880u), ~u_input.a)), u_input.a));
    global0 = _wgslsmith_clamp_i32(62044i, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, -41770i), 1i), 2147483647i);
    let var_1 = Struct_1(-1i, select(select(!(!vec2<bool>(arg_1, false)), vec2<bool>(1221f >= arg_2.x, var_0.x != 7088u), vec2<bool>(32285u <= var_0.x, !arg_1)), select(!select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), arg_1), !vec2<bool>(false, arg_1), any(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), false))), any(select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, false, false), vec3<bool>(false, arg_1, false)), vec3<bool>(arg_1, arg_1, false), true))));
    global0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-var_1.a, select(var_1.a, 47891i, var_1.b.x), var_1.a), 431i), vec2<i32>(var_1.a, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(var_1.a, 28013i))))));
    let var_2 = -507f;
    return 1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: i32) -> bool {
    let var_0 = firstTrailingBit(u_input.a.x) > (0u ^ ~(~(u_input.a.x & 1524u)));
    global0 = _wgslsmith_add_i32(~func_3(~vec2<u32>(u_input.a.x, 1u), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, global1[_wgslsmith_index_u32(1389u, 29u)]))), -2147483647i);
    global1 = array<f32, 29>();
    let var_1 = -115f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2374f, -990f))) - vec2<f32>(454f, var_1)), vec2<f32>(_wgslsmith_f_op_f32(-875f + var_1), _wgslsmith_div_f32(646f, 1012f)))) + vec2<f32>(1000f, -1118f)));
    return true;
}

fn func_2() -> vec2<i32> {
    global0 = abs(_wgslsmith_mult_i32(~26833i, _wgslsmith_mod_i32(34587i, -1i)));
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~20447u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 29904u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(9364u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a), 96473u, 31643u);
    var var_1 = vec2<u32>(~var_0.x, u_input.a.x);
    var var_2 = Struct_1(64750i, vec2<bool>(func_4(vec4<i32>(-397i, func_3(vec2<u32>(0u, 15168u), false, vec2<f32>(1954f, global1[_wgslsmith_index_u32(var_0.x, 29u)])), ~1i, func_3(u_input.a, true, vec2<f32>(-112f, global1[_wgslsmith_index_u32(var_1.x, 29u)]))), select(reverseBits(vec4<i32>(2147483647i, -2147483647i, -13202i, -1i)), vec4<i32>(-58813i, 0i, 1i, 28705i) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, var_1.x) % vec4<u32>(32u)), var_0.x < 55772u), -9452i), true));
    var var_3 = var_2.b.x;
    return vec2<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(var_2.a, var_2.a ^ 1i), _wgslsmith_clamp_i32(36736i, var_2.a, ~(~var_2.a)), var_2.a), var_2.a);
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec2<i32> {
    global1 = array<f32, 29>();
    var var_0 = arg_1.x;
    let var_1 = Struct_1(-_wgslsmith_add_i32(arg_1.x, func_2().x), select(!select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_0, false), true), select(!vec2<bool>(arg_0, true), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, true), all(vec4<bool>(arg_0, arg_0, true, false))), arg_0), arg_1.x >= _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 1i), -vec4<i32>(arg_1.x, 1i, -1i, 2967i))));
    var var_2 = var_1;
    var var_3 = Struct_1(-(firstTrailingBit(countOneBits(12719i)) << (reverseBits(1u) % 32u)), !select(vec2<bool>(!arg_0, true), !var_1.b, vec2<bool>(var_2.b.x == var_2.b.x, func_4(vec4<i32>(var_1.a, var_1.a, var_2.a, arg_1.x), vec4<i32>(43535i, 1i, var_2.a, 1i), var_2.a))));
    return select(~(~arg_1), -arg_1, false);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = 14444u;
    var var_1 = Struct_1(arg_0.x ^ max(0i | -arg_0.x, abs(arg_1.a)), select(vec2<bool>(select(!arg_1.b.x, true, arg_1.b.x), all(!vec2<bool>(arg_1.b.x, true))), arg_1.b, select(arg_1.b, arg_1.b, arg_1.b.x)));
    global1 = array<f32, 29>();
    let var_2 = -1677f;
    var var_3 = var_2;
    return arg_0.x;
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    global0 = func_6(func_5(true, _wgslsmith_sub_vec2_i32(~(-vec2<i32>(37471i, 13569i)), func_2() | _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -18417i), vec2<i32>(-1i, 0i))), u_input.a), Struct_1(0i | _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-88299i, -26743i)), select(vec2<i32>(10604i, -34438i), vec2<i32>(1i, 2147483647i), true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    global0 = -func_6(-abs(vec2<i32>(-2147483647i, 2147483647i)), Struct_1(-2147483647i, !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))));
    global0 = 1i;
    var var_0 = Struct_1(-(~(~(-32126i))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var_0 = Struct_1(var_0.a, vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) > global1[_wgslsmith_index_u32(24768u, 29u)], false));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(56024u, 29u)];
    global0 = -25975i;
    global0 = func_1(1184f, ~(~u_input.a.x));
    let var_1 = (abs(-vec2<i32>(45776i, -23175i)) >> (_wgslsmith_add_vec2_u32(max(vec2<u32>(0u, u_input.a.x), vec2<u32>(1u, 39210u)) & (u_input.a & u_input.a), u_input.a) % vec2<u32>(32u))) & reverseBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-21319i, -15661i), vec2<i32>(1i, 1i), vec2<i32>(12848i, 49579i)));
    global0 = -2147483647i;
    global0 = _wgslsmith_add_i32(var_1.x, -6745i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-897f))))), global1[_wgslsmith_index_u32(~42637u, 29u)], _wgslsmith_f_op_f32(-286f - 500f)));
    var var_3 = _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(60578u, u_input.a.x, 4294967295u), 4294967295u), ~(~14456u), ~u_input.a.x), ~min(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, 75684u), vec3<u32>(u_input.a.x, 30492u, 31001u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), firstTrailingBit(vec3<u32>(u_input.a.x, 2124u, u_input.a.x)))), 1232f, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(func_1(1886f, u_input.a.x), var_1.x), ~var_1.x), var_1.x, var_1.x), vec3<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, firstLeadingBit(36046u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(max(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, 1u)), vec2<u32>(~35381u, ~u_input.a.x))));
}

