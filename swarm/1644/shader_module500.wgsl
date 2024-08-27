struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(531f, 349f, 773f, -1000f, 1234f, -1626f, -688f, -1000f, -393f, -226f, 236f, -1545f, 1670f, 2380f, 230f, 139f, 2049f, 778f, 795f, -293f, 1309f, -516f, 1871f, 120f, 580f, -995f);

var<private> global1: array<vec4<i32>, 8>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_mult_i32(reverseBits(arg_1.x), (firstTrailingBit(2147483647i) >> (64433u % 32u)) << (~1u % 32u));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_2 = Struct_3(vec4<i32>(min(arg_1.x & 2147483647i, min(-2147483647i, arg_1.x)) << (u_input.a.x % 32u), -arg_1.x, firstLeadingBit(_wgslsmith_sub_i32(arg_1.x << (0u % 32u), arg_1.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 3440i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, 0i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 2147483647i), global1[_wgslsmith_index_u32(127429u, 8u)])), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-21873i, arg_1.x), firstTrailingBit(55115i), _wgslsmith_dot_vec3_i32(arg_1, arg_1)))), Struct_2(85568u), Struct_2(~u_input.a.x));
    var var_3 = vec3<i32>(~var_2.a.x, -(~arg_1.x), ~countOneBits(arg_1.x | -arg_1.x));
    var var_4 = var_3.xz;
    return select(1u, min(~(~_wgslsmith_add_u32(0u, 57200u)), var_2.b.a), -24814i > var_4.x);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = ~(~(~func_3(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(14896u, 26u)], arg_2.x, arg_2.x), arg_0, vec4<f32>(arg_2.x, global0[_wgslsmith_index_u32(0u, 26u)], 296f, arg_2.x)), vec3<i32>(0i, -2147483647i, arg_1.x), 742f)) >> (~0u % 32u));
    global1 = array<vec4<i32>, 8>();
    global0 = array<f32, 26>();
    var_0 = ~_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(select(max(arg_3.a, arg_3.a), _wgslsmith_mult_u32(u_input.a.x, arg_3.a), arg_0 && true), ~(~arg_3.a), 4294967295u));
    return arg_3;
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    global1 = array<vec4<i32>, 8>();
    let var_0 = func_2(all(vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.zx, (vec2<i32>(arg_0.x, -23123i) << (u_input.a.xz % vec2<u32>(32u))) >> (vec2<u32>(88317u, 58227u) % vec2<u32>(32u))), arg_0.xw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, -1000f)) - _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 764f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))))), Struct_2(u_input.a.x & u_input.a.x));
    var var_1 = var_0;
    var var_2 = false;
    global1 = array<vec4<i32>, 8>();
    return StorageBuffer(~u_input.a.zx, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_0.x, _wgslsmith_div_i32(46032i, -27356i)), _wgslsmith_add_i32(countOneBits(arg_0.x), _wgslsmith_div_i32(arg_0.x, 1i)), _wgslsmith_clamp_i32(arg_0.x, 1i, _wgslsmith_add_i32(arg_0.x, 1i)), ~(~arg_0.x)), vec4<i32>(~_wgslsmith_mod_i32(-1i, arg_0.x), 31506i << ((0u << (var_1.a % 32u)) % 32u), arg_0.x, i32(-1i) * -43659i)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = countOneBits(4294967295u);
    let x = u_input.a;
    s_output = func_1(vec4<i32>(-2147483647i, -2147483647i, countOneBits(-select(-38433i, 1i, false)), 1i));
}

