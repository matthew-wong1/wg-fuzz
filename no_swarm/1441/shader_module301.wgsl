struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<i32>(-1i, -47672i, 12307i)), Struct_1(vec3<i32>(0i, -54808i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(-41804i, -37057i, 2147483647i)), Struct_1(vec3<i32>(-42544i, 0i, 0i)), Struct_1(vec3<i32>(-28347i, -1i, 24242i)), Struct_1(vec3<i32>(2147483647i, 27207i, 0i)), Struct_1(vec3<i32>(31750i, 11622i, 6634i)), Struct_1(vec3<i32>(2813i, 2514i, 1i)), Struct_1(vec3<i32>(51046i, 1i, 2147483647i)), Struct_1(vec3<i32>(55577i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(31474i, -22177i, -23966i)), Struct_1(vec3<i32>(1i, 2147483647i, 9435i)), Struct_1(vec3<i32>(-58554i, -40754i, i32(-2147483648))), Struct_1(vec3<i32>(1i, 2147483647i, -8067i)), Struct_1(vec3<i32>(-53992i, 1i, 9275i)), Struct_1(vec3<i32>(-1i, 45568i, -23229i)), Struct_1(vec3<i32>(i32(-2147483648), -38361i, -36518i)), Struct_1(vec3<i32>(-35627i, -1i, 1i)), Struct_1(vec3<i32>(47980i, 2147483647i, 1i)), Struct_1(vec3<i32>(12620i, 19413i, -8334i)), Struct_1(vec3<i32>(2147483647i, 58437i, -5297i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec4<bool> {
    global0 = array<Struct_1, 23>();
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 562f) - vec2<f32>(-869f, 553f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2416f, -124f) - vec2<f32>(-592f, 936f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(114f, -173f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-994f, -467f))) - vec2<f32>(_wgslsmith_f_op_f32(-400f + -406f), -139f)));
    global0 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-319f))));
    return vec4<bool>(false, true & !(all(vec3<bool>(true, true, true)) & all(vec3<bool>(false, true, true))), !any(vec2<bool>(true, true)), !any(vec4<bool>(true, false, false, true)) || (-1229i <= (_wgslsmith_mult_i32(21857i, u_input.b.x) ^ -2147483647i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    var var_0 = arg_2;
    let var_1 = ~(~select(~1u, 1u, all(vec4<bool>(arg_1.x, arg_1.x, arg_0.x, arg_0.x)))) << (~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 19850u), vec2<u32>(1u, 1u))) % 32u);
    var var_2 = Struct_1(u_input.b.xyx);
    let var_3 = arg_2;
    var var_4 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, ~(-2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -67985i, arg_3.x), 1i, firstTrailingBit(u_input.b.x))) | reverseBits(abs(var_0.a)));
    return select(_wgslsmith_clamp_i32(2743i, var_3.a.x, arg_2.a.x >> (var_1 % 32u)), var_4.a.x, !(!(!arg_0.x)) & true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_3;
    var var_1 = arg_2.x;
    var var_2 = _wgslsmith_mod_i32(func_3(!func_2(), vec3<bool>((arg_0.x | 4294967295u) != firstLeadingBit(81560u), true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false))), arg_1, vec2<i32>(u_input.b.x, _wgslsmith_add_i32(~arg_1.a.x, 1i))), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(var_0.a.x, 1i, arg_3.a.x, arg_1.a.x), vec4<i32>(51219i, -29734i, 19603i, _wgslsmith_div_i32(-1i, arg_1.a.x)), _wgslsmith_mod_i32(arg_3.a.x, arg_3.a.x) <= firstLeadingBit(-43564i)), vec4<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(arg_1.a.x, 0i)), arg_1.a.x, func_3(vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), arg_1.a.xy), -47864i)));
    return _wgslsmith_div_vec4_u32(reverseBits(arg_2), countOneBits(arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 19584u, 1u, 16161u), func_1(vec3<u32>(4294967295u, 4495u, 0u), global0[_wgslsmith_index_u32(1u, 23u)], vec4<u32>(17206u, 17898u, 4294967295u, 0u), global0[_wgslsmith_index_u32(4123u, 23u)]), vec4<u32>(13897u, 53155u, 72671u, 36499u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(3026u, 1u, 62765u, 36656u), vec4<u32>(61274u, 4294967295u, 22338u, 3921u)))), ~select(vec4<u32>(18148u, 25243u, 17341u, 19074u), vec4<u32>(1u, 1u, 43036u, 6941u), true)), ~_wgslsmith_add_u32(1u, 1u), 1u), 23u)];
    var var_1 = min(var_0.a.x, 51289i | _wgslsmith_div_i32(10984i, u_input.a.x));
    var_0 = Struct_1(-_wgslsmith_div_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(5547i, u_input.a.x, var_0.a.x), vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x), var_0.a), vec3<i32>(-var_0.a.x, var_0.a.x, 1i & var_0.a.x)));
    var var_2 = global0[_wgslsmith_index_u32(1u, 23u)];
    let var_3 = select(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(9162u, 31545u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(39485u, 30453u), vec2<u32>(41946u, 34521u), vec2<u32>(1u, 50190u))) ^ ~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 9894u), ~51896u), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~select(vec2<u32>(0u, 31105u), vec2<u32>(4294967295u, 0u), true), abs(vec2<u32>(31466u, 1u))), firstLeadingBit(select(vec2<u32>(7699u, 4294967295u), vec2<u32>(0u, 7030u), true)) & ~countOneBits(vec2<u32>(10184u, 0u))), true);
    let var_4 = ~var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(_wgslsmith_sub_i32(~(-27069i), -2147483647i ^ var_2.a.x), _wgslsmith_dot_vec2_i32(var_2.a.yy, u_input.a)), -_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) | ~(~var_4), u_input.b.x), firstTrailingBit(vec3<u32>(1u, _wgslsmith_mod_u32(15436u, var_3.x) >> (4294967295u % 32u), 8608u)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, var_0.a.x), 2147483647i), -1i, -91481i));
}

