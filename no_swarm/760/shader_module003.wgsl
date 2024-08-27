struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: bool;

var<private> global2: array<i32, 5>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-200f, arg_1.a.x) * _wgslsmith_div_f32(-582f, -838f))), arg_1.c, 1692f), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-336f, arg_1.a.x)) * -721f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - 353f), arg_1.a.x), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    global1 = any(!(!vec3<bool>(global2[_wgslsmith_index_u32(59142u, 5u)] >= 1i, true, true)));
    let var_1 = min(arg_3.e.x, 9234u);
    global2 = array<i32, 5>();
    global2 = array<i32, 5>();
    return arg_1.x;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-939f, -597f), vec2<f32>(1224f, 1350f), vec2<bool>(false, true))), u_input.b.yy, -423f, vec4<f32>(-449f, 358f, -367f, -205f), vec4<u32>(u_input.d, u_input.d, u_input.d, 16882u) << (vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(1u, Struct_1(vec2<f32>(2106f, 666f), u_input.c, -1043f, vec4<f32>(-1002f, 935f, 588f, -1000f), vec4<u32>(0u, 4294967295u, u_input.d, u_input.d))))), ~select(vec4<i32>(2147483647i, -38169i, arg_0, 2147483647i), vec4<i32>(2147483647i, -17167i, u_input.b.x, -1i), vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(-190f, -1000f), vec2<i32>(-27056i, arg_0) ^ vec2<i32>(arg_0, -1i), 899f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1941f, 509f, -1023f, 591f) + vec4<f32>(510f, 1161f, -1560f, 837f)), ~vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)))), _wgslsmith_f_op_f32(f32(-1f) * -401f)), abs(u_input.c) & -u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(-601f, -1252f)))) - _wgslsmith_div_f32(-380f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -879f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1790f, 386f, false)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-942f)), _wgslsmith_f_op_f32(f32(-1f) * -152f), 1u < u_input.d))), 1f, -351f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(-839f * 634f)))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 36057u, u_input.d, 0u), select(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, 35882u, 10715u), vec4<bool>(true, false, false, true))), vec4<u32>(_wgslsmith_div_u32(1u, 1u), firstTrailingBit(u_input.d), ~2478u, u_input.d)), select(~4294967295u, 1u, false), firstLeadingBit(u_input.d), 0u >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), vec3<u32>(34011u, u_input.d, 2319u))) % 32u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, 901f), var_0.d.xz), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.d.yx))))) - vec2<f32>(-181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + -1348f))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.d)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-429f, 451f, 1127f, var_0.c) - var_0.d)))))), _wgslsmith_mult_vec4_u32(var_0.e, vec4<u32>(reverseBits(_wgslsmith_add_u32(0u, 30646u)), countOneBits(~var_0.e.x), var_0.e.x, ~var_0.e.x)));
    let var_1 = ~(~((_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_0, var_0.b.x), vec3<i32>(-1i, -2147483647i, 21958i), vec3<i32>(u_input.a, var_0.b.x, 12835i)) >> (var_0.e.zzx % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(var_0.e.x, u_input.d, 0u)) % vec3<u32>(32u))));
    let var_2 = vec2<u32>(var_0.e.x, _wgslsmith_clamp_u32(~var_0.e.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 17920u, 107123u), countOneBits(var_0.e.zxw)), ~(~vec3<u32>(9383u, 28719u, 1u))), reverseBits(u_input.d)));
    let var_3 = select(select(vec2<bool>(true, !(global2[_wgslsmith_index_u32(4294967295u, 5u)] != arg_0)), select(vec2<bool>(all(vec2<bool>(false, true)), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), true)), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, true)), true), var_2.x <= u_input.d), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, u_input.d < 1u), vec2<bool>(true, true)), vec2<bool>(true, var_0.d.x > var_0.d.x)), select(!vec2<bool>(any(vec4<bool>(true, true, false, false)), select(true, false, true)), vec2<bool>(true, true), vec2<bool>(true, u_input.c.x >= (i32(-1i) * -45391i))));
    return any(!(!vec3<bool>(!var_3.x, var_3.x, var_3.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    let var_1 = 1u;
    var var_2 = u_input.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c)))) == -1307f;
    let var_3 = arg_0;
    return _wgslsmith_add_u32(arg_3.e.x, select(1u, u_input.d, select(!(var_2.x != -2147483647i), func_2(_wgslsmith_div_i32(var_3.b.x, u_input.c.x)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(max(-(~(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], -1i, u_input.b.x, global2[_wgslsmith_index_u32(u_input.d, 5u)]) | vec4<i32>(u_input.c.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]))), -vec4<i32>(global0[_wgslsmith_index_u32(~u_input.d, 23u)], _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), _wgslsmith_mod_i32(-2147483647i, u_input.a), ~19873i)), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -global2[_wgslsmith_index_u32(u_input.d, 5u)], 0i, ~(-1i | global2[_wgslsmith_index_u32(19564u, 5u)]), global0[_wgslsmith_index_u32(min(func_1(Struct_1(vec2<f32>(-502f, -232f), u_input.b.xy, 832f, vec4<f32>(-170f, 1000f, -1164f, -324f), vec4<u32>(u_input.d, u_input.d, 14349u, 43172u)), vec2<u32>(43381u, 31085u), Struct_1(vec2<f32>(-982f, -694f), u_input.b.zy, -1507f, vec4<f32>(-1729f, 525f, 121f, -674f), vec4<u32>(11889u, 5146u, u_input.d, 35142u)), Struct_1(vec2<f32>(-870f, 416f), vec2<i32>(-2147483647i, 1i), 633f, vec4<f32>(651f, -2092f, -801f, 502f), vec4<u32>(u_input.d, u_input.d, 81782u, u_input.d))), firstLeadingBit(u_input.d)), 23u)]), vec4<i32>(_wgslsmith_div_i32(-31362i, ~20282i), 0i, _wgslsmith_clamp_i32(-887i, global0[_wgslsmith_index_u32(u_input.d, 23u)], u_input.c.x) & global0[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(~u_input.d, 5u)])));
    global0 = array<i32, 23>();
    var var_1 = firstTrailingBit(u_input.d);
    var var_2 = true;
    global1 = false;
    var var_3 = ~(abs(~vec2<u32>(32812u, u_input.d) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 53483u), vec2<u32>(u_input.d, 0u)) % vec2<u32>(32u))) & select(~firstLeadingBit(vec2<u32>(u_input.d, u_input.d)), vec2<u32>(4294967295u, u_input.d), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, -673f, 352f))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-2380f)), -284f, -1212f)))), var_3.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-545f, 101f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1307f, 909f) + vec2<f32>(1081f, 507f)))) + vec2<f32>(189f, _wgslsmith_f_op_f32(668f - -637f))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1012f, -1000f), _wgslsmith_f_op_vec3_f32(func_3(1u, Struct_1(vec2<f32>(-1075f, 1366f), vec2<i32>(global2[_wgslsmith_index_u32(0u, 5u)], -38882i), 412f, vec4<f32>(1952f, -1316f, -1412f, 409f), vec4<u32>(4294967295u, var_3.x, u_input.d, var_3.x)))).x)), -304f))));
}

