struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<u32, 4>;

var<private> global3: array<Struct_1, 1>;

var<private> global4: Struct_1 = Struct_1(true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    return 1u;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = ~func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-882f, 1000f, _wgslsmith_f_op_f32(-1308f + -1594f), _wgslsmith_f_op_f32(1777f + 1701f))), -29773i, select(_wgslsmith_mod_vec2_i32(u_input.d >> (u_input.e.yz % vec2<u32>(32u)), u_input.c.xz), vec2<i32>(~(-13188i), _wgslsmith_add_i32(-2147483647i, u_input.d.x)), !(!global1.a)), Struct_1(arg_1));
    var var_1 = ~(_wgslsmith_sub_i32(69725i, ~u_input.c.x) << (select(_wgslsmith_mult_u32(u_input.a, arg_2 | 10979u), u_input.e.x, all(vec4<bool>(arg_1, true, true, true))) % 32u));
    var_1 = -1i;
    let var_2 = !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global1.a, true, global0.a, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(global4.a, true, global0.a, false), vec4<bool>(global4.a, false, true, true), arg_1)));
    global4 = Struct_1(!global1.a && ((false & (u_input.d.x >= u_input.c.x)) || true));
    return Struct_1(!(!any(select(var_2.zy, var_2.xw, global1.a))));
}

fn func_1(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = Struct_1(all(vec4<bool>(~u_input.b >= global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 4u)], 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27420u, 4u)], 4u)], 4u)], 4u)]), 4u)], select(false, false, all(vec2<bool>(true, global1.a))), global4.a, (u_input.d.x == u_input.c.x) & true)));
    var var_1 = vec2<bool>(!(arg_1 <= -(~u_input.d.x)), 13399i <= (_wgslsmith_div_i32(arg_1, ~arg_1) & firstLeadingBit(u_input.d.x)));
    let var_2 = func_2(u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(127f, arg_0))))), ~4363u | _wgslsmith_add_u32(~abs(40215u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 36330u, 11421u), vec3<u32>(u_input.a, 25606u, u_input.a))));
    let var_3 = global3[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.a, u_input.b), 1u, ~(u_input.b & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3130u, 4u)], 4u)]))), 1u)];
    var var_4 = global2[_wgslsmith_index_u32(~0u, 4u)];
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, ~u_input.a, _wgslsmith_mult_u32(~4294967295u, ~u_input.a)), abs(~(~vec4<u32>(u_input.e.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 64342u, global2[_wgslsmith_index_u32(4294967295u, 4u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 1>();
    global3 = array<Struct_1, 1>();
    global1 = Struct_1(!global1.a & (select(_wgslsmith_sub_u32(45314u, 1u), 1u, true) >= func_1(_wgslsmith_f_op_f32(764f + -587f), 0i)));
    global3 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-432f, _wgslsmith_f_op_f32(-1846f + -1223f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-777f, -517f) + vec2<f32>(-182f, -1634f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(599f, 1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1413f, 1526f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1102f, -2136f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -398f) - _wgslsmith_f_op_f32(984f - 1790f))), -283f));
    var var_1 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(857f))))) < _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -922f)));
    let var_2 = select(vec4<bool>(global1.a, !(!all(vec3<bool>(true, global1.a, global4.a))), (_wgslsmith_add_i32(u_input.d.x, u_input.c.x) & _wgslsmith_add_i32(u_input.c.x, u_input.d.x)) != (u_input.d.x ^ firstLeadingBit(-44539i)), any(vec2<bool>(true, true))), vec4<bool>(select(global0.a, select(global1.a, true, false) && true, false), any(select(!vec2<bool>(global0.a, global1.a), !vec2<bool>(false, global0.a), !global1.a)), select(true, true, false), all(!vec3<bool>(true, false, global0.a))), any(select(vec2<bool>(true, select(false, false, global0.a)), select(select(vec2<bool>(global0.a, global4.a), vec2<bool>(global1.a, global4.a), vec2<bool>(true, global0.a)), vec2<bool>(global4.a, global4.a), true), func_2(u_input.e >> (vec3<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)], global2[_wgslsmith_index_u32(53958u, 4u)]) % vec3<u32>(32u)), true && global4.a, u_input.a).a)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

