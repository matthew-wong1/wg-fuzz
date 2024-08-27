struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 3>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-979f, 685f, -931f), vec3<u32>(0u, 1u, 48800u), 34769i, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(472f, -278f, 1163f), vec3<u32>(442u, 47747u, 31260u), 2147483647i, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-976f, 171f, 790f), vec3<u32>(4294967295u, 30666u, 0u), i32(-2147483648), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(1000f, 1591f, -440f), vec3<u32>(22616u, 22375u, 83616u), 1i, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(313f, -1000f, -539f), vec3<u32>(31702u, 4294967295u, 17969u), 31569i, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(2036f, 215f, -842f), vec3<u32>(4294967295u, 4294967295u, 68264u), 2147483647i, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-446f, -1485f, -822f), vec3<u32>(21651u, 0u, 1u), -1i, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1150f, 182f, 608f), vec3<u32>(59388u, 1u, 29578u), 0i, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-669f, 513f, 147f), vec3<u32>(12571u, 1u, 81722u), 0i, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-899f, -342f, 1334f), vec3<u32>(4294967295u, 0u, 14000u), 1i, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(488f, -1171f, 1447f), vec3<u32>(106547u, 4294967295u, 1u), -1i, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1000f, -997f, -650f), vec3<u32>(0u, 2643u, 1752u), 30900i, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(170f, -596f, -350f), vec3<u32>(4294967295u, 11971u, 0u), -43979i, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-439f, 1181f, -1973f), vec3<u32>(16177u, 88680u, 19068u), 2147483647i, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(337f, 1865f, 167f), vec3<u32>(84110u, 20207u, 4294967295u), -12932i, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(324f, 479f, -308f), vec3<u32>(12295u, 2154u, 1u), -1i, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-246f, -324f, -1000f), vec3<u32>(0u, 52524u, 36379u), -1i, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-538f, 937f, 170f), vec3<u32>(19901u, 14084u, 36608u), -16235i, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1350f, -427f, 735f), vec3<u32>(1u, 29168u, 21118u), -24771i, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1368f, 460f, -1322f), vec3<u32>(7774u, 59942u, 57734u), 1i, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1414f, 227f, -1000f), vec3<u32>(2889u, 27794u, 1u), 30916i, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1757f, 1759f, 568f), vec3<u32>(64435u, 1u, 14746u), 0i, vec3<bool>(true, false, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> bool {
    global0 = true;
    var var_0 = arg_2.a.a.x;
    var var_1 = arg_2;
    var var_2 = vec4<u32>(arg_2.a.c.x, 22421u, var_1.a.c.x, _wgslsmith_div_u32(firstLeadingBit((var_1.a.c.x & arg_2.a.c.x) | arg_2.a.c.x), 4294967295u));
    global1 = array<i32, 3>();
    return select(true, false, all(vec4<bool>(all(!vec4<bool>(true, true, true, arg_2.b)), true, !any(vec4<bool>(true, false, var_1.a.a.x, false)), all(!arg_2.a.e))));
}

fn func_2() -> vec3<bool> {
    var var_0 = true;
    var var_1 = select(vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false)) | all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), false), !(!vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false)))), (69582u << (0u % 32u)) == ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 48217u, 21939u, 4294967295u), vec4<u32>(37753u, 1u, 55016u, 4294967295u))));
    let var_2 = ~vec3<u32>(~1u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(56715u, 5291u, 58973u)), ~vec3<u32>(4294967295u, 0u, 39292u)) % 32u), ~39200u, reverseBits(1u));
    global2 = array<Struct_1, 22>();
    let var_3 = any(vec2<bool>(false, func_3(-387f, _wgslsmith_f_op_f32(f32(-1f) * -594f), Struct_2(global2[_wgslsmith_index_u32(var_2.x, 22u)], var_1.x, vec3<f32>(-1194f, -1624f, 1948f))) | !(var_1.x | var_1.x)));
    return !var_1.xwy;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = vec4<bool>(false, true, !(~arg_1 == (arg_1 | arg_1)) != true, !(!all(func_2())));
    global0 = true;
    global2 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) - _wgslsmith_f_op_f32(min(-211f, 1517f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1223f)), _wgslsmith_f_op_f32(1538f * -1000f))))));
    global2 = array<Struct_1, 22>();
    return Struct_2(global2[_wgslsmith_index_u32(arg_1, 22u)], all(var_0.wwx), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-892f))), -117f, -838f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2394f, var_1, -606f), vec3<f32>(-620f, var_1, var_1))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 815f, 110f) + vec3<f32>(var_1, var_1, var_1))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = reverseBits(max(~(~(~arg_0.a.a.c.x)), arg_0.a.a.c.x));
    global2 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.b.x, 1839f)) - _wgslsmith_f_op_vec2_f32(arg_0.a.a.b.zz + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.a.a.b.zz + arg_0.a.a.b.xy))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, -1341f, func_1(~(~vec3<i32>(-2147483647i, arg_0.a.a.d, u_input.a)), ~1u).c.x), _wgslsmith_f_op_vec3_f32(arg_0.a.c + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(-2137f)), _wgslsmith_f_op_f32(f32(-1f) * -431f), arg_0.a.a.b.x))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1387f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-927f - _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.b.x * -153f))))));
    return func_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(~31776u, 3u)], min(26307i, arg_0.a.a.d)), vec2<i32>(_wgslsmith_sub_i32(1i, arg_1.x), -2147483647i)), arg_0.a.a.d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 0u, 58273u, 59255u)), countOneBits(vec4<u32>(1u, 26354u, 4294967295u, 32568u))) >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.a.a.c.x, 4294967295u), abs(1u)) % 32u), 3u)]), arg_0.a.a.c.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-35456i, global1[_wgslsmith_index_u32(1u, 3u)], 10847i), vec3<i32>(587i, global1[_wgslsmith_index_u32(22573u, 3u)], u_input.a)) & vec3<i32>(30866i, u_input.a, 4396i), 1u)), ~(-vec2<i32>(9399i, u_input.a)));
    global2 = array<Struct_1, 22>();
    let var_1 = vec4<f32>(380f, _wgslsmith_f_op_f32(898f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * var_0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(-var_0.b.x))))), _wgslsmith_f_op_f32(-var_0.b.x));
    var var_2 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_1.yxz, vec3<f32>(309f, var_1.x, var_0.b.x), var_0.a.x)), vec3<f32>(var_1.x, 1000f, -180f), func_4(Struct_3(Struct_2(global2[_wgslsmith_index_u32(var_0.c.x, 22u)], false, vec3<f32>(-1000f, var_1.x, 622f))), vec2<i32>(22944i, -7622i)).e)), _wgslsmith_div_vec3_f32(var_0.b, var_0.b)), vec3<f32>(-1581f, -992f, func_4(Struct_3(Struct_2(global2[_wgslsmith_index_u32(91560u, 22u)], true, vec3<f32>(-357f, var_1.x, -558f))), ~vec2<i32>(global1[_wgslsmith_index_u32(var_0.c.x, 3u)], -17816i)).b.x)), var_1, true, var_0.a);
    var var_3 = vec4<i32>(1i, ~_wgslsmith_mult_i32(-17001i, global1[_wgslsmith_index_u32(var_0.c.x, 3u)]), 2147483647i, -5624i);
    var var_4 = _wgslsmith_mult_vec3_u32(var_0.c, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(min(0u, 1u));
}

