struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: Struct_2;

var<private> global2: bool = true;

var<private> global3: i32;

var<private> global4: array<f32, 18> = array<f32, 18>(-576f, -118f, -575f, 2816f, -1660f, -904f, -1308f, 848f, -947f, 1026f, -1487f, -719f, 827f, 687f, -2143f, -1470f, -758f, -512f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    var var_0 = any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), 86850u >= u_input.a), true)) | (_wgslsmith_f_op_f32(-993f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_2.a.x))) == global1.a.x);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_0.a.x, arg_2.b.x, -683f) * global1.a), arg_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), 227f, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(abs(arg_0.b.x)))))), global1.a.yxz);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(arg_0.a.www - global1.b));
    var var_1 = abs(~(-vec4<i32>(1i, 1i, 1i, 1i)));
    var var_2 = 1181i;
    return 0u;
}

fn func_2() -> u32 {
    let var_0 = global1.b.x;
    global4 = array<f32, 18>();
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a.x, global4[_wgslsmith_index_u32(94798u, 18u)], global4[_wgslsmith_index_u32(u_input.a, 18u)], global1.a.x))))), vec3<f32>(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a))), 18u)], _wgslsmith_f_op_f32(-global1.b.x), 308f));
    var var_2 = Struct_1(~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 11291u))), true);
    return ~_wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, func_3(var_1, 4294967295u, Struct_2(vec4<f32>(-1641f, 290f, -1009f, 816f), var_1.b), vec3<u32>(u_input.a, 4294967295u, u_input.a)), 4294967295u), vec3<u32>(var_2.a.x, u_input.a, u_input.a));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = firstLeadingBit(max(vec2<u32>(arg_1.a.x, ~func_2()), arg_1.a));
    global0 = array<Struct_1, 4>();
    var var_1 = global1.a;
    var_1 = _wgslsmith_f_op_vec4_f32(-global1.a);
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.a)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global4[_wgslsmith_index_u32(4294967295u, 18u)], 2091f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, var_1.x, 250f, 244f)), select(vec4<bool>(false, false, arg_1.b, true), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1779f, var_1.x, -1000f, 909f), vec4<f32>(-366f, -1054f, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(global4[_wgslsmith_index_u32(u_input.a, 18u)], -1000f, 2583f, -1213f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(global1.a))))))), vec3<f32>(-1000f, var_1.x, -433f));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> Struct_2 {
    global1 = arg_0;
    var var_0 = ~countOneBits(vec4<i32>(0i, 1i | _wgslsmith_dot_vec2_i32(vec2<i32>(58174i, 2147483647i), vec2<i32>(-26393i, 30321i)), 1i, -69316i));
    var var_1 = arg_0.a.x;
    let var_2 = func_1(vec4<i32>(var_0.x, firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -37620i, var_0.x, -2147483647i), vec4<i32>(var_0.x, 15730i, var_0.x, 9854i)), var_0.x)), 2147483647i, -var_0.x), Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, arg_2), firstTrailingBit(vec2<u32>(arg_2, 1u))), ~(~vec2<u32>(arg_2, arg_2))), true));
    let var_3 = min(select(firstLeadingBit(abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(32569u, 0u, arg_2)))), _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), ~4294967295u, 4294967295u), vec3<u32>(0u, u_input.a, 0u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, arg_2, 142183u), vec3<u32>(u_input.a, arg_2, 1u))), arg_1.x), vec3<u32>(max(u_input.a, _wgslsmith_div_u32(31822u, ~arg_2)), _wgslsmith_mult_u32(arg_2, ~(~arg_2)), 4294967295u));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-1304f + global1.b.x), -1000f, 870f)), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<f32>(1490f, global4[_wgslsmith_index_u32(abs(~(u_input.a >> (4294967295u % 32u))), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), global4[_wgslsmith_index_u32(24316u, 18u)]), global1.a.xzz);
    var var_1 = func_4(func_1(firstLeadingBit(vec4<i32>(-4067i, -18017i, countOneBits(29155i), ~(-2720i))), global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<bool>(any(vec2<bool>(false, false)), true, true), u_input.a);
    global2 = true;
    let var_2 = ~firstTrailingBit(select(~max(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, u_input.a, 0u)), ~(vec3<u32>(u_input.a, 1u, 0u) | vec3<u32>(1u, u_input.a, u_input.a)), !any(vec2<bool>(false, false))));
    var var_3 = global0[_wgslsmith_index_u32(abs(u_input.a), 4u)];
    let var_4 = ~40199u;
    var var_5 = _wgslsmith_div_f32(var_0.a.x, global1.a.x);
    var var_6 = !vec3<bool>(any(vec2<bool>(select(var_3.b, var_3.b, var_3.b), select(false, var_3.b, true))), var_3.b, true);
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<f32>(var_1.b.x, 854f, global1.b.x, var_1.a.x), var_0.a.wwy), !(!vec3<bool>(var_6.x, var_6.x, var_3.b)), firstLeadingBit(1u)).a + var_1.a), vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(875f, global1.b.x) * global4[_wgslsmith_index_u32(_wgslsmith_add_u32(var_4, var_2.x), 18u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(48960u, 18u)])), -678f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_4, 18u)]) * 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, select(u_input.a, var_3.a.x >> (var_4 % 32u), var_6.x)), 18u)]), -1i, abs(firstTrailingBit(vec2<i32>(36197i >> (var_4 % 32u), -25797i))), global1.b.x, abs(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(4294967295u, var_4, var_4)), ~func_3(Struct_2(var_0.a, vec3<f32>(global1.a.x, var_1.b.x, var_0.b.x)), 27846u, Struct_2(var_0.a, var_0.b), var_2))));
}

