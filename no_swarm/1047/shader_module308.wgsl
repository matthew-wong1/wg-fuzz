struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: i32 = 40339i;

var<private> global2: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_1(-189f, abs(-1i), !select(global0.x, false, !any(vec2<bool>(global0.x, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(sign(-1615f))))))), -(~abs(vec3<i32>(-1i, 2147483647i, 0i))));
    var var_1 = Struct_1(1623f, 1i, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(943f + -210f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, var_0.a)))), vec3<i32>(-70811i, var_0.e.x, _wgslsmith_sub_i32(var_0.b, var_0.e.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) - _wgslsmith_f_op_f32(678f * -1000f)) * arg_1.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(-243f, arg_1.x)))))), i32(-1i) * -52622i, global0.x, -231f, vec3<i32>(~1i, -(max(var_0.b, var_0.b) >> (_wgslsmith_div_u32(9492u, 74849u) % 32u)), -(~(-var_0.e.x))));
    var var_3 = ~(((min(global2.x, 0u) >> (~global2.x % 32u)) << (abs(max(u_input.a, 705u)) % 32u)) >> (~min(~38584u, u_input.a) % 32u));
    let var_4 = var_2;
    return _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, 15299u), ~global2.zx), ~(~u_input.a)), vec4<u32>(~4294967295u, global2.x, u_input.a, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(25612u, u_input.a), 66627u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = -635f;
    var var_1 = arg_3;
    return _wgslsmith_add_i32(-1i, -13638i);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    global1 = -1i;
    global2 = ~vec3<u32>(~80681u, u_input.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, 0u), arg_2.zy), vec2<u32>(~u_input.a, _wgslsmith_sub_u32(4294967295u, 57413u))));
    var var_0 = arg_1;
    let var_1 = -func_4(!select(vec2<bool>(var_0.c, var_0.c), !vec2<bool>(arg_1.c, false), true), ~abs(~0u), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, arg_0, 1027f, 1673f)), vec3<f32>(_wgslsmith_f_op_f32(step(884f, var_0.a)), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -219f)), vec4<f32>(-2072f, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(arg_0, var_0.d), var_0.d)), arg_1);
    var var_2 = vec4<u32>(~u_input.a, 0u, arg_2.x, ~global2.x);
    return ~firstLeadingBit(~var_2.x);
}

fn func_1() -> i32 {
    global1 = -abs(min(~(~(-18219i)), i32(-1i) * -33226i));
    var var_0 = max(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 61821u | global2.x, global2.x << (u_input.a % 32u), func_2(-1825f, Struct_1(-2009f, -6169i, true, 302f, vec3<i32>(3159i, 11790i, -7641i)), vec4<u32>(global2.x, 13959u, 4261u, 1u), 16719i)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, global2.x, global2.x), vec4<u32>(global2.x, 50474u, global2.x, global2.x) << (vec4<u32>(global2.x, global2.x, 30348u, u_input.a) % vec4<u32>(32u))), select(~vec4<u32>(41742u, 4294967295u, 4294967295u, global2.x), max(vec4<u32>(503u, 76373u, global2.x, global2.x), vec4<u32>(5195u, u_input.a, u_input.a, u_input.a)), !vec4<bool>(true, global0.x, true, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 21157u, global2.x, global2.x), vec4<u32>(global2.x, 1u, global2.x, 1248u) >> (vec4<u32>(1u, u_input.a, global2.x, u_input.a) % vec4<u32>(32u))))), reverseBits(~min(~vec4<u32>(u_input.a, global2.x, u_input.a, 9065u), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))));
    global1 = i32(-1i) * -2147483647i;
    let var_1 = Struct_1(1000f, -(~_wgslsmith_dot_vec4_i32(~vec4<i32>(13707i, -5131i, -3486i, -1i), vec4<i32>(-21380i, -34681i, 1i, 1i))), !global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1235f)) * -580f)), _wgslsmith_f_op_f32(f32(-1f) * -666f))), vec3<i32>(1i, 1i, 1i));
    let var_2 = !(countOneBits(~(~u_input.a)) >= ~(~_wgslsmith_sub_u32(48116u, 1u)));
    return var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(global0.x, select(false, true, true));
    let var_0 = global0.x;
    let var_1 = u_input.a >> ((1u << (u_input.a % 32u)) % 32u);
    global2 = ~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global2.x, global2.x) | vec3<u32>(1u, 80132u, global2.x), ~vec3<u32>(0u, 42218u, 4294967295u))) | _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global2.x, 29233u), vec3<u32>(global2.x, var_1, u_input.a), vec3<u32>(global2.x, 1u, 48957u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(false, true, false)), firstTrailingBit(vec3<u32>(19709u, global2.x, 0u) ^ vec3<u32>(0u, global2.x, global2.x))), firstTrailingBit(~vec3<u32>(var_1, 43229u, 19712u) ^ vec3<u32>(global2.x, 4294967295u, 0u)));
    var var_2 = func_1();
    var var_3 = !(!global0.x);
    var var_4 = 2999f;
    let var_5 = min(vec3<i32>(0i, _wgslsmith_div_i32(abs(min(-15824i, -23637i)), ~func_1()), 11868i), vec3<i32>(1i, ~firstTrailingBit(firstTrailingBit(0i)), _wgslsmith_sub_i32(-2264i, _wgslsmith_sub_i32(-35556i, -1i)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global2.xy, global2.zy), vec2<u32>(51010u, global2.x) & vec2<u32>(var_1, u_input.a)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(51073i, var_5.x, var_5.x), select(vec3<i32>(-37170i, var_5.x, 0i), vec3<i32>(var_5.x, -38i, var_5.x), vec3<bool>(true, global0.x, false))) << (global2.x % 32u), -21930i));
}

