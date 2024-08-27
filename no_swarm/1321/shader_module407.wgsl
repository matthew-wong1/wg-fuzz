struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(36223u, 1000f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))));
    return var_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_1 {
    return func_2();
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = false;
    var var_1 = vec2<bool>(!var_0, any(vec3<bool>(_wgslsmith_div_f32(global0.b, arg_0.b) < func_1(vec4<bool>(false, var_0, var_0, false), vec4<bool>(false, var_0, true, var_0)).b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -29482i, -2147483647i), vec3<i32>(-2147483647i, u_input.b, u_input.b)) < 2147483647i, select(false, !var_0, true))));
    var var_2 = func_2();
    var_2 = Struct_1(select(u_input.a, 4294967295u, all(select(vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(var_0, false)), true))), _wgslsmith_f_op_f32(-var_2.b));
    let var_3 = Struct_2(4294967295u, func_2());
    return _wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_2.a, ~u_input.d, countOneBits(32502u), _wgslsmith_dot_vec4_u32(vec4<u32>(29632u, global0.a, 13839u, 1u), vec4<u32>(arg_0.a, arg_0.a, arg_0.a, u_input.d))), ~countOneBits(vec4<u32>(var_3.b.a, arg_0.a, 1u, var_2.a))), ~reverseBits((vec4<u32>(u_input.c, 0u, 17866u, global0.a) << (vec4<u32>(82535u, u_input.c, 0u, 1u) % vec4<u32>(32u))) ^ (vec4<u32>(31663u, 4294967295u, global0.a, 29855u) | vec4<u32>(1u, 1u, arg_0.a, arg_0.a))));
}

fn func_4(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_3(vec4<u32>(func_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true)).a, arg_0, 91067u, ~global0.a & ~arg_0), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), !select(false, true, true)), !vec2<bool>(all(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, false, true, true)))), Struct_2(min(firstTrailingBit(43416u), global0.a ^ _wgslsmith_sub_u32(global0.a, global0.a)), Struct_1(global0.a, _wgslsmith_div_f32(-837f, global0.b))));
    let var_1 = u_input.b;
    let var_2 = var_0.c.b;
    var var_3 = abs(min(vec2<u32>(0u, u_input.c >> (global0.a % 32u)) << (vec2<u32>(countOneBits(10498u), 0u) % vec2<u32>(32u)), ~var_0.a.xw));
    var var_4 = Struct_2(reverseBits(2365u), var_0.c.b);
    return Struct_3(_wgslsmith_mult_vec4_u32(countOneBits(var_0.a), vec4<u32>(20352u, ~_wgslsmith_dot_vec3_u32(var_0.a.wxy, var_0.a.wzy), ~u_input.c & ~4481u, ~38173u)), select(var_0.b, !var_0.b, vec2<bool>(!var_0.b.x, var_0.b.x)), Struct_2(_wgslsmith_mult_u32(54502u | var_4.a, var_2.a), Struct_1(max(2281u, var_2.a) & _wgslsmith_add_u32(11640u, global0.a), -696f)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-900f * 2196f))));
    var var_1 = arg_1.c;
    var_0 = var_1.b.b;
    var_0 = _wgslsmith_f_op_f32(trunc(arg_2));
    return reverseBits(_wgslsmith_mod_vec2_i32(reverseBits(select(-vec2<i32>(u_input.b, u_input.b), vec2<i32>(-22807i, 2147483647i), vec2<bool>(true, arg_1.b.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, ~1i), _wgslsmith_add_vec2_i32(vec2<i32>(-2896i, u_input.b), vec2<i32>(u_input.b, 2147483647i)) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)))));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_2.c.b;
    let var_0 = _wgslsmith_div_u32(16864u, _wgslsmith_add_u32(arg_2.c.a, (u_input.c | ~1u) << (_wgslsmith_add_u32(1u, 1u) % 32u)));
    let var_1 = vec3<u32>(59884u, arg_2.c.a, 26714u);
    var var_2 = vec3<u32>(u_input.c, 97222u, 42596u) << (vec3<u32>(1u, func_1(vec4<bool>(select(true, arg_2.b.x, true), false, true & arg_2.b.x, false & arg_2.b.x), vec4<bool>(false, false, 253f < global0.b, true)).a, ~(~_wgslsmith_div_u32(var_0, 4294967295u))) % vec3<u32>(32u));
    global0 = Struct_1(_wgslsmith_sub_u32(arg_3.b.a, _wgslsmith_clamp_u32(1u, 50699u, _wgslsmith_dot_vec3_u32(var_1, _wgslsmith_mult_vec3_u32(var_1, var_1)))), _wgslsmith_f_op_f32(-func_2().b));
    return func_1(vec4<bool>(arg_2.b.x, false, select(arg_2.b.x, true, arg_1.x <= 33882i), true), !vec4<bool>(arg_2.b.x, all(!vec3<bool>(true, false, arg_2.b.x)), max(1u, 0u) == arg_0.x, all(!vec4<bool>(true, arg_2.b.x, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(vec4<u32>(reverseBits(8825u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(57571u, u_input.c), global0.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 1u, 0u), select(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.c, global0.a, 19039u), vec3<bool>(true, false, false))) % 32u), _wgslsmith_clamp_u32(0u, global0.a, u_input.c), 83506u), func_5(Struct_2(~(u_input.a << (1u % 32u)), Struct_1(firstLeadingBit(37087u), _wgslsmith_f_op_f32(1000f - 371f))), func_4(func_3(func_1(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)))), _wgslsmith_div_f32(func_1(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)).b, global0.b), Struct_1(~1u, -965f)), Struct_3(_wgslsmith_add_vec4_u32(~vec4<u32>(46068u, u_input.c, 1u, u_input.a), abs(~vec4<u32>(32625u, global0.a, 68703u, u_input.d))), vec2<bool>(!all(vec2<bool>(false, false)), true), func_4(u_input.a | ~global0.a).c), Struct_2(~(global0.a ^ 4294967295u), func_2()));
    var var_0 = select(vec3<bool>(false, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false)), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), false))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))) | (_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(max(global0.b, global0.b))) == global0.b));
    let var_1 = global0.b;
    var var_2 = select(!select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, true, select(false, false, false))), select(vec3<bool>(!(false & var_0.x), !(-1000f != global0.b), !all(var_0.yz)), vec3<bool>(u_input.a < func_2().a, (0u << (global0.a % 32u)) <= _wgslsmith_mod_u32(u_input.c, 60742u), !any(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), all(vec3<bool>(true, var_0.x, global0.a >= 78567u))), !vec3<bool>(true, var_0.x, false & (u_input.b >= u_input.b)));
    let var_3 = Struct_1(~42723u, -1000f);
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-669f, func_4(func_1(select(vec4<bool>(var_2.x, var_2.x, var_0.x, false), vec4<bool>(true, var_2.x, true, var_0.x), var_2.x), vec4<bool>(false, var_2.x, var_2.x, true)).a).c.b.b, var_3.b) - vec3<f32>(var_3.b, _wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(-138f * var_3.b))), _wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(f32(-1f) * -249f))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 48020i, 42347i), vec3<i32>(u_input.b, u_input.b, -13115i)), u_input.b), u_input.b | abs(-(~(-1i))));
}

