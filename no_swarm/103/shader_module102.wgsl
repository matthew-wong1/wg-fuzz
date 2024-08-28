struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(vec3<u32>(6818u, 0u, 49046u), Struct_3(vec3<i32>(8824i, 5806i, -1i), Struct_1(false, vec4<u32>(40718u, 8266u, 4294967295u, 1u), vec3<bool>(false, false, false), -519f, 52503u), Struct_1(true, vec4<u32>(0u, 43533u, 0u, 20250u), vec3<bool>(true, false, false), 309f, 1u), vec2<i32>(-1i, 26879i))), Struct_5(vec3<u32>(0u, 4294967295u, 28396u), Struct_3(vec3<i32>(2147483647i, 20999i, -48050i), Struct_1(false, vec4<u32>(170u, 1u, 39047u, 30622u), vec3<bool>(false, false, true), 1493f, 14253u), Struct_1(true, vec4<u32>(1u, 3323u, 1935u, 1u), vec3<bool>(true, true, false), -781f, 80158u), vec2<i32>(2147483647i, -1i))), Struct_5(vec3<u32>(1u, 20400u, 76150u), Struct_3(vec3<i32>(15652i, 2147483647i, 0i), Struct_1(true, vec4<u32>(4294967295u, 1u, 1u, 1u), vec3<bool>(true, true, false), 719f, 9763u), Struct_1(true, vec4<u32>(4294967295u, 38845u, 69893u, 37279u), vec3<bool>(true, false, true), -1000f, 4294967295u), vec2<i32>(-26307i, 1i))), Struct_5(vec3<u32>(12967u, 1u, 17186u), Struct_3(vec3<i32>(1i, 1i, 2147483647i), Struct_1(false, vec4<u32>(3299u, 17792u, 0u, 4294967295u), vec3<bool>(true, true, false), -1000f, 1u), Struct_1(false, vec4<u32>(1u, 0u, 1u, 1u), vec3<bool>(false, false, false), -329f, 48747u), vec2<i32>(-17707i, 2147483647i))), Struct_5(vec3<u32>(68037u, 11109u, 4294967295u), Struct_3(vec3<i32>(14861i, i32(-2147483648), 2147483647i), Struct_1(true, vec4<u32>(4294967295u, 2249u, 13343u, 0u), vec3<bool>(true, true, true), 494f, 0u), Struct_1(true, vec4<u32>(145445u, 1u, 13030u, 17345u), vec3<bool>(false, true, false), 816f, 1u), vec2<i32>(26427i, 0i))), Struct_5(vec3<u32>(20184u, 13550u, 65204u), Struct_3(vec3<i32>(2147483647i, 1i, 42444i), Struct_1(true, vec4<u32>(10665u, 4294967295u, 14110u, 1059u), vec3<bool>(false, false, true), -1101f, 18558u), Struct_1(false, vec4<u32>(1u, 51532u, 102510u, 10016u), vec3<bool>(true, false, true), 543f, 50011u), vec2<i32>(21440i, 2147483647i))), Struct_5(vec3<u32>(0u, 5361u, 1u), Struct_3(vec3<i32>(i32(-2147483648), 1i, -38208i), Struct_1(true, vec4<u32>(44758u, 1u, 1u, 0u), vec3<bool>(true, false, true), -605f, 65413u), Struct_1(false, vec4<u32>(1u, 26459u, 0u, 4294967295u), vec3<bool>(false, true, false), -914f, 0u), vec2<i32>(24930i, -2765i))), Struct_5(vec3<u32>(41473u, 22524u, 4294967295u), Struct_3(vec3<i32>(-5984i, -19950i, 2147483647i), Struct_1(false, vec4<u32>(0u, 1u, 1u, 2367u), vec3<bool>(true, false, false), 284f, 4294967295u), Struct_1(true, vec4<u32>(1u, 44468u, 1u, 1u), vec3<bool>(false, true, true), -795f, 4294967295u), vec2<i32>(0i, -14215i))), Struct_5(vec3<u32>(0u, 19461u, 32682u), Struct_3(vec3<i32>(-1i, -5011i, -1285i), Struct_1(false, vec4<u32>(4294967295u, 0u, 99470u, 4294967295u), vec3<bool>(false, true, false), -932f, 54296u), Struct_1(false, vec4<u32>(13941u, 1u, 4294967295u, 1u), vec3<bool>(false, true, false), -1192f, 30778u), vec2<i32>(0i, -1i))), Struct_5(vec3<u32>(0u, 24049u, 1u), Struct_3(vec3<i32>(38797i, -1i, 0i), Struct_1(false, vec4<u32>(0u, 1u, 4294967295u, 1u), vec3<bool>(false, true, true), -718f, 0u), Struct_1(true, vec4<u32>(11307u, 0u, 22052u, 0u), vec3<bool>(false, true, true), 1384f, 16883u), vec2<i32>(20062i, i32(-2147483648)))), Struct_5(vec3<u32>(6491u, 2364u, 4294967295u), Struct_3(vec3<i32>(-874i, -35257i, 33604i), Struct_1(false, vec4<u32>(1632u, 0u, 0u, 4294967295u), vec3<bool>(true, true, false), 1000f, 13556u), Struct_1(false, vec4<u32>(11077u, 33300u, 60919u, 13755u), vec3<bool>(false, false, true), 1890f, 22209u), vec2<i32>(2147483647i, -53369i))));

