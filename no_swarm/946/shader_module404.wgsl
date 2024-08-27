struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(405f, -1000f, -1506f), vec2<u32>(1u, 1u)), Struct_1(vec3<f32>(-122f, -1435f, -676f), vec2<u32>(7491u, 64489u)), Struct_1(vec3<f32>(765f, 239f, 1000f), vec2<u32>(33733u, 14755u)), Struct_1(vec3<f32>(277f, -1000f, -276f), vec2<u32>(38614u, 8466u)), Struct_1(vec3<f32>(753f, 1919f, -1976f), vec2<u32>(0u, 15176u)), Struct_1(vec3<f32>(-1228f, -1523f, -269f), vec2<u32>(0u, 0u)), Struct_1(vec3<f32>(744f, 1242f, 1968f), vec2<u32>(10508u, 12509u)), Struct_1(vec3<f32>(-464f, -1038f, -1000f), vec2<u32>(49228u, 35887u)), Struct_1(vec3<f32>(1062f, 377f, 444f), vec2<u32>(76934u, 0u)), Struct_1(vec3<f32>(811f, 827f, -215f), vec2<u32>(20194u, 4294967295u)), Struct_1(vec3<f32>(-428f, -758f, -1000f), vec2<u32>(4294967295u, 126871u)), Struct_1(vec3<f32>(622f, -458f, 361f), vec2<u32>(73760u, 0u)), Struct_1(vec3<f32>(958f, 1416f, 1000f), vec2<u32>(12167u, 39890u)), Struct_1(vec3<f32>(509f, -187f, -1939f), vec2<u32>(74399u, 54921u)), Struct_1(vec3<f32>(-1114f, 2242f, -363f), vec2<u32>(24335u, 23551u)), Struct_1(vec3<f32>(330f, 1480f, -1685f), vec2<u32>(0u, 0u)), Struct_1(vec3<f32>(-1088f, 391f, -496f), vec2<u32>(8121u, 4294967295u)), Struct_1(vec3<f32>(-317f, -1470f, 737f), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<f32>(961f, 199f, 869f), vec2<u32>(1u, 13663u)), Struct_1(vec3<f32>(2186f, 139f, 903f), vec2<u32>(62275u, 4294967295u)), Struct_1(vec3<f32>(-1573f, -196f, 3051f), vec2<u32>(25017u, 10629u)), Struct_1(vec3<f32>(-1469f, -169f, 728f), vec2<u32>(11424u, 1u)), Struct_1(vec3<f32>(-1407f, -1408f, 1399f), vec2<u32>(34293u, 1u)), Struct_1(vec3<f32>(678f, 917f, 1000f), vec2<u32>(88365u, 0u)), Struct_1(vec3<f32>(-697f, 1134f, 619f), vec2<u32>(0u, 1u)), Struct_1(vec3<f32>(1109f, 209f, 679f), vec2<u32>(35749u, 7404u)));

var<private> global1: bool;

