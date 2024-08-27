struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-1596f, 1000f, -635f), vec3<f32>(-1207f, -252f, -1217f), vec3<f32>(-2026f, -752f, -288f), vec3<f32>(-1822f, 784f, -1984f), vec3<f32>(1000f, 1169f, -2085f), vec3<f32>(-767f, -619f, 309f), vec3<f32>(-358f, 650f, -738f), vec3<f32>(-2790f, -908f, -765f), vec3<f32>(239f, 1000f, 243f), vec3<f32>(-783f, 866f, 1502f), vec3<f32>(606f, 927f, -808f), vec3<f32>(-834f, 207f, -387f), vec3<f32>(-1374f, -1044f, 1203f), vec3<f32>(-1227f, -1054f, 529f), vec3<f32>(245f, 535f, -719f), vec3<f32>(-2484f, 1874f, 1412f), vec3<f32>(824f, -627f, 1000f), vec3<f32>(1844f, -334f, 857f), vec3<f32>(831f, -389f, 148f));

var<private> global1: array<f32, 26> = array<f32, 26>(387f, 342f, -440f, -1276f, 1249f, 2342f, 1817f, 289f, -314f, -1400f, -372f, 1000f, 1780f, 281f, 1270f, -991f, -631f, -406f, -521f, 1976f, -117f, 2040f, 102f, -433f, -429f, -449f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(arg_0, 26u)])));
    let var_1 = min(~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, 23545u, 54736u, 1u), countOneBits(vec4<u32>(5131u, 179u, arg_0, arg_0))), max(~countOneBits(vec4<u32>(6240u, 1u, arg_0, 93447u)), vec4<u32>(arg_0, arg_0 << (arg_0 % 32u), 1u, _wgslsmith_clamp_u32(18230u, arg_0, 4294967295u)))) ^ vec4<u32>(select(abs(~0u), 24703u, true), u_input.a.x, ~4294967295u, ~_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 17180u, u_input.a.x, arg_0), vec4<u32>(arg_0, 29397u, 4294967295u, arg_0))));
    global0 = array<vec3<f32>, 19>();
    var var_2 = select(select(vec4<bool>(false, true, true, select(true, true, true)), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), firstTrailingBit(u_input.a.x) >= abs(~1u)), !select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), true), !(!vec4<bool>(false, arg_0 > 4294967295u, false, any(vec2<bool>(true, true)))));
    let var_3 = _wgslsmith_clamp_i32(firstTrailingBit(-11714i), 1i, _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -16289i), vec2<i32>(-1i, 0i))), max(-50270i, abs(0i))), -3753i));
    return vec2<bool>(-201f == global1[_wgslsmith_index_u32(var_1.x, 26u)], var_2.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = arg_1.d;
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(u_input.a.yz, arg_0.yy), arg_0.zw)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 0u), arg_1.b.xz)) << (firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(52049u, arg_1.b.x), arg_1.b.yx)) % vec2<u32>(32u))));
    let var_2 = !(!func_3(u_input.a.x));
    let var_3 = -191f;
    global1 = array<f32, 26>();
    return select(all(!var_2) && (var_3 == var_3), any(!(!vec4<bool>(false, false, true, var_2.x))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), arg_1.e), !vec3<bool>(var_2.x, arg_1.e, false), false))) && all(vec4<bool>(!arg_1.e, false, true, true));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global1 = array<f32, 26>();
    let var_0 = Struct_1(vec2<i32>(arg_0.x, min(-1108i, -1i)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(30939u, 26142u), 55857u), vec3<u32>(~u_input.a.x, 4294967295u ^ u_input.a.x, ~u_input.a.x) >> (vec3<u32>(5921u, 1u, u_input.a.x) % vec3<u32>(32u))), ~u_input.a.x, -(reverseBits(-arg_0.xzx) | select(-vec3<i32>(-34495i, -15562i, arg_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, -47840i, 29902i), vec3<i32>(-2147483647i, -2147483647i, arg_0.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), (19207i <= arg_0.x) & true);
    global1 = array<f32, 26>();
    let var_1 = select(any(vec4<bool>(690f <= global1[_wgslsmith_index_u32(0u, 26u)], true, true, false)) && true, true, func_2(~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), min(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 31064u), vec4<u32>(var_0.c, 0u, u_input.a.x, 1u))), var_0));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    global1 = array<f32, 26>();
    let var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(abs(func_1(vec4<i32>(38192i, 1i, -23253i, 0i))), 22788u)), 19u)];
    global0 = array<vec3<f32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-9432i, -1i, -1i, -2147483647i), abs(vec4<i32>(268i, -2147483647i, -39864i, 9451i))), min(33013i >> (u_input.a.x % 32u), 1i)), ~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), -(~vec2<i32>(17221i, -2147483647i))), var_0.x);
}

