struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<u32>;

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(888f, -1000f), vec2<f32>(2484f, 1440f), vec2<f32>(-1027f, -1185f), vec2<f32>(-498f, -1000f), vec2<f32>(-546f, -398f), vec2<f32>(744f, -1042f), vec2<f32>(-1461f, -121f), vec2<f32>(304f, -587f), vec2<f32>(1349f, 198f), vec2<f32>(1927f, -181f), vec2<f32>(-1847f, 527f), vec2<f32>(-957f, 1389f), vec2<f32>(748f, 1531f), vec2<f32>(-541f, 1074f), vec2<f32>(515f, -1921f), vec2<f32>(-1041f, -341f), vec2<f32>(1204f, 691f), vec2<f32>(1813f, 661f), vec2<f32>(345f, -506f), vec2<f32>(1850f, -1349f), vec2<f32>(234f, -903f), vec2<f32>(-1292f, 538f), vec2<f32>(-727f, 273f), vec2<f32>(-1212f, -1008f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: f32) -> vec2<i32> {
    global0 = (global1.x & 0u) | 1u;
    global1 = vec2<u32>(countOneBits(global1.x), arg_0);
    global2 = arg_0;
    let var_0 = countOneBits(u_input.b);
    var var_1 = ~reverseBits(firstTrailingBit(abs(~vec2<u32>(1u, 0u))));
    return firstTrailingBit(vec2<i32>(u_input.d.x >> (var_1.x % 32u), -(~_wgslsmith_sub_i32(u_input.c, 8707i))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = (func_3(u_input.b.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(513f)))) >> ((~_wgslsmith_add_vec2_u32(u_input.b.zy, u_input.a) ^ abs(min(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a))) % vec2<u32>(32u))) | (-_wgslsmith_sub_vec2_i32(~arg_0.yy, u_input.d) ^ _wgslsmith_sub_vec2_i32(select(abs(vec2<i32>(u_input.d.x, 2147483647i)), arg_0.yy, vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(-vec2<i32>(-1i, u_input.c), vec2<i32>(u_input.d.x, u_input.d.x))));
    let var_1 = !vec4<bool>(all(vec3<bool>(true, true, true)), !any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false)), false);
    global3 = array<vec2<f32>, 24>();
    global3 = array<vec2<f32>, 24>();
    global3 = array<vec2<f32>, 24>();
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1880f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-546f)) + 956f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(abs(811f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1272f, 925f)))), _wgslsmith_f_op_f32(f32(-1f) * -293f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(846f - -832f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2731f - 1000f)))), Struct_1(u_input.d.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-368f, _wgslsmith_f_op_f32(1466f - 372f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1221f, -308f, 882f, -600f)) * vec4<f32>(-593f, -188f, -1646f, 303f)), vec4<f32>(-756f, _wgslsmith_f_op_f32(-2080f - 863f), _wgslsmith_f_op_f32(abs(598f)), _wgslsmith_div_f32(304f, 188f)), false)), !select(!vec4<bool>(true, true, true, var_1.x), select(var_1, var_1, var_1.x), var_1), _wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(976f + _wgslsmith_div_f32(-1000f, 742f)))), Struct_1(-22353i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global3[_wgslsmith_index_u32(0u, 24u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(229f, 344f) - vec2<f32>(1283f, -1499f))), vec4<f32>(_wgslsmith_f_op_f32(852f * _wgslsmith_f_op_f32(max(325f, 966f))), 711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2105f) - _wgslsmith_div_f32(686f, -317f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(3528f)))), vec4<bool>(var_1.x, !all(var_1), any(select(var_1.xxx, var_1.wwy, vec3<bool>(true, true, true))), all(select(var_1, var_1, vec4<bool>(var_1.x, true, var_1.x, true)))), 641f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(global1.x, 24u)] + vec2<f32>(1132f, -1000f))))), vec2<f32>(1386f, -1541f))), firstTrailingBit(countOneBits(u_input.b)) | vec3<u32>(firstLeadingBit(4294967295u), ~_wgslsmith_sub_u32(global1.x, 18529u), global1.x));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = i32(-1i) * -reverseBits(-select(2147483647i, u_input.c, arg_1.a.b.d.x));
    var var_1 = func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, -29521i), _wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, 0i, u_input.c), vec3<i32>(9954i, -12672i, 25861i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, arg_1.a.b.a, u_input.c), vec3<i32>(var_0, -46465i, -4228i)), vec3<i32>(-2147483647i, u_input.d.x, arg_1.a.c.a), arg_1.a.b.d.yxx))));
    var var_2 = ~(~(~(~var_1.e.yx)));
    let var_3 = !(!var_1.c.d);
    let var_4 = var_1.c;
    return vec2<bool>(true, !(-25808i > var_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec2<i32>(-(i32(-1i) * -5349i), max(1i, 0i))) | u_input.d;
    global2 = ~global1.x;
    var var_1 = vec2<bool>(true, true);
    var_1 = !select(!select(func_1(409f, Struct_3(Struct_2(vec4<f32>(538f, 2042f, -1130f, -655f), Struct_1(-1i, vec2<f32>(1160f, -1309f), vec4<f32>(831f, -100f, -2131f, 1829f), vec4<bool>(false, true, var_1.x, true), 401f), Struct_1(u_input.c, global3[_wgslsmith_index_u32(4294967295u, 24u)], vec4<f32>(1085f, 1305f, 860f, -1715f), vec4<bool>(var_1.x, false, false, var_1.x), 2298f), vec2<f32>(345f, -468f), vec3<u32>(global1.x, 0u, 13657u)))), select(vec2<bool>(var_1.x, true), vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false)), var_1.x && true), select(!func_1(-1185f, Struct_3(Struct_2(vec4<f32>(161f, -1213f, 813f, -506f), Struct_1(u_input.c, global3[_wgslsmith_index_u32(50663u, 24u)], vec4<f32>(1047f, 476f, -330f, -502f), vec4<bool>(var_1.x, true, var_1.x, true), -947f), Struct_1(0i, vec2<f32>(-1549f, 225f), vec4<f32>(1393f, -970f, 694f, 2877f), vec4<bool>(false, false, var_1.x, var_1.x), 795f), vec2<f32>(-2073f, 445f), u_input.b))), vec2<bool>(true, -2147483647i >= u_input.c), var_1.x), vec2<bool>(var_1.x, all(vec4<bool>(true, var_1.x, var_1.x, var_1.x))));
    let var_2 = 1u;
    let var_3 = func_3(u_input.a.x | _wgslsmith_dot_vec2_u32(~u_input.a, u_input.b.yy), func_2(vec3<i32>(abs(var_0.x), 0i, func_3(25030u, func_2(vec3<i32>(u_input.d.x, 1i, -1531i)).c.d, _wgslsmith_f_op_f32(floor(-952f))).x)).c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(325f - 450f) - _wgslsmith_f_op_f32(f32(-1f) * -351f)))));
    var var_4 = func_2(select(select(vec3<i32>(32486i, 32896i, var_3.x), select(vec3<i32>(var_0.x, var_3.x, u_input.d.x), vec3<i32>(1i, 1i, u_input.c), true), all(vec2<bool>(var_1.x, var_1.x))), vec3<i32>(0i, 38183i | u_input.c, u_input.d.x >> (4294967295u % 32u)), !(u_input.a.x >= 49932u)) & _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d.x, -1i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -12060i, u_input.d.x), vec3<i32>(var_0.x, -7213i, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, var_4.e.x, 1u)), vec4<u32>(global1.x, var_4.e.x, 95562u, 0u))), (((-1i << (var_4.e.x % 32u)) | -var_0.x) & -(~24865i)) | u_input.d.x, func_2(vec3<i32>(_wgslsmith_div_i32(-2147483647i, var_0.x), var_0.x, 13252i) << ((var_4.e ^ _wgslsmith_mod_vec3_u32(vec3<u32>(36932u, 1u, global1.x), var_4.e)) % vec3<u32>(32u))).c.e);
}

