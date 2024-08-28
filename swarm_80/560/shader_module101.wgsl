struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false, vec4<bool>(true, true, true, true), -698f, 0i), Struct_1(false, vec4<bool>(false, false, false, true), -415f, 42683i));

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(1943f, 944f, 930f, 1000f), vec4<f32>(-1686f, 343f, -562f, -1103f), vec4<f32>(-1223f, 1000f, -905f, -600f), vec4<f32>(-324f, 700f, 145f, -192f), vec4<f32>(-1000f, -447f, -101f, 1393f), vec4<f32>(-618f, 412f, -1000f, -1000f), vec4<f32>(-529f, -155f, -709f, 2166f), vec4<f32>(-1102f, 372f, 233f, 682f), vec4<f32>(120f, 183f, 1273f, 797f), vec4<f32>(-1022f, -916f, -318f, -1319f), vec4<f32>(-645f, 1346f, -1188f, 300f), vec4<f32>(827f, 204f, 375f, 1148f));

var<private> global2: vec2<i32>;

var<private> global3: array<i32, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    global1 = array<vec4<f32>, 12>();
    let var_0 = Struct_3(~select(vec4<u32>(max(1u, 4294967295u), 1u, _wgslsmith_add_u32(4524u, 1u), ~20139u), vec4<u32>(abs(0u), 32548u, 5767u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 3341u, 41952u, 395u), vec4<u32>(0u, 4985u, 10718u, 86871u))), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true))), ~vec4<u32>(1u, 1u, 1u, 1u), 1f, Struct_2(global0[_wgslsmith_index_u32(~0u, 2u)], !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))), Struct_2(global0[_wgslsmith_index_u32(reverseBits(1u), 2u)], !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), all(vec3<bool>(false, false, false)))));
    let var_1 = !vec2<bool>(true, any(!select(var_0.d.a.b, vec4<bool>(var_0.d.a.a, false, var_0.e.b.x, var_0.d.a.b.x), var_0.d.b)));
    let var_2 = ~(~14933i);
    var var_3 = Struct_1(!var_1.x || !(!var_1.x), vec4<bool>(any(select(var_0.e.a.b, var_0.d.b, var_0.e.b)) == var_0.d.a.a, false, true, !(all(var_0.d.a.b) & false)), _wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(1i, -90580i, var_0.d.a.d) ^ ~vec3<i32>(9212i, -1i, global3[_wgslsmith_index_u32(var_0.a.x, 1u)])), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(var_2, u_input.a, global3[_wgslsmith_index_u32(var_0.b.x, 1u)]) ^ vec3<i32>(var_0.e.a.d, -2147483647i, 36964i)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(var_0.e.a.d, -21033i, global2.x)), vec3<i32>(35157i, -59606i, global3[_wgslsmith_index_u32(1u, 1u)]) >> (vec3<u32>(var_0.a.x, 0u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(23780i, -35681i, ~global2.x))));
    return var_0.a << (var_0.a % vec4<u32>(32u));
}

fn func_2() -> Struct_5 {
    return Struct_5(select(vec4<u32>(4294967295u, ~4294967295u, ~(~1u), _wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(0u, 4294967295u), max(4294967295u, 4294967295u))), ~(vec4<u32>(1u, 1u, 1u, 1u) >> (func_3() % vec4<u32>(32u))), vec4<bool>(true, true, true, true)), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true)), Struct_3(abs(vec4<u32>(1u, func_3().x, firstTrailingBit(0u), 19477u)), reverseBits(vec4<u32>(firstLeadingBit(11955u), 37103u, 0u, 1u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-717f)), -673f)))), Struct_2(Struct_1(true, vec4<bool>(true, false, false, false), _wgslsmith_f_op_f32(f32(-1f) * -1238f), 1i), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), true)), Struct_2(Struct_1(true, vec4<bool>(true, false, false, true), _wgslsmith_f_op_f32(-1000f * -605f), 2147483647i), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, false), all(vec3<bool>(true, true, false))))));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 2>();
    let var_0 = func_2();
    var var_1 = var_0.c.b.x;
    var var_2 = var_0.c.d;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-858f)))), -1707f)), -1555f, 485f);
    return func_2().c.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    var var_0 = vec3<i32>(-2147483647i, i32(-1i) * -(~1i), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(select(0u, 1u, false) & firstTrailingBit(1u), _wgslsmith_div_u32(36799u, max(6167u, 38936u))) & 1u, 1u)]);
    let var_1 = func_1();
    global2 = -(~_wgslsmith_div_vec2_i32(min(vec2<i32>(39437i, var_1.a.d), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(57795u, 1u)]))), _wgslsmith_add_vec2_i32(vec2<i32>(-34275i, global3[_wgslsmith_index_u32(4294967295u, 1u)]), ~vec2<i32>(-34248i, 0i))));
    let var_2 = 64279u;
    var var_3 = var_1.a;
    let var_4 = -253f;
    var_0 = vec3<i32>(_wgslsmith_mult_i32(~var_3.d, 0i ^ var_1.a.d), firstTrailingBit(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 1u)], 4039i, u_input.a), vec3<i32>(-2977i, -5253i, 21571i)), -reverseBits(vec3<i32>(1i, -1i, 64777i)))), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-991f, -1777f), 1332f, _wgslsmith_f_op_f32(ceil(var_3.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a.c, var_3.c, var_4)))) * vec3<f32>(_wgslsmith_f_op_f32(216f * -316f), _wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(var_4 * -270f)))));
}

