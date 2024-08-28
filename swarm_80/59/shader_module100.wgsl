struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global2 = array<Struct_1, 21>();
    var var_0 = arg_0;
    var var_1 = 51131u;
    var var_2 = -179f;
    var var_3 = vec4<f32>(arg_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c * -1621f), _wgslsmith_f_op_f32(floor(1000f)), true))))), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(exp2(arg_0.c))))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.b.xx * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.b.xy))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>) -> vec2<i32> {
    global2 = array<Struct_1, 21>();
    var var_0 = global0.x;
    global2 = array<Struct_1, 21>();
    var var_1 = countOneBits(global0.x);
    global2 = array<Struct_1, 21>();
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> bool {
    global1 = array<Struct_1, 23>();
    let var_0 = global0.x >= _wgslsmith_div_u32(~0u, _wgslsmith_sub_u32(19049u, ~global0.x) ^ select(global0.x | 103476u, abs(global0.x), true));
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-1i) * -func_4(_wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(0u, 21u)])), ~vec3<u32>(global0.x, global0.x, 53513u)));
    global2 = array<Struct_1, 21>();
    let var_2 = select(~_wgslsmith_mod_vec3_u32(vec3<u32>(347u, arg_0, 36885u), vec3<u32>(arg_0, global0.x, 0u)), _wgslsmith_div_vec3_u32(~vec3<u32>(4135u, 36399u, 11731u) | ~vec3<u32>(0u, global0.x, arg_0), ~(vec3<u32>(global0.x, 27113u, arg_0) | vec3<u32>(arg_0, global0.x, 34955u))), true) | vec3<u32>(~firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 0u), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(8021u, arg_0), vec2<u32>(1u, global0.x), vec2<u32>(0u, 4294967295u)), ~vec2<u32>(arg_0, arg_0), vec2<bool>(var_0, var_0))), 1u);
    return firstTrailingBit(_wgslsmith_sub_i32(-(var_1.x << (58600u % 32u)), ~u_input.a.x)) > 1i;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = vec4<bool>(func_2(4294967295u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(506f * 867f) - 1f))), vec2<f32>(_wgslsmith_f_op_f32(1231f * -461f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 13529i), -(-38258i << (max(arg_0.x, arg_0.x) % 32u)) >= u_input.a.x, true, all(select(!(!vec2<bool>(true, arg_1)), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(arg_1, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), true), arg_1))));
    var var_1 = Struct_1(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1751f, 1012f, false)), -661f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2273f, -179f)) - -1092f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_2 = global1[_wgslsmith_index_u32(43373u, 23u)];
    let var_3 = false | !(!all(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, false, true, arg_1), arg_1)));
    global2 = array<Struct_1, 21>();
    return global1[_wgslsmith_index_u32(global0.x, 23u)];
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(ceil(954f))), vec3<u32>(1691u, ~global0.x, global0.x));
    var var_1 = Struct_1(var_0.x << (0u % 32u), _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) * arg_0.b.x));
    var_1 = global2[_wgslsmith_index_u32(~(~global0.x) & (global0.x & global0.x), 21u)];
    var_1 = global2[_wgslsmith_index_u32(min(global0.x, ~global0.x), 21u)];
    let var_2 = global0.x;
    return Struct_1(abs(i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b * _wgslsmith_f_op_vec3_f32(abs(arg_0.b))))), -2621f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, -155f, -253f, -890f)));
    var var_1 = global2[_wgslsmith_index_u32(0u, 21u)];
    let var_2 = func_5(func_1(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(4294967295u, global0.x) | vec2<u32>(1u, global0.x)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 37589u), vec2<u32>(1u, 16262u)), select(vec2<u32>(1u, 1u), ~vec2<u32>(global0.x, 4294967295u), all(vec2<bool>(true, false)))), !any(vec4<bool>(true, true, true, true))));
    let var_3 = true;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1264f)), vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global0.x, global0.x)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 1u), vec2<u32>(9222u, 0u)), abs(min(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)))), 38950u), -1045f, u_input.a);
}

