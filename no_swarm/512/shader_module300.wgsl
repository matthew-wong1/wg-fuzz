struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(-754f, 213f), 4294967295u, 24809u, vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(-1631f, 937f), 13219u, 38305u, vec2<i32>(1i, 2147483647i)), Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(-303f, 539f), 10232u, 1u, vec2<i32>(-9108i, -39291i)), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(223f, -320f), 36966u, 0u, vec2<i32>(i32(-2147483648), 10062i)), Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(-308f, 216f), 0u, 53812u, vec2<i32>(-39760i, 18789i)), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-1000f, 590f), 4294967295u, 26110u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(1345f, -492f), 50785u, 2218u, vec2<i32>(2147483647i, -19468i)), Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(-1731f, 541f), 4294967295u, 43780u, vec2<i32>(2130i, -1i)), Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(322f, -471f), 0u, 0u, vec2<i32>(0i, 1i)), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-513f, -751f), 40627u, 42217u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(112f, -1489f), 3322u, 0u, vec2<i32>(-26997i, 0i)), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-520f, -226f), 13842u, 1u, vec2<i32>(2147483647i, 1i)), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(1556f, 102f), 0u, 60967u, vec2<i32>(-36955i, 0i)), Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(563f, 554f), 4294967295u, 4294967295u, vec2<i32>(1i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-1586f, -596f), 0u, 28167u, vec2<i32>(0i, 35059i)), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-419f, 324f), 1u, 25754u, vec2<i32>(15430i, 2147483647i)), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-989f, 1000f), 0u, 4294967295u, vec2<i32>(2147483647i, 1i)), Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(2189f, 2466f), 0u, 252u, vec2<i32>(0i, 15884i)), Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(-351f, -957f), 0u, 0u, vec2<i32>(5379i, -40997i)), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(-949f, 215f), 11525u, 774u, vec2<i32>(69906i, -1i)), Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(-945f, 635f), 4294967295u, 0u, vec2<i32>(1i, 183i)), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(1285f, 2480f), 4294967295u, 0u, vec2<i32>(-3079i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(2089f, -998f), 1u, 33118u, vec2<i32>(-27598i, -9741i)), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(791f, 1000f), 0u, 0u, vec2<i32>(10131i, 14865i)), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(268f, 1006f), 1u, 16484u, vec2<i32>(-8081i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(-139f, 1574f), 54263u, 1u, vec2<i32>(38371i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(-813f, 170f), 58858u, 32981u, vec2<i32>(-43126i, -25321i)), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(1051f, -2009f), 1u, 1u, vec2<i32>(1i, -1i)), Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(168f, -2293f), 18055u, 2444u, vec2<i32>(0i, 13110i)), Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-771f, 170f), 3875u, 13291u, vec2<i32>(-1i, 2147483647i)), Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-880f, -1752f), 33848u, 17812u, vec2<i32>(-71110i, 0i)));

