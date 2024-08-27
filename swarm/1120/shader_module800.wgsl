struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, true, false, false, false, false);

var<private> global2: Struct_2 = Struct_2(false, vec3<i32>(1i, -1i, 20152i), 1i);

var<private> global3: array<i32, 17> = array<i32, 17>(9138i, 0i, -30691i, 2147483647i, 52090i, 1i, 1i, 0i, 1i, -6730i, 1i, -29722i, -1i, 1614i, 16313i, 2147483647i, 0i);

var<private> global4: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(26311u, 1u, 0u, 4294967295u), vec4<u32>(1u, 20922u, 0u, 10021u), vec4<u32>(0u, 4294967295u, 4294967295u, 41346u), vec4<u32>(0u, 8896u, 0u, 1u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(68185u, 0u, 55812u, 22751u), vec4<u32>(29741u, 56397u, 1331u, 4294967295u), vec4<u32>(4294967295u, 99450u, 1u, 4294967295u), vec4<u32>(26806u, 1u, 4294967295u, 23074u), vec4<u32>(4294967295u, 15177u, 13518u, 4294967295u), vec4<u32>(37613u, 4294967295u, 79048u, 42935u), vec4<u32>(2622u, 25780u, 36276u, 1u), vec4<u32>(1u, 1u, 1977u, 4294967295u), vec4<u32>(0u, 82829u, 4294967295u, 18419u), vec4<u32>(23221u, 1u, 4294967295u, 59882u), vec4<u32>(1u, 70647u, 27805u, 13663u), vec4<u32>(38116u, 32751u, 196u, 30964u), vec4<u32>(1u, 65151u, 44757u, 29235u), vec4<u32>(43447u, 41047u, 0u, 0u), vec4<u32>(37261u, 11009u, 39143u, 4294967295u), vec4<u32>(4294967295u, 24470u, 25439u, 10320u), vec4<u32>(44926u, 55400u, 17174u, 51103u), vec4<u32>(4294967295u, 6527u, 20176u, 12666u), vec4<u32>(19876u, 33207u, 25475u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 109423u), vec4<u32>(40396u, 18516u, 4294967295u, 1836u), vec4<u32>(24583u, 65062u, 101014u, 4294967295u), vec4<u32>(108786u, 0u, 34322u, 85398u), vec4<u32>(1u, 39037u, 26348u, 53568u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_clamp_i32(0i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(firstTrailingBit(~vec3<u32>(74665u, 28763u, arg_1))), min(abs(~vec3<u32>(arg_1, 15434u, 4294967295u)), vec3<u32>(firstTrailingBit(arg_1), 1u, arg_1 | arg_1))), 17u)], ~abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(25427i, global0.c), global0.b.x)));
    global3 = array<i32, 17>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(324f, arg_0) - vec2<f32>(arg_0, arg_0)) * vec2<f32>(arg_0, 720f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1626f, -223f) - vec2<f32>(-1684f, arg_0))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0)))), -575f)));
    let var_2 = Struct_1(!select(vec2<bool>(true, false), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], false), vec2<bool>(global2.a, true), true), vec2<bool>(true, true)), (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, arg_1, 1u), vec3<u32>(2003u, 39366u, 0u)), vec3<u32>(81324u, arg_1, 0u)) << (countOneBits(vec3<u32>(arg_1, 17131u, 31673u)) % vec3<u32>(32u))) | ~(~max(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(0u, 4294967295u, 66941u))), 1f, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(global0.b.yy, vec2<i32>(0i, ~u_input.a.x)), _wgslsmith_div_vec2_i32(global0.b.xy, ~_wgslsmith_div_vec2_i32(global2.b.yy, vec2<i32>(global3[_wgslsmith_index_u32(0u, 17u)], global2.c))), select(vec2<i32>(firstLeadingBit(global0.b.x), -4595i), vec2<i32>(-global2.b.x, _wgslsmith_add_i32(9006i, global3[_wgslsmith_index_u32(arg_1, 17u)])), false)));
    let var_3 = var_2.b.x;
    return var_2.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec2<i32> {
    global0 = Struct_2(true, vec3<i32>(arg_0.d.x, global3[_wgslsmith_index_u32(arg_2.x, 17u)], ~u_input.a.x), firstLeadingBit(~1i));
    var var_0 = _wgslsmith_sub_u32(4294967295u, ~(~1u));
    let var_1 = vec2<u32>(21246u, ~0u);
    let var_2 = ~(~(~arg_0.b.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1125f, _wgslsmith_f_op_f32(floor(arg_0.c)), 275f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)), arg_0.c, arg_0.c)));
    return vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global2.b.x ^ global3[_wgslsmith_index_u32(0u, 17u)], global0.c, min(global3[_wgslsmith_index_u32(var_2, 17u)], 1i)) | (_wgslsmith_mod_i32(-41075i, global2.b.x) << ((1u << (1u % 32u)) % 32u)), _wgslsmith_add_i32(~(-2147483647i), ~(-1i))), min(_wgslsmith_div_i32(global2.c, u_input.a.x), 11599i));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(select(!select(!vec2<bool>(global0.a, false), select(vec2<bool>(false, arg_0), vec2<bool>(false, false), global2.a), any(vec2<bool>(true, global2.a))), !vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(23065u, 7u)], global0.a, global0.a)), all(vec3<bool>(true, true, true))), all(vec2<bool>(true, false))), _wgslsmith_div_vec3_u32((select(vec3<u32>(2303u, 75378u, 51997u), vec3<u32>(88469u, 0u, 36922u), vec3<bool>(global1[_wgslsmith_index_u32(48200u, 7u)], true, global1[_wgslsmith_index_u32(23126u, 7u)])) >> (~vec3<u32>(1558u, 33842u, 1u) % vec3<u32>(32u))) >> (firstLeadingBit(vec3<u32>(0u, 1u, 1u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(59521u), 1u), 88135u, _wgslsmith_div_u32(max(0u, 4294967295u), 1u))), 1087f, func_4(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, false), arg_0), vec3<u32>(1u, 10044u, 1u), _wgslsmith_f_op_f32(-765f * 910f), vec2<i32>(1i, 0i)), !vec4<bool>(global1[_wgslsmith_index_u32(max(1u, 51835u), 7u)], func_3(1177f, 1u, false), true, arg_0), vec4<u32>(1u, ~90212u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 6961u, 5805u, 1u), vec4<u32>(4294967295u, 54687u, 0u, 22576u)) >> (84376u % 32u), 1u)));
    let var_1 = Struct_2(arg_0, -reverseBits(global2.b) ^ reverseBits(vec3<i32>(24029i, u_input.a.x, 21802i)), firstLeadingBit(1i) >> (var_0.b.x % 32u));
    var var_2 = var_0.c;
    var var_3 = Struct_2(9665u == var_0.b.x, reverseBits(u_input.a), _wgslsmith_dot_vec2_i32(global0.b.yz, global0.b.yy));
    var var_4 = var_1;
    return var_0.b.x & 0u;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = true;
    let var_1 = abs(vec2<u32>(1u, 1u));
    var var_2 = func_2(true);
    let var_3 = select(select(vec4<bool>(!any(vec2<bool>(arg_0.x, global0.a)), all(!vec3<bool>(global2.a, global0.a, global2.a)), !(!global0.a), !any(vec2<bool>(false, true))), !(!select(vec4<bool>(arg_0.x, arg_0.x, global0.a, global2.a), vec4<bool>(false, true, true, true), vec4<bool>(global0.a, arg_0.x, global1[_wgslsmith_index_u32(var_1.x, 7u)], global0.a))), !select(all(vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 7u)], true)), global0.a, false && global1[_wgslsmith_index_u32(15233u, 7u)])), select(vec4<bool>(var_1.x >= ~var_1.x, !all(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 7u)], arg_0.x, arg_0.x)), any(!vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 7u)], global1[_wgslsmith_index_u32(10544u, 7u)])), any(vec3<bool>(false, false, true))), !vec4<bool>(!global2.a, arg_0.x, true, false), vec4<bool>(arg_0.x, !global0.a || true, select(false, all(vec3<bool>(true, true, true)), false), false)), false);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3823f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))));
    return Struct_1(select(!vec2<bool>(!arg_0.x, true), select(select(arg_0.zz, vec2<bool>(true, true), true), vec2<bool>(true, global0.c > global0.c), var_3.xz), var_3.wy), vec3<u32>(53448u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(36951u, var_1.x, 20993u), vec3<u32>(0u, 34631u, var_1.x))), 21720u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-502f - 285f)))))), vec2<i32>(global0.b.x, u_input.a.x));
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global4 = array<vec4<u32>, 29>();
    var var_0 = arg_1.x;
    var var_1 = Struct_1(vec2<bool>(any(select(select(arg_2.a, arg_2.a, global1[_wgslsmith_index_u32(arg_0, 7u)]), vec2<bool>(global0.a, false), false)), _wgslsmith_f_op_f32(-539f * -275f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(1232f - arg_2.c), 760f)), vec3<u32>(reverseBits(39609u) ^ arg_0, _wgslsmith_dot_vec2_u32(~arg_1, firstLeadingBit(vec2<u32>(0u, arg_0)) & arg_2.b.yx), _wgslsmith_clamp_u32(arg_0 ^ arg_2.b.x, arg_1.x, 4294967295u) << (~min(arg_2.b.x, 17541u) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_add_vec2_i32(vec2<i32>(-global0.b.x << (~50466u % 32u), select(1i, _wgslsmith_mod_i32(-1i, arg_3.x), true)), _wgslsmith_mod_vec2_i32(~(arg_3.ww | vec2<i32>(global3[_wgslsmith_index_u32(70850u, 17u)], 35925i)), vec2<i32>(~global3[_wgslsmith_index_u32(34490u, 17u)], _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, u_input.a.x), global0.b.yz)))));
    var var_2 = Struct_2(false || global2.a, vec3<i32>(2147483647i, _wgslsmith_sub_i32(arg_3.x, arg_2.d.x), arg_2.d.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~var_1.d.x, _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(u_input.a.x))), global0.b.x));
    global3 = array<i32, 17>();
    return Struct_1(vec2<bool>(abs(func_4(Struct_1(arg_2.a, vec3<u32>(var_1.b.x, 15340u, var_1.b.x), arg_2.c, global0.b.zy), vec4<bool>(global2.a, false, global0.a, global1[_wgslsmith_index_u32(1u, 7u)]), vec4<u32>(66012u, arg_2.b.x, 1u, 17695u)).x) != _wgslsmith_dot_vec4_i32(vec4<i32>(21921i, var_2.b.x, arg_3.x, -1i), arg_3 << (vec4<u32>(74468u, var_1.b.x, 24932u, var_1.b.x) % vec4<u32>(32u))), _wgslsmith_div_f32(1137f, _wgslsmith_f_op_f32(round(var_1.c))) == 878f), reverseBits(_wgslsmith_add_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.b.x, 4294967295u), var_1.b)), _wgslsmith_sub_vec3_u32(~var_1.b, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 29824u, arg_2.b.x), var_1.b)))), -1293f, arg_2.d ^ vec2<i32>(_wgslsmith_mod_i32(var_1.d.x << (42672u % 32u), -29219i), -_wgslsmith_sub_i32(-5919i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1486f, -230f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(331f, -1000f)), _wgslsmith_f_op_f32(695f - -1721f)))), !global1[_wgslsmith_index_u32(36702u, 7u)])), 1f, 789f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-300f)))));
    global4 = array<vec4<u32>, 29>();
    global4 = array<vec4<u32>, 29>();
    let var_1 = Struct_2(false, -global0.b, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, select(countOneBits(2147483647i), reverseBits(global0.c), true && global1[_wgslsmith_index_u32(4294967295u, 7u)]), global3[_wgslsmith_index_u32(0u, 17u)]), reverseBits(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(global2.b.x, u_input.a.x)))));
    var var_2 = func_5(32576u, countOneBits(vec2<u32>(~reverseBits(4294967295u), abs(~1u))), func_1(vec3<bool>(var_1.a, all(!vec4<bool>(true, var_1.a, true, true)), any(select(vec3<bool>(global0.a, false, global2.a), vec3<bool>(global2.a, true, global2.a), false)))), -(-(~vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(880u, 17u)], 20883i, -22758i)) >> (~(~global4[_wgslsmith_index_u32(15188u, 29u)]) % vec4<u32>(32u))));
    let var_3 = -1i;
    var var_4 = _wgslsmith_sub_vec4_u32(~global4[_wgslsmith_index_u32(37033u, 29u)], vec4<u32>(56618u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 95355u, var_2.b.x, 1u), vec4<u32>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x)), firstTrailingBit(1u)) ^ var_2.b.x, 1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b & _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(global2.b, select(global0.b, vec3<i32>(19846i, 7646i, u_input.a.x), vec3<bool>(var_2.a.x, false, global2.a))), abs(_wgslsmith_mod_vec3_i32(u_input.a, global2.b))), var_0.yzx);
}

