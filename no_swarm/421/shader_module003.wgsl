struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(-1876f, 205f, -158f, -447f)), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(-1879f, 1478f, -1000f, -109f)), Struct_2(vec4<bool>(false, false, true, false), vec4<f32>(1196f, 1244f, -1204f, -1182f)), Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(-104f, -665f, 1033f, -1366f)), Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(-737f, -814f, 1000f, 198f)), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(1186f, -869f, 137f, 540f)), Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(452f, -1307f, -934f, -1000f)), Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(-1534f, 173f, 1237f, 238f)), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(970f, -1074f, 445f, -295f)), Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(-1895f, 699f, -660f, -1716f)), Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(-656f, -374f, -1000f, 1221f)), Struct_2(vec4<bool>(false, false, false, true), vec4<f32>(341f, 560f, 471f, -155f)), Struct_2(vec4<bool>(false, true, false, true), vec4<f32>(800f, 1996f, 714f, 1459f)), Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(324f, 574f, -627f, 494f)), Struct_2(vec4<bool>(true, true, true, false), vec4<f32>(1397f, -1243f, -1168f, -207f)), Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(685f, 1439f, 1000f, -1019f)), Struct_2(vec4<bool>(true, true, true, false), vec4<f32>(-379f, 1451f, -708f, -200f)), Struct_2(vec4<bool>(true, true, false, true), vec4<f32>(1878f, 1220f, 161f, -1551f)), Struct_2(vec4<bool>(true, false, false, false), vec4<f32>(-531f, 1493f, 250f, 1350f)), Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(-2289f, 403f, -182f, -504f)), Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(705f, -683f, 250f, -1281f)), Struct_2(vec4<bool>(false, false, true, false), vec4<f32>(351f, 961f, -1000f, 1290f)), Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(-2145f, -1912f, -526f, -331f)), Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(-1100f, -1351f, -1353f, -1138f)), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(795f, 814f, -1000f, 929f)), Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(626f, -703f, 223f, 1018f)), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(1414f, -452f, -673f, 251f)), Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(502f, 1361f, 1577f, -1212f)), Struct_2(vec4<bool>(true, true, false, true), vec4<f32>(239f, -968f, -486f, -190f)), Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(-861f, -717f, 548f, 1223f)), Struct_2(vec4<bool>(false, false, false, true), vec4<f32>(-837f, 130f, 416f, 1788f)));

var<private> global3: Struct_2 = Struct_2(vec4<bool>(true, true, false, true), vec4<f32>(-1544f, -696f, -994f, -1999f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~(min(~(72681u & u_input.e), 15662u) ^ ~u_input.e), 31u)];
    global2 = array<Struct_2, 31>();
    global1 = global2[_wgslsmith_index_u32(~4294967295u, 31u)];
    let var_1 = !(!vec2<bool>(var_0.a.x, max(-2147483647i, -728i) < u_input.a.x));
    let var_2 = -2717i;
    return u_input.b;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    let var_0 = vec4<bool>(false == (all(!vec2<bool>(global3.a.x, global1.a.x)) == global3.a.x), _wgslsmith_clamp_i32(u_input.a.x >> (u_input.b % 32u), u_input.c.x, ~u_input.c.x) == 1i, any(global1.a.zxz), true);
    global0 = array<vec4<bool>, 7>();
    var var_1 = global0[_wgslsmith_index_u32(75185u, 7u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0)))), _wgslsmith_f_op_vec2_f32(-global3.b.xx)));
    let var_3 = Struct_1(~(~countOneBits(vec4<u32>(4294967295u, u_input.e, 4294967295u, 78967u)) ^ reverseBits(vec4<u32>(u_input.b, u_input.b, 4294967295u, 79110u))), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.yyz))))));
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(63211u << ((~var_3.a.x >> ((u_input.d.x ^ u_input.d.x) % 32u)) % 32u)), ~countOneBits(func_3())), 31u)];
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = func_2(global1.b.zy, _wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(131f * global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * var_0.b.x)), var_0.b.yz);
    var var_2 = vec2<u32>(u_input.d.x, ~1u) << (min(abs(u_input.d.xx), _wgslsmith_mult_vec2_u32(u_input.d.xy, u_input.d.xy)) % vec2<u32>(32u));
    let var_3 = Struct_1(abs(abs(~vec4<u32>(3744u, u_input.d.x, 106146u, 52640u))), vec3<u32>(1u, u_input.e, ~_wgslsmith_div_u32(u_input.b, var_2.x) ^ u_input.d.x), vec3<f32>(605f, 1f, func_2(global1.b.zy, var_0.b.x).b.x));
    let var_4 = var_0;
    return vec2<bool>(var_0.a.x, any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!select(vec4<bool>(!global1.a.x, true, global1.a.x && true, all(global3.a.zy)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.d.x) ^ u_input.e, 7u)], any(global1.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), global3.b.x, 2283f, global3.b.x))));
    var var_1 = true;
    var_1 = any(select(func_1(-(~vec2<i32>(27200i, u_input.a.x))), var_0.a.zx, !vec2<bool>(all(global3.a.wyy), true)));
    let var_2 = u_input.c.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec2_i32(u_input.c.xy, vec2<i32>(~(-1i), 0i), -var_2.yz)), -_wgslsmith_sub_vec3_i32(var_2, vec3<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), ~2147483647i, var_2.x)), 0i, ~u_input.c, firstLeadingBit(~u_input.c));
}

