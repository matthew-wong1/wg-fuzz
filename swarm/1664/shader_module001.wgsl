struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

var<private> global2: vec3<f32>;

var<private> global3: vec2<u32> = vec2<u32>(1u, 28890u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = ~select(~max(u_input.b.wxw, vec3<u32>(u_input.b.x, 44544u, 5920u)), vec3<u32>(abs(1u), ~(~5196u), arg_0.x), true);
    global1 = 80547u;
    var var_1 = vec4<i32>(-1i) * -((vec4<i32>(-1i, 0i, 73266i, u_input.a.x) >> (u_input.b % vec4<u32>(32u))) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 1i, u_input.a.x, -3274i)));
    let var_2 = vec2<bool>(true, false);
    global3 = vec2<u32>(var_0.x, var_0.x) | ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), var_0.xx);
    return _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = arg_0.x;
    var var_1 = 1279f;
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(u_input.b.wy, _wgslsmith_add_vec2_u32(~u_input.b.ww | u_input.b.zy, u_input.b.xw), max(u_input.b.yw, u_input.b.yw)), _wgslsmith_f_op_f32(floor(global2.x)));
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -658f, var_2.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * vec3<f32>(var_2.b, 432f, -1468f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(f32(-1f) * -1403f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(trunc(-407f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - _wgslsmith_f_op_f32(min(-1000f, -637f))))));
    let var_3 = ~(~4294967295u);
    return 405f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    var var_0 = arg_1.a;
    var var_1 = arg_0;
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b - global0.x))), 2142f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, global3.x))) * _wgslsmith_f_op_f32(f32(-1f) * -771f)), _wgslsmith_div_f32(543f, _wgslsmith_f_op_f32(step(1179f, global2.x)))))), _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a.x, u_input.a.x, 0i, firstTrailingBit(~43916i)))), 1484f);
    global0 = var_2.yz;
    let var_3 = _wgslsmith_add_u32(~4294967295u, ~firstTrailingBit(4294967295u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + var_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(769f, -1398f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -547f);
    var_0 = global2.xz;
    var var_1 = 2147483647i;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b.x, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.b.yw, var_0.x), Struct_1(u_input.b.yy, 381f), Struct_1(u_input.b.xx, global0.x), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(func_3(select(vec4<i32>(1i, -2147483647i, 50014i, u_input.a.x), vec4<i32>(-37720i, u_input.a.x, -2147483647i, 35182i), false)))))));
    let var_2 = vec3<u32>(min(abs(u_input.b.x), u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.yz, min(u_input.b.xz, vec2<u32>(global3.x, _wgslsmith_sub_u32(u_input.b.x, 0u)))), abs(u_input.b.x));
    let var_3 = _wgslsmith_f_op_f32(-global0.x);
    global3 = ~vec2<u32>(~(~abs(var_2.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(var_2.x, 1u, var_2.x)), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(global3.x, u_input.b.x, u_input.c)), vec3<u32>(u_input.c, var_2.x, global3.x))));
    var var_4 = !select(vec3<bool>(!any(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, false)), true), vec3<bool>(false, true, ~2147483647i > u_input.a.x), all(vec2<bool>(select(false, false, false), true)));
    var var_5 = Struct_1(u_input.b.ww, _wgslsmith_f_op_f32(func_3(vec4<i32>(1i, firstTrailingBit(-16186i) << (countOneBits(4294967295u) % 32u), u_input.a.x, countOneBits(~u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(67757u, ~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_5.b)), _wgslsmith_f_op_f32(934f - 844f))) + var_3) + -2354f), 1693f);
}

