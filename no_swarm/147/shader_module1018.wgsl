struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 16> = array<i32, 16>(-1i, 1i, 21300i, -51773i, i32(-2147483648), 0i, i32(-2147483648), 0i, i32(-2147483648), 12635i, 0i, 6007i, 0i, -11903i, 46979i, 61175i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    global1 = array<i32, 16>();
    let var_0 = select(1i, 11241i, arg_0);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(682f, _wgslsmith_f_op_f32(f32(-1f) * -541f)))), ~max(~(vec4<u32>(u_input.c, 29096u, 0u, u_input.b) << (vec4<u32>(1u, 4294967295u, 82901u, 0u) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(27381u, arg_2, arg_2, arg_2), vec4<u32>(u_input.b, u_input.b, arg_2, arg_2)))));
    let var_2 = Struct_1(var_1.a, vec4<u32>(arg_2, ~(~max(37298u, u_input.b)), arg_2, max(~(~11558u), 4294967295u)));
    var var_3 = u_input.a.xwx;
    return var_1;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = arg_3;
    let var_1 = Struct_2(arg_2, arg_2, ~(~(~(~vec4<u32>(u_input.b, var_0.c.x, arg_1.x, arg_2.b.x)))));
    let var_2 = vec3<i32>(-firstTrailingBit(-1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(20031i, u_input.d.x, global1[_wgslsmith_index_u32(u_input.b, 16u)]), abs(u_input.a.wyw)) ^ 0i, -_wgslsmith_mult_i32(-1i ^ global1[_wgslsmith_index_u32(0u, 16u)], -54621i)), -2147483647i);
    var_0 = var_1;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 322f), var_1.a.b);
    return any(vec2<bool>(arg_0 | true, true));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), 1692f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-329f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f - 1000f) - 100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-606f - -2157f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1035f + arg_1.x))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-911f, -1413f, -1152f, var_2.x), vec4<f32>(var_2.x, -258f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(131f, var_2.x, arg_1.x, -1000f)), var_1.x)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1267f)))), arg_0), func_1(var_1.x, u_input.a.xxw, arg_0.x), firstTrailingBit(~arg_0));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = (4294967295u < (var_0 >> ((0u << (u_input.c % 32u)) % 32u))) | all(vec3<bool>(true, true, true));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-452f, -1540f) + vec2<f32>(-1000f, -1086f))))), ~vec4<u32>(4294967295u, _wgslsmith_add_u32(11591u, u_input.b), 1u, 15557u)), func_1(false, u_input.a.xww, var_0), ~(vec4<u32>(firstLeadingBit(var_0), abs(var_0), _wgslsmith_add_u32(var_0, 25128u), abs(84804u)) & ~(~vec4<u32>(u_input.b, var_0, u_input.c, 0u))));
    let var_3 = !vec4<bool>(any(vec2<bool>(true, all(vec4<bool>(false, false, true, true)))), -382f > var_2.b.a.x, func_2(true, var_2.a.b.zyx, Struct_1(var_2.b.a, var_2.b.b), Struct_2(var_2.b, var_2.b, var_2.c)) & (select(true, true, true) && all(vec4<bool>(false, false, false, false))), func_3(vec4<u32>(var_2.a.b.x, 14542u, 50575u, u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(643f, -1000f, var_2.a.a.x))) || any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))));
    let var_4 = func_1(!(_wgslsmith_add_u32(1u ^ var_0, var_2.c.x) > func_1(!var_3.x, firstLeadingBit(u_input.a.wzy), var_2.c.x).b.x), vec3<i32>(global1[_wgslsmith_index_u32(abs(~42225u), 16u)], -(~u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0, 16u)], 2147483647i, -1i, u_input.d.x) | vec4<i32>(1i, u_input.d.x, global1[_wgslsmith_index_u32(12877u, 16u)], u_input.d.x), vec4<i32>(global1[_wgslsmith_index_u32(15322u, 16u)], u_input.a.x, 0i, global1[_wgslsmith_index_u32(0u, 16u)]) >> (var_2.c % vec4<u32>(32u))), vec4<i32>(~0i, abs(-1i), ~global1[_wgslsmith_index_u32(var_2.c.x, 16u)], _wgslsmith_div_i32(11683i, global1[_wgslsmith_index_u32(1u, 16u)])))), 4294967295u);
    var var_5 = Struct_2(func_1(true, _wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.a.wyx), ~u_input.a.wzw) | u_input.a.xzy, 4294967295u), func_1(false, _wgslsmith_sub_vec3_i32(u_input.a.wzw, vec3<i32>(8774i, countOneBits(u_input.d.x), _wgslsmith_mod_i32(2147483647i, global1[_wgslsmith_index_u32(var_2.a.b.x, 16u)]))), firstTrailingBit(var_4.b.x)), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_4.a + _wgslsmith_f_op_vec2_f32(select(var_5.b.a, vec2<f32>(-1562f, _wgslsmith_f_op_f32(-var_5.b.a.x)), !any(var_3.ywx)))));
}

