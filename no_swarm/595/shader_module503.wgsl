struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<u32> {
    var var_0 = select(select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)), vec4<bool>(!all(vec2<bool>(true, true)), false && any(vec3<bool>(true, false, false)), false, any(vec3<bool>(false, false, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true))), vec4<bool>(all(vec3<bool>(any(vec2<bool>(true, false)), true, true)), all(vec3<bool>(all(vec2<bool>(true, true)), u_input.b.x < u_input.c, u_input.c >= u_input.b.x)), true, false), !select(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(true, false, false, false))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), any(vec4<bool>(true, false, true, false))));
    var_0 = select(select(select(select(!vec4<bool>(true, false, var_0.x, var_0.x), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, true), false), select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x)), vec4<bool>(all(vec3<bool>(false, true, true)), !var_0.x, var_0.x, false), select(false, true, var_0.x) || true), !select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(true, false, false, var_0.x), !vec4<bool>(false, false, var_0.x, false)), vec4<bool>(var_0.x, !(!var_0.x), var_0.x, true)), vec4<bool>(true, all(vec4<bool>(false, !var_0.x, var_0.x, var_0.x == true)), true, all(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), var_0.x))), false);
    var var_1 = select(vec3<i32>(u_input.a.x, u_input.a.x, 59731i), select(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(-25907i, u_input.a.x, 1i)), vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(43185i, -22993i, u_input.a.x, u_input.a.x), vec4<i32>(0i, 22117i, u_input.a.x, u_input.a.x)), _wgslsmith_add_i32(-17008i, u_input.a.x))), vec3<i32>(abs(1i), -_wgslsmith_add_i32(u_input.a.x, -2147483647i), u_input.a.x), select(select(vec3<bool>(false, false, true), var_0.wwy, true), !select(var_0.xzy, var_0.www, var_0.yww), var_0.x || false)), any(!vec4<bool>(!var_0.x, true, !var_0.x, select(false, var_0.x, true))));
    let var_2 = vec2<bool>(!(!all(vec2<bool>(var_0.x, var_0.x))), any(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))));
    let var_3 = vec3<u32>(min(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x >> (u_input.c % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(36595u, u_input.b.x, 4294967295u), vec3<u32>(u_input.c, 22657u, 4294967295u)))), 26696u), _wgslsmith_add_u32(~u_input.b.x, ~u_input.c), ~(~max(1u, u_input.b.x)));
    return vec2<u32>(5286u << (0u % 32u), 1u) >> (reverseBits(~countOneBits(~u_input.b)) % vec2<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_2(vec4<bool>(true, true, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1230f, 331f)) + -649f)))));
    let var_1 = abs(countOneBits(-arg_0));
    let var_2 = _wgslsmith_mod_u32(~23371u, ~10872u) >> ((abs(_wgslsmith_div_u32(arg_1, 42346u)) << (u_input.b.x % 32u)) % 32u);
    let var_3 = var_1.x;
    var var_4 = var_0.a.x;
    return vec2<bool>(var_0.a.x, true);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    let var_0 = !func_4(select(vec3<i32>(u_input.a.x << (u_input.b.x % 32u), u_input.a.x, -u_input.a.x), vec3<i32>(u_input.a.x, 39035i, u_input.a.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 80543u, 1246u), vec3<u32>(60812u, 0u, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)) % vec3<u32>(32u)), true && select(true, arg_1.a.x, true)), u_input.b.x, _wgslsmith_mod_vec2_u32(func_3(), _wgslsmith_mult_vec2_u32(u_input.b, u_input.b)) | ~(~vec2<u32>(u_input.b.x, u_input.b.x)));
    let var_1 = arg_1;
    var var_2 = 1965f;
    var var_3 = select(vec3<bool>(select(true, true, _wgslsmith_f_op_f32(-arg_0.x) != _wgslsmith_f_op_f32(f32(-1f) * -675f)), true, false), !select(select(select(vec3<bool>(var_0.x, false, arg_1.a.x), vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, var_1.a.x)), !vec3<bool>(false, true, var_1.a.x), true), !select(vec3<bool>(var_1.a.x, false, true), vec3<bool>(var_0.x, false, true), vec3<bool>(var_1.a.x, arg_1.a.x, var_0.x)), all(var_0)), vec3<bool>(false | all(!arg_1.a), false, _wgslsmith_f_op_f32(select(var_1.b.x, arg_0.x, var_1.a.x)) < _wgslsmith_f_op_f32(-208f - -370f)));
    var_2 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    return !(all(select(select(vec2<bool>(false, false), arg_1.a, var_1.a.x), select(vec2<bool>(var_1.a.x, true), arg_1.a, false), !var_1.a)) && all(select(vec3<bool>(arg_1.a.x, false, true), select(vec3<bool>(var_1.a.x, true, false), vec3<bool>(var_1.a.x, false, var_0.x), vec3<bool>(var_3.x, true, false)), true)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = !(((u_input.b.x <= _wgslsmith_mod_u32(1u, u_input.b.x)) & true) || false);
    var_1 = any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false))), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(func_2(vec3<f32>(1467f, -1924f, 809f), Struct_1(vec2<bool>(false, true), vec4<f32>(-229f, 943f, 536f, -162f), u_input.b.x)), any(vec4<bool>(false, false, false, true)), true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, arg_0 > arg_0, select(false, true, false), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true)));
    var_1 = func_4(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -20001i, ~arg_1.x), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 10583i, var_0) >> (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u)), ~vec3<i32>(-59028i, u_input.a.x, arg_1.x))), countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0, -1i, 1i), -vec3<i32>(var_0, u_input.a.x, arg_0))), vec3<i32>(2390i, 0i | ~arg_0, (arg_0 ^ 66000i) >> (41885u % 32u))), func_3().x & u_input.b.x, select(~_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.b), select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.b.x, 1u), false)), reverseBits(abs(max(vec2<u32>(5219u, u_input.c), u_input.b))), select(vec2<bool>(true, true), !func_4(vec3<i32>(arg_0, arg_0, arg_0), u_input.b.x, vec2<u32>(1674u, 49796u)), vec2<bool>(true, true)))).x;
    var var_2 = arg_1;
    return Struct_2(select(vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false))), true, true, true), vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), any(vec4<bool>(true, true, true, true)), select(true, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, var_0), -vec3<i32>(31753i, -2147483647i, 1i)) <= arg_0), 1443f);
}

