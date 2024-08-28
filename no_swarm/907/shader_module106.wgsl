struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(i32(-2147483648), 0i), 6691u, vec4<f32>(-439f, 1324f, -396f, 1000f), 277f, vec2<f32>(351f, -369f)), Struct_1(vec2<i32>(46523i, -1407i), 1u, vec4<f32>(1229f, -1611f, 538f, 294f), 1376f, vec2<f32>(1237f, 1000f)), Struct_1(vec2<i32>(-1i, -29622i), 1u, vec4<f32>(1116f, -1800f, -1500f, -976f), 537f, vec2<f32>(658f, 438f)), Struct_1(vec2<i32>(32640i, 2147483647i), 4294967295u, vec4<f32>(-1735f, 2232f, -1077f, -729f), -405f, vec2<f32>(858f, 410f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 0u, vec4<f32>(1195f, -730f, 1033f, -1567f), 1000f, vec2<f32>(-1000f, -254f)), Struct_1(vec2<i32>(72632i, 41836i), 4294967295u, vec4<f32>(-1135f, 366f, 130f, -555f), 1935f, vec2<f32>(922f, 773f)), Struct_1(vec2<i32>(2147483647i, 7030i), 23468u, vec4<f32>(-1440f, -1671f, 672f, 691f), 564f, vec2<f32>(812f, -527f)), Struct_1(vec2<i32>(0i, 2147483647i), 1u, vec4<f32>(808f, 472f, -791f, -313f), -792f, vec2<f32>(-932f, -986f)), Struct_1(vec2<i32>(1i, 2147483647i), 26305u, vec4<f32>(-827f, -932f, 811f, 892f), -1185f, vec2<f32>(170f, 942f)), Struct_1(vec2<i32>(-34367i, -30275i), 17977u, vec4<f32>(-1478f, -1553f, 1000f, 617f), -837f, vec2<f32>(-1592f, -1556f)), Struct_1(vec2<i32>(31192i, -1i), 1u, vec4<f32>(-1191f, 994f, -1993f, -598f), 1814f, vec2<f32>(-1000f, 1515f)), Struct_1(vec2<i32>(-1i, 2147483647i), 26274u, vec4<f32>(-404f, 1213f, -1055f, 496f), -592f, vec2<f32>(-516f, 1000f)), Struct_1(vec2<i32>(1i, 24963i), 1u, vec4<f32>(691f, -969f, -274f, -176f), -555f, vec2<f32>(-797f, 533f)), Struct_1(vec2<i32>(-1i, -51437i), 0u, vec4<f32>(755f, -1256f, -934f, -668f), -378f, vec2<f32>(-1302f, 659f)), Struct_1(vec2<i32>(-1i, -8296i), 0u, vec4<f32>(-1728f, 206f, 724f, -1033f), 550f, vec2<f32>(-1029f, -675f)), Struct_1(vec2<i32>(18621i, 85839i), 1u, vec4<f32>(1000f, 681f, -586f, -299f), 115f, vec2<f32>(366f, 1600f)), Struct_1(vec2<i32>(i32(-2147483648), 1i), 4294967295u, vec4<f32>(-825f, 1000f, 608f, -1588f), 543f, vec2<f32>(-923f, 2302f)), Struct_1(vec2<i32>(-19676i, 4224i), 17826u, vec4<f32>(645f, -883f, 2125f, -1000f), -1207f, vec2<f32>(1718f, -1073f)), Struct_1(vec2<i32>(-8267i, i32(-2147483648)), 1u, vec4<f32>(858f, -311f, -515f, -1553f), 558f, vec2<f32>(-763f, 1098f)), Struct_1(vec2<i32>(0i, 41756i), 73188u, vec4<f32>(-189f, -1000f, 1289f, -103f), 1880f, vec2<f32>(948f, 428f)), Struct_1(vec2<i32>(-1443i, i32(-2147483648)), 1u, vec4<f32>(1147f, 655f, -804f, 768f), 1000f, vec2<f32>(295f, 1223f)), Struct_1(vec2<i32>(-1i, 30253i), 46991u, vec4<f32>(-617f, 2301f, 942f, 710f), -2432f, vec2<f32>(-446f, 1000f)), Struct_1(vec2<i32>(i32(-2147483648), 50038i), 1u, vec4<f32>(-2111f, -468f, 761f, -718f), 1070f, vec2<f32>(308f, -323f)), Struct_1(vec2<i32>(12073i, 15632i), 1u, vec4<f32>(551f, 857f, -1840f, 921f), -528f, vec2<f32>(-1000f, -1343f)), Struct_1(vec2<i32>(1i, 32646i), 1u, vec4<f32>(382f, 256f, -851f, 1367f), -469f, vec2<f32>(-923f, 646f)), Struct_1(vec2<i32>(-27223i, 14574i), 1u, vec4<f32>(-115f, 1487f, 172f, 1588f), -803f, vec2<f32>(441f, -958f)));

