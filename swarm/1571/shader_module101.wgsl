struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<vec4<f32>, 13>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<f32> {
    let var_0 = vec2<f32>(-992f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)));
    var var_1 = (5748i & max(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a, arg_0.a), vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(40395u, 4294967295u) % vec2<u32>(32u))), firstLeadingBit(arg_0.a.x >> (u_input.a % 32u)))) | arg_0.e.d;
    var var_2 = arg_0.b.a.xx;
    var var_3 = !select(vec3<bool>(var_2.x, false && var_2.x, arg_0.b.a.x), select(select(!vec3<bool>(arg_0.b.c, arg_0.b.c, var_2.x), select(vec3<bool>(true, false, false), vec3<bool>(arg_0.e.c, true, true), vec3<bool>(var_2.x, var_2.x, arg_0.b.a.x)), vec3<bool>(false, var_2.x, false)), select(select(vec3<bool>(false, false, arg_0.e.c), vec3<bool>(true, true, arg_0.b.a.x), true), !vec3<bool>(arg_0.e.c, var_2.x, var_2.x), arg_0.e.a), select(vec3<bool>(arg_0.d.x, var_2.x, false), !vec3<bool>(false, var_2.x, arg_0.d.x), var_2.x)), false);
    var var_4 = Struct_2(~vec2<i32>(61503i, -min(36165i, -22215i)), arg_0.e, -838f, var_3.zx, arg_0.e);
    return global0[_wgslsmith_index_u32(u_input.a, 13u)];
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.c.x, 13u)] - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(-vec2<i32>(-22580i, -1i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(464f, 608f, 1205f), true, -6724i), 1301f, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(127f, -1299f, -645f), true, u_input.b)), u_input.c.yx))), _wgslsmith_f_op_f32(-935f + _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<i32>(u_input.b, -31088i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1000f, -827f, 303f), false, -54793i), 183f, vec2<bool>(true, false), Struct_1(vec3<bool>(false, true, false), vec3<f32>(740f, -778f, -644f), false, u_input.b)), vec2<u32>(u_input.a ^ 0u, 1u))).x), 1u, Struct_2(vec2<i32>(-1i) * -(~vec2<i32>(u_input.b, -1i)), Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(step(340f, -194f)), _wgslsmith_f_op_f32(-1016f - 1367f)), !select(false, true, false), max(13189i, u_input.b) >> (_wgslsmith_mod_u32(0u, u_input.a) % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + -2195f))), vec2<bool>(true, true), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), _wgslsmith_div_vec3_f32(vec3<f32>(-283f, 408f, -1979f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1298f, 1238f, 431f), vec3<f32>(273f, -583f, 107f)))), all(vec4<bool>(true, true, true, true)), u_input.b)), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)) && any(vec2<bool>(any(vec4<bool>(true, true, false, true)), false)));
    var var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)) + _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 13u)])), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~46041u, var_0.c), 13u)]), var_0.d.e.b.x, _wgslsmith_mod_u32(20946u, ~(~u_input.a)), Struct_2(vec2<i32>(-17123i, _wgslsmith_clamp_i32(u_input.b, -63950i, firstLeadingBit(u_input.b))), Struct_1(select(var_0.d.e.a, select(vec3<bool>(var_0.d.b.a.x, true, false), var_0.d.e.a, vec3<bool>(var_0.e, var_0.e, var_0.e)), var_0.e && var_0.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(-233f, -563f, var_0.b) + var_0.d.b.b), true, _wgslsmith_sub_i32(-29919i, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<i32>(u_input.b, -1i), var_0.d.b, -1027f, vec2<bool>(false, var_0.d.e.a.x), Struct_1(var_0.d.e.a, var_0.a.wyx, false, var_0.d.a.x)), u_input.c.yw)).x)) + 873f), var_0.d.b.a.zz, Struct_1(vec3<bool>(!var_0.e, true, var_0.d.b.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.d.c, 590f, -1458f), var_0.a.wxx)) * _wgslsmith_f_op_vec3_f32(var_0.d.b.b * vec3<f32>(745f, 954f, var_0.d.c))), var_0.e, i32(-1i) * -9764i)), !var_0.e);
    let var_2 = select(vec3<i32>(~var_1.d.b.d, _wgslsmith_mod_i32(var_1.d.a.x, 64419i), ~0i), ~(-(~vec3<i32>(var_0.d.e.d, var_1.d.e.d, 0i))), var_0.d.b.a);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a + var_1.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, var_1.b, var_0.b, var_1.d.c) - var_1.a) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - vec4<f32>(var_1.b, var_1.b, var_1.b, 1316f)))), _wgslsmith_f_op_f32(var_1.d.c + var_1.d.c), reverseBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(min(var_1.c, var_0.c), u_input.c.x), _wgslsmith_div_u32(4294967295u, u_input.c.x ^ 1704u))), var_0.d, (var_0.d.e.c && var_0.e) | var_0.e);
    var_3 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1828f, -778f, var_3.a.x, -363f))), _wgslsmith_f_op_vec4_f32(-var_0.a), vec4<bool>(true, false, false, false))) + vec4<f32>(_wgslsmith_f_op_f32(-850f - -693f), -1369f, _wgslsmith_f_op_f32(step(var_3.d.b.b.x, 117f)), var_0.d.e.b.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -468f, var_3.a.x, -1407f)))))), 1000f, countOneBits(_wgslsmith_add_u32(899u, var_0.c)), var_1.d, var_1.d.b.a.x);
    return !select(select(select(!vec4<bool>(false, var_1.e, false, true), select(vec4<bool>(true, var_3.d.b.c, var_3.d.d.x, var_3.e), vec4<bool>(var_3.e, false, true, var_0.d.e.a.x), false), true || var_0.d.e.a.x), select(vec4<bool>(false, var_0.d.e.a.x, var_1.d.d.x, var_0.e), select(vec4<bool>(false, true, var_1.d.d.x, var_1.d.d.x), vec4<bool>(var_0.e, false, true, var_1.d.d.x), vec4<bool>(var_0.d.e.c, true, var_1.d.d.x, var_3.d.d.x)), -26235i >= var_3.d.e.d), !all(vec4<bool>(false, var_3.e, var_1.e, var_0.e))), select(vec4<bool>(true, any(var_0.d.e.a.yy), false, select(var_0.d.d.x, var_0.e, false)), !select(vec4<bool>(var_1.e, true, true, true), vec4<bool>(var_1.e, var_0.e, true, var_0.e), false), var_0.d.b.a.x), select(!any(vec3<bool>(var_1.d.e.a.x, var_0.e, false)), var_3.d.d.x, true));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(542f + _wgslsmith_f_op_f32(-1966f - -2068f)), -516f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1746f * -750f))), -1280f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f), -1219f), -493f, -333f)));
    let var_1 = Struct_1(!(!vec3<bool>(any(vec2<bool>(true, false)), true, true)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 1036f, 1253f), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_div_f32(957f, -1789f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0))), all(select(vec4<bool>(true, true, true, true), !func_2(), vec4<bool>(true, true, true, true))), 0i);
    var var_2 = !vec4<bool>(true, true, var_1.c, false);
    var var_3 = select(vec3<bool>(var_2.x, true, false), var_2.wzx, all(select(var_2.ww, select(var_2.ww, vec2<bool>(var_1.a.x, var_1.a.x), var_2.yz), select(vec2<bool>(true, true), !var_2.ww, u_input.c.x == 41403u))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<i32>(u_input.b, 22922i), Struct_1(vec3<bool>(true, var_1.a.x, true), var_0, var_2.x, 11028i), _wgslsmith_div_f32(391f, -324f), func_2().xz, Struct_1(vec3<bool>(var_1.c, var_2.x, false), var_1.b, var_2.x, u_input.b)), ~(~u_input.c.xx))).x), 1484f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2215f + 1412f))))));
    return Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.d, _wgslsmith_mod_i32(-var_1.d, -63314i)), firstTrailingBit(abs(vec2<i32>(var_1.d, var_1.d) << (u_input.c.zz % vec2<u32>(32u))))), Struct_1(!var_2.yyx, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-var_0.x), true)), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))), var_3.x == !all(vec3<bool>(false, false, var_3.x)), min(-40182i, _wgslsmith_add_i32(var_1.d, var_1.d) & var_1.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-855f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x)))), _wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(step(var_4.x, _wgslsmith_f_op_f32(-var_1.b.x))))), select(vec2<bool>(true, var_3.x), !select(!var_1.a.xx, var_3.xy, !var_3.xz), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -834f) > var_0.x, any(vec4<bool>(false, var_1.a.x, false, var_3.x)))), Struct_1(var_1.a, var_0, var_1.d > min(0i, -21579i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_1.d, 1i)), -vec2<i32>(u_input.b, 65283i) >> (u_input.c.wy % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(1i, ~u_input.b, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_1 = ~(~1u);
    let var_2 = func_1();
    global0 = array<vec4<f32>, 13>();
    var var_3 = u_input.b;
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(~u_input.c.x, 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -143f) - var_2.b.b.x), 991u, func_1(), true || select(!(!var_2.b.c), true, true));
    var_4 = Struct_3(var_4.a, -421f, ~u_input.c.x, func_1(), true);
    let var_5 = vec2<i32>(-3223i, -abs(select(var_4.d.e.d, 570i, true))) >> (vec2<u32>(33597u, reverseBits(u_input.c.x)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_4.c & ~_wgslsmith_add_u32(u_input.a, var_4.c)), 1u);
}

