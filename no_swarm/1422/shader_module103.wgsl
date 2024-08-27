struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(396f, -1000f, -559f, 669f), vec4<f32>(1000f, -641f, -218f, -523f), vec4<f32>(-1892f, -416f, -144f, 431f), vec4<f32>(-1790f, -1102f, -178f, -686f), vec4<f32>(-111f, 1859f, 1000f, -552f), vec4<f32>(-542f, -1242f, -571f, 791f), vec4<f32>(850f, 536f, 993f, -1128f), vec4<f32>(999f, -1345f, -1129f, -787f), vec4<f32>(253f, -1128f, -1443f, -205f), vec4<f32>(430f, -1196f, -2129f, -137f), vec4<f32>(-684f, 927f, -165f, 1384f), vec4<f32>(-136f, -1124f, -356f, 429f), vec4<f32>(-363f, -106f, -1106f, -993f), vec4<f32>(-1124f, 527f, 1021f, -1191f), vec4<f32>(758f, 195f, -1073f, 1261f), vec4<f32>(-1341f, 699f, 1004f, 284f), vec4<f32>(-421f, -253f, 1000f, -1283f), vec4<f32>(568f, 1836f, -120f, -1284f), vec4<f32>(-564f, 1541f, 968f, -1000f), vec4<f32>(-197f, -263f, 788f, 939f), vec4<f32>(-704f, 147f, 1346f, 151f));

var<private> global1: array<bool, 3>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    return ~_wgslsmith_div_u32(39491u, _wgslsmith_add_u32(arg_1, arg_1));
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, countOneBits(~7503u)), func_3(Struct_1(arg_0.a.zx, abs(1i)), ~max(~13298u, _wgslsmith_mod_u32(0u, 1u))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b, _wgslsmith_f_op_f32(abs(-788f)), 650f);
    let var_2 = abs(-_wgslsmith_mult_vec2_i32(max(min(vec2<i32>(16739i, u_input.c.x), u_input.c.xy), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.c.b.b, arg_0.c.d), u_input.c.xz)), firstTrailingBit(u_input.c.zx >> (vec2<u32>(arg_0.c.e, 47231u) % vec2<u32>(32u)))));
    let var_3 = -1000f;
    var var_4 = 4294967295u;
    return arg_0.a.x;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global1 = array<bool, 3>();
    return Struct_3(select(select(vec3<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 3u)], false)), true, false), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(38392u, 3u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(18124u, 3u)], false), global1[_wgslsmith_index_u32(u_input.a, 3u)])), !vec3<bool>(!global1[_wgslsmith_index_u32(18015u, 3u)], func_2(Struct_3(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0, 3u)], true), -351f, Struct_2(1u, Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), -47552i), Struct_1(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 3u)]), u_input.c.x), u_input.c.x, arg_0))), global1[_wgslsmith_index_u32(arg_0, 3u)])), -736f, Struct_2(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_0, arg_0, arg_0)), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(109138u, 17684u, 0u), vec3<u32>(1u, arg_0, u_input.a), vec3<u32>(arg_0, 58278u, 0u)), ~vec3<u32>(u_input.a, 1u, 8536u))), Struct_1(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 3u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, global1[_wgslsmith_index_u32(6150u, 3u)])), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c.x, u_input.b), u_input.b)), Struct_1(select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), u_input.c.x), u_input.c.x, 23402u));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> u32 {
    var var_0 = Struct_1(vec2<bool>(arg_0.c.c.a.x, global1[_wgslsmith_index_u32(~(~(902u | arg_2.a)), 3u)]), firstTrailingBit(reverseBits(-9722i)));
    let var_1 = func_1(61689u);
    var var_2 = func_1(arg_0.c.e >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(43063u, arg_0.c.e, 1u, var_1.c.e), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a, arg_1, 63518u, var_1.c.a), vec4<u32>(7010u, 50559u, 63976u, arg_2.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, arg_0.c.a, 84462u, 0u), vec4<u32>(4294967295u, 4294967295u, arg_2.e, arg_0.c.e), vec4<u32>(arg_1, 42920u, 19383u, 18648u))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0.c.a, 111470u), vec4<u32>(arg_2.e, arg_0.c.a, 0u, arg_1), vec4<u32>(21890u, var_1.c.a, 17602u, var_1.c.a)), ~vec4<u32>(u_input.a, 1u, 0u, 1u))) % 32u));
    let var_3 = func_1(1u).c.c;
    global1 = array<bool, 3>();
    return ~42074u;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    var var_0 = ~(~u_input.a);
    let var_1 = Struct_3(vec3<bool>(false | (abs(u_input.a) > firstLeadingBit(arg_3)), true, arg_1.b.a.x), -376f, func_1(u_input.a).c);
    global0 = array<vec4<f32>, 21>();
    return !var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 3>();
    var var_0 = Struct_1(vec2<bool>(!(!global1[_wgslsmith_index_u32(max(47853u, 4294967295u), 3u)]), select(all(!vec4<bool>(true, global1[_wgslsmith_index_u32(61891u, 3u)], false, global1[_wgslsmith_index_u32(u_input.a, 3u)])), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 19156u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), 3u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 3u)])), u_input.c.x);
    let var_1 = Struct_3(func_5(3445u, Struct_2(func_4(func_1(u_input.a), u_input.a | u_input.a, Struct_2(u_input.a, Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 3u)]), u_input.b), u_input.b, u_input.a), global1[_wgslsmith_index_u32(38945u, 3u)]), Struct_1(vec2<bool>(true, true), -1i), Struct_1(select(var_0.a, var_0.a, vec2<bool>(true, true)), -u_input.c.x), _wgslsmith_mult_i32(var_0.b >> (u_input.a % 32u), var_0.b), u_input.a), func_1(select(reverseBits(55215u), ~1u, true)).c.c, u_input.a), _wgslsmith_f_op_f32(-475f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-320f))))), func_1(~reverseBits(u_input.a)).c);
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c))), -2147483647i, 68197i, _wgslsmith_div_i32(_wgslsmith_add_i32(max(u_input.c.x, var_1.c.d), -var_0.b), reverseBits(var_1.c.b.b))), ~(-(abs(vec4<i32>(-1938i, var_1.c.c.b, -12024i, 1i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1.c.a, 4294967295u, u_input.a), vec4<u32>(10660u, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u)))));
    var_2 = !(!func_1(4294967295u).a);
    global1 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~u_input.a, _wgslsmith_add_u32(u_input.a, ~_wgslsmith_mod_u32(1u, u_input.a))));
}

