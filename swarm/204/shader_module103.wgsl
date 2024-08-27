struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1234f, 440f, -214f, 739f), vec3<bool>(true, true, false), vec4<bool>(false, false, true, false), vec2<f32>(-405f, -1508f));

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<f32>(632f, -641f, -599f, -896f), vec3<bool>(false, true, true), vec4<bool>(true, false, false, false), vec2<f32>(1000f, -107f)), Struct_1(vec4<f32>(647f, 2037f, -2096f, -1940f), vec3<bool>(false, true, true), vec4<bool>(true, false, false, false), vec2<f32>(1000f, 1000f)), Struct_1(vec4<f32>(-2085f, 141f, -1271f, -1000f), vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec2<f32>(-1012f, -1239f)), Struct_1(vec4<f32>(-733f, 186f, -231f, -594f), vec3<bool>(false, true, true), vec4<bool>(true, false, true, true), vec2<f32>(-375f, 1000f)), Struct_1(vec4<f32>(1577f, 1000f, -563f, 1035f), vec3<bool>(false, false, false), vec4<bool>(true, false, true, false), vec2<f32>(1000f, 1515f)), Struct_1(vec4<f32>(1295f, -2522f, -948f, -2426f), vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec2<f32>(-2721f, -791f)), Struct_1(vec4<f32>(1048f, 1455f, -1630f, -281f), vec3<bool>(true, false, true), vec4<bool>(true, false, true, true), vec2<f32>(1219f, 264f)), Struct_1(vec4<f32>(-1157f, 127f, -1496f, 2834f), vec3<bool>(false, false, true), vec4<bool>(false, false, false, true), vec2<f32>(1597f, 182f)), Struct_1(vec4<f32>(701f, 782f, -389f, -466f), vec3<bool>(false, true, true), vec4<bool>(false, true, true, true), vec2<f32>(-450f, -283f)), Struct_1(vec4<f32>(321f, -1206f, 484f, -592f), vec3<bool>(true, false, false), vec4<bool>(true, false, true, false), vec2<f32>(985f, 1753f)), Struct_1(vec4<f32>(-126f, 848f, -477f, 327f), vec3<bool>(true, true, true), vec4<bool>(true, true, false, false), vec2<f32>(638f, 187f)), Struct_1(vec4<f32>(2224f, -182f, -383f, -1505f), vec3<bool>(true, false, true), vec4<bool>(false, false, false, true), vec2<f32>(-419f, 930f)), Struct_1(vec4<f32>(-127f, 671f, -347f, 488f), vec3<bool>(false, true, false), vec4<bool>(false, true, false, false), vec2<f32>(-1280f, 785f)), Struct_1(vec4<f32>(-180f, -348f, 208f, 1189f), vec3<bool>(false, false, false), vec4<bool>(true, true, true, true), vec2<f32>(-938f, 558f)), Struct_1(vec4<f32>(573f, -1293f, 1565f, -557f), vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), vec2<f32>(1293f, 1187f)), Struct_1(vec4<f32>(301f, 1586f, -1230f, -861f), vec3<bool>(true, false, true), vec4<bool>(false, true, true, false), vec2<f32>(-522f, 1322f)), Struct_1(vec4<f32>(-1000f, -1262f, 1000f, 879f), vec3<bool>(false, true, true), vec4<bool>(false, true, false, true), vec2<f32>(1466f, -649f)), Struct_1(vec4<f32>(-526f, 1163f, 1362f, 297f), vec3<bool>(false, false, false), vec4<bool>(false, false, false, false), vec2<f32>(-653f, 496f)), Struct_1(vec4<f32>(-452f, 1000f, 2410f, 610f), vec3<bool>(true, false, false), vec4<bool>(false, false, false, true), vec2<f32>(316f, 1016f)), Struct_1(vec4<f32>(924f, 261f, -676f, -1018f), vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), vec2<f32>(123f, -1200f)), Struct_1(vec4<f32>(-283f, -693f, -683f, 174f), vec3<bool>(true, true, false), vec4<bool>(false, true, true, true), vec2<f32>(-929f, 957f)), Struct_1(vec4<f32>(-1000f, 1000f, -1643f, 709f), vec3<bool>(false, true, false), vec4<bool>(true, false, true, true), vec2<f32>(1000f, -616f)), Struct_1(vec4<f32>(-179f, 888f, -1768f, 818f), vec3<bool>(true, false, false), vec4<bool>(true, false, true, false), vec2<f32>(-380f, -1000f)), Struct_1(vec4<f32>(-309f, 1838f, 1000f, -1339f), vec3<bool>(true, true, false), vec4<bool>(false, true, false, false), vec2<f32>(-1403f, -1030f)), Struct_1(vec4<f32>(561f, -872f, 952f, -627f), vec3<bool>(true, false, false), vec4<bool>(false, false, true, false), vec2<f32>(-333f, 3659f)));

