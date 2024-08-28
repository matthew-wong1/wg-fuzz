struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-31684i, -1i, 611i, 2707i);

var<private> global1: array<i32, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<u32>, arg_3: f32) -> vec4<u32> {
    global1 = array<i32, 17>();
    let var_0 = global0.x;
    return ~max(~(vec4<u32>(10115u, 4294967295u, arg_2.x, arg_2.x) & vec4<u32>(19107u, arg_2.x, arg_2.x, 0u)), ~vec4<u32>(4294967295u, 37589u, 10767u, arg_2.x ^ arg_2.x));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> vec4<u32> {
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, arg_2.a, 12143i)) | ~(-vec4<i32>(arg_3.a, arg_1, -26595i, -2147483647i)), select(-(~vec4<i32>(arg_3.a, 1i, global0.x, -76550i)), vec4<i32>(firstLeadingBit(arg_1), select(-1i, -2147483647i, true), -1i, _wgslsmith_mult_i32(global0.x, -349i)), vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), true)), -vec4<i32>(arg_0.a.a, _wgslsmith_add_i32(-1i, arg_1), -21400i, _wgslsmith_div_i32(arg_3.a, -2147483647i))), abs(-vec4<i32>(arg_0.a.a, arg_0.a.a, -21694i, countOneBits(arg_3.a))));
    var var_0 = vec4<f32>(_wgslsmith_div_f32(arg_0.b, 471f), _wgslsmith_f_op_f32(trunc(587f)), -1066f, arg_0.b);
    global0 = vec4<i32>(1i, global1[_wgslsmith_index_u32(15026u, 17u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(arg_2.b.x, 17u)], -1i) | (_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(arg_3.b.x, 17u)], global1[_wgslsmith_index_u32(arg_0.a.b.x, 17u)], global0.x), vec4<i32>(global1[_wgslsmith_index_u32(arg_2.b.x, 17u)], -2147483647i, arg_0.a.a, 2147483647i))) << (_wgslsmith_clamp_u32(arg_3.b.x, 17014u, ~arg_2.b.x) % 32u)), -2147483647i);
    let var_1 = 1u;
    var var_2 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), false), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))));
    return ~select(arg_0.a.b, firstTrailingBit(arg_3.b), !(!(!vec4<bool>(false, false, var_2.x, false))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    var var_0 = select(~global0.zw, min(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-10517i, global0.x), vec2<i32>(global1[_wgslsmith_index_u32(arg_0.a.b.x, 17u)], -2147483647i) >> (vec2<u32>(6869u, arg_2.b.x) % vec2<u32>(32u)), arg_0.b < arg_0.b), vec2<i32>(abs(global0.x), _wgslsmith_mult_i32(-11839i, arg_2.a))), _wgslsmith_div_vec2_i32(select(vec2<i32>(2147483647i, global0.x), ~u_input.a.zx, vec2<bool>(true, true)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-45712i, arg_2.a), vec2<i32>(global0.x, arg_0.a.a)), ~u_input.a.xz))), vec2<bool>(true, true));
    var var_1 = global0.xz;
    var_1 = vec2<i32>(-arg_2.a, firstLeadingBit(20054i));
    let var_2 = ~vec2<u32>(9817u, 2992u);
    let var_3 = arg_2;
    return Struct_1(reverseBits(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, var_3.b.x), arg_2.b.yz), select(arg_1.a, vec2<u32>(arg_0.a.b.x, 0u), vec2<bool>(false, false)))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -592f);
    var var_1 = func_4(Struct_4(Struct_3(~_wgslsmith_mult_i32(-19009i, -50187i), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1368f, -876f, -1131f) * vec3<f32>(var_0, 187f, var_0)), !arg_3, vec2<u32>(1u, 1u), -188f)), var_0), Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1, arg_1) ^ min(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, arg_1)), vec2<u32>(arg_1, 16434u))), Struct_3(reverseBits(firstLeadingBit(firstTrailingBit(55457i))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 31904u, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 48583u, 0u)) & _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_1, arg_1, arg_1), vec4<u32>(0u, arg_1, 4294967295u, 4294967295u)), vec4<u32>(arg_1, 57803u, arg_1, arg_1), func_3(Struct_4(Struct_3(1i, vec4<u32>(arg_1, arg_1, arg_1, arg_1)), var_0), global0.x, Struct_3(5189i, vec4<u32>(arg_1, 0u, arg_1, arg_1)), Struct_3(global1[_wgslsmith_index_u32(83253u, 17u)], vec4<u32>(4294967295u, 45163u, arg_1, arg_1))))));
    global0 = countOneBits(reverseBits(vec4<i32>(abs(global1[_wgslsmith_index_u32(1u, 17u)]), abs(~(-1567i)), _wgslsmith_div_i32(global0.x, 1i), abs(-1i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(260f, var_0)))) - var_0), _wgslsmith_f_op_f32(ceil(var_0)), var_0, var_0)));
    let var_3 = -9629i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(105759u, 17927u, 27407u);
    global0 = abs(select(-(reverseBits(vec4<i32>(-18563i, u_input.a.x, 1i, 43483i)) & firstTrailingBit(vec4<i32>(7439i, global0.x, u_input.a.x, u_input.a.x))), -(~(vec4<i32>(global0.x, 0i, global1[_wgslsmith_index_u32(4294967295u, 17u)], global0.x) ^ vec4<i32>(global0.x, -16916i, 0i, global1[_wgslsmith_index_u32(var_0.x, 17u)]))), false));
    var var_1 = Struct_4(Struct_3(firstTrailingBit(func_1(1i, _wgslsmith_dot_vec2_u32(var_0.zy, var_0.zx), vec3<bool>(true, true, true), true)), ~vec4<u32>(var_0.x, var_0.x, 33836u, var_0.x) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 15453u, var_0.x, 1u), vec4<u32>(32131u, 1u, 31932u, 28902u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1748f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1679f + 553f))))));
    let var_2 = Struct_4(Struct_3(max(-24004i, var_1.a.a), var_1.a.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b + -1000f))));
    global1 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - _wgslsmith_div_f32(var_2.b, 679f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-177f, -595f, true)), _wgslsmith_f_op_f32(-var_2.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) + var_1.b)), var_2.b, -2252f));
}

