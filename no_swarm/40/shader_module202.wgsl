struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(8773u, vec2<f32>(239f, -1000f), 71889u, 69447u, -115f), Struct_1(36835u, vec2<f32>(-210f, -496f), 0u, 0u, -1000f), Struct_1(10952u, vec2<f32>(-1979f, 1000f), 0u, 50116u, 822f), Struct_1(7024u, vec2<f32>(-855f, 985f), 4294967295u, 1u, -445f), Struct_1(35641u, vec2<f32>(-970f, -639f), 17593u, 49191u, -1290f), Struct_1(77645u, vec2<f32>(-1769f, -1000f), 1u, 40804u, -228f), Struct_1(58744u, vec2<f32>(323f, 232f), 2552u, 24128u, -636f), Struct_1(39398u, vec2<f32>(-846f, -149f), 4294967295u, 1u, -279f), Struct_1(24045u, vec2<f32>(-784f, 191f), 31511u, 1u, 257f), Struct_1(31845u, vec2<f32>(-587f, -685f), 1u, 111597u, -146f), Struct_1(22630u, vec2<f32>(-127f, 1495f), 76606u, 38605u, -1052f), Struct_1(0u, vec2<f32>(2278f, 1000f), 10901u, 1u, 1568f), Struct_1(0u, vec2<f32>(1634f, 2242f), 4294967295u, 4294967295u, -1000f), Struct_1(11823u, vec2<f32>(-1000f, 2474f), 15303u, 0u, 193f), Struct_1(36225u, vec2<f32>(1543f, -1574f), 2913u, 144422u, 175f), Struct_1(40068u, vec2<f32>(-1314f, -155f), 8098u, 1u, 277f), Struct_1(0u, vec2<f32>(-467f, -323f), 30899u, 1u, 237f), Struct_1(0u, vec2<f32>(-1164f, -787f), 0u, 3598u, -345f), Struct_1(0u, vec2<f32>(196f, 201f), 2652u, 2376u, -1003f), Struct_1(0u, vec2<f32>(1052f, -2153f), 53402u, 0u, -821f), Struct_1(54879u, vec2<f32>(1000f, -1377f), 0u, 1u, 490f), Struct_1(22630u, vec2<f32>(-271f, -617f), 4294967295u, 1u, -2615f), Struct_1(1u, vec2<f32>(-745f, -1310f), 9999u, 4294967295u, -699f), Struct_1(4294967295u, vec2<f32>(388f, -2697f), 0u, 1u, 1363f), Struct_1(25065u, vec2<f32>(-870f, -604f), 4294967295u, 1u, 396f));

var<private> global3: u32;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 31236u, 19673u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.e);
    global4 = ~(max(~_wgslsmith_mult_vec4_u32(vec4<u32>(global4.x, arg_0.a, global0.c, 19536u), vec4<u32>(arg_1.x, global0.c, arg_0.a, 5574u)), vec4<u32>(1u, 44053u, 0u, 44196u)) << ((countOneBits(vec4<u32>(u_input.d, 24680u, 83179u, u_input.c)) << (~(~vec4<u32>(80801u, 73622u, arg_0.d, global0.a)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 * 1332f), _wgslsmith_f_op_f32(max(arg_0.e, 454f)), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0.e, 1000f, 542f), vec3<f32>(466f, -1157f, 1696f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1892f, var_0)))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -244f, 261f) * vec3<f32>(global0.e, -2364f, global0.e)) + vec3<f32>(var_0, 1080f, arg_0.e)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, -512f, -1544f)))))));
    let var_2 = arg_0;
    let var_3 = var_1.x;
    return all(vec2<bool>(select(true, any(vec2<bool>(true, false)) | (20177u <= arg_0.c), true), !all(vec3<bool>(false, false, false)) == all(vec2<bool>(true, true))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.b)) + vec2<f32>(808f, _wgslsmith_f_op_f32(-2266f - _wgslsmith_f_op_f32(round(global0.e)))));
    var var_1 = global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~4294967295u, u_input.b, reverseBits(global4.x)) & ~17257u), 25u)];
    return ~(~(~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 31382u, global4.x, 4294967295u), vec4<u32>(4294967295u, 53359u, arg_0.d, 4294967295u), vec4<u32>(27601u, 7396u, 47927u, 67268u)), vec4<u32>(global4.x, 36099u, 64129u, 0u) ^ vec4<u32>(u_input.b, var_1.c, var_1.a, 12054u))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global3 = global0.c;
    let var_0 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), any(vec2<bool>(true, false))));
    var var_1 = !(!select(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, true, true, true), !vec4<bool>(var_0, true, var_0, var_0)), vec4<bool>(var_0 == var_0, !var_0, var_0, var_0), func_2(global1[_wgslsmith_index_u32(22363u, 9u)], vec3<u32>(36347u, 14467u, global4.x)) || true));
    var var_2 = global2[_wgslsmith_index_u32(u_input.c, 25u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(747f)) + global0.b.x);
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(4294967295u, 39116u, 0u, global0.d), vec4<u32>(61994u, 4294967295u, 51020u, 0u)), vec4<u32>(21533u, 4294967295u, var_2.c, 0u)) | abs(~vec4<u32>(8296u, 0u, global0.a, u_input.d)), vec4<u32>(var_2.a, u_input.b, _wgslsmith_mod_u32(32135u, 30337u), 65204u) << ((func_3(Struct_1(12702u, vec2<f32>(-901f, arg_0.x), 60853u, 4294967295u, arg_0.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(121u, 40199u, 22455u, 1u), vec4<u32>(u_input.d, global4.x, var_2.a, u_input.d))) % vec4<u32>(32u))), 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~2097u & global4.x) & global4.x;
    global3 = _wgslsmith_div_u32(global0.d, _wgslsmith_dot_vec3_u32(global4.yzz, ~(~vec3<u32>(global4.x, u_input.d, global4.x))));
    global1 = array<Struct_1, 9>();
    let var_1 = func_1(global0.b);
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_add_u32(max(49707u, ~u_input.d), 53106u), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1655f, _wgslsmith_div_f32(global0.b.x, global0.e), 845f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.e, global0.b.x, var_1.b.x)))))), 24018u);
}

