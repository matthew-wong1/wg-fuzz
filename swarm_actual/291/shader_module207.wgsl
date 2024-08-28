struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(188f, 720f), vec2<f32>(-254f, 1000f), vec2<f32>(-1190f, 667f), vec2<f32>(-1981f, -132f), vec2<f32>(470f, 873f), vec2<f32>(1000f, 1661f), vec2<f32>(-451f, 965f), vec2<f32>(1277f, 123f), vec2<f32>(1317f, -186f), vec2<f32>(-249f, -1599f), vec2<f32>(998f, -852f), vec2<f32>(217f, 336f), vec2<f32>(399f, 1864f), vec2<f32>(-879f, -269f), vec2<f32>(-912f, -1035f), vec2<f32>(-120f, -1464f), vec2<f32>(-224f, -952f), vec2<f32>(215f, 633f), vec2<f32>(-1187f, -1000f), vec2<f32>(1000f, -774f));

var<private> global1: vec2<i32> = vec2<i32>(-13131i, 2147483647i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global1 = u_input.a.yy;
    let var_0 = global1.x;
    let var_1 = ~_wgslsmith_add_vec3_u32(~u_input.d, vec3<u32>(21909u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(1u, 1u, u_input.d.x, 1u))), ~countOneBits(4294967295u)));
    let var_2 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, true, false)), true, true), global1.x >= firstLeadingBit(-14905i)));
    var var_3 = ~global1.x;
    return ~_wgslsmith_add_u32(53055u, 16280u);
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = ~u_input.d.x;
    var var_1 = select(vec3<bool>(~abs(u_input.c) >= ~func_3(global0[_wgslsmith_index_u32(4294967295u, 20u)]), false, true), select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true && all(vec4<bool>(true, false, false, true))), select(vec3<bool>(true, 40136u <= u_input.c, all(vec3<bool>(true, true, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), all(vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-748f * arg_0.x), _wgslsmith_f_op_f32(-2472f - -140f), false)) <= _wgslsmith_f_op_f32(-arg_0.x)), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(ceil(-1574f)), !(var_1.x | (global1.x > -2147483647i)))), arg_0.x);
    var_0 = 43069u;
    var var_3 = max(firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, 23880u, 26585u, u_input.d.x) | vec4<u32>(u_input.d.x, u_input.d.x, u_input.c, 37310u), ~vec4<u32>(4294967295u, 43483u, 52186u, u_input.c) >> (abs(vec4<u32>(u_input.c, 23062u, 1u, u_input.d.x)) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_dot_vec3_u32((vec3<u32>(15942u, 0u, u_input.c) ^ u_input.d) | ~u_input.d, u_input.d), abs(select(1u, u_input.c, false)), 1u, ~u_input.c));
    return select(!(!var_1.zy), !select(var_1.yx, select(vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, false), var_1.xy, vec2<bool>(false, true)), select(false, false, var_1.x)), !(!var_1.x)), true);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(0u, Struct_1(~vec3<i32>(~0i, u_input.a.x, _wgslsmith_mod_i32(u_input.b, global1.x)), !(!arg_1)));
    let var_1 = Struct_2(var_0.a, Struct_1(var_0.b.a, select(var_0.b.b, true, arg_1 != (var_0.a <= 0u))));
    var var_2 = 2147483647i;
    let var_3 = _wgslsmith_sub_vec2_u32(u_input.d.xz, u_input.d.yy);
    var var_4 = Struct_2(~(var_1.a >> (1u % 32u)), var_0.b);
    return var_0.b;
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(Struct_1(~u_input.a.yxx, u_input.c == ~1u), any(select(!func_2(vec2<f32>(-556f, -1000f)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), true | (4294967295u >= u_input.d.x))));
    global0 = array<vec2<f32>, 20>();
    var var_1 = vec4<i32>(~abs(-(-1i << (1u % 32u))), firstTrailingBit(firstLeadingBit(21200i)), 1274i, ~_wgslsmith_clamp_i32(~var_0.a.x, -53328i, _wgslsmith_sub_i32(u_input.a.x, -1i)));
    let var_2 = any(!(!(!vec2<bool>(var_0.b, true))));
    var var_3 = Struct_2(reverseBits(u_input.d.x), var_0);
    return select(select(vec3<bool>(var_0.b, true, var_2 && true), !vec3<bool>(false, !var_2, true | var_3.b.b), vec3<bool>(var_0.b, true, any(vec2<bool>(var_2, var_0.b)))), vec3<bool>(true, var_3.b.b, !(!var_0.b & !var_2)), vec3<bool>(!(45517i <= ~var_1.x), true, false));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3.b.b;
    global0 = array<vec2<f32>, 20>();
    var var_1 = select(vec4<bool>(true, false, !func_4(Struct_1(arg_1.b.a, true), true).b, all(func_1().xz)), !vec4<bool>(false && (var_0 && var_0), var_0, arg_0.x, var_0), !select(vec4<bool>(true, var_0, 95125u != u_input.d.x, !var_0), !select(vec4<bool>(arg_1.b.b, arg_0.x, false, var_0), vec4<bool>(true, var_0, false, false), false), arg_1.b.b || !var_0));
    global0 = array<vec2<f32>, 20>();
    var_1 = !vec4<bool>(false, arg_3.b.b, !func_1().x, false);
    return Struct_2(_wgslsmith_div_u32(arg_3.a, arg_1.a), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 20>();
    global0 = array<vec2<f32>, 20>();
    let var_0 = func_5(select(!select(vec3<bool>(false, true, false), func_1(), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), Struct_2(~50156u << (u_input.c % 32u), func_4(func_4(Struct_1(u_input.a.wwz, false), true), any(vec3<bool>(false, false, true)))), u_input.c, Struct_2(u_input.d.x, Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global1.x), u_input.a.wyx), _wgslsmith_f_op_f32(select(-734f, -305f, false)) >= 321f)));
    var var_1 = func_5(!vec3<bool>(var_0.b.b, var_0.b.b, false), func_5(!select(vec3<bool>(var_0.b.b, var_0.b.b, true), vec3<bool>(true, var_0.b.b, false), vec3<bool>(true, true, true)), var_0, u_input.d.x, Struct_2(var_0.a, func_4(var_0.b, !var_0.b.b))), ~var_0.a >> (_wgslsmith_add_u32(~(~u_input.c), 4294967295u) % 32u), func_5(vec3<bool>(false, !var_0.b.b, any(select(vec3<bool>(var_0.b.b, true, false), vec3<bool>(false, true, true), var_0.b.b))), func_5(!select(vec3<bool>(var_0.b.b, true, true), vec3<bool>(false, var_0.b.b, true), vec3<bool>(var_0.b.b, true, false)), var_0, _wgslsmith_mult_u32(~var_0.a, 132715u), func_5(vec3<bool>(var_0.b.b, var_0.b.b, false), Struct_2(var_0.a, Struct_1(u_input.a.zyx, var_0.b.b)), u_input.c >> (39538u % 32u), var_0)), var_0.a, func_5(!vec3<bool>(var_0.b.b, true, var_0.b.b), Struct_2(var_0.a, Struct_1(vec3<i32>(-1i, 27760i, u_input.b), var_0.b.b)), reverseBits(u_input.d.x), Struct_2(_wgslsmith_sub_u32(0u, var_0.a), func_5(vec3<bool>(var_0.b.b, false, false), Struct_2(u_input.c, Struct_1(u_input.a.zzx, var_0.b.b)), var_0.a, var_0).b))));
    var var_2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1844f, -618f, -1477f, -1233f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-921f, 392f, -866f, -644f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(181f, -266f, -1089f, 394f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2271f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(793f - -343f)), 1341f, _wgslsmith_f_op_f32(-511f + -1000f)), true)), u_input.a.yyw, var_1.b.a, vec4<u32>(func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, u_input.d.x) | ~u_input.c, 20u)]), _wgslsmith_mod_u32(var_1.a, var_1.a << (countOneBits(var_1.a) % 32u)), ~_wgslsmith_mod_u32(var_1.a, ~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(41796u, u_input.c, var_1.a) << (~u_input.d % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(var_1.a, 1u), 4294967295u, u_input.d.x << (u_input.c % 32u)))));
}

