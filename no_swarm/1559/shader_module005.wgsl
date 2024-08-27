struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = min(-16007i, select(-65944i, ~(-102880i), true));
    var_0 = -24241i >> (u_input.b.x % 32u);
    var var_1 = _wgslsmith_div_vec4_u32(firstTrailingBit(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 89059u))), ~(~(~vec4<u32>(4294967295u, u_input.a, 19612u, u_input.a)))) << (firstLeadingBit(vec4<u32>(74630u, _wgslsmith_mult_u32(u_input.a, u_input.a), ~(~u_input.a), max(~u_input.b.x, 9421u | u_input.b.x))) % vec4<u32>(32u));
    global0 = array<vec3<bool>, 8>();
    var var_2 = 1000f;
    return _wgslsmith_f_op_f32(min(329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(391f, _wgslsmith_f_op_f32(ceil(-718f))))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    let var_0 = arg_1.a.a;
    global0 = array<vec3<bool>, 8>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(-444f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f + arg_1.a.c) - _wgslsmith_f_op_f32(arg_1.a.c * arg_1.a.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2291f), _wgslsmith_f_op_f32(func_3())), arg_1.a.c, -624f);
    let var_2 = 7008i;
    var var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~max(u_input.a, 18093u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.c.wz, u_input.b), vec2<u32>(u_input.b.x, 0u) | u_input.b)), vec3<u32>(~_wgslsmith_div_u32(arg_1.c.x, 4294967295u), u_input.a, ~40128u ^ arg_1.c.x)), _wgslsmith_mult_u32(~(~1u), arg_1.c.x), arg_1.c.x, ~max(~(u_input.a & u_input.b.x), arg_1.c.x));
    return 330f;
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_5(~u_input.b.x);
    let var_1 = true;
    let var_2 = 2381u | _wgslsmith_add_u32(46765u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.a), vec3<u32>(var_0.a, var_0.a, var_0.a))));
    return Struct_1(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, select(i32(-1i) * -64519i, max(35788i, -26698i), var_1 || var_1), 1i, 430i), countOneBits(vec4<i32>(-12049i, min(-11931i, 14607i), firstLeadingBit(-14392i), 0i))), arg_0.x);
}

fn func_1(arg_0: Struct_5, arg_1: vec2<f32>) -> bool {
    global0 = array<vec3<bool>, 8>();
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1220f, -561f, arg_1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false), Struct_2(Struct_1(-2147483647i, -2147483647i, 731f), true, vec4<u32>(80552u, u_input.b.x, u_input.a, 0u)), vec2<i32>(-1i, 2147483647i), false)), _wgslsmith_f_op_f32(f32(-1f) * -1713f), 1000f))), !(_wgslsmith_div_u32(arg_0.a, arg_0.a) > firstTrailingBit(_wgslsmith_mult_u32(0u, 0u))), ~(~(~vec4<u32>(arg_0.a, u_input.a, arg_0.a, 45218u) >> (vec4<u32>(u_input.a, 1u, u_input.b.x, arg_0.a) % vec4<u32>(32u)))));
    global0 = array<vec3<bool>, 8>();
    var var_1 = arg_1.x;
    return var_0.b | all(vec3<bool>(true, true, true));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -386f));
    var var_1 = Struct_5(_wgslsmith_sub_u32(firstTrailingBit(~reverseBits(4294967295u)), ~abs(u_input.a)));
    global0 = array<vec3<bool>, 8>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f));
    var var_3 = 4294967295u ^ ((1u << (abs(1u) % 32u)) & ~firstTrailingBit(~16113u));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(201f, -458f)) * _wgslsmith_f_op_f32(-2261f * _wgslsmith_f_op_f32(func_5(!func_1(Struct_5(0u), vec2<f32>(-658f, 892f)), _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(22610i, 1i, -2147483647i)), Struct_1(-2147483647i, min(1i, 31741i), _wgslsmith_f_op_f32(f32(-1f) * -436f)), -vec2<i32>(1i, 28198i)))));
    global0 = array<vec3<bool>, 8>();
    var var_1 = Struct_4(Struct_3(Struct_1(1i, 2147483647i, var_0), Struct_2(Struct_1(i32(-1i) * -67008i, -22921i, _wgslsmith_f_op_f32(-var_0)), false, abs(vec4<u32>(0u, 0u, 47106u, 0u)))), _wgslsmith_mult_u32(u_input.a, 1u << (u_input.b.x % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(201f, var_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), 1f))), 1u);
    global0 = array<vec3<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-1i)) ^ var_1.a.a.a);
}

