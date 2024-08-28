struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
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

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<bool>(true, true, false), 0u), Struct_1(vec3<bool>(true, false, false), 17656u), Struct_1(vec3<bool>(false, true, false), 38628u), Struct_1(vec3<bool>(false, true, false), 1u), Struct_1(vec3<bool>(false, true, true), 1u), Struct_1(vec3<bool>(true, false, true), 0u), Struct_1(vec3<bool>(true, false, false), 0u));

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: array<u32, 4>;

var<private> global3: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false));

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, true, true), 25282u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    global1 = array<vec4<f32>, 8>();
    global4 = global0[_wgslsmith_index_u32(u_input.c ^ ~countOneBits(_wgslsmith_div_u32(~2860u, min(u_input.c, global4.b))), 7u)];
    global3 = array<vec4<bool>, 32>();
    let var_0 = select(vec4<i32>(i32(-1i) * -78280i, 0i, -2147483647i, countOneBits(_wgslsmith_div_i32(u_input.d.x, -41241i))), vec4<i32>(-1i, -(~(-2147483647i)), u_input.d.x, -18555i), true);
    var var_1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 4294967295u), 4u)] << ((select(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(18484u, 46756u)), ~0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(global4.b, 4294967295u), vec2<u32>(u_input.c, 1u)), global4.a.x || !global4.a.x) >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(global2[_wgslsmith_index_u32(38467u, 4u)], 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(59391u, 43916u), u_input.b)) % 32u)) % 32u), 7u)];
    return vec3<u32>(~38357u >> (_wgslsmith_clamp_u32(var_1.b, ~(1u << (var_1.b % 32u)), 79460u ^ var_1.b) % 32u), firstTrailingBit(max(4294967295u, 4294967295u)), _wgslsmith_sub_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 32494u, var_1.b, var_1.b), vec4<u32>(11973u, 1u, global4.b, var_1.b)) | 0u), countOneBits(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(69007u, 4u)], ~var_1.b, ~37795u))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<bool> {
    global2 = array<u32, 4>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(303f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), 100f))), 525f, 1000f);
    var var_1 = true;
    var var_2 = vec4<u32>(global2[_wgslsmith_index_u32(~0u, 4u)] ^ firstLeadingBit(0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 7322u), vec2<u32>(u_input.b.x, 1u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 29888u), u_input.b)), ~u_input.c), ~(~4294967295u), u_input.c);
    global2 = array<u32, 4>();
    return !(!select(global4.a, !(!vec3<bool>(arg_2.a.x, false, true)), !arg_2.a));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    global2 = array<u32, 4>();
    global1 = array<vec4<f32>, 8>();
    let var_1 = !func_4(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a.x, 35185i, 2147483647i, u_input.a.x)), min(~u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(20095i, 31842i, u_input.a.x, -93127i)))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)], 25885u, 46836u) ^ vec3<u32>(global2[_wgslsmith_index_u32(48095u, 4u)], 0u, global2[_wgslsmith_index_u32(8870u, 4u)]), func_3(vec2<f32>(631f, -606f)))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.b, 15893u, 59130u), 4u)], max(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, u_input.c)), min(4294967295u, global4.b))), 7u)]);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-936f, -184f))), _wgslsmith_f_op_f32(sign(-1391f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-714f)) + _wgslsmith_f_op_f32(min(-206f, -1169f))))))), 1000f);
    return Struct_1(func_4(countOneBits(u_input.a.x), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29575u, 4u)], 4u)], 1u, ~global4.b), Struct_1(var_1, _wgslsmith_div_u32(countOneBits(u_input.c), 25978u))), 4294967295u);
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = u_input.c | firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(func_3(vec2<f32>(1000f, -1000f)).x, global2[_wgslsmith_index_u32(u_input.c, 4u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-913f, -1404f), vec2<f32>(1000f, -174f)) * vec2<f32>(-2156f, 1000f)))));
    let var_2 = !arg_0.a.x;
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(~3121u, _wgslsmith_add_u32(u_input.b.x, 4294967295u)) & _wgslsmith_mod_u32(1u, u_input.c), _wgslsmith_add_u32(arg_0.b, ~_wgslsmith_clamp_u32(1u, 4294967295u, 4004u)), 36329u, arg_0.b) >> (vec4<u32>(45525u, ~4294967295u, max(73196u, global2[_wgslsmith_index_u32(countOneBits(~1u), 4u)]), ~global4.b) % vec4<u32>(32u));
    let var_4 = Struct_1(!global4.a, ~var_3.x);
    return _wgslsmith_f_op_f32(max(832f, 385f));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2()))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(697f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-746f * 271f), _wgslsmith_f_op_f32(floor(1000f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(300f, -343f))), _wgslsmith_f_op_f32(ceil(-891f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-350f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-479f - 1000f), 862f)), false)), 1182f)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(1u);
    let var_0 = func_1(_wgslsmith_dot_vec2_u32(~(vec2<u32>(global4.b, 42201u) ^ select(u_input.b, u_input.b, vec2<bool>(true, true))), _wgslsmith_div_vec2_u32(u_input.b, ~(~vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(27722u, 4u)])))));
    let var_1 = -2147483647i;
    var var_2 = var_0;
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-355f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-407f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(218f))))), _wgslsmith_f_op_f32(select(-689f, _wgslsmith_f_op_f32(781f * _wgslsmith_div_f32(2254f, -379f)), any(select(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.b, 4u)], 4u)], 32u)], vec4<bool>(true, global4.a.x, var_3.a.x, false), global3[_wgslsmith_index_u32(global4.b, 32u)]))))));
}

