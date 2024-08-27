struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(-356f);

var<private> global3: vec2<f32> = vec2<f32>(-1642f, 638f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec3<bool> {
    let var_0 = vec3<u32>(4294967295u, 5725u, u_input.a);
    global0 = array<vec2<bool>, 4>();
    return select(select(vec3<bool>(true, arg_1, true), select(vec3<bool>(true, true, true), !(!vec3<bool>(true, arg_1, false)), !(!vec3<bool>(arg_1, false, arg_1))), !(!(!vec3<bool>(arg_1, false, arg_1)))), !select(!vec3<bool>(false, arg_1, arg_1), vec3<bool>(!arg_1, true, arg_1 && arg_1), !vec3<bool>(arg_1, false, true)), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = arg_0.b.c;
    return -2147483647i;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(arg_2.x), arg_0, _wgslsmith_add_i32(arg_0, -28590i)), (arg_2 & vec3<i32>(0i, -2147483647i, arg_2.x)) << (firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 30972u)) % vec3<u32>(32u))), vec3<i32>(-(~(arg_0 | -1i)), arg_0, func_4(Struct_3(global0[_wgslsmith_index_u32(select(global1.x, arg_1.d, false), 4u)], arg_1, arg_1.b.x, func_3(vec4<f32>(685f, global3.x, global3.x, arg_1.a.a), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, 129f) + arg_1.b.yx)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.a))), 55788i)));
    return -vec4<i32>(_wgslsmith_mult_i32(max(_wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(var_0.x, arg_2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(16694i, arg_0), vec2<i32>(28490i, 40377i))), var_0.x), _wgslsmith_add_i32(countOneBits(-83421i), 1i), func_4(Struct_3(select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a, 4u)], false), arg_1, 1413f, vec3<bool>(true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(global2.a * 991f), _wgslsmith_f_op_f32(f32(-1f) * -776f)), arg_1.b.x, -23838i), ~arg_2.x);
}

fn func_1(arg_0: u32) -> u32 {
    global0 = array<vec2<bool>, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(179f, 1222f))));
    global2 = Struct_1(global2.a);
    let var_1 = -(~reverseBits(_wgslsmith_mod_vec4_i32(func_2(-1i, Struct_2(Struct_1(global2.a), vec4<f32>(var_0, global2.a, -572f, var_0), Struct_1(global3.x), 42985u), vec3<i32>(-1i, 16589i, 0i)), firstLeadingBit(vec4<i32>(2147483647i, 0i, -52676i, 29745i)))));
    var var_2 = arg_0;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(func_1(_wgslsmith_sub_u32(4294967295u, 66002u)), u_input.a, global1.x << ((abs(73732u) | _wgslsmith_mult_u32(u_input.a, 4294967295u)) % 32u)), vec3<u32>(~global1.x, firstTrailingBit(u_input.a), 27100u) >> (vec3<u32>(19801u, 93u, ~min(1u, 25797u)) % vec3<u32>(32u)));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(~1247u, 4u)], Struct_2(Struct_1(global3.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -365f, -114f, -1014f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(124f, global2.a, 256f, -411f)))) * vec4<f32>(global3.x, _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_div_f32(-298f, -1065f))), Struct_1(_wgslsmith_f_op_f32(select(228f, -550f, true))), 103573u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1173f - -368f)), vec3<bool>(true, true, true));
    let var_2 = ~var_0;
    var var_3 = min(~firstTrailingBit(vec4<i32>(~(-2147483647i), _wgslsmith_div_i32(18226i, -2147483647i), 18503i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-39727i >> (~4294967295u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 46903i, 41746i), vec3<i32>(-1i, -2147483647i, -1i)), -15754i, countOneBits(~(-6812i))), vec4<i32>(1i, 1i >> (1u % 32u), ~(-1i), -1i)));
    global0 = array<vec2<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(375f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(527f + _wgslsmith_f_op_f32(min(1561f, -125f))) * 782f)), _wgslsmith_f_op_f32(ceil(global3.x)), 564f);
}

