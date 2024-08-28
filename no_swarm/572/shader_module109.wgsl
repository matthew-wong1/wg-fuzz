struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: vec3<u32>;

var<private> global2: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-329f, -441f, -508f, -399f), vec4<f32>(426f, -2016f, -1642f, 589f), vec4<f32>(325f, -869f, 261f, -1369f), vec4<f32>(-307f, 640f, 1718f, 879f), vec4<f32>(-285f, 1188f, 2148f, -1000f), vec4<f32>(1000f, -219f, -285f, -159f), vec4<f32>(2541f, -1000f, -167f, 1278f), vec4<f32>(151f, -705f, -620f, -1318f), vec4<f32>(-1948f, -1606f, 2484f, -1609f), vec4<f32>(-986f, -1646f, 711f, 1000f), vec4<f32>(619f, -783f, -1886f, -1000f), vec4<f32>(-1514f, -186f, -602f, 1270f), vec4<f32>(-1627f, -283f, -331f, -276f), vec4<f32>(295f, -1212f, 658f, -1687f));

var<private> global3: array<Struct_1, 17>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_mult_vec3_u32(~firstLeadingBit(firstTrailingBit(vec3<u32>(71421u, 1u, 4294967295u)) >> (vec3<u32>(u_input.a, 0u, 136748u) % vec3<u32>(32u))), vec3<u32>(64126u, _wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(65059u, 64797u)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 43979u), vec2<u32>(2877u, global1.x))) ^ vec3<u32>(abs(global1.x), abs(global1.x), select(99266u, firstTrailingBit(46422u), !arg_2.x)));
    let var_1 = min(firstLeadingBit(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.x, 71412u, global1.x, global1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 6997u, var_0.x, var_0.x), vec4<u32>(global1.x, 1u, global1.x, global1.x)))), vec4<u32>(_wgslsmith_mult_u32(~20428u, global1.x ^ global1.x), 37107u, ~u_input.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(reverseBits(28954u), u_input.a), max(0u, var_0.x))));
    global0 = array<Struct_4, 31>();
    global2 = array<vec4<f32>, 14>();
    global1 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(var_0, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 78020u, global1.x), var_0)), vec3<u32>(var_0.x, 0u, 4294967295u));
    return Struct_5(min(vec3<u32>(countOneBits(_wgslsmith_div_u32(var_1.x, var_1.x)), _wgslsmith_div_u32(4294967295u, ~global1.x), ~4294967295u), var_1.yxx), Struct_1(~1u, ~0i <= _wgslsmith_add_i32(arg_0, arg_0), true), !select(select(vec4<bool>(arg_2.x, arg_2.x, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, arg_2.x, true, true), vec4<bool>(false, false, arg_2.x, false))), !(!vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)), arg_2.x));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = vec2<i32>(~(~(-29053i)), 66162i) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(0u, 2134u, 963u, 1u), vec4<u32>(arg_0.a.a, 73752u, 4294967295u, arg_0.a.a), arg_2.c.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(31284u, 0u, global1.x, arg_0.a.a), vec4<u32>(4294967295u, u_input.a, 62335u, global1.x))), 3212u >> (max(abs(u_input.a), abs(4294967295u)) % 32u)) % vec2<u32>(32u));
    var var_1 = abs(arg_2.a);
    var var_2 = global0[_wgslsmith_index_u32(~firstLeadingBit(1u), 31u)];
    var var_3 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))))));
    global1 = arg_2.a;
    return select(select(!(!vec3<bool>(true, arg_0.a.b, var_2.a.c)), !func_2(-33577i, _wgslsmith_f_op_f32(370f - arg_1), arg_2.c.zw).c.yyz, !(!arg_2.c.zyw)), !arg_2.c.zwy, arg_2.c.zxx);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> bool {
    let var_0 = func_2(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(arg_3, arg_3, -19511i, arg_3)), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(arg_3, -18807i, -8157i, 7372i)), select(vec4<i32>(arg_3, 0i, 0i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3, 21292i, arg_3, 3021i), vec4<i32>(arg_3, arg_3, -29775i, arg_3)), all(arg_1.zx)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_3, arg_3, arg_3), vec4<i32>(arg_3, -1219i, arg_3, arg_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -578f)))), !select(select(!vec2<bool>(arg_2, arg_1.x), select(vec2<bool>(arg_1.x, arg_0.a.b), arg_1.xz, false), false), arg_1.zx, true));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-abs(_wgslsmith_mult_i32(arg_3, arg_3)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, -1i)), min(vec2<i32>(0i, arg_3), vec2<i32>(-1488i, arg_3))) ^ _wgslsmith_sub_i32(arg_3, _wgslsmith_clamp_i32(1i, 1i, arg_3)), 14588i), _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(1i) | -arg_3, -arg_3, countOneBits(_wgslsmith_mod_i32(arg_3, arg_3))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-26856i, -50083i, arg_3) | vec3<i32>(arg_3, -62763i, arg_3), vec3<i32>(arg_3, arg_3, arg_3) | vec3<i32>(arg_3, arg_3, arg_3)), vec3<i32>(1i, -1i, 1i))));
    let var_2 = Struct_5(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a, var_0.a), vec3<u32>(u_input.a, 3109u, 0u) ^ var_0.a) ^ ((vec3<u32>(var_0.b.a, u_input.a, 27235u) & vec3<u32>(u_input.a, arg_0.a.a, u_input.a)) >> (var_0.a % vec3<u32>(32u))), Struct_1(_wgslsmith_mod_u32(62144u, _wgslsmith_div_u32(select(var_0.b.a, arg_0.a.a, arg_1.x), 1u)), true, !func_2(7785i >> (arg_0.a.a % 32u), _wgslsmith_f_op_f32(round(-452f)), !var_0.c.xz).b.c), var_0.c);
    let var_3 = Struct_2(func_3(arg_0, -308f, func_2(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)), vec2<bool>(arg_3 == -1i, arg_1.x)), ~(max(vec4<i32>(var_1.x, -7686i, arg_3, var_1.x), vec4<i32>(12878i, 0i, -11482i, -1i)) << (~vec4<u32>(global1.x, global1.x, 4294967295u, u_input.a) % vec4<u32>(32u)))).x, 1851f, func_2(-arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(round(-237f))) * 517f), var_2.c.zy).b);
    global0 = array<Struct_4, 31>();
    return _wgslsmith_f_op_f32(989f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_3.b)))))) >= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b), var_3.b), var_3.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_u32(24845u, u_input.a) | reverseBits(_wgslsmith_add_u32(0u, arg_0.c.a) >> ((arg_1.a.c.a << (global1.x % 32u)) % 32u)), false, arg_0.c.c);
    var_0 = Struct_1(_wgslsmith_add_u32(~reverseBits(global1.x), ~0u), func_4(Struct_4(global3[_wgslsmith_index_u32(~4294967295u, 17u)]), select(func_3(Struct_4(global3[_wgslsmith_index_u32(var_0.a, 17u)]), arg_1.a.b, func_2(arg_1.b.x, arg_1.a.b, vec2<bool>(var_0.b, true)), vec4<i32>(arg_1.b.x, 1266i, -14085i, arg_1.b.x) | vec4<i32>(arg_1.b.x, 4414i, 0i, arg_1.b.x)), !func_3(global0[_wgslsmith_index_u32(global1.x, 31u)], arg_0.b, Struct_5(vec3<u32>(arg_0.c.a, 0u, var_0.a), Struct_1(8440u, arg_1.a.a, var_0.c), vec4<bool>(true, false, false, arg_1.a.c.b)), vec4<i32>(-2147483647i, 2147483647i, arg_1.b.x, 2147483647i)), any(select(vec2<bool>(false, arg_0.c.c), vec2<bool>(arg_1.a.c.c, var_0.c), arg_1.a.a))), !(any(vec3<bool>(var_0.b, arg_1.a.a, false)) | arg_1.a.a), _wgslsmith_sub_i32(arg_1.b.x ^ ~4641i, _wgslsmith_add_i32(arg_1.b.x, -2147483647i))), !(!(select(arg_1.a.c.b, true, true) || arg_0.c.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a.b, _wgslsmith_f_op_f32(floor(arg_1.a.b))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b, -652f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-3594f, -1836f) - vec2<f32>(arg_1.c, arg_0.b)) - vec2<f32>(arg_0.b, -1370f))))));
    var var_2 = _wgslsmith_add_i32(arg_1.b.x, arg_1.b.x);
    var var_3 = arg_1.b.x;
    return arg_0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x >> (_wgslsmith_sub_u32(reverseBits(4294967295u), ~0u) % 32u), ~func_1(Struct_2(true, 123f, global3[_wgslsmith_index_u32(global1.x, 17u)]), Struct_3(Struct_2(false, -1000f, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<i32>(-21680i, 0i, -23861i), 529f)), countOneBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, global1.x), false), vec3<u32>(4048u, 11437u, 73184u)))), vec3<u32>(select(_wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_sub_u32(4294967295u, 1u), true) | 9314u, func_2(_wgslsmith_div_i32(1i, abs(2460i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1478f)) * _wgslsmith_div_f32(473f, -454f)), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)).a.x, global1.x));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1576f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1419f, 1039f), -1813f)))))));
    var var_1 = -48750i;
    let var_2 = max(abs(select(abs(vec2<i32>(-29268i, 46167i)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-18642i, -1i)), vec2<i32>(1i, 1i)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)))), -(~_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-8151i, 29007i)), firstTrailingBit(vec2<i32>(-44026i, -19671i)), vec2<i32>(-1i, -40629i) >> (vec2<u32>(1u, global1.x) % vec2<u32>(32u)))));
    var var_3 = Struct_4(func_2(i32(-1i) * -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0)))), !(!func_3(global0[_wgslsmith_index_u32(global1.x, 31u)], -310f, Struct_5(vec3<u32>(global1.x, u_input.a, 1u), global3[_wgslsmith_index_u32(0u, 17u)], vec4<bool>(true, false, false, true)), vec4<i32>(var_2.x, 2266i, var_2.x, var_2.x)).zz)).b);
    var_1 = max(~var_2.x, i32(-1i) * -2147483647i);
    let var_4 = vec3<i32>(var_2.x, -_wgslsmith_div_i32(var_2.x, var_2.x), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-15026i, var_4.x), var_4.yz, var_3.a.b & false), countOneBits(~var_4.yy)), _wgslsmith_div_i32(var_4.x, -2147483647i & min(var_2.x, -2147483647i)), false & func_3(Struct_4(Struct_1(38237u, var_3.a.b, true)), _wgslsmith_f_op_f32(f32(-1f) * -602f), Struct_5(vec3<u32>(0u, u_input.a, u_input.a), Struct_1(0u, var_3.a.c, false), vec4<bool>(false, var_3.a.b, var_3.a.b, false)), ~vec4<i32>(var_2.x, var_4.x, -14797i, -2147483647i)).x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-469f - -1958f), _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-223f))), _wgslsmith_f_op_f32(select(183f, _wgslsmith_f_op_f32(var_0 - var_0), !var_3.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * 383f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-226f, var_0))))), 69277i ^ firstTrailingBit(1i));
}

