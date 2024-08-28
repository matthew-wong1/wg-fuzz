struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_3(vec4<f32>(-935f, 666f, 121f, 269f), 4294967295u, 44112i), Struct_3(vec4<f32>(-277f, 742f, 856f, 2299f), 1u, -12286i)), Struct_4(Struct_3(vec4<f32>(-122f, 1794f, 822f, 1314f), 64494u, -7400i), Struct_3(vec4<f32>(-1261f, 321f, 1000f, 372f), 4294967295u, -36049i)), Struct_4(Struct_3(vec4<f32>(850f, -615f, -221f, 1191f), 4294967295u, 30027i), Struct_3(vec4<f32>(-990f, 706f, -1395f, 339f), 4294967295u, 23466i)), Struct_4(Struct_3(vec4<f32>(177f, -670f, -407f, -743f), 1u, -1i), Struct_3(vec4<f32>(1036f, 775f, 1000f, 381f), 20418u, 5792i)), Struct_4(Struct_3(vec4<f32>(1438f, -1000f, -1035f, 1144f), 4294967295u, -1181i), Struct_3(vec4<f32>(698f, 200f, 1000f, 939f), 1u, 25717i)), Struct_4(Struct_3(vec4<f32>(-983f, 631f, 1264f, -1506f), 33352u, -12918i), Struct_3(vec4<f32>(1268f, 699f, -329f, -198f), 9857u, -27481i)), Struct_4(Struct_3(vec4<f32>(-974f, -810f, -1135f, 349f), 0u, 2789i), Struct_3(vec4<f32>(449f, 126f, 1201f, 1362f), 4294967295u, 44052i)), Struct_4(Struct_3(vec4<f32>(289f, -181f, -463f, 1000f), 1u, 1i), Struct_3(vec4<f32>(-715f, -162f, -332f, 899f), 1u, 49067i)), Struct_4(Struct_3(vec4<f32>(-1099f, -629f, -1616f, 213f), 0u, -73886i), Struct_3(vec4<f32>(-2104f, 269f, 484f, 123f), 82696u, 53772i)), Struct_4(Struct_3(vec4<f32>(1181f, 608f, -1664f, 737f), 1u, -1i), Struct_3(vec4<f32>(619f, -864f, 1722f, 668f), 1u, -1i)), Struct_4(Struct_3(vec4<f32>(550f, -563f, -668f, -2018f), 93115u, 0i), Struct_3(vec4<f32>(1333f, -1239f, -717f, 1931f), 4440u, 0i)), Struct_4(Struct_3(vec4<f32>(-370f, 2414f, -1039f, 1136f), 1u, 1i), Struct_3(vec4<f32>(-727f, -412f, 1000f, -1457f), 53239u, -15559i)), Struct_4(Struct_3(vec4<f32>(1018f, 483f, 1464f, -769f), 50904u, 0i), Struct_3(vec4<f32>(-1822f, -859f, -1000f, -788f), 4294967295u, -30718i)), Struct_4(Struct_3(vec4<f32>(-1197f, 642f, -573f, 889f), 4294967295u, -48905i), Struct_3(vec4<f32>(1000f, -366f, -471f, 600f), 68496u, -114237i)), Struct_4(Struct_3(vec4<f32>(641f, 916f, 1609f, -335f), 9568u, -39246i), Struct_3(vec4<f32>(108f, -285f, 1000f, 836f), 26498u, 1i)), Struct_4(Struct_3(vec4<f32>(1658f, 779f, -1477f, 1027f), 14598u, 39585i), Struct_3(vec4<f32>(1000f, 869f, -967f, 475f), 47066u, 1i)), Struct_4(Struct_3(vec4<f32>(1763f, 1283f, 1000f, -313f), 4294967295u, 2147483647i), Struct_3(vec4<f32>(582f, -510f, -342f, -1128f), 4294967295u, -47332i)), Struct_4(Struct_3(vec4<f32>(2604f, 254f, 599f, 1601f), 1u, i32(-2147483648)), Struct_3(vec4<f32>(-1522f, -197f, 959f, 466f), 3038u, 2147483647i)), Struct_4(Struct_3(vec4<f32>(1322f, 704f, 884f, 1565f), 33606u, -1i), Struct_3(vec4<f32>(-452f, 1273f, -663f, -268f), 10390u, -3503i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec4<i32> {
    let var_0 = arg_0;
    var var_1 = var_0.a.a.d.yy;
    global0 = array<Struct_4, 19>();
    global0 = array<Struct_4, 19>();
    global0 = array<Struct_4, 19>();
    return ~vec4<i32>(~(-2147483647i), -(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) | arg_1.a.x), ~var_0.a.a.c, ~arg_0.a.a.c);
}

fn func_2(arg_0: vec4<f32>) -> vec4<f32> {
    var var_0 = 1u;
    var_0 = ~55757u >> (1u % 32u);
    let var_1 = Struct_5(Struct_2(Struct_1(vec2<i32>(u_input.a.x, 36459i), 1u, select(select(u_input.a.x, -1i, false), 7882i, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)))));
    var var_2 = 63909i;
    var var_3 = all(!var_1.a.a.d) | true;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0))), vec4<f32>(515f, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(abs(686f))));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    global0 = array<Struct_4, 19>();
    global0 = array<Struct_4, 19>();
    let var_0 = vec3<f32>(789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f))))));
    var var_1 = 0u;
    let var_2 = global0[_wgslsmith_index_u32(~arg_2.b, 19u)];
    return !(!any(vec3<bool>(all(vec3<bool>(true, arg_2.d.x, false)), false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 524f, 317f, -1000f), vec4<f32>(934f, 611f, -182f, 232f), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(918f, -917f, -420f, 1000f) + vec4<f32>(-924f, 795f, -621f, 1142f))) * vec4<f32>(206f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -338f, -494f)), ~1u, ~_wgslsmith_dot_vec4_i32(func_1(Struct_5(Struct_2(Struct_1(vec2<i32>(u_input.a.x, 0i), 1u, u_input.a.x, vec3<bool>(false, false, false)))), Struct_1(u_input.a.xx, 49917u, -22663i, vec3<bool>(false, false, true)), 2147483647i, -142f), u_input.a)), Struct_3(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2384f, 264f, 455f, 1000f)))), 1u, u_input.a.x));
    let var_1 = false;
    let var_2 = vec2<u32>(~var_0.b.b, ~max(_wgslsmith_sub_u32(select(var_0.b.b, 56235u, var_1), ~var_0.b.b), 30104u ^ countOneBits(var_0.a.b)));
    var var_3 = !(!func_3(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, var_0.b.b), 1u), abs(vec3<u32>(var_0.a.b, var_2.x, var_0.a.b) & vec3<u32>(var_0.a.b, var_0.a.b, 25806u)), Struct_1(vec2<i32>(-25076i, u_input.a.x) >> (vec2<u32>(var_0.a.b, 12309u) % vec2<u32>(32u)), 1u & var_0.a.b, abs(u_input.a.x), !vec3<bool>(var_1, false, false))));
    global0 = array<Struct_4, 19>();
    global0 = array<Struct_4, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(var_2.x, abs(var_0.b.b & var_0.b.b)), _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.zyw, u_input.a.wyy), -43906i), vec2<i32>(33192i, -50220i)), var_0.b.a, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(44692u, 4294967295u, 0u, var_0.a.b), vec4<u32>(3877u, 4355u, var_0.a.b, var_2.x) << (vec4<u32>(1u, 4294967295u, var_2.x, 48986u) % vec4<u32>(32u))), abs(var_0.b.b)) | var_2);
}

