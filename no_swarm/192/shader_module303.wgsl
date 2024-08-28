struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<bool, 2>;

var<private> global2: vec2<i32> = vec2<i32>(1i, 1i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global1 = array<bool, 2>();
    let var_0 = _wgslsmith_div_i32(global2.x, -firstTrailingBit(1i));
    global1 = array<bool, 2>();
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1252f, _wgslsmith_f_op_f32(select(204f, _wgslsmith_f_op_f32(f32(-1f) * -474f), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, 7596u, arg_0), 23u)])), 2547f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, 1755f, 519f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(-335f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(573f))), 1216f, 396f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2026f + 1419f) + _wgslsmith_f_op_f32(-2311f - -1056f)), _wgslsmith_div_f32(-1478f, -320f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1766f)), _wgslsmith_f_op_f32(663f + 1244f))), _wgslsmith_f_op_f32(-135f - -1000f)))), Struct_1(vec3<i32>(-46213i, -var_0, -2147483647i), var_0, vec2<u32>(1u, 52051u)));
    var var_2 = ~(26199u & _wgslsmith_clamp_u32(0u, var_1.c.c.x, 0u >> (~arg_0 % 32u)));
    return ~var_1.c.a.xx;
}

fn func_2() -> Struct_3 {
    global0 = array<bool, 23>();
    global1 = array<bool, 2>();
    global2 = ~(~firstTrailingBit(func_3(42535u) << (select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.d, 54790u), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], false)) % vec2<u32>(32u))));
    var var_0 = 1456f;
    let var_1 = true;
    return Struct_3(~(select(~vec3<u32>(u_input.a, u_input.a, u_input.d), abs(vec3<u32>(u_input.d, u_input.a, 89292u)), vec3<bool>(true, var_1, var_1)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d, 1u), vec3<u32>(u_input.a, u_input.d, u_input.a)) % vec3<u32>(32u))), vec4<bool>(var_1, true, global1[_wgslsmith_index_u32(1u, 2u)], !all(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], true, global0[_wgslsmith_index_u32(4294967295u, 23u)]), false))), u_input.d);
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_3(arg_0.a << (vec3<u32>(u_input.a, ~1u, firstLeadingBit(~arg_0.a.x)) % vec3<u32>(32u)), vec4<bool>(!all(vec4<bool>(true, true, false, true)), true & (arg_0.a.x < u_input.d), !(!(!global1[_wgslsmith_index_u32(arg_0.c, 2u)])), any(!select(vec2<bool>(false, false), arg_0.b.yy, arg_0.b.xz))), _wgslsmith_dot_vec4_u32(~vec4<u32>(max(u_input.a, u_input.d), ~0u, 27068u ^ u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 10429u, u_input.d), arg_0.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, 1u, u_input.a, 4294967295u), max(vec4<u32>(4294967295u, u_input.a, u_input.d, u_input.d), vec4<u32>(u_input.a, 17896u, 15532u, arg_0.a.x)))));
    global0 = array<bool, 23>();
    global1 = array<bool, 2>();
    var var_1 = select(vec3<bool>(any(func_2().b.yx), var_0.b.x, true), var_0.b.zzw, !vec3<bool>(any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.a.x, 23u)], false), vec3<bool>(false, arg_0.b.x, arg_0.b.x), false)), func_2().b.x, all(vec3<bool>(true, true, false))));
    var var_2 = var_0.a.zy;
    return arg_0.a.x >> (~28265u % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    global1 = array<bool, 2>();
    let var_0 = arg_2 << (arg_1.c.c.x % 32u);
    var var_1 = Struct_3(arg_3, select(select(vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(21346u << (arg_0.c.c.x % 32u), 2u)], true, !global0[_wgslsmith_index_u32(arg_0.c.c.x, 23u)], any(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(arg_0.c.c.x, 23u)]))), true), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], u_input.d != 4294967295u, false, global0[_wgslsmith_index_u32(arg_0.c.c.x & 74638u, 23u)]), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(27885u, 2u)], false, true))), func_4(func_2()));
    var var_2 = ~vec4<u32>(~(~1u), func_4(func_2()), reverseBits(1u), 5125u) << (reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_3.x, arg_0.c.c.x, 28650u, 1u), abs(vec4<u32>(arg_3.x, arg_1.c.c.x, arg_1.c.c.x, arg_0.c.c.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.c.x, u_input.d, 4294967295u, 1u), vec4<u32>(arg_0.c.c.x, 19624u, 1u, 31547u), vec4<u32>(arg_3.x, 93624u, arg_1.c.c.x, arg_1.c.c.x)))) % vec4<u32>(32u));
    var var_3 = vec4<i32>(-min(23335i, min(arg_2, 44874i)), 14768i, func_3(~1u).x, abs(arg_1.c.b));
    return 33550u;
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: f32) -> vec2<u32> {
    var var_0 = !any(!select(!vec2<bool>(global0[_wgslsmith_index_u32(24706u, 23u)], true), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 2u)]), all(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)], false, global0[_wgslsmith_index_u32(u_input.d, 23u)]))));
    var var_1 = Struct_1(arg_0.wxz, 37886i, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, 11749u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 24051u), vec2<u32>(29176u, u_input.a), vec2<u32>(50104u, 0u))) ^ select(~vec2<u32>(arg_1, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 77144u), vec2<u32>(0u, u_input.d)), select(vec2<bool>(global0[_wgslsmith_index_u32(87254u, 23u)], global0[_wgslsmith_index_u32(41657u, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 2u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]), global1[_wgslsmith_index_u32(74057u, 2u)])), vec2<u32>(0u, arg_1) >> (~firstTrailingBit(vec2<u32>(0u, 1u)) % vec2<u32>(32u))));
    global2 = vec2<i32>(-(1i << (~max(var_1.c.x, u_input.d) % 32u)), arg_0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, 1887f, -347f)))), vec3<f32>(arg_2, _wgslsmith_div_f32(1660f, arg_2), arg_2), vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.d, 23u)], false, global0[_wgslsmith_index_u32(24809u, 23u)]), true, all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(19789u, 2u)], false))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1746f, 2114f, 995f, -1354f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1187f, arg_2, arg_2, -1424f)))), vec4<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-979f, -2209f)) * -1051f), arg_2, arg_2)), Struct_1(-abs(arg_0.xwx) >> (~(~vec3<u32>(0u, u_input.a, var_1.c.x)) % vec3<u32>(32u)), 1i, vec2<u32>(max(select(u_input.a, u_input.d, global0[_wgslsmith_index_u32(76768u, 23u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(19016u, u_input.a), vec2<u32>(arg_1, u_input.d))), 29499u)));
    var var_3 = -_wgslsmith_sub_i32(var_2.c.a.x, -var_1.b) | u_input.b;
    return ~vec2<u32>(~var_2.c.c.x, min(~arg_1, var_2.c.c.x) ^ _wgslsmith_add_u32(select(0u, 4294967295u, false), firstLeadingBit(3106u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(abs(-u_input.b), _wgslsmith_div_i32(_wgslsmith_mult_i32(global2.x, global2.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(global2.x, u_input.b)), global2.x)), ~select(vec2<i32>(-33599i, u_input.c), vec2<i32>(global2.x, -1i), true) >> ((func_5(vec4<i32>(34456i, u_input.b, u_input.b, 47333i), func_1(Struct_2(vec3<f32>(377f, 787f, 1000f), vec4<f32>(518f, -1849f, -1000f, -308f), Struct_1(vec3<i32>(0i, 1567i, u_input.c), global2.x, vec2<u32>(59855u, 4294967295u))), Struct_2(vec3<f32>(-211f, -396f, 497f), vec4<f32>(-559f, 1388f, 1506f, 660f), Struct_1(vec3<i32>(u_input.e, 0i, u_input.c), 1i, vec2<u32>(67104u, 28858u))), 2147483647i, vec3<u32>(2053u, 5545u, u_input.d)), _wgslsmith_f_op_f32(floor(685f))) ^ func_5(vec4<i32>(1i, 64353i, u_input.e, global2.x), u_input.d >> (33532u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1111f))) % vec2<u32>(32u)));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d, ~(~0u) ^ (u_input.a << (~23376u % 32u))), 23u)];
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1802f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(509f)), _wgslsmith_div_f32(2026f, 159f), 1176f, _wgslsmith_f_op_f32(338f - 873f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), Struct_1(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, u_input.b, u_input.e), vec3<i32>(u_input.c, var_0.x, var_0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(58268i, -1i, 13733i), vec3<i32>(-2147483647i, u_input.b, 28272i))), 27310i, abs(~vec2<u32>(u_input.a, u_input.a))));
    let var_3 = Struct_2(var_2.a, vec4<f32>(1978f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.x, var_2.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.c.c.x, 0u), 23u)]))), var_2.a.x), Struct_1(-var_2.c.a, var_2.c.a.x, vec2<u32>(var_2.c.c.x, _wgslsmith_add_u32(u_input.a, u_input.a))));
    global0 = array<bool, 23>();
    var_1 = !global0[_wgslsmith_index_u32(~var_2.c.c.x, 23u)];
    var var_4 = u_input.d;
    var var_5 = ~(~(~(57789u << (var_3.c.c.x % 32u))) >> (_wgslsmith_mult_u32(countOneBits(0u << (var_2.c.c.x % 32u)), abs(1u) << (u_input.d % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.c.x, 68775u, 6741u), ~vec3<u32>(1u, 45292u, 39970u)), ~11738u), firstTrailingBit(_wgslsmith_div_u32(var_3.c.c.x, var_2.c.c.x)), 90880u, 0u));
}

