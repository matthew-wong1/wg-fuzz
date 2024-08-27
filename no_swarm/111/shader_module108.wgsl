struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<f32>(585f, -480f), vec4<bool>(false, true, false, true), vec2<i32>(-24650i, 0i)), Struct_1(vec2<f32>(-1377f, 1026f), vec4<bool>(false, false, false, false), vec2<i32>(15968i, 0i)), Struct_1(vec2<f32>(875f, 384f), vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<f32>(-565f, 493f), vec4<bool>(true, false, true, true), vec2<i32>(27681i, 1i)), Struct_1(vec2<f32>(-1344f, -2064f), vec4<bool>(true, false, false, false), vec2<i32>(5449i, 39571i)), Struct_1(vec2<f32>(2974f, -831f), vec4<bool>(false, true, false, true), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<f32>(-115f, -805f), vec4<bool>(true, true, false, true), vec2<i32>(-1i, -15258i)), Struct_1(vec2<f32>(246f, -765f), vec4<bool>(false, true, false, false), vec2<i32>(-12457i, 1i)), Struct_1(vec2<f32>(-347f, -1553f), vec4<bool>(false, true, false, false), vec2<i32>(-31537i, -1i)), Struct_1(vec2<f32>(-669f, -121f), vec4<bool>(true, true, true, false), vec2<i32>(13907i, 1i)), Struct_1(vec2<f32>(2347f, 1645f), vec4<bool>(true, true, false, false), vec2<i32>(0i, 31026i)), Struct_1(vec2<f32>(-429f, -558f), vec4<bool>(false, false, false, false), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<f32>(322f, 1034f), vec4<bool>(false, true, true, false), vec2<i32>(1i, 2147483647i)), Struct_1(vec2<f32>(-1295f, -191f), vec4<bool>(false, false, false, true), vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<f32>(910f, -1075f), vec4<bool>(false, false, true, true), vec2<i32>(-16920i, -1i)), Struct_1(vec2<f32>(2003f, 243f), vec4<bool>(true, false, false, false), vec2<i32>(18971i, -8949i)), Struct_1(vec2<f32>(787f, 222f), vec4<bool>(false, false, false, false), vec2<i32>(1i, -52303i)), Struct_1(vec2<f32>(-296f, -773f), vec4<bool>(false, true, true, true), vec2<i32>(7474i, 30501i)), Struct_1(vec2<f32>(631f, -147f), vec4<bool>(true, false, false, true), vec2<i32>(28024i, -1i)), Struct_1(vec2<f32>(900f, 999f), vec4<bool>(true, false, true, false), vec2<i32>(-77i, 2147483647i)), Struct_1(vec2<f32>(1335f, 810f), vec4<bool>(true, false, false, true), vec2<i32>(12794i, -16268i)), Struct_1(vec2<f32>(467f, 700f), vec4<bool>(true, true, false, true), vec2<i32>(-86211i, 25834i)), Struct_1(vec2<f32>(164f, -869f), vec4<bool>(false, false, false, false), vec2<i32>(2147483647i, -10208i)), Struct_1(vec2<f32>(-721f, 1160f), vec4<bool>(true, false, false, true), vec2<i32>(27950i, 1i)), Struct_1(vec2<f32>(1290f, -978f), vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, 1i)), Struct_1(vec2<f32>(-1270f, -1228f), vec4<bool>(true, false, true, false), vec2<i32>(17223i, 1i)), Struct_1(vec2<f32>(372f, -559f), vec4<bool>(false, false, false, false), vec2<i32>(5384i, 32865i)), Struct_1(vec2<f32>(1458f, -279f), vec4<bool>(true, true, true, true), vec2<i32>(18037i, -27074i)), Struct_1(vec2<f32>(1806f, -606f), vec4<bool>(false, false, false, false), vec2<i32>(34881i, 2147483647i)));

