struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(2147483647i, -19405i, 9757i, 35356i), vec2<f32>(-1279f, -772f), vec2<u32>(2935u, 1u), -1000f), vec3<u32>(4294967295u, 0u, 29227u), true, vec4<bool>(false, true, false, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = -2909i;
    var var_1 = false;
    var_1 = global2.d.x;
    var var_2 = Struct_2(Struct_1(-vec4<i32>(global2.a.a.x, 1i, -28866i, -1i) & global2.a.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global2.a.b.x - global2.a.b.x), _wgslsmith_f_op_f32(max(1186f, global2.a.d))))), vec2<u32>(global2.b.x, global2.a.c.x), 520f), ~(vec3<u32>(~global2.a.c.x, ~26821u, 41703u) | vec3<u32>(1u, 57764u, global2.a.c.x)), global2.c, global2.d);
    let var_3 = ~(~(min(global2.a.a.x, var_2.a.a.x & var_2.a.a.x) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.a.x, global2.a.a.x, 9652i, var_2.a.a.x), global2.a.a, var_2.a.a), vec4<i32>(var_2.a.a.x, 2147483647i, var_2.a.a.x, var_2.a.a.x))));
    return var_2.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    global0 = -771f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.d * arg_1.x), -1327f, arg_2)))) * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(round(-1042f))));
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(856f - arg_1.x) * -1384f))), arg_1.x, _wgslsmith_f_op_f32(-global2.a.d)), _wgslsmith_f_op_vec3_f32(min(arg_1.xzy, arg_1.wxx)));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, ~u_input.b.x), ~(vec2<u32>(4294967295u, global2.b.x) >> (global2.a.c % vec2<u32>(32u)))), 19132u);
    global2 = Struct_2(global2.a, vec3<u32>(26111u, arg_0.c.x, 28879u), global2.d.x & !(firstTrailingBit(global2.a.a.x) == _wgslsmith_add_i32(global2.a.a.x, global2.a.a.x)), !global2.d);
    return 83523u;
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    var var_0 = Struct_2(func_2(), vec3<u32>(~4338u, u_input.b.x, ~1u & _wgslsmith_sub_u32(func_3(global2.a, arg_0, global2.c), 36813u)), false, !vec4<bool>(true, all(global2.d.yw), all(!vec3<bool>(global2.c, global2.c, true)), true));
    let var_1 = 4294967295u;
    var_0 = Struct_2(Struct_1(~vec4<i32>(-var_0.a.a.x, _wgslsmith_clamp_i32(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), global2.a.a.x, global2.a.a.x), _wgslsmith_f_op_vec2_f32(var_0.a.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.b, vec2<f32>(731f, var_0.a.d)))), max(_wgslsmith_div_vec2_u32(min(vec2<u32>(65098u, var_0.b.x), vec2<u32>(75851u, 49805u)), firstTrailingBit(vec2<u32>(var_0.a.c.x, 0u))), vec2<u32>(4294967295u, countOneBits(u_input.a.x))), _wgslsmith_f_op_f32(1147f + _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_sub_vec3_u32(var_0.b, reverseBits(global2.b)), all(!vec4<bool>(var_0.c || true, var_0.c, false, true)), global2.d);
    var var_2 = Struct_2(func_2(), vec3<u32>(firstTrailingBit(158272u), _wgslsmith_dot_vec3_u32(~global2.b << (firstLeadingBit(vec3<u32>(u_input.a.x, u_input.b.x, 18701u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, var_0.b.x, global2.a.c.x), u_input.b.wzw >> (global2.b % vec3<u32>(32u)), ~var_0.b)), 33780u), select(var_0.c, !any(!global2.d.yzy), var_0.d.x), !vec4<bool>(any(!var_0.d.xy), false, var_0.d.x, true));
    let var_3 = var_0.c;
    return StorageBuffer(vec3<u32>(~abs(var_1), ~(~select(4294967295u, var_2.a.c.x, false)), 4294967295u), _wgslsmith_f_op_f32(round(-1373f)), -6862i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(floor(global2.a.d));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.d, global2.a.b.x, global2.a.d) - vec3<f32>(global2.a.d, global2.a.b.x, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, 790f, -446f))))));
    var var_1 = Struct_1(firstTrailingBit(vec4<i32>(global2.a.a.x & global2.a.a.x, -2147483647i, 1i, i32(-1i) * -19684i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(265f, var_0.x) * _wgslsmith_f_op_f32(max(-127f, var_0.x)))), -2381f), ~(~global2.a.c), 680f);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(332f, -824f, 1883f, 113f), vec4<f32>(-1776f, -2281f, -2105f, var_0.x), false))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1361f, var_0.x, 1129f, -926f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-156f, 1811f, var_0.x, -383f), vec4<f32>(var_1.b.x, global2.a.d, var_0.x, 348f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.b.x, 1000f, var_0.x, -584f))))));
}

