struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(47579u, 30121u, 71227u)), Struct_1(vec3<u32>(119369u, 1u, 44117u)), Struct_1(vec3<u32>(10819u, 1u, 24136u)), Struct_1(vec3<u32>(33277u, 1u, 0u)), Struct_1(vec3<u32>(34026u, 0u, 38302u)), Struct_1(vec3<u32>(13644u, 0u, 5500u)), Struct_1(vec3<u32>(37834u, 11560u, 0u)), Struct_1(vec3<u32>(40280u, 36604u, 49443u)), Struct_1(vec3<u32>(82960u, 4294967295u, 32104u)), Struct_1(vec3<u32>(33500u, 53809u, 26949u)), Struct_1(vec3<u32>(0u, 0u, 4294967295u)));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<u32>(10604u, 4294967295u, 1u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 49358u, 0u)), Struct_1(vec3<u32>(30995u, 4294967295u, 768u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 20835u)), Struct_1(vec3<u32>(26785u, 22010u, 33212u)), Struct_1(vec3<u32>(0u, 18267u, 0u)), Struct_1(vec3<u32>(4294967295u, 14858u, 0u)), Struct_1(vec3<u32>(1u, 0u, 24139u)));

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(48878u, 19111u, 0u)), Struct_1(vec3<u32>(118902u, 1u, 1u)), Struct_1(vec3<u32>(30859u, 0u, 4294967295u)), Struct_1(vec3<u32>(30928u, 0u, 4294967295u)), Struct_1(vec3<u32>(26287u, 23732u, 0u)), Struct_1(vec3<u32>(1u, 33383u, 4294967295u)), Struct_1(vec3<u32>(11920u, 4294967295u, 30621u)), Struct_1(vec3<u32>(29254u, 0u, 38515u)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -495f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f)), -2156f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f * 1927f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1271f, -1000f, 531f)))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-855f * var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 699f) * _wgslsmith_f_op_f32(trunc(827f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))));
    var var_2 = u_input.a.x;
    global1 = array<Struct_1, 11>();
    let var_3 = vec2<bool>(all(vec3<bool>(select(any(vec4<bool>(false, true, arg_3, arg_1)), true, false), true, arg_3)), !any(select(select(vec3<bool>(true, true, arg_3), vec3<bool>(true, arg_3, true), vec3<bool>(arg_1, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(arg_1, arg_3, false), vec3<bool>(false, arg_1, true)), true)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-174f, 840f))))))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    global2 = array<Struct_1, 9>();
    let var_0 = Struct_1(vec3<u32>(1u, 17446u, max(max(max(arg_1, u_input.a.x), 105021u << (u_input.a.x % 32u)), u_input.a.x)));
    global2 = array<Struct_1, 9>();
    global0 = array<vec4<u32>, 30>();
    global2 = array<Struct_1, 9>();
    return _wgslsmith_div_u32(~u_input.a.x, ~(var_0.a.x << (arg_1 % 32u)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    let var_0 = select(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(vec2<bool>(true, true), vec2<bool>(false, false), 61048u >= func_3(true, 79115u, arg_0, vec4<bool>(false, true, false, false))), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, false))), select(vec2<bool>(_wgslsmith_f_op_f32(-arg_2.x) <= 1000f, true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), any(vec3<bool>(false, false, false))), vec2<bool>(any(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, false, true, true))), any(vec3<bool>(true, true, true))), vec2<bool>(false, any(vec4<bool>(true, false, true, false)) && any(vec3<bool>(false, false, true)))), false);
    let var_1 = ~u_input.a.yz;
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(1i, select(16833i, 0i, true))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-941i, 1898i)), vec2<i32>(-2147483647i, -2147483647i) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), ~abs(vec2<i32>(0i, 0i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-13837i, -7527i), vec2<i32>(-1i, -64745i) >> (vec2<u32>(var_1.x, u_input.b) % vec2<u32>(32u))))), abs(firstLeadingBit(select(vec2<i32>(67377i, 1i), vec2<i32>(-2147483647i, 42525i), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0)))));
    return ~var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 9>();
    global2 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(56196u, 9u)], true, ~vec4<u32>(16003u, 0u, u_input.a.x, u_input.a.x), true)) * _wgslsmith_f_op_f32(-452f - 372f))))));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(func_2(-277f, 808f, vec2<f32>(-720f, -1540f)) ^ (~0u ^ _wgslsmith_dot_vec2_u32(u_input.a.wx, u_input.a.wz)), u_input.b | firstTrailingBit(u_input.b), 0u, ~(~(~25211u))), u_input.a);
    var var_2 = all(vec4<bool>(select(any(vec4<bool>(false, true, false, false)) & (var_1.x < u_input.a.x), true, true), ~(~var_1.x) > u_input.b, any(vec3<bool>(true, false, select(true, false, false))), true));
    let var_3 = Struct_1(firstTrailingBit(~max(vec3<u32>(0u, u_input.a.x, 8658u), vec3<u32>(var_1.x, var_1.x, var_1.x)) ^ ~vec3<u32>(1u, 3874u, u_input.a.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(435f, 943f), 1646f)) - 133f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1152f)), -2053f))))));
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mod_u32(1u & _wgslsmith_sub_u32(71386u, _wgslsmith_clamp_u32(51730u, u_input.b, 1u)), 1u));
}