var<private> global3: array<vec2<u32>, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = global0.d.x;
    var var_1 = 24726u;
    return u_input.a <= _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 63985u), ~vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), firstLeadingBit(vec4<u32>(0u, u_input.a, 304u, 78223u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 39409u, u_input.a), vec4<u32>(18332u, u_input.c.x, u_input.a, u_input.c.x), false) >> (~vec4<u32>(u_input.c.x, u_input.c.x, 21758u, u_input.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), ~8356u, 1u, _wgslsmith_mult_u32(4294967295u, 0u))));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, -2308f) * vec2<f32>(798f, -1437f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, 933f) * global0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(-417f - 489f))), !(!global0.b.x == global0.b.x)))));
    var var_1 = Struct_2(any(global0.b), vec4<bool>(global0.c.x, all(!global0.c), global1.x, ~29578i >= ~select(0i, arg_0, global0.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.yx))))), _wgslsmith_clamp_i32(u_input.b, min(7170i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, arg_0, -1i), vec4<i32>(0i, u_input.b, u_input.b, arg_0) & vec4<i32>(arg_0, 39356i, 11706i, u_input.b))), 0i));
    var var_2 = Struct_2(!((false || any(vec4<bool>(global0.c.x, global0.c.x, false, false))) && false), !(!(!vec4<bool>(true, true, global0.c.x, var_1.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global0.d.x, 742f)), var_1.c.x) + var_0), -2147483647i);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(290f)), global0.a.x, _wgslsmith_f_op_f32(max(var_2.c.x, 2590f)), _wgslsmith_f_op_f32(global0.d.x - 727f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1324f, 2432f, var_1.c.x) + global0.a))), !vec3<bool>(any(select(vec2<bool>(global1.x, true), vec2<bool>(false, true), vec2<bool>(var_1.b.x, true))), false, var_2.a), var_2.b, vec2<f32>(_wgslsmith_f_op_f32(ceil(1111f)), _wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = Struct_2(var_2.b.x, var_1.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.x, -1725f), vec2<f32>(214f, -1770f)))))))), u_input.b);
    return u_input.c.x;
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global2 = array<Struct_1, 25>();
    global3 = array<vec2<u32>, 14>();
    let var_0 = true;
    let var_1 = abs(~firstLeadingBit(vec3<u32>(func_3(u_input.b, arg_0), _wgslsmith_mult_u32(u_input.c.x, arg_0), 46006u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d.x, 966f))), -511f)), select(global0.b, vec3<bool>(func_1(Struct_1(vec4<f32>(348f, global0.a.x, global0.a.x, global0.a.x), global0.b, global0.c, global0.a.yw)), !(global1.x || true), var_0), select(select(select(vec3<bool>(false, false, global1.x), global0.c.wyy, global0.b), !global0.b, select(vec3<bool>(global1.x, global0.b.x, false), global0.b, true)), vec3<bool>(false, global1.x | false, var_0 || false), !global0.b)), global0.c, vec2<f32>(1207f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(-global0.d.x)), 861f))));
    return vec2<u32>(func_3(u_input.b, _wgslsmith_div_u32(var_1.x, firstTrailingBit(~var_1.x))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = 1i;
    let var_2 = vec3<bool>(global1.x, func_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.a), 25u)]), any(!global0.c));
    global3 = array<vec2<u32>, 14>();
    let var_3 = ~u_input.b;
    var var_4 = func_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c & countOneBits(vec3<u32>(u_input.c.x, u_input.a, 0u))), ~23246u));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec2<u32>(42873u & var_4.x, _wgslsmith_mod_u32(35327u, 39800u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_4.x), global3[_wgslsmith_index_u32(0u, 14u)]) << (vec2<u32>(~11608u, var_4.x) % vec2<u32>(32u)), all(var_2)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1427f - 317f)))), _wgslsmith_f_op_f32(f32(-1f) * -583f)), -vec2<i32>(u_input.b ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, -33901i), vec3<i32>(1i, var_3, -1i)), var_3 << (68606u % 32u)));
}

