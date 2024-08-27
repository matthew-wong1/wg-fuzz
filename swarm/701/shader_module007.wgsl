struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<bool>(true, false, false, true));

var<private> global1: Struct_1;

var<private> global2: array<f32, 10> = array<f32, 10>(-1355f, 189f, 1405f, 148f, -597f, -1405f, 280f, 667f, -874f, -787f);

var<private> global3: array<vec2<u32>, 6>;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_2;
    global3 = array<vec2<u32>, 6>();
    let var_1 = vec2<u32>(~1u, u_input.a.x);
    global4 = abs(0i) >= arg_0.x;
    var var_2 = global2[_wgslsmith_index_u32(max(var_1.x, firstTrailingBit(var_1.x)), 10u)];
    return vec3<bool>(select(true, true, true), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x, 10u)]) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x, 10u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)] - -1396f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(var_1.x, 10u)]))), true);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(-1022f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 10u)]) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]))))))));
    var var_1 = !all(vec2<bool>(arg_2.x, false)) && (_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~countOneBits(arg_0.x), 10u)] - _wgslsmith_f_op_f32(f32(-1f) * -773f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(arg_0.x, 10u)])))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(716f * -590f));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~(0u >> (arg_0.x % 32u))), max(_wgslsmith_sub_vec3_u32(~vec3<u32>(43591u, arg_0.x, arg_0.x), u_input.a), vec3<u32>(arg_0.x, abs(arg_0.x), 1u))), ~(~countOneBits(u_input.a))), 10u)];
    global3 = array<vec2<u32>, 6>();
    return !(!select(select(vec4<bool>(global0.b.x, arg_1.x, arg_3.x, false), vec4<bool>(false, false, false, true), vec4<bool>(arg_3.x, arg_2.x, arg_1.x, false)), vec4<bool>(true, true, true, true), select(global1.b, !global1.b, select(vec4<bool>(true, global1.a, arg_1.x, true), vec4<bool>(arg_3.x, true, false, false), vec4<bool>(false, global0.b.x, arg_2.x, global1.b.x)))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(global0.b.x, select(vec4<bool>(global1.b.x, true, any(!global1.b.yxx), all(vec2<bool>(global1.a, global1.b.x))), select(global1.b, global0.b, select(!vec4<bool>(global1.b.x, global0.a, global1.a, true), !vec4<bool>(true, global0.b.x, false, global1.b.x), all(global1.b))), !func_4(global3[_wgslsmith_index_u32(~u_input.a.x, 6u)], func_3(vec3<i32>(-2147483647i, 2147483647i, -69514i), Struct_1(true, global0.b), Struct_1(false, vec4<bool>(true, global0.a, global0.a, global1.a))), vec4<bool>(true, true, global1.a, true), vec2<bool>(global0.a, false))));
    let var_0 = vec2<bool>(!global1.b.x, any(global1.b.zyw));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1446f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 10u)]))), 174f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(514f, 363f), vec2<f32>(332f, global2[_wgslsmith_index_u32(1u, 10u)]))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1025f), vec2<f32>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(416f, global2[_wgslsmith_index_u32(36890u, 10u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 548f), vec2<f32>(-1498f, 840f)))))));
    global2 = array<f32, 10>();
    var var_2 = Struct_1(global0.b.x, global1.b);
    return Struct_1(true, select(global0.b, global0.b, vec4<bool>(all(!global1.b.xy), var_2.b.x, global1.a, false)));
}

fn func_1() -> Struct_1 {
    global0 = func_2();
    global4 = global0.b.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global3 = array<vec2<u32>, 6>();
    let var_0 = min(reverseBits(1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-35552i, 1i), vec2<i32>(-36349i, 0i)) >> (1u % 32u)) << (max(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, reverseBits(u_input.a.x ^ 35903u)), ~u_input.a.x) % 32u);
    var var_1 = func_1();
    global3 = array<vec2<u32>, 6>();
    let var_2 = -601f;
    let var_3 = u_input.a.x;
    let var_4 = Struct_1(true, !global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a.x, 57268u & max(u_input.a.x, ~9679u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(~u_input.a.x, 10u)], 235f, var_2, 935f), vec4<f32>(-245f, _wgslsmith_f_op_f32(step(2161f, -986f)), -308f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a.x, 10u)]))), !func_1().b)), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(56843u, 10u)] * var_2) + _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(var_3, 10u)])), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~var_3, 10u)]))), true)), select(abs(~vec3<i32>(var_0, -1i, 2147483647i) | -vec3<i32>(var_0, var_0, var_0)), -select(~vec3<i32>(-12175i, var_0, -1i), firstLeadingBit(vec3<i32>(-36071i, var_0, -11493i)), any(vec4<bool>(false, true, false, global0.b.x))), var_1.b.x));
}

