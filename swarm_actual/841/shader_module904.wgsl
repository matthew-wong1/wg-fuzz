struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(899f, 361f, 1094f, -1317f), vec4<f32>(-853f, -1000f, 219f, 1109f), vec4<f32>(-839f, -827f, 1727f, 317f), vec4<f32>(766f, -402f, 2464f, -407f), vec4<f32>(285f, 140f, 1000f, -313f), vec4<f32>(1281f, -689f, 3203f, 1492f), vec4<f32>(859f, -1693f, -200f, -1183f), vec4<f32>(1564f, 432f, -469f, 523f), vec4<f32>(-819f, 221f, -1686f, 134f), vec4<f32>(836f, -2030f, -1484f, -1000f), vec4<f32>(-1000f, 730f, 1258f, -1478f), vec4<f32>(-295f, 140f, -113f, 147f), vec4<f32>(-370f, -1069f, 656f, -1685f), vec4<f32>(729f, 565f, -1116f, 697f), vec4<f32>(-747f, -929f, -663f, -278f), vec4<f32>(241f, -826f, 1063f, -2888f), vec4<f32>(-168f, 541f, -383f, 933f), vec4<f32>(-466f, -1838f, -1000f, -997f), vec4<f32>(-835f, 941f, 201f, 289f), vec4<f32>(833f, -2534f, 513f, -900f), vec4<f32>(-1000f, -1622f, 434f, -930f), vec4<f32>(486f, -1988f, -918f, 965f), vec4<f32>(-1000f, -518f, 363f, 1777f), vec4<f32>(-296f, -391f, 750f, -537f), vec4<f32>(-1296f, -208f, 277f, -874f));

var<private> global2: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(26241u, 21u)];
    global1 = array<vec4<f32>, 25>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 416f)));
    var var_2 = _wgslsmith_clamp_u32(1u, var_0.a.x, var_0.b.x);
    var var_3 = (arg_0.x & true) | true;
    return global2.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(u_input.e.x, (u_input.d << ((1u & _wgslsmith_clamp_u32(u_input.a, 1u, global2.x)) % 32u)) >> (func_3(vec2<bool>(false, true)) % 32u));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_div_f32(391f, -657f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(step(arg_0, -1000f))))), vec2<bool>(true | (_wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(trunc(-1356f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-345f + arg_0))) >= arg_0), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, countOneBits(u_input.b), _wgslsmith_mult_u32(20231u, global2.x)), ~global2.zzz), global0[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), arg_0))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    global2 = vec4<u32>(global2.x, u_input.b, ~(~(~global2.x)), ~_wgslsmith_sub_u32(arg_1.c.x, ~(~u_input.b)));
    global2 = ~_wgslsmith_sub_vec4_u32(firstTrailingBit(min(select(arg_1.d.b, arg_1.d.b, vec4<bool>(false, true, false, false)), ~vec4<u32>(23256u, 8154u, global2.x, 31496u))), vec4<u32>(~u_input.a ^ u_input.a, min(arg_1.d.a.x | global2.x, arg_1.c.x), firstTrailingBit(_wgslsmith_div_u32(2294u, 14483u)), 80483u));
    var var_0 = _wgslsmith_f_op_f32(-arg_1.e);
    var var_1 = 1u;
    var var_2 = select(firstTrailingBit(u_input.d), u_input.d, any(!select(arg_1.d.c.zx, select(vec2<bool>(arg_1.b.x, true), arg_1.d.c.yy, vec2<bool>(false, false)), arg_1.d.c.x)));
    return ~(22882u ^ reverseBits(abs(~arg_1.c.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>) -> vec3<u32> {
    var var_0 = -vec2<i32>(_wgslsmith_mod_i32(~22450i, _wgslsmith_mult_i32(u_input.e.x, u_input.d)), 1i) & (vec2<i32>(0i, -1i) << (vec2<u32>(u_input.c >> (~31025u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(5764u, global2.x, 20267u, global2.x), select(vec4<u32>(global2.x, 47765u, 39535u, global2.x), vec4<u32>(u_input.a, 20222u, 6515u, 1u), arg_1.x))) % vec2<u32>(32u)));
    var var_1 = ~max(2341u, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, -1626f, 552f)), func_2(_wgslsmith_f_op_f32(arg_0.x + 306f))));
    global0 = array<Struct_1, 21>();
    let var_2 = -639f;
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 21u)];
    return vec3<u32>(u_input.a, 13175u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 77567u), global2.zxy)) & max(func_1(global1[_wgslsmith_index_u32(global2.x, 25u)], vec3<bool>(true, true, true)), vec3<u32>(24550u, u_input.c ^ 13087u, func_2(2034f).d.a.x))) << (vec3<u32>(~1u, ~u_input.a, global2.x) % vec3<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(1u >> (1u % 32u)), ~_wgslsmith_add_u32(u_input.a, u_input.c) | (abs(global2.x) >> (20689u % 32u)), ~global2.x) | reverseBits(_wgslsmith_mod_u32(global2.x, var_0.x)), 21u)];
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~var_0.x, ~(~14840u)) | ~var_1.b.x, select(var_0.x, var_1.b.x, var_1.c.x));
}