var<private> global3: i32 = 2147483647i;

var<private> global4: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(vec2<i32>(reverseBits(9936i), (~u_input.a.x >> (_wgslsmith_sub_u32(4294967295u, 1u) % 32u)) | u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(0u, 6000u))), select(~vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(27275u, 65304u)), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), 55301u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) + _wgslsmith_f_op_f32(round(324f))), _wgslsmith_f_op_f32(-329f + _wgslsmith_f_op_f32(f32(-1f) * -1242f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f + 919f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-511f)), _wgslsmith_f_op_f32(1233f + -846f))), 292f), vec2<f32>(1f, -966f));
    var var_1 = min(vec4<i32>(40800i, var_0.a.x, 0i, var_0.a.x), reverseBits(_wgslsmith_add_vec4_i32(~select(vec4<i32>(-8998i, var_0.a.x, -11887i, var_0.a.x), vec4<i32>(u_input.a.x, 15635i, 38157i, 12581i), false), vec4<i32>(~(-1041i), -2147483647i, -7722i, _wgslsmith_sub_i32(u_input.a.x, -1i)))));
    var var_2 = firstLeadingBit(min(~(~(~vec2<u32>(var_0.b, var_0.b))), ~(~select(vec2<u32>(var_0.b, 8023u), vec2<u32>(4294967295u, var_0.b), vec2<bool>(true, true)))));
    let var_3 = global2[_wgslsmith_index_u32(var_2.x, 26u)];
    var var_4 = var_1.yyy;
    return _wgslsmith_div_vec4_i32(countOneBits(select(vec4<i32>(var_1.x, -2147483647i, 20893i, 2147483647i), firstTrailingBit(vec4<i32>(var_4.x, u_input.a.x, var_1.x, var_4.x)), vec4<bool>(true, true, true, true))) << (~(select(vec4<u32>(4294967295u, 1u, var_3.b, 30172u), vec4<u32>(83028u, var_3.b, 1u, 4294967295u), false) & _wgslsmith_mult_vec4_u32(vec4<u32>(9129u, 35138u, var_0.b, 0u), vec4<u32>(var_2.x, var_2.x, 15067u, 52082u))) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(var_3.a.x, u_input.a.x, var_3.a.x, -32570i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-27802i, var_3.a.x, -5944i, 5471i), vec4<i32>(2147483647i, 0i, var_0.a.x, var_1.x))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec4_i32(min(vec4<i32>(max(-2147483647i, u_input.a.x), 2147483647i, arg_0.a.x, 2147483647i), reverseBits(vec4<i32>(u_input.a.x, arg_0.a.x, 1i, 1i) >> (vec4<u32>(arg_0.b, 4294967295u, 0u, arg_2.b) % vec4<u32>(32u)))), vec4<i32>(arg_0.a.x, _wgslsmith_clamp_i32(arg_2.a.x, max(-1i, arg_2.a.x), -15346i & arg_0.a.x), i32(-1i) * -11192i, 15263i)) & countOneBits(-vec4<i32>(arg_2.a.x & -2147483647i, ~5338i, -20154i, 8062i));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~arg_1, arg_1 << (0u % 32u), _wgslsmith_clamp_u32(arg_2.b, 1u, 1u), 4294967295u), ~vec4<u32>(~arg_2.b, abs(155304u), ~4294967295u, ~73941u)) << (select(_wgslsmith_dot_vec3_u32(vec3<u32>(20824u, select(1u, 91426u, true), arg_1 << (arg_0.b % 32u)), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_0.b, arg_2.b)), ~vec3<u32>(arg_1, arg_2.b, arg_2.b), abs(vec3<u32>(0u, 25892u, 0u)))), 0u, (~1u ^ ~arg_1) == arg_2.b) % 32u), 26u)];
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 20028u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, 55549u, arg_0.b), vec3<u32>(arg_2.b, 4294967295u, arg_0.b)) % vec3<u32>(32u)), vec3<u32>(~arg_0.b, ~arg_1, _wgslsmith_sub_u32(25670u, arg_0.b))), 49902u, arg_0.b);
    var_0 = _wgslsmith_mult_vec4_i32(-func_3(), vec4<i32>(var_0.x, -(~(-38075i)), ~(-63478i), ~(-775i)));
    var var_3 = any(vec4<bool>(true, true, true, true)) || false;
    return _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_2.x, 0u, arg_1), ~vec4<u32>(4294967295u, 4294967295u, 0u, arg_2.b)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, 0u, var_2.x, arg_2.b), vec4<u32>(arg_2.b, var_1.b, var_2.x, arg_2.b))), countOneBits(vec4<u32>(var_1.b, arg_0.b, 23782u, arg_2.b) >> (~vec4<u32>(1u, 0u, 4294967295u, 20925u) % vec4<u32>(32u)))), 27u)]);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(select(arg_3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.d)) + _wgslsmith_f_op_f32(abs(var_0.c.x))))), true));
    var var_2 = arg_3;
    return Struct_1(vec2<i32>(-max(arg_0, var_2.a.x) ^ reverseBits(~1i), -reverseBits(-1i)), ~countOneBits(1u), vec4<f32>(482f, var_2.c.x, var_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - arg_1))))), 2429f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(var_0.b, 9u)], ~0u, arg_3)).zz, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1014f))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(~reverseBits(vec2<i32>(-u_input.a.x, arg_0.a.x)), select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(28179u, 0u, arg_0.b, arg_0.b), vec4<u32>(5886u, 26203u, 44865u, arg_0.b)) | vec4<u32>(35107u, arg_0.b, 55653u, 31965u), vec4<u32>(34521u, arg_0.b, _wgslsmith_mult_u32(8265u, 1u), arg_0.b)), arg_0.b, !(!(arg_0.b < 4306u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2840f))), _wgslsmith_f_op_f32(sign(func_4(~u_input.a.x, _wgslsmith_f_op_f32(min(649f, arg_0.d)), global1[_wgslsmith_index_u32(~arg_0.b, 9u)], func_4(-3435i, arg_2, Struct_1(vec2<i32>(u_input.a.x, 1i), arg_0.b, global0[_wgslsmith_index_u32(0u, 27u)], 249f, vec2<f32>(arg_2, -551f)), Struct_1(vec2<i32>(-26141i, 20980i), arg_0.b, vec4<f32>(arg_2, arg_0.c.x, arg_2, 141f), arg_0.e.x, arg_0.c.zw))).d)), arg_2, -129f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -545f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-673f, arg_0.c.x)))))), arg_0.e);
    let var_1 = func_4(func_3().x, 315f, arg_0, global2[_wgslsmith_index_u32(~countOneBits(arg_0.b) & var_0.b, 26u)]);
    let var_2 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(var_1.b, arg_0.b) | countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, arg_0.b)))), (~_wgslsmith_add_vec2_u32(vec2<u32>(67901u, 18938u), vec2<u32>(var_1.b, arg_0.b)) << (vec2<u32>(_wgslsmith_mult_u32(arg_0.b, arg_0.b), ~40529u) % vec2<u32>(32u))) >> (min(~vec2<u32>(4294967295u, arg_0.b) ^ max(vec2<u32>(arg_0.b, 0u), vec2<u32>(12842u, var_0.b)), ~vec2<u32>(var_0.b, 1u)) % vec2<u32>(32u)));
    let var_3 = Struct_1(select(u_input.a, firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_1.a.x), vec2<i32>(-1i, -40015i))), select(vec2<bool>(-16785i <= arg_0.a.x, true), !vec2<bool>(false, arg_1), any(!vec4<bool>(true, false, arg_1, arg_1)))), func_4(func_4(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 22294i, var_0.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, 1i, -2147483647i, u_input.a.x), vec4<i32>(var_1.a.x, var_0.a.x, u_input.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(-var_0.c.x), var_1, var_1).a.x, _wgslsmith_f_op_f32(arg_2 - arg_2), func_4(i32(-1i) * -31655i, var_0.e.x, Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_f32(-var_1.d), vec2<f32>(arg_0.d, var_1.c.x)), global2[_wgslsmith_index_u32(1u, 26u)]), var_1).b, _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(func_4(2147483647i, arg_2, global1[_wgslsmith_index_u32(var_1.b, 9u)], Struct_1(u_input.a, var_0.b, vec4<f32>(var_1.d, 1000f, arg_0.e.x, 1744f), var_0.d, vec2<f32>(-1340f, -331f))).c, _wgslsmith_f_op_vec4_f32(-var_1.c), select(vec4<bool>(false, arg_1, false, true), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, false, true)))), vec4<f32>(-824f, _wgslsmith_f_op_f32(var_0.d * -1000f), -665f, _wgslsmith_f_op_f32(f32(-1f) * -2682f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(arg_2 + arg_0.c.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(1u, 9u)], arg_0.b, var_1)).x, var_1.e.x) + arg_0.c.x), arg_2));
    let var_4 = _wgslsmith_dot_vec2_u32(~var_2, ~var_2) << (_wgslsmith_add_u32(4294967295u, var_3.b) % 32u);
    return global2[_wgslsmith_index_u32(var_4, 26u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a);
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(vec2<i32>(abs(1i), var_1 << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b, 15534u, 0u), ~vec3<u32>(arg_0.b, arg_0.b, 0u)) % 32u)), 15989u, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0.e.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(select(2312f, 514f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -417f), arg_0.c.x), -1000f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1330f, -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, 900f), arg_0.c.zy)))))));
    global1 = array<Struct_1, 9>();
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_mod_u32(var_2.b, 26435u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(8889u, 62101u))), vec3<u32>(33681u, arg_0.b, arg_0.b) << (reverseBits(vec3<u32>(1u, arg_0.b, 0u)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(43154u, 44355u), arg_0.b & 0u), vec3<u32>(~1u, 4294967295u, 4294967295u))) < 0u;
    return func_5(func_4(~(_wgslsmith_clamp_i32(-16814i, arg_0.a.x, var_2.a.x) & 0i), _wgslsmith_f_op_f32(f32(-1f) * -511f), Struct_1(vec2<i32>(-var_1, -17015i ^ var_2.a.x), var_2.b, _wgslsmith_f_op_vec4_f32(func_2(Struct_1(var_2.a, 0u, vec4<f32>(arg_0.d, var_2.e.x, -911f, -468f), var_2.c.x, vec2<f32>(var_2.e.x, arg_0.d)), 0u, global2[_wgslsmith_index_u32(73468u, 26u)])), arg_0.c.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec2<i32>(var_2.a.x, var_2.a.x), 26152u, vec4<f32>(var_2.e.x, -1228f, arg_0.d, var_2.c.x), arg_0.c.x, arg_0.e), arg_0.b, global2[_wgslsmith_index_u32(~2937u, 26u)])).wx), arg_0), !var_3, _wgslsmith_div_f32(var_2.c.x, arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(1u, 9u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(112f + var_0.c.x) - var_0.c.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(329f, _wgslsmith_f_op_f32(round(var_0.e.x))))));
    let var_2 = global1[_wgslsmith_index_u32(~(~max(var_0.b, var_0.b & var_0.b) ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~var_0.b, func_5(global1[_wgslsmith_index_u32(8894u, 9u)], false, -930f).b), ~33386u, 15556u)), 9u)];
    let var_3 = global2[_wgslsmith_index_u32(15547u, 26u)];
    let var_4 = _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(trunc(var_3.d)));
    var_0 = global1[_wgslsmith_index_u32(var_3.b, 9u)];
    global3 = i32(-1i) * -1i;
    global3 = min(var_2.a.x, var_2.a.x);
    global2 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e, _wgslsmith_add_i32(-12001i, _wgslsmith_add_i32(~(-var_3.a.x), select(-16876i, 0i, false) | (var_0.a.x ^ var_0.a.x))), var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e.x)))), 51236i);
}

