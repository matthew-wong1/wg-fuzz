struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-1000f, 1000f), vec2<f32>(1116f, -1227f), vec2<f32>(200f, 614f), vec2<f32>(532f, 1027f), vec2<f32>(-372f, 1040f), vec2<f32>(654f, 1000f), vec2<f32>(-183f, 1000f), vec2<f32>(1000f, -646f), vec2<f32>(3102f, 545f), vec2<f32>(2636f, -744f), vec2<f32>(-850f, 761f), vec2<f32>(-585f, -238f), vec2<f32>(1404f, -637f), vec2<f32>(571f, -397f), vec2<f32>(1003f, 407f), vec2<f32>(-977f, 556f));

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global0 = array<vec2<f32>, 16>();
    var var_0 = Struct_1(vec3<bool>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_0.xx, arg_0.yz), u_input.a.x) <= u_input.a.x, true, false), vec4<u32>(52887u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 13668u, u_input.a.x), arg_0), ~vec3<u32>(arg_0.x, arg_0.x, 0u)), 37396u, ~_wgslsmith_sub_u32(0u, 0u)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(63576u, 4294967295u, 4294967295u, arg_0.x), vec4<u32>(0u, u_input.a.x, 0u, arg_0.x) & vec4<u32>(arg_0.x, 70054u, 1u, u_input.a.x), vec4<u32>(63138u, 26628u, 7722u, u_input.a.x) & vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u)), 44127i, ~(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) ^ (~vec4<u32>(0u, u_input.a.x, 0u, arg_0.x) ^ ~vec4<u32>(arg_0.x, 8725u, 0u, 4294967295u))));
    let var_1 = 0u;
    return ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(56398u, u_input.a.x, 4294967295u, 0u), var_0.d), _wgslsmith_add_u32(var_1, var_0.b.x), var_0.d.x)), _wgslsmith_mod_u32(~(~76744u), 19874u));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(vec3<bool>(false, !(countOneBits(u_input.a.x) > u_input.a.x), u_input.a.x != (~u_input.a.x | 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), u_input.a.x), u_input.a.x, ~(~u_input.a.x), func_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~vec4<u32>(u_input.a.x, 50180u, u_input.a.x, u_input.a.x) | _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(911u, u_input.a.x, u_input.a.x, 26517u)), vec4<u32>(4294967295u, u_input.a.x, 0u, 1u))), -7791i, _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(1u, ~4294967295u, u_input.a.x | u_input.a.x, 1u)), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 68263u, 0u), u_input.a.x), 6762u, 9548u)));
    var var_1 = vec2<u32>(~var_0.b.x, _wgslsmith_mod_u32(countOneBits(firstTrailingBit(var_0.d.x)), ~(~79779u))) >> (min(~vec2<u32>(1u, var_0.d.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, var_0.b.x), vec2<u32>(~4294967295u, ~61850u), ~u_input.a)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_mult_vec3_u32(var_0.d.xyx, _wgslsmith_div_vec3_u32(abs(abs(var_0.d.wxx)), firstTrailingBit(vec3<u32>(var_1.x, reverseBits(var_0.d.x), u_input.a.x))));
    var_1 = ~u_input.a & _wgslsmith_mult_vec2_u32(vec2<u32>(min(1u, u_input.a.x), 0u), countOneBits(vec2<u32>(~u_input.a.x, 24827u)));
    var_0 = Struct_1(vec3<bool>(!(_wgslsmith_f_op_f32(sign(1278f)) <= _wgslsmith_f_op_f32(1000f + -496f)), var_0.a.x, true), var_0.b, _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_0.c, -2147483647i), vec3<i32>(-2147483647i, var_0.c, var_0.c))), ~(-vec3<i32>(-16524i, var_0.c, -4428i))) | var_0.c, vec4<u32>(~firstTrailingBit(_wgslsmith_clamp_u32(1u, u_input.a.x, 0u)), _wgslsmith_add_u32(4294967295u, ~var_0.d.x | u_input.a.x), ~reverseBits(0u), 26745u));
    return 4294967295u;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1011f));
    var var_1 = ~(-1i);
    global0 = array<vec2<f32>, 16>();
    var var_2 = 2147483647i;
    var var_3 = vec3<u32>(4294967295u, reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(1u, 43996u, 1u)), func_2())), func_2()) ^ min(vec3<u32>(1u, _wgslsmith_sub_u32(24740u, ~u_input.a.x), 98946u), vec3<u32>((u_input.a.x >> (1u % 32u)) << (min(1u, 4137u) % 32u), ~(~u_input.a.x), 23835u));
    return vec2<bool>(!any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))), true);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = ~firstLeadingBit(_wgslsmith_mult_vec2_i32(-vec2<i32>(45027i, var_0.c) ^ max(vec2<i32>(arg_1.c, arg_1.c), vec2<i32>(arg_1.c, var_0.c)), min(vec2<i32>(arg_1.c, var_0.c), ~vec2<i32>(-2147483647i, var_0.c))));
    let var_2 = Struct_3(var_0.c, arg_1, vec3<bool>(func_1().x, arg_1.a.x, arg_1.a.x != arg_0));
    var_0 = var_2.b;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 16>();
    var var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, 0u <= u_input.a.x, select(true, true, false)), true), vec3<bool>(true, true, true), func_4(all(func_1()), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x)), _wgslsmith_add_i32(-47061i, 23180i), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = true;
    var var_2 = 2458f;
    global1 = _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(1i, -2629i)) & -select(~(-2147483647i), ~(-22322i), select(var_1, false, var_1)), countOneBits(~(-2147483647i) >> (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)) & -1i);
    var var_3 = !vec2<bool>(var_1, true);
    global0 = array<vec2<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 2296f)))))));
}

