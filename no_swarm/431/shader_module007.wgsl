struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 51369u, 1u));

var<private> global2: vec3<f32> = vec3<f32>(-414f, 1009f, 213f);

var<private> global3: vec3<i32> = vec3<i32>(-39674i, -22201i, 37766i);

var<private> global4: u32 = 0u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = vec3<bool>(!(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false))), true, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(arg_3));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = min(abs(~_wgslsmith_mult_u32(4294967295u, global1.a.x) << (0u % 32u)), 1u);
    let var_1 = ~(~firstTrailingBit(abs(arg_0.a.yz)));
    var var_2 = 4127u;
    var var_3 = vec3<bool>(arg_1, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-240f)) * -388f), global2.x) != global2.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(184f, global2.x, global2.x) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(global2.x, global2.x, global2.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 2458f, global2.x) + vec3<f32>(-672f, 1990f, 599f)) * vec3<f32>(1495f, -330f, 652f))))));
    return 1284f;
}

fn func_2() -> f32 {
    global3 = firstTrailingBit(vec3<i32>(-1597i, global3.x, -min(-46525i << (global1.a.x % 32u), global3.x)));
    let var_0 = Struct_1(vec3<u32>(1u, global1.a.x & 1u, 33612u));
    let var_1 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0, all(select(vec3<bool>(true, var_1, true), func_3(-2147483647i, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, vec4<f32>(-1080f, -132f, global2.x, global2.x)), !var_1)))));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(arg_1, 28u)];
    global2 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-403f)))))));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), 1u), arg_1), abs(arg_1) >> (global1.a.x % 32u), arg_1, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global1.a ^ ~global1.a, vec3<u32>(max(arg_1, global1.a.x), ~4294967295u, global1.a.x)), vec3<u32>(arg_1 | 49466u, 1u, ~_wgslsmith_mult_u32(arg_1, global1.a.x))));
    let var_2 = false;
    global4 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(var_1.x, 0u)), vec2<u32>(1u, ~4294967295u)), global1.a.x) >> (1u % 32u);
    return Struct_1(vec3<u32>(66322u, _wgslsmith_div_u32(countOneBits(~global1.a.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.x, arg_1)), vec2<u32>(var_1.x, arg_1) | global1.a.xy)), _wgslsmith_div_u32(countOneBits(_wgslsmith_add_u32(arg_1, global1.a.x)), firstTrailingBit(var_1.x))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<u32> {
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-415f - _wgslsmith_f_op_f32(select(global2.x, global2.x, true))), global2.x, -1267f))), vec3<f32>(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(abs(global2.x))), -1930f, _wgslsmith_f_op_f32(floor(-566f)))));
    global1 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global2.x)), -306f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), true)), func_1(_wgslsmith_f_op_f32(func_2()), global1.a.x).a.x);
    global3 = u_input.a;
    var var_0 = _wgslsmith_div_u32(global1.a.x, 7152u);
    let var_1 = countOneBits(-vec2<i32>(arg_0.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, -544i, 34363i), vec3<i32>(13781i, arg_0.x, -2147483647i)))));
    return reverseBits(vec3<u32>(4294967295u, _wgslsmith_sub_u32(reverseBits(~0u), abs(_wgslsmith_sub_u32(0u, 0u))), reverseBits(arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.yy;
    global3 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global2.xx)))), global2.xy));
    global1 = Struct_1(func_5(-(vec2<i32>(-1i) * -vec2<i32>(global3.x, u_input.b.x)), func_1(-358f, 1u)));
    global4 = ~_wgslsmith_div_u32(var_0.x, ~abs(global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(619f * 325f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(abs(471f)), global1.a.x > var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.x, 1013f))))), _wgslsmith_f_op_f32(abs(577f)), _wgslsmith_f_op_f32(var_1.x * 594f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), global2.x, global2.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -181f))), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, var_1.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(941f, var_1.x, -1000f)))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-u_input.b, select(vec4<i32>(1i, 0i, global3.x, global3.x), vec4<i32>(global3.x, u_input.b.x, 0i, -40760i), true) | u_input.b), _wgslsmith_mod_i32(abs(min(global3.x, 6376i)), ~u_input.a.x & u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x)))), firstLeadingBit(u_input.a.zx) ^ _wgslsmith_mod_vec2_i32(max(u_input.b.wy, vec2<i32>(-48746i, 20125i)) << (global1.a.zz % vec2<u32>(32u)), -min(vec2<i32>(u_input.b.x, global3.x), global3.yz)));
}

