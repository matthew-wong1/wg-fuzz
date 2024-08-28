struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(19204u, 44459u), vec2<u32>(1u, 29853u), vec2<u32>(1u, 4294967295u), vec2<u32>(10549u, 38995u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(45511u, 59351u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> bool {
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(145f, _wgslsmith_div_f32(1130f, -833f))) + -983f), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) - _wgslsmith_f_op_f32(sign(-635f)))), -1364f));
    var var_2 = ~vec3<u32>(reverseBits(0u), 0u, u_input.d.x);
    return arg_0;
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<u32>, 8>();
    var var_0 = select(vec3<bool>(func_3(select(true, false, true), ~abs(vec4<u32>(87383u, 29744u, u_input.d.x, 0u))), true, true), vec3<bool>(false, true, true), !(!(all(vec2<bool>(true, false)) & true)));
    var_0 = select(!select(!vec3<bool>(var_0.x, true, false), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, true), false), vec3<bool>(false, false, var_0.x), !var_0.x)), select(vec3<bool>(u_input.d.x == 8479u, var_0.x, any(!vec2<bool>(var_0.x, false))), select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), !select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.x, var_0.x), var_0.x), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, true), true), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(false, true, var_0.x)), vec3<bool>(var_0.x, false, false))), vec3<bool>(var_0.x, true && any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), false)), !var_0.x);
    var var_1 = _wgslsmith_mod_i32(~(-_wgslsmith_dot_vec4_i32(~vec4<i32>(47579i, u_input.e, u_input.c, u_input.a), max(vec4<i32>(-2147483647i, 0i, 1i, u_input.a), vec4<i32>(u_input.a, u_input.e, u_input.c, u_input.b)))), min(34162i, u_input.e));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1012f))))) <= -751f;
    return Struct_1(u_input.d.x, -vec4<i32>(i32(-1i) * -5677i, reverseBits(1i), i32(-1i) * -62022i, _wgslsmith_mod_i32(u_input.b, ~(-2147483647i))), !func_3(false, firstTrailingBit(vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> bool {
    let var_0 = Struct_1(func_2().a, vec4<i32>(-countOneBits(~arg_0.e.b.x), -13987i, abs(select(_wgslsmith_div_i32(1i, arg_1.b.b.b.x), u_input.a, arg_1.b.d.c)), abs(firstLeadingBit(1i))), true);
    var var_1 = !select(!vec4<bool>(all(vec3<bool>(false, true, false)), false, true && arg_1.a, arg_3 || arg_1.a), select(select(select(vec4<bool>(arg_0.e.c, arg_0.b.b.c, arg_1.e.c, arg_1.e.c), vec4<bool>(true, true, arg_3, true), arg_0.a), vec4<bool>(var_0.c, arg_3, false, arg_1.e.c), !vec4<bool>(false, true, arg_1.a, arg_0.a)), vec4<bool>(true, true, select(var_0.c, false, arg_0.a), arg_0.e.c), select(select(vec4<bool>(arg_1.e.c, var_0.c, arg_0.e.c, false), vec4<bool>(true, false, arg_1.b.d.c, true), true), vec4<bool>(false, true, true, false), true)), false);
    var var_2 = u_input.d.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c.x)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-var_3), arg_2, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1370f));
    return true;
}