fn func_5(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(func_4(vec3<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x), _wgslsmith_sub_u32(34314u, ~u_input.c), vec2<u32>(max(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 3040u), vec3<u32>(83776u, 1u, 29859u))), u_input.c >> (reverseBits(1u) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(select(615f, -1233f, true)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(select(arg_0.b, arg_0.b, arg_0.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.b, arg_0.b, -992f) - vec4<f32>(arg_0.b, -662f, arg_0.b, 293f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<f32>(-1000f, arg_0.b, 378f, arg_0.b)))))), _wgslsmith_mod_u32(u_input.b.x, u_input.c));
    var_0 = Struct_1(vec2<bool>(var_0.b.x > 1559f, !(!arg_0.a.x)), var_0.b, ~u_input.b.x);
    var var_1 = vec2<bool>(all(vec3<bool>(all(!var_0.a), !var_0.a.x, select(true, u_input.c != 23734u, var_0.b.x <= var_0.b.x))), 53024i >= -(_wgslsmith_add_i32(2147483647i, u_input.a.x) << (u_input.c % 32u)));
    return arg_0.a.wxw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1566f + _wgslsmith_div_f32(1000f, -1284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1510f))), true))))));
    var var_1 = vec3<u32>(~(~0u >> (abs(u_input.c) % 32u)), u_input.c, u_input.c);
    var var_2 = !func_5(func_1(1i, u_input.a));
    var_1 = vec3<u32>(82523u, var_1.x, ~0u);
    var_1 = abs(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, u_input.b.x, 1u) << (vec3<u32>(u_input.b.x, 52339u, 0u) % vec3<u32>(32u)), vec3<u32>(23182u, u_input.c, 0u) & vec3<u32>(0u, 45712u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x | -1i, -2147483647i, 4294967295u, vec2<f32>(-362f, _wgslsmith_f_op_f32(sign(417f))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(-36274i, 2147483647i, u_input.a.x, -2147483647i)), 34381u > u_input.b.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 33251i, -2147483647i), vec4<i32>(-1i, 0i, -2147483647i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -5793i, -3261i))), max(firstLeadingBit(abs(vec4<i32>(4779i, 2147483647i, u_input.a.x, 0i))), _wgslsmith_sub_vec4_i32(vec4<i32>(84362i, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<i32>(15306i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -29274i, 16235i), var_2.x)))));
}

