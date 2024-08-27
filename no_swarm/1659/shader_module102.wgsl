struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<vec3<f32>, 25>;

var<private> global2: vec2<i32>;

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(global1[_wgslsmith_index_u32(115656u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)])))), vec3<f32>(-224f, _wgslsmith_f_op_f32(round(668f)), -696f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2796f + -670f), -298f, _wgslsmith_f_op_f32(1000f + -348f))))), global1[_wgslsmith_index_u32(max(arg_0, abs(~arg_0)), 25u)]));
    global2 = _wgslsmith_add_vec2_i32(vec2<i32>(~_wgslsmith_mod_i32(~57896i, global2.x << (9525u % 32u)), 1i), firstTrailingBit(~(-firstTrailingBit(vec2<i32>(global2.x, global2.x)))));
    global3 = global2.x;
    global0 = array<Struct_1, 32>();
    global2 = ~reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(26766i, _wgslsmith_dot_vec2_i32(vec2<i32>(-85026i, global2.x), vec2<i32>(0i, global2.x))), min(vec2<i32>(-1i, global2.x), vec2<i32>(global2.x, -1i)) & _wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(global2.x, global2.x))));
    return vec4<i32>(_wgslsmith_mod_i32(-6658i, _wgslsmith_mod_i32(1i, global2.x)), global2.x, global2.x, global2.x) ^ -_wgslsmith_sub_vec4_i32(vec4<i32>(~global2.x, -33362i, global2.x, firstLeadingBit(global2.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, 1i, 2147483647i, global2.x), vec4<i32>(1i, global2.x, global2.x, global2.x)), vec4<i32>(global2.x, -2147483647i, global2.x, -1i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, max(global2.x, select(global2.x, global2.x, true) >> (~33160u % 32u)), -global2.x, abs(2147483647i)), vec4<i32>(global2.x, global2.x, global2.x, global2.x) & func_3(~0u));
    global0 = array<Struct_1, 32>();
    let var_1 = ~vec3<i32>(_wgslsmith_div_i32(var_0.x, _wgslsmith_add_i32(-global2.x, -var_0.x)), firstTrailingBit(_wgslsmith_clamp_i32(reverseBits(-1i), -2147483647i, 0i)), firstTrailingBit(~(-681i)));
    global1 = array<vec3<f32>, 25>();
    var var_2 = Struct_3(Struct_2(_wgslsmith_mod_vec4_i32(var_0 | var_0, var_0), arg_0));
    return Struct_1(~1u, arg_0.d.x, arg_0.c, arg_0.d);
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_add_i32(countOneBits(arg_0.x), ~(arg_0.x ^ -40944i)), -1i, ~(~(-arg_0.x)), 1i), func_2(global0[_wgslsmith_index_u32(1u, 32u)]));
    global2 = countOneBits(select(-firstLeadingBit(~vec2<i32>(arg_0.x, arg_0.x)), var_0.a.wx, var_0.b.d.wy));
    return Struct_3(Struct_2(var_0.a, func_2(func_2(func_2(var_0.b)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = all(!arg_2.d.yyy) || (arg_1.a.x >= arg_0.a.a.x);
    var var_1 = u_input.a;
    return arg_0.a.b.b;
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global0 = array<Struct_1, 32>();
    global2 = -firstLeadingBit(arg_2);
    let var_1 = ~13879i;
    global2 = _wgslsmith_add_vec2_i32(vec2<i32>(-443i, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -24010i, ~var_1), arg_2)), arg_2);
    return func_1(-vec3<i32>(var_1, _wgslsmith_add_i32(35963i, var_1) << (max(u_input.a.x, 26058u) % 32u), -61972i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 25u)], vec4<bool>(true, !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false)), true, -(~global2.x) < (-15389i & -global2.x)));
    global2 = vec2<i32>(countOneBits(firstTrailingBit(-2147483647i)), reverseBits(countOneBits(global2.x << (1u % 32u)))) | -(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(global2.x, 10298i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global2.x), vec2<i32>(1i, 0i), vec2<i32>(global2.x, -1i))) | ~vec2<i32>(1i, 1i));
    var var_1 = func_5(!((~u_input.a.x < 4294967295u) | func_4(func_1(vec3<i32>(5979i, global2.x, 5204i)), Struct_2(vec4<i32>(-8736i, global2.x, 1i, global2.x), var_0), Struct_1(var_0.a, var_0.d.x, vec3<f32>(1437f, var_0.c.x, -188f), var_0.d))), !(!var_0.d.ww), _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, 17778i)), vec2<i32>(2147483647i, global2.x)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-47088i, global2.x), _wgslsmith_add_vec2_i32(vec2<i32>(32829i, 13804i), vec2<i32>(global2.x, global2.x)))), true);
    var var_2 = -_wgslsmith_mod_vec2_i32(~abs(vec2<i32>(global2.x, var_1.a.a.x)), -(~var_1.a.a.zy)) ^ var_1.a.a.yw;
    let var_3 = firstLeadingBit(-15889i) >> (~4294967295u % 32u);
    let var_4 = func_5(_wgslsmith_add_i32(1i, var_2.x) < _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_3, var_1.a.a.x), ~(-29902i)), var_1.a.b.d.ww, var_1.a.a.zw, true);
    var var_5 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.a.b.c.yz - var_4.a.b.c.xy)));
    let var_6 = -201f;
    let x = u_input.a;
    s_output = StorageBuffer(22565i);
}

