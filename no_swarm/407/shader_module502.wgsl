struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(859f, 304f, -638f), vec3<f32>(2266f, 538f, 988f), vec3<f32>(-173f, 250f, -130f), vec3<f32>(492f, -615f, 302f), vec3<f32>(268f, -1777f, -1000f), vec3<f32>(-1124f, 677f, 499f), vec3<f32>(479f, 1253f, 187f), vec3<f32>(-123f, 132f, -1565f), vec3<f32>(-388f, 1788f, 630f), vec3<f32>(1514f, 244f, 504f), vec3<f32>(1095f, 623f, 1000f), vec3<f32>(542f, 926f, 1568f), vec3<f32>(-336f, -405f, 567f), vec3<f32>(177f, 261f, 587f), vec3<f32>(535f, -1684f, 1693f), vec3<f32>(-1550f, -120f, -1637f), vec3<f32>(714f, -1000f, 647f), vec3<f32>(1407f, 156f, -288f), vec3<f32>(-251f, 1426f, 1500f), vec3<f32>(-472f, 381f, 1609f), vec3<f32>(1013f, 233f, -176f), vec3<f32>(-342f, -1455f, 1802f), vec3<f32>(-668f, -925f, -628f), vec3<f32>(407f, 238f, 1605f), vec3<f32>(-912f, 178f, 483f), vec3<f32>(-1000f, -534f, 1934f), vec3<f32>(1536f, -1655f, 1000f), vec3<f32>(-1439f, 357f, -929f), vec3<f32>(219f, -1227f, 377f), vec3<f32>(-1001f, -441f, 368f), vec3<f32>(-648f, -687f, -460f));

var<private> global2: bool;

var<private> global3: array<u32, 21>;