var<private> global2: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.d.x;
    global1 = array<Struct_1, 29>();
    var_0 = 52095u;
    var var_1 = _wgslsmith_sub_i32(25637i, 1i);
    global1 = array<Struct_1, 29>();
    return ~(~u_input.e);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~51044u), u_input.a), 29u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1197f) - vec2<f32>(1058f, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1353f, 1208f), global0.zw)))), select(select(arg_0.b.yw, vec2<bool>(true, true), arg_0.b.yx), arg_0.b.xz, select(vec2<bool>(true, arg_0.b.x), select(vec2<bool>(arg_0.b.x, true), vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(arg_0.b.x, true)), select(vec2<bool>(arg_0.b.x, true), arg_0.b.yy, vec2<bool>(arg_0.b.x, true)))))));
    let var_1 = Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(-arg_0.a));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.c, -vec2<i32>(-13916i, 2147483647i) ^ select(vec2<i32>(11166i, -1i), var_1.a.c, arg_0.b.x)), u_input.c), abs(~(-19594i)), -(i32(-1i) * -2147483647i) | (-abs(var_1.a.c.x) | var_1.a.c.x));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-822f, -1165f))))), 1308f)));
    let var_3 = var_1.a.c.x;
    return -430f;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * 873f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(173f, 588f, false)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * 826f)));
    global0 = vec4<f32>(535f, arg_0.a.x, _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-var_1.x)), arg_0.b, u_input.b))), var_1.x);
    let var_2 = 4294967295u;
    let var_3 = Struct_3(select(!vec3<bool>(any(vec2<bool>(true, true)), false, true), arg_0.b.wxw, !arg_0.b.x), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, arg_0.c.x ^ (arg_0.c.x | u_input.b.x)), arg_0.c.x | arg_0.c.x, ~1i));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(global0.xx)), select(vec4<bool>(true, var_3.a.x, u_input.a <= 1u, var_3.a.x), vec4<bool>(var_3.a.x, all(vec3<bool>(arg_0.b.x, false, arg_0.b.x)), arg_0.b.x, all(var_3.a)), arg_0.b.x == arg_0.b.x), vec2<i32>(-(arg_0.c.x >> (u_input.e % 32u)), arg_0.c.x)), _wgslsmith_f_op_vec2_f32(select(global0.zx, vec2<f32>(-1870f, -470f), !all(!var_3.a.zx))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec2<i32>(reverseBits(reverseBits(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, arg_0.a.c.x, -2147483647i), vec4<i32>(-52156i, u_input.c, 29016i, u_input.c)), arg_0.a.c.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(arg_0.a.c.x, u_input.c), arg_0.a.c.x, 5171i, 0i), ~vec4<i32>(-2147483647i, ~u_input.c, u_input.b.x, firstLeadingBit(-3248i))));
    var var_1 = _wgslsmith_div_i32(max(firstLeadingBit(u_input.c), 19579i), 65380i);
    var var_2 = vec3<i32>(~var_0.x ^ ~var_0.x, -10307i, _wgslsmith_mult_i32(arg_0.a.c.x, u_input.c));
    let var_3 = select(firstTrailingBit(min(vec3<u32>(9079u, 4294967295u, 17065u), ~vec3<u32>(u_input.e, u_input.d.x, 14773u)) & ~(~vec3<u32>(24376u, u_input.a, u_input.d.x))), vec3<u32>(u_input.e, ~_wgslsmith_sub_u32(u_input.d.x >> (107158u % 32u), 1u), u_input.a), false);
    var var_4 = 0u;
    return func_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(func_2(global1[_wgslsmith_index_u32(u_input.a, 29u)]).b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -307f)))), vec4<bool>(all(vec4<bool>(arg_0.a.b.x, false, arg_0.a.b.x, arg_0.a.b.x)), false, !all(arg_0.a.b), any(vec3<bool>(false, false, false))), arg_0.a.c)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(60746u, 29573u, 4294967295u, ~u_input.d.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4118u, 87743u, u_input.e), vec4<u32>(u_input.e, 38241u, u_input.d.x, u_input.d.x)), ~4294967295u), _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a, 4294967295u, 26350u)), vec3<u32>(u_input.e, 147931u, 0u))), ~(~func_1(u_input.b.x, vec4<bool>(true, true, true, false), Struct_1(vec2<f32>(global0.x, -481f), vec4<bool>(true, true, true, false), vec2<i32>(u_input.b.x, -2147483647i)))), ~u_input.e, 4294967295u)), 29u)];
    var var_1 = Struct_2(func_4(func_2(global1[_wgslsmith_index_u32(~u_input.d.x, 29u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xz * _wgslsmith_f_op_vec2_f32(global0.wz * vec2<f32>(683f, 267f))) * vec2<f32>(_wgslsmith_f_op_f32(106f * global0.x), _wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.ww) * _wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1502f, 238f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f)))))));
    var var_2 = Struct_3(func_2(func_4(Struct_2(Struct_1(vec2<f32>(var_1.a.a.x, global0.x), vec4<bool>(var_1.a.b.x, var_0.b.x, var_1.a.b.x, false), var_1.a.c), _wgslsmith_f_op_vec2_f32(var_0.a * var_0.a)))).a.b.xww, vec3<i32>(var_0.c.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-23099i, var_0.c.x, var_1.a.c.x, u_input.c), -vec4<i32>(2147483647i, u_input.b.x, 2147483647i, u_input.c)), _wgslsmith_mod_i32(-var_0.c.x, _wgslsmith_sub_i32(1i, var_1.a.c.x)), true), firstLeadingBit(select(-2947i, ~u_input.c, !var_1.a.b.x))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global0.x - -924f), 978f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), vec4<f32>(global0.x, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(2186f + _wgslsmith_f_op_f32(round(-1295f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.x + _wgslsmith_f_op_f32(var_0.a.x * -1000f)) * 278f))));
    var var_3 = countOneBits(vec3<u32>(u_input.a, firstTrailingBit(u_input.d.x | u_input.a), ~16863u)) << (firstLeadingBit(abs(~(vec3<u32>(u_input.d.x, u_input.a, u_input.e) | vec3<u32>(70393u, 4294967295u, 12702u)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, vec3<i32>(var_2.b.x, -1i, 24701i), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(var_0.a.x)));
}

