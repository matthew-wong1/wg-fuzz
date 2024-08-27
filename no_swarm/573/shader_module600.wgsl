struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 34556u, 1u);

var<private> global1: array<vec4<f32>, 21>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<i32>(2147483647i, -3612i, i32(-2147483648), 13969i), Struct_1(vec4<u32>(79736u, 72735u, 44247u, 1u), 923f, vec2<bool>(true, false)), vec4<f32>(-292f, -1455f, 1000f, -1000f), true), Struct_2(vec4<i32>(-61512i, i32(-2147483648), 1i, 9368i), Struct_1(vec4<u32>(31805u, 50368u, 23852u, 20567u), 172f, vec2<bool>(false, true)), vec4<f32>(-1501f, -821f, 1716f, 699f), true), Struct_2(vec4<i32>(1i, 38374i, i32(-2147483648), 24773i), Struct_1(vec4<u32>(15304u, 0u, 0u, 57112u), -228f, vec2<bool>(true, true)), vec4<f32>(756f, -289f, 484f, 146f), false), Struct_2(vec4<i32>(1i, 3747i, 43289i, 26872i), Struct_1(vec4<u32>(95030u, 22118u, 89506u, 35940u), -493f, vec2<bool>(true, false)), vec4<f32>(1118f, -210f, 658f, 1999f), true), Struct_2(vec4<i32>(-9574i, 4844i, i32(-2147483648), -16404i), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 1u), 111f, vec2<bool>(true, false)), vec4<f32>(-271f, -1512f, 662f, -1833f), true), Struct_2(vec4<i32>(37746i, -58671i, -1i, -20339i), Struct_1(vec4<u32>(13322u, 127756u, 76244u, 4294967295u), -295f, vec2<bool>(false, false)), vec4<f32>(-177f, -2893f, -232f, 704f), true), Struct_2(vec4<i32>(-19594i, i32(-2147483648), -47642i, 1i), Struct_1(vec4<u32>(0u, 41974u, 4294967295u, 4294967295u), -499f, vec2<bool>(true, true)), vec4<f32>(-818f, 186f, -839f, -224f), true), Struct_2(vec4<i32>(2147483647i, 8464i, i32(-2147483648), -51105i), Struct_1(vec4<u32>(4294967295u, 1u, 47334u, 0u), 828f, vec2<bool>(false, true)), vec4<f32>(122f, 2478f, 287f, 1082f), false), Struct_2(vec4<i32>(41530i, 33512i, -1i, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 49493u, 1u, 7806u), -125f, vec2<bool>(false, false)), vec4<f32>(1396f, -1351f, -538f, 1000f), true), Struct_2(vec4<i32>(-1i, 32939i, 2147483647i, -6320i), Struct_1(vec4<u32>(1u, 1u, 18693u, 60308u), -722f, vec2<bool>(true, true)), vec4<f32>(-669f, -585f, -562f, 125f), true), Struct_2(vec4<i32>(i32(-2147483648), 8065i, 2147483647i, 13049i), Struct_1(vec4<u32>(0u, 54440u, 1u, 16194u), -147f, vec2<bool>(true, true)), vec4<f32>(1104f, 105f, 144f, 1023f), false), Struct_2(vec4<i32>(-3654i, 57514i, 1i, 7904i), Struct_1(vec4<u32>(15356u, 37982u, 24176u, 93487u), 155f, vec2<bool>(false, true)), vec4<f32>(1000f, 243f, -608f, 1369f), false), Struct_2(vec4<i32>(0i, -32318i, 2147483647i, -49463i), Struct_1(vec4<u32>(0u, 56743u, 66959u, 4294967295u), 801f, vec2<bool>(false, true)), vec4<f32>(405f, 199f, -1000f, -1378f), true), Struct_2(vec4<i32>(2147483647i, -5964i, 8902i, 2147483647i), Struct_1(vec4<u32>(34128u, 0u, 0u, 69227u), 783f, vec2<bool>(true, true)), vec4<f32>(808f, 654f, 1042f, 1647f), false), Struct_2(vec4<i32>(0i, 26329i, i32(-2147483648), 13008i), Struct_1(vec4<u32>(4294967295u, 14098u, 1u, 1u), -1377f, vec2<bool>(false, true)), vec4<f32>(1529f, 2808f, -1700f, 1118f), true), Struct_2(vec4<i32>(1i, 19829i, -1i, 8002i), Struct_1(vec4<u32>(0u, 8843u, 63151u, 15244u), -104f, vec2<bool>(false, false)), vec4<f32>(-1221f, -1363f, 582f, 595f), true), Struct_2(vec4<i32>(2147483647i, 0i, 2147483647i, 9656i), Struct_1(vec4<u32>(64528u, 6737u, 0u, 95001u), 121f, vec2<bool>(true, false)), vec4<f32>(-1000f, -1843f, 882f, -311f), false), Struct_2(vec4<i32>(2147483647i, 2147483647i, 1i, i32(-2147483648)), Struct_1(vec4<u32>(0u, 27317u, 4294967295u, 4294967295u), 1000f, vec2<bool>(true, false)), vec4<f32>(616f, -628f, 2627f, -736f), true), Struct_2(vec4<i32>(-22671i, -35051i, 9168i, 10804i), Struct_1(vec4<u32>(1u, 54528u, 0u, 10447u), 471f, vec2<bool>(false, true)), vec4<f32>(-1203f, -141f, 1000f, 1000f), true), Struct_2(vec4<i32>(1187i, 21279i, -33656i, 0i), Struct_1(vec4<u32>(1u, 1u, 10767u, 26582u), 1100f, vec2<bool>(true, true)), vec4<f32>(-300f, -1790f, 373f, -330f), true), Struct_2(vec4<i32>(-23743i, 2147483647i, 0i, 0i), Struct_1(vec4<u32>(4294967295u, 18447u, 0u, 1u), 162f, vec2<bool>(true, true)), vec4<f32>(1656f, -1033f, -2610f, -497f), false), Struct_2(vec4<i32>(3343i, -15496i, 24544i, 38282i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 53373u), 786f, vec2<bool>(true, false)), vec4<f32>(1285f, -245f, 1000f, 630f), true), Struct_2(vec4<i32>(i32(-2147483648), 0i, 0i, -1i), Struct_1(vec4<u32>(99601u, 1u, 49390u, 4294967295u), 519f, vec2<bool>(false, false)), vec4<f32>(-132f, 2072f, -680f, -1000f), true), Struct_2(vec4<i32>(1i, -12908i, 52997i, 0i), Struct_1(vec4<u32>(101441u, 4294967295u, 4294967295u, 14066u), 660f, vec2<bool>(false, true)), vec4<f32>(-277f, -915f, -442f, 452f), false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_4) -> u32 {
    global2 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_div_u32(~abs(_wgslsmith_sub_u32(u_input.a, arg_2.a.a.x)), ~12715u) > abs(global0.x);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b.x) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.b.x, -1620f, true || arg_2.a.c.x))));
    let var_2 = arg_2.b;
    global1 = array<vec4<f32>, 21>();
    return _wgslsmith_div_u32(global0.x, ~(~127496u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    global0 = arg_1.b.a.zyy;
    global1 = array<vec4<f32>, 21>();
    var var_0 = ~(i32(-1i) * -reverseBits(_wgslsmith_div_i32(-1i, arg_1.a.x)));
    var var_1 = Struct_4(arg_1.b, -2147483647i);
    let var_2 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.x, abs(~6409u), 22139u), _wgslsmith_mod_u32(22890u, var_1.a.a.x))), 24u)];
    return global2[_wgslsmith_index_u32(global0.x, 24u)];
}