var<private> global4: array<u32, 26>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    var var_0 = ~min(_wgslsmith_div_vec2_i32(abs(min(vec2<i32>(arg_1.c.x, -2147483647i), arg_1.d.b.xy)), (arg_1.d.b.zz & vec2<i32>(-19184i, u_input.c.x)) >> (~u_input.a.xy % vec2<u32>(32u))), u_input.c);
    var var_1 = _wgslsmith_f_op_f32(floor(603f));
    var_0 = arg_1.d.b.zx;
    var_0 = u_input.c;
    var var_2 = (u_input.b ^ vec3<i32>(-countOneBits(2147483647i), -(~arg_1.d.b.x), _wgslsmith_div_i32(~12467i, 4236i))) & max(min(~(-vec3<i32>(u_input.c.x, 0i, u_input.b.x)), -(arg_1.c | vec3<i32>(u_input.b.x, var_0.x, u_input.c.x))), reverseBits(vec3<i32>(arg_1.d.e, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), u_input.b.xy), i32(-1i) * -28641i)));
    return vec3<i32>(arg_1.c.x, var_0.x, arg_1.c.x);
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = Struct_2(arg_1 < ~(~(-u_input.b.x)), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(46241u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 26u)], 26u)], 1u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(54902u, u_input.a.x, global4[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49349u, 26u)], 26u)]) | vec4<u32>(11933u, 12056u, 11833u, 38068u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 48920u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 26u)], 4294967295u), vec4<u32>(0u, 77624u, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 21u)])))) & vec4<u32>(22853u, ~(~4294967295u), ~(~u_input.a.x), 1u), -_wgslsmith_add_vec3_i32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(2735f, 1498f, 791f, -584f) + vec4<f32>(-284f, 251f, 162f, -719f)), Struct_2(true, vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 26u)], 19215u, 4294967295u, global4[_wgslsmith_index_u32(24159u, 26u)]), vec3<i32>(0i, arg_0, 2147483647i), Struct_1(arg_0, vec4<i32>(0i, arg_0, arg_0, -1i), arg_0, 47240i, arg_1), false), _wgslsmith_f_op_f32(f32(-1f) * -533f)), vec3<i32>(u_input.c.x, 1i, _wgslsmith_sub_i32(-22033i, 1i))), Struct_1(_wgslsmith_add_i32(~(arg_1 >> (55251u % 32u)), ~u_input.b.x), -abs(firstLeadingBit(vec4<i32>(0i, arg_0, arg_1, u_input.c.x))), arg_0, _wgslsmith_add_i32(-(-2147483647i & u_input.b.x), -27340i), arg_1), select(true, true, true));
    let var_1 = var_0.d;
    let var_2 = var_0.e;
    let var_3 = countOneBits(abs(reverseBits(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, global3[_wgslsmith_index_u32(var_0.b.x, 21u)], 4294967295u), var_0.b.x, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(var_0.b.x, 21u)], 1u), 26u)]))));
    global0 = 176f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-643f, _wgslsmith_f_op_f32(f32(-1f) * -1447f), true)));
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-956f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -183f)))))));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(u_input.b.x, 1i)), -353f));
    let var_1 = firstLeadingBit(~firstTrailingBit(_wgslsmith_div_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], ~41114u)));
    var var_2 = ~global3[_wgslsmith_index_u32(min(~firstLeadingBit(27391u), var_1), 21u)] >> (u_input.a.x % 32u);
    let var_3 = Struct_2(false, abs(firstTrailingBit(vec4<u32>(~1u, min(4294967295u, 0u), global4[_wgslsmith_index_u32(0u, 26u)] >> (4294967295u % 32u), u_input.a.x))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, var_0, var_0, 131f))), Struct_2(all(vec3<bool>(true, true, false)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 26u)], 21u)], 1u, 51949u), vec4<u32>(49768u, global4[_wgslsmith_index_u32(1u, 26u)], u_input.a.x, 11308u)), vec4<u32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 26u)], global3[_wgslsmith_index_u32(1u, 21u)], 52330u, global3[_wgslsmith_index_u32(var_1, 21u)])), vec3<i32>(28613i, u_input.b.x, u_input.b.x), Struct_1(u_input.c.x >> (var_1 % 32u), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.c.x, -71316i), vec4<i32>(2147483647i, u_input.c.x, -30340i, u_input.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 0i, u_input.c.x), vec4<i32>(u_input.b.x, -2147483647i, -2147483647i, u_input.c.x)), u_input.c.x, _wgslsmith_mod_i32(-4245i, u_input.b.x)), true), _wgslsmith_f_op_f32(858f * var_0)), Struct_1(~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, u_input.b.x)), vec2<i32>(u_input.c.x, -5672i) & u_input.b.xy), abs(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.c.x)), -2147483647i, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x | -27i, -1i, 26205i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -16200i, u_input.c.x) << (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), func_3(vec4<f32>(164f, var_0, -1792f, var_0), Struct_2(false, vec4<u32>(39623u, u_input.a.x, 21999u, global4[_wgslsmith_index_u32(0u, 26u)]), u_input.b, Struct_1(u_input.c.x, vec4<i32>(-26647i, u_input.b.x, 5061i, -43735i), 0i, u_input.c.x, u_input.b.x), true), -814f)))), !all(vec4<bool>(true, true, true, true)));
    return ~(~(~_wgslsmith_dot_vec4_u32(~var_3.b, min(vec4<u32>(global4[_wgslsmith_index_u32(var_3.b.x, 26u)], global3[_wgslsmith_index_u32(1u, 21u)], 25494u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27824u, 21u)], 26u)]), var_3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1f;
    var var_0 = Struct_2(true, min(min(select(vec4<u32>(global3[_wgslsmith_index_u32(1u, 21u)], 1u, u_input.a.x, 1u), vec4<u32>(77760u, global3[_wgslsmith_index_u32(0u, 21u)], 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21179u, 26u)], 26u)]), false), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], 11372u)) | ~select(vec4<u32>(126834u, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 4294967295u, 0u), vec4<u32>(5012u, u_input.a.x, 4294967295u, 0u), vec4<bool>(false, true, false, false)), vec4<u32>(func_1(), 54134u, 0u, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 26u)], 21u)])), vec3<i32>(u_input.b.x | (firstLeadingBit(u_input.c.x) ^ countOneBits(u_input.b.x)), -min(max(u_input.c.x, -17154i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.b.x), vec4<i32>(-1i, 0i, -2147483647i, u_input.c.x))), 0i), Struct_1(reverseBits(i32(-1i) * -1814i), vec4<i32>(-_wgslsmith_add_i32(u_input.c.x, u_input.c.x), -48671i | u_input.b.x, (u_input.c.x | u_input.b.x) << (~u_input.a.x % 32u), 22558i), -func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1905f, -634f, -1000f, -457f)), Struct_2(true, vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 26u)], 21u)], global4[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u), u_input.b, Struct_1(27143i, vec4<i32>(1i, u_input.c.x, -40053i, 1348i), 0i, 1i, -11139i), false), -346f).x, _wgslsmith_add_i32(-18404i, u_input.c.x), countOneBits(u_input.b.x)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 2648u), 21u)] > abs(select(abs(4294967295u), firstTrailingBit(4294967295u), false)));
    let var_1 = var_0.e;
    let var_2 = ~(~firstTrailingBit(firstTrailingBit(4294967295u))) & 4294967295u;
    var var_3 = Struct_3(Struct_2(true, var_0.b, _wgslsmith_div_vec3_i32(var_0.c, vec3<i32>(-var_0.c.x, ~(-1i), var_0.d.b.x >> (var_2 % 32u))), Struct_1(var_0.d.a, vec4<i32>(2147483647i, -84369i, var_0.c.x, u_input.b.x) ^ (vec4<i32>(-44749i, var_0.c.x, 2147483647i, var_0.c.x) >> (var_0.b % vec4<u32>(32u))), var_0.d.d << (_wgslsmith_dot_vec4_u32(var_0.b, var_0.b) % 32u), var_0.d.c, u_input.c.x), !(!(var_2 != global4[_wgslsmith_index_u32(30376u, 26u)]))), Struct_2(_wgslsmith_div_u32(~var_0.b.x, ~443u) < ~(~3569u), ~(~(~var_0.b)), reverseBits(-(~vec3<i32>(12238i, 1i, -38167i))), var_0.d, _wgslsmith_f_op_f32(556f + 2077f) < _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-113f, -610f)))), -939f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 31u)])))) * global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(select(4294967295u, ~1u, var_0.e), 21u)], 31u)]))), ((vec3<u32>(0u, global4[_wgslsmith_index_u32(u_input.a.x, 26u)], 1u) << (~var_0.b.zzy % vec3<u32>(32u))) | ~vec3<u32>(1u, var_2, global3[_wgslsmith_index_u32(0u, 21u)])) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.b.wwx, var_0.b.yzw, vec3<u32>(var_2, 8819u, var_0.b.x)), ~vec3<u32>(1u, 68562u, global4[_wgslsmith_index_u32(10638u, 26u)])), vec3<u32>(~6590u, _wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(u_input.a.x, 21u)]), u_input.a.x >> (var_2 % 32u))));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.c))) + var_3.c)))));
    let var_4 = var_3.a.c;
    let var_5 = var_3.b;
    var var_6 = var_0.b.yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, var_2 & ~var_2, ~(~_wgslsmith_dot_vec2_u32(var_3.e.yz, vec2<u32>(17535u, 69297u)))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.d.x), 998f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.c - 1091f), _wgslsmith_f_op_f32(min(var_3.c, _wgslsmith_f_op_f32(max(var_3.d.x, 899f)))))), 1f));
}

