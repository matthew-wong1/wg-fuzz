struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec2<f32>,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<vec4<bool>, 31>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(~u_input.a, -u_input.a, vec3<i32>(21217i, -1i, u_input.a.x))), Struct_1(u_input.a), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) >> ((arg_0.a & 8165u) % 32u), -27545i), ~select(abs(64224u), abs(4294967295u), select(false, global1.x, true))), max(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-9894i, u_input.a.x, -1i, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), firstLeadingBit(vec4<i32>(u_input.a.x, -30883i, u_input.a.x, u_input.a.x)) >> (max(vec4<u32>(u_input.d.x, u_input.c, arg_0.a, arg_0.a), vec4<u32>(arg_0.a, 7931u, 0u, u_input.b.x)) % vec4<u32>(32u))), -reverseBits(-u_input.a.x)));
    var_0 = Struct_3(Struct_2(var_0.a.a, var_0.a.a, ~(-(~42764i)), ~1u), 8314i);
    let var_1 = 4294967295u;
    var_0 = Struct_3(global0[_wgslsmith_index_u32(arg_0.a & ~_wgslsmith_div_u32(~u_input.d.x, arg_0.a), 7u)], abs(u_input.a.x));
    var var_2 = global1.x;
    return arg_0.b;
}

fn func_2() -> Struct_2 {
    var var_0 = any(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(18474u), u_input.b.x), 31u)]) || false;
    let var_1 = Struct_4(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(73900u, 1u, u_input.c) << (vec3<u32>(0u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 55651u), vec3<u32>(44549u, 0u, u_input.b.x))), 27804u, ~_wgslsmith_clamp_u32(u_input.d.x, ~u_input.d.x, _wgslsmith_mult_u32(72191u, 11971u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(u_input.b.x, vec4<f32>(379f, 611f, 1672f, -745f), 447f), vec2<f32>(1662f, 1659f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(339f, 1201f, 298f, 576f)))))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_4(u_input.c, vec4<f32>(-736f, 1478f, -271f, -461f), _wgslsmith_f_op_f32(f32(-1f) * -1620f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-242f, 781f), vec2<f32>(-203f, 1435f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-355f, -1372f, 248f, 902f) - vec4<f32>(-536f, -1123f, -270f, 1151f)), -358f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-201f, -655f) - vec2<f32>(101f, 115f))))).x + _wgslsmith_f_op_f32(f32(-1f) * -1304f)));
    let var_2 = Struct_5(Struct_4(1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-668f, var_1.c, -1005f, var_1.b.x))), vec4<f32>(-1000f, var_1.b.x, 774f, -133f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_1.b * vec4<f32>(var_1.b.x, var_1.c, 309f, 1567f)))), global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.b.x)), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), true))))), select(false, all(vec2<bool>(false, false)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1236f)), Struct_4(15525u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -441f)) - _wgslsmith_f_op_vec4_f32(var_1.b * var_1.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) - _wgslsmith_f_op_vec4_f32(-var_1.b))), _wgslsmith_f_op_f32(218f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(74492u, var_1.b, 1289f), vec2<f32>(var_1.b.x, var_1.b.x))).x)))), global0[_wgslsmith_index_u32(1u, 7u)]);
    return global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(var_2.e.d, var_2.a.a)), 7u)];
}

fn func_1() -> u32 {
    var var_0 = vec4<u32>(select(~6689u, u_input.b.x << (u_input.d.x % 32u), select(global1.x, global1.x, global1.x)) | ~1u, 6582u, u_input.d.x, 5287u >> ((u_input.d.x ^ firstTrailingBit(u_input.c)) % 32u)) >> (_wgslsmith_sub_vec4_u32(~firstLeadingBit(~vec4<u32>(1u, 0u, u_input.d.x, 0u)), vec4<u32>(4294967295u, ~u_input.b.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 23699u), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u)))) % vec4<u32>(32u));
    let var_1 = func_2();
    let var_2 = select(vec4<bool>(true, true, any(vec3<bool>(u_input.a.x >= u_input.a.x, global1.x || true, true)), all(select(vec2<bool>(true, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x)), global1.x))), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(1u), 79078u) & _wgslsmith_sub_u32(var_1.d, abs(u_input.b.x) & var_0.x), 31u)], select(global2[_wgslsmith_index_u32(~func_2().d, 31u)], !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_1.d, select(106225u, var_1.d, true)), 31u)], false));
    var_0 = vec4<u32>(~var_0.x, abs(_wgslsmith_mult_u32(~(~var_1.d), var_0.x)), ~31875u, var_1.d | ~55536u);
    let var_3 = -1337f;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a.x, ~u_input.a.x) >> (~vec2<u32>(~func_1(), firstLeadingBit(~3880u)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1377f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1109f, -245f)) + _wgslsmith_f_op_vec4_f32(func_3(Struct_4(0u, vec4<f32>(386f, 280f, 516f, -894f), -1083f), vec2<f32>(-827f, 669f))).x), global1.x))));
    global1 = vec2<bool>(false, global1.x);
    let var_2 = func_2().b;
    var var_3 = func_2().a;
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(exp2(var_1))), var_1, 214f, _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(-403f - -320f), var_1, 1263f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-260f, -465f, var_1, -1000f))))));
    var var_5 = vec3<u32>(u_input.d.x, _wgslsmith_sub_u32(u_input.c ^ u_input.b.x, u_input.b.x), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(var_5.x, 1u, 1u, 1u) << (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, var_5.x, 0u, u_input.d.x), vec4<u32>(18033u, var_5.x, 0u, var_5.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_5.x, 985u, u_input.b.x, 0u), vec4<u32>(var_5.x, u_input.d.x, 0u, u_input.d.x))) % vec4<u32>(32u)), countOneBits(~(~vec4<u32>(var_5.x, u_input.d.x, 36729u, 4294967295u)))), -727f, var_1);
}

