struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))))));
    global0 = false;
    global0 = true;
    let var_1 = Struct_1(!(!vec3<bool>(true, all(vec4<bool>(false, true, false, true)), false)), ~(u_input.c << (4541u % 32u)));
    var var_2 = !select(select(!(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false)), vec4<bool>(all(vec2<bool>(true, var_1.a.x)), !var_1.a.x, any(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)), all(vec3<bool>(false, false, false))), !select(vec4<bool>(var_1.a.x, var_1.a.x, false, false), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x))), !select(!vec4<bool>(false, var_1.a.x, false, false), select(vec4<bool>(true, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, false), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x)), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), !var_1.a.x);
    return var_1.a.x;
}

fn func_2() -> bool {
    var var_0 = Struct_1(!vec3<bool>(func_3(vec2<i32>(30940i, u_input.b) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(trunc(-599f)), 33835i), false, select(1u <= u_input.a, any(vec4<bool>(false, false, true, true)), true)), 0u);
    var var_1 = Struct_1(var_0.a, 1u);
    var var_2 = select(var_1.a, !select(!select(vec3<bool>(var_0.a.x, false, var_1.a.x), vec3<bool>(false, false, false), vec3<bool>(var_1.a.x, true, false)), select(var_1.a, vec3<bool>(var_1.a.x, var_0.a.x, true), any(vec3<bool>(var_1.a.x, var_1.a.x, true))), true), any(!vec4<bool>(!var_1.a.x, var_0.a.x, true, true)));
    var var_3 = select(select(var_0.a, select(!vec3<bool>(true, var_1.a.x, var_0.a.x), !select(vec3<bool>(false, true, false), var_1.a, var_2.x), select(!var_1.a, select(vec3<bool>(false, false, true), var_1.a, var_0.a), true)), vec3<bool>(false, all(!var_0.a.zz), var_0.a.x)), !select(vec3<bool>(!var_0.a.x, var_1.a.x, func_3(vec2<i32>(2147483647i, u_input.b), -814f, u_input.b)), vec3<bool>(!var_2.x, var_1.a.x, var_2.x), !(!var_1.a.x)), func_3(reverseBits(~vec2<i32>(-16275i, u_input.b)), 623f, 12689i));
    var var_4 = Struct_1(var_1.a, abs(max(~var_0.b, _wgslsmith_sub_u32(40059u, ~4294967295u))));
    return 497f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-963f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(144f)) + 918f), any(select(vec4<bool>(true, true, var_0.a.x, false), vec4<bool>(false, var_0.a.x, false, var_2.x), vec4<bool>(var_4.a.x, true, var_2.x, var_4.a.x))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 2105f))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_1(vec3<bool>(var_0, !(var_0 && true), !var_0), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.c), max(u_input.a, u_input.a)), 1u), u_input.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c, 21507u), vec4<u32>(1u, 3189u, 0u, u_input.a)), 0u) ^ (~u_input.a & _wgslsmith_div_u32(u_input.a, 0u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, -602f, 1307f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-195f, -1000f, -227f) * vec3<f32>(-1789f, -566f, -1849f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1195f, 872f, -315f), vec3<f32>(1980f, 426f, -222f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -260f, 967f), vec3<f32>(-1000f, -1912f, 2207f)))) - vec3<f32>(_wgslsmith_div_f32(1450f, 122f), _wgslsmith_f_op_f32(549f * -2229f), _wgslsmith_f_op_f32(select(-584f, -2467f, var_1.a.x))))));
    let var_3 = _wgslsmith_mod_vec4_i32(reverseBits(reverseBits(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b, 39328i, 0i, u_input.b), vec4<i32>(2147483647i, 1i, u_input.b, -17398i), vec4<bool>(var_1.a.x, var_0, true, false)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(1u, u_input.c, u_input.a, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)))), ~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(-23467i, -20083i, u_input.b, u_input.b)));
    let var_4 = vec4<bool>(true, true, var_1.a.x, any(select(vec2<bool>(true, any(var_1.a.zx)), !select(vec2<bool>(var_1.a.x, false), vec2<bool>(true, var_0), var_1.a.xz), false)));
    return Struct_1(vec3<bool>(var_4.x, var_0, any(select(!vec4<bool>(false, true, true, var_1.a.x), select(vec4<bool>(var_1.a.x, false, false, true), vec4<bool>(var_1.a.x, var_0, var_4.x, var_4.x), var_1.a.x), select(vec4<bool>(var_1.a.x, false, var_1.a.x, false), var_4, vec4<bool>(var_1.a.x, false, true, var_1.a.x))))), min(~(~var_1.b), 40618u));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = select(arg_0.a.x || false, any(vec4<bool>(arg_0.a.x & !arg_0.a.x, !all(vec2<bool>(arg_0.a.x, false)), false, true)), true);
    var var_0 = _wgslsmith_f_op_f32(648f - -637f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-693f * -672f), _wgslsmith_f_op_f32(f32(-1f) * -1256f)))) + _wgslsmith_f_op_f32(select(-1054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-684f, -1154f)) - _wgslsmith_f_op_f32(select(1110f, 1000f, arg_0.a.x))), true || (u_input.b == u_input.b)))));
    var var_2 = any(!(!arg_0.a));
    var_2 = all(vec2<bool>(arg_0.a.x, true & (true || any(arg_0.a.xz))));
    return Struct_1(arg_0.a, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(~(~vec4<u32>(4294967295u, 58049u, var_0.b, var_0.b))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.c, u_input.c)), firstLeadingBit(var_0.b)), var_0.b, ~var_0.b, 0u)), ~(~abs(vec4<u32>(u_input.c, 38273u, u_input.c, 19612u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, u_input.c, 0u, u_input.a) << (vec4<u32>(17234u, 9373u, var_0.b, var_0.b) % vec4<u32>(32u)), ~vec4<u32>(var_0.b, 8357u, u_input.a, var_0.b), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)) % vec4<u32>(32u))), reverseBits(_wgslsmith_div_vec4_u32(max(reverseBits(vec4<u32>(u_input.c, u_input.a, var_0.b, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, u_input.c, var_0.b, 0u), vec4<u32>(var_0.b, var_0.b, 4294967295u, u_input.a))), (vec4<u32>(u_input.c, 9669u, 1580u, 4294967295u) >> (vec4<u32>(var_0.b, 1u, 45529u, u_input.c) % vec4<u32>(32u))) << (~vec4<u32>(33405u, 4294967295u, var_0.b, u_input.a) % vec4<u32>(32u)))));
    let var_2 = func_4(func_1());
    global0 = var_2.a.x;
    let var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(_wgslsmith_div_i32(~u_input.b, u_input.b)), ~_wgslsmith_mult_i32(-1i, u_input.b), 2147483647i, -86363i), 1u, vec4<u32>(_wgslsmith_add_u32(~4294967295u, _wgslsmith_mod_u32(4294967295u, var_1.x)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u) | var_1.ww, _wgslsmith_mod_vec2_u32(var_1.ww, var_1.xx)) % 32u), 62704u, 29936u, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-870f)))));
}

