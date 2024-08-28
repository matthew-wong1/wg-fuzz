struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<vec2<i32>, 10>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(4294967295u), Struct_1(22897u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(4294967295u), Struct_1(37989u), Struct_1(0u), Struct_1(4294967295u), Struct_1(7497u), Struct_1(4294967295u), Struct_1(38776u), Struct_1(4294967295u), Struct_1(0u), Struct_1(21674u), Struct_1(19899u), Struct_1(4294967295u), Struct_1(6753u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(57145u), Struct_1(0u), Struct_1(51567u), Struct_1(1u), Struct_1(76394u), Struct_1(50444u), Struct_1(4294967295u));

var<private> global3: array<vec2<bool>, 16>;

var<private> global4: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(292f, 833f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global2 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1840f, 548f, 600f, -619f))))));
    var var_1 = select(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, 12461i), ~vec4<i32>(-2147483647i, -29898i, 1i, -2147483647i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 4346i), global1[_wgslsmith_index_u32(88585u, 10u)]) << (_wgslsmith_sub_u32(2073u, countOneBits(u_input.a)) % 32u), true != !any(vec2<bool>(true, false))) ^ abs(-14399i);
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 24u)]), u_input.a);
    var var_3 = Struct_1(37400u);
    return _wgslsmith_f_op_f32(sign(226f));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = !(!(!(!(!vec4<bool>(false, arg_0, true, false)))));
    var var_1 = global2[_wgslsmith_index_u32(~4294967295u, 31u)];
    let var_2 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-438f * 322f), _wgslsmith_f_op_f32(1675f * 368f)) + _wgslsmith_f_op_f32(-480f - _wgslsmith_f_op_f32(sign(707f))))))));
    var var_3 = global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 24u)], 1u)];
    global2 = array<Struct_1, 31>();
    return Struct_1(~global0[_wgslsmith_index_u32(var_1.a, 24u)]);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = func_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))));
    var var_1 = global1[_wgslsmith_index_u32(74491u, 10u)];
    var var_2 = !(!vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false)), true, true));
    return 41263u;
}

fn func_1() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~func_4(func_2(any(vec4<bool>(false, false, true, true))), vec2<u32>(10380u ^ ~u_input.a, global0[_wgslsmith_index_u32(~0u, 24u)])), 31u)];
    let var_1 = vec4<i32>(0i, 1i, -_wgslsmith_div_i32(~firstLeadingBit(15820i), 2147483647i), ~(-34301i << (min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31288u), vec2<u32>(u_input.a, u_input.a)), 38967u) % 32u)));
    let var_2 = reverseBits(~(~vec2<u32>(40077u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 24u)], 24u)] % 32u), _wgslsmith_add_u32(72384u, var_0.a))));
    var var_3 = ~(~vec4<u32>(1u, 0u, u_input.a, u_input.a));
    var var_4 = select(!vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), true, true), (_wgslsmith_sub_i32(abs(var_1.x), max(-41780i, var_1.x)) << (_wgslsmith_sub_u32(~0u, 1u) % 32u)) != -(~(~var_1.x)));
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(select(func_4(Struct_1(var_3.x), vec2<u32>(var_2.x, var_2.x)), u_input.a, select(var_4.x, true, var_4.x)), u_input.a), ~(~var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(116838u, 24u)], 0u, 1744u), 35510u) << (11795u % 32u));
    global0 = array<u32, 24>();
    var var_1 = func_1();
    var var_2 = Struct_1(u_input.a);
    var var_3 = firstTrailingBit(22036u);
    var_1 = global2[_wgslsmith_index_u32(120441u, 31u)];
    var_1 = Struct_1(4294967295u);
    var var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], u_input.a, var_0.a), vec4<u32>(var_2.a, 17078u, u_input.a, var_0.a)) >> (vec4<u32>(var_2.a, _wgslsmith_add_u32(24868u, 2145u), func_2(true).a, func_1().a) % vec4<u32>(32u)), ~vec4<u32>(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 24u)]), global0[_wgslsmith_index_u32(func_4(Struct_1(1u), vec2<u32>(var_0.a, 46806u)), 24u)], u_input.a, u_input.a)), ~_wgslsmith_mod_u32(firstTrailingBit(1u), 0u) >> (15432u % 32u), 0u);
    var var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1049f, -846f), _wgslsmith_f_op_f32(-1123f - -311f))), 105f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1847f), _wgslsmith_f_op_f32(-1728f - -1052f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1203f, 1000f, -866f) + vec3<f32>(-1736f, -1153f, 1000f)), vec3<f32>(_wgslsmith_f_op_f32(869f + 816f), _wgslsmith_f_op_f32(2687f + -2087f), 1000f)))), ~_wgslsmith_div_u32(var_0.a, 4294967295u));
}

