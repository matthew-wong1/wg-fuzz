struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(668f)))), _wgslsmith_f_op_f32(min(-376f, _wgslsmith_f_op_f32(-516f * 1000f))))) * 892f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1370f))), -627f))));
    var var_1 = Struct_1(!vec4<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(true, true)), true, true), ~vec4<i32>(-2147483647i, 0i, max(17177i, u_input.b), -1i) >> ((abs(vec4<u32>(63137u, u_input.a, 27661u, 1u)) | select(vec4<u32>(u_input.a, u_input.a, 18395u, 0u), vec4<u32>(u_input.a, u_input.c, 5040u, u_input.a), true)) % vec4<u32>(32u)), vec2<bool>(!(any(vec4<bool>(true, false, true, true)) & true), false));
    global0 = array<Struct_2, 5>();
    let var_2 = global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_add_u32(0u, u_input.a)), 4294967295u), 0u), 5u)];
    var var_3 = select(!vec3<bool>(true, var_2.e.x < _wgslsmith_div_f32(1457f, var_0), all(vec3<bool>(false, false, var_1.a.x))), !vec3<bool>(all(vec2<bool>(var_1.c.x, var_2.a.a.x)), ~var_2.b <= 1u, var_1.c.x), !var_2.c.x);
    return _wgslsmith_mod_u32(var_2.d, ~54750u) > select(var_2.d, ~(_wgslsmith_sub_u32(0u, var_2.b) << (_wgslsmith_div_u32(var_2.d, var_2.b) % 32u)), !(!(!var_2.c.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    var var_0 = select(select(select(vec2<bool>(any(vec2<bool>(false, arg_1)), all(vec2<bool>(arg_1, true))), vec2<bool>(false, arg_1), arg_0.x >= _wgslsmith_f_op_f32(305f + arg_0.x)), vec2<bool>(all(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), false)), u_input.a >= ~4294967295u), false), select(select(!(!vec2<bool>(arg_1, false)), vec2<bool>(arg_1, func_3()), func_3()), !vec2<bool>(arg_1, !arg_1), vec2<bool>(all(vec3<bool>(false, true, arg_1)) != (arg_1 || false), true)), vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -590f) + arg_0.x) >= _wgslsmith_f_op_f32(min(-1197f, arg_0.x))));
    var var_1 = Struct_2(Struct_1(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(arg_1, true, false, var_0.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b, -73389i, -2147483647i), -vec4<i32>(-2147483647i, u_input.b, u_input.b, 2147483647i)) << (vec4<u32>(0u, 1u, firstTrailingBit(3029u), ~u_input.c) % vec4<u32>(32u)), select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), false), !vec2<bool>(false, var_0.x), any(vec3<bool>(true, var_0.x, arg_1)) && true)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 35287u, 68790u), vec3<u32>(u_input.a, 16472u, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, 4294967295u)))), 78576u), select(select(select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(var_0.x, true, true), false), vec3<bool>(false, true, false), any(vec3<bool>(arg_1, arg_1, arg_1))), !select(vec3<bool>(var_0.x, var_0.x, arg_1), vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, var_0.x)), any(!vec3<bool>(arg_1, var_0.x, var_0.x))), !(!vec3<bool>(arg_1, true, arg_1)), arg_1), min(35600u, 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(339f + -563f), -244f, arg_0.x));
    var_1 = global0[_wgslsmith_index_u32(u_input.c, 5u)];
    let var_2 = select(!(!(!(!var_1.a.a.zy))), vec2<bool>(arg_1, arg_1), vec2<bool>(-_wgslsmith_clamp_i32(var_1.a.b.x, u_input.b, u_input.b) != u_input.b, true));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(~(~(-34285i))), var_1.a.b.x, var_1.a.b.x, var_1.a.b.x), ~firstLeadingBit(-vec4<i32>(-1i, u_input.b, 1i, -72350i)) ^ (firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-23925i, -1i, -30607i, u_input.b), vec4<i32>(var_1.a.b.x, 0i, -1i, 2267i))) >> (vec4<u32>(0u, _wgslsmith_add_u32(0u, u_input.a), u_input.c, 21097u) % vec4<u32>(32u))));
    return ~4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 647f, arg_2.x, 1000f) - vec4<f32>(-1000f, arg_2.x, -899f, arg_2.x)), true), 1u, reverseBits(1u), firstTrailingBit(0u)), vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), ~69996u, 1u, 1u) >> (~vec4<u32>(u_input.c, 0u, 31814u, u_input.a) % vec4<u32>(32u))) << (abs(~min(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), ~vec4<u32>(0u, 0u, 4294967295u, u_input.a))) % vec4<u32>(32u));
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    let var_1 = var_0;
    var var_2 = 1093f;
    return arg_0.a.xzz;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<bool>) -> Struct_2 {
    global0 = array<Struct_2, 5>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, 1941f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-717f, 916f) - vec2<f32>(795f, 1691f)), vec2<f32>(-790f, 1312f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-331f, _wgslsmith_f_op_f32(max(-1370f, -1872f))) - vec2<f32>(243f, _wgslsmith_f_op_f32(419f - 116f)))));
    global0 = array<Struct_2, 5>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-488f, -1000f, -783f)))))));
    let var_2 = ~((_wgslsmith_add_u32(arg_1.x, u_input.a) ^ ~1268u) & ~arg_1.x) & arg_1.x;
    return global0[_wgslsmith_index_u32(0u, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(i32(-1i) * -(~(-2167i)));
    global0 = array<Struct_2, 5>();
    var var_1 = func_4(u_input.b << (1u % 32u), ~vec3<u32>(1u, select(5271u | u_input.a, ~4294967295u, true), 1u), -27405i, !select(select(func_1(Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(1i, -32730i, -28611i, -2577i), vec2<bool>(true, false)), vec2<f32>(-955f, 439f), vec4<i32>(46216i, -1i, -1i, -14452i)), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(-47979i, ~vec3<u32>(_wgslsmith_sub_u32(11600u, u_input.a), var_1.b, 6743u), reverseBits(var_1.a.b.x), var_1.c).e.x, var_1.a.b.wx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, var_1.e.x, 632f, 1384f) * vec4<f32>(149f, 628f, -798f, 411f)), vec4<f32>(var_1.e.x, var_1.e.x, var_1.e.x, 468f), select(var_1.a.a, var_1.a.a, var_1.a.a))))));
}

