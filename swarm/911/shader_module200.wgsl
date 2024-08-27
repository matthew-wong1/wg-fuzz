struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b & u_input.b, u_input.b) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(-abs(vec2<i32>(u_input.b, 2147483647i)), max(~vec2<i32>(u_input.b, -1i), firstLeadingBit(vec2<i32>(u_input.b, u_input.b))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2238f, arg_0))), _wgslsmith_f_op_f32(abs(1863f)), arg_0, arg_0), select(select(select(select(vec2<bool>(arg_1, true), vec2<bool>(false, false), arg_1), vec2<bool>(true, arg_1), true), vec2<bool>(arg_1, false), all(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(arg_1, false), select(vec2<bool>(true, false), vec2<bool>(arg_1, true), vec2<bool>(arg_1, false)), vec2<bool>(arg_1, false)), arg_1)), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3404f - -367f))) + _wgslsmith_f_op_f32(sign(arg_0))));
    var var_1 = arg_1;
    var var_2 = select(select(select(select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(var_0.c.x, true, false, false), select(vec4<bool>(true, var_0.c.x, arg_1, false), vec4<bool>(var_0.c.x, var_0.c.x, arg_1, var_0.c.x), arg_1)), vec4<bool>(true, arg_1, false, any(vec2<bool>(arg_1, false))), !var_0.c.x), vec4<bool>(!select(arg_1, arg_1, var_0.c.x), true, any(select(vec3<bool>(arg_1, var_0.c.x, arg_1), vec3<bool>(var_0.c.x, var_0.c.x, arg_1), var_0.c.x)), arg_1), vec4<bool>(var_0.c.x, !any(vec2<bool>(arg_1, var_0.c.x)), all(select(vec4<bool>(var_0.c.x, arg_1, false, false), vec4<bool>(true, var_0.c.x, false, var_0.c.x), vec4<bool>(false, false, arg_1, false))), any(vec4<bool>(arg_1, true, true, false)))), vec4<bool>(any(select(select(vec3<bool>(true, var_0.c.x, var_0.c.x), vec3<bool>(true, true, false), vec3<bool>(var_0.c.x, true, true)), vec3<bool>(arg_1, true, false), true)), all(vec4<bool>(false, all(vec4<bool>(true, false, var_0.c.x, arg_1)), true, true)), all(vec2<bool>(!arg_1, arg_1)), _wgslsmith_div_i32(min(38048i, 19693i), -2147483647i) <= -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(-27466i, var_0.a))), vec4<bool>(var_0.c.x, any(select(!vec4<bool>(arg_1, false, false, false), vec4<bool>(false, arg_1, false, var_0.c.x), arg_1)), select(any(select(vec4<bool>(false, var_0.c.x, arg_1, var_0.c.x), vec4<bool>(var_0.c.x, true, true, false), false)), all(var_0.c), true), !var_0.c.x));
    return 2147483647i;
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(185f))), arg_0.x);
    var var_1 = Struct_1(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * arg_0.x), 482f), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -2237f, var_0.x, 1434f))) - _wgslsmith_f_op_vec4_f32(arg_0 + arg_0))))), !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), !(u_input.a > 0u)), reverseBits(firstTrailingBit(~4294967295u)) >> (34889u % 32u), -242f);
    let var_2 = Struct_2(min(~(~(~21478u)), 4294967295u), var_1.d << (19194u % 32u), Struct_1(reverseBits(_wgslsmith_clamp_i32(-1i << (u_input.a % 32u), 1i, _wgslsmith_div_i32(-71548i, u_input.b))), _wgslsmith_f_op_vec4_f32(trunc(var_1.b)), vec2<bool>(~82539u != _wgslsmith_sub_u32(var_1.d, u_input.a), !var_1.c.x), var_1.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f) + _wgslsmith_f_op_f32(arg_0.x + -144f))))), Struct_1(33726i, arg_0, vec2<bool>(var_1.c.x, var_1.c.x), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(558f, -1295f)))), Struct_1(_wgslsmith_sub_i32(-1i, u_input.b), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1674f), 160f, -351f), select(var_1.c, !(!vec2<bool>(var_1.c.x, false)), var_1.c.x), u_input.a << (82837u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f) + _wgslsmith_f_op_f32(min(-1241f, _wgslsmith_f_op_f32(-613f - var_0.x))))));
    let var_3 = _wgslsmith_add_vec3_i32(min(vec3<i32>(~1i, 2147483647i, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_2.c.a, 19499i) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)), vec3<i32>(var_1.a, var_1.a, -2147483647i)) >> (select(~vec3<u32>(u_input.a, 0u, 0u), abs(vec3<u32>(3461u, var_2.b, var_2.b)), 5816i <= u_input.b) % vec3<u32>(32u))), vec3<i32>(-_wgslsmith_div_i32(2362i, 2147483647i), max(i32(-1i) * -4366i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_1.a, -2147483647i, u_input.b)), -vec3<i32>(20429i, var_1.a, u_input.b))), -17809i));
    var var_4 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(1385f - _wgslsmith_f_op_f32(847f * var_0.x)), arg_0.x, 523f);
    return var_2.e.c;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(3243f, 1518f, 208f, 263f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(590f, 706f, 555f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, -2259f, 1824f, 250f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-202f, -610f, 527f, 1845f))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-690f)))), _wgslsmith_f_op_f32(step(771f, _wgslsmith_f_op_f32(max(795f, _wgslsmith_div_f32(-1000f, -144f))))))), -374f);
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(606f + var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 737f)))))), !select(select(!vec2<bool>(true, var_0.x), func_2(vec4<f32>(369f, var_1.x, 110f, var_1.x)), var_0.x), vec2<bool>(true || var_0.x, false), vec2<bool>(all(vec4<bool>(true, false, true, true)), true)), ~u_input.a, -431f);
    var var_3 = all(vec2<bool>(true, true));
    let var_4 = var_2.c.x;
    return Struct_1(_wgslsmith_div_i32(-2147483647i, -(~u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1026f, var_2.e, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(var_2.b * var_2.b))))), var_2.c, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.d), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_2.d), vec2<u32>(var_2.d, var_2.d))), ~(~12053u)), abs(max(vec2<u32>(6706u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(47527u, u_input.a))))), 1535f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(u_input.b, ~reverseBits(u_input.b)) | select(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 48958i)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, u_input.b))), vec2<i32>(-u_input.b, i32(-1i) * -16076i)), vec2<i32>(i32(-1i) * -1425i, u_input.b & -u_input.b), vec2<bool>(false, any(vec2<bool>(false, true))));
    var var_1 = ((_wgslsmith_f_op_f32(724f * _wgslsmith_f_op_f32(f32(-1f) * -928f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1678f) * _wgslsmith_f_op_f32(floor(-933f)))) | (1i == _wgslsmith_dot_vec2_i32(-var_0, vec2<i32>(-48834i, var_0.x)))) & true;
    let var_2 = func_1();
    var var_3 = 132f;
    var var_4 = Struct_1(0i, vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x), var_2.e, var_2.b.x, -1883f), var_2.c, 4808u, func_1().b.x);
    var var_5 = Struct_1(48911i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(ceil(-1427f))), var_2.e, var_4.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.x))))), vec2<bool>(func_2(vec4<f32>(_wgslsmith_div_f32(728f, var_2.e), _wgslsmith_f_op_f32(-var_2.b.x), -1750f, _wgslsmith_f_op_f32(min(210f, 1539f)))).x, var_2.c.x), _wgslsmith_mult_u32(reverseBits(~abs(69717u)), var_2.d >> ((u_input.a | 1u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_2.e)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-164f, var_4.e)))));
    var var_6 = var_4.e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(89675u)), reverseBits(-2147483647i));
}

