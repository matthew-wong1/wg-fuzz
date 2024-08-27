struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<i32, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: f32) -> vec3<bool> {
    global0 = array<u32, 29>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - arg_2.a.b.e)) - 1f);
    global1 = array<i32, 27>();
    let var_1 = vec2<bool>(!all(!vec2<bool>(false, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-460f)), _wgslsmith_f_op_f32(arg_3 * arg_2.a.b.e))) >= -586f);
    var var_2 = arg_2.a.a;
    return !arg_1;
}

fn func_2() -> u32 {
    var var_0 = -(~min(_wgslsmith_sub_i32(-37092i, global1[_wgslsmith_index_u32(1u, 27u)]), -1i) | 9099i);
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(52023u, min(global0[_wgslsmith_index_u32(abs(~(~global0[_wgslsmith_index_u32(1u, 29u)])), 29u)], 81300u)), 27u)];
    global0 = array<u32, 29>();
    var_0 = countOneBits(_wgslsmith_div_i32(-global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 2147483647i) | u_input.c);
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, u_input.c, u_input.c, -51120i), vec4<i32>(u_input.b.x, u_input.b.x, 0i, global1[_wgslsmith_index_u32(u_input.a.x, 27u)])), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), vec2<bool>(true, true), !func_3(vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38019u, 29u)], 29u)], 4294967295u, 5259u), vec3<bool>(true, false, false), Struct_3(Struct_2(Struct_1(vec4<i32>(-25963i, 12043i, -1008i, 1i), vec3<bool>(false, false, false), vec2<bool>(true, false), vec3<bool>(false, false, true), 1024f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(0u, 27u)], -29190i, 15863i, 0i), vec3<bool>(true, false, false), vec2<bool>(false, false), vec3<bool>(false, false, true), -306f)), Struct_2(Struct_1(vec4<i32>(-13621i, global1[_wgslsmith_index_u32(75551u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], -2820i), vec3<bool>(false, false, true), vec2<bool>(true, false), vec3<bool>(false, false, true), -1000f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(24529u, 27u)], 8794i, global1[_wgslsmith_index_u32(13539u, 27u)]), vec3<bool>(false, true, true), vec2<bool>(true, false), vec3<bool>(false, true, true), 452f))), -402f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1000f, 1202f, false)), 656f, true))), Struct_1(-(~vec4<i32>(1i, 0i, -1i, u_input.c)), func_3(~vec4<u32>(u_input.a.x, 2013u, global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.d), vec3<bool>(false, true, true), Struct_3(Struct_2(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(0u, 27u)], 0i, u_input.b.x, u_input.b.x), vec3<bool>(false, true, false), vec2<bool>(false, true), vec3<bool>(false, false, false), -129f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(1u, 27u)], -9531i, 14975i, u_input.b.x), vec3<bool>(true, true, false), vec2<bool>(true, true), vec3<bool>(false, true, false), 1000f)), Struct_2(Struct_1(vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 27u)], -2147483647i, -43189i), vec3<bool>(false, true, false), vec2<bool>(false, true), vec3<bool>(true, false, false), 744f), Struct_1(vec4<i32>(0i, -1i, u_input.c, u_input.b.x), vec3<bool>(false, false, false), vec2<bool>(false, false), vec3<bool>(true, true, true), 1299f))), _wgslsmith_f_op_f32(1000f * 1000f)), vec2<bool>(true, true), vec3<bool>(u_input.a.x <= u_input.a.x, true, true), -861f)), Struct_2(Struct_1(vec4<i32>(reverseBits(-58498i), _wgslsmith_add_i32(-2147483647i, global1[_wgslsmith_index_u32(15084u, 27u)]), 2147483647i, ~1i), vec3<bool>(func_3(vec4<u32>(u_input.a.x, 86382u, 0u, 0u), vec3<bool>(false, false, false), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 51743i), vec3<bool>(true, true, true), vec2<bool>(false, true), vec3<bool>(false, true, true), -741f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(0u, 27u)], 1i, global1[_wgslsmith_index_u32(1u, 27u)], -7369i), vec3<bool>(true, true, true), vec2<bool>(false, false), vec3<bool>(false, true, true), -890f)), Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, u_input.b.x), vec3<bool>(false, false, false), vec2<bool>(false, false), vec3<bool>(false, true, true), 1311f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(56795u, 27u)], 2147483647i, u_input.b.x, global1[_wgslsmith_index_u32(1u, 27u)]), vec3<bool>(false, false, true), vec2<bool>(false, false), vec3<bool>(true, false, true), 676f))), 2078f).x, true, select(false, false, false)), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(select(-865f, _wgslsmith_f_op_f32(f32(-1f) * -104f), all(vec4<bool>(true, false, true, true))))), Struct_1(vec4<i32>(~0i, -45156i, 2147483647i, firstTrailingBit(u_input.b.x)), vec3<bool>(true, func_3(vec4<u32>(u_input.d, 73622u, u_input.a.x, u_input.a.x), vec3<bool>(true, true, false), Struct_3(Struct_2(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(42445u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], u_input.c, -2147483647i), vec3<bool>(true, false, true), vec2<bool>(false, false), vec3<bool>(false, true, true), 1220f), Struct_1(vec4<i32>(25625i, global1[_wgslsmith_index_u32(70488u, 27u)], u_input.c, u_input.c), vec3<bool>(true, false, false), vec2<bool>(false, false), vec3<bool>(false, true, true), -489f)), Struct_2(Struct_1(vec4<i32>(1i, u_input.c, 1i, 5512i), vec3<bool>(true, false, true), vec2<bool>(true, true), vec3<bool>(false, true, false), 167f), Struct_1(vec4<i32>(0i, -1i, 1i, -646i), vec3<bool>(false, false, true), vec2<bool>(false, true), vec3<bool>(true, true, true), -518f))), -620f).x, u_input.c != global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)], 29u)], 27u)]), select(vec2<bool>(true, true), func_3(vec4<u32>(u_input.d, 42360u, global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a.x), vec3<bool>(false, true, true), Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.b.x, -1i, -4576i, 0i), vec3<bool>(true, false, false), vec2<bool>(false, true), vec3<bool>(true, true, false), -176f), Struct_1(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(75056u, 27u)], -17115i), vec3<bool>(false, true, false), vec2<bool>(false, false), vec3<bool>(false, true, false), -458f)), Struct_2(Struct_1(vec4<i32>(-30123i, -3264i, u_input.b.x, -30998i), vec3<bool>(false, false, false), vec2<bool>(false, false), vec3<bool>(true, false, false), 1749f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(40500u, 27u)], u_input.c, global1[_wgslsmith_index_u32(0u, 27u)]), vec3<bool>(true, true, true), vec2<bool>(false, true), vec3<bool>(true, true, false), 459f))), -282f).xy, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(select(320f, -1770f, false)))));
    return countOneBits(3723u);
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 0u) << (u_input.a.x % 32u), func_2(), u_input.d, 1u), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.d, 1u, u_input.d, 4294967295u) >> (vec4<u32>(11691u, 33550u, u_input.d, u_input.d) % vec4<u32>(32u))), abs(~vec4<u32>(46199u, 4294967295u, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(23184u, 29u)])), ~(vec4<u32>(48563u, 0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 29u)], 29u)]) << (vec4<u32>(u_input.a.x, u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22368u, 29u)], 29u)], 29u)], u_input.a.x) % vec4<u32>(32u))))), min(max(~vec4<u32>(83599u, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)]), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(13425u, u_input.d, 43309u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 29u)], 4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(15137u, 29u)])), vec4<u32>(u_input.d, 82210u, u_input.a.x, u_input.d) | vec4<u32>(21104u, 1u, 4294967295u, global0[_wgslsmith_index_u32(1u, 29u)]))), ~vec4<u32>(76053u, 0u, 7257u, 29471u) << (vec4<u32>(4294967295u, ~u_input.a.x, 1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)]) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, ~(~57261u), countOneBits(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(20183u, 29u)])), _wgslsmith_dot_vec2_u32(~u_input.a.xz, vec2<u32>(4294967295u, 4294967295u) << (u_input.a.yz % vec2<u32>(32u)))) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(18821u, global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a.x, global0[_wgslsmith_index_u32(1u, 29u)]), vec4<u32>(u_input.d, u_input.d, 1u, u_input.d) | vec4<u32>(98458u, 1u, global0[_wgslsmith_index_u32(u_input.d, 29u)], 4213u)) % vec4<u32>(32u)));
    global1 = array<i32, 27>();
    let var_1 = any(select(vec4<bool>(any(vec3<bool>(true, true, true)), func_3(vec4<u32>(var_0.x, u_input.d, 10256u, 0u), vec3<bool>(false, true, false), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, 2093i, -14182i, u_input.b.x), vec3<bool>(false, true, true), vec2<bool>(false, false), vec3<bool>(true, true, true), 1000f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 66162i, global1[_wgslsmith_index_u32(40246u, 27u)], 28442i), vec3<bool>(true, true, true), vec2<bool>(false, true), vec3<bool>(false, true, false), -1258f)), Struct_2(Struct_1(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 27u)], u_input.b.x, u_input.b.x), vec3<bool>(false, false, false), vec2<bool>(false, false), vec3<bool>(true, false, true), -484f), Struct_1(vec4<i32>(u_input.b.x, u_input.c, u_input.c, 2147483647i), vec3<bool>(true, false, false), vec2<bool>(true, true), vec3<bool>(true, true, true), 960f))), _wgslsmith_f_op_f32(660f + 730f)).x, false, false), !vec4<bool>(any(vec4<bool>(true, false, false, false)), true, false, true), vec4<bool>(all(vec4<bool>(false, true, false, false)), !all(vec2<bool>(false, false)), false, all(vec2<bool>(true, true)))));
    let var_2 = !vec2<bool>(any(!vec4<bool>(true, true, var_1, var_1)), all(vec4<bool>(select(var_1, var_1, true), true, false, all(vec4<bool>(var_1, var_1, var_1, var_1)))));
    global0 = array<u32, 29>();
    return func_3(_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, 39236u, 20150u, 0u)), var_0)), vec4<u32>(u_input.a.x, ~u_input.d >> (var_0.x % 32u), firstLeadingBit(select(1947u, 12530u, var_1)), global0[_wgslsmith_index_u32(~countOneBits(1u), 29u)]), vec4<u32>(37357u, 1u, 12500u, _wgslsmith_sub_u32(28168u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14510u, 29u)], 29u)], 29u)]))), select(select(vec3<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(var_2.x, var_1, true)), true), func_3(var_0, func_3(var_0, vec3<bool>(true, true, false), Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.b.x, 0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 27u)], -23874i), vec3<bool>(var_1, false, false), vec2<bool>(var_1, false), vec3<bool>(false, false, var_1), -1040f), Struct_1(vec4<i32>(-11950i, global1[_wgslsmith_index_u32(0u, 27u)], 1i, global1[_wgslsmith_index_u32(1u, 27u)]), vec3<bool>(var_1, true, false), var_2, vec3<bool>(true, var_1, true), 1475f)), Struct_2(Struct_1(vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(77867u, 27u)], u_input.c, -4938i), vec3<bool>(true, true, var_1), var_2, vec3<bool>(true, var_2.x, false), 1208f), Struct_1(vec4<i32>(2147483647i, u_input.c, global1[_wgslsmith_index_u32(var_0.x, 27u)], 22202i), vec3<bool>(true, var_2.x, false), vec2<bool>(false, false), vec3<bool>(var_1, var_2.x, false), -1809f))), 1000f), Struct_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, u_input.c, 21448i, u_input.c), vec3<bool>(var_2.x, var_2.x, false), vec2<bool>(var_1, true), vec3<bool>(var_2.x, var_2.x, true), -806f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(u_input.d, 27u)], u_input.b.x), vec3<bool>(false, false, var_1), var_2, vec3<bool>(var_2.x, true, var_2.x), 947f)), Struct_2(Struct_1(vec4<i32>(u_input.c, -1i, -42318i, u_input.c), vec3<bool>(false, var_2.x, var_2.x), var_2, vec3<bool>(true, var_2.x, var_1), -238f), Struct_1(vec4<i32>(32657i, global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 27u)], u_input.c), vec3<bool>(false, var_2.x, false), vec2<bool>(var_1, false), vec3<bool>(true, false, var_1), -869f))), 189f), select(vec3<bool>(true, var_1, true), vec3<bool>(var_2.x, false, false), vec3<bool>(var_1, false, var_1))), select(select(!vec3<bool>(var_1, true, var_1), !vec3<bool>(true, var_1, var_2.x), var_2.x || var_1), !vec3<bool>(var_1, var_2.x, var_2.x), vec3<bool>(true, true, true)), all(select(vec2<bool>(var_2.x, var_2.x), var_2, var_1 & true))), Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(2107u, 27u)], 0i, global1[_wgslsmith_index_u32(37827u, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 27u)]), vec4<i32>(global1[_wgslsmith_index_u32(21113u, 27u)], 1i, global1[_wgslsmith_index_u32(11362u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec4<i32>(31133i, 0i, global1[_wgslsmith_index_u32(var_0.x, 27u)], u_input.b.x)), select(vec3<bool>(false, var_2.x, var_1), vec3<bool>(var_1, var_1, var_2.x), var_1), !vec2<bool>(var_1, true), !vec3<bool>(var_1, var_2.x, false), _wgslsmith_f_op_f32(f32(-1f) * -1932f)), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 29u)], 27u)], u_input.b.x, 34886i, -30727i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)], u_input.b.x)), select(vec3<bool>(true, var_2.x, var_1), vec3<bool>(var_1, true, var_2.x), vec3<bool>(true, true, var_2.x)), var_2, vec3<bool>(var_2.x, true, var_1), _wgslsmith_f_op_f32(trunc(-843f)))), Struct_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -15762i, 67226i, global1[_wgslsmith_index_u32(var_0.x, 27u)]), vec4<i32>(u_input.b.x, -2147483647i, 12976i, global1[_wgslsmith_index_u32(var_0.x, 27u)])), !vec3<bool>(var_1, var_1, true), !var_2, vec3<bool>(false, var_2.x, false), _wgslsmith_f_op_f32(trunc(-751f))), Struct_1(~vec4<i32>(u_input.c, u_input.b.x, 388i, u_input.c), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, true, false), vec3<bool>(true, true, var_1)), vec2<bool>(true, true), vec3<bool>(var_2.x, true, var_2.x), _wgslsmith_f_op_f32(max(-119f, -173f))))), 1751f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(abs(u_input.c), -22961i, -2147483647i), u_input.b.x, 7881i), func_1(), vec2<bool>(true, true), select(vec3<bool>(all(vec2<bool>(true, true)), func_3(vec4<u32>(4294967295u, u_input.d, 4294967295u, 18961u), vec3<bool>(true, false, true), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(51438u, 27u)]), vec3<bool>(false, false, false), vec2<bool>(false, true), vec3<bool>(false, true, true), 1000f), Struct_1(vec4<i32>(u_input.b.x, u_input.c, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 29u)], 27u)], -16028i), vec3<bool>(false, true, false), vec2<bool>(true, true), vec3<bool>(true, true, false), -218f)), Struct_2(Struct_1(vec4<i32>(18217i, u_input.b.x, 24765i, 24667i), vec3<bool>(false, true, true), vec2<bool>(true, false), vec3<bool>(true, true, true), -1860f), Struct_1(vec4<i32>(49746i, u_input.b.x, 59631i, 2147483647i), vec3<bool>(false, true, false), vec2<bool>(true, true), vec3<bool>(true, true, false), -439f))), 534f).x, select(false, true, false)), vec3<bool>(true, true, true), !func_3(vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, u_input.d), vec3<bool>(true, false, false), Struct_3(Struct_2(Struct_1(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -1i, u_input.b.x), vec3<bool>(true, false, true), vec2<bool>(true, false), vec3<bool>(true, false, false), 1000f), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, 5847i, -32407i), vec3<bool>(true, true, false), vec2<bool>(true, true), vec3<bool>(true, false, false), 240f)), Struct_2(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 1i, -2147483647i, u_input.b.x), vec3<bool>(true, true, false), vec2<bool>(true, true), vec3<bool>(false, true, true), 282f), Struct_1(vec4<i32>(u_input.c, -22394i, u_input.b.x, u_input.b.x), vec3<bool>(true, true, true), vec2<bool>(true, true), vec3<bool>(true, true, false), -1000f))), -1000f).x), _wgslsmith_f_op_f32(ceil(2617f))), Struct_1(vec4<i32>(_wgslsmith_div_i32(426i >> (u_input.d % 32u), abs(45590i)), _wgslsmith_div_i32(countOneBits(1i), min(0i, global1[_wgslsmith_index_u32(4294967295u, 27u)])), ~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 10484i), vec2<i32>(1i, -53030i))), vec3<bool>(true, true, true), select(func_1().xy, vec2<bool>(true, true), vec2<bool>(true, true)), !func_3(vec4<u32>(4294967295u, u_input.a.x, u_input.d, 1u), func_1(), Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -52787i, -1i), vec3<bool>(false, false, true), vec2<bool>(false, false), vec3<bool>(false, false, false), -1027f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(36375u, 27u)], 15842i), vec3<bool>(true, true, true), vec2<bool>(true, true), vec3<bool>(true, false, false), -811f)), Struct_2(Struct_1(vec4<i32>(1i, -4298i, -33059i, -1i), vec3<bool>(true, true, true), vec2<bool>(false, true), vec3<bool>(true, true, false), 748f), Struct_1(vec4<i32>(-25059i, -1i, u_input.b.x, -26504i), vec3<bool>(true, false, false), vec2<bool>(true, false), vec3<bool>(false, true, false), -424f))), _wgslsmith_f_op_f32(step(667f, 584f))), 642f));
    global1 = array<i32, 27>();
    let var_1 = Struct_2(var_0.b, Struct_1(_wgslsmith_mult_vec4_i32(~select(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 27u)], 2147483647i, -1i, 71496i), var_0.b.a, vec4<bool>(false, var_0.a.b.x, var_0.a.d.x, false)), countOneBits(min(vec4<i32>(u_input.c, 12457i, var_0.a.a.x, var_0.a.a.x), var_0.a.a))), func_1(), select(vec2<bool>(true, var_0.b.c.x), var_0.a.b.yy, !func_1().xy), select(vec3<bool>(false || var_0.a.d.x, true, select(var_0.a.d.x, var_0.a.d.x, true)), !var_0.b.b, true), _wgslsmith_f_op_f32(var_0.b.e * 2850f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.e - var_1.a.e) + _wgslsmith_f_op_f32(var_0.b.e * -166f)), -772f, _wgslsmith_f_op_f32(floor(var_0.b.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f))))));
}

