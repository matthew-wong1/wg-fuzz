struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_4) -> bool {
    var var_0 = arg_2.b.e.x;
    return arg_2.c.e.x;
}

fn func_3() -> f32 {
    let var_0 = true;
    let var_1 = ~_wgslsmith_mod_vec2_u32(abs(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 45255u), select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 1u), false))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(31527u, 40466u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(14504u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(44293u, 47231u))), firstLeadingBit(reverseBits(vec2<u32>(u_input.a, 4294967295u)))));
    let var_2 = u_input.a;
    var var_3 = ~(~(~min(abs(vec3<u32>(75814u, var_2, 0u)), ~vec3<u32>(33592u, 1u, var_1.x))));
    var_3 = vec3<u32>(0u << (_wgslsmith_dot_vec3_u32(~(vec3<u32>(4294967295u, u_input.a, var_3.x) & vec3<u32>(var_1.x, u_input.a, var_3.x)), reverseBits(vec3<u32>(var_3.x, 23210u, 0u) << (vec3<u32>(4294967295u, u_input.a, 1u) % vec3<u32>(32u)))) % 32u), _wgslsmith_sub_u32(~var_1.x | (_wgslsmith_div_u32(var_1.x, u_input.a) << (firstTrailingBit(var_1.x) % 32u)), reverseBits(~var_2) & (u_input.a >> (abs(1u) % 32u))), select(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.x, var_2, _wgslsmith_clamp_u32(1u, 9976u, 27260u)), ~(~vec3<u32>(69742u, var_3.x, 1u))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(104651u, u_input.a, 30268u), firstTrailingBit(vec3<u32>(var_2, u_input.a, var_3.x))), _wgslsmith_add_vec3_u32(vec3<u32>(12836u, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, 4294967295u) >> (vec3<u32>(var_2, 4294967295u, var_1.x) % vec3<u32>(32u)))), var_0));
    return 1f;
}

fn func_1() -> Struct_4 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = select(!(!vec3<bool>(false, func_2(vec2<i32>(u_input.b, 6106i), vec2<u32>(u_input.a, u_input.a), Struct_4(Struct_1(268f, vec3<f32>(-226f, -270f, -131f)), Struct_2(Struct_1(-2784f, vec3<f32>(1092f, 773f, 795f)), -1i, Struct_1(305f, vec3<f32>(-232f, -824f, 1083f)), u_input.b, var_0), Struct_2(Struct_1(283f, vec3<f32>(301f, -1363f, 370f)), u_input.b, Struct_1(1472f, vec3<f32>(639f, -644f, -1000f)), u_input.b, vec2<bool>(var_0.x, false)))), var_0.x)), vec3<bool>(!any(vec3<bool>(var_0.x, var_0.x, false)) & var_0.x, !(!var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f + -1446f)) <= _wgslsmith_f_op_f32(func_3())), !vec3<bool>(select(var_0.x, var_0.x, false == var_0.x), !select(true, var_0.x, false), all(select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.x, var_0.x), true))));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(642f * -945f)), vec3<f32>(1f, 1f, 1f)), max(_wgslsmith_mod_i32(-2147483647i, u_input.b), u_input.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2381f * -2360f) + -447f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1407f, -1000f, 1246f))))), u_input.b, var_0), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480f * -393f) + _wgslsmith_f_op_f32(select(393f, -126f, var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-675f, 1293f, 319f), _wgslsmith_f_op_vec3_f32(vec3<f32>(308f, 504f, -1030f) * vec3<f32>(133f, 509f, -2638f)), vec3<bool>(var_1.x, true, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-354f, 304f, -323f), vec3<f32>(788f, 891f, -1000f))))), abs(~vec2<u32>(u_input.a, _wgslsmith_add_u32(31473u, u_input.a))), -2147483647i);
    var var_3 = func_2(~firstLeadingBit(vec2<i32>(-1i, 14797i)), vec2<u32>(countOneBits(var_2.c.x), _wgslsmith_sub_u32(44118u, 1u)) & vec2<u32>(4294967295u, u_input.a), Struct_4(var_2.b, Struct_2(Struct_1(-480f, var_2.b.b), firstTrailingBit(22566i), var_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d, var_2.d, 2147483647i, u_input.b), vec4<i32>(u_input.b, 19056i, 3770i, u_input.b)), var_2.a.e), var_2.a)) & false;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f), -470f), _wgslsmith_f_op_f32(select(1408f, 493f, var_1.x)));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(abs(var_2.a.c.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_4.zwx)))), Struct_2(Struct_1(var_2.b.b.x, var_4.wwx), _wgslsmith_div_i32(u_input.b, -1i), var_2.b, min(firstTrailingBit(u_input.b), ~var_2.d), select(!var_2.a.e, select(select(var_2.a.e, vec2<bool>(false, var_1.x), var_2.a.e.x), !var_0, var_2.d != u_input.b), var_2.b.a <= -1000f)), var_2.a);
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(func_1().b, func_1().c.a, vec2<u32>(12463u, 4294967295u), arg_0.b.d);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-530f, func_1().c.c.b.x) - arg_0.b.a.a) + -901f), _wgslsmith_f_op_f32(ceil(644f))));
    let var_2 = ~35136u;
    var var_3 = func_1().c.c;
    let var_4 = vec4<u32>(select(~_wgslsmith_sub_u32(var_2, 47276u), 63897u, false) | var_0.c.x, var_0.c.x, ~(~u_input.a), ~var_0.c.x);
    return func_1().c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(1u, u_input.a);
    var var_1 = Struct_1(1f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(760f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-248f, -356f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-822f * -1770f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f * -1353f)), _wgslsmith_f_op_f32(-622f + _wgslsmith_f_op_f32(f32(-1f) * -1325f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(788f - -1198f))))));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.b.x)), var_1.b), u_input.b, func_4(func_1()), _wgslsmith_div_i32(~(~u_input.b), u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), Struct_1(var_1.a, var_1.b), ~vec2<u32>(u_input.a, 42395u), u_input.b);
    let var_3 = Struct_3(Struct_2(func_1().b.c, 27449i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3198f * -1000f) * func_4(Struct_4(Struct_1(-1000f, vec3<f32>(240f, var_2.a.a.a, -330f)), var_2.a, Struct_2(var_2.b, u_input.b, Struct_1(-763f, var_2.a.c.b), var_2.d, vec2<bool>(var_2.a.e.x, true)))).b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a, var_2.a.a.b.x, 1074f) * vec3<f32>(1000f, var_1.b.x, var_2.b.b.x))), -24151i, select(vec2<bool>(var_2.a.e.x == var_2.a.e.x, true), !var_2.a.e, vec2<bool>(true, !var_2.a.e.x))), var_2.b, ((var_2.c >> (abs(var_0) % vec2<u32>(32u))) & var_0) << (~(vec2<u32>(var_0.x, u_input.a) | min(var_0, var_2.c)) % vec2<u32>(32u)), _wgslsmith_div_i32(1i, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a, var_2.d, vec2<f32>(562f, 450f), ~(~(~_wgslsmith_clamp_u32(33181u, 8737u, 8088u))));
}

