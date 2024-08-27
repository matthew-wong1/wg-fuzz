struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(Struct_1(~countOneBits(vec2<i32>(u_input.a, u_input.a)), all(vec4<bool>(any(vec4<bool>(true, false, true, false)), 0u <= u_input.b, any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)))), ~_wgslsmith_mult_i32(u_input.a, 7190i >> (u_input.b % 32u)), u_input.b != u_input.b));
    var var_1 = Struct_2(Struct_1(~vec2<i32>(_wgslsmith_clamp_i32(28839i, 0i, -55696i), ~2147483647i), true, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-410f, 230f))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -174f))))));
    var_1 = var_0;
    let var_2 = var_0.a;
    var_1 = Struct_2(var_0.a);
    return _wgslsmith_sub_i32(77046i, ~(firstTrailingBit(u_input.a) & _wgslsmith_clamp_i32(countOneBits(var_2.c), var_0.a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a.x, var_0.a.a.x, 2147483647i), vec3<i32>(30436i, 6469i, 7377i)))));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, 111099u)), countOneBits(vec3<u32>(5898u, 4294967295u, 48306u))), 1u), 52028u, 4294967295u), abs(u_input.b), 49222u, _wgslsmith_dot_vec3_u32(~vec3<u32>(~89628u, 1u, 1u), vec3<u32>(reverseBits(0u), ~63593u, ~u_input.b) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_clamp_u32(34u, u_input.b, 7433u), u_input.b)));
    var var_1 = Struct_1(~vec2<i32>(0i, ~(u_input.a >> (1u % 32u))), all(vec3<bool>(false, false, true == (var_0.x >= 52213u))), _wgslsmith_add_i32(u_input.a | _wgslsmith_mult_i32(func_2(), -17929i), 0i), true);
    var var_2 = Struct_2(Struct_1(vec2<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, -2147483647i)), _wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(var_0.x, 4294967295u)) > ~_wgslsmith_mod_u32(var_0.x, 1u), var_1.c, true));
    var_1 = var_2.a;
    var var_3 = Struct_1(abs(vec2<i32>(0i, 8389i)), !(!var_2.a.b), 6516i, abs(u_input.b) >= _wgslsmith_sub_u32(~19095u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.x, 34519u, var_0.x), vec4<u32>(9807u, u_input.b, 1u, 32364u)), u_input.b << (_wgslsmith_sub_u32(var_0.x, u_input.b) % 32u)));
    return true;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = 1000f;
    var var_1 = Struct_2(Struct_1(arg_1.wy, true, 1i, true));
    let var_2 = Struct_3(~31293u);
    let var_3 = !select(!(!vec3<bool>(arg_0, false, arg_0)), vec3<bool>(!(var_1.a.d || false), (u_input.b > 19050u) | arg_0, arg_0), vec3<bool>(all(vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_f32(trunc(1687f)) <= _wgslsmith_f_op_f32(trunc(var_0)), all(vec2<bool>(false, var_1.a.d))));
    let var_4 = vec4<i32>(u_input.a, -select(28303i, reverseBits(u_input.a), false), 39499i, abs(min(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(71350i, 1i, 1i), func_2()), _wgslsmith_mod_i32(u_input.a, u_input.a) >> (var_2.a % 32u))));
    return var_2;
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1155f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-322f, -1557f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1169f + 699f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1313f)) - _wgslsmith_f_op_f32(f32(-1f) * -880f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(651f))))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1f)))), -1718f, _wgslsmith_f_op_f32(abs(1375f)), _wgslsmith_f_op_f32(floor(var_0.x)));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 69618u), vec2<u32>(arg_0.a, 8199u)), _wgslsmith_clamp_u32(arg_0.a, firstLeadingBit(min(0u, 59400u)) | _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0.a, 26615u), vec3<u32>(u_input.b, arg_0.a, 54628u)), 0u), 47856u), countOneBits(_wgslsmith_add_u32(16713u, arg_0.a)), _wgslsmith_mult_u32(0u, u_input.b));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -519f, 721f, 583f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-321f, 1048f, var_0.x, 961f), vec4<f32>(287f, 478f, var_0.x, -428f), vec4<bool>(false, true, false, false))))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-205f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -459f) + _wgslsmith_f_op_f32(f32(-1f) * -1979f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(var_0.x * 982f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(sign(var_0.x)))))));
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-15020i, ~(-1i)), vec2<i32>(~u_input.a, 2147483647i)), vec2<i32>(u_input.a, _wgslsmith_add_i32(-12086i, u_input.a)), select(-vec2<i32>(0i, -20353i) >> (var_1.xz % vec2<u32>(32u)), countOneBits(vec2<i32>(-2147483647i, u_input.a)), true)), !all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false)), abs(u_input.a), any(vec2<bool>(true, true)));
    return 949f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(519f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-1883f + -1599f)))))) + _wgslsmith_f_op_f32(func_4(func_3(func_1(_wgslsmith_f_op_f32(floor(1000f))), ~vec4<i32>(u_input.a, 9916i, u_input.a, 1i)))));
    var var_1 = select(vec3<bool>(false, any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-845f + 1000f))))), vec3<bool>(true, ~(~26241u) > ~_wgslsmith_mod_u32(74768u, u_input.b), true), select(any(vec3<bool>(all(vec3<bool>(true, true, false)), select(true, true, false), any(vec3<bool>(true, true, false)))), true, any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false)))));
    var_1 = select(vec3<bool>(!var_1.x, var_1.x, var_1.x), !vec3<bool>(all(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), true, var_1.x), var_1.x);
    var_1 = vec3<bool>(true, (4294967295u <= u_input.b) || all(select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), !vec3<bool>(true, var_1.x, false), !vec3<bool>(var_1.x, true, var_1.x))), false);
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(func_3(-1557f != var_0, vec4<i32>(u_input.a, 1i, 11556i, 2812i)).a), max(_wgslsmith_add_vec2_u32(~(~vec2<u32>(10977u, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 60928u)) | vec2<u32>(u_input.b, u_input.b)), vec2<u32>(15991u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 1u), countOneBits(vec2<u32>(0u, 20294u))))));
}

