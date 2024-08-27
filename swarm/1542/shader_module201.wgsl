struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false)));

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-33783i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-19956i, 2147483647i), vec2<i32>(0i, 14441i), vec2<i32>(-52894i, 30899i), vec2<i32>(-22280i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, -36588i), vec2<i32>(4900i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(6588i, i32(-2147483648)), vec2<i32>(4840i, 2147483647i), vec2<i32>(-1632i, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    let var_0 = u_input.c;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, select(countOneBits(reverseBits(max(0u, u_input.a))), min(u_input.a, _wgslsmith_clamp_u32(6382u, _wgslsmith_div_u32(26038u, u_input.b.x), max(u_input.b.x, u_input.b.x))), !arg_0.a.x)), 18u)];
    global2 = array<vec2<i32>, 15>();
    return vec3<bool>(any(!vec2<bool>(arg_0.a.x, arg_0.b.x)) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-328f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(723f, -1642f)) + _wgslsmith_f_op_f32(-796f * 1144f))), !arg_0.a.x, global0.a.x);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = Struct_1(select(vec3<bool>(false, !(1u != arg_3.x), select(!arg_2.a.x, any(vec4<bool>(false, arg_2.a.x, false, true)), arg_2.a.x)), func_2(Struct_2(!arg_1.a, arg_1.b)), !vec3<bool>(false, true, !global0.a.x)));
    return !arg_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec3<i32>) -> vec4<i32> {
    return _wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(_wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(-5236i, 19500i, -2147483647i)), _wgslsmith_sub_i32(0i, u_input.c), countOneBits(-38683i), u_input.c >> (4294967295u % 32u))), vec4<i32>(~u_input.c, _wgslsmith_div_i32(i32(-1i) * -54182i, arg_3.x), 1i, -min(-51458i, -1i)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global2 = array<vec2<i32>, 15>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x & min(~19180u, u_input.b.x), u_input.a, min(u_input.b.x, _wgslsmith_div_u32(1u, 1u)), ~firstLeadingBit(u_input.b.x)), vec4<u32>(abs(u_input.a | _wgslsmith_sub_u32(0u, 0u)), ~8873u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 11108u), _wgslsmith_mult_u32(0u, 81699u))), 18u)];
    var var_0 = func_4(Struct_2(select(select(select(global0.a, vec3<bool>(true, arg_0.x, arg_0.x), false), func_2(Struct_2(global0.a, vec4<bool>(false, false, global0.a.x, global0.a.x))), true), !vec3<bool>(true, arg_0.x, global0.a.x), !(!global0.a)), select(vec4<bool>(true, all(global0.a), arg_0.x, true), !(!vec4<bool>(global0.a.x, false, arg_0.x, arg_0.x)), select(!vec4<bool>(false, arg_0.x, arg_0.x, true), select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(arg_0.x, true, false, true), arg_0.x), !arg_0.x))), Struct_2(global0.a, !func_3(_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, u_input.b), Struct_2(vec3<bool>(global0.a.x, false, true), vec4<bool>(arg_0.x, true, false, false)), Struct_1(vec3<bool>(false, arg_0.x, arg_0.x)), reverseBits(vec4<u32>(48285u, 41862u, u_input.a, u_input.a)))), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x << (41087u % 32u), 29521u), u_input.b.x, 11269u), -max(firstTrailingBit(vec3<i32>(0i, u_input.c, -2889i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, -54000i, u_input.c))) >> (abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(37131u, u_input.a, 0u) ^ vec3<u32>(61604u, 32745u, 80248u))) % vec3<u32>(32u)));
    return Struct_2(vec3<bool>(all(!vec3<bool>(arg_0.x, false, false)), true, !any(vec2<bool>(arg_0.x, arg_0.x))), vec4<bool>(!all(!arg_0), !func_3(vec2<u32>(0u, u_input.b.x) & u_input.b, Struct_2(global0.a, vec4<bool>(global0.a.x, false, arg_0.x, global0.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 18u)], select(vec4<u32>(1u, 1u, u_input.b.x, 17755u), vec4<u32>(u_input.b.x, 16111u, 63427u, 8307u), vec4<bool>(global0.a.x, arg_0.x, arg_0.x, true))).x, func_2(Struct_2(vec3<bool>(true, arg_0.x, false), vec4<bool>(true, true, arg_0.x, global0.a.x))).x || all(!vec2<bool>(arg_0.x, true)), all(global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.a.xx);
    let var_1 = func_1(func_2(Struct_2(global0.a, func_3(u_input.b, Struct_2(global0.a, var_0.b), Struct_1(var_0.b.xzw), vec4<u32>(u_input.a, u_input.b.x, u_input.a, 4294967295u)))).zy);
    global1 = array<Struct_1, 18>();
    var var_2 = Struct_1(select(!vec3<bool>(any(var_1.a.zz), global0.a.x && global0.a.x, func_3(vec2<u32>(30578u, 1u), Struct_2(var_0.b.wwy, var_0.b), Struct_1(vec3<bool>(global0.a.x, true, global0.a.x)), vec4<u32>(u_input.b.x, u_input.a, 4884u, u_input.a)).x), func_3(u_input.b, var_1, Struct_1(vec3<bool>(false, var_1.a.x, false)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 1u, 24169u, 19448u))).yzz, vec3<bool>(all(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)), all(func_3(vec2<u32>(1u, u_input.a), Struct_2(vec3<bool>(var_1.b.x, var_1.a.x, true), vec4<bool>(false, true, var_1.b.x, false)), global1[_wgslsmith_index_u32(u_input.a, 18u)], vec4<u32>(10772u, 10498u, 63201u, 42662u))), func_2(Struct_2(global0.a, vec4<bool>(true, var_1.b.x, var_1.b.x, true))).x)));
    var var_3 = _wgslsmith_dot_vec2_u32(~u_input.b, firstLeadingBit(vec2<u32>(u_input.a, ~_wgslsmith_mult_u32(u_input.a, 22375u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, 1000f, 1277f) * vec3<f32>(909f, -1228f, -320f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-264f, 805f, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(select(-1166f, -390f, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-308f + -1132f), 729f, false)), 1f))));
}

