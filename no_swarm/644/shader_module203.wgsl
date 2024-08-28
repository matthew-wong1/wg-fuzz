struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_1, 32>;

var<private> global2: Struct_1 = Struct_1(47560u, vec2<bool>(true, false), 31333u, vec3<i32>(5479i, 0i, 1i));

var<private> global3: bool = true;

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec2<i32> {
    var var_0 = global2.d.x;
    let var_1 = arg_1.b.x;
    var var_2 = -1108f;
    let var_3 = ~28862i;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1406f * 261f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1106f, -693f, arg_3))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(382f - 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(527f * 115f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1467f)));
    return global2.d.yy;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global1 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.d.zz, ~vec2<i32>(i32(-1i) * -8253i, 2147483647i)), ~max(arg_1.d.yy, arg_1.d.xy));
    var var_1 = arg_1;
    let var_2 = Struct_1(arg_1.c, vec2<bool>(true, all(!(!vec3<bool>(arg_1.b.x, global2.b.x, false)))), arg_1.c, vec3<i32>(select(global2.d.x, _wgslsmith_mult_i32(-11750i, u_input.b), !arg_1.b.x), _wgslsmith_add_i32(firstTrailingBit(1i), global2.d.x), 1i));
    var_0 = func_2(1i >> (u_input.a.x % 32u), var_2, 72u, any(select(select(vec3<bool>(var_2.b.x, true, arg_1.b.x), vec3<bool>(var_2.b.x, var_2.b.x, true), select(vec3<bool>(global2.b.x, true, true), vec3<bool>(var_1.b.x, var_2.b.x, var_2.b.x), true)), !vec3<bool>(false, true, arg_1.b.x), all(vec4<bool>(arg_1.b.x, var_1.b.x, var_1.b.x, false)))));
    return Struct_1(u_input.c.x, vec2<bool>(global2.b.x, false), ~_wgslsmith_div_u32(arg_1.a, max(20252u & var_1.c, ~54530u)), var_1.d);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = -1174f;
    var var_1 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, reverseBits(~(arg_1.x & 17807u))), vec2<bool>(!all(!vec3<bool>(global2.b.x, global2.b.x, false)), all(vec3<bool>(all(global2.b), true, func_1(arg_0.d, global1[_wgslsmith_index_u32(0u, 32u)], vec4<f32>(arg_2.x, -1000f, 691f, 673f)).b.x))), 101080u, vec3<i32>(global2.d.x, func_1(~global2.d, Struct_1(u_input.c.x, global2.b, arg_0.a, arg_0.d), vec4<f32>(-1370f, 410f, arg_2.x, 220f)).d.x, -(~u_input.d)) >> (u_input.c.xxw % vec3<u32>(32u)));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_3 = _wgslsmith_dot_vec4_u32(countOneBits(countOneBits(abs(u_input.c))), ~vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(var_1.c, var_2.c), 48153u), ~4294967295u, 4294967295u >> (u_input.c.x % 32u), ~var_1.a));
    global1 = array<Struct_1, 32>();
    return Struct_1(4294967295u, func_1(var_1.d, Struct_1(128632u, vec2<bool>(global2.b.x & arg_0.b.x, true | var_2.b.x), 1u, min(vec3<i32>(26401i, -37065i, 1i) << (vec3<u32>(u_input.c.x, 20561u, var_1.a) % vec3<u32>(32u)), abs(vec3<i32>(u_input.b, var_1.d.x, 2147483647i)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)), arg_2.x, 223f)))).b, max(_wgslsmith_dot_vec2_u32(firstLeadingBit(arg_1), select(vec2<u32>(arg_0.a, 1u), u_input.a, false)), var_3) << (35185u % 32u), ~select(-(global2.d >> (vec3<u32>(6934u, 4294967295u, 0u) % vec3<u32>(32u))), -vec3<i32>(arg_0.d.x, -18676i, -44893i) << (u_input.c.wxx % vec3<u32>(32u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(global2.a, 13u)];
    let var_1 = _wgslsmith_clamp_u32(u_input.c.x, 1u, 6269u);
    global2 = func_3(func_1(select(vec3<i32>(u_input.b, 2147483647i, var_0.d.x), -vec3<i32>(34934i, global2.d.x, var_0.d.x), any(vec3<bool>(false, false, false))) >> (~(u_input.c.xzw | u_input.c.yxz) % vec3<u32>(32u)), Struct_1(~(~var_1), var_0.b, var_1, (vec3<i32>(var_0.d.x, 2147483647i, var_0.d.x) & global2.d) & -global2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(1536f, -922f, _wgslsmith_f_op_f32(select(346f, 725f, true)), 1f) * vec4<f32>(_wgslsmith_f_op_f32(1774f - -1737f), 747f, _wgslsmith_f_op_f32(max(488f, -1000f)), 1f))), countOneBits(u_input.a & vec2<u32>(1u, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(964f, 477f, 1941f), vec3<f32>(-261f, -425f, -1693f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1378f, -991f, -1085f) + vec3<f32>(-1366f, 2140f, -1381f))))));
    global1 = array<Struct_1, 32>();
    var var_2 = ~vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.a, 0u), _wgslsmith_mult_u32(var_0.a, global2.c))), _wgslsmith_sub_u32(var_1, reverseBits(4294967295u)), max(1u, abs(~u_input.c.x)));
    let var_3 = firstTrailingBit(_wgslsmith_sub_i32(global2.d.x, _wgslsmith_add_i32(min(var_0.d.x, reverseBits(global2.d.x)), -44544i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(2505f, 246f, 1000f, 500f) - vec4<f32>(-596f, -1049f, 105f, 1255f)))))), ~(~var_2.xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, _wgslsmith_f_op_f32(f32(-1f) * -1273f)))));
}

