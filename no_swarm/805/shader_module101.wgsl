struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: array<Struct_3, 26>;

var<private> global2: vec4<f32>;

var<private> global3: f32;

var<private> global4: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(0u, 88711u, 0u, 20064u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_1(vec3<bool>(true, select(!any(vec3<bool>(false, false, false)), true, false), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)), _wgslsmith_f_op_f32(exp2(arg_0)), 669f);
    global3 = _wgslsmith_f_op_f32(step(2238f, 1478f));
    let var_2 = abs(u_input.a.x) | u_input.a.x;
    let var_3 = u_input.b;
    return _wgslsmith_dot_vec3_i32(max(vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_1.x, var_2)), countOneBits(vec2<i32>(arg_1.x, -1i))), 1i, 25942i), vec3<i32>(14708i, countOneBits(1i), _wgslsmith_add_i32(reverseBits(var_2), var_2 >> (42113u % 32u)))), _wgslsmith_mult_vec3_i32(vec3<i32>(-(~(-1i)), _wgslsmith_mult_i32(var_2, _wgslsmith_add_i32(-4068i, var_2)), arg_1.x), ~(-vec3<i32>(49824i, arg_1.x, u_input.a.x))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = reverseBits(~(vec3<i32>(343i, arg_0, arg_0) | vec3<i32>(-37913i, func_3(811f, vec2<i32>(arg_0, -3390i)), arg_0)));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(1i, -21977i), _wgslsmith_mod_i32(arg_0, var_0.x) & ((-23679i | arg_0) >> (79748u % 32u)));
    var var_2 = Struct_2(arg_2.b, Struct_1(select(select(select(arg_2.a.a, arg_2.b.a, arg_2.b.a), arg_2.a.a, !vec3<bool>(arg_2.b.a.x, arg_2.b.a.x, arg_2.b.a.x)), !select(arg_2.a.a, arg_2.b.a, true), vec3<bool>(true, !arg_2.b.a.x, true))), !select(arg_2.c, vec4<bool>(true, true, true, any(arg_2.b.a.yx)), arg_2.c.x));
    var var_3 = firstLeadingBit(abs(vec4<i32>(u_input.a.x, 0i, i32(-1i) * -14947i, 1i) & ~(~vec4<i32>(1i, var_1, u_input.a.x, arg_0))));
    let var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x << (25173u % 32u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(4294967295u), ~u_input.c.x), u_input.c.x)), 26u)];
    return var_0.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = ~_wgslsmith_mult_i32(countOneBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(29459i, u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 0i)))), ~(~min(-95199i, arg_1.x)));
    var var_1 = !(!any(arg_2.c) && any(!arg_2.b.a));
    let var_2 = arg_2.a;
    global1 = array<Struct_3, 26>();
    global0 = array<vec4<u32>, 8>();
    return func_2(reverseBits(-2147483647i), _wgslsmith_f_op_vec2_f32(-arg_0.yx), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.a.x, -u_input.a.x, func_1(vec4<f32>(global2.x, -206f, global2.x, global2.x), vec3<i32>(u_input.a.x, -31032i, 57251i), Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), vec4<bool>(false, false, false, true)))), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 1i, u_input.a.x)) ^ -(vec3<i32>(1i, u_input.a.x, -2147483647i) | min(vec3<i32>(-39291i, u_input.a.x, -2147483647i), vec3<i32>(1i, -2147483647i, -2147483647i))), vec3<i32>(-(~countOneBits(u_input.a.x)), 0i, func_3(global2.x, countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), abs(u_input.b)), 26u)];
    global1 = array<Struct_3, 26>();
    global4 = array<vec4<u32>, 1>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.x, -1402f, false)), -1896f))) + -1857f) * global2.x);
    global1 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(594f, vec4<i32>(1i, firstTrailingBit(~1i), u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 1i) | (i32(-1i) * -14143i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 395f, -1091f, -1490f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, var_2)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(-var_2), -444f, var_2))));
}

