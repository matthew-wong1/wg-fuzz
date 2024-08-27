struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 10124u, 0u), vec3<u32>(0u, 0u, 21529u), vec3<u32>(1u, 8330u, 76998u), vec3<u32>(64903u, 1u, 4294967295u), vec3<u32>(4294967295u, 116221u, 1057u), vec3<u32>(42697u, 63897u, 23684u), vec3<u32>(81459u, 4294967295u, 42012u), vec3<u32>(1u, 57464u, 45967u), vec3<u32>(47560u, 1u, 1u), vec3<u32>(109811u, 1966u, 0u), vec3<u32>(23687u, 1u, 33518u), vec3<u32>(57592u, 0u, 4294967295u), vec3<u32>(52149u, 18834u, 34880u), vec3<u32>(26906u, 45945u, 1u), vec3<u32>(0u, 45476u, 43584u), vec3<u32>(8187u, 28329u, 1u));

var<private> global1: u32;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    return -2147483647i;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_i32(-(u_input.a.x << (abs(~1u) % 32u)), u_input.a.x);
    global0 = array<vec3<u32>, 16>();
    var var_1 = Struct_1(vec3<bool>(true, true, true));
    var var_2 = global2[_wgslsmith_index_u32(0u, 30u)];
    return _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(-965f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-674f)), _wgslsmith_div_f32(201f, -1479f))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = select(vec4<i32>(-_wgslsmith_add_i32(~1i, u_input.a.x), firstLeadingBit(abs(func_2(vec3<f32>(1190f, 388f, -1000f)))), -(~u_input.a.x), u_input.a.x), ~min(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-27111i, u_input.a.x, 17654i, u_input.a.x)), ~vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x) | -vec4<i32>(-26237i, 1i, -11061i, u_input.a.x)), arg_2.x);
    var var_2 = select(vec3<bool>(all(!(!vec4<bool>(arg_3.a.x, true, false, true))), all(vec3<bool>(true, true, true)), arg_2.x), vec3<bool>(true, !(u_input.a.x < ~1i), all(select(select(arg_3.a.xx, vec2<bool>(arg_1.a.x, false), arg_1.a.x), arg_3.a.yz, vec2<bool>(true, arg_3.a.x)))), vec3<bool>(false, any(!select(vec2<bool>(arg_3.a.x, false), arg_1.a.zz, true)), false));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), -969f);
    global0 = array<vec3<u32>, 16>();
    return _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = array<vec3<u32>, 16>();
    let var_1 = ~_wgslsmith_mod_u32(~(~1u), 1u);
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(40722u, _wgslsmith_sub_u32(4294967295u, ~var_1)), 30u)];
    var var_3 = ~_wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, var_1, 36457u, 0u), ~vec4<u32>(var_1, var_1, var_1, 4294967295u)), vec4<u32>(var_1, _wgslsmith_div_u32(61701u, var_1) >> (abs(var_1) % 32u), var_1 ^ _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_1, 16u)], global0[_wgslsmith_index_u32(var_1, 16u)]), 65946u));
    var var_4 = ~36427u;
    let var_5 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(var_0, -2147483647i, u_input.a.x), vec3<i32>(1i, u_input.a.x, u_input.a.x) | vec3<i32>(0i, u_input.a.x, var_0)) << ((global0[_wgslsmith_index_u32(max(0u, var_1), 16u)] ^ select(global0[_wgslsmith_index_u32(var_1, 16u)], vec3<u32>(1u, 4294967295u, 1u), true)) % vec3<u32>(32u)), -countOneBits(vec3<i32>(6216i, u_input.a.x, 48384i))), vec3<i32>(-1i) * -vec3<i32>(~u_input.a.x, var_0, ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(~var_1 | (0u & var_1)), ~(~_wgslsmith_add_u32(39399u, var_1)), var_1), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(170f - -1306f), _wgslsmith_f_op_f32(sign(659f))), _wgslsmith_f_op_f32(-2101f - _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(true, var_2.a.x, true)), global2[_wgslsmith_index_u32(var_1, 30u)], vec2<bool>(false, var_2.a.x), Struct_1(vec3<bool>(true, var_2.a.x, false))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + -537f), _wgslsmith_f_op_f32(-233f - -1167f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1604f, 695f)))))), var_1, -207f);
}

