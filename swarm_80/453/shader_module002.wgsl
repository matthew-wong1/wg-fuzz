struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<vec2<u32>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: vec2<u32>) -> u32 {
    let var_0 = max(arg_2.x, arg_1.b);
    let var_1 = Struct_5(arg_1.a, 36445u, firstTrailingBit(~(~vec2<i32>(u_input.a, arg_1.c.x))), select(!arg_1.d, !select(vec2<bool>(true, true), arg_1.d, vec2<bool>(arg_1.d.x, false)), arg_1.d));
    global2 = array<vec2<u32>, 20>();
    global1 = array<Struct_3, 32>();
    let var_2 = all(select(!vec4<bool>(u_input.c >= 27265u, var_1.d.x, var_1.d.x, any(vec2<bool>(arg_1.d.x, true))), select(!select(vec4<bool>(arg_1.d.x, false, var_1.d.x, arg_1.d.x), vec4<bool>(arg_1.d.x, false, true, true), vec4<bool>(var_1.d.x, var_1.d.x, arg_1.d.x, false)), !(!vec4<bool>(arg_1.d.x, true, true, false)), select(!vec4<bool>(true, var_1.d.x, var_1.d.x, arg_1.d.x), vec4<bool>(arg_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), !var_1.d.x)), select(select(vec4<bool>(arg_1.d.x, arg_1.d.x, true, var_1.d.x), vec4<bool>(var_1.d.x, arg_1.d.x, var_1.d.x, var_1.d.x), select(vec4<bool>(arg_1.d.x, false, var_1.d.x, false), vec4<bool>(arg_1.d.x, var_1.d.x, var_1.d.x, false), true)), !(!vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x)), !vec4<bool>(arg_1.d.x, var_1.d.x, true, true))));
    return ~4294967295u;
}

fn func_2(arg_0: i32) -> f32 {
    global0 = u_input.c;
    global2 = array<vec2<u32>, 20>();
    var var_0 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zzz, u_input.b.xxw), _wgslsmith_add_i32(-1i, -2147483647i), -2147483647i, abs(-5334i)) << (vec4<u32>(max(u_input.c, 4294967295u), ~u_input.c, func_3(u_input.c, Struct_5(2197f, u_input.c, vec2<i32>(0i, u_input.a), vec2<bool>(true, false)), global2[_wgslsmith_index_u32(u_input.c, 20u)]), 4294967295u) % vec4<u32>(32u)), countOneBits(u_input.b)));
    let var_1 = global1[_wgslsmith_index_u32(u_input.c, 32u)];
    let var_2 = Struct_5(_wgslsmith_f_op_f32(exp2(var_1.c)), 52180u, ~(~reverseBits(vec2<i32>(u_input.a, var_1.b))), select(vec2<bool>(-2147483647i < ~arg_0, var_1.d), !select(!vec2<bool>(var_1.a, var_1.d), !vec2<bool>(var_1.d, var_1.d), true), true));
    return var_1.c;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = ~global2[_wgslsmith_index_u32(u_input.c, 20u)];
    global0 = (var_0.x ^ u_input.c) << (~_wgslsmith_add_u32(~abs(4292u), _wgslsmith_div_u32(select(u_input.c, 1u, false), reverseBits(u_input.c))) % 32u);
    var var_1 = (~(~abs(u_input.b.xyw)) & arg_1) >> (_wgslsmith_mult_vec3_u32(reverseBits(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, var_0.x), vec3<u32>(u_input.c, 4294967295u, var_0.x)), vec3<u32>(u_input.c, 27671u, var_0.x) >> (vec3<u32>(32756u, 1u, 1u) % vec3<u32>(32u)), arg_1.x > 2147483647i)), ~(~vec3<u32>(u_input.c, 1u, var_0.x) | (vec3<u32>(u_input.c, 0u, var_0.x) ^ vec3<u32>(4922u, u_input.c, 37439u)))) % vec3<u32>(32u));
    let var_2 = abs(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(39324u, u_input.c, u_input.c, u_input.c) & vec4<u32>(var_0.x, var_0.x, u_input.c, 38184u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 44053u, var_0.x, u_input.c), reverseBits(vec4<u32>(0u, var_0.x, var_0.x, 25000u)))), vec4<u32>(76078u, _wgslsmith_sub_u32(u_input.c | 0u, min(35956u, var_0.x)), 37170u, countOneBits(~var_0.x))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), 347f)) * _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)))))), -1769f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(2147483647i))) - _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 521f))))));
    return select(u_input.b.zy & vec2<i32>(~_wgslsmith_mod_i32(2147483647i, 11695i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.yxx, vec3<i32>(-1i, -2147483647i, 0i)), arg_1.x)), -max(-(~u_input.b.zz), _wgslsmith_mult_vec2_i32(arg_1.xy, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 36498i), vec2<i32>(-46733i, arg_1.x)))), all(!vec2<bool>(true, all(vec3<bool>(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 32>();
    global0 = 1u;
    var var_0 = _wgslsmith_sub_vec2_i32(u_input.b.xz, vec2<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_mod_i32(u_input.b.x, u_input.a)), firstTrailingBit(-65700i))) ^ (func_1(_wgslsmith_f_op_f32(select(-108f, -1841f, true)), -(vec3<i32>(u_input.a, 56212i, u_input.b.x) | u_input.b.xzw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 619f, 1153f)) - vec3<f32>(888f, -811f, -505f))) >> (firstLeadingBit(vec2<u32>(~u_input.c, 35247u)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(-u_input.b.zy ^ min(vec2<i32>(0i, var_0.x), u_input.b.xz), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -31501i), u_input.b.xz), u_input.b.xy)), ~vec2<i32>(2147483647i, 19799i));
    var var_2 = select(vec3<u32>(u_input.c, u_input.c, _wgslsmith_add_u32(~u_input.c, ~u_input.c)), _wgslsmith_div_vec3_u32(~vec3<u32>(81201u, 0u, u_input.c), abs(vec3<u32>(u_input.c, u_input.c, u_input.c))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 22511u, 0u), vec3<u32>(0u, 0u, u_input.c)), abs(vec3<u32>(0u, 1u, 9683u))) % vec3<u32>(32u)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true), any(vec4<bool>(true, true, false, true))))) >> (~(~min(_wgslsmith_add_vec3_u32(vec3<u32>(49687u, 4294967295u, u_input.c), vec3<u32>(1u, u_input.c, 4294967295u)), select(vec3<u32>(0u, 1u, 27738u), vec3<u32>(4294967295u, u_input.c, 0u), true))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yy, u_input.b.www, ~global2[_wgslsmith_index_u32(20000u, 20u)]);
}