var<private> global2: i32;

var<private> global3: vec4<f32>;

var<private> global4: bool = false;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, -1136f) * vec4<f32>(global3.x, global3.x, -466f, -144f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.x, -1732f, global3.x, 577f), vec4<f32>(1398f, 547f, 1000f, global3.x))), true)))))));
    let var_1 = Struct_5(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, _wgslsmith_sub_u32(0u, arg_0), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u))), abs(firstLeadingBit(~vec3<u32>(1u, arg_0, 18102u)))), Struct_3(u_input.a.zwx, Struct_1(true, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, global0[_wgslsmith_index_u32(88230u, 13u)], 1u), vec3<u32>(4294967295u, arg_1, arg_1)), _wgslsmith_add_u32(arg_0, global0[_wgslsmith_index_u32(0u, 13u)]), arg_0, ~arg_1), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), var_0.x, arg_1), Struct_1(true, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 19147u), vec4<u32>(arg_1, arg_1, arg_0, 0u), vec4<u32>(arg_0, arg_1, arg_0, arg_0)), vec3<bool>(true, true, true), 1000f, countOneBits(~1176u)), countOneBits(u_input.a.zy)));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 13u)], 41251u, 18955u), var_1.b.c.b) < _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.a, var_1.b.b.b.yww), abs(1u)), var_1.b.c.b, select(vec3<bool>(var_1.b.b.a, true, any(vec4<bool>(false, var_1.b.b.c.x, false, var_1.b.b.c.x))), !var_1.b.b.c, !var_1.b.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, -541f)) * _wgslsmith_f_op_f32(var_0.x - -743f))), 1u), _wgslsmith_mult_u32(0u & arg_1, countOneBits(arg_0)), Struct_1(true, vec4<u32>(4294967295u, (global0[_wgslsmith_index_u32(1u, 13u)] ^ global0[_wgslsmith_index_u32(1u, 13u)]) | 4294967295u, 0u, arg_1), var_1.b.b.c, var_1.b.b.d, ~abs(55651u)), ~(~(arg_0 << (~arg_0 % 32u))), arg_1);
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec2_u32(var_1.b.b.b.xw, vec2<u32>(countOneBits(global0[_wgslsmith_index_u32(arg_0, 13u)]) >> (_wgslsmith_div_u32(arg_1, var_1.a.x) % 32u), var_1.b.b.e)));
    var var_4 = var_2.a;
    return _wgslsmith_mod_u32(countOneBits(arg_0), _wgslsmith_dot_vec2_u32(~(~(var_4.b.xy >> (vec2<u32>(var_3.x, 0u) % vec2<u32>(32u)))), vec2<u32>(~var_3.x, 52089u)));
}

