struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30130u;

var<private> global1: bool = true;

var<private> global2: array<bool, 17> = array<bool, 17>(false, true, true, false, false, false, false, false, true, true, false, false, true, true, false, false, false);

var<private> global3: array<vec4<f32>, 1>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d, -arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, arg_1), vec3<i32>(0i, arg_1, arg_0))), ~(countOneBits(vec3<i32>(u_input.c, -7285i, 16226i)) ^ ~vec3<i32>(arg_1, -2147483647i, 2147483647i))), min(abs(vec4<i32>(-2147483647i, firstLeadingBit(arg_1), ~arg_0, countOneBits(-40153i))), _wgslsmith_clamp_vec4_i32((vec4<i32>(arg_0, u_input.d, 1i, -2147483647i) & vec4<i32>(-17804i, 2147483647i, arg_0, u_input.d)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-5296i, 0i, u_input.d, u_input.d), vec4<i32>(-1i, -19989i, -49216i, 1i)), reverseBits(vec4<i32>(2147483647i, arg_0, arg_0, u_input.a)) >> (vec4<u32>(0u, 4294967295u, u_input.b, 1u) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_1, u_input.c, 17813i), vec4<i32>(35195i, 64216i, 2147483647i, 2147483647i))))), vec3<i32>(30830i, ~arg_0, _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, arg_0), 1i >> (firstLeadingBit(1u) % 32u))), false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-868f - -923f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1715f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1097f)), _wgslsmith_f_op_f32(f32(-1f) * -143f)), _wgslsmith_f_op_f32(step(-161f, _wgslsmith_f_op_f32(-591f + 129f)))) * _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(~4294967295u, 1u)] - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1664f, 942f, -529f, -2005f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1190f, 1660f, -724f, 1138f)))))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.e.x, 17u)];
    let var_2 = Struct_3(firstLeadingBit(u_input.c));
    let var_3 = -_wgslsmith_div_vec3_i32(var_0.b.wxx, vec3<i32>(-35206i, max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 28565i, u_input.d, u_input.d), vec4<i32>(arg_1, -2147483647i, var_0.a.x, u_input.c))), 1i));
    global0 = ~abs(~_wgslsmith_dot_vec2_u32(u_input.e, u_input.e));
    return var_0.e.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, _wgslsmith_f_op_f32(func_3(~(-2614i), _wgslsmith_sub_i32(arg_1, -2147483647i)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1274f, _wgslsmith_f_op_f32(arg_0.a.e.x + -399f)))));
    var var_1 = Struct_3(abs(-17311i));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_mod_vec2_i32(var_2.a.c.xx, abs(~(-var_2.a.b.wy)));
    var_0 = var_2.a.e.zx;
    return ~(~u_input.e.x);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    global0 = reverseBits(func_2(Struct_2(arg_3), arg_3.c.x));
    global3 = array<vec4<f32>, 1>();
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(0i, abs(u_input.d >> (u_input.e.x % 32u))), 0i), ~arg_3.a.x, ~(~arg_3.a.x));
    let var_1 = ~vec3<i32>(~(abs(var_0.x) | 23418i), 23143i, arg_3.b.x);
    let var_2 = Struct_3(~(-2147483647i));
    return -1993f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f + _wgslsmith_f_op_f32(f32(-1f) * -718f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1000f, -270f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1173f, 946f, 403f) + vec3<f32>(-1288f, -1175f, -1183f)), Struct_1(vec3<i32>(1i, 44851i, 3679i), vec4<i32>(u_input.a, 35981i, -5061i, u_input.a), vec3<i32>(u_input.d, -2147483647i, 0i), global2[_wgslsmith_index_u32(u_input.b, 17u)], global3[_wgslsmith_index_u32(u_input.b, 1u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-152f * 416f) + 461f);
    global1 = all(!(!select(!vec4<bool>(false, global2[_wgslsmith_index_u32(106u, 17u)], global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(31044u, 17u)]), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 17u)], false, global2[_wgslsmith_index_u32(103223u, 17u)], false), true)));
    let var_0 = Struct_1(-((~vec3<i32>(u_input.d, u_input.d, u_input.d) | (vec3<i32>(25458i, u_input.c, 25956i) >> (vec3<u32>(u_input.e.x, u_input.e.x, 0u) % vec3<u32>(32u)))) >> (~(~vec3<u32>(22942u, u_input.b, u_input.b)) % vec3<u32>(32u))), -(vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.c, u_input.c, 31770i, 1371i))), abs(abs(~min(vec3<i32>(u_input.c, u_input.d, 1i), vec3<i32>(-37925i, u_input.d, 4970i)))), true, vec4<f32>(_wgslsmith_f_op_f32(ceil(376f)), _wgslsmith_f_op_f32(-1402f + -997f), -850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) * _wgslsmith_f_op_f32(sign(1708f))))));
    var var_1 = Struct_2(var_0);
    var var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(1i & ~(~u_input.c << (~30833u % 32u)), var_1.a.e.x);
}

