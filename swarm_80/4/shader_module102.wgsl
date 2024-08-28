struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-2146f, -106f), vec2<f32>(498f, 647f), vec2<f32>(295f, -544f), vec2<f32>(-244f, -1496f), vec2<f32>(-2057f, -256f), vec2<f32>(1459f, 811f), vec2<f32>(-765f, 257f), vec2<f32>(-1000f, 1111f), vec2<f32>(-1130f, 1000f), vec2<f32>(2111f, -950f), vec2<f32>(340f, 1000f), vec2<f32>(-155f, 493f), vec2<f32>(-264f, 460f), vec2<f32>(-680f, -755f), vec2<f32>(-432f, -1052f));

var<private> global1: array<i32, 13> = array<i32, 13>(11920i, -22908i, 2147483647i, 2147483647i, 14218i, 61468i, 2147483647i, 0i, 0i, i32(-2147483648), i32(-2147483648), 37648i, 2147483647i);

var<private> global2: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(61973u, 0u, 103039u), vec3<u32>(0u, 4294967295u, 28522u), vec3<u32>(0u, 28267u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 12761u, 1u), vec3<u32>(36435u, 3452u, 19903u), vec3<u32>(54832u, 66709u, 48851u), vec3<u32>(0u, 56323u, 27239u), vec3<u32>(4294967295u, 276u, 25873u), vec3<u32>(22532u, 4294967295u, 1u), vec3<u32>(65154u, 95342u, 82934u), vec3<u32>(24284u, 4294967295u, 1u), vec3<u32>(1u, 60732u, 4294967295u), vec3<u32>(742u, 4294967295u, 43588u), vec3<u32>(24106u, 0u, 0u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(75849u, 0u, 4294967295u), vec3<u32>(150u, 0u, 1u), vec3<u32>(0u, 0u, 79199u), vec3<u32>(1u, 1u, 0u));

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(vec2<u32>(4294967295u, 32018u)), Struct_2(58567u, 1385f, Struct_1(vec2<u32>(1u, 4294967295u)))), Struct_3(Struct_1(vec2<u32>(0u, 1u)), Struct_2(37511u, -448f, Struct_1(vec2<u32>(0u, 31303u)))), Struct_3(Struct_1(vec2<u32>(6692u, 671u)), Struct_2(1u, -425f, Struct_1(vec2<u32>(7157u, 25654u)))), Struct_3(Struct_1(vec2<u32>(4294967295u, 49611u)), Struct_2(1u, 209f, Struct_1(vec2<u32>(1u, 1u)))), Struct_3(Struct_1(vec2<u32>(4294967295u, 1u)), Struct_2(0u, -1961f, Struct_1(vec2<u32>(105625u, 4294967295u)))), Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_2(21121u, 1000f, Struct_1(vec2<u32>(0u, 1u)))), Struct_3(Struct_1(vec2<u32>(1u, 12293u)), Struct_2(98334u, 1890f, Struct_1(vec2<u32>(1u, 0u)))), Struct_3(Struct_1(vec2<u32>(39502u, 28402u)), Struct_2(17152u, -2246f, Struct_1(vec2<u32>(70242u, 51768u)))), Struct_3(Struct_1(vec2<u32>(49644u, 0u)), Struct_2(15884u, -517f, Struct_1(vec2<u32>(830u, 8409u)))), Struct_3(Struct_1(vec2<u32>(1u, 4294967295u)), Struct_2(0u, -1926f, Struct_1(vec2<u32>(4294967295u, 37169u)))), Struct_3(Struct_1(vec2<u32>(21695u, 1u)), Struct_2(1u, -491f, Struct_1(vec2<u32>(4294967295u, 0u)))), Struct_3(Struct_1(vec2<u32>(4294967295u, 0u)), Struct_2(4294967295u, -1000f, Struct_1(vec2<u32>(1968u, 0u)))), Struct_3(Struct_1(vec2<u32>(18185u, 29372u)), Struct_2(0u, 1063f, Struct_1(vec2<u32>(48918u, 24628u)))), Struct_3(Struct_1(vec2<u32>(0u, 0u)), Struct_2(27547u, 437f, Struct_1(vec2<u32>(796u, 1u)))), Struct_3(Struct_1(vec2<u32>(12178u, 23877u)), Struct_2(0u, -205f, Struct_1(vec2<u32>(40724u, 0u)))), Struct_3(Struct_1(vec2<u32>(41716u, 354u)), Struct_2(56215u, -300f, Struct_1(vec2<u32>(0u, 27446u)))), Struct_3(Struct_1(vec2<u32>(0u, 30609u)), Struct_2(15759u, 3043f, Struct_1(vec2<u32>(4294967295u, 0u)))), Struct_3(Struct_1(vec2<u32>(17896u, 3173u)), Struct_2(27516u, 649f, Struct_1(vec2<u32>(0u, 0u)))), Struct_3(Struct_1(vec2<u32>(0u, 4294967295u)), Struct_2(13931u, 1000f, Struct_1(vec2<u32>(29817u, 11115u)))), Struct_3(Struct_1(vec2<u32>(62299u, 44652u)), Struct_2(17361u, 324f, Struct_1(vec2<u32>(30314u, 0u)))), Struct_3(Struct_1(vec2<u32>(1u, 0u)), Struct_2(4294967295u, -1434f, Struct_1(vec2<u32>(4294967295u, 0u)))), Struct_3(Struct_1(vec2<u32>(66678u, 25891u)), Struct_2(4294967295u, 2017f, Struct_1(vec2<u32>(45368u, 59937u)))), Struct_3(Struct_1(vec2<u32>(1u, 4294967295u)), Struct_2(4551u, 489f, Struct_1(vec2<u32>(4294967295u, 0u)))), Struct_3(Struct_1(vec2<u32>(0u, 4294967295u)), Struct_2(1324u, 456f, Struct_1(vec2<u32>(25271u, 20134u)))), Struct_3(Struct_1(vec2<u32>(51649u, 26366u)), Struct_2(0u, -1048f, Struct_1(vec2<u32>(4064u, 4294967295u)))));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-arg_0.x), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(0u, 21685u), u_input.a)) | vec2<u32>(u_input.a.x, 1u | u_input.a.x)));
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 25u)];
    global3 = array<Struct_3, 25>();
    var var_2 = var_0;
    var var_3 = ~max(vec4<u32>(29486u, select(4294967295u, 4294967295u, false), 1u, 63877u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 5925u, u_input.b) | vec4<u32>(0u, var_0.a, 38017u, var_2.c.a.x), vec4<u32>(82242u, var_0.c.a.x, 0u, var_2.c.a.x) << (vec4<u32>(var_0.c.a.x, 13718u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))) ^ ~vec4<u32>(41454u, ~(~1u), countOneBits(var_0.c.a.x), abs(var_0.a));
    return 1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_3(Struct_1(~arg_0), Struct_2(max(_wgslsmith_mod_u32(~u_input.b, func_3(global0[_wgslsmith_index_u32(7268u, 15u)])), 4160u), -907f, Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0, vec2<u32>(u_input.a.x, 58637u), u_input.a), vec2<u32>(u_input.a.x, arg_0.x)))));
    var var_1 = Struct_1(var_0.a.a);
    let var_2 = Struct_4(var_0.b);
    global3 = array<Struct_3, 25>();
    let var_3 = var_0.a;
    return var_0.b.b;
}

