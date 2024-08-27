struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: vec3<i32> = vec3<i32>(11967i, 0i, -12816i);

var<private> global2: array<vec2<i32>, 18>;

var<private> global3: vec4<u32> = vec4<u32>(42150u, 1u, 28898u, 4294967295u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    global0 = array<vec4<bool>, 3>();
    global3 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global3.x, max(global3.x, global3.x)) >> (4294967295u % 32u), 48117u, 4294967295u, 29759u), vec4<u32>(~global3.x, global3.x, ~(21248u | (global3.x & global3.x)), global3.x));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1474f * _wgslsmith_f_op_f32(-1304f + _wgslsmith_div_f32(-1000f, -552f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1741f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -537f))))));
    global0 = array<vec4<bool>, 3>();
    var var_1 = _wgslsmith_mult_i32(firstTrailingBit(~(~7358i)), -13923i);
    return -firstTrailingBit(vec4<i32>(1i, select(u_input.a, global1.x, true), u_input.a, 1i)) ^ ((abs(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(global1.x, -59036i, 25887i, u_input.a))) >> (~(~vec4<u32>(global3.x, global3.x, global3.x, global3.x)) % vec4<u32>(32u))) ^ abs(vec4<i32>(1i, i32(-1i) * -40464i, -global1.x, 36200i)));
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    global2 = array<vec2<i32>, 18>();
    global2 = array<vec2<i32>, 18>();
    let var_0 = -firstTrailingBit(global2[_wgslsmith_index_u32(14702u, 18u)]);
    var var_1 = Struct_3(global3.x, arg_0, Struct_2(Struct_1(vec3<u32>(1u, global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, 108849u, global3.x), vec4<u32>(14595u, global3.x, global3.x, global3.x))), arg_0.x)));
    global0 = array<vec4<bool>, 3>();
    return _wgslsmith_mult_vec4_i32(~var_1.b, func_3() >> ((~countOneBits(vec4<u32>(var_1.a, global3.x, global3.x, global3.x)) ^ ~reverseBits(vec4<u32>(1u, var_1.a, 59203u, 1u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~global3.zw;
    var var_1 = select(vec3<bool>(true, true, all(select(global0[_wgslsmith_index_u32(~arg_1.a.a.x, 3u)], select(global0[_wgslsmith_index_u32(var_0.x, 3u)], vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), true))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, false, false)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)))), select(vec3<bool>(false, true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))), select(vec3<bool>(all(vec4<bool>(false, true, true, false)), true, true), vec3<bool>(true, all(vec2<bool>(false, false)), 3082u < arg_0.a), any(vec4<bool>(true, true, true, true))), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    global3 = ~(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(28903u, var_0.x, global3.x, 4294967295u), vec4<u32>(588u, 4294967295u, 0u, global3.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-474f + -539f), _wgslsmith_f_op_f32(-193f * 3545f), _wgslsmith_f_op_f32(trunc(-1352f)), -224f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(351f, 613f, -3129f, -652f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(-120f - -846f), _wgslsmith_f_op_f32(-311f - 591f), -1429f, 1f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, -436f)) * _wgslsmith_div_f32(-448f, -792f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(var_2.x)), var_1.x))));
    return arg_1.a;
}

fn func_1(arg_0: bool, arg_1: bool) -> vec2<f32> {
    var var_0 = Struct_2(func_4(Struct_3(global3.x, _wgslsmith_mod_vec4_i32(select(vec4<i32>(global1.x, -1i, 37400i, u_input.a), vec4<i32>(-31883i, -1i, -34923i, -6610i), false), func_2(vec4<i32>(-13395i, global1.x, global1.x, -38401i))), Struct_2(Struct_1(vec3<u32>(1u, global3.x, global3.x), u_input.a))), Struct_2(Struct_1(_wgslsmith_div_vec3_u32(global3.xzy, vec3<u32>(global3.x, global3.x, 0u)), reverseBits(u_input.a)))));
    var var_1 = Struct_3(abs(4294967295u), vec4<i32>(-2147483647i, 2147483647i, global1.x, _wgslsmith_div_i32(1i, u_input.a) >> (countOneBits(~var_0.a.a.x) % 32u)), Struct_2(func_4(Struct_3(_wgslsmith_div_u32(1u, var_0.a.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 11844i, global1.x, 0i), vec4<i32>(var_0.a.b, var_0.a.b, global1.x, -46053i)), Struct_2(var_0.a)), Struct_2(func_4(Struct_3(global3.x, vec4<i32>(var_0.a.b, var_0.a.b, -1i, u_input.a), Struct_2(var_0.a)), Struct_2(Struct_1(global3.xzx, global1.x)))))));
    var var_2 = 1i >> (countOneBits(1u) % 32u);
    var_2 = var_0.a.b;
    var var_3 = vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(u_input.a, -1i), 26905i, ~var_0.a.b, global1.x));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-650f, -1731f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 3>();
    global3 = abs(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(993u, global3.x, 0u, 22968u), ~vec4<u32>(1u, 4294967295u, 1u, global3.x)), ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(global3.zwx, global3.wzz), _wgslsmith_add_u32(17834u, 1u), global3.x)));
    global2 = array<vec2<i32>, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1069f, -158f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(827f, 1666f))) - _wgslsmith_f_op_vec2_f32(func_1(any(vec2<bool>(false, false)), all(vec3<bool>(false, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a >> (~global3.x % 32u), reverseBits(max(global3.x, reverseBits(global3.x))), select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, 4294967295u), vec4<u32>(global3.x, global3.x, global3.x, global3.x)), ~vec4<u32>(global3.x, global3.x, global3.x, 4294967295u)) >> (vec4<u32>(4294967295u, 0u, ~global3.x, _wgslsmith_div_u32(global3.x, global3.x)) % vec4<u32>(32u)), reverseBits(vec4<u32>(global3.x, _wgslsmith_mod_u32(0u, global3.x), _wgslsmith_sub_u32(global3.x, global3.x), global3.x)), global0[_wgslsmith_index_u32(global3.x, 3u)]), ~(~_wgslsmith_sub_i32(global1.x, -1i >> (global3.x % 32u))), _wgslsmith_sub_i32(-15336i, _wgslsmith_div_i32(-(global1.x >> (global3.x % 32u)), -1i)));
}

