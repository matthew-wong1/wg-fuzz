struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32;

var<private> global2: vec2<f32> = vec2<f32>(539f, -221f);

var<private> global3: array<u32, 11>;

var<private> global4: array<vec4<u32>, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> vec2<u32> {
    let var_0 = Struct_1(true, ~(~select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_1, 1i, arg_1), vec4<i32>(u_input.a.x, u_input.c.x, -1i, 31789i)), reverseBits(vec4<i32>(u_input.c.x, -71020i, -2216i, -28028i)), true)));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)))));
    var var_1 = 53187i;
    let var_2 = Struct_1(var_0.a, -firstTrailingBit(vec4<i32>(-1i) * -var_0.b));
    var var_3 = var_2.a;
    return _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~0u, firstLeadingBit(7766u)), vec2<u32>(global0.x, 1u)) & (vec2<u32>(max(global0.x, global0.x), global3[_wgslsmith_index_u32(0u, 11u)]) | vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~29781u, 11u)], 11u)])), global0.yx);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global1 = ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(12188u, 11u)], 1u) & global0.yy, ~global0.xz)), 11u)], 11u)];
    let var_0 = Struct_2(arg_0);
    var var_1 = max(-744i, abs(min(~4811i, select(_wgslsmith_add_i32(6276i, 1i), firstTrailingBit(arg_0.b.x), any(vec3<bool>(true, arg_0.a, var_0.a.a))))));
    var_1 = -min(0i, 2147483647i);
    var_1 = -u_input.a.x;
    return !vec3<bool>(global2.x < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1494f)))), !arg_0.a, ((var_0.a.b.x <= u_input.c.x) & !var_0.a.a) | true);
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + 1033f), _wgslsmith_f_op_f32(-global2.x)) - global2.x))));
    var var_2 = true;
    var var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_f32(-global2.x);
    return func_3(Struct_1(var_3.x < ~(u_input.a.x | var_3.x), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, 1i), countOneBits(u_input.c.x)), -1i, -var_3.x, -1i)));
}

fn func_4(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a, u_input.c);
    return vec4<f32>(-757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2309f, global2.x))))), _wgslsmith_f_op_f32(global2.x * global2.x), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.yw >> (func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -654f, global2.x)) - vec3<f32>(1000f, global2.x, global2.x))), u_input.c.x) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(!func_2(vec4<bool>(false, true, false, true))))));
    let var_2 = reverseBits(u_input.c);
    var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_f32(-124f + _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(global2.x + var_1.x))), var_1.x, global2.x)));
    var var_3 = Struct_2(Struct_1(select(~1u != global0.x, global0.x <= (global0.x & var_0.x), false), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(47967i, u_input.c.x, 0i, 59898i), vec4<i32>(2147483647i, -15616i, 2147483647i, var_2.x)), 71716i, _wgslsmith_sub_i32(u_input.c.x, u_input.b.x), _wgslsmith_sub_i32(-2147483647i, 1i)) | (firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, 0i, 33736i)) & abs(vec4<i32>(937i, -11997i, u_input.a.x, -1i)))));
    global4 = array<vec4<u32>, 19>();
    let var_4 = select(!vec2<bool>(all(vec3<bool>(true, var_3.a.a, var_3.a.a)), true), select(vec2<bool>(!var_3.a.a, any(select(vec3<bool>(var_3.a.a, true, var_3.a.a), vec3<bool>(true, var_3.a.a, true), vec3<bool>(var_3.a.a, false, var_3.a.a)))), !(!(!vec2<bool>(var_3.a.a, true))), vec2<bool>(true, any(vec3<bool>(false, var_3.a.a, var_3.a.a)))), var_3.a.a);
    let var_5 = Struct_2(Struct_1((_wgslsmith_clamp_i32(19547i, var_2.x, 40437i) & -1i) < -21963i, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 46463i, 2147483647i, var_2.x), var_3.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(abs(59662u), 11u)], u_input.a, global3[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1111f, 1000f, 782f)))))), firstLeadingBit(_wgslsmith_sub_vec2_i32(var_3.a.b.yw, -u_input.c)) & u_input.b);
}

