struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(48170u, 0u, 33845u, 62403u), vec4<u32>(42461u, 52140u, 0u, 0u), vec4<u32>(0u, 1u, 16919u, 0u), vec4<u32>(1u, 1u, 23457u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    var var_0 = arg_1.x;
    global1 = select(vec3<bool>(false, true, true), vec3<bool>(true || (_wgslsmith_f_op_f32(f32(-1f) * -610f) == arg_1.x), false || global1.x, all(!select(global1.yz, vec2<bool>(false, global1.x), arg_0))), any(!vec2<bool>(true, select(false, global1.x, false))));
    var var_1 = Struct_3(vec2<i32>(-1i) * -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, -33565i), vec2<i32>(0i, -23651i), vec2<i32>(arg_2, arg_2))));
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    return ~u_input.b;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    var var_0 = 0u;
    var var_1 = -671f;
    var var_2 = Struct_4(-46520i, 13495u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(47851u, ~max(u_input.a.x, arg_1.a)), select(~31227u >> (1u % 32u), arg_0.x, false)), false, arg_2);
    var_1 = _wgslsmith_f_op_f32(2379f - 669f);
    let var_3 = ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(~global0[_wgslsmith_index_u32(4294967295u, 5u)], select(u_input.a.x, u_input.b, global1.x)), arg_0.x) << (~_wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.xy) % 32u), 5u)];
    return Struct_4(-1i, abs(arg_1.d) >> (arg_1.d % 32u), ~var_2.c, false && (var_2.a == min(_wgslsmith_mod_i32(2147483647i, var_2.a), arg_2.a.x)), var_2.e);
}

fn func_1(arg_0: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_3(-select(-vec2<i32>(-10960i, -1i), vec2<i32>(countOneBits(-2147483647i), ~(-17507i)), 64819u != u_input.b));
    let var_1 = ~(~4294967295u);
    global1 = vec3<bool>(false, true, all(!(!(!vec4<bool>(false, global1.x, true, true)))));
    let var_2 = func_3(abs(~vec3<u32>(65874u, var_1, var_1) << (abs(vec3<u32>(4294967295u, 44816u, global0[_wgslsmith_index_u32(u_input.b, 5u)])) % vec3<u32>(32u))), Struct_1(~(~(~4294967295u)), vec4<i32>(22692i, var_0.a.x, ~0i, _wgslsmith_mult_i32(var_0.a.x, var_0.a.x)) >> (~vec4<u32>(14683u, u_input.a.x, var_1, var_1) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-arg_0.x), 1u, _wgslsmith_mod_i32(2147483647i << (func_2(true, vec3<f32>(arg_0.x, 1087f, arg_0.x), 36749i) % 32u), _wgslsmith_mult_i32(~var_0.a.x, -19340i))), Struct_3(-firstTrailingBit(_wgslsmith_clamp_vec2_i32(var_0.a, var_0.a, vec2<i32>(2147483647i, var_0.a.x)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1359f, -215f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(237f - 1f), _wgslsmith_f_op_f32(-1074f * 1765f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1632f))), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1551f, 1120f, var_3.x, -844f), vec4<f32>(var_3.x, arg_0.x, arg_0.x, -1403f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 412f, var_3.x, -1000f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-674f, arg_0.x, 354f, 1048f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1392f, arg_0.x, var_3.x, -728f), vec4<f32>(1036f, arg_0.x, var_3.x, arg_0.x), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1000f, var_3.x)), _wgslsmith_f_op_f32(step(253f, -139f)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(abs(1716f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1848f, arg_0.x, var_3.x, -107f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2383f, 272f, 142f, -1071f)), any(global1.xy)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(1021f)), _wgslsmith_f_op_f32(max(arg_0.x, var_3.x)), -781f, var_3.x)));
}

fn func_4(arg_0: vec4<f32>) -> vec3<bool> {
    return vec3<bool>(global1.x, global1.x, !(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 2147483647i, -16684i, 11949i), -vec4<i32>(9218i, -41315i, 0i, 42046i)) > 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 5>();
    global1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(-124f, -486f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(221f, -669f, -559f, 1000f) - vec4<f32>(-965f, -1079f, 157f, -1000f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, -268f, 252f, -711f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1279f, -1236f, -711f, -990f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(459f, -633f, 695f, -148f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1053f, -2448f, -331f, -530f) - vec4<f32>(551f, -1380f, 122f, 679f)))))));
    global1 = vec3<bool>(any(vec4<bool>(global1.x, false, select(global1.x, global1.x, true), true)), all(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, global1.x, true), true))), func_3(_wgslsmith_add_vec3_u32(u_input.a.wzx, u_input.a.wwx ^ u_input.a.zwy) | vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 5u)], 4294967295u, global0[_wgslsmith_index_u32(~66826u, 5u)]), Struct_1(global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 5u)], countOneBits(select(vec4<i32>(0i, -41368i, -2147483647i, 0i), vec4<i32>(2147483647i, 7327i, 0i, 2147483647i), global1.x)), -393f, global0[_wgslsmith_index_u32(1u, 5u)], (-18404i << (u_input.a.x % 32u)) >> (~21140u % 32u)), Struct_3(vec2<i32>(i32(-1i) * -27891i, -41232i))).d);
    global0 = array<u32, 5>();
    var var_0 = vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -(-1i >> (0u % 32u)), i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(i32(-1i) * -23326i), -32696i >> (global0[_wgslsmith_index_u32(24102u >> (global0[_wgslsmith_index_u32(4294967295u, 5u)] % 32u), 5u)] % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(23001i, -112003i, 0i), vec3<i32>(-1i, 1i, -1i)), func_3(vec3<u32>(16806u, global0[_wgslsmith_index_u32(1u, 5u)], 0u), Struct_1(4294967295u, vec4<i32>(15216i, -1i, 1i, -39672i), -814f, u_input.a.x, -2147483647i), Struct_3(vec2<i32>(1i, 25006i))).a, _wgslsmith_mod_i32(0i, 7386i)), 1i), vec4<i32>(-1i) * -vec4<i32>(2147483647i, -2147483647i, -1i, 0i)), abs(-firstLeadingBit(0i) >> (1u % 32u)), _wgslsmith_div_i32(-countOneBits(abs(-7305i)), -13828i));
    var var_1 = vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31411u, 5u)], 5u)], u_input.a.x, 36118u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1514f)) - 337f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(541f)))));
    let var_3 = ~(~u_input.a);
    let var_4 = Struct_3(vec2<i32>(var_0.x, i32(-1i) * -35018i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x));
}

