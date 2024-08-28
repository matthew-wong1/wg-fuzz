struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(36790u, 60089u, -1000f), Struct_1(13139u, 67318u, -835f), Struct_1(24955u, 4487u, -120f), Struct_1(42962u, 4294967295u, -619f), Struct_1(0u, 0u, -1689f), Struct_1(64432u, 1u, -1351f), Struct_1(9804u, 1u, -302f));

var<private> global1: array<f32, 22>;

var<private> global2: array<Struct_2, 7>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 33878u, arg_0, arg_0), vec4<u32>(arg_0, 61198u, 21183u, arg_0)) | _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(arg_0, 4294967295u, arg_0, arg_0))) << (abs(vec4<u32>((arg_0 ^ arg_0) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(arg_0, 1u, 1u)), _wgslsmith_clamp_u32(arg_0, 97434u, arg_0) ^ 14013u, countOneBits(arg_0), arg_0 ^ ~0u)) % vec4<u32>(32u));
    var var_1 = Struct_1(2499u, var_0.x, _wgslsmith_f_op_f32(-510f - arg_1));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, var_0.x), 7u)];
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(var_0.x, 1u, arg_0) ^ arg_0, 1u, var_1.a, abs(var_1.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b, 0u >> (var_1.a % 32u), reverseBits(70708u), arg_0 & 0u) ^ select(~vec4<u32>(16304u, 68929u, 110397u, var_0.x), ~vec4<u32>(4294967295u, 1u, 86773u, 210u), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), ~34293u, var_0.x ^ 9844u, 19733u), reverseBits(~vec4<u32>(var_1.b, 5911u, arg_0, 30392u)))));
    var var_3 = global0[_wgslsmith_index_u32(var_2.a, 7u)];
    return !(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))) == false;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 7>();
    global2 = array<Struct_2, 7>();
    let var_0 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), true), vec2<bool>(any(vec2<bool>(false, true)), func_3(~4294967295u, _wgslsmith_f_op_f32(-778f - 104f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(26218u, 22u)])))), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 22u)] + 390f)))));
    global1 = array<f32, 22>();
    return Struct_1(abs(53750u), max(~_wgslsmith_clamp_u32(min(85768u, 13039u), 0u, ~1u), 1u), _wgslsmith_f_op_f32(-591f + -1000f));
}

fn func_1() -> u32 {
    global2 = array<Struct_2, 7>();
    var var_0 = i32(-1i) * -25555i;
    var var_1 = global0[_wgslsmith_index_u32(41896u, 7u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c, global1[_wgslsmith_index_u32(var_1.a, 22u)], -1240f), vec3<f32>(var_1.c, 488f, var_1.c), vec3<bool>(true, true, false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1387f, 529f, global1[_wgslsmith_index_u32(var_1.b, 22u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, -930f) + vec3<f32>(267f, var_1.c, 1284f))))));
    let var_3 = func_2();
    return _wgslsmith_mult_u32(var_3.a, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_f_op_f32(1452f * global1[_wgslsmith_index_u32(1u | ~func_1(), 22u)]);
    var var_1 = reverseBits(firstLeadingBit(~0u & select(1u, 48834u, true)) >> (_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(7992u, 68078u, 0u)), ~(~0u)) % 32u));
    var_0 = -758f;
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~1u, 1u), 7u)];
    var_0 = 570f;
    global0 = array<Struct_1, 7>();
    global1 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(vec2<u32>(4294967295u, var_2.b.a) | _wgslsmith_div_vec2_u32(vec2<u32>(var_2.b.b, var_2.b.b), vec2<u32>(var_2.b.a, var_2.b.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -803f, 1108f, -2066f) * vec4<f32>(-345f, 1054f, global1[_wgslsmith_index_u32(var_2.b.a, 22u)], 773f)) * vec4<f32>(1740f, 571f, global1[_wgslsmith_index_u32(var_2.b.b, 22u)], 136f)), vec4<f32>(func_2().c, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1814u, 22u)]), -1565f)))), _wgslsmith_f_op_f32(step(var_2.a.x, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(var_2.b.c, var_2.a.x)), _wgslsmith_f_op_f32(408f * global1[_wgslsmith_index_u32(var_2.b.a, 22u)]), _wgslsmith_f_op_f32(-1336f * -1000f), global1[_wgslsmith_index_u32(~var_2.b.b, 22u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, global1[_wgslsmith_index_u32(var_2.b.b, 22u)], var_2.b.c, var_2.a.x)), vec4<f32>(985f, 523f, -1126f, -140f), vec4<bool>(true, true, true, true))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(var_2.b.a, 22u)], 348f, -287f))))));
}

