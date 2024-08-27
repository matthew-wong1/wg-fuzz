struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25>;

var<private> global1: i32 = 19240i;

var<private> global2: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(1u, 1661u, 49464u, 46937u), vec4<u32>(0u, 4294967295u, 51838u, 0u), vec4<u32>(54456u, 69716u, 20671u, 0u), vec4<u32>(1u, 0u, 1u, 116196u), vec4<u32>(19377u, 52629u, 0u, 3845u), vec4<u32>(68494u, 4294967295u, 89585u, 2769u), vec4<u32>(42598u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 52459u, 59413u), vec4<u32>(32092u, 29702u, 1u, 4294967295u), vec4<u32>(0u, 46092u, 1u, 103335u), vec4<u32>(88632u, 45345u, 4294967295u, 4294967295u), vec4<u32>(13441u, 51223u, 1u, 47676u), vec4<u32>(16725u, 1242u, 30447u, 87783u), vec4<u32>(0u, 85144u, 1u, 1u), vec4<u32>(26307u, 31168u, 4294967295u, 88472u), vec4<u32>(4294967295u, 1u, 46474u, 59541u), vec4<u32>(0u, 17937u, 2178u, 4294967295u), vec4<u32>(52024u, 116819u, 0u, 35795u), vec4<u32>(0u, 4294967295u, 1u, 755u), vec4<u32>(117511u, 2354u, 4294967295u, 4294967295u), vec4<u32>(3413u, 1u, 26473u, 0u), vec4<u32>(4294967295u, 42863u, 4792u, 1u), vec4<u32>(0u, 4294967295u, 0u, 54633u), vec4<u32>(0u, 1u, 34452u, 90u), vec4<u32>(0u, 1u, 116333u, 8213u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 8600u), vec4<u32>(11325u, 4294967295u, 25962u, 27034u), vec4<u32>(1u, 95513u, 39233u, 48582u), vec4<u32>(1u, 4294967295u, 44290u, 1324u), vec4<u32>(0u, 0u, 20401u, 645u));

var<private> global3: array<f32, 13> = array<f32, 13>(1331f, -240f, -463f, -1199f, -120f, -542f, -293f, 337f, 2118f, -1065f, 191f, 1425f, -980f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    global0 = array<vec4<u32>, 25>();
    var var_0 = u_input.a;
    global2 = array<vec4<u32>, 30>();
    global3 = array<f32, 13>();
    let var_1 = Struct_1(global3[_wgslsmith_index_u32(1u, 13u)]);
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(~(_wgslsmith_add_i32(u_input.a, 0i) >> (abs(1u) % 32u)), u_input.a), u_input.a);
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<u32>(32204u, ~1u);
    let var_1 = Struct_1(global3[_wgslsmith_index_u32(~var_0.x, 13u)]);
    let var_2 = ~firstLeadingBit(~vec4<i32>(-2147483647i, u_input.a & u_input.a, i32(-1i) * -1510i, ~u_input.a));
    global1 = func_2(vec2<u32>(var_0.x, var_0.x)) | u_input.a;
    var var_3 = true;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    global0 = array<vec4<u32>, 25>();
    global3 = array<f32, 13>();
    return 62240i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<u32>(countOneBits(_wgslsmith_clamp_u32(0u, 1u, 62813u)), select(firstTrailingBit(1u), ~4294967295u, true)));
    global1 = func_3(func_1(), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(61036u, 13u)]) + -459f)))), vec3<i32>(u_input.a, -44125i, abs(_wgslsmith_mult_i32(-u_input.a, i32(-1i) * -2147483647i))));
    let var_1 = vec3<u32>(~(~69802u), 5323u, 1u);
    let var_2 = _wgslsmith_mult_vec4_i32(-(~(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 32808i, u_input.a, u_input.a), vec4<i32>(-35482i, -2147483647i, u_input.a, u_input.a)))), countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 8550i, u_input.a, -2147483647i), vec4<i32>(-13668i, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))) ^ (_wgslsmith_add_vec4_i32(~vec4<i32>(-21031i, -2147483647i, u_input.a, u_input.a), select(vec4<i32>(0i, u_input.a, 67475i, 2147483647i), vec4<i32>(u_input.a, u_input.a, 38190i, -104051i), vec4<bool>(false, false, true, true))) & vec4<i32>(-2147483647i, ~6638i, _wgslsmith_add_i32(0i, u_input.a), u_input.a)));
    var var_3 = global3[_wgslsmith_index_u32(16516u, 13u)];
    var var_4 = func_1();
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1064f)), -1458f) - var_4.a), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32((var_0.x ^ var_1.x) | var_0.x, 13u)])));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.x, 13u)])));
    var var_5 = min(vec3<u32>(firstLeadingBit(88864u), ~firstTrailingBit(countOneBits(89168u)), 18896u), vec3<u32>(_wgslsmith_mult_u32(var_0.x, var_1.x), countOneBits(var_0.x) | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(19770u, var_1.x, 91054u), var_1), vec3<u32>(31592u, 4294967295u, 2553u)), ~(~max(var_1.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f - global3[_wgslsmith_index_u32(~var_1.x, 13u)]), _wgslsmith_sub_vec2_u32(abs(countOneBits(var_5.yx) ^ ~var_1.xy), var_5.xx), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-317f, _wgslsmith_f_op_f32(ceil(1000f))) - -381f), (vec3<u32>(143988u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_5.x, var_5.x), vec3<u32>(var_5.x, var_0.x, 20679u)), ~var_5.x) & ~(var_1 >> (vec3<u32>(4294967295u, var_5.x, 4294967295u) % vec3<u32>(32u)))) << (~_wgslsmith_add_vec3_u32(firstLeadingBit(var_1), var_1) % vec3<u32>(32u)));
}

