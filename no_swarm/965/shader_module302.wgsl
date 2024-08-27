struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 61588u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = true;
    var var_1 = Struct_2(arg_1.b.a, Struct_1(vec4<bool>(arg_0.a.x, true, any(vec4<bool>(arg_0.a.x, arg_2.x, true, arg_1.a.x)), arg_1.a.x), arg_1.b.e.b, ~max(_wgslsmith_mod_vec3_u32(vec3<u32>(21198u, 0u, 4294967295u), vec3<u32>(75249u, arg_1.b.c.c.x, arg_1.b.c.c.x)), vec3<u32>(arg_1.b.b.c.x, arg_1.b.b.c.x, 0u))), Struct_1(!(!vec4<bool>(false, arg_2.x, arg_1.b.e.a.x, arg_0.a.x)), i32(-1i) * -20265i, ~arg_1.b.b.c ^ arg_1.b.b.c), any(!vec4<bool>(true, false, arg_1.b.c.a.x, true)), arg_0.b.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(-1439f))));
    var_1 = Struct_2(_wgslsmith_sub_i32(0i, -1i), arg_1.b.e, Struct_1(arg_1.b.e.a, min(-2147483647i, _wgslsmith_add_i32(1i, max(-2947i, -2147483647i))), abs(arg_0.b.e.c)), !(true || (-arg_0.b.c.b == ~(-24960i))), Struct_1(!(!arg_1.b.b.a), var_1.b.b, arg_0.b.c.c));
    return arg_1.b.c.a;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(vec3<bool>(true, all(func_3(Struct_3(vec3<bool>(false, false, true), Struct_2(u_input.a.x, Struct_1(vec4<bool>(true, true, false, true), -1i, vec3<u32>(67198u, 39423u, 4716u)), Struct_1(vec4<bool>(true, true, true, false), u_input.a.x, vec3<u32>(16970u, 0u, 86810u)), false, Struct_1(vec4<bool>(false, false, true, false), u_input.a.x, vec3<u32>(0u, 3327u, 16667u))), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, true, false), Struct_2(1i, Struct_1(vec4<bool>(false, false, false, true), 2147483647i, vec3<u32>(0u, 1u, 0u)), Struct_1(vec4<bool>(false, false, true, false), 14777i, vec3<u32>(6708u, 33542u, 1u)), false, Struct_1(vec4<bool>(false, true, true, true), u_input.a.x, vec3<u32>(92060u, 43943u, 0u))), vec3<bool>(true, true, false)), vec4<bool>(false, true, false, true))) && false, true), Struct_2(2147483647i, Struct_1(func_3(Struct_3(vec3<bool>(true, true, true), Struct_2(u_input.a.x, Struct_1(vec4<bool>(true, true, true, false), 2147483647i, vec3<u32>(1u, 103545u, 31744u)), Struct_1(vec4<bool>(true, true, true, false), 15386i, vec3<u32>(0u, 1u, 61935u)), false, Struct_1(vec4<bool>(true, true, false, true), 21036i, vec3<u32>(4294967295u, 43815u, 0u))), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, false, false), Struct_2(-1i, Struct_1(vec4<bool>(false, true, false, true), u_input.a.x, vec3<u32>(6791u, 0u, 1u)), Struct_1(vec4<bool>(false, false, false, false), 31579i, vec3<u32>(41237u, 4294967295u, 1u)), true, Struct_1(vec4<bool>(false, true, true, false), 4102i, vec3<u32>(1u, 0u, 91823u))), vec3<bool>(false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), ~abs(-1i), vec3<u32>(1u, 1u, 1u)), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(Struct_3(vec3<bool>(false, false, false), Struct_2(-21516i, Struct_1(vec4<bool>(true, true, false, true), u_input.a.x, vec3<u32>(4294967295u, 14863u, 27851u)), Struct_1(vec4<bool>(false, false, false, true), u_input.a.x, vec3<u32>(0u, 1u, 9968u)), true, Struct_1(vec4<bool>(true, false, true, false), 2147483647i, vec3<u32>(13400u, 36462u, 54257u))), vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, true), Struct_2(1i, Struct_1(vec4<bool>(true, false, true, false), u_input.a.x, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, false), u_input.a.x, vec3<u32>(0u, 4294967295u, 37503u)), false, Struct_1(vec4<bool>(false, true, false, true), -24365i, vec3<u32>(0u, 28139u, 4294967295u))), vec3<bool>(true, false, true)), vec4<bool>(false, false, true, true)).x), u_input.a.x, vec3<u32>(1u, 7077u, _wgslsmith_add_u32(4294967295u, 0u))), !any(vec2<bool>(true, true)), Struct_1(vec4<bool>(any(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), true, false), max(-2147483647i, 1i), vec3<u32>(_wgslsmith_mod_u32(28932u, 33989u), _wgslsmith_add_u32(1u, 15604u), 24301u))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(Struct_3(vec3<bool>(true, false, true), Struct_2(u_input.a.x, Struct_1(vec4<bool>(false, true, true, true), u_input.a.x, vec3<u32>(1u, 0u, 67421u)), Struct_1(vec4<bool>(true, false, true, true), -1i, vec3<u32>(1u, 1670u, 41313u)), true, Struct_1(vec4<bool>(true, true, false, false), 30344i, vec3<u32>(7143u, 42895u, 4294967295u))), vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, true, false), Struct_2(757i, Struct_1(vec4<bool>(false, false, true, true), u_input.a.x, vec3<u32>(22087u, 1u, 56u)), Struct_1(vec4<bool>(true, true, false, false), u_input.a.x, vec3<u32>(43487u, 0u, 12553u)), true, Struct_1(vec4<bool>(true, true, true, true), u_input.a.x, vec3<u32>(0u, 2341u, 1u))), vec3<bool>(true, true, false)), func_3(Struct_3(vec3<bool>(true, true, false), Struct_2(u_input.a.x, Struct_1(vec4<bool>(false, false, false, false), 22113i, vec3<u32>(4294967295u, 91582u, 26582u)), Struct_1(vec4<bool>(true, true, true, true), 1i, vec3<u32>(4294967295u, 40869u, 91513u)), false, Struct_1(vec4<bool>(true, false, false, true), 32268i, vec3<u32>(9863u, 1125u, 2502u))), vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, false, false), Struct_2(u_input.a.x, Struct_1(vec4<bool>(true, true, true, true), 36000i, vec3<u32>(1u, 50895u, 1u)), Struct_1(vec4<bool>(false, true, false, true), 1i, vec3<u32>(0u, 4294967295u, 30235u)), true, Struct_1(vec4<bool>(false, false, true, true), u_input.a.x, vec3<u32>(61278u, 1912u, 4294967295u))), vec3<bool>(true, false, true)), vec4<bool>(false, true, true, false))).x), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !all(vec2<bool>(false, true))), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))));
    global0 = ~abs(_wgslsmith_mod_u32(countOneBits(1u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.b.e.c.xy, vec2<u32>(var_0.b.c.c.x, var_0.b.c.c.x)), abs(var_0.b.e.c.x))));
    global0 = ~var_0.b.c.c.x;
    var var_1 = 1i;
    let var_2 = Struct_2(select(-5832i, -var_0.b.a, false), Struct_1(var_0.b.e.a, u_input.a.x, vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.b.e.c | vec3<u32>(var_0.b.b.c.x, 0u, 4512u), var_0.b.b.c & vec3<u32>(var_0.b.c.c.x, 33855u, var_0.b.e.c.x)), var_0.b.b.c.x, firstTrailingBit(~var_0.b.c.c.x))), var_0.b.e, !all(vec4<bool>(false, var_0.a.x, true, var_0.c.x)), var_0.b.b);
    return var_2;
}

