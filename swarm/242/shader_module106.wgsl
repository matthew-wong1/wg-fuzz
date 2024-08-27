struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 14608i);

var<private> global1: f32;

var<private> global2: vec4<i32>;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, true), 1u, vec4<u32>(1u, 1u, 1u, 61399u), vec2<i32>(14405i, 3308i), -59188i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec2<bool> {
    let var_0 = Struct_1(vec2<bool>(all(vec4<bool>(false, !global4.a.x, false, global2.x <= global4.e)), true), global4.c.x, vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.x, global4.b), global4.b, 20631u), countOneBits(_wgslsmith_sub_u32(0u, arg_0.x)), _wgslsmith_clamp_u32(58167u, ~4294967295u, firstTrailingBit(global4.b)), global4.b), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, global4.d.x, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, -18882i, global0.x, -1i), vec4<i32>(global2.x, global4.d.x, global0.x, -3378i))), ~0i), ~(-2147483647i));
    var var_1 = Struct_1(global4.a, ~4294967295u, max(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(var_0.c.zxx), ~arg_0), var_0.b, firstLeadingBit(~var_0.b), min(15582u & var_0.c.x, global4.c.x)), var_0.c), firstTrailingBit(countOneBits(vec2<i32>(-2147483647i, global4.e))), global2.x);
    global4 = var_0;
    let var_2 = var_0;
    let var_3 = !select(!(!vec3<bool>(var_1.a.x, false, false)), select(vec3<bool>(var_2.d.x > 7605i, var_0.a.x, all(vec2<bool>(true, arg_1))), vec3<bool>(any(vec2<bool>(var_1.a.x, false)), true, true), select(vec3<bool>(false, false, true), !vec3<bool>(true, global4.a.x, global4.a.x), !vec3<bool>(var_1.a.x, var_2.a.x, true))), global4.a.x);
    return select(vec2<bool>(true, any(select(select(var_3.xz, vec2<bool>(true, true), var_1.a.x), select(vec2<bool>(false, var_1.a.x), vec2<bool>(var_3.x, false), vec2<bool>(arg_1, var_2.a.x)), !global4.a))), select(vec2<bool>(any(var_3), !var_2.a.x), select(!vec2<bool>(var_2.a.x, global4.a.x), select(vec2<bool>(true, global4.a.x), vec2<bool>(true, global4.a.x), true), select(select(vec2<bool>(true, true), vec2<bool>(var_1.a.x, arg_1), false), select(vec2<bool>(true, var_3.x), var_1.a, false), any(vec3<bool>(var_3.x, var_3.x, false)))), all(!vec2<bool>(false, global4.a.x))), ((i32(-1i) * -5847i) ^ _wgslsmith_div_i32(var_0.d.x ^ var_2.e, reverseBits(-29499i))) < abs(u_input.a.x));
}

