struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
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

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(63500u, 4294967295u, 1u, 1393u), vec4<u32>(4294967295u, 0u, 4399u, 1u), vec4<u32>(1u, 28638u, 7762u, 26030u), vec4<u32>(1u, 31673u, 1u, 26973u), vec4<u32>(4294967295u, 1u, 32336u, 4294967295u), vec4<u32>(1u, 35982u, 69105u, 20451u), vec4<u32>(37368u, 59441u, 1u, 40006u), vec4<u32>(36337u, 18328u, 96011u, 31817u), vec4<u32>(41987u, 0u, 75467u, 0u), vec4<u32>(1u, 39837u, 0u, 60122u), vec4<u32>(5988u, 0u, 94060u, 43617u), vec4<u32>(34891u, 4294967295u, 4294967295u, 3334u), vec4<u32>(20505u, 0u, 1u, 4294967295u), vec4<u32>(0u, 1u, 27996u, 25033u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 72241u, 1u, 57551u), vec4<u32>(1u, 27921u, 4294967295u, 0u), vec4<u32>(32140u, 4294967295u, 1u, 47283u), vec4<u32>(83103u, 1u, 4603u, 85699u), vec4<u32>(1u, 1u, 23749u, 4294967295u), vec4<u32>(88763u, 106804u, 60381u, 1u), vec4<u32>(104599u, 1u, 14009u, 74913u), vec4<u32>(81571u, 1u, 1u, 1u), vec4<u32>(13514u, 98344u, 117800u, 53734u), vec4<u32>(61745u, 26495u, 0u, 35172u), vec4<u32>(1u, 4294967295u, 20749u, 50235u), vec4<u32>(31946u, 5735u, 0u, 7227u), vec4<u32>(33497u, 0u, 45565u, 55337u), vec4<u32>(1u, 4294967295u, 71369u, 30076u), vec4<u32>(0u, 1u, 124427u, 40300u), vec4<u32>(4294967295u, 0u, 1u, 1u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(672f, 273f), vec2<f32>(2834f, 1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1220f, 812f) - vec2<f32>(-581f, -906f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-967f - 698f), _wgslsmith_f_op_f32(floor(-1000f)))))));
    let var_1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-623f, var_0.a.x))))));
    let var_3 = 45822u;
    global0 = array<vec4<u32>, 31>();
    return _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(i32(-1i) * -40193i, _wgslsmith_clamp_i32(-11958i, 48178i, 29000i))), select(vec2<i32>(u_input.e, firstTrailingBit(-2147483647i)), max(firstTrailingBit(vec2<i32>(u_input.d, -44479i)), max(vec2<i32>(u_input.d, u_input.e), vec2<i32>(u_input.e, -1i))), true)) >= -abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.a, u_input.a)));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = u_input.d;
    let var_1 = vec3<f32>(296f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    var_0 = -33929i;
    global0 = array<vec4<u32>, 31>();
    let var_2 = select(vec3<bool>(func_3(), any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), true)), !select(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, !func_3()));
    return ~max(28397u, 1u) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, u_input.c), ~(vec2<u32>(u_input.c, 0u) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))), ~(~(vec2<u32>(u_input.c, u_input.c) | vec2<u32>(60920u, u_input.c))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_mult_i32(18378i, _wgslsmith_add_i32(arg_3.x >> (~54688u % 32u), 18736i) | -2147483647i);
    let var_1 = _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(func_2(vec3<f32>(-501f, 271f, -1416f)), ~49359u)), ~select(select(vec2<u32>(arg_1, 0u), vec2<u32>(arg_1, u_input.b), false), vec2<u32>(u_input.c, 54784u), vec2<bool>(false, true)) ^ vec2<u32>(u_input.c, u_input.b), vec2<u32>(69362u, ~arg_1));
    global0 = array<vec4<u32>, 31>();
    var_0 = abs(16320i);
    var var_2 = !any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), true), vec4<bool>(any(vec2<bool>(true, false)), true, true, all(vec2<bool>(true, false)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-137f, 1165f, true)) - _wgslsmith_f_op_f32(-arg_2.a.x)))) + _wgslsmith_f_op_f32(-1072f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-782f)) * _wgslsmith_f_op_f32(sign(-227f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b >> (~u_input.c % 32u);
    var var_1 = true;
    let var_2 = !vec4<bool>(true, true, !(false != select(true, false, false)), true);
    var_1 = all(var_2);
    global0 = array<vec4<u32>, 31>();
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(654f - -1411f) * _wgslsmith_f_op_f32(func_1(u_input.d, 65339u, Struct_1(vec2<f32>(785f, 243f)), vec2<i32>(u_input.a, -33938i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1081f - -1382f)))), -626f));
    global0 = array<vec4<u32>, 31>();
    let var_4 = Struct_1(vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x - var_3.a.x) - var_3.a.x))));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0, u_input.b, 4294967295u), ~vec3<u32>(u_input.c, var_0, 45129u)) << (~max(vec3<u32>(0u, 6502u, 40090u), vec3<u32>(48825u, u_input.c, u_input.b)) % vec3<u32>(32u))) << (vec3<u32>(0u, _wgslsmith_add_u32(58112u, 0u), ~(4294967295u >> (1u % 32u))) % vec3<u32>(32u)));
}

