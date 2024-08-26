struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(3090i, -1205f, 519f), Struct_3(i32(-2147483648), -593f, 1429f), Struct_3(i32(-2147483648), -832f, 1000f), Struct_3(-33221i, -1090f, -190f), Struct_3(0i, 325f, -1242f), Struct_3(-71530i, 668f, 439f), Struct_3(-1i, 1555f, 835f), Struct_3(-7643i, 837f, -116f), Struct_3(-27982i, -1047f, 314f), Struct_3(50152i, -481f, 1211f), Struct_3(2147483647i, -367f, -548f), Struct_3(-13990i, 247f, -1531f), Struct_3(1961i, 1573f, -1000f), Struct_3(-6992i, -586f, -1779f), Struct_3(-12645i, 1000f, -916f), Struct_3(i32(-2147483648), -276f, -488f), Struct_3(0i, -507f, -574f), Struct_3(2147483647i, -689f, 1597f), Struct_3(-43519i, -413f, -1125f), Struct_3(2147483647i, 2037f, 435f), Struct_3(-41894i, 2813f, 343f), Struct_3(-13144i, 1000f, 653f), Struct_3(-2201i, -1391f, 465f), Struct_3(0i, 1129f, 187f), Struct_3(-18868i, 779f, 864f), Struct_3(1913i, -928f, -841f), Struct_3(-7332i, 2301f, -649f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<i32>) -> u32 {
    return 93095u;
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_3(arg_0.a.a, 638f, -306f);
    let var_1 = vec3<i32>(arg_0.a.a, arg_0.a.a, -(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a.zwx, vec3<i32>(0i, u_input.a.x, var_0.a)), -u_input.a.x) >> (_wgslsmith_div_u32(func_3(vec3<bool>(arg_0.a.d, false, true), Struct_4(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_0.a.a), u_input.a.xyy), 4294967295u) % 32u)));
    let var_2 = ~vec4<u32>(48999u, _wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), (0u >> (u_input.d % 32u)) ^ 46791u), 34112u, 36546u);
    global0 = array<Struct_3, 27>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, 2147483647i), max(vec2<i32>(2147483647i, var_0.a), vec2<i32>(-11363i, u_input.a.x))), var_1.x >> (~u_input.b.x % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a.b, arg_0.a.b)) + vec4<f32>(-1202f, -655f, -538f, _wgslsmith_f_op_f32(f32(-1f) * -607f))), arg_0.a.b.xyy, arg_0.a.d), var_2.zy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1508f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1961f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -379f)))), select(!select(false, true, arg_0.a.d), select(u_input.a.x, -1i, arg_0.a.d) > (i32(-1i) * -2147483647i), arg_0.a.d))));
    return select(select(vec2<bool>(!(!arg_0.a.d), true), vec2<bool>(var_3.a.d, var_3.a.d | var_3.a.d), vec2<bool>(arg_0.a.d, true)), vec2<bool>(arg_0.a.d, _wgslsmith_f_op_f32(-var_0.c) >= var_0.b), false);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = any(!func_2(Struct_2(Struct_1(-19394i, vec4<f32>(-2301f, -1224f, 302f, -1000f), vec3<f32>(623f, 572f, -324f), true), vec2<u32>(u_input.b.x, u_input.d), 495f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1190f, 932f, 1000f, 1000f))))))));
    global0 = array<Struct_3, 27>();
    var var_2 = Struct_1(~_wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(14182i, u_input.a.x, u_input.a.x), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mod_i32(arg_0, _wgslsmith_dot_vec3_i32(u_input.a.xxz, vec3<i32>(arg_0, arg_0, 0i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, var_1.x, -1509f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -903f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(1000f, 166f, var_1.x, var_1.x))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), -952f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_1.x + var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 688f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1235f, var_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.zxy))), all(func_2(Struct_2(Struct_1(u_input.a.x, vec4<f32>(var_1.x, 759f, var_1.x, var_1.x), var_1.wxz, false), ~u_input.b.ww, -1000f))));
    var var_3 = select(false, var_0, true);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(func_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, 0i) >> (max(u_input.c.x, u_input.d) % 32u), u_input.a.x)), 27u)], -48576i);
    global0 = array<Struct_3, 27>();
    global0 = array<Struct_3, 27>();
    let var_1 = ~(~firstLeadingBit(abs(u_input.c.wz) | vec2<u32>(u_input.c.x, u_input.d)));
    let var_2 = Struct_2(Struct_1(countOneBits(_wgslsmith_sub_i32(1i, 2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, var_0.a.b, -1043f, var_0.a.b) * vec4<f32>(var_0.a.c, var_0.a.b, -2282f, 819f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, 639f, 2130f, var_0.a.b))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.c, _wgslsmith_f_op_f32(-var_0.a.b), var_0.a.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(757f, -699f, var_0.a.c)))))), true && any(vec2<bool>(true, true))), ~u_input.b.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-var_0.a.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-1641f, ~var_2.b.x, vec2<u32>(1u, firstTrailingBit(var_1.x)), 0u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535f * -792f) + -227f), 850f), var_2.a.b.ywy));
}

