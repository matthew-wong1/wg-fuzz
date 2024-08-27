struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec4_i32(~max(-countOneBits(vec4<i32>(944i, -4878i, 30576i, -1i)), countOneBits(vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(40070i, 627i), firstTrailingBit(-18639i), _wgslsmith_mod_i32(-2147483647i, -1356i), 22847i)), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = arg_0.zyy;
    var_1 = !arg_0.xwz;
    var var_2 = abs(vec2<i32>(74897i, _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(var_0.xyx, var_0.yxx), ~var_0.zyx)));
    global0 = array<Struct_4, 27>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(680f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(399f - 1000f), _wgslsmith_f_op_f32(-1365f + 886f)), _wgslsmith_f_op_f32(abs(1f))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.c.x);
    let var_1 = Struct_1(arg_1.d.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_2.c.wy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.xx - arg_2.c.wy)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, 1080f) - vec2<f32>(arg_0.x, 266f)), vec2<f32>(arg_0.x, -190f), vec2<bool>(true, true)))))), vec4<f32>(-854f, _wgslsmith_f_op_f32(func_3(select(select(vec4<bool>(true, true, arg_1.b, true), vec4<bool>(arg_1.b, arg_2.a, arg_2.a, true), arg_2.a), select(vec4<bool>(false, arg_2.a, arg_1.b, arg_1.b), vec4<bool>(false, true, arg_2.a, false), arg_1.b), false))), 926f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.b.x)), arg_2.c.x)))), arg_2.d);
    let var_2 = ~vec4<u32>(~35845u, 4294967295u, 0u, abs(_wgslsmith_dot_vec3_u32(max(vec3<u32>(61195u, u_input.b, u_input.a), vec3<u32>(u_input.a, u_input.b, 4294967295u)), ~vec3<u32>(1u, u_input.a, u_input.a))));
    let var_3 = !(!(!(!(!vec4<bool>(false, true, arg_1.d.x, false)))));
    let var_4 = reverseBits(firstLeadingBit(1u));
    return any(select(select(select(select(vec4<bool>(var_1.a, arg_2.a, false, true), vec4<bool>(false, var_1.a, arg_1.d.x, false), vec4<bool>(true, false, arg_1.d.x, false)), select(vec4<bool>(var_3.x, false, var_3.x, true), vec4<bool>(false, var_3.x, false, arg_2.a), var_3), false), vec4<bool>(false, arg_2.a, var_3.x, !arg_1.d.x), var_3.x), vec4<bool>(all(select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.d.x, false), true)), arg_2.a, true, true && any(var_3.xy)), var_1.d > (1i << (1u % 32u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32) -> vec4<bool> {
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32((-vec3<i32>(-16903i, arg_1.d.c.d, arg_2) >> ((vec3<u32>(u_input.a, u_input.c, u_input.c) << (vec3<u32>(8061u, u_input.b, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u))) >> ((vec3<u32>(20573u, u_input.a, u_input.c) & vec3<u32>(u_input.a, u_input.c, u_input.b)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_0.b.d, 2147483647i, -1i), vec3<i32>(arg_0.d.x, -38751i, 0i), arg_1.c) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.a, 1u), vec3<u32>(4294967295u, 17472u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(countOneBits(arg_1.d.b.d), ~27960i, abs(arg_1.d.c.d)))), select(-_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2, 10418i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(-22412i, arg_0.d.x, arg_1.d.c.d), vec3<i32>(0i, 1i, 0i))), 1i >> (_wgslsmith_div_u32(~u_input.c, 63288u) % 32u), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1416f, arg_0.b.b.x, arg_0.a.x)), Struct_5(arg_0.d, true, _wgslsmith_div_i32(-9633i, arg_0.d.x), arg_1.c), Struct_1(arg_0.b.a | arg_0.c.a, arg_1.a.a.b.c.wy, _wgslsmith_f_op_vec4_f32(select(arg_0.c.c, vec4<f32>(-574f, 356f, -664f, 265f), arg_1.c.x)), -9012i), arg_1.a.a.b.d)));
    global0 = array<Struct_4, 27>();
    let var_1 = Struct_4(Struct_3(arg_0, -439f, arg_0, arg_1.a.d, Struct_2(_wgslsmith_div_vec3_f32(arg_0.b.c.www, vec3<f32>(arg_1.d.c.b.x, arg_0.c.b.x, arg_1.d.b.c.x)), Struct_1(true && arg_1.d.c.a, vec2<f32>(354f, -367f), vec4<f32>(arg_0.b.c.x, arg_1.a.b, 739f, arg_0.c.b.x), arg_2), arg_0.c, var_0)), !arg_0.b.a, select(!select(vec3<bool>(arg_1.a.e.c.a, false, true), select(arg_1.c, arg_1.c, false), vec3<bool>(true, arg_0.b.a, arg_0.b.a)), select(vec3<bool>(u_input.a == u_input.b, true, true), arg_1.c, arg_1.d.d.x == var_0.x), select(select(select(vec3<bool>(arg_0.c.a, false, false), arg_1.c, arg_0.c.a), !vec3<bool>(true, arg_1.c.x, true), true), !vec3<bool>(arg_1.a.e.c.a, true, true), !select(vec3<bool>(arg_1.c.x, false, arg_0.c.a), arg_1.c, arg_1.b))), Struct_2(arg_1.a.a.b.c.wyx, arg_1.d.c, arg_0.b, -arg_0.d));
    return select(select(!(!(!vec4<bool>(var_1.d.b.a, false, arg_1.c.x, false))), select(!vec4<bool>(false, var_1.b, arg_0.c.a, true), vec4<bool>(true, all(vec3<bool>(true, var_1.b, var_1.b)), arg_0.c.a, select(arg_1.d.b.a, arg_0.b.a, true)), true), false), !(!vec4<bool>(!arg_0.c.a, arg_1.c.x && false, true, true)), !vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 27>();
    var var_0 = !(any(!func_1(Struct_2(vec3<f32>(-1917f, -252f, 158f), Struct_1(true, vec2<f32>(-1000f, -471f), vec4<f32>(1097f, 206f, -1208f, -424f), 10410i), Struct_1(true, vec2<f32>(642f, -375f), vec4<f32>(202f, -641f, -3047f, 2556f), 15099i), vec2<i32>(16709i, 2147483647i)), global0[_wgslsmith_index_u32(u_input.a, 27u)], 17628i)) | func_1(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1440f, 1238f, 345f) - vec3<f32>(-1000f, 340f, 1185f)), Struct_1(true, vec2<f32>(1000f, 1418f), vec4<f32>(115f, -308f, -664f, -2476f), -2147483647i), Struct_1(false, vec2<f32>(994f, -1518f), vec4<f32>(208f, -1000f, -1000f, -1667f), -40106i), vec2<i32>(5931i, 1i)), global0[_wgslsmith_index_u32(u_input.c, 27u)], _wgslsmith_add_i32(_wgslsmith_mult_i32(-2034i, 0i), reverseBits(-10045i))).x);
    var var_1 = _wgslsmith_div_i32(-_wgslsmith_sub_i32(1i, 2147483647i >> (u_input.b % 32u)), reverseBits(-1i)) >> (u_input.b % 32u);
    var_0 = any(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, 892f, 806f) - vec3<f32>(593f, 137f, -103f)), Struct_1(true, vec2<f32>(-843f, -2876f), vec4<f32>(1914f, -341f, -1267f, -504f), 1i), Struct_1(true, vec2<f32>(410f, -988f), vec4<f32>(-1747f, -265f, -947f, -1004f), -2317i), _wgslsmith_sub_vec2_i32(vec2<i32>(27619i, 26809i), vec2<i32>(0i, 1i))), Struct_4(Struct_3(Struct_2(vec3<f32>(200f, -536f, -599f), Struct_1(false, vec2<f32>(788f, 304f), vec4<f32>(1482f, 1049f, 266f, -1346f), 0i), Struct_1(false, vec2<f32>(-1242f, -3225f), vec4<f32>(334f, -851f, 1000f, 1758f), 12457i), vec2<i32>(-2147483647i, -43161i)), 729f, Struct_2(vec3<f32>(-411f, 108f, -261f), Struct_1(false, vec2<f32>(-1000f, 997f), vec4<f32>(111f, 226f, 931f, 307f), -1i), Struct_1(true, vec2<f32>(-380f, 529f), vec4<f32>(-1300f, 1000f, 128f, 1429f), -2147483647i), vec2<i32>(-23620i, -2147483647i)), 20449i, Struct_2(vec3<f32>(-672f, -274f, 215f), Struct_1(false, vec2<f32>(-673f, -1396f), vec4<f32>(284f, -1221f, 821f, 1000f), 2147483647i), Struct_1(true, vec2<f32>(416f, -1284f), vec4<f32>(-442f, 2526f, 591f, 1003f), -7194i), vec2<i32>(-1i, 78049i))), all(vec3<bool>(true, false, true)), vec3<bool>(true, true, true), Struct_2(vec3<f32>(-2286f, 899f, -774f), Struct_1(false, vec2<f32>(229f, 236f), vec4<f32>(894f, -1357f, 486f, -729f), -2147483647i), Struct_1(true, vec2<f32>(246f, -1338f), vec4<f32>(183f, 699f, -448f, 563f), 1i), vec2<i32>(30097i, -32590i))), 1i)) && (_wgslsmith_f_op_f32(abs(-559f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -678f)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f), 2636f);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(794f, -525f, -910f), vec3<f32>(-758f, 1280f, 141f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(397f, 238f, -927f) - vec3<f32>(2510f, -554f, 749f))), vec3<f32>(-356f, -1272f, _wgslsmith_f_op_f32(2669f * -350f)))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.a, firstLeadingBit(abs(u_input.c)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.a), min(vec2<u32>(28795u, 26671u), vec2<u32>(4294967295u, u_input.b)))));
}

