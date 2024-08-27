struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.c.yzz & _wgslsmith_add_vec3_u32(arg_1.c.xyy, vec3<u32>(6331u, 0u, 1u)), arg_1.c.xzz), vec3<u32>(~7284u, arg_2.x, 38674u)), ~arg_1.c.xzw);
    let var_1 = all(select(select(select(!arg_1.b, vec2<bool>(arg_1.b.x, false), global1.x), select(vec2<bool>(true, true), arg_1.b, select(arg_1.b, arg_1.b, arg_1.b)), vec2<bool>(false && global1.x, true && arg_1.b.x)), vec2<bool>(all(vec2<bool>(global1.x, false)) && any(vec4<bool>(true, arg_1.d, arg_1.d, global1.x)), select(true, 17777u >= arg_2.x, global1.x)), arg_1.d && any(!vec3<bool>(arg_1.d, false, arg_1.b.x))));
    var var_2 = _wgslsmith_div_i32(-3740i, arg_1.a.x);
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, firstTrailingBit(-(~(-15013i)))), -39589i);
    let var_4 = Struct_3(arg_1, firstLeadingBit(0i), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), all(!vec3<bool>(false, false, var_1)) & false)));
    return abs(max(~_wgslsmith_sub_u32(arg_1.c.x, ~1u), arg_1.c.x));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    global0 = array<i32, 6>();
    var var_0 = Struct_5(283f, ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~4294967295u, select(0u, 0u, false))));
    let var_1 = ~(vec3<u32>(~var_0.b.x, ~_wgslsmith_mult_u32(0u, 37419u), func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, 1000f, var_0.a), vec3<f32>(var_0.a, 715f, var_0.a))), Struct_1(vec4<i32>(u_input.a.x, -46556i, 1i, global0[_wgslsmith_index_u32(var_0.b.x, 6u)]), vec2<bool>(true, global1.x), vec4<u32>(0u, var_0.b.x, var_0.b.x, 87162u), false), var_0.b)) ^ (select(~vec3<u32>(74960u, 0u, var_0.b.x), vec3<u32>(var_0.b.x, 18286u, 9477u), true) | vec3<u32>(0u, ~35346u, 14368u)));
    global1 = vec2<bool>(any(vec2<bool>(true, var_1.x < 0u)), arg_0);
    var var_2 = vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, -1i) | vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(var_1.x, 6u)], -2147483647i, global0[_wgslsmith_index_u32(var_0.b.x, 6u)]), vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 6u)], 2147483647i, -1i, -36917i)) | countOneBits(i32(-1i) * -36008i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xy), -(u_input.a.x << (0u % 32u))) & vec4<i32>(-global0[_wgslsmith_index_u32(max(1u, var_0.b.x), 6u)] & _wgslsmith_div_i32(-31612i << (var_0.b.x % 32u), u_input.a.x), 64116i, -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.b.x, 6u)], -3408i), firstTrailingBit(min(global0[_wgslsmith_index_u32(4294967295u, 6u)] << (var_1.x % 32u), u_input.a.x)));
    return ~_wgslsmith_div_vec2_u32(~select(~var_1.yz, vec2<u32>(var_0.b.x, var_0.b.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x))), ~(~select(vec2<u32>(var_0.b.x, var_0.b.x), var_0.b, false)));
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = -1i;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1306f, -2263f))))), _wgslsmith_sub_vec2_u32(func_2(true), vec2<u32>(1u, func_2(global1.x).x) & _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 81055u) >> (vec2<u32>(arg_0, 55573u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(20273u, 4294967295u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1188f, -675f), _wgslsmith_f_op_f32(438f * var_1.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-439f, -1069f) - vec2<f32>(-948f, var_1.a)))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.a)))), var_1.a)));
    return 29901i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 22265u;
    var var_1 = vec4<i32>(u_input.a.x, -24743i, _wgslsmith_div_i32(-firstTrailingBit(~0i), func_1(1u, -10455i)), -_wgslsmith_dot_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]), u_input.a.xz));
    let var_2 = var_1.zx;
    var var_3 = Struct_2(Struct_1(select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, -1i, var_1.x, -2147483647i), max(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 6u)], var_2.x, 1i, global0[_wgslsmith_index_u32(1u, 6u)]))), vec4<i32>(-1i) * -vec4<i32>(var_2.x, -13765i, 1i, 6783i), !select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, true, global1.x, false))), vec2<bool>(any(vec2<bool>(global1.x, global1.x)) | global1.x, true), countOneBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(13940u, 4294967295u, 1u, 30116u), vec4<u32>(69632u, 0u, 4294967295u, 59624u), global1.x), ~vec4<u32>(74142u, 1u, 4294967295u, 131570u))), !(!any(vec2<bool>(true, false)))), firstTrailingBit(~1u) >> (_wgslsmith_add_u32(1u, 1u) % 32u), ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(max(451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f * 369f)) + _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -318f)))))), Struct_1(~select(abs(vec4<i32>(global0[_wgslsmith_index_u32(1299u, 6u)], 6025i, global0[_wgslsmith_index_u32(80740u, 6u)], 29265i)), vec4<i32>(-26293i, 2531i, var_1.x, u_input.a.x) & vec4<i32>(1i, -70135i, var_2.x, var_2.x), global0[_wgslsmith_index_u32(1u, 6u)] <= 25013i), select(vec2<bool>(true, global1.x), select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, true), false), select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false))), select(!vec2<bool>(global1.x, false), !vec2<bool>(global1.x, global1.x), global1.x && global1.x)), firstTrailingBit(select(~vec4<u32>(4294967295u, 75565u, 1u, 0u), min(vec4<u32>(1u, 0u, 4294967295u, 3072u), vec4<u32>(1u, 1u, 4294967295u, 62507u)), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, true), false))), true == global1.x));
    var var_4 = reverseBits(vec2<u32>(~_wgslsmith_div_u32(~23430u, abs(var_3.c.x)), firstLeadingBit(var_3.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_vec3_i32(~(var_3.a.a.zzx << (vec3<u32>(1u, var_3.c.x, var_3.e.c.x) % vec3<u32>(32u))), u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d, 1000f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-168f, var_3.d)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.d, var_3.d), vec2<f32>(-311f, -745f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-359f, var_3.d)))))), ~_wgslsmith_add_i32(-_wgslsmith_add_i32(-27384i, 1i), 1i));
}

