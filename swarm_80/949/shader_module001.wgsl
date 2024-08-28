struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -675f;

var<private> global1: array<bool, 9> = array<bool, 9>(false, true, false, false, true, true, false, true, true);

var<private> global2: u32 = 1u;

var<private> global3: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> bool {
    let var_0 = Struct_3(vec4<i32>(-29814i, -8970i, -1i, i32(-1i) * -14498i), -2147483647i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 603f, 896f) + vec3<f32>(-1716f, 542f, -820f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, -891f, -662f) * vec3<f32>(804f, 187f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-353f, -241f, 963f) - vec3<f32>(343f, -1051f, 969f)))))));
    global3 = array<vec2<bool>, 19>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-853f - -178f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.a.x)))), 273f)));
    global1 = array<bool, 9>();
    return !(any(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 9u)], false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 9u)], true, true, global1[_wgslsmith_index_u32(u_input.a, 9u)]), global1[_wgslsmith_index_u32(u_input.a, 9u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 9u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(99742u, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)], false, false))) | false);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>) -> f32 {
    global0 = arg_0.a.x;
    var var_0 = all(vec3<bool>(all(arg_2), global1[_wgslsmith_index_u32(3002u, 9u)], arg_2.x));
    let var_1 = Struct_3(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-2147483647i, -u_input.b, select(u_input.b, 37917i, global1[_wgslsmith_index_u32(86970u, 9u)]), u_input.b), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -22633i, u_input.b), vec4<i32>(u_input.b, u_input.b, 2147483647i, 0i)), 12401i ^ u_input.b, _wgslsmith_sub_i32(-65384i, u_input.b), ~0i), func_2()), _wgslsmith_div_vec4_i32(vec4<i32>(max(u_input.b, -34827i), 0i, _wgslsmith_div_i32(-1i, 1438i), 2147483647i), abs(min(vec4<i32>(-49678i, -30285i, -8829i, 20426i), vec4<i32>(1i, u_input.b, u_input.b, -11534i))))), -firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_i32(u_input.b, -1i, u_input.b))));
    var var_2 = select(select(vec4<bool>(true, true, true, arg_2.x), select(vec4<bool>(all(vec4<bool>(false, arg_2.x, false, arg_2.x)), all(vec2<bool>(true, false)), true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(43137u, 27129u, arg_1.x)), 9u)]), vec4<bool>(arg_2.x, all(arg_2), !arg_2.x, true), arg_2.x), select(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 9u)], false, arg_2.x), !vec4<bool>(global1[_wgslsmith_index_u32(6598u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], arg_2.x), vec4<bool>(arg_2.x, global1[_wgslsmith_index_u32(54665u, 9u)], arg_2.x, false)), !(!vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(arg_1.x, 9u)])), !vec4<bool>(false, true, false, arg_2.x))), !vec4<bool>(any(vec4<bool>(true, arg_2.x, true, false)), any(arg_2.yz), all(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(1u, 9u)]))), true);
    global2 = _wgslsmith_div_u32(~5315u, _wgslsmith_mult_u32(u_input.a << (arg_1.x % 32u), 4294967295u >> (u_input.a % 32u)));
    return arg_0.a.x;
}

fn func_1() -> f32 {
    var var_0 = ~(~vec4<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a << (1u % 32u), u_input.a), _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(u_input.a, 128338u)), 1u));
    global0 = _wgslsmith_f_op_f32(301f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-621f, 1000f, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1045f), select(global1[_wgslsmith_index_u32(~4294967295u, 9u)], global1[_wgslsmith_index_u32(~u_input.a, 9u)], true | global1[_wgslsmith_index_u32(0u, 9u)])))));
    var var_1 = var_0.x;
    var var_2 = vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 4294967295u, 1u, var_0.x), ~vec4<u32>(var_0.x, 1u, 5881u, var_0.x)), ~var_0.x);
    var var_3 = vec2<bool>(func_2(), !global1[_wgslsmith_index_u32(u_input.a, 9u)]);
    return _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(1f, 1f, 1f)), ~select(var_2.zy, vec2<u32>(20922u, _wgslsmith_add_u32(var_2.x, var_0.x)), select(global3[_wgslsmith_index_u32(~0u, 19u)], vec2<bool>(false, var_3.x), !global3[_wgslsmith_index_u32(var_2.x, 19u)])), !vec3<bool>(true, all(vec3<bool>(var_3.x, global1[_wgslsmith_index_u32(0u, 9u)], false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1460f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1849f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(1377f * 1278f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, -107f, -1000f) * vec3<f32>(-1000f, 539f, -2114f))))))));
    var var_2 = Struct_2(vec2<i32>(-2147483647i, u_input.b), _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, 48035u), true | global1[_wgslsmith_index_u32(2444u, 9u)]), ~vec2<u32>(14011u, u_input.a) & abs(vec2<u32>(17136u, 30697u))) ^ vec2<u32>(u_input.a, u_input.a), 0u > _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4804u, 7454u, u_input.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(u_input.a, 24362u, 4294967295u, u_input.a)) % vec4<u32>(32u)), vec4<u32>(max(u_input.a, 0u), u_input.a | u_input.a, _wgslsmith_mult_u32(1u, 0u), 88386u)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b, 27202i, u_input.b) << (~vec3<u32>(u_input.a, 116046u, u_input.a) % vec3<u32>(32u)), vec3<i32>(~(-25854i), u_input.b, u_input.b), false), firstTrailingBit(select(vec3<i32>(-55330i, u_input.b, 16626i), vec3<i32>(u_input.b, u_input.b, u_input.b), global1[_wgslsmith_index_u32(13283u, 9u)] || global1[_wgslsmith_index_u32(53036u, 9u)]))));
    let var_3 = Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.d.x, ~u_input.b, var_2.a.x >> (_wgslsmith_sub_u32(109335u, 1u) % 32u), _wgslsmith_dot_vec2_i32(var_2.d.zx, var_2.d.zx)), min(firstLeadingBit(~vec4<i32>(var_2.d.x, u_input.b, 20961i, var_2.a.x)), vec4<i32>(reverseBits(76994i), _wgslsmith_div_i32(var_2.d.x, 2147483647i), i32(-1i) * -2147483647i, ~(-2147483647i)))), i32(-1i) * -firstTrailingBit(u_input.b));
    var var_4 = global1[_wgslsmith_index_u32(~(~4294967295u), 9u)];
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(784f - var_1.a.x))), -254f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_1.a.x, 917f)), var_1.a.x, _wgslsmith_f_op_f32(step(1492f, var_1.a.x)))), true)));
    let var_5 = ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(var_2.b), ~var_2.b), abs(firstTrailingBit(var_2.b))));
    var_4 = true || !var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(10935i, var_2.d.x, -var_2.d.x), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(62521u, ~var_2.b.x)), 1i, reverseBits(~min(1u, u_input.a)));
}