fn func_1() -> vec2<f32> {
    let var_0 = select(vec3<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, global0.x, u_input.a), (vec3<u32>(global0.x, u_input.a, 4294967295u) | vec3<u32>(1u, 1u, global0.x)) >> (min(vec3<u32>(1u, 52088u, 72545u), vec3<u32>(u_input.a, global0.x, 4294967295u)) % vec3<u32>(32u))), 101365u), ~(((vec3<u32>(u_input.a, u_input.a, 32104u) & vec3<u32>(u_input.a, global0.x, u_input.a)) | (vec3<u32>(4294967295u, 43171u, 43730u) ^ vec3<u32>(1u, u_input.a, global0.x))) & vec3<u32>(~u_input.a, max(67544u, 0u), 59632u)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), select(global0.x >= global0.x, true, true)), select(vec3<bool>(select(false, true, false), true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), all(vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_dot_vec2_u32(abs(~global0.xy), _wgslsmith_mod_vec2_u32(var_0.yz, vec2<u32>(1u, _wgslsmith_sub_u32(global0.x, 0u)))) & _wgslsmith_add_u32(global0.x, 13382u);
    let var_2 = (min(~_wgslsmith_dot_vec2_i32(vec2<i32>(-10244i, -24383i), vec2<i32>(-1i, 69287i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-57980i, 21279i) << (global0.xy % vec2<u32>(32u)), vec2<i32>(44396i, 7930i))) >= 1i) || true;
    var var_3 = func_3(~vec4<u32>(4294967295u, min(4294967295u, 13715u), ~func_2(Struct_3(vec2<i32>(8030i, 2147483647i), vec4<f32>(973f, -891f, 219f, -784f)), vec2<f32>(-707f, -450f), Struct_4(Struct_1(vec4<u32>(var_0.x, u_input.a, global0.x, var_0.x), 1472f, vec2<bool>(true, var_2)), 50908i)), var_0.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(var_0), ~abs(var_0)) | _wgslsmith_clamp_u32(~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 8383u, var_0.x), ~vec4<u32>(u_input.a, 58189u, global0.x, u_input.a)), 41081u), 24u)]);
    let var_4 = func_3(vec4<u32>(118857u, u_input.a, func_2(Struct_3(-vec2<i32>(var_3.a.x, var_3.a.x), vec4<f32>(var_3.b.b, -244f, var_3.b.b, 303f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_3.c.wy)) * _wgslsmith_f_op_vec2_f32(-var_3.c.zx)), Struct_4(Struct_1(var_3.b.a, 203f, var_3.b.c), var_3.a.x)), var_3.b.a.x), func_3(max(~(vec4<u32>(0u, 37434u, var_3.b.a.x, var_3.b.a.x) << (var_3.b.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(global0.x, 35761u), 27845u, ~4294967295u, ~71854u)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(firstTrailingBit(1u), global0.x), var_3.b.a.x), 24u)])).b;
    return _wgslsmith_f_op_vec2_f32(var_3.c.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_3.c.zz, vec2<f32>(790f, var_4.b)), _wgslsmith_f_op_vec2_f32(max(var_3.c.yz, var_3.c.zz))))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> StorageBuffer {
    let var_0 = !arg_3.x;
    var var_1 = -_wgslsmith_div_i32(arg_0, 31400i);
    var var_2 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-352f - _wgslsmith_f_op_f32(1103f * _wgslsmith_f_op_f32(exp2(func_3(vec4<u32>(global0.x, u_input.a, 4764u, global0.x), global2[_wgslsmith_index_u32(0u, 24u)]).c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + -727f)));
    let var_3 = global0.x;
    let var_4 = _wgslsmith_f_op_f32(step(702f, var_2.x));
    return StorageBuffer(arg_1.yx, 22336u, firstLeadingBit(1u), 38318i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(~reverseBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -38799i), vec2<i32>(-28658i, 0i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2605f, 1256f, -145f) + vec3<f32>(-103f, -791f, -669f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(135f, -214f, 1979f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
}