var<private> global1: array<f32, 26>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<Struct_1, 31>();
    global1 = array<f32, 26>();
    global0 = array<Struct_1, 31>();
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_div_u32(1u, select(1u, 1u, false) >> (19727u % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(33571u, 26u)]) + global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 17136u), vec2<u32>(61075u, 1u)), ~1u), 26u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(45617u), 26u)]));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<bool>(true, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1281f, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)])) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(25190u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(68096u, 26u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 26u)], 693f, global1[_wgslsmith_index_u32(9804u, 26u)]))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3120f, global1[_wgslsmith_index_u32(4294967295u, 26u)], 202f)))));
    var var_2 = _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(_wgslsmith_mod_i32(firstTrailingBit(i32(-1i) * -15883i), 21506i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x))));
    let var_3 = ~(-1i) | ~_wgslsmith_mod_i32(u_input.a.x, -46767i);
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(1u, 26u)])))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(463f, 507f, global1[_wgslsmith_index_u32(4294967295u, 26u)]))))))));
    return Struct_2(true, global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~0u, 1u)), 31u)]);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    let var_0 = ~8177u;
    let var_1 = Struct_4(~(~arg_0.d.b.c), func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_3.d.b.b.x, global1[_wgslsmith_index_u32(17719u, 26u)]), global1[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_f_op_f32(round(-886f)), _wgslsmith_f_op_f32(-arg_3.d.b.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_0.d.b.b.x, arg_3.d.b.b.x, arg_3.d.b.b.x) * vec4<f32>(1637f, -494f, -2357f, global1[_wgslsmith_index_u32(arg_0.d.b.d, 26u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(828f, arg_1, 1132f, 182f))))), vec2<u32>(1u, countOneBits(arg_0.d.b.d)));
    var var_2 = Struct_4(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.d.b.d, arg_3.d.b.c, 1u, arg_2), vec4<u32>(arg_2, var_0, 4294967295u, 1u), vec4<u32>(var_1.b.b.d, 38259u, 64042u, 13929u)), vec4<u32>(arg_3.d.b.d, arg_2, 1u, arg_0.d.b.d))), select(countOneBits(vec4<u32>(arg_0.d.b.c, 16959u, arg_2, 30038u)), max(~vec4<u32>(4294967295u, 0u, 19989u, var_1.b.b.d), vec4<u32>(var_1.a, 4294967295u, var_0, var_0)), all(arg_3.d.b.a) && arg_0.d.b.a.x)), var_1.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.c, var_1.c)))), (var_1.d << (_wgslsmith_add_vec2_u32(~var_1.d, select(var_1.d, var_1.d, vec2<bool>(true, var_1.b.a))) % vec2<u32>(32u))) & ~vec2<u32>(abs(9110u), arg_2 << (var_1.d.x % 32u)));
    return var_1;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = -(~arg_1.b.b.e.x);
    let var_1 = arg_1.c.xzy;
    var var_2 = -_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(abs(arg_1.b.b.e.x), arg_2.e.x, 10848i), _wgslsmith_add_vec3_i32(vec3<i32>(4822i, arg_2.e.x, 5371i), min(vec3<i32>(182i, arg_0.b.b.e.x, arg_2.e.x), vec3<i32>(arg_2.e.x, arg_2.e.x, u_input.a.x)))), firstLeadingBit(_wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_1.b.b.e.x, -2147483647i, arg_2.e.x), vec3<i32>(0i, u_input.a.x, arg_0.b.b.e.x), arg_0.c), -vec3<i32>(arg_0.b.b.e.x, -30439i, 2147483647i))));
    let var_3 = all(func_4(Struct_3(max(vec4<i32>(-12173i, 23820i, u_input.a.x, 13464i), vec4<i32>(u_input.a.x, 1i, u_input.a.x, arg_2.e.x)), arg_2.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(13785i, -37195i), vec2<i32>(18200i, -10389i)), Struct_2(u_input.a.x > arg_2.e.x, arg_1.b.b)), _wgslsmith_div_f32(var_1.x, arg_1.b.b.b.x), arg_0.b.b.c, Struct_3(vec4<i32>(arg_0.b.b.e.x, -1i, arg_2.e.x, var_2.x >> (arg_0.a.x % 32u)), vec4<bool>(any(arg_1.b.b.a), arg_2.a.x, false, true), arg_2.e.x, Struct_2(arg_1.b.b.a.x && arg_1.b.a, func_4(Struct_3(vec4<i32>(39810i, 1i, -2147483647i, arg_1.b.b.e.x), vec4<bool>(arg_1.b.b.a.x, arg_1.b.a, arg_0.b.b.a.x, arg_0.c), -21918i, Struct_2(arg_2.a.x, Struct_1(vec4<bool>(false, arg_3, false, true), var_1.xy, 5318u, 4294967295u, vec2<i32>(arg_2.e.x, 0i)))), 941f, arg_0.b.b.d, Struct_3(vec4<i32>(5293i, 1i, arg_2.e.x, -2147483647i), vec4<bool>(false, arg_2.a.x, arg_2.a.x, true), u_input.a.x, Struct_2(arg_1.b.b.a.x, Struct_1(vec4<bool>(true, arg_3, true, arg_1.b.b.a.x), vec2<f32>(551f, arg_1.c.x), arg_1.b.b.d, arg_0.b.b.d, vec2<i32>(arg_1.b.b.e.x, var_2.x))))).b.b))).b.b.a.xy);
    var_2 = vec3<i32>(var_2.x, -26634i, arg_0.b.b.e.x);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_1.b.b.c >> (arg_1.d.x % 32u), 26u)], _wgslsmith_f_op_f32(abs(1000f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.b.x * arg_0.b.b.b.x)) - _wgslsmith_f_op_f32(ceil(arg_1.c.x))), arg_0.b.b);
}

