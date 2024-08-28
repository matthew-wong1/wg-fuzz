struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~vec3<u32>(1u, firstTrailingBit(u_input.b), 19005u ^ u_input.b), u_input.a.x), vec4<u32>(23757u, u_input.b, countOneBits(u_input.b), ~u_input.b), Struct_1(reverseBits(~(~vec3<u32>(0u, 21775u, u_input.b))), abs(abs(u_input.a.x))), false | ((u_input.b | ~27780u) >= 4294967295u));
    return var_0.a;
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(~abs(vec3<u32>(1u, 0u, 1u))), -36826i), vec4<u32>(firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.b, u_input.b, 43375u), vec3<u32>(u_input.b, 62970u, 0u)), ~vec3<u32>(0u, 62865u, u_input.b)), max(0u, _wgslsmith_mult_u32(~u_input.b, 1u & u_input.b)), ~0u), func_2(), any(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, false, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)))));
    var var_1 = -_wgslsmith_mod_vec2_i32(-vec2<i32>(~u_input.a.x, -8288i), countOneBits(min(vec2<i32>(u_input.a.x, -1i), vec2<i32>(var_0.c.b, u_input.a.x) ^ u_input.a.xz)));
    var var_2 = min(u_input.a.yyw, -select(vec3<i32>(-1i) * -u_input.a.yxw, vec3<i32>(~0i, max(2147483647i, -2147483647i), 31186i), all(vec2<bool>(true, var_0.d))));
    let var_3 = var_0;
    var_1 = countOneBits(u_input.a.wy);
    return var_3.d;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(min((arg_1.b.wwz ^ arg_1.c.a) >> (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(arg_1.b.x, u_input.b, 1u))), -29898i), vec4<u32>(_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_mult_u32(reverseBits(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 11070u))), u_input.b), ~_wgslsmith_div_u32(~86050u, min(arg_1.b.x, u_input.b)), func_2().a.x, firstTrailingBit(~75735u)), Struct_1(arg_1.b.wyz, countOneBits(2147483647i)), any(!select(select(vec4<bool>(arg_1.d, true, arg_1.d, false), vec4<bool>(false, arg_1.d, arg_1.d, false), vec4<bool>(arg_1.d, true, true, false)), !vec4<bool>(arg_1.d, true, arg_1.d, arg_1.d), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1.d, false, false, arg_1.d), false))));
    var var_1 = (_wgslsmith_add_u32(countOneBits(firstLeadingBit(u_input.b)), select(abs(arg_1.c.a.x), 26134u, var_0.d | false)) >> (max(_wgslsmith_div_u32(u_input.b, 22821u), u_input.b) % 32u)) & u_input.b;
    let var_2 = select(select(select(select(vec4<bool>(false, true, false, var_0.d), select(vec4<bool>(true, false, arg_1.d, arg_1.d), vec4<bool>(false, true, arg_1.d, true), true), vec4<bool>(var_0.d, false, var_0.d, true)), vec4<bool>(true, true, true, true), vec4<bool>(-1i > u_input.a.x, true, all(vec4<bool>(arg_1.d, var_0.d, var_0.d, var_0.d)), var_0.d)), vec4<bool>(any(!vec3<bool>(true, var_0.d, false)), arg_1.d, var_0.d, all(!vec2<bool>(arg_1.d, true))), vec4<bool>(all(vec4<bool>(arg_1.d, arg_1.d, var_0.d, false)), var_0.d, true, select(true, true, func_3()))), select(select(!(!vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d)), vec4<bool>(true, arg_1.d, select(var_0.d, var_0.d, false), any(vec2<bool>(var_0.d, var_0.d))), select(vec4<bool>(false, true, true, false), select(vec4<bool>(arg_1.d, var_0.d, false, false), vec4<bool>(arg_1.d, true, true, false), vec4<bool>(var_0.d, arg_1.d, arg_1.d, false)), !var_0.d)), vec4<bool>(!any(vec3<bool>(false, false, var_0.d)), !(2147483647i <= arg_1.c.b), false, !any(vec3<bool>(var_0.d, arg_1.d, arg_1.d))), select(vec4<bool>(true, true, arg_1.d, arg_1.d), vec4<bool>(!arg_1.d, true, arg_1.d, true | arg_1.d), select(vec4<bool>(false, false, true, var_0.d), vec4<bool>(true, false, true, var_0.d), func_3()))), !select(!(!vec4<bool>(true, arg_1.d, arg_1.d, false)), vec4<bool>(!arg_1.d, true, any(vec3<bool>(var_0.d, true, var_0.d)), true), !func_3()));
    var_1 = ~_wgslsmith_mult_u32(0u, 7212u);
    var_1 = _wgslsmith_div_u32(71690u, u_input.b);
    return arg_1.c;
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    global0 = array<vec3<i32>, 22>();
    let var_0 = func_4(~vec4<i32>(max(u_input.a.x, u_input.a.x), ~53162i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_0), vec2<u32>(14221u, u_input.b)) % 32u), reverseBits(u_input.a.x ^ u_input.a.x), u_input.a.x), Struct_2(func_2(), vec4<u32>(21006u | _wgslsmith_sub_u32(45942u, arg_0), 1u, abs(_wgslsmith_add_u32(arg_0, arg_0)), ~(~u_input.b)), func_2(), func_3()), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(1i, -11802i)), u_input.a.yx));
    global0 = array<vec3<i32>, 22>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)), 882f, 348f);
    global0 = array<vec3<i32>, 22>();
    return 1980f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2398f))), _wgslsmith_f_op_f32(func_1(u_input.b, true)))))));
    let var_1 = Struct_2(func_2(), ~vec4<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(41081u, u_input.b)), ~u_input.b), _wgslsmith_clamp_u32(4294967295u, 97161u, u_input.b), u_input.b, select(u_input.b, ~u_input.b, false)), Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(18933u, u_input.b, u_input.b)), -82142i), true);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 274f), vec2<f32>(var_0.x, 709f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, var_0.x)), select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_1.d, false), true)))))));
    var var_2 = _wgslsmith_sub_vec3_u32(var_1.b.wzw, var_1.a.a);
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -725f));
    var var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_1.d)) * -506f) > _wgslsmith_f_op_f32(abs(var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1729f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-365f)) + _wgslsmith_f_op_f32(trunc(var_0.x)))))));
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(839u, func_4(select(vec4<i32>(var_1.a.b, 76122i, u_input.a.x, var_1.a.b) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, u_input.b, 0u, 15389u), var_1.b) % vec4<u32>(32u)), ~(~u_input.a), select(!vec4<bool>(var_4, var_4, var_1.d, var_1.d), !vec4<bool>(var_4, var_4, false, var_4), vec4<bool>(true, false, var_1.d, false))), var_1, _wgslsmith_mult_vec2_i32(u_input.a.yw, u_input.a.zz)).b, -1024f, u_input.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1000f) - vec3<f32>(424f, -1000f, -884f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, -398f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, var_0.x, 863f))))), vec3<f32>(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f * var_0.x))), ~var_1.c.a.x <= 61603u)));
}

