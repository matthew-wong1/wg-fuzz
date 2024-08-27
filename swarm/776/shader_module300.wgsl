struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 45856u, 59811u);

var<private> global1: array<i32, 12> = array<i32, 12>(1i, -34251i, 38590i, i32(-2147483648), 2147483647i, 14130i, 1i, -9709i, 1i, 7245i, -7941i, 45100i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(961f)), _wgslsmith_div_f32(1264f, -607f), _wgslsmith_f_op_f32(296f + -881f)))));
    let var_1 = 21556i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(var_0.a)))));
    var var_3 = ~(~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 7425u), 0u), global0.x >> (global0.x % 32u)));
    var var_4 = ~global1[_wgslsmith_index_u32(49033u, 12u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_2.a, _wgslsmith_f_op_vec3_f32(-var_2.a), true)), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - 416f), _wgslsmith_f_op_f32(-var_0.a.x), 1401f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a);
    let var_1 = arg_0;
    var var_2 = func_2();
    let var_3 = abs(global0.x);
    var var_4 = _wgslsmith_mult_u32(~firstTrailingBit(33874u), ~select(_wgslsmith_mod_u32(var_3, global0.x), ~var_3, 13389i == global1[_wgslsmith_index_u32(1u, 12u)]) ^ ~4294967295u);
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = ~global1[_wgslsmith_index_u32(~(~global0.x), 12u)];
    global1 = array<i32, 12>();
    var var_1 = abs(0u);
    var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(global0.x, _wgslsmith_mod_u32(global0.x, global0.x))), 12u)] & firstLeadingBit(reverseBits(-7534i));
    var var_2 = min(vec2<i32>(~(-u_input.a.x), ~u_input.a.x), _wgslsmith_clamp_vec2_i32(~min(u_input.a, vec2<i32>(u_input.a.x, -6965i) >> (vec2<u32>(1u, global0.x) % vec2<u32>(32u))), vec2<i32>(-1i) * -u_input.a, u_input.a));
    return func_3(func_2(), func_2());
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    var var_0 = ~firstTrailingBit(_wgslsmith_sub_vec2_u32(global0.xy, firstLeadingBit(vec2<u32>(global0.x, global0.x))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_3(Struct_1(vec3<f32>(arg_2.a.x, -462f, 282f)), arg_0).a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(465f, _wgslsmith_div_f32(arg_0.a.x, 540f)), arg_2.a.x)), -1508f));
    var var_2 = Struct_1(arg_2.a);
    var_0 = ~(~vec2<u32>(abs(global0.x), var_0.x) << (vec2<u32>(min(var_0.x, 4294967295u), var_0.x) % vec2<u32>(32u)));
    var var_3 = u_input.a.x ^ global1[_wgslsmith_index_u32(4294967295u, 12u)];
    return StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global0.yx, _wgslsmith_clamp_vec2_u32(vec2<u32>(109895u, 38977u), global0.xy, vec2<u32>(global0.x, 34278u)) ^ global0.yy), 12u)], _wgslsmith_div_f32(var_1.a.x, 240f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-810f * _wgslsmith_f_op_f32(f32(-1f) * -299f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1434f - -842f))), _wgslsmith_f_op_f32(f32(-1f) * -162f))));
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    var var_1 = vec3<u32>(~1u, 0u, 1u | _wgslsmith_mod_u32(countOneBits(~global0.x), 0u));
    var var_2 = !(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)))));
    var_2 = !vec4<bool>(var_2.x, !(!any(var_2.wyx)), var_2.x, select(any(!vec3<bool>(false, var_2.x, false)), true, true));
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, -1000f, var_0.a.x)))))))), -1135f, func_1(), !var_2.x | true);
}

