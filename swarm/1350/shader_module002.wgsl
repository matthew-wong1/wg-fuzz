struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(76383i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f - -1000f) * _wgslsmith_f_op_f32(step(-1202f, 994f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 346f)))));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(510f - 916f), -474f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1470f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-493f, -927f)) - _wgslsmith_f_op_f32(abs(-437f))) * _wgslsmith_f_op_f32(-256f + -540f)))));
    let var_1 = Struct_2(true, 1u);
    var var_2 = ~_wgslsmith_mult_vec3_i32(u_input.c.xxz, vec3<i32>(abs(-1i) >> (var_1.b % 32u), _wgslsmith_dot_vec2_i32(u_input.c.zy, u_input.c.xy), u_input.c.x));
    global0 = Struct_1(-74873i);
    return u_input.c.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_1(min(global0.a, firstLeadingBit(-global0.a)));
    var var_1 = u_input.c.xy;
    let var_2 = arg_1.wx;
    var_1 = vec2<i32>(~(~reverseBits(7876i)), var_0.a);
    global0 = var_0;
    return Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, 11184i, u_input.c.x, 1i), vec4<i32>(var_1.x, 917i, -8053i, u_input.c.x)) ^ vec4<i32>(u_input.c.x, global0.a, var_1.x, -83098i), countOneBits(vec4<i32>(var_0.a, -51287i, global0.a, global0.a))) != _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(countOneBits(u_input.c.yz), select(u_input.c.yy, vec2<i32>(var_1.x, 17269i), arg_1.x)), _wgslsmith_mult_i32(func_3(arg_0.x, vec3<i32>(2147483647i, u_input.c.x, -35393i), arg_0, 0i), max(1i, var_1.x))), 20922u);
}

fn func_1() -> i32 {
    let var_0 = Struct_2(true, select(~u_input.a, ~((u_input.a & 0u) | u_input.a), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let var_1 = func_2(vec3<u32>(1u, 1220u, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, reverseBits(1u)), min(~0u, 1u))), !vec4<bool>(!var_0.a, var_0.a, false, var_0.a));
    global0 = Struct_1(global0.a);
    var var_2 = vec3<bool>(false, global0.a != 0i, any(!select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_1.a), !vec2<bool>(var_0.a, false))));
    let var_3 = min(select(~vec4<u32>(4294967295u, 23617u, ~var_0.b, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(min(5013u, 1u), u_input.a, _wgslsmith_sub_u32(u_input.a, var_1.b), 0u), vec4<u32>(var_0.b, countOneBits(755u), u_input.a, 4294967295u)), vec4<bool>(func_2(vec3<u32>(6338u, u_input.a, 1u), !vec4<bool>(var_0.a, true, true, true)).a, any(vec4<bool>(var_2.x, true, true, false)), false, true)), reverseBits(~abs(vec4<u32>(0u, 4294967295u, 1u, 56627u))) | select(firstLeadingBit(~vec4<u32>(68981u, 24500u, 4294967295u, 4294967295u)), max(countOneBits(vec4<u32>(var_1.b, 4294967295u, var_0.b, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, 0u, 1u, 57306u), vec4<u32>(41603u, var_0.b, 41045u, 12398u))), select(select(vec4<bool>(var_0.a, false, false, true), vec4<bool>(var_1.a, true, false, var_0.a), true), vec4<bool>(true, var_1.a, true, var_2.x), !vec4<bool>(var_0.a, var_1.a, true, var_1.a))));
    return 24883i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~(~10398i));
    global0 = Struct_1(0i);
    let var_0 = -firstLeadingBit(func_1());
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1439f))) - -1719f) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(547f, _wgslsmith_f_op_f32(sign(-829f))))), !any(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), _wgslsmith_clamp_u32(u_input.a, 2492u, u_input.a) > ~reverseBits(firstTrailingBit(0u)), true);
    var var_2 = -(~(-(~u_input.b & ~u_input.b)));
    var var_3 = ~_wgslsmith_mod_u32(16143u, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), max(u_input.a, 53186u), 40623u));
    var var_4 = Struct_1(1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(2407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 693f))), abs(select(_wgslsmith_mult_vec2_u32(vec2<u32>(47480u, 0u), vec2<u32>(5132u, 29415u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), !var_1.yw) >> (select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(103812u, 8688u)), select(vec2<u32>(11879u, 90639u), vec2<u32>(u_input.a, u_input.a), var_1.x), select(vec2<bool>(true, var_1.x), var_1.zx, var_1.yx)) % vec2<u32>(32u))), vec2<u32>(35368u ^ (_wgslsmith_mod_u32(43882u, 69345u) << (u_input.a % 32u)), countOneBits(~1u)));
}

