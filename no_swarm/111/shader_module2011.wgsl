struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = -1i;
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(1i, u_input.b.x), _wgslsmith_mod_i32(~min(max(u_input.b.x, 41853i), u_input.c.x >> (16175u % 32u)), 0i));
    var var_2 = arg_1;
    let var_3 = all(arg_0.a);
    var_1 = select(max(vec2<i32>(var_1.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, 1i, u_input.d, 2147483647i), _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(var_1.x, u_input.c.x, u_input.d, var_1.x), vec4<i32>(var_1.x, var_1.x, -2147483647i, -53924i)))), vec2<i32>(-11289i, -(i32(-1i) * -9622i))), vec2<i32>(-1i, countOneBits(1i)) & firstLeadingBit(select(~u_input.b, u_input.b, select(vec2<bool>(arg_0.d.x, false), arg_1.d.a, arg_0.d.x))), arg_0.a);
    return vec2<bool>(true, select(any(select(vec4<bool>(var_2.d.b, true, arg_0.b, false), vec4<bool>(var_2.c.d.x, true, var_3, var_2.c.a.x), arg_0.d.x)) | var_2.d.a.x, true, var_3 | false));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_1(!select(select(vec2<bool>(true, true), func_3(Struct_1(vec2<bool>(arg_0, false), arg_0, vec3<f32>(-1226f, -850f, -837f), vec4<bool>(true, arg_0, arg_0, arg_0)), Struct_2(4294967295u, vec4<f32>(1356f, 1685f, 381f, -1000f), Struct_1(vec2<bool>(arg_0, false), false, vec3<f32>(992f, -510f, 1316f), vec4<bool>(true, arg_0, arg_0, false)), Struct_1(vec2<bool>(true, true), true, vec3<f32>(432f, 142f, -329f), vec4<bool>(true, true, true, arg_0)))), !vec2<bool>(arg_0, false)), !vec2<bool>(arg_0, false), true), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(361f, 134f, 2096f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - 1129f), _wgslsmith_f_op_f32(1706f + -146f), 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1129f, 109f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-415f, 2403f, 992f) * vec3<f32>(-628f, 1000f, -1392f))))), select(select(!vec4<bool>(arg_0, arg_0, false, arg_0), !(!vec4<bool>(arg_0, false, false, arg_0)), all(!vec2<bool>(arg_0, arg_0))), select(select(vec4<bool>(arg_0, arg_0, true, true), select(vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, arg_0, true, true)), false), !(!vec4<bool>(arg_0, arg_0, false, arg_0)), arg_0), arg_0));
    var_0 = Struct_1(vec2<bool>(arg_0, false), (i32(-1i) * -1i) > min(u_input.d, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(3102f, var_0.c.x, var_0.c.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2050f)), var_0.c.x, 414f)), !select(vec4<bool>(arg_0, var_0.b, !var_0.b, u_input.b.x > 1i), vec4<bool>(true, var_0.d.x != false, true, true), var_0.d));
    var var_1 = reverseBits(~1u);
    var_1 = 30473u;
    let var_2 = true;
    return Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(21601u, 82527u), ~1u, ~1u), vec4<u32>(0u, 107908u, ~1u, 15328u)), abs(1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, 721f, -501f) - _wgslsmith_div_vec4_f32(vec4<f32>(358f, -1795f, var_0.c.x, -929f), vec4<f32>(450f, var_0.c.x, 2832f, var_0.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, -1689f, 2301f) + vec4<f32>(var_0.c.x, -602f, -1501f, var_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -323f, var_0.c.x, 374f) + vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 1798f))))))), Struct_1(select(!select(vec2<bool>(true, arg_0), var_0.a, true), func_3(Struct_1(vec2<bool>(var_0.d.x, false), arg_0, vec3<f32>(-1000f, 1330f, var_0.c.x), var_0.d), Struct_2(4294967295u, vec4<f32>(683f, -995f, var_0.c.x, var_0.c.x), Struct_1(vec2<bool>(arg_0, var_0.b), var_0.b, var_0.c, var_0.d), Struct_1(var_0.d.zx, var_0.b, vec3<f32>(1024f, -239f, var_0.c.x), vec4<bool>(arg_0, false, false, var_0.d.x)))), true), true, var_0.c, var_0.d), Struct_1(vec2<bool>(false, -u_input.d < _wgslsmith_mod_i32(-2147483647i, -2147483647i)), var_0.b & true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-773f, 1000f, var_0.c.x))) + _wgslsmith_f_op_vec3_f32(max(var_0.c, var_0.c))), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(200f - var_0.c.x)), var_2)), select(var_0.d, vec4<bool>(true, var_2 && false, u_input.d > u_input.a, true), var_0.d)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = arg_0;
    var var_1 = abs(-u_input.c);
    let var_2 = _wgslsmith_mult_u32(13929u & func_2(!any(arg_2.c.d)).a, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(arg_0, 86104u)), var_0) & ~arg_0));
    let var_3 = vec3<bool>(select(false != arg_3.d.d.x, true, !(2147483647i < var_1.x) && (select(var_0, var_0, true) < max(0u, var_2))), arg_2.d.d.x, arg_3.c.b);
    let var_4 = !func_2(false).d.d.wy;
    return vec2<i32>(max(1i & (reverseBits(-21535i) & (var_1.x | 2147483647i)), arg_1), countOneBits(max(var_1.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.c.xxw, vec3<i32>(var_1.x, arg_1, 33224i))))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: Struct_2) -> bool {
    var var_0 = func_4(~_wgslsmith_mult_u32(0u & ~arg_3.a, 0u), -37004i, arg_3, func_2(false));
    var var_1 = false;
    var var_2 = Struct_1(!arg_1.yz, arg_3.c.d.x, func_2(arg_1.x).b.xzw, select(!(!vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), arg_3.c.d, ((u_input.c.x >> (1u % 32u)) ^ select(0i, var_0.x, true)) >= u_input.a));
    var var_3 = !arg_3.d.d.x && all(!select(select(arg_1.zx, arg_1.wy, vec2<bool>(true, var_2.b)), func_2(arg_3.d.d.x).d.d.yw, arg_1.x));
    var var_4 = arg_3;
    return var_2.d.x;
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = func_2(!(!arg_2.c.d.x)).c;
    let var_1 = arg_2.b.x;
    let var_2 = func_2(false | func_1(firstTrailingBit(arg_2.a) << (~0u % 32u), !vec4<bool>(false, var_0.b, arg_2.d.a.x, true), vec3<f32>(-1000f, 1000f, _wgslsmith_f_op_f32(max(1449f, var_0.c.x))), arg_2)).d;
    let var_3 = Struct_2(~4294967295u, arg_2.b, arg_2.d, arg_2.c);
    let var_4 = var_3.d.d.xyy;
    return Struct_2(44885u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1 + 1943f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1446f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * arg_2.b.x), -163f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.b, var_3.b)))), Struct_1(!vec2<bool>(var_0.d.x, false & var_0.a.x), true, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), 2552f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-673f, var_0.c.x))), 326f), !var_0.d), func_2(true).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(-781f >= _wgslsmith_f_op_f32(sign(494f)), true, all(vec2<bool>(true, false))));
    var var_1 = 2147483647i;
    var var_2 = func_5(30191u, vec3<i32>(-u_input.a, _wgslsmith_sub_i32(-max(46370i, 2147483647i), u_input.a), _wgslsmith_dot_vec2_i32(-firstTrailingBit(u_input.b), vec2<i32>(reverseBits(0i), u_input.a))), Struct_2(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(88765u, 67180u), vec2<bool>(true, true)), vec2<u32>(~48760u, ~32264u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f + -1206f) * -1000f), _wgslsmith_f_op_f32(ceil(-236f)), 369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f))), Struct_1(vec2<bool>(true, false), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(280f, -378f, 479f) + vec3<f32>(1636f, -1845f, -1513f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-597f, -120f, 788f)))), vec4<bool>(false, func_1(1u, vec4<bool>(true, false, true, false), vec3<f32>(-1000f, 610f, -1430f), Struct_2(45554u, vec4<f32>(-1000f, 2604f, -439f, -536f), Struct_1(vec2<bool>(false, false), false, vec3<f32>(-800f, 1302f, -529f), vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(true, false), false, vec3<f32>(282f, -466f, -128f), vec4<bool>(false, true, false, true)))), true, true)), Struct_1(vec2<bool>(true, true), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(445f, -210f, 1175f), vec3<f32>(-822f, 1758f, 1007f)))), vec4<bool>(func_1(0u, vec4<bool>(false, true, true, true), vec3<f32>(1338f, 1000f, 120f), Struct_2(0u, vec4<f32>(-684f, 326f, 301f, 1399f), Struct_1(vec2<bool>(true, true), true, vec3<f32>(-406f, 1000f, -740f), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true), false, vec3<f32>(1444f, -1000f, -717f), vec4<bool>(true, false, true, true)))), func_3(Struct_1(vec2<bool>(true, false), true, vec3<f32>(-1690f, 193f, -1000f), vec4<bool>(true, true, true, true)), Struct_2(28952u, vec4<f32>(1749f, -608f, 1205f, 1036f), Struct_1(vec2<bool>(false, false), false, vec3<f32>(-756f, -1806f, -1192f), vec4<bool>(false, false, true, true)), Struct_1(vec2<bool>(false, false), true, vec3<f32>(-836f, -733f, 637f), vec4<bool>(false, true, false, false)))).x, true, false))), _wgslsmith_mult_vec3_u32(reverseBits(select(firstTrailingBit(vec3<u32>(0u, 0u, 12537u)), vec3<u32>(24293u, 1u, 76945u), true)), vec3<u32>(firstLeadingBit(20648u), 1u, abs(_wgslsmith_mult_u32(0u, 35986u)))));
    var_1 = -2082i;
    var var_3 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~0i, u_input.d, -29245i), firstTrailingBit(countOneBits(u_input.c.wxx))), i32(-1i) * -13086i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.zw, ~((func_2(var_2.c.d.x).a | reverseBits(var_2.a)) ^ ~(var_2.a & 1u)), select(select(vec2<u32>(select(20290u, 8586u, true), var_2.a), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_2.a, 15235u)), var_2.c.d.yw), ~abs(vec2<u32>(1u, 1u)), !var_2.c.d.xw), abs(_wgslsmith_mod_vec3_u32(min(vec3<u32>(28350u, 6004u, var_2.a), vec3<u32>(var_2.a, 4294967295u, 40492u)), ~vec3<u32>(var_2.a, var_2.a, var_2.a)) << ((max(vec3<u32>(4294967295u, var_2.a, 526u), vec3<u32>(4294967295u, var_2.a, 0u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a, var_2.a, var_2.a), vec3<u32>(23164u, var_2.a, var_2.a))) % vec3<u32>(32u))), 5851i);
}