fn func_1() -> vec2<u32> {
    var var_0 = func_4(Struct_4(u_input.d.x > max(~0u, ~u_input.d.x), Struct_2(true, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1256f) + 345f), Struct_1(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.d.x), reverseBits(vec4<i32>(2053i, -24689i, 1i, 12301i)), any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -1385f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1117f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(710f, 307f) + vec2<f32>(-173f, -939f))))), select(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x), vec4<u32>(u_input.d.x, 75991u, 0u, 4294967295u)), ~vec4<u32>(u_input.d.x, 4294967295u, 0u, u_input.d.x)), ~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), true || all(vec4<bool>(true, true, false, false))), func_2()), Struct_4(select(false, u_input.d.x >= ~u_input.d.x, true), Struct_2(any(vec2<bool>(true, true)), Struct_1(1u ^ u_input.d.x, vec4<i32>(u_input.b, u_input.b, u_input.e, 2147483647i), u_input.e > u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f)), func_2(), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1887f, -395f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1618f, -757f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-584f, 215f), vec2<f32>(1770f, 547f)))), false)), u_input.d, Struct_1(_wgslsmith_mult_u32(~u_input.d.x, u_input.d.x), ~(~vec4<i32>(0i, 15055i, 34696i, 43784i)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-306f, _wgslsmith_f_op_f32(trunc(-1297f)))))))), 0u > u_input.d.x);
    var var_1 = countOneBits(19088u << (min(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 2133u), 4294967295u) % 32u)) ^ u_input.d.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-964f + -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-737f + -2793f) + _wgslsmith_f_op_f32(-1282f * -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-582f)), _wgslsmith_f_op_f32(max(-1000f, 599f)))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-411f)))), var_2);
    var var_4 = Struct_2(func_3(~_wgslsmith_mod_u32(u_input.d.x, u_input.d.x) < ~(~41054u), vec4<u32>(23913u, u_input.d.x | _wgslsmith_mod_u32(17119u, u_input.d.x), 37385u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 1u)), u_input.d.x)), Struct_1(~(~41408u), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.c, u_input.b), ~vec4<i32>(-18806i, u_input.e, u_input.c, u_input.e)), func_2().b, vec4<i32>(u_input.e & 39631i, u_input.b, max(-44839i, u_input.a), -53433i)), func_3(func_3(false, vec4<u32>(0u, u_input.d.x, 1u, 0u)), firstLeadingBit(vec4<u32>(6706u, u_input.d.x, 57181u, u_input.d.x))) & !any(vec3<bool>(true, false, false))), 635f, func_2(), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1008f, var_3) * _wgslsmith_f_op_f32(-var_3)))));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_4.d.a, func_2().a), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(true, func_2(), 451f, Struct_1(_wgslsmith_mult_u32(10337u, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(u_input.c), u_input.e, -16198i, ~(-1i)), select(vec4<i32>(7237i, u_input.c, u_input.b, 59937i), vec4<i32>(-14230i, 2147483647i, u_input.c, u_input.e) >> (u_input.d % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), ~(~vec4<i32>(-24147i, u_input.c, 1i, -37005i))), true), _wgslsmith_f_op_f32(min(1105f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1507f, -819f)))))));
    let var_2 = vec4<u32>(~select(22662u, 4760u, (var_1.c > var_1.e) || true), var_1.d.a, func_1().x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d.x, 7720u, u_input.d.x)) & u_input.d.xyy, vec3<u32>(~_wgslsmith_add_u32(21285u, 3946u), ~39438u, 0u)));
    let var_3 = Struct_2(var_1.a, Struct_1(u_input.d.x, _wgslsmith_sub_vec4_i32(firstLeadingBit(countOneBits(var_1.b.b)), vec4<i32>(-61207i, _wgslsmith_div_i32(u_input.e, -65316i), u_input.e, _wgslsmith_mult_i32(u_input.a, 0i))), (var_0.x | 50346u) <= (countOneBits(var_0.x) >> (func_1().x % 32u))), -159f, func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-235f, var_3.c, var_3.e), vec3<f32>(var_3.e, var_1.e, var_1.c), false)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-465f, var_1.e, -650f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1199f, 1773f, var_3.e), vec3<f32>(-1000f, var_3.e, -1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.e), _wgslsmith_f_op_f32(var_3.c - -556f))), _wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.e), _wgslsmith_f_op_f32(abs(var_1.c)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_3.c + var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -279f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, 1083f, 281f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-733f, var_1.e, -2208f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1003f, -465f, var_1.c)), !vec3<bool>(true, var_1.d.c, true)))), vec3<bool>(var_1.b.c, func_3(true, ~u_input.d), !var_3.b.c))));
    var var_5 = func_2();
    let var_6 = var_2.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-var_5.b.x, var_3.d.b.x, select(u_input.b, abs(~(-2147483647i)), true & (var_3.d.b.x <= -2147483647i))), var_0.x, -42419i, var_6.xx, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, var_6.x, 4294967295u, 1u), var_2), vec4<u32>(var_6.x, var_0.x, 1u, 4294967295u)), var_2));
}

