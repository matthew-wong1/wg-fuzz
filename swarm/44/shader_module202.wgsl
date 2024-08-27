struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(6998i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> bool {
    var var_0 = 2147483647i << (u_input.c % 32u);
    let var_1 = vec3<u32>(~u_input.c, ~abs(_wgslsmith_mult_u32(abs(arg_1.x), firstLeadingBit(arg_1.x))), arg_1.x);
    let var_2 = select(!vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(vec2<bool>(true, true)), _wgslsmith_sub_i32(-73329i, u_input.b) > max(u_input.b, 3967i), true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)), vec4<bool>(arg_0 >= global0.a, true, select(false, false, false), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-799f, -554f) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(632f, 214f) - vec2<f32>(514f, 1792f)), vec2<f32>(1f, 1f)))))), var_2.x, ~(-1i), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 0i, arg_0, abs(u_input.b)), abs(vec4<i32>(32436i, 1i, -8171i, u_input.b) ^ vec4<i32>(u_input.b, global0.a, -1i, u_input.b))), vec2<bool>(any(!var_2.wyy), false), (max(vec2<i32>(arg_0, u_input.b), vec2<i32>(15608i, arg_0)) & (vec2<i32>(-27936i, 35448i) ^ vec2<i32>(2147483647i, arg_0))) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.x, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, u_input.c), var_1.xx)) % vec2<u32>(32u)), select(vec3<bool>(!var_2.x, any(vec2<bool>(var_2.x, true)), var_2.x), var_2.zwy, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1583f, -1000f))))), vec3<bool>(false, true, var_2.x));
    var var_4 = Struct_2(i32(-1i) * -firstTrailingBit(u_input.b >> (42426u % 32u)));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = Struct_2(-19317i);
    global0 = Struct_2(_wgslsmith_clamp_i32(11959i, abs(global0.a), u_input.b) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 104349u, 4294967295u), vec3<u32>(42652u, u_input.a.x, u_input.d.x)), firstTrailingBit(u_input.e)), countOneBits(41215u)) % 32u));
    var var_0 = Struct_1(arg_2.a, select(vec2<bool>(true, true), vec2<bool>(countOneBits(global0.a) == (u_input.b | arg_1.a.x), func_3(1i, u_input.a) && all(vec2<bool>(arg_0, true))), select(select(select(vec2<bool>(arg_0, arg_2.b.x), arg_2.d.zy, vec2<bool>(true, true)), arg_2.d.xz, !vec2<bool>(false, arg_1.b.x)), arg_2.d.yy, !any(vec2<bool>(arg_0, arg_1.d.x)))), _wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, -13534i), vec2<i32>(arg_2.a.x, global0.a)), -vec2<i32>(102344i, _wgslsmith_sub_i32(u_input.b, arg_1.a.x))), select(vec3<bool>(true, true, all(select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_1.d.x, true, arg_1.d.x, false)))), select(vec3<bool>(arg_0, false, all(vec4<bool>(arg_0, arg_0, false, true))), select(arg_2.d, select(vec3<bool>(true, arg_1.d.x, arg_0), vec3<bool>(arg_1.b.x, true, arg_0), vec3<bool>(arg_0, true, arg_1.d.x)), vec3<bool>(true, true, arg_0)), vec3<bool>(false, true, u_input.a.x < u_input.d.x)), true), -1014f);
    var var_1 = arg_1.d.xx;
    var_1 = !(!select(!vec2<bool>(arg_0, var_0.b.x), select(vec2<bool>(true, false), !vec2<bool>(true, arg_0), 388f >= arg_2.e), !arg_0));
    return _wgslsmith_div_u32(2135u, ~58920u) < _wgslsmith_clamp_u32(~(~u_input.e), _wgslsmith_mult_u32(firstTrailingBit(3114u) >> (abs(u_input.a.x) % 32u), ~u_input.a.x), u_input.e);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = global0.a;
    var var_1 = Struct_2(-8328i);
    let var_2 = 1u;
    return Struct_1(~vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, -2147483647i, 2147483647i), reverseBits(vec3<i32>(-32514i, var_1.a, u_input.b))), max(min(7582i, u_input.b), 2147483647i), global0.a, firstLeadingBit(~u_input.b)), select(arg_1, vec2<bool>(true, arg_0), select(vec2<bool>(true, true), arg_1, vec2<bool>(true, false))), ~vec2<i32>(u_input.b, u_input.b), vec3<bool>(arg_0, true, func_4(func_3(u_input.b, u_input.d) != !arg_0, Struct_1(~vec4<i32>(2147483647i, global0.a, 0i, -1i), vec2<bool>(arg_0, false), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(u_input.b, var_1.a), vec2<i32>(var_1.a, -1i)), select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, arg_1.x, true)), _wgslsmith_f_op_f32(ceil(-1497f))), Struct_1(vec4<i32>(41993i, global0.a, var_1.a, 0i), arg_1, _wgslsmith_mod_vec2_i32(vec2<i32>(31006i, u_input.b), vec2<i32>(var_1.a, var_1.a)), !vec3<bool>(arg_1.x, false, arg_0), -803f))), _wgslsmith_f_op_f32(f32(-1f) * -663f));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = !(_wgslsmith_f_op_f32(-arg_0.e) <= 307f);
    global0 = Struct_2(countOneBits(u_input.b));
    var var_1 = false;
    var var_2 = -arg_0.a.x ^ 1i;
    var var_3 = func_2(global0.a > ~1i, select(!arg_0.d.zz, arg_0.d.yy, arg_0.b.x));
    return Struct_2(56417i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(vec4<i32>(u_input.b, reverseBits(-2147483647i) & u_input.b, u_input.b, global0.a), vec2<bool>(true, true), vec2<i32>(~0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, u_input.b, global0.a, u_input.b), ~vec4<i32>(u_input.b, u_input.b, -28533i, 10221i))), !vec3<bool>(true, u_input.a.x <= u_input.c, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false);
    var var_0 = -u_input.b;
    let var_1 = vec2<bool>(false | all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-399f, -746f)), -1000f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -420f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-612f, -1830f)))) - vec2<f32>(2588f, _wgslsmith_f_op_f32(557f + -696f)))));
    var_0 = firstTrailingBit(min(reverseBits(global0.a), func_1(func_2(!var_1.x, !var_1), var_1.x).a));
    var_0 = -5244i;
    global0 = func_1(func_2(!var_1.x, !select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(false, false), var_1, vec2<bool>(false, var_1.x)), var_1)), true);
    var var_3 = vec4<i32>(u_input.b, _wgslsmith_mod_i32(~_wgslsmith_div_i32(u_input.b, global0.a), -1i), ~u_input.b, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, -206f), vec2<f32>(var_2.x, 1365f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - vec2<f32>(-271f, var_2.x)))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_add_u32(select(49951u, 17202u, false), ~u_input.e), ~u_input.e, _wgslsmith_div_u32(~u_input.d.x, abs(4294967295u))), vec4<u32>(~firstTrailingBit(51511u), firstLeadingBit(0u), u_input.a.x, ~countOneBits(26289u)), vec4<u32>(u_input.c, countOneBits(47264u), reverseBits(~u_input.e), u_input.c)));
}

