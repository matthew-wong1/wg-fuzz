struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(998u), Struct_1(70623u), Struct_1(4294967295u), Struct_1(0u), Struct_1(47833u), Struct_1(73848u), Struct_1(26811u), Struct_1(4294967295u), Struct_1(44963u), Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(63359u), Struct_1(1421u), Struct_1(1u), Struct_1(4294967295u), Struct_1(22558u), Struct_1(44968u), Struct_1(3798u), Struct_1(7916u), Struct_1(4294967295u), Struct_1(1u), Struct_1(34136u), Struct_1(38332u), Struct_1(4294967295u), Struct_1(1u));

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(42739u), Struct_1(23988u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(24069u), Struct_1(25459u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>) -> bool {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(18028u, u_input.a) ^ ~_wgslsmith_clamp_u32(~arg_0.x, 0u, arg_0.x), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(countOneBits(arg_0.wyw)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.x, u_input.d, u_input.a), countOneBits(vec3<u32>(0u, 26449u, 18390u)))));
    global2 = array<Struct_1, 7>();
    let var_1 = var_0.x;
    var_0 = vec2<u32>(_wgslsmith_sub_u32(max(var_0.x | ~40959u, 58120u), 60535u), arg_0.x);
    global0 = array<Struct_1, 26>();
    return any(!vec4<bool>(true, true, -527f <= _wgslsmith_f_op_f32(trunc(-803f)), arg_1.x));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = select(vec3<bool>(true, true, true), select(!vec3<bool>(false, select(false, false, true), any(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(4294967295u < u_input.d, true, false)), true), all(select(vec2<bool>(func_3(vec4<u32>(arg_0.a, 4294967295u, u_input.d, 1u), vec2<bool>(false, false)), any(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), false)));
    let var_1 = arg_0;
    global1 = vec4<i32>(_wgslsmith_clamp_i32(u_input.c, -(~u_input.b), (37910i << (var_1.a % 32u)) | -global1.x) & u_input.c, reverseBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b, -2295i), 36666i, 13347i), select(u_input.c, _wgslsmith_mod_i32(1i, -2147483647i), any(vec4<bool>(var_0.x, var_0.x, true, true))))), abs(min(countOneBits(-global1.x), 4868i)), 2147483647i & (-25377i >> (select(55089u, var_1.a, false) % 32u)));
    global2 = array<Struct_1, 7>();
    let var_2 = arg_0;
    return _wgslsmith_add_u32(_wgslsmith_div_u32(~1u, ~96469u), _wgslsmith_mod_u32(~firstLeadingBit(select(22098u, 50532u, var_0.x)), u_input.a ^ reverseBits(~43854u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global1 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(~vec4<i32>(global1.x, -2147483647i, 2147483647i, 28828i), vec4<i32>(-1i, ~global1.x, _wgslsmith_sub_i32(u_input.b, global1.x), u_input.c));
    var var_0 = _wgslsmith_div_vec2_f32(arg_1.xx, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), 1052f))));
    var var_1 = Struct_1(u_input.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(229f, 591f)), _wgslsmith_div_f32(-178f, arg_1.x)))));
    let var_3 = (vec2<u32>(var_1.a, ~var_1.a) | select(vec2<u32>(max(24568u, var_1.a), 1u), vec2<u32>(0u, u_input.a) | (vec2<u32>(var_1.a, u_input.d) | vec2<u32>(1u, 0u)), !arg_0)) & abs(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.a, 0u), ~vec2<u32>(54506u, 4294967295u)), arg_2.a));
    return global0[_wgslsmith_index_u32(14315u, 26u)];
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<u32>) -> bool {
    let var_0 = func_4(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<bool>(true, false), vec2<bool>(arg_3.x == func_2(Struct_1(arg_3.x)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(526f, -311f, 1062f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-321f, 1000f, -334f), vec3<f32>(-1689f, 155f, -1501f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(723f, -680f)), _wgslsmith_f_op_f32(ceil(-647f)), _wgslsmith_f_op_f32(floor(1323f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-149f, -1044f, -385f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(938f, -753f, 1000f) + vec3<f32>(1000f, 2198f, -1159f))))), global0[_wgslsmith_index_u32(min(countOneBits(countOneBits(arg_2)), 1u), 26u)]);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(floor(-590f));
    let var_3 = func_4(vec2<bool>(true, true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2, -690f)) - _wgslsmith_f_op_f32(1372f - 1440f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-128f, var_2)))), _wgslsmith_f_op_f32(f32(-1f) * -915f), 603f), global2[_wgslsmith_index_u32(4294967295u, 7u)]);
    global1 = -abs(vec4<i32>(_wgslsmith_mult_i32(global1.x, _wgslsmith_div_i32(2147483647i, -26065i)), u_input.c, -min(u_input.b, u_input.c), max(u_input.b, global1.x)));
    return _wgslsmith_mod_u32(1u, min(select(var_3.a, max(var_3.a, var_3.a), true), _wgslsmith_dot_vec4_u32(arg_1 >> (vec4<u32>(4294967295u, arg_1.x, arg_1.x, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(arg_1)))) <= ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(~firstTrailingBit(_wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, 0u))), ~0u, 20293u & u_input.a);
    global1 = vec4<i32>(global1.x, 2147483647i, 0i, u_input.c ^ u_input.c);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -596f);
    var var_2 = select(!vec3<bool>(any(vec3<bool>(true, true, true)), func_1(u_input.d ^ 42783u, vec4<u32>(1u, var_0, var_0, 19752u), var_0, vec3<u32>(var_0, 1u, var_0) & vec3<u32>(var_0, 1u, var_0)), true), vec3<bool>(true, any(vec3<bool>(true, true, true)), (countOneBits(u_input.b) == _wgslsmith_div_i32(0i, 22352i)) || false), vec3<bool>(all(vec3<bool>(any(vec3<bool>(true, true, true)), select(false, false, true), false)), -39730i >= global1.x, 1u <= u_input.d));
    let var_3 = Struct_1(u_input.a);
    global1 = reverseBits(-vec4<i32>(global1.x, global1.x, -43887i, ~(-global1.x)));
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1031f, 1218f, -905f, -1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1199f, 1959f, -421f) - vec4<f32>(-704f, -1138f, 408f, -544f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-128f, -965f, 1000f, -910f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, 1688f, -1429f, -145f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, -1477f, -303f, -986f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(929f, -1496f, 1009f, 221f))), var_2.x)))), ~vec4<u32>(4294967295u, 1u, 4294967295u, var_0), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1432f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f * 1293f)), _wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -353f)))))));
}

