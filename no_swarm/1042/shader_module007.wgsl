struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 277f;

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    global2 = Struct_1(false, vec3<bool>(all(select(global1[_wgslsmith_index_u32(select(global2.c.x, u_input.a, true), 11u)], global2.b.yz, global2.b.x || false)), !(!global2.a), any(vec3<bool>(false, true, global2.d.x != global2.d.x))), u_input.c.zz, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.d.x, global2.d.x, global2.a)) * _wgslsmith_f_op_f32(sign(-923f))) + global2.d.x), global2.d.x));
    global2 = Struct_1(-1287f >= global2.d.x, vec3<bool>(true, global2.a || global2.a, ~u_input.d != arg_0), ~firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(global2.c.x, global2.c.x, global2.c.x), 60555u)), vec2<f32>(_wgslsmith_f_op_f32(-676f * _wgslsmith_f_op_f32(sign(381f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1000f, global2.d.x, true)), _wgslsmith_f_op_f32(sign(global2.d.x)), true))));
    var var_0 = Struct_1(global2.d.x >= global2.d.x, vec3<bool>(all(select(select(global2.b, global2.b, vec3<bool>(global2.a, global2.b.x, true)), global2.b, !vec3<bool>(global2.b.x, global2.a, global2.a))), !global2.a, all(!vec4<bool>(global2.b.x, true, global2.a, global2.b.x))), vec2<u32>(global2.c.x, _wgslsmith_div_u32(0u, global2.c.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(596f)) + 1720f), _wgslsmith_f_op_f32(358f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)))));
    return -1000f;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(abs(~41862i), firstTrailingBit(2147483647i)))));
    let var_1 = _wgslsmith_clamp_vec4_u32(~u_input.e, u_input.e, u_input.e | _wgslsmith_add_vec4_u32(firstLeadingBit(~u_input.e), ~u_input.e << (countOneBits(u_input.e) % vec4<u32>(32u))));
    var var_2 = Struct_1(true, global2.b, ~(~var_1.xw), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.d + _wgslsmith_f_op_vec2_f32(-global2.d)))))));
    let var_3 = global1[_wgslsmith_index_u32(global2.c.x, 11u)];
    var var_4 = Struct_1(any(arg_0), vec3<bool>(all(arg_0), true, false), max(abs(~global2.c >> (~vec2<u32>(50495u, var_1.x) % vec2<u32>(32u))), ~select(global2.c, ~vec2<u32>(1u, global2.c.x), !arg_0.xw)), global2.d);
    return all(select(!vec4<bool>(arg_0.x, var_3.x, false, true), arg_0, var_2.a)) & true;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global2 = Struct_1(!(func_2(!vec4<bool>(global2.b.x, true, global2.a, arg_0.a)) || global2.b.x), vec3<bool>(arg_0.b.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, 17760i), vec3<i32>(-5223i, u_input.d, u_input.d))) >= u_input.d, !(u_input.d >= 7086i)), vec2<u32>(_wgslsmith_mult_u32(4294967295u, ~u_input.a), _wgslsmith_clamp_u32(~6378u, _wgslsmith_mult_u32(u_input.c.x, 32318u), global2.c.x)) ^ global2.c, arg_0.d);
    let var_0 = arg_0;
    global2 = arg_0;
    let var_1 = arg_0.c;
    var var_2 = true;
    return select(!vec4<bool>(var_0.b.x, !global2.b.x, global2.b.x, any(vec3<bool>(global2.b.x, global2.a, arg_0.b.x))), !(!(!(!vec4<bool>(var_0.a, var_0.b.x, true, false)))), select(!vec4<bool>(all(global2.b), all(vec4<bool>(false, arg_0.a, true, false)), arg_0.a, global2.b.x), vec4<bool>(false, all(vec3<bool>(arg_0.a, false, true)) || true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!(!vec4<bool>(global2.a, true, global2.b.x, false)), vec4<bool>(any(vec4<bool>(global2.b.x, global2.a, true, false)), !global2.b.x, global2.b.x, any(select(global2.b, vec3<bool>(global2.b.x, true, global2.a), vec3<bool>(global2.a, false, true)))), select(vec4<bool>(global2.b.x, true, true, true), select(!vec4<bool>(global2.b.x, global2.a, false, false), func_1(Struct_1(global2.b.x, vec3<bool>(global2.a, global2.a, global2.b.x), vec2<u32>(1073u, 23695u), vec2<f32>(-1740f, -1284f))), select(vec4<bool>(false, false, false, false), vec4<bool>(global2.b.x, true, true, global2.a), vec4<bool>(global2.b.x, global2.a, true, global2.b.x))), global2.b.x)), !vec4<bool>(all(!vec4<bool>(false, global2.a, true, global2.b.x)), global2.b.x, true, true), all(global2.b.zy));
    var var_1 = vec2<u32>(min(global2.c.x, ~(~firstLeadingBit(global2.c.x))), 58214u);
    let var_2 = _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(41503u, global2.c.x)), vec2<u32>(~_wgslsmith_div_u32(~global2.c.x, 38813u), 11982u));
    var_1 = global2.c;
    let var_3 = var_0;
    var var_4 = firstLeadingBit(_wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.d, u_input.d, u_input.d), min(vec4<i32>(u_input.d, 0i, 2147483647i, 1i), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d))), vec4<i32>(u_input.d, _wgslsmith_add_i32(-11659i | u_input.d, 1i ^ u_input.d), -(u_input.d << (global2.c.x % 32u)), min(u_input.d, u_input.d) << (_wgslsmith_dot_vec3_u32(u_input.e.yyx, vec3<u32>(global2.c.x, u_input.b, 78902u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.x);
}