fn func_1() -> vec3<u32> {
    global0 = 4294967295u;
    let var_0 = false;
    let var_1 = !var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(322f - -1775f))), -459f)));
    var var_3 = func_2();
    return vec3<u32>(1u >> (firstTrailingBit(var_3.c.c.x) % 32u), var_3.c.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_3.b.c.x, var_3.b.c.x) | vec4<u32>(5660u, var_3.b.c.x, var_3.c.c.x, var_3.b.c.x), vec4<u32>(countOneBits(24286u), var_3.c.c.x, _wgslsmith_dot_vec3_u32(var_3.b.c, vec3<u32>(29484u, var_3.c.c.x, 1u)), var_3.e.c.x)), var_3.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    let var_1 = _wgslsmith_dot_vec3_u32(var_0, select(vec3<u32>(var_0.x, ~var_0.x ^ 55289u, ~var_0.x), vec3<u32>(~4294967295u, 18272u, ~var_0.x & 28098u), !(!func_2().e.a.xxy)));
    global0 = 45874u;
    global0 = _wgslsmith_mod_u32(59376u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(208u, var_0.x, 1u, _wgslsmith_clamp_u32(var_1, var_0.x, 57660u)), ~vec4<u32>(var_1, var_0.x, 23979u, var_0.x) << ((vec4<u32>(78768u, 4294967295u, 0u, 4294967295u) >> (vec4<u32>(var_0.x, var_1, 0u, 5343u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = 0u;
    var var_2 = !select(all(vec4<bool>(false, true, true, true)), var_1 >= ~_wgslsmith_div_u32(var_1, 0u), true);
    var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(ceil(468f)) != -756f;
    let x = u_input.a;
    s_output = StorageBuffer(47160u, abs(_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a.x, firstLeadingBit(u_input.a.x)), ~u_input.a.yy)), _wgslsmith_div_vec3_u32(var_0, var_0 & vec3<u32>(4294967295u, 0u, ~var_0.x)), vec2<f32>(1753f, -490f), 1000f);
}