fn func_1() -> bool {
    global2 = array<vec3<u32>, 23>();
    var var_0 = ~(-vec4<i32>(-1i, -2147483647i, 59400i, firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 13u)])) | vec4<i32>(~(-1i) | global1[_wgslsmith_index_u32(0u ^ u_input.b, 13u)], ~(-2147483647i), global1[_wgslsmith_index_u32(u_input.b, 13u)], firstLeadingBit(i32(-1i) * -19997i)));
    let var_1 = vec2<i32>(~_wgslsmith_div_i32(-(~(-14661i)), ~max(37392i, global1[_wgslsmith_index_u32(u_input.a.x, 13u)])), global1[_wgslsmith_index_u32(u_input.a.x, 13u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, _wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) * _wgslsmith_f_op_f32(func_2(vec2<u32>(4294967295u, 36780u), global2[_wgslsmith_index_u32(1u, 23u)]))))));
    return _wgslsmith_f_op_f32(sign(-1437f)) > _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec2_u32(u_input.a, ~(~u_input.a)), select(abs(global2[_wgslsmith_index_u32(1u, 23u)]), vec3<u32>(_wgslsmith_add_u32(u_input.b, 69395u), 1u, ~31276u), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!all(vec3<bool>(func_1(), true, select(true, true, false))), true, reverseBits(~(-15665i)) <= global1[_wgslsmith_index_u32(u_input.b, 13u)], true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-791f, -1368f)))))));
    global3 = array<Struct_3, 25>();
    var var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 25u)];
    global0 = array<vec2<f32>, 15>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -786f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)));
}