fn func_4(arg_0: u32, arg_1: bool) -> vec3<bool> {
    let var_0 = global3.x;
    var var_1 = Struct_1(true, select(reverseBits(~firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(72389u, 13u)], arg_0, 4294967295u, 62731u))), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 12727u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u), vec4<u32>(51147u, 1u, 16062u, 1u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, global0[_wgslsmith_index_u32(arg_0, 13u)], 1u, global0[_wgslsmith_index_u32(arg_0, 13u)]), vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 13u)], 13u)], global0[_wgslsmith_index_u32(10288u, 13u)]))), select(!select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, false, arg_1, false)), vec4<bool>(true, false, false, true), !(!vec4<bool>(false, arg_1, arg_1, arg_1)))), !vec3<bool>(!(!arg_1), select(true, false, all(vec4<bool>(false, true, arg_1, true))), false), -1014f, 27053u);
    global4 = arg_1;
    global2 = u_input.a.x;
    let var_2 = var_1.d;
    return vec3<bool>(!arg_1, true, all(vec3<bool>(!arg_1, var_1.a, select(var_1.a, arg_1, arg_1) & var_1.c.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = all(vec2<bool>(all(vec2<bool>(false, arg_0.x)), false));
    global2 = u_input.b;
    global4 = arg_0.x;
    global1 = array<Struct_5, 11>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-2209f)))), _wgslsmith_f_op_f32(floor(101f)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2966u, 13u)], 13u)] < (44072u >> (global0[_wgslsmith_index_u32(43349u, 13u)] % 32u)))))));
    return select(select(arg_0.xyz, func_4(func_3(~arg_1.x, 15009u), true), true), func_4(~countOneBits(arg_1.x & 24243u), any(vec3<bool>(true, arg_0.x || false, true))), func_4(firstLeadingBit(~4294967295u), arg_0.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_4(1538f);
    global2 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x));
    let var_2 = _wgslsmith_add_vec3_u32(abs(min(vec3<u32>(0u, arg_0.x, arg_2), vec3<u32>(4294967295u, arg_0.x, 1u))) ^ ~abs(vec3<u32>(91099u, arg_2, 10641u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 3354u), vec3<u32>(64017u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 13u)], 13u)], 0u)), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 13u)], 13u)], arg_2), _wgslsmith_div_u32(4294967295u, arg_0.x)), countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(4511u, 13u)], arg_0.x, 0u))));
    var_1 = -230f;
    return select(!select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), func_2(vec4<bool>(true, true, true, true), vec3<u32>(138153u, global0[_wgslsmith_index_u32(4294967295u, 13u)], arg_2)), true), vec3<bool>(true, false, false), false);
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    global2 = firstLeadingBit(-_wgslsmith_dot_vec2_i32(arg_1.yz, ~firstTrailingBit(vec2<i32>(arg_1.x, -16329i))));
    global4 = arg_0;
    var var_0 = Struct_1(false, ~(~(~(vec4<u32>(global0[_wgslsmith_index_u32(0u, 13u)], arg_3.x, 0u, 81082u) | arg_3))), vec3<bool>(arg_0, false, !(func_4(global0[_wgslsmith_index_u32(982u, 13u)], true).x | !arg_0)), _wgslsmith_div_f32(global3.x, 1340f), ~(~_wgslsmith_mult_u32(func_3(arg_3.x, arg_3.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 39969u, 66325u), vec3<u32>(global0[_wgslsmith_index_u32(3698u, 13u)], 5633u, 48048u)), 13u)])));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-178f)))))));
    global2 = abs(-2147483647i);
    return Struct_3(~u_input.a.zzx, Struct_1(!any(var_0.c), firstTrailingBit(select(vec4<u32>(72662u, 4294967295u, 1u, 21541u), reverseBits(vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 0u)), !arg_0)), !(!vec3<bool>(false, false, arg_0)), _wgslsmith_f_op_f32(var_1.a + global3.x), ~(~arg_3.x)), Struct_1(false, ~abs(~vec4<u32>(var_0.e, var_0.e, 4294967295u, 4294967295u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x))), 4294967295u), countOneBits(select(vec2<i32>(u_input.b, 2919i), ~vec2<i32>(-14096i, u_input.c.x), var_0.c.xz)) & vec2<i32>(_wgslsmith_add_i32(arg_2 & arg_2, i32(-1i) * -75598i), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(all(select(vec3<bool>(true, false, false), func_1(vec2<u32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18499u, 13u)], 13u)], 13u)], 13u)]), u_input.c.x, global0[_wgslsmith_index_u32(39455u, 13u)]), vec3<bool>(true, true, true))) || true, u_input.a | _wgslsmith_div_vec4_i32(vec4<i32>(14704i, -2147483647i, 38364i, 62029i) ^ u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, u_input.a))), u_input.b, ~vec4<u32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)]), 13u)], func_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37437u, 13u)], 13u)], global0[_wgslsmith_index_u32(62092u, 13u)]) << (28988u % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)] ^ (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22335u, 13u)], 13u)], 13u)] % 32u)), 13u)]));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a) >> (vec4<u32>(1u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 1u), 13u)], var_0.c.b.x), 8875u, 4294967295u) % vec4<u32>(32u)));
}

