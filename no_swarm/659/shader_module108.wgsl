struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(36325u, 22372u), u_input.a, abs(vec2<u32>(1u, 0u))) << ((~vec2<u32>(u_input.a.x, u_input.a.x) << ((vec2<u32>(u_input.a.x, 4294967295u) | vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(791f)), -905f)), _wgslsmith_f_op_f32(sign(1004f)), true)) + _wgslsmith_f_op_f32(1904f + _wgslsmith_f_op_f32(sign(-840f)))));
    let var_1 = Struct_1(abs(vec2<u32>(0u, ~(~u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_0.b) + _wgslsmith_f_op_f32(round(var_0.b))))));
    let var_2 = Struct_1(vec2<u32>(~var_0.a.x, ~(~u_input.a.x)) >> (~vec2<u32>(30803u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-859f + _wgslsmith_f_op_f32(-var_0.b)))) - var_0.b));
    var var_3 = 1i;
    let var_4 = Struct_1(~vec2<u32>(~18480u, ~var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b))));
    return global0[_wgslsmith_index_u32(abs(abs(~_wgslsmith_clamp_u32(~var_4.a.x, var_2.a.x, var_0.a.x >> (var_4.a.x % 32u)))), 1u)];
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = true;
    let var_1 = select(func_3(), _wgslsmith_clamp_i32(i32(-1i) * -(global0[_wgslsmith_index_u32(4294967295u, 1u)] ^ 28664i), ~max(1i, 0i) ^ global0[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_dot_vec2_i32(abs(vec2<i32>(11336i, global0[_wgslsmith_index_u32(49995u, 1u)])) | firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 1u)], -5768i)), vec2<i32>(global0[_wgslsmith_index_u32(42444u, 1u)], -1i))), false);
    let var_2 = Struct_1(~(~abs(~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_div_f32(arg_0, 1000f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-460f, _wgslsmith_div_f32(954f, var_2.b))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) * arg_0);
    var_0 = false;
    return Struct_1(u_input.a, 141f);
}

fn func_1() -> Struct_1 {
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    var var_1 = var_0;
    let var_2 = var_1.a.x;
    global0 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-686f, -2365f), vec2<f32>(917f, -244f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-861f, var_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(998f, var_0.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 1233f)))))), _wgslsmith_dot_vec3_i32(-((vec3<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 1u)], global0[_wgslsmith_index_u32(var_1.a.x, 1u)], 2147483647i) & vec3<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 1u)], global0[_wgslsmith_index_u32(48266u, 1u)], global0[_wgslsmith_index_u32(116795u, 1u)])) | -vec3<i32>(1i, 0i, 12561i)), ~vec3<i32>(_wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(4294967295u, 1u)]), -2147483647i, global0[_wgslsmith_index_u32(31878u, 1u)] ^ global0[_wgslsmith_index_u32(var_1.a.x, 1u)])), -(((vec2<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]) | vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)])) ^ vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(var_0.a.x, 1u)])) | (vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 1u)]) >> (~vec2<u32>(1u, 0u) % vec2<u32>(32u)))));
}

