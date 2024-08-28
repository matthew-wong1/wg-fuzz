struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, false, false, false, true, true, false, false, false, true, true, false, true, false, true, true, true, true, false, true, false, true, true, true, true, false, false, true);

var<private> global1: u32 = 38382u;

var<private> global2: array<f32, 13> = array<f32, 13>(-495f, -120f, 1495f, 528f, -195f, 1902f, 447f, 808f, -925f, 1878f, -553f, 120f, -643f);

var<private> global3: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(-17031i, -1i | var_0.d.x, arg_0.d.x, ~25747i), ~vec4<i32>(0i, _wgslsmith_mult_i32(0i, 0i), -var_0.a, firstLeadingBit(75839i))), var_0.b, vec4<f32>(_wgslsmith_f_op_f32(step(547f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.a.x, 13u)]))))), -1000f, _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))))), var_0.d, _wgslsmith_div_vec3_f32(arg_0.e, _wgslsmith_f_op_vec3_f32(round(var_0.e))));
    global1 = max(u_input.c, select(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), u_input.c, u_input.a.x), ~(54264u ^ u_input.c) >> (u_input.c % 32u), !any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 28u)], false, false, global0[_wgslsmith_index_u32(u_input.c, 28u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], false)))));
    var var_2 = arg_0;
    let var_3 = 1u;
    return var_3;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<bool, 28>();
    let var_0 = global0[_wgslsmith_index_u32(~(((0u & u_input.d.x) | firstTrailingBit(u_input.d.x)) & u_input.a.x), 28u)] || global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, firstLeadingBit(~(~u_input.d.x))), 28u)];
    var var_1 = true;
    var var_2 = Struct_1(min(-6626i, u_input.b), vec4<f32>(arg_0.e.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1027f)) - _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(31505u, 13u)]))), global2[_wgslsmith_index_u32(u_input.c, 13u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c + vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], -505f, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.b))), select(select(select(vec4<bool>(false, var_0, var_0, global0[_wgslsmith_index_u32(57369u, 28u)]), vec4<bool>(true, var_0, true, var_0), true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], true, true, var_0), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)], false, var_0)), select(vec4<bool>(var_0, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 28u)], var_0, var_0), !vec4<bool>(global0[_wgslsmith_index_u32(28122u, 28u)], false, true, var_0)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.yy), 28u)]))), firstLeadingBit(vec2<i32>(firstLeadingBit(abs(arg_0.a)), 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.wwy), arg_0.e) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, -854f, 234f)) * _wgslsmith_f_op_vec3_f32(trunc(arg_0.e)))) * arg_0.b.zzx));
    var var_3 = 1i;
    return _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.wx, u_input.a.yx), ~_wgslsmith_sub_vec2_u32(u_input.d.xx, firstTrailingBit(reverseBits(vec2<u32>(12454u, 4294967295u)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> f32 {
    global1 = u_input.c & 4294967295u;
    global1 = ~reverseBits(abs(u_input.d.x));
    global2 = array<f32, 13>();
    global1 = ~min(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(56634u, u_input.d.x), ~vec2<u32>(40482u, u_input.c)));
    var var_0 = _wgslsmith_clamp_vec2_u32(func_4(Struct_1(u_input.b, vec4<f32>(global2[_wgslsmith_index_u32(func_3(Struct_1(1816i, vec4<f32>(-862f, 685f, -1000f, global2[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 355f, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), vec2<i32>(-52069i, 49532i), vec3<f32>(913f, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)]))), 13u)], _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 13u)] - -1000f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 13u)] * global2[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], -1791f, 632f, global2[_wgslsmith_index_u32(109538u, 13u)]), vec4<f32>(208f, global2[_wgslsmith_index_u32(0u, 13u)], -714f, global2[_wgslsmith_index_u32(11009u, 13u)])) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], 715f), vec4<f32>(global2[_wgslsmith_index_u32(18569u, 13u)], -752f, global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)])))), (vec2<i32>(arg_1, u_input.b) ^ vec2<i32>(0i, arg_1)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-3841i, u_input.b), vec2<i32>(arg_1, -46946i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(0u, 13u)], 562f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 13u)], -1417f, 1851f))))), ~(~u_input.d.yy), select(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, abs(vec2<u32>(1u, u_input.c))), u_input.a.x), u_input.a.zx | max(vec2<u32>(4294967295u, 58386u), u_input.d.zx), !(!select(arg_0.yx, vec2<bool>(global0[_wgslsmith_index_u32(0u, 28u)], false), arg_0.xy))));
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, countOneBits(u_input.c), ~54274u), 13u)];
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(abs(11962u), 13u)])), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_f32(func_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 28u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 28u)], true), 1i)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.d.x), 28u)]))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1901f))))) * 847f);
    var var_1 = ~reverseBits(vec4<u32>(~22159u, ~23097u, countOneBits(72019u), 8321u));
    let var_2 = vec2<bool>(global0[_wgslsmith_index_u32(26858u, 28u)], true);
    var var_3 = _wgslsmith_add_i32(-4238i, firstLeadingBit(-2147483647i) | u_input.b) | ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-69599i, u_input.b, 19512i, u_input.b)), vec4<i32>(-62795i, i32(-1i) * -38683i, u_input.b, _wgslsmith_add_i32(26380i, u_input.b)));
    var_1 = ~select(u_input.a, vec4<u32>(51419u, _wgslsmith_mod_u32(var_1.x, var_1.x), min(4294967295u, var_1.x), ~4294967295u) & (u_input.a << (abs(vec4<u32>(u_input.d.x, u_input.a.x, var_1.x, u_input.a.x)) % vec4<u32>(32u))), 4294967295u != _wgslsmith_clamp_u32(~u_input.d.x, min(var_1.x, 58043u), _wgslsmith_dot_vec2_u32(var_1.yz, var_1.zx)));
    return Struct_1(-1i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 13u)], -1511f), _wgslsmith_f_op_f32(-564f * -1000f))), var_0, _wgslsmith_f_op_f32(886f + _wgslsmith_f_op_f32(exp2(var_0))), var_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, -581f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 13u)] - var_0), global2[_wgslsmith_index_u32(20452u, 13u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, global2[_wgslsmith_index_u32(45966u, 13u)], global2[_wgslsmith_index_u32(var_1.x, 13u)], var_0), vec4<f32>(global2[_wgslsmith_index_u32(8256u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], var_0, var_0))), var_2.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-831f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)), var_0, 918f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(1262f * var_0), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(9684u, 13u)])), _wgslsmith_f_op_f32(select(var_0, -458f, false))))))), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(2147483647i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -12620i), vec2<i32>(20792i, u_input.b))), vec2<i32>(_wgslsmith_mod_i32(26635i, -1i), min(u_input.b, 0i)), vec2<i32>(-1i) * -vec2<i32>(u_input.b, 0i)) ^ vec2<i32>(u_input.b, firstTrailingBit(u_input.b) & -2147483647i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1011f, -436f, var_0), vec3<f32>(406f, var_0, -1463f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], -1000f, -1000f)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, global2[_wgslsmith_index_u32(10909u, 13u)], global2[_wgslsmith_index_u32(var_1.x, 13u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-355f, global2[_wgslsmith_index_u32(var_1.x, 13u)], var_0) - vec3<f32>(-1126f, 1574f, 808f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(-2147483647i, _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(func_3(var_0), 13u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26638u, 13u)]), -2270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(1132f, -1275f)), -1759f, 871f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_sub_vec2_i32(var_0.d, ~vec2<i32>(func_1().a, 0i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(967f, 976f, -144f), vec3<f32>(-1637f, -607f, -1000f))) * vec3<f32>(-1173f, -989f, _wgslsmith_f_op_f32(ceil(var_0.e.x)))), var_0.b.yyw, !any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], false, false, false)) & false)));
    let var_2 = func_4(func_1()).x;
    global3 = ~abs(firstLeadingBit(22858u | var_2)) == min(1u, ~(1u << ((var_2 << (70194u % 32u)) % 32u)));
    var_1 = func_1();
    global0 = array<bool, 28>();
    var var_3 = Struct_1(var_0.d.x, _wgslsmith_f_op_vec4_f32(exp2(var_0.c)), var_0.b, -(~select(var_0.d, var_1.d, global0[_wgslsmith_index_u32(0u, 28u)]) << (vec2<u32>(_wgslsmith_add_u32(4294967295u, var_2), 34889u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -982f, var_1.b.x)), var_0.c.yzx) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, 1000f, var_1.b.x), var_0.c.wwy), _wgslsmith_f_op_vec3_f32(-var_0.e))))));
    var var_4 = _wgslsmith_sub_vec2_u32(select(max(vec2<u32>(var_2, _wgslsmith_clamp_u32(0u, 10495u, var_2)), _wgslsmith_div_vec2_u32(max(vec2<u32>(23560u, u_input.a.x), vec2<u32>(62921u, var_2)), vec2<u32>(25002u, 1u))), vec2<u32>(34645u, countOneBits(1u)), vec2<bool>(var_3.a <= _wgslsmith_mod_i32(-9656i, 1i), !(443f >= var_0.c.x))), u_input.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1912f), var_0.e.x) + _wgslsmith_f_op_f32(sign(1240f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(380f)))))));
}

