struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false));

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-75636i, -88888i, -8321i), vec3<i32>(1i, -49678i, i32(-2147483648)), vec3<i32>(-36312i, 48798i, 2147483647i), vec3<i32>(-15101i, 2147483647i, -19289i), vec3<i32>(-16177i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -1i, -43694i), vec3<i32>(-62415i, -1i, i32(-2147483648)), vec3<i32>(-15944i, 22532i, i32(-2147483648)), vec3<i32>(63178i, 0i, 2147483647i), vec3<i32>(-13853i, 1i, 28076i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(-1i, i32(-2147483648), 13419i), vec3<i32>(-9246i, 1i, -1i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(4603i, 2147483647i, -1i), vec3<i32>(11934i, 1i, 1i), vec3<i32>(18692i, -1073i, 1i), vec3<i32>(2147483647i, -55844i, -1i), vec3<i32>(-31528i, 1i, -1i), vec3<i32>(-28584i, 15576i, -39434i), vec3<i32>(0i, 0i, 30416i), vec3<i32>(-30476i, 2147483647i, 2147483647i), vec3<i32>(-11472i, -16684i, 11797i), vec3<i32>(-7217i, 33284i, 2147483647i), vec3<i32>(-638i, 22476i, -17915i), vec3<i32>(-41283i, -17256i, 1i), vec3<i32>(0i, 0i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 0i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<u32> {
    global0 = array<Struct_4, 27>();
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_3(var_0.a, arg_0.b, -2147483647i, abs(vec3<u32>(_wgslsmith_mod_u32(28758u, _wgslsmith_div_u32(4294967295u, 61823u)), min(arg_0.a.a | arg_0.a.a, select(arg_1.a, 4294967295u, false)), arg_1.a)));
    global1 = array<vec3<i32>, 28>();
    return var_0.d.xx;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(arg_3.x), 67280u, 94841u), ~(~arg_3)), 4294967295u) & u_input.b.zw;
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wwy, max(u_input.b.www, vec3<u32>(601u, arg_1.a, 0u))), _wgslsmith_div_u32(1u, ~arg_1.a) & abs(arg_1.a | arg_1.a), _wgslsmith_mod_u32(var_0.x, u_input.b.x)) >> (vec3<u32>(1u & _wgslsmith_clamp_u32(var_0.x, 0u, ~1u), u_input.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(~13405u, select(arg_1.a, 23164u, arg_2.a)), 0u >> (_wgslsmith_sub_u32(0u, var_0.x) % 32u))) % vec3<u32>(32u));
    let var_2 = -u_input.a.x;
    global0 = array<Struct_4, 27>();
    let var_3 = vec3<i32>(u_input.a.x, 45735i, 2147483647i);
    return func_3(Struct_3(arg_1, Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_3.x, var_3.x), var_3.xz), -u_input.a.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0))), arg_0), 21746i, ~vec3<u32>(22602u, u_input.b.x, countOneBits(u_input.b.x))), Struct_2(_wgslsmith_dot_vec3_u32(arg_3, _wgslsmith_mult_vec3_u32(firstLeadingBit(arg_3), u_input.b.xzx))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_add_vec2_i32(firstTrailingBit(u_input.a.xw << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), u_input.a.xy), vec2<f32>(_wgslsmith_f_op_f32(floor(1824f)), -172f), 1f);
    var var_1 = max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(2147483647i | var_0.a, ~u_input.a.x), u_input.a.x, var_0.b.x), u_input.a), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -9884i) | _wgslsmith_mod_i32(1i, 2147483647i), -5542i >> (countOneBits(1u) % 32u), ~1i << (arg_0 % 32u), 0i));
    var var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(func_2(-389f, Struct_2(u_input.b.x), global0[_wgslsmith_index_u32(32566u, 27u)], ~vec3<u32>(22467u, arg_0, u_input.b.x)), vec2<u32>(0u, arg_0), func_3(Struct_3(Struct_2(arg_0), Struct_1(10163i, vec2<i32>(2147483647i, -2147483647i), var_0.c, var_0.d), u_input.a.x, u_input.b.zxx), Struct_2(arg_0)) | ~abs(vec2<u32>(arg_0, u_input.b.x))), vec2<u32>(7790u, 1u));
    var var_3 = Struct_2(var_2.x);
    var var_4 = 1389i;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(func_2(_wgslsmith_f_op_f32(ceil(617f)), Struct_2(4294967295u), Struct_4(true), reverseBits(vec3<u32>(8571u, var_2.x, arg_0))).x, arg_0) >> (~u_input.b.yy % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(u_input.b.x, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -338f);
    global0 = array<Struct_4, 27>();
    var var_1 = u_input.b.wz;
    let var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-491f, -1000f))), -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f)) + -557f)) + 113f);
    let var_4 = (vec4<u32>(abs(~var_1.x), min(var_2, var_1.x), 38026u, ~var_2) >> (vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(20333u, var_2), u_input.b.wy), var_1.x, func_1(6962u) << (~var_1.x % 32u), _wgslsmith_div_u32(~42297u, 28014u)) % vec4<u32>(32u))) & u_input.b;
    let var_5 = 400f;
    let var_6 = var_4.x;
    let var_7 = 8084u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 0i, reverseBits(u_input.b.xy));
}

