struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(0u, vec4<f32>(108f, 1057f, 1587f, 1158f), vec2<f32>(721f, 2123f), vec2<i32>(-3121i, 46074i), true), Struct_1(37886u, vec4<f32>(642f, 679f, 1000f, -464f), vec2<f32>(780f, -1000f), vec2<i32>(33956i, -39126i), false), Struct_1(4294967295u, vec4<f32>(1063f, -318f, 1243f, 1867f), vec2<f32>(-1035f, -3145f), vec2<i32>(-1i, 0i), false), Struct_1(15866u, vec4<f32>(516f, 2275f, 221f, 1282f), vec2<f32>(1629f, 135f), vec2<i32>(2147483647i, -35558i), false), Struct_1(1u, vec4<f32>(357f, -736f, -165f, 387f), vec2<f32>(1904f, -629f), vec2<i32>(i32(-2147483648), 0i), false), Struct_1(22818u, vec4<f32>(177f, 2621f, 1120f, 146f), vec2<f32>(2295f, 197f), vec2<i32>(1i, 22683i), true), Struct_1(64718u, vec4<f32>(-416f, 1517f, -513f, -1216f), vec2<f32>(-1000f, -1000f), vec2<i32>(i32(-2147483648), 39833i), true), Struct_1(22667u, vec4<f32>(536f, -1060f, -1077f, 256f), vec2<f32>(-561f, -514f), vec2<i32>(-1i, -24856i), false));

var<private> global1: array<u32, 26>;

var<private> global2: bool = true;

var<private> global3: array<u32, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = vec3<u32>(u_input.a.x, firstLeadingBit(~reverseBits(4294967295u)), 52690u) << (vec3<u32>(0u & ~(~global1[_wgslsmith_index_u32(96323u, 26u)]), u_input.a.x, ~firstLeadingBit(_wgslsmith_clamp_u32(84955u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 26u)], 17u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11580u, 17u)], 26u)]))) % vec3<u32>(32u));
    let var_1 = -1i;
    let var_2 = -2147483647i;
    var var_3 = (u_input.b.x | _wgslsmith_dot_vec2_i32(countOneBits(u_input.b.xz ^ u_input.b.yy), abs(max(vec2<i32>(-1i, var_2), u_input.b.zw)))) <= ~var_1;
    let var_4 = countOneBits(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, var_2, -1i), vec3<i32>(var_1, 40610i, 32822i) ^ vec3<i32>(u_input.b.x, var_1, -7327i), u_input.b.xzx)) >> (firstTrailingBit(~u_input.d.xxx) % vec3<u32>(32u));
    return (-19175i > ~_wgslsmith_dot_vec2_i32(u_input.b.zx, -u_input.b.xz)) | (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 8170u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], 26u)], 26u)], 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(95638u, 26u)], 17u)], 17u)]), u_input.c.xy, vec2<u32>(37994u, global3[_wgslsmith_index_u32(93993u, 17u)]))), ~(~u_input.a.x)) < (1u << (abs(1u) % 32u)));
}

fn func_2() -> u32 {
    global2 = any(vec4<bool>(true, !(!(u_input.c.x <= 4294967295u)), func_3(), true));
    global2 = !(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(1i, ~(-23597i))) > _wgslsmith_div_i32(abs(u_input.b.x) >> (_wgslsmith_clamp_u32(31276u, global3[_wgslsmith_index_u32(44909u, 17u)], 0u) % 32u), 1i));
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(~29254u, global3[_wgslsmith_index_u32(4294967295u, 17u)] ^ 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(319f, -277f, -1527f, 579f) * vec4<f32>(400f, -364f, -559f, -2185f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-718f, -1177f)) * _wgslsmith_f_op_f32(1288f + -683f))), min(select(~vec2<i32>(13901i, -1i), abs(vec2<i32>(u_input.b.x, u_input.b.x)), true), max(vec2<i32>(u_input.b.x, u_input.b.x) << (u_input.d.wz % vec2<u32>(32u)), min(u_input.b.xx, u_input.b.wy))), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    global2 = !(!var_0.a.e);
    var var_1 = var_0.a.e;
    return reverseBits(72067u);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global1 = array<u32, 26>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_2(), 26u)], 17u)], _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.d, _wgslsmith_add_vec4_u32(u_input.a, u_input.a)), vec4<u32>(10348u, ~0u, ~65360u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 26u)], 4294967295u)))), 8u)]);
    var var_1 = Struct_2(Struct_1(0u, vec4<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-424f, 278f, true)) + _wgslsmith_f_op_f32(-529f + var_0.a.b.x)), -742f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.b.xw - vec2<f32>(var_0.a.c.x, var_0.a.c.x)) + vec2<f32>(-2894f, var_0.a.b.x))), ~abs(u_input.b.xx), var_0.a.e));
    var var_2 = Struct_2(Struct_1(firstLeadingBit(global3[_wgslsmith_index_u32(~var_1.a.a, 17u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c.x, var_1.a.b.x, 457f, var_1.a.b.x) + _wgslsmith_f_op_vec4_f32(var_0.a.b * var_0.a.b)) * vec4<f32>(_wgslsmith_f_op_f32(max(-265f, 651f)), var_0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(abs(var_0.a.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.a.b.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.x, 1007f) + var_1.a.c)))), u_input.b.xw, !var_0.a.e));
    let var_3 = var_0.a.d;
    return _wgslsmith_clamp_u32(var_0.a.a, ~1u, global3[_wgslsmith_index_u32(1u, 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 197f;
    global2 = any(!vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), true));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, -180f)))) - _wgslsmith_div_f32(-860f, -1266f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1355f) + 1f)) + 1205f);
    var var_1 = _wgslsmith_div_vec2_u32(select(vec2<u32>(firstLeadingBit(u_input.c.x), func_1(vec4<bool>(false, true, true, true))), u_input.a.zw, select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), min(min(u_input.c.wx, u_input.a.zz), u_input.c.wy)) & (vec2<u32>(1u, 162u) & (~_wgslsmith_clamp_vec2_u32(vec2<u32>(5971u, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), u_input.d.yw, vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], 0u)) << (vec2<u32>(_wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(52098u, 26u)], 50075u), ~0u) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.wxw), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, u_input.b.x), vec3<i32>(u_input.b.x, -10795i, u_input.b.x))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(31944u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1636f * _wgslsmith_f_op_f32(-320f + -928f))), abs(u_input.b.wz), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<u32>(1u, var_1.x)), global3[_wgslsmith_index_u32(5893u, 17u)]) << (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(73496u, 1u), 26u)] % 32u), global1[_wgslsmith_index_u32(4294967295u, 26u)]));
}

