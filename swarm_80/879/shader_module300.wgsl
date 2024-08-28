struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<f32>, 26>;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(828f, -1i)), Struct_2(Struct_1(1000f, 2147483647i)), Struct_2(Struct_1(-383f, -32400i)), Struct_2(Struct_1(-518f, -2378i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    global3 = array<Struct_2, 4>();
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -161f)))), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))));
    global1 = array<vec4<f32>, 26>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_mult_i32(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, 0i), vec3<i32>(51835i, -1i, 38419i))), 0i));
    global1 = array<vec4<f32>, 26>();
    return _wgslsmith_div_f32(_wgslsmith_div_f32(345f, 147f), global0.x);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(-28699i & min(1i, global2.x), ~39176i, -_wgslsmith_add_i32(global2.x, 2147483647i)), -vec3<i32>(_wgslsmith_sub_i32(~67170i, _wgslsmith_dot_vec2_i32(global2.zx, vec2<i32>(29079i, global2.x))), _wgslsmith_add_i32(max(3062i, global2.x), countOneBits(global2.x)), global2.x), vec3<i32>(abs(_wgslsmith_mod_i32(global2.x, global2.x)), ~(global2.x ^ global2.x), _wgslsmith_clamp_i32(abs(-17002i), 1i, firstTrailingBit(global2.x))) >> (~((vec3<u32>(1u, u_input.b.x, u_input.a) & vec3<u32>(5147u, u_input.a, u_input.a)) | vec3<u32>(u_input.b.x, 1u, 37444u)) % vec3<u32>(32u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(-1000f))))))), 504f, global0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 2473f, -1089f)))))) * _wgslsmith_f_op_vec3_f32(step(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1093f, global0.x, -952f), var_1))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-326f, 1250f, 208f) * var_1), _wgslsmith_f_op_vec3_f32(abs(var_1)), true))))));
    global2 = ~_wgslsmith_div_vec3_i32(~(-var_0), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(global2.x, var_0.x, -2147483647i)), ~vec3<i32>(global2.x, 1i, global2.x)));
    global2 = var_0;
    return !select(vec4<bool>(!(-306f != var_2.x), true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false)), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, any(vec2<bool>(true, false)), true, u_input.a < u_input.b.x), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(~(~(~vec4<u32>(4294967295u, u_input.a, 37871u, 9256u))), ~(1u << (~u_input.b.x % 32u)))), i32(-1i) * -11512i);
    let var_1 = global2.zx & global2.yx;
    var var_2 = !((false || (firstTrailingBit(4294967295u) <= u_input.b.x)) & (true && any(vec3<bool>(true, true, true))));
    var var_3 = select(func_3(), vec4<bool>(any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), false && all(vec2<bool>(true, true)), func_3().x), (1u | u_input.a) <= (~u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b) % 32u)), false), !select(func_3(), vec4<bool>(any(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, false)), func_3().x), all(vec2<bool>(true, true))));
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~94301u), max(_wgslsmith_add_u32(_wgslsmith_mod_u32(~27439u, u_input.b.x), 86503u), 77278u), 99663u), 4u)];
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2.yx, vec4<i32>(global2.x, 0i, global2.x, global2.x), vec3<i32>(29950i, 1i, global2.x), Struct_1(global0.x, 5415i))) * 1180f)) < _wgslsmith_f_op_f32(f32(-1f) * -2698f));
    let var_1 = !(!(!(!vec3<bool>(var_0.x, true, var_0.x))));
    var_0 = var_1;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f)), global2.x);
    global2 = max(vec3<i32>(~abs(min(30043i, 2147483647i)), global2.x, ~(~max(var_2.b, -8745i))), vec3<i32>(min(countOneBits(~(-2147483647i)), global2.x), _wgslsmith_mod_i32(3274i, 2147483647i) & (_wgslsmith_mult_i32(global2.x, -1i) << (~u_input.b.x % 32u)), 53253i));
    var var_3 = !(!(!(!var_0.x)) && !(!(var_2.a <= 194f)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-1256f * _wgslsmith_f_op_f32(func_1((vec2<i32>(global2.x, global2.x) & global2.yx) >> (vec2<u32>(0u, 48109u) % vec2<u32>(32u)), ~firstLeadingBit(vec4<i32>(-2147483647i, -1i, -4517i, -23620i)), abs(vec3<i32>(global2.x, var_2.b, var_2.b)) >> (~vec3<u32>(0u, u_input.b.x, u_input.a) % vec3<u32>(32u)), Struct_1(var_2.a, ~(-50298i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(856f, 398f, var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(-347f, -239f))));
    var var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(29092i);
}