fn func_1(arg_0: Struct_5) -> f32 {
    var var_0 = !(!vec3<bool>(arg_0.b.a, true, !(!arg_0.b.a)));
    global0 = array<Struct_1, 31>();
    let var_1 = Struct_5((arg_0.a << (min(arg_0.a, _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.x, 4486u), arg_0.a)) % vec2<u32>(32u))) << ((((arg_0.a | vec2<u32>(1u, 1u)) | countOneBits(arg_0.a)) | (arg_0.a ^ arg_0.a)) % vec2<u32>(32u)), arg_0.b, arg_0.c);
    let var_2 = func_5(var_1, func_4(Struct_3(-max(vec4<i32>(arg_0.b.b.e.x, 2147483647i, var_1.b.b.e.x, 68224i), vec4<i32>(arg_0.b.b.e.x, 7281i, -49463i, -39963i)), !select(var_1.b.b.a, arg_0.b.b.a, var_1.b.b.a), _wgslsmith_sub_i32(arg_0.b.b.e.x, 38537i) & 0i, func_2()), var_1.b.b.b.x, var_1.b.b.c, Struct_3(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.b.b.e.x, u_input.a.x), vec4<i32>(arg_0.b.b.e.x, -4170i, arg_0.b.b.e.x, arg_0.b.b.e.x)), vec4<i32>(-2147483647i, -1i, 2147483647i, arg_0.b.b.e.x), !vec4<bool>(false, true, var_1.c, false)), var_1.b.b.a, -51815i, var_1.b)), Struct_1(vec4<bool>(abs(-4028i) >= var_1.b.b.e.x, var_1.b.b.a.x, !var_0.x, false), var_1.b.b.b, max(_wgslsmith_div_u32(~var_1.b.b.c, _wgslsmith_clamp_u32(arg_0.a.x, arg_0.b.b.c, 34092u)), _wgslsmith_mult_u32(1u, select(arg_0.a.x, 48870u, true))), ~abs(23547u), u_input.a | _wgslsmith_mult_vec2_i32(vec2<i32>(-29832i, 1i) << (vec2<u32>(4294967295u, var_1.a.x) % vec2<u32>(32u)), func_2().b.e)), true);
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1094f);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    global0 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_1.e.x, -62535i, -2147483647i) | vec4<i32>(1i, arg_1.e.x, -6677i, u_input.a.x), vec4<i32>(arg_1.e.x & u_input.a.x, ~6985i, select(u_input.a.x, -13231i, true), arg_1.e.x)), reverseBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(-54336i, 59289i, -9486i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.e.x, arg_1.e.x, arg_1.e.x, arg_1.e.x), _wgslsmith_add_vec4_i32(vec4<i32>(40018i, -43421i, arg_1.e.x, arg_1.e.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, arg_1.e.x))))));
    var var_1 = Struct_3(var_0, vec4<bool>(all(select(vec3<bool>(false, arg_1.a.x, true), arg_1.a.yyy, true)), !any(func_5(Struct_5(vec2<u32>(68736u, arg_2), Struct_2(false, Struct_1(vec4<bool>(false, true, false, arg_1.a.x), arg_1.b, arg_2, 0u, vec2<i32>(-2147483647i, -34401i))), arg_1.a.x), Struct_4(0u, Struct_2(arg_1.a.x, Struct_1(arg_1.a, arg_1.b, 4294967295u, 0u, vec2<i32>(1i, -1i))), vec4<f32>(267f, global1[_wgslsmith_index_u32(41850u, 26u)], arg_3, arg_3), vec2<u32>(arg_2, 4294967295u)), Struct_1(arg_1.a, vec2<f32>(arg_0, arg_1.b.x), arg_1.d, 34381u, vec2<i32>(arg_1.e.x, -2147483647i)), arg_1.a.x).b.a.xy), true, !arg_1.a.x), -arg_1.e.x, func_5(Struct_5(~vec2<u32>(arg_2, arg_2) >> (max(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, arg_1.d)) % vec2<u32>(32u)), func_5(Struct_5(vec2<u32>(53821u, arg_1.d), Struct_2(false, Struct_1(vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.b, arg_2, arg_1.c, vec2<i32>(u_input.a.x, var_0.x))), false), func_4(Struct_3(vec4<i32>(0i, -2147483647i, 0i, arg_1.e.x), vec4<bool>(arg_1.a.x, arg_1.a.x, false, false), u_input.a.x, Struct_2(false, global0[_wgslsmith_index_u32(arg_2, 31u)])), arg_0, arg_2, Struct_3(var_0, arg_1.a, -18807i, Struct_2(arg_1.a.x, global0[_wgslsmith_index_u32(arg_1.c, 31u)]))), func_5(Struct_5(vec2<u32>(13244u, 1u), Struct_2(true, Struct_1(arg_1.a, vec2<f32>(arg_1.b.x, arg_1.b.x), 0u, arg_1.d, vec2<i32>(arg_1.e.x, -54598i))), arg_1.a.x), Struct_4(24561u, Struct_2(false, Struct_1(arg_1.a, vec2<f32>(arg_1.b.x, 926f), 49639u, 4294967295u, vec2<i32>(arg_1.e.x, -1i))), vec4<f32>(-803f, arg_1.b.x, arg_0, 1473f), vec2<u32>(10590u, arg_2)), Struct_1(arg_1.a, arg_1.b, arg_1.d, arg_2, vec2<i32>(70899i, 20398i)), arg_1.a.x).b, false), true), func_4(Struct_3(_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(1i, 0i, var_0.x, arg_1.e.x)), !vec4<bool>(true, true, arg_1.a.x, false), 1i | u_input.a.x, func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-149f - arg_3), _wgslsmith_div_f32(-373f, global1[_wgslsmith_index_u32(arg_2, 26u)])), 261u, Struct_3(~var_0, vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), -35393i, func_4(Struct_3(vec4<i32>(27037i, 0i, u_input.a.x, 0i), vec4<bool>(false, false, arg_1.a.x, arg_1.a.x), 6440i, Struct_2(arg_1.a.x, Struct_1(vec4<bool>(true, arg_1.a.x, arg_1.a.x, false), arg_1.b, 1u, 1u, var_0.yx))), arg_0, 0u, Struct_3(vec4<i32>(arg_1.e.x, -52253i, var_0.x, var_0.x), vec4<bool>(arg_1.a.x, false, true, false), arg_1.e.x, Struct_2(true, arg_1))).b)), Struct_1(vec4<bool>(all(arg_1.a.xyx), arg_1.a.x & arg_1.a.x, select(true, false, arg_1.a.x), arg_1.a.x), vec2<f32>(546f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_2, 26u)], arg_1.b.x))), arg_2, _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, 4294967295u), 4294967295u << (arg_1.d % 32u)), -(~vec2<i32>(-1045i, arg_1.e.x))), arg_1.a.x));
    var var_2 = Struct_3(var_0, !(!arg_1.a), func_5(Struct_5(vec2<u32>(13590u, var_1.d.b.c) | vec2<u32>(104913u, arg_2), var_1.d, all(vec3<bool>(false, var_1.b.x, false))), func_4(Struct_3(-var_1.a, arg_1.a, -var_0.x, Struct_2(arg_1.a.x, arg_1)), _wgslsmith_f_op_f32(var_1.d.b.b.x * -1000f), var_1.d.b.c, Struct_3(~vec4<i32>(arg_1.e.x, var_0.x, -42877i, arg_1.e.x), vec4<bool>(true, false, arg_1.a.x, var_1.b.x), var_0.x, Struct_2(true, Struct_1(vec4<bool>(true, true, var_1.b.x, arg_1.a.x), vec2<f32>(126f, 1003f), 29962u, arg_1.d, var_1.a.zz)))), func_5(Struct_5(func_4(Struct_3(var_0, vec4<bool>(false, arg_1.a.x, var_1.b.x, false), -1i, Struct_2(arg_1.a.x, var_1.d.b)), -348f, arg_2, Struct_3(var_1.a, vec4<bool>(arg_1.a.x, false, false, false), u_input.a.x, Struct_2(true, var_1.d.b))).d, func_5(Struct_5(vec2<u32>(0u, 4294967295u), var_1.d, true), Struct_4(75647u, Struct_2(var_1.d.a, Struct_1(vec4<bool>(true, var_1.d.b.a.x, true, var_1.d.a), vec2<f32>(arg_3, 1399f), 0u, arg_1.d, vec2<i32>(arg_1.e.x, var_0.x))), vec4<f32>(-1000f, arg_0, arg_1.b.x, arg_3), vec2<u32>(arg_2, arg_2)), Struct_1(vec4<bool>(var_1.b.x, arg_1.a.x, arg_1.a.x, false), vec2<f32>(-343f, arg_0), var_1.d.b.c, arg_2, vec2<i32>(var_1.c, -12998i)), var_1.d.b.a.x), -2147483647i <= var_1.d.b.e.x), func_4(Struct_3(vec4<i32>(-1i, 26843i, -8339i, var_0.x), arg_1.a, 1i, Struct_2(false, arg_1)), -1469f, 1u, Struct_3(vec4<i32>(-15928i, var_0.x, u_input.a.x, u_input.a.x), vec4<bool>(var_1.b.x, var_1.b.x, arg_1.a.x, arg_1.a.x), arg_1.e.x, var_1.d)), Struct_1(!vec4<bool>(var_1.d.a, true, false, false), arg_1.b, ~arg_1.c, 4294967295u, vec2<i32>(-2147483647i, var_0.x)), arg_1.a.x).b, true).b.e.x, Struct_2(any(!arg_1.a.yxx), func_5(Struct_5(func_4(Struct_3(vec4<i32>(u_input.a.x, -26598i, u_input.a.x, u_input.a.x), arg_1.a, var_1.d.b.e.x, var_1.d), arg_0, 82449u, Struct_3(var_1.a, vec4<bool>(arg_1.a.x, var_1.d.b.a.x, arg_1.a.x, true), var_0.x, Struct_2(var_1.b.x, global0[_wgslsmith_index_u32(36935u, 31u)]))).d, func_2(), false), Struct_4(~26316u, func_4(Struct_3(vec4<i32>(u_input.a.x, 2147483647i, var_0.x, var_1.d.b.e.x), arg_1.a, -2147483647i, var_1.d), global1[_wgslsmith_index_u32(var_1.d.b.d, 26u)], 9952u, Struct_3(var_1.a, var_1.b, var_1.a.x, Struct_2(arg_1.a.x, var_1.d.b))).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_3, var_1.d.b.b.x, var_1.d.b.b.x) * vec4<f32>(var_1.d.b.b.x, global1[_wgslsmith_index_u32(36895u, 26u)], arg_3, arg_0)), ~vec2<u32>(1u, var_1.d.b.d)), arg_1, false).b));
    var var_3 = Struct_2(any(arg_1.a.zyx), Struct_1(func_2().b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.d.b.b - var_2.d.b.b))) + var_1.d.b.b), min(1u, _wgslsmith_sub_u32(1u, var_1.d.b.c)), arg_1.c, ~var_1.d.b.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(vec2<u32>(7906u, 1u), Struct_2(false, global0[_wgslsmith_index_u32(0u, 31u)]), false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(72947u, 26u)])) - global1[_wgslsmith_index_u32(func_2().b.c, 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -797f))), global0[_wgslsmith_index_u32(select(~79152u, ~9540u, true), 31u)], _wgslsmith_mod_u32(4294967295u, ~4294967295u ^ func_4(Struct_3(vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.a.x), vec4<bool>(true, false, true, false), 0i, Struct_2(false, global0[_wgslsmith_index_u32(1u, 31u)])), func_5(Struct_5(vec2<u32>(4294967295u, 49557u), Struct_2(true, global0[_wgslsmith_index_u32(9232u, 31u)]), true), Struct_4(30054u, Struct_2(true, global0[_wgslsmith_index_u32(56021u, 31u)]), vec4<f32>(653f, global1[_wgslsmith_index_u32(26898u, 26u)], global1[_wgslsmith_index_u32(46050u, 26u)], -464f), vec2<u32>(0u, 26986u)), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -440f), 68231u, 1u, vec2<i32>(-963i, u_input.a.x)), false).b.b.x, 1u, Struct_3(vec4<i32>(u_input.a.x, -10242i, 2147483647i, u_input.a.x), vec4<bool>(false, true, true, false), -1i, Struct_2(true, Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(global1[_wgslsmith_index_u32(0u, 26u)], -442f), 1u, 4294967295u, vec2<i32>(-9631i, u_input.a.x))))).b.b.c), _wgslsmith_f_op_f32(func_1(Struct_5(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(1u, 14543u)), ~vec2<u32>(49095u, 20127u)), Struct_2(global1[_wgslsmith_index_u32(4854u, 26u)] != global1[_wgslsmith_index_u32(0u, 26u)], func_4(Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<bool>(false, false, true, true), u_input.a.x, Struct_2(false, Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(568f, 1092f), 106525u, 1u, u_input.a))), -383f, 4294967295u, Struct_3(vec4<i32>(0i, 89596i, 22436i, -15700i), vec4<bool>(false, false, false, false), u_input.a.x, Struct_2(false, global0[_wgslsmith_index_u32(1u, 31u)]))).b.b), all(func_2().b.a))))));
    var var_1 = 40926u;
    global1 = array<f32, 26>();
    let var_2 = func_4(Struct_3(vec4<i32>(u_input.a.x, 0i, 1i | min(u_input.a.x, u_input.a.x), u_input.a.x), vec4<bool>(true | all(vec2<bool>(true, false)), true, true, !any(vec3<bool>(true, true, true))), 2147483647i, Struct_2(true, func_5(Struct_5(vec2<u32>(1u, 4294967295u), Struct_2(false, Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(global1[_wgslsmith_index_u32(39782u, 26u)], -1314f), 0u, 4294967295u, vec2<i32>(-1i, u_input.a.x))), true), func_4(Struct_3(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 3439i), vec4<bool>(false, true, true, false), -8259i, Struct_2(true, Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(global1[_wgslsmith_index_u32(0u, 26u)], var_0), 0u, 7713u, u_input.a))), 340f, 1u, Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -49283i), vec4<bool>(true, false, false, true), u_input.a.x, Struct_2(true, global0[_wgslsmith_index_u32(1u, 31u)]))), func_5(Struct_5(vec2<u32>(4294967295u, 1844u), Struct_2(true, Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(639f, -763f), 52069u, 29884u, vec2<i32>(u_input.a.x, u_input.a.x))), true), Struct_4(41467u, Struct_2(true, global0[_wgslsmith_index_u32(0u, 31u)]), vec4<f32>(-1000f, -828f, 1325f, global1[_wgslsmith_index_u32(1u, 26u)]), vec2<u32>(4294967295u, 19133u)), global0[_wgslsmith_index_u32(4294967295u, 31u)], true).b, true).b)), func_5(Struct_5(vec2<u32>(1u, 1u), Struct_2(true, global0[_wgslsmith_index_u32(countOneBits(0u), 31u)]), false), Struct_4(13392u, Struct_2(any(vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(var_0, 272f), 50030u, 58566u, vec2<i32>(u_input.a.x, -1i))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-694f, var_0, -1148f, global1[_wgslsmith_index_u32(24573u, 26u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(24916u, 26u)], var_0, 203f, global1[_wgslsmith_index_u32(61799u, 26u)]) + vec4<f32>(-234f, -2248f, -172f, var_0)))), vec2<u32>(1u, _wgslsmith_mod_u32(26006u, 55033u))), Struct_1(!func_4(Struct_3(vec4<i32>(-47734i, -20475i, -8259i, 1i), vec4<bool>(true, false, true, false), u_input.a.x, Struct_2(true, Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(var_0, var_0), 1u, 47226u, vec2<i32>(u_input.a.x, -13443i)))), global1[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, Struct_3(vec4<i32>(40253i, -1i, u_input.a.x, 4182i), vec4<bool>(true, true, true, false), u_input.a.x, Struct_2(true, Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-2074f, 184f), 0u, 0u, vec2<i32>(u_input.a.x, u_input.a.x))))).b.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(49071u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]))), 1u, ~func_5(Struct_5(vec2<u32>(1u, 63958u), Struct_2(false, Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(1794f, var_0), 31236u, 4294967295u, u_input.a)), true), Struct_4(39907u, Struct_2(false, Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -1110f), 0u, 65595u, u_input.a)), vec4<f32>(var_0, var_0, -480f, -1000f), vec2<u32>(4294967295u, 9740u)), global0[_wgslsmith_index_u32(3540u, 31u)], false).b.d, _wgslsmith_clamp_vec2_i32(min(vec2<i32>(7627i, u_input.a.x), u_input.a), vec2<i32>(1i, u_input.a.x), -u_input.a)), all(!func_4(Struct_3(vec4<i32>(u_input.a.x, -15216i, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, false), u_input.a.x, Struct_2(true, Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(var_0, global1[_wgslsmith_index_u32(21811u, 26u)]), 9169u, 40358u, u_input.a))), global1[_wgslsmith_index_u32(63666u, 26u)], 13971u, Struct_3(vec4<i32>(u_input.a.x, 7345i, -47643i, -42970i), vec4<bool>(false, false, true, true), -1i, Struct_2(true, global0[_wgslsmith_index_u32(0u, 31u)]))).b.b.a.wxw)).b.b.x, _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(14947u, 50013u, 26038u)), reverseBits(min(reverseBits(vec3<u32>(91598u, 0u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(100308u, 4294967295u, 4294967295u), vec3<u32>(1u, 20605u, 3750u))))), Struct_3(select(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, -2499i)), ~vec4<i32>(33637i, u_input.a.x, u_input.a.x, 0i)), max(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -12199i, u_input.a.x, u_input.a.x), vec4<i32>(20586i, u_input.a.x, 0i, -42298i)), reverseBits(vec4<i32>(u_input.a.x, 1287i, u_input.a.x, u_input.a.x))), true), vec4<bool>(true, true, true, true), _wgslsmith_mod_i32(u_input.a.x, countOneBits(62248i)), Struct_2(true, func_5(Struct_5(vec2<u32>(0u, 4294967295u), Struct_2(true, global0[_wgslsmith_index_u32(79893u, 31u)]), true), Struct_4(4294967295u, Struct_2(true, global0[_wgslsmith_index_u32(0u, 31u)]), vec4<f32>(var_0, global1[_wgslsmith_index_u32(8387u, 26u)], 1683f, var_0), vec2<u32>(139641u, 996u)), Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(-419f, var_0), 39738u, 14558u, u_input.a), u_input.a.x < u_input.a.x).b)));
    global1 = array<f32, 26>();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.b.e.x, -13423i, -2147483647i), vec3<i32>(var_2.b.b.e.x, var_2.b.b.e.x, -24391i))), min(u_input.a.x, 67357i)), -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_2.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(57094u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], -529f, -411f))))));
}

