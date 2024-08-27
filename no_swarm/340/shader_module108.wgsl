struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(-610f, arg_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), true);
    var_0 = Struct_1(330f, var_0.b, !select(!select(false, var_0.c, arg_1.x), var_0.c, (1i > arg_0.x) && (u_input.c.x <= u_input.d.x)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(175f, _wgslsmith_f_op_f32(floor(var_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(640f, var_0.a)) + 1108f) + _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)), arg_2.x)))), all(!select(!arg_1, !arg_1, vec4<bool>(true, arg_1.x, var_0.c, false))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.b, arg_2.x)), _wgslsmith_f_op_f32(-var_0.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f))), all(vec3<bool>(!var_0.c, !any(arg_1), !(!var_0.c))));
    var var_1 = select(any(vec4<bool>(any(select(vec3<bool>(var_0.c, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, false), var_0.c)), var_0.c, !all(arg_1.xww), any(arg_1))), !(!(_wgslsmith_f_op_f32(1502f * 538f) <= _wgslsmith_f_op_f32(-arg_2.x))), true);
    return 2147483647i;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(true, countOneBits(arg_0.x) >= 0i, arg_2.c, abs(_wgslsmith_add_i32(2147483647i, ~2147483647i)) <= _wgslsmith_mod_i32(2147483647i, func_3(vec2<i32>(1i, arg_0.x), !vec4<bool>(true, arg_2.c, arg_2.c, arg_2.c), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b, -128f), vec2<f32>(arg_2.a, -2157f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-635f * arg_2.b) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(-arg_2.a)), -827f, false))));
    var var_2 = vec4<u32>(abs(~51773u), arg_1.x, 1478u, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(~u_input.c.x, ~1u), 10523u, arg_1.x));
    let var_3 = -45831i;
    let var_4 = firstLeadingBit(vec4<u32>(1u, min(4294967295u, 1u) << (_wgslsmith_mod_u32(u_input.a.x, 1u << (u_input.d.x % 32u)) % 32u), _wgslsmith_add_u32(var_2.x, ~0u), ~1u));
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = func_2((_wgslsmith_add_vec4_i32(~vec4<i32>(0i, -2147483647i, 29331i, -14073i), abs(vec4<i32>(-27315i, 0i, -1i, -1i))) << ((_wgslsmith_add_vec4_u32(u_input.e, u_input.e) & vec4<u32>(u_input.e.x, 71168u, 1u, 1u)) % vec4<u32>(32u))) << (~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)) % vec4<u32>(32u)), ~u_input.a.yyy, arg_1);
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, 1000f), _wgslsmith_div_f32(1000f, arg_0.a)), arg_2.x, arg_0.c);
    var_0 = arg_0;
    return _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1i, 1i, 1i)), _wgslsmith_add_vec3_i32(select(_wgslsmith_sub_vec3_i32(~vec3<i32>(-16277i, -8211i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 30277i, -43543i), vec3<i32>(19350i, -6478i, -1i), vec3<i32>(-1i, -29783i, 11977i))), vec3<i32>(1i, _wgslsmith_add_i32(13512i, -16059i), ~(-2147483647i)), !select(vec3<bool>(false, false, false), vec3<bool>(var_0.c, arg_1.c, var_0.c), arg_0.c)), vec3<i32>(reverseBits(firstTrailingBit(1i)), min(min(-1i, -16360i), _wgslsmith_sub_i32(-30227i, 16095i)), ~37350i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.d.x, firstLeadingBit(~(abs(u_input.c.x) & (u_input.a.x & 12530u))), ~39986u);
    let var_1 = Struct_1(_wgslsmith_div_f32(-363f, 461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-981f)) * -150f)))), u_input.e.x <= u_input.d.x);
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(func_1(var_1, Struct_1(-1527f, 331f, true), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a, -861f, var_1.a, 1050f), vec4<f32>(var_1.a, var_1.a, var_1.b, var_1.b)))), _wgslsmith_div_vec3_i32(func_1(Struct_1(var_1.b, var_1.a, var_1.c), var_1, vec4<f32>(-587f, var_1.a, 689f, 1346f)), ~vec3<i32>(9315i, -14536i, 38174i))), vec3<i32>(1i, 1i, 88993i), vec3<i32>(_wgslsmith_mult_i32(-1i << (var_0.x % 32u), 1i), _wgslsmith_sub_i32(~73906i, 0i), 1i)), abs(_wgslsmith_div_vec3_i32(~reverseBits(vec3<i32>(1i, 1i, 69272i)), -vec3<i32>(-35252i, -4860i, 37372i))));
    let var_3 = var_1.b;
    var var_4 = Struct_1(1204f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(539f + _wgslsmith_f_op_f32(round(var_3))), _wgslsmith_f_op_f32(var_3 * _wgslsmith_div_f32(var_1.a, -680f))), true);
    let var_5 = var_1;
    let var_6 = ~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(var_2.x & -93323i, 22678i)), abs(firstTrailingBit(firstTrailingBit(var_2.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1439f, -336f, -1031f) - vec3<f32>(-174f, -1263f, -869f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.a, 663f, var_1.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4.a, 544f, var_3))), false)), !select(vec3<bool>(false, false, false), vec3<bool>(var_5.c, var_4.c, var_5.c), var_4.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b, var_5.b, var_3) + vec3<f32>(-1055f, -1000f, 574f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-779f, -1686f, 373f) - vec3<f32>(var_5.b, var_1.b, var_4.a))))), select(select(select(vec3<bool>(true, var_5.c, false), vec3<bool>(true, var_4.c, var_1.c), true), !vec3<bool>(false, var_5.c, false), u_input.d.x < var_0.x), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, var_1.c), vec3<bool>(var_5.c, true, var_4.c)), vec3<bool>(func_2(vec4<i32>(var_6.x, var_6.x, -8929i, var_2.x), var_0, var_5).c, func_2(vec4<i32>(46852i, var_6.x, 2147483647i, var_2.x), var_0, var_5).c, true)))), min((vec4<i32>(-23473i, 8161i, 10092i, var_6.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(69154u, var_0.x, 37531u, 4294967295u), vec4<u32>(var_0.x, 0u, 0u, var_0.x), vec4<u32>(var_0.x, 19959u, var_0.x, 4294967295u)) % vec4<u32>(32u))) & ~vec4<i32>(var_2.x, 1i, 1i, var_6.x), vec4<i32>(-2147483647i, ~(~(-16288i)), _wgslsmith_clamp_i32(var_2.x, -var_2.x, func_1(Struct_1(449f, 1020f, true), var_5, vec4<f32>(var_3, -1779f, -1298f, 1193f)).x), var_2.x)), abs(var_0));
}