fn func_2(arg_0: bool) -> bool {
    global4 = Struct_1(!(!(!func_3(vec3<u32>(1u, global4.b, global4.b), true))), global4.c.x >> (global4.b % 32u), ~global4.c, ~vec2<i32>(global0.x << (1u % 32u), -12701i), -(_wgslsmith_mult_i32(global0.x, global0.x) & _wgslsmith_add_i32(-1i, -25281i)) << (_wgslsmith_clamp_u32(27501u, 957u, ~_wgslsmith_add_u32(global4.c.x, 35479u)) % 32u));
    var var_0 = Struct_1(!(!(!vec2<bool>(global4.a.x, true))), reverseBits(38965u), _wgslsmith_div_vec4_u32(~global4.c, ~global4.c), firstLeadingBit(min(vec2<i32>(u_input.a.x, global0.x), global4.d)), abs(_wgslsmith_add_i32(global4.e, _wgslsmith_div_i32(abs(global2.x), _wgslsmith_clamp_i32(global2.x, global0.x, -59440i)))));
    var var_1 = !select(select(vec3<bool>(func_3(vec3<u32>(global4.b, var_0.b, global4.c.x), var_0.a.x).x, true, true), !vec3<bool>(var_0.a.x, var_0.a.x, arg_0), false), select(!select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, var_0.a.x, false), var_0.a.x), !vec3<bool>(true, var_0.a.x, false), select(vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(var_0.a.x, arg_0, arg_0), vec3<bool>(global4.a.x, false, false), arg_0), arg_0)), select(vec3<bool>(all(vec4<bool>(true, global4.a.x, global4.a.x, true)), true, !global4.a.x), !(!vec3<bool>(var_0.a.x, arg_0, global4.a.x)), !(!vec3<bool>(arg_0, arg_0, global4.a.x))));
    let var_2 = Struct_1(!select(!(!var_0.a), var_1.yx, select(select(var_0.a, vec2<bool>(true, false), var_1.zz), func_3(vec3<u32>(var_0.c.x, global4.c.x, var_0.c.x), true), var_0.a.x || var_0.a.x)), firstLeadingBit(var_0.c.x), global4.c, firstTrailingBit(vec2<i32>(~global4.e, -u_input.a.x)), 53011i);
    global4 = var_2;
    return var_2.a.x;
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(global4.a, global4.b >> (~((global4.c.x & global4.b) << (1u % 32u)) % 32u), global4.c, -global2.yx, 0i);
    var var_1 = -706f;
    let var_2 = !select(!(!select(vec4<bool>(true, true, global4.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, global4.a.x, var_0.a.x), var_0.a.x)), vec4<bool>(any(!vec2<bool>(false, var_0.a.x)), true, true, func_2(any(vec3<bool>(var_0.a.x, true, global4.a.x)))), select(!(!vec4<bool>(true, var_0.a.x, false, false)), vec4<bool>(true, true, true, true), true));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1013f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1202f)))));
    var var_3 = abs(abs(~_wgslsmith_add_u32(1u, 23618u)));
    return i32(-1i) * -(~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(vec4<i32>(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(880f, -849f, 211f, 712f))), global0.x, _wgslsmith_dot_vec2_i32(-reverseBits(u_input.a.xx), -vec2<i32>(global2.x, 24784i)), -27167i), vec4<i32>(global4.e | (global0.x ^ reverseBits(global2.x)), -44035i, 20275i, 0i));
    global0 = max(global2.xx, max(~global4.d, vec2<i32>(global2.x, i32(-1i) * -17457i)));
    var var_0 = Struct_1(global4.a, ~(_wgslsmith_mod_u32(firstLeadingBit(global4.c.x), 52198u >> (global4.b % 32u)) >> (33832u % 32u)), _wgslsmith_add_vec4_u32(global4.c, ~(~(~vec4<u32>(global4.b, global4.b, global4.b, global4.b)))), vec2<i32>(1i, global4.d.x), ~(~2147483647i));
    let var_1 = ~(~vec4<u32>(~1u, ~global4.c.x << (global4.b % 32u), 4294967295u, ~1u));
    global2 = ~vec4<i32>(5569i, u_input.a.x, ~u_input.a.x, var_0.d.x) << (var_1 % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(300f, 696f, 1638f, -1473f) * vec4<f32>(1658f, -764f, 784f, -1986f)), _wgslsmith_div_vec4_f32(vec4<f32>(242f, 1114f, 202f, -215f), vec4<f32>(-297f, 1302f, 1629f, 1000f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(f32(-1f) * -1854f), _wgslsmith_f_op_f32(1560f * 1934f), _wgslsmith_f_op_f32(f32(-1f) * -1001f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 404f, 911f, 602f))) * vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(1606f, -1565f, _wgslsmith_f_op_f32(f32(-1f) * -636f), -1412f), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1872f, -1636f, -653f, 1617f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, 1270f, -726f, -698f) - vec4<f32>(844f, -1000f, 1000f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2349f, 309f, 1000f, 1089f)))))));
    var var_3 = reverseBits((vec2<i32>(2147483647i, global2.x) | ~min(vec2<i32>(-43749i, 1i), var_0.d)) << (select(var_1.yy, global4.c.yw, select(!global4.a, !var_0.a, !var_0.a.x)) % vec2<u32>(32u)));
    var var_4 = (select(countOneBits(101316u), ~0u, any(select(vec3<bool>(true, false, false), vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<bool>(global4.a.x, var_0.a.x, false)))) == (~(~1u) & _wgslsmith_mod_u32(~global4.c.x, global4.c.x))) == (_wgslsmith_f_op_f32(trunc(var_2.x)) < _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(exp2(var_2.x))));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_2.xw)) + vec2<f32>(-643f, 405f))) * var_2.yz));
    let x = u_input.a;
    s_output = StorageBuffer(1065f, _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_5.x))))) - _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(sign(-187f)))));
}

