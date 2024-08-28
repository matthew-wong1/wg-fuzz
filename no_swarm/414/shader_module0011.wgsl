struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec3<u32>, 22>;

var<private> global2: array<f32, 32> = array<f32, 32>(1573f, -216f, -1079f, 647f, -968f, 1705f, 1013f, -1000f, 179f, 1000f, 669f, -1603f, 667f, 1000f, -667f, 742f, 1000f, 1513f, 881f, 1000f, -1073f, -2475f, -1130f, -928f, 678f, 753f, 580f, -114f, -886f, 576f, -136f, 1021f);

var<private> global3: Struct_2 = Struct_2(-1303f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_1, 14>();
    global2 = array<f32, 32>();
    global1 = array<vec3<u32>, 22>();
    var var_0 = vec2<bool>(false, false);
    let var_1 = ~(~1u);
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = 1u;
    global3 = Struct_2(arg_0.a);
    global1 = array<vec3<u32>, 22>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1368f + _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(var_0, 32u)])), global3.a)))));
    var var_2 = abs(abs(firstLeadingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(-56453i, -102i), vec2<i32>(2147483647i, -33930i)))));
    return 386f;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global2 = array<f32, 32>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(737f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 32u)] + -1000f)) + global2[_wgslsmith_index_u32(u_input.a.x, 32u)])));
    var var_1 = !select(vec2<bool>(true, true && all(vec3<bool>(false, false, true))), vec2<bool>(true, true), !(!select(true, false, false)));
    let var_2 = vec2<u32>(max(~4294967295u >> (firstTrailingBit(4294967295u) % 32u), u_input.a.x), u_input.a.x) >> (vec2<u32>(_wgslsmith_add_u32(~func_2(Struct_1(arg_0)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), reverseBits(u_input.a.x)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(887f, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(var_2.x, 14u)], arg_1)), 1000f, _wgslsmith_f_op_f32(-1887f * 171f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, -639f, 664f, arg_1.a)))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(-104f, global0[_wgslsmith_index_u32(0u, 14u)]);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 32u)]))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a - global2[_wgslsmith_index_u32(~select(u_input.a.x, u_input.a.x, false), 32u)]), -264f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(u_input.a.x << (~u_input.a.x % 32u)), 32u)])));
    var var_2 = global0[_wgslsmith_index_u32(1u, 14u)];
    global3 = func_1(var_2.a, Struct_1(_wgslsmith_div_f32(-302f, 736f)));
    let var_3 = func_1(846f, global0[_wgslsmith_index_u32(abs(u_input.a.x), 14u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(global3.a * global2[_wgslsmith_index_u32(0u, 32u)])), global3.a) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.a, var_2.a))), vec2<f32>(-1746f, var_3.a))))), 4294967295u, firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-64277i, 54442i, -2366i, 7470i) >> (vec4<u32>(36386u, u_input.a.x, u_input.a.x, 14906u) % vec4<u32>(32u)), vec4<i32>(-9614i, 2147483647i, -11981i, -2147483647i), vec4<i32>(1i, -7871i, 4551i, 0i)), abs(-vec4<i32>(36717i, -2147483647i, 1671i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 12345i, 19984i, 3811i), vec4<i32>(14949i, 2298i, 19059i, -1i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i)) << ((vec4<u32>(u_input.a.x, 22731u, 0u, 38335u) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 57918u) % vec4<u32>(32u))) % vec4<u32>(32u)))), abs(vec4<u32>(1u, ~_wgslsmith_add_u32(1u, 43768u), u_input.a.x, _wgslsmith_div_u32(~61919u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)))), -1281f);
}

