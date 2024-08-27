struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    global1 = arg_0;
    let var_0 = Struct_1(vec2<i32>(min(u_input.b, abs(u_input.a) & _wgslsmith_dot_vec2_i32(vec2<i32>(-18171i, -25768i), vec2<i32>(arg_0, -19372i))), -3130i), select(!vec4<bool>(any(vec3<bool>(true, false, true)), true, arg_0 >= arg_0, false), vec4<bool>(true, false, !any(vec3<bool>(true, false, false)), !select(false, false, true)), any(vec3<bool>(all(vec2<bool>(false, false)), true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) + _wgslsmith_f_op_f32(abs(arg_1))), select(!vec4<bool>(any(vec2<bool>(false, true)), true, true, false), vec4<bool>(1i > (-1i | u_input.a), select(false, true, false) || true, true, true), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(var_0.a, vec4<bool>(select(var_0.d.x, !all(var_0.b), all(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), true, true, false || var_0.d.x), 1000f, select(!var_0.d, !vec4<bool>(all(var_0.b.xz), true, !var_0.d.x, false), !(!(!vec4<bool>(false, false, var_0.d.x, true)))));
    let var_2 = vec4<u32>(countOneBits(~u_input.c.x), 30483u, u_input.c.x, _wgslsmith_add_u32(firstTrailingBit(~abs(52061u)), ~(~25379u) >> (~select(u_input.c.x, 4294967295u, false) % 32u)));
    var var_3 = var_0.d.x;
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.zx, vec2<u32>(87508u, var_2.x)), var_2.yw), u_input.c.x), firstLeadingBit(vec2<u32>(var_2.x, var_2.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(50645u, 1u, 1u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 53438u, u_input.c.x), vec3<u32>(1u, u_input.c.x, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(4816u, arg_2, arg_2))))), vec3<u32>(29806u, select(4294967295u, _wgslsmith_mult_u32(1u, 676u), true), _wgslsmith_mult_u32(~1u & firstLeadingBit(arg_2), ~func_3(u_input.b, 125f))));
    let var_1 = ~(~vec4<u32>(0u, _wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x), var_0.x, ~(~arg_2)));
    global1 = _wgslsmith_add_i32(2147483647i, -19645i);
    let var_2 = var_1.x;
    let var_3 = !vec3<bool>(!all(select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, true), true)), true, arg_1.x);
    return _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - arg_0.yx), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1106f, 2095f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xw) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), arg_0.zy, var_3.zx)), _wgslsmith_f_op_vec2_f32(select(arg_0.zz, arg_0.ww, vec2<bool>(true, var_3.x))), arg_0.x <= arg_0.x))))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(192f, _wgslsmith_f_op_f32(-922f * -1239f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-831f, 1091f)) * vec2<f32>(-1272f, 707f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(-1958f, -1487f, -2536f, -1384f), vec3<bool>(arg_0, true, false), u_input.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-682f, 1000f)))))));
    let var_1 = ~(~u_input.b) ^ min(u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a));
    let var_2 = reverseBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, u_input.a), _wgslsmith_add_i32(-1i, -6653i)), 31850i, u_input.a << (u_input.c.x % 32u), -29743i)) & vec4<i32>(~_wgslsmith_mult_i32(-22535i, u_input.a), var_1, -var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-1i), -39153i), vec2<i32>(-20477i, i32(-1i) * -38044i)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1868f, var_0.x))))) - 128f);
    global0 = !all(!arg_1.zz);
    return Struct_5(var_0.x, max(vec2<i32>(~_wgslsmith_clamp_i32(var_2.x, var_1, -13689i), max(1i, u_input.b)), vec2<i32>(min(13071i, u_input.b) >> (_wgslsmith_mod_u32(u_input.c.x, 1942u) % 32u), ~(-15746i))));
}

fn func_4(arg_0: Struct_5) -> bool {
    var var_0 = max(~(u_input.c.x << (u_input.c.x % 32u)), u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-984f, arg_0.a, -403f, _wgslsmith_f_op_f32(-arg_0.a))))), vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-arg_0.a))), arg_0.a, -1670f)));
    let var_2 = _wgslsmith_mult_i32(firstLeadingBit(arg_0.b.x), -_wgslsmith_sub_i32(arg_0.b.x, _wgslsmith_mod_i32(-18913i, arg_0.b.x)) >> (_wgslsmith_add_u32(min(~28918u, 58087u), u_input.c.x ^ min(49505u, 52339u)) % 32u));
    let var_3 = ~vec2<i32>(var_2, -1i << ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 15123u)) ^ ~4294967295u) % 32u));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a - var_1.x), var_1.x, var_1.x, -1382f))));
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) > _wgslsmith_f_op_f32(round(-1174f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(26296i, -8824i, 19732i), firstTrailingBit(vec3<i32>(u_input.a, u_input.b, u_input.b))), ~countOneBits(vec3<i32>(40019i, 0i, u_input.b))), u_input.b | ~_wgslsmith_dot_vec3_i32(vec3<i32>(25559i, -20158i, -7422i), vec3<i32>(u_input.a, u_input.b, 2147483647i))), u_input.b);
    var var_1 = select(vec2<u32>(u_input.c.x, 57336u), vec2<u32>(0u, u_input.c.x), (true != any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))) & func_4(func_1(all(vec3<bool>(false, false, false)), vec4<bool>(false, true, false, false))));
    var_0 = vec2<i32>(_wgslsmith_add_i32(~(-1i), ~(-(36412i | u_input.a))), -21110i);
    var_1 = _wgslsmith_sub_vec2_u32(select(~(_wgslsmith_mod_vec2_u32(u_input.c.yx, u_input.c.xz) & ~u_input.c.xz), vec2<u32>(select(1u, 4294967295u, false), _wgslsmith_div_u32(1u, u_input.c.x)) | vec2<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 65076u), vec3<u32>(17225u, u_input.c.x, u_input.c.x))), select(vec2<bool>(all(vec3<bool>(false, true, true)), func_4(Struct_5(237f, vec2<i32>(2277i, u_input.a)))), vec2<bool>(true, true), false)), u_input.c.yz);
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -313f)), _wgslsmith_f_op_f32(round(1042f)));
}