var<private> global2: vec2<u32>;

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = max(~arg_0.b.x, global2.x);
    var var_1 = global0[_wgslsmith_index_u32(arg_1, 26u)];
    let var_2 = arg_0;
    var var_3 = arg_0;
    return ~var_3.b.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = select(true, any(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)))), false);
    var var_0 = arg_0;
    let var_1 = u_input.b.zx;
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(global3.x, -2147483647i, 1i, -2147483647i) >> (vec4<u32>(73423u, 0u, global2.x, 24893u) % vec4<u32>(32u)), abs(vec4<i32>(var_1.x, -1i, 61998i, u_input.b.x))), min(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_1.x, var_1.x, global3.x) ^ vec4<i32>(u_input.a, u_input.b.x, global3.x, 1i), vec4<i32>(global3.x, -24246i, global3.x, global3.x)), firstLeadingBit(vec4<i32>(u_input.a, var_1.x, 51394i, global3.x)) >> (vec4<u32>(35980u, global2.x, var_0.b.x, global2.x) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(vec4<i32>(0i, global3.x, reverseBits(global3.x), abs(-6659i)), ~vec4<i32>(16651i, 0i, 0i, var_1.x)) << (vec4<u32>(~(~u_input.c.x), func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22939u, 27399u, arg_0.b.x), vec3<u32>(65220u, 20721u, arg_0.b.x)), 26u)], ~u_input.c.x, _wgslsmith_f_op_f32(-1611f * arg_0.a.x), ~var_1.x), 18852u, _wgslsmith_add_u32(arg_0.b.x, arg_0.b.x) << ((u_input.c.x >> (u_input.c.x % 32u)) % 32u)) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2018f), arg_0.a.x), vec3<f32>(var_0.a.x, 760f, _wgslsmith_f_op_f32(f32(-1f) * -1017f)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(false, false, false), true))))), ~var_0.b);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = global3.x;
    var var_1 = func_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1217f, 336f)), -1029f, _wgslsmith_f_op_f32(-767f * -725f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(713f, 188f, -121f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, 1127f, 847f)), true))), ~(~vec2<u32>(60468u, global2.x))));
    let var_2 = 14194u;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a)))));
    global1 = all(!vec3<bool>(true, any(arg_1), false));
    return Struct_1(var_1.a, vec2<u32>(~var_1.b.x, max(_wgslsmith_mod_u32(20641u, var_1.b.x), u_input.d.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = any(!select(!(!vec4<bool>(false, false, arg_3.x, arg_3.x)), !(!vec4<bool>(false, arg_3.x, true, arg_3.x)), true));
    global3 = u_input.b.zz;
    global1 = false;
    global0 = array<Struct_1, 26>();
    global2 = select(vec2<u32>(22012u, _wgslsmith_mod_u32(func_1(22485i, vec4<bool>(true, false, arg_3.x, true), u_input.b, global3.x).b.x, ~1u)) << (firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2.b.x, 1876u), _wgslsmith_sub_vec2_u32(arg_1.b, arg_1.b))) % vec2<u32>(32u)), func_1(15035i, vec4<bool>(true, (arg_0.x != arg_2.a.x) || (arg_2.b.x > arg_2.b.x), false && (global3.x < u_input.b.x), var_0), vec3<i32>(global3.x, abs(0i), -(~12205i)), global3.x).b, ~u_input.d.x < global2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), vec3<bool>(true, true, true), true));
    global1 = !((98196u ^ min(min(20093u, u_input.d.x), 6108u)) == global2.x);
    let var_1 = vec2<i32>(select(firstLeadingBit(u_input.b.x), u_input.b.x, true), u_input.b.x);
    let var_2 = ~global2.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f) + _wgslsmith_f_op_f32(-466f - -521f))), 788f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, 380f, -196f, -916f)), Struct_1(vec3<f32>(600f, -552f, 648f), vec2<u32>(global2.x, 4294967295u)), func_1(global3.x, vec4<bool>(true, true, true, false), vec3<i32>(0i, 1i, 2147483647i), -1i), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), 484f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1543f, _wgslsmith_f_op_f32(460f * -973f), _wgslsmith_div_f32(450f, -148f), 521f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1337f, 984f, 352f, 528f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(225f, -1799f, -1420f, 469f), vec4<f32>(-1276f, 224f, -311f, 1584f), vec4<bool>(true, true, true, false))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1221f, -316f, 1326f, -1322f) + vec4<f32>(-1596f, -1175f, 254f, -2299f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, 2005f, -666f, -1000f))))));
    var var_4 = vec3<bool>(all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true))) && (var_3.x < -1130f), !all(vec4<bool>(true, true, true, true)), !(_wgslsmith_sub_u32(global2.x, select(35465u, 0u, false)) < ~var_2));
    var var_5 = func_1(var_1.x, select(!select(!vec4<bool>(false, var_4.x, false, var_4.x), !vec4<bool>(true, false, var_4.x, false), var_4.x), select(!vec4<bool>(false, false, var_4.x, false), !select(vec4<bool>(var_4.x, var_4.x, var_4.x, false), vec4<bool>(var_4.x, var_4.x, false, var_4.x), vec4<bool>(var_4.x, false, false, true)), any(select(vec4<bool>(var_4.x, var_4.x, var_4.x, true), vec4<bool>(var_4.x, var_4.x, false, false), var_4.x))), !select(!vec4<bool>(var_4.x, var_4.x, true, false), select(vec4<bool>(var_4.x, var_4.x, var_4.x, false), vec4<bool>(var_4.x, true, var_4.x, var_4.x), var_4.x), select(vec4<bool>(var_4.x, true, var_4.x, var_4.x), vec4<bool>(var_4.x, false, var_4.x, var_4.x), var_4.x))), u_input.b | _wgslsmith_clamp_vec3_i32(-u_input.b, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, -33478i, -18264i), u_input.b, u_input.b), u_input.b), u_input.b), abs(-2147483647i));
    let var_6 = Struct_1(vec3<f32>(-1255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(919f - 594f) * _wgslsmith_f_op_f32(674f + 474f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.a.x), 2137f)), vec2<u32>(var_5.b.x, func_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_5.a)), u_input.c.yy)).b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~21771u, _wgslsmith_clamp_i32(~_wgslsmith_div_i32(reverseBits(-9392i), abs(u_input.a)), 1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.a ^ var_1.x), select(var_1.x, -2147483647i, true) | global3.x)), -189f);
}

