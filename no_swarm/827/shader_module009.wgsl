struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = firstLeadingBit(~countOneBits(~(i32(-1i) * -48865i)));
    let var_1 = false;
    var var_2 = !var_1;
    var_2 = arg_0.b.b.x;
    var_2 = all(arg_1.xx) || !any(vec3<bool>(arg_0.b.b.x, true, arg_0.d.a <= arg_0.a.b));
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(Struct_3(~_wgslsmith_div_u32(~1u, func_3(Struct_4(Struct_3(1u, -110f, Struct_1(false, u_input.b), 23422u, false), Struct_2(936f, vec3<bool>(true, true, true)), vec4<f32>(-1458f, 377f, -312f, 1000f), Struct_2(186f, vec3<bool>(true, false, true))), vec3<bool>(true, true, false), vec3<bool>(true, false, false), Struct_2(-1821f, vec3<bool>(false, false, true)))), -1619f, Struct_1(true, _wgslsmith_sub_i32(1545i, u_input.c.x) << (max(1u, 1u) % 32u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~1u, ~0u), ~(~0u)), any(vec4<bool>(true, true, true, true)) & any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true))), Struct_2(479f, select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(354f, -487f, -273f, -834f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-959f, 715f, -137f, -1395f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1289f, _wgslsmith_f_op_f32(-1663f - 1003f))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))));
    let var_1 = var_0.d;
    var var_2 = var_0.a.c;
    let var_3 = Struct_4(var_0.a, Struct_2(_wgslsmith_f_op_f32(329f - -1227f), vec3<bool>(var_1.b.x, var_0.a.e, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, var_1.a, -1000f, var_1.a), _wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(-638f, 1815f, -1000f, -320f))))), var_0.c), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-577f, var_1.a) - 1399f) - _wgslsmith_f_op_f32(-var_1.a)), select(vec3<bool>(!var_1.b.x, var_1.b.x, false), select(select(vec3<bool>(false, var_0.a.e, true), vec3<bool>(false, var_1.b.x, var_1.b.x), var_0.b.b), select(vec3<bool>(false, var_1.b.x, true), var_1.b, var_0.b.b.x), var_0.b.b), select(select(var_1.b, var_0.b.b, var_1.b), vec3<bool>(var_2.a, false, true), var_2.a))));
    var var_4 = var_1.a;
    return var_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = vec3<u32>(~1u, max(0u, 34925u), ~arg_1);
    let var_2 = -(vec2<i32>(-1i) * -u_input.c.yy);
    let var_3 = vec2<u32>(_wgslsmith_add_u32(arg_1, ~select(24391u, _wgslsmith_clamp_u32(var_1.x, 44130u, 78161u), var_0.b.x)), ~var_1.x);
    var_1 = abs(firstTrailingBit(max(firstTrailingBit(vec3<u32>(30343u, arg_1, 1u)), vec3<u32>(0u, var_1.x, var_3.x)) >> ((vec3<u32>(10360u, arg_1, 52580u) | (vec3<u32>(var_3.x, arg_1, var_3.x) << (vec3<u32>(var_3.x, var_1.x, var_3.x) % vec3<u32>(32u)))) % vec3<u32>(32u))));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = true;
    var_0 = select(true, arg_1 & true, true);
    var var_1 = firstLeadingBit(-u_input.c.x);
    let var_2 = vec2<bool>(!all(vec3<bool>(true, any(vec2<bool>(arg_0.b.x, arg_0.b.x)), any(vec4<bool>(true, true, false, true)))), true);
    let var_3 = arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1033f, vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, -1000f)), _wgslsmith_f_op_f32(trunc(-354f))) > _wgslsmith_f_op_f32(f32(-1f) * -433f), true, func_4(func_1(vec4<i32>(u_input.b, 224i, -34075i, 15849i) & vec4<i32>(0i, 2147483647i, u_input.b, u_input.a), 0u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, u_input.d), vec3<i32>(12017i, u_input.d, u_input.b)) == ~(-2147483647i))));
    var var_1 = u_input.c.x;
    let var_2 = vec3<bool>(func_1(select((vec4<i32>(u_input.a, u_input.c.x, -2147483647i, u_input.d) ^ vec4<i32>(-33928i, u_input.b, u_input.a, u_input.b)) << (~vec4<u32>(29740u, 1u, 54923u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.d | -8908i, _wgslsmith_clamp_i32(36524i, 0i, u_input.d), 20038i, u_input.b), select(!vec4<bool>(false, var_0.b.x, false, var_0.b.x), select(vec4<bool>(true, true, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), vec4<bool>(false, true, false, var_0.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(0u), abs(62939u), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(61462u, 5745u, 1u, 1u), vec4<u32>(5442u, 55973u, 12946u, 59807u))), vec4<u32>(2961u, 17783u, 88162u, 1u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))).b.x, false, false);
    var var_3 = -reverseBits(vec4<i32>(1i, -1i, 2147483647i, _wgslsmith_mult_i32(0i, abs(u_input.b))));
    var var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, var_3.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_3.x, ~var_3.x), ~(-var_3.x)), u_input.b), ~(~(~select(vec4<i32>(u_input.a, 2147483647i, -2147483647i, 24344i), vec4<i32>(-38124i, 0i, var_3.x, u_input.d), var_0.b.x))), _wgslsmith_div_vec4_i32(~(-(~vec4<i32>(-24797i, var_3.x, u_input.a, u_input.a))), countOneBits(vec4<i32>(0i, -var_3.x, 12145i, var_3.x))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + var_0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(660f))), var_0.a));
    var_1 = ~min(-min(_wgslsmith_sub_i32(-1i, var_4.x), ~1i), _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(var_3.xyx, u_input.c), (u_input.d ^ var_3.x) >> (~0u % 32u)));
    let var_6 = vec3<bool>(all(!func_1(vec4<i32>(18971i, u_input.b, -42547i, 4048i), _wgslsmith_mult_u32(1u, 4294967295u)).b), func_2().b.x, true && var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(35510i, -731f, firstTrailingBit(vec3<u32>(firstTrailingBit(1u), abs(4294967295u), 4733u << (1u % 32u))));
}

