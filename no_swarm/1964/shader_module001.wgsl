struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(4294967295u, 4294967295u, 29973u, 4294967295u), vec4<u32>(4294967295u, 90724u, 28254u, 56928u), vec4<u32>(11973u, 0u, 4294967295u, 0u), vec4<u32>(23754u, 16459u, 51244u, 1u), vec4<u32>(20950u, 39701u, 1u, 0u), vec4<u32>(4294967295u, 29346u, 60328u, 60457u), vec4<u32>(82826u, 34950u, 0u, 78501u), vec4<u32>(27276u, 4294967295u, 4294967295u, 58280u), vec4<u32>(4294967295u, 74177u, 0u, 0u), vec4<u32>(90617u, 7033u, 4294967295u, 34958u), vec4<u32>(4294967295u, 67143u, 0u, 73549u), vec4<u32>(69741u, 4370u, 13437u, 0u), vec4<u32>(0u, 3705u, 34720u, 38659u), vec4<u32>(15221u, 4294967295u, 0u, 65219u), vec4<u32>(8212u, 0u, 37910u, 0u), vec4<u32>(1u, 41281u, 47460u, 17744u), vec4<u32>(1801u, 6430u, 0u, 10063u), vec4<u32>(21898u, 21970u, 1748u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 15628u), vec4<u32>(0u, 4294967295u, 77698u, 4294967295u), vec4<u32>(1u, 1u, 24571u, 4294967295u), vec4<u32>(4294967295u, 3007u, 49u, 72157u), vec4<u32>(1u, 1u, 11908u, 0u), vec4<u32>(1u, 65808u, 4294967295u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    global0 = array<vec4<u32>, 24>();
    let var_0 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))));
    var var_1 = select(vec4<bool>(var_0.x, _wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_0.a.c, arg_0.a.c), vec2<u32>(arg_0.a.c, 23455u)), ~vec2<u32>(arg_0.a.c, 1u)) > firstTrailingBit(_wgslsmith_mult_u32(arg_0.a.c, arg_0.b.c)), var_0.x, var_0.x), !vec4<bool>(true, var_0.x, !(25660i >= u_input.a.x), true), (~1i << ((select(40908u, 474u, false) & arg_0.a.c) % 32u)) == -4007i);
    var var_2 = firstTrailingBit(select(~(~vec2<u32>(47451u, 1u)), vec2<u32>(1u, ~4294967295u), !(!var_1.wy))) >> (vec2<u32>(1u, arg_0.a.c) % vec2<u32>(32u));
    var_1 = vec4<bool>(true, !select(true, !(arg_1 < -1715f), false), !(_wgslsmith_sub_u32(38347u, _wgslsmith_clamp_u32(32318u, arg_0.a.c, arg_0.b.c)) > min(select(4294967295u, 12942u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.c, arg_0.b.c), vec2<u32>(0u, 41931u)))), true);
    return var_2.x;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-459f, 230f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1191f, -1859f), -370f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -507f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(973f + -954f) + 938f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1964f * -1185f) + _wgslsmith_f_op_f32(f32(-1f) * -955f)))));
    let var_1 = ~func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x - 528f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 933f, -1055f, 1335f) - vec4<f32>(var_0.x, -1157f, var_0.x, 1000f)), ~452u), Struct_1(_wgslsmith_f_op_f32(-759f + var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(633f, -1162f, 443f, 226f) + vec4<f32>(var_0.x, -292f, var_0.x, var_0.x)), max(1u, 1u))), var_0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, _wgslsmith_f_op_f32(ceil(2203f)), _wgslsmith_f_op_f32(641f + var_0.x), -589f))), ~var_1);
    var_0 = var_2.b;
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1573f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(ceil(var_2.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(sign(var_2.b.x)), 101f, var_2.b.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 309f, var_0.x, var_2.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(854f, 546f, var_2.a, var_0.x) * var_2.b))))), !vec4<bool>(_wgslsmith_f_op_f32(var_0.x - var_2.b.x) >= -1017f, !all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), true)));
    return (u_input.a.x >= 5221i) | true;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global0 = array<vec4<u32>, 24>();
    return Struct_2(arg_0.c.a, arg_0.c.b);
}

fn func_1(arg_0: i32, arg_1: bool) -> bool {
    global0 = array<vec4<u32>, 24>();
    let var_0 = !vec4<bool>(!arg_1, false, true, all(select(vec3<bool>(true, true, true), !vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), true))));
    var var_1 = false;
    var var_2 = Struct_5(func_4(Struct_4(4294967295u, vec4<bool>(func_2(arg_0), var_0.x, !var_0.x, all(vec3<bool>(var_0.x, true, false))), Struct_2(Struct_1(-163f, vec4<f32>(-1000f, 1887f, 329f, -110f), 69540u), Struct_1(767f, vec4<f32>(295f, -1134f, 1000f, -661f), 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 0u, 4294967295u)), ~firstLeadingBit(30520u))));
    let var_3 = !select(!(!vec3<bool>(false, false, arg_1)), !(!select(var_0.yyz, vec3<bool>(false, var_0.x, var_0.x), true)), true);
    return arg_1;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_3) -> u32 {
    global0 = array<vec4<u32>, 24>();
    var var_0 = Struct_3(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-760f, _wgslsmith_f_op_f32(-arg_0.x), true)))), -countOneBits(arg_2.c << (~54090u % 32u)), !arg_2.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_2.b, -525f, arg_2.b) * vec4<f32>(arg_0.x, -1000f, -775f, arg_0.x)))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(arg_2.e.x - arg_2.e.x), _wgslsmith_f_op_f32(step(-199f, _wgslsmith_f_op_f32(step(arg_2.b, -396f))))), select(!(!vec4<bool>(arg_2.d, true, arg_2.d, false)), !vec4<bool>(arg_2.d, arg_2.d, arg_2.d, arg_1.x), true))));
    global0 = array<vec4<u32>, 24>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_0);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-715f, 864f, -1808f, -547f), vec4<f32>(-1585f, 310f, 1298f, -699f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1417f, 602f, 275f, -1000f) - vec4<f32>(713f, 2195f, 1443f, -473f)), vec4<bool>(true, true, true, false)))), !select(vec2<bool>(false, true), vec2<bool>(true, false), func_1(u_input.a.x, false)), Struct_3(-1i, _wgslsmith_f_op_f32(f32(-1f) * -1490f), 0i, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, 747f, 110f, 446f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(548f, 150f, 1059f, -711f)))))), -467f, firstLeadingBit(1u), 4294967295u);
}

