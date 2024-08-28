struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(15673i), Struct_1(2147483647i), Struct_1(10821i), Struct_1(-69900i), Struct_1(26923i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(2477i), Struct_1(2147483647i), Struct_1(16773i), Struct_1(1i), Struct_1(0i), Struct_1(-19460i), Struct_1(0i), Struct_1(47572i), Struct_1(i32(-2147483648)), Struct_1(-38097i), Struct_1(-74738i), Struct_1(36286i), Struct_1(-49628i), Struct_1(-1i), Struct_1(3045i), Struct_1(10906i), Struct_1(-10076i), Struct_1(29599i), Struct_1(13807i));

var<private> global1: i32 = 34462i;

var<private> global2: array<u32, 26>;

var<private> global3: vec3<i32>;

var<private> global4: array<f32, 28> = array<f32, 28>(-818f, 1000f, 1000f, 636f, -676f, -1343f, 1152f, -1906f, 700f, -494f, -1096f, 330f, -1615f, -909f, 1515f, 1490f, 1142f, -1895f, -958f, -1137f, 640f, 960f, -1849f, 1150f, 513f, 326f, 1859f, -591f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = ~(4294967295u ^ (countOneBits(~global2[_wgslsmith_index_u32(12103u, 26u)]) & ~(~36105u)));
    var var_1 = _wgslsmith_div_f32(global4[_wgslsmith_index_u32(83960u, 28u)], -1870f);
    let var_2 = 1416f;
    global1 = _wgslsmith_dot_vec3_i32(min(-(firstTrailingBit(vec3<i32>(-1i, global3.x, arg_0.x)) << (vec3<u32>(var_0, 13156u, 1u) % vec3<u32>(32u))), select(~vec3<i32>(global3.x, 62638i, u_input.a), select(~vec3<i32>(5082i, 40938i, -1i), select(vec3<i32>(global3.x, 2147483647i, arg_0.x), vec3<i32>(28217i, 51618i, global3.x), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), all(vec3<bool>(true, true, false)))), vec3<i32>(_wgslsmith_mod_i32(u_input.a, abs(~(-25649i))), i32(-1i) * -8343i, arg_0.x));
    var var_3 = false;
    return vec4<i32>(-4804i, 1i, ~global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.x, global3.x), -1i), -(~0i), _wgslsmith_clamp_i32(min(2147483647i, global3.x), _wgslsmith_dot_vec3_i32(vec3<i32>(37132i, arg_0.x, 68375i), vec3<i32>(u_input.a, global3.x, global3.x)), -global3.x)), countOneBits(vec3<i32>(i32(-1i) * -1i, arg_0.x, arg_0.x))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    global1 = u_input.a;
    let var_0 = Struct_5(global3.yz, Struct_2(!((global2[_wgslsmith_index_u32(15587u, 26u)] >= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 26u)]) & true), arg_0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(0u, 28u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10152u, 26u)], 26u)], 28u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 28u)]) - vec3<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 26u)], 28u)], -1921f, -2562f))))), vec3<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6188u, 26u)], 26u)] & global2[_wgslsmith_index_u32(43589u, 26u)], 23207u), min(~global2[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 26u)], 5611u, 4294967295u, 1u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14651u, 26u)], 26u)], 26u)], global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(96243u, 26u)], 4294967295u))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]), vec3<u32>(global2[_wgslsmith_index_u32(0u, 26u)], 0u, global2[_wgslsmith_index_u32(1u, 26u)])), vec3<u32>(global2[_wgslsmith_index_u32(25019u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], 4294967295u))), all(vec4<bool>(true, true, false, true))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)] | global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)]), 26u)], 26u)], global2[_wgslsmith_index_u32(firstLeadingBit(~global2[_wgslsmith_index_u32(26726u, 26u)]), 26u)], ~1u), 26u)] >> (_wgslsmith_div_u32(~1u, global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3647u, 26u)], 26u)]), 26u)]) % 32u), arg_0);
    var var_1 = false;
    global1 = u_input.a;
    return _wgslsmith_dot_vec4_i32(~func_3(~min(vec2<i32>(-7214i, arg_0.a.a), global3.yx)), -((_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_0.a.a, 18821i, global3.x), vec4<i32>(-54296i, u_input.a, u_input.a, 0i), vec4<i32>(1i, 38942i, u_input.a, global3.x)) | vec4<i32>(-36639i, -9357i, -2147483647i, global3.x)) >> (firstLeadingBit(firstTrailingBit(vec4<u32>(var_0.b.d.x, var_0.b.d.x, 1u, global2[_wgslsmith_index_u32(var_0.c, 26u)]))) % vec4<u32>(32u))));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 26>();
    global3 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -min(vec3<i32>(global3.x, 8829i, global3.x), max(vec3<i32>(-5764i, u_input.a, 16294i), vec3<i32>(0i, u_input.a, 0i))), ~((vec3<i32>(-1i) * -vec3<i32>(103014i, u_input.a, global3.x)) ^ vec3<i32>(~global3.x, 1i, global3.x | 0i)));
    global3 = vec3<i32>(u_input.a, 0i, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(0i, -global3.x), firstTrailingBit(1i)));
    global1 = ~11291i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(global3.x, 0i), global3.yz), _wgslsmith_clamp_vec2_i32((vec2<i32>(global3.x, -48269i) >> (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39518u, 26u)], 26u)], global2[_wgslsmith_index_u32(0u, 26u)]) % vec2<u32>(32u))) & global3.yy, ~(~global3.xz), vec2<i32>(-2147483647i, ~u_input.a)));
    global0 = array<Struct_1, 26>();
    return -_wgslsmith_dot_vec4_i32(~max(select(vec4<i32>(global3.x, -1i, global3.x, 34575i), vec4<i32>(2147483647i, 10027i, -54295i, 27913i), false), vec4<i32>(-2147483647i, global3.x, -2147483647i, global3.x)), vec4<i32>(-u_input.a, _wgslsmith_div_i32(_wgslsmith_add_i32(-40282i, 2147483647i), 9113i), func_2(Struct_3(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28508u, 26u)], 26u)])), _wgslsmith_sub_i32(reverseBits(global3.x), firstLeadingBit(u_input.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1943f, _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18072u, 26u)], 26u)], 26u)], 26u)], 6482u), 28u)], global4[_wgslsmith_index_u32(1u, 28u)]))))), global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~26279u) ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(101338u, 26u)], 26u)], 26u)], 13370u), 26u)], 26u)], 26u)], 26u)], 28u)], global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~(~68656u)), 26u)], 26u)], 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 28u)]), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(abs(1u), 26u)], abs(72044u)) ^ ~49807u, 26u)], 28u)]));
    global3 = ~vec3<i32>(u_input.a, 1i, ~(~arg_0.x));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1171f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(46297u, 28u)] - 114f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_div_f32(var_0.x, 1505f))))), _wgslsmith_f_op_f32(ceil(-1742f)), 224f, var_0.x);
    var var_1 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(4294967295u, 28u)], var_0.x)))));
    var var_2 = var_0.yy;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    global4 = array<f32, 28>();
    global2 = array<u32, 26>();
    var var_0 = func_4(_wgslsmith_add_vec3_i32(vec3<i32>(-64i, ~max(1i, -2147483647i), ~func_1()), firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.x, -9412i, global3.x), vec3<i32>(u_input.a, -23323i, -1i)), func_3(vec2<i32>(global3.x, global3.x)).yzx))), Struct_1(max(u_input.a | ~global3.x, -1498i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2255u, 26u)], 26u)], 28u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27011u, 26u)], 26u)], 28u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 28u)], 794f) + vec4<f32>(-305f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28680u, 26u)], 28u)], -677f, 709f)))))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1649f, -188f, global4[_wgslsmith_index_u32(1u, 28u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(95065u, 28u)], global4[_wgslsmith_index_u32(1u, 28u)], -592f, 575f) - vec4<f32>(global4[_wgslsmith_index_u32(0u, 28u)], 185f, 1201f, -1150f)))))));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, select(vec4<i32>(~global3.x, ~29020i, u_input.a, ~(-global3.x)), -_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, -1i, 24669i), ~vec4<i32>(-7238i, 2147483647i, -70366i, u_input.a)), (~var_0.a & 1i) >= 6515i));
}

