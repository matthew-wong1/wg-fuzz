struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: array<vec3<bool>, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> vec4<u32> {
    let var_0 = arg_2.x;
    return abs(arg_1.a) | (vec4<u32>(u_input.a, firstTrailingBit(_wgslsmith_div_u32(0u, 4294967295u)), countOneBits(62194u) | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 1u, global0.d.x), global0.d), arg_1.a.x) ^ vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(8157u, 10463u), arg_1.d.xx), ~_wgslsmith_add_u32(global0.a.x, 38407u), ~(~u_input.b.x)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = any(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~arg_0) & (countOneBits(global0.a.x) ^ 1u), u_input.a), 13u)]);
    var_0 = !(!(!global0.b));
    global2 = array<vec3<bool>, 13>();
    var var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.d.x, u_input.a, arg_0, 0u) | vec4<u32>(0u, global0.a.x, 61981u, 1u), global0.a), func_3(_wgslsmith_f_op_f32(-546f * _wgslsmith_f_op_f32(step(-759f, 390f))), Struct_1(global0.a | global0.a, true, ~global1.x, ~vec3<u32>(44049u, 7159u, u_input.a), global0.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2026f, -144f, 1661f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1324f, 728f, -185f))))), global0.e)), select(~(24323u ^ u_input.a) < select(u_input.a, ~arg_0, select(global0.e, true, global0.b)), !(!global0.e), false), -9418i, reverseBits(countOneBits(vec3<u32>(_wgslsmith_mult_u32(u_input.a, global0.a.x), u_input.b.x, ~12245u))), true);
    return Struct_1(~reverseBits(vec4<u32>(~var_2.a.x, 1u, ~u_input.b.x, abs(u_input.a))), true, -max(_wgslsmith_sub_i32(firstLeadingBit(54629i), abs(global0.c)), global0.c >> ((global0.a.x | var_2.a.x) % 32u)), ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(56009u, var_2.d.x, global0.d.x), ~var_2.d)), all(select(select(!vec4<bool>(true, false, false, global0.e), vec4<bool>(var_2.b, global0.b, false, var_2.b), global0.b), !select(vec4<bool>(global0.b, false, false, true), vec4<bool>(true, var_2.e, true, false), vec4<bool>(global0.b, true, global0.e, var_2.e)), select(vec4<bool>(global0.e, global0.e, true, global0.e), vec4<bool>(false, var_2.e, true, true), !vec4<bool>(var_2.b, global0.e, false, global0.b)))));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(abs(-19152i), global1.x), -select(global0.c << (global0.a.x % 32u), i32(-1i) * -23973i, true)), 1035i, 2147483647i);
    let var_1 = func_2(12144u);
    var var_2 = vec2<bool>(true, !any(vec2<bool>(var_1.b, global0.b)));
    let var_3 = vec4<bool>(!(!all(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_0))), var_1.c < global0.c, true, true);
    let var_4 = _wgslsmith_sub_u32(~var_1.a.x, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(_wgslsmith_sub_u32(10533u, var_1.a.x), global0.a.x, var_1.d.x)), ~var_1.d.x));
    return select(!select(vec2<bool>(true, true), !select(var_3.yx, vec2<bool>(true, var_2.x), global0.b), select(var_3.yz, var_3.zz, true)), select(select(var_3.xy, vec2<bool>(var_2.x, false), all(var_3.xw) & var_3.x), var_3.yy, var_3.zz), vec2<bool>(true, all(var_3.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(false, !global0.b), select(!vec2<bool>(true, global0.e), select(func_1(true), vec2<bool>(true, global0.e), !vec2<bool>(global0.b, global0.b)), false), false), func_1(true), global0.e);
    var var_1 = func_2(1u >> (u_input.a % 32u));
    let var_2 = 1u;
    var var_3 = !var_0;
    var var_4 = false;
    var var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, global1.x, 31043i, 76304i), vec4<i32>(0i, -23988i, 56113i, -16680i), vec4<i32>(global0.c, global0.c, 23164i, 1i)), select(vec4<i32>(2147483647i, global1.x, 12690i, -1i), vec4<i32>(global0.c, -3124i, -76298i, 11843i), vec4<bool>(false, global0.b, false, var_0.x)), firstTrailingBit(vec4<i32>(global1.x, global1.x, -49534i, global0.c))), -vec4<i32>(-32252i, -2147483647i, -81213i, global0.c))), _wgslsmith_f_op_f32(trunc(1195f)), _wgslsmith_clamp_vec3_u32(~global0.a.xzw, vec3<u32>(select(var_2, var_1.d.x, false), ~4294967295u, _wgslsmith_mult_u32(19062u, 0u)), vec3<u32>(_wgslsmith_sub_u32(1u, var_1.d.x), ~4294967295u, var_1.a.x)) & (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, var_1.d.x) | global0.a.xzy, global0.a.wxz & global0.d) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(global0.d.x, var_2, u_input.a), ~global0.a.yxz)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(729f, _wgslsmith_div_f32(1475f, -671f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2307f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-137f)))))));
}

