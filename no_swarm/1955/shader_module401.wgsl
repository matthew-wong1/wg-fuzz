struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 5> = array<bool, 5>(false, false, true, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.x)), arg_2.b)), 1070f, _wgslsmith_f_op_f32(-arg_1.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), 1618f, _wgslsmith_f_op_f32(-arg_3.x)), select(!select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 5u)], false, arg_0), vec3<bool>(global1[_wgslsmith_index_u32(29968u, 5u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(43333u, 5u)], true, false)), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, arg_0)), arg_0, !arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, arg_3.x, arg_2.b)))))), global1[_wgslsmith_index_u32(u_input.c.x, 5u)]));
    var var_0 = Struct_1(arg_1.x, 2174f);
    var var_1 = vec4<bool>(all(select(vec2<bool>(true, true), select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 5u)], arg_0), vec2<bool>(true, true), select(vec2<bool>(global1[_wgslsmith_index_u32(49027u, 5u)], false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false))), !(!vec2<bool>(arg_0, false)))), u_input.c.x >= ~max(0u, ~u_input.c.x), true, true);
    return ~abs(abs(u_input.c.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec2<bool>(false, true);
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0 - arg_0))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(step(arg_0, arg_0))))), vec3<bool>(true, true, true | (global1[_wgslsmith_index_u32(0u, 5u)] && global1[_wgslsmith_index_u32(u_input.c.x, 5u)]))))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1618f);
    global1 = array<bool, 5>();
    return !vec4<bool>(func_3(true, _wgslsmith_f_op_vec2_f32(-global0.yx), Struct_1(863f, arg_0.x), global0.zy) <= u_input.c.x, !(!(global1[_wgslsmith_index_u32(u_input.c.x, 5u)] || true)), !all(!vec2<bool>(false, global1[_wgslsmith_index_u32(20533u, 5u)])), !(_wgslsmith_f_op_f32(arg_2.a * -659f) > _wgslsmith_div_f32(434f, var_2)));
}

fn func_1() -> i32 {
    var var_0 = !func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -525f, global0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 188f) - vec3<f32>(1000f, 662f, global0.x)))), global0.x, Struct_1(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    let var_1 = Struct_1(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1971f)))));
    let var_2 = u_input.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.a, var_1.b))), 1000f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, 485f)), var_1.b))), var_1.b));
    var var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, -1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(29086u, u_input.c.x), vec2<u32>(58891u, u_input.c.x)) % 32u)), var_2, _wgslsmith_mult_i32(~(~(-7561i)), select(u_input.d, var_2, global1[_wgslsmith_index_u32(1u, 5u)]) & _wgslsmith_div_i32(u_input.a, var_2))), vec3<i32>(-u_input.b.x, firstLeadingBit(~min(0i, u_input.b.x)), ~0i));
    return abs(-_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, var_4.x, u_input.a) << (~vec4<u32>(41680u, 64795u, u_input.c.x, 14494u) % vec4<u32>(32u)), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -532f))));
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(40150i, 0i), u_input.b.zz), u_input.b.x ^ -9559i, false), -38708i, -1i, func_1()), vec4<i32>(u_input.d, select(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(abs(44924u), 5u)]), u_input.a, 0i), (~u_input.b << (max(vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x), vec4<u32>(48852u, 15993u, 0u, u_input.c.x)) % vec4<u32>(32u))) ^ ~vec4<i32>(u_input.b.x, 1i, u_input.d, u_input.a)) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, ~4294967295u) % vec4<u32>(32u));
    global1 = array<bool, 5>();
    let var_2 = Struct_1(1262f, -2142f);
    var var_3 = !func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -117f, var_0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1407f, var_0.a, global0.x) * vec3<f32>(-134f, -1246f, 1282f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-816f, 165f, var_2.a))), func_2(vec3<f32>(621f, var_0.b, var_0.a), _wgslsmith_f_op_f32(610f - 116f), Struct_1(var_2.b, var_0.a)).x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f + var_2.a)))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_2.b + 1384f)))) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1030f * var_2.a) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0.x, var_2.b)), _wgslsmith_div_f32(158f, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_2.b))))));
}

