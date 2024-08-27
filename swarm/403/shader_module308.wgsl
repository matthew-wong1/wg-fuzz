struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(abs(~reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(48102i, u_input.a, u_input.a, 0i), vec4<i32>(7990i, u_input.a, u_input.a, u_input.a)))), max(countOneBits(select(-vec4<i32>(u_input.c, 1i, -1i, u_input.a), vec4<i32>(u_input.a, 2147483647i, 63108i, u_input.a), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(u_input.c, 29567i), -u_input.c, -2147483647i), ~vec4<i32>(u_input.c, u_input.a, -22679i, u_input.a))), vec4<i32>(-54576i, abs(2147483647i), ~2147483647i, -39252i));
    let var_1 = Struct_2(26509u, all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-993f - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f))), 2600f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x))) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), select(false, true, false))), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), true), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), arg_0.x);
    let var_2 = any(!(!select(!vec4<bool>(var_1.d.x, true, var_1.d.x, true), !vec4<bool>(true, var_1.b, var_1.b, true), !vec4<bool>(false, false, var_1.d.x, true))));
    var_0 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(~(var_0.x & -29376i), _wgslsmith_div_i32(-35353i, var_0.x) | 1i, _wgslsmith_add_i32(u_input.c & -16265i, _wgslsmith_mult_i32(var_0.x, u_input.a)), countOneBits(abs(55355i))), vec4<i32>(-1i) * -vec4<i32>(-1i, 5091i, 33676i, 1i)));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(arg_0.x - 503f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -285f) + 1332f), false, _wgslsmith_div_i32(i32(-1i) * -var_0.x, firstTrailingBit(_wgslsmith_div_i32(-17668i, var_0.x))) < _wgslsmith_add_i32(~1i, u_input.a | var_0.x));
    return var_0.x;
}

fn func_2() -> Struct_2 {
    global0 = -_wgslsmith_add_i32(u_input.a, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-7292i, 16319i, -2147483647i, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), func_3(vec3<f32>(673f, 1644f, -1001f))));
    let var_0 = (u_input.c <= reverseBits(u_input.c & (i32(-1i) * -35577i))) | false;
    global0 = 176i;
    var var_1 = Struct_2(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1029f + _wgslsmith_f_op_f32(-406f + -2369f)) - 1409f) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(754f))), _wgslsmith_f_op_f32(-1134f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1283f, _wgslsmith_f_op_f32(min(1167f, -1202f)), _wgslsmith_f_op_f32(377f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2086f))))), !select(!(!vec3<bool>(var_0, var_0, false)), vec3<bool>(true, true, true), !(!vec3<bool>(var_0, var_0, var_0))), -202f);
    let var_2 = 234f;
    return Struct_2(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(37409u, u_input.b.x), (4294967295u >> (firstTrailingBit(13812u) % 32u)) & 1u), !((_wgslsmith_f_op_f32(-var_1.e) <= _wgslsmith_f_op_f32(957f + 1415f)) && true), var_1.c, select(select(select(select(var_1.d, var_1.d, vec3<bool>(var_0, false, var_1.b)), var_1.d, !var_1.d.x), var_1.d, !vec3<bool>(false, var_1.b, false)), var_1.d, select(!vec3<bool>(var_1.b, true, var_1.b), var_1.d, !select(vec3<bool>(false, true, true), vec3<bool>(var_0, var_0, false), var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c.x, var_1.e)) + _wgslsmith_f_op_f32(ceil(-1000f))));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var var_1 = -1i;
    var_0 = func_2();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-2588f, var_0.c.x)), 100f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)));
    var var_3 = ((abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -37707i, -14252i, 0i), vec4<i32>(-3342i, u_input.a, u_input.a, u_input.a))) & -abs(vec4<i32>(u_input.c, u_input.c, -2147483647i, -26334i))) >> (~vec4<u32>(u_input.b.x, ~var_0.a, _wgslsmith_sub_u32(u_input.b.x, var_0.a), 26640u << (u_input.b.x % 32u)) % vec4<u32>(32u))) | (_wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(10941i, -16014i, u_input.c, 6500i), vec4<i32>(-1i, u_input.c, u_input.c, u_input.a)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a)), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), select(vec4<i32>(u_input.a, 9368i, 42322i, 36492i), vec4<i32>(-88872i, u_input.c, u_input.c, u_input.a), var_0.b))) >> (~select(vec4<u32>(var_0.a, u_input.b.x, u_input.b.x, 17458u), ~vec4<u32>(u_input.b.x, 4294967295u, 77529u, 0u), !vec4<bool>(var_0.b, var_0.b, true, false)) % vec4<u32>(32u)));
    return 1032f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 11952i;
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    let var_1 = abs(~select(min(vec3<i32>(u_input.c, u_input.a, u_input.a), vec3<i32>(u_input.c, 4857i, 1i) << (u_input.b % vec3<u32>(32u))), ~(~vec3<i32>(u_input.a, u_input.a, u_input.a)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_2 = Struct_1(true, var_1.x, -1i, select(vec2<bool>(true, true), select(vec2<bool>(true, any(vec4<bool>(false, true, true, false))), vec2<bool>(false, true), true), !func_2().d.zy));
    var_2 = Struct_1(select(false, true, true == (var_0 != 165f)), ~select(var_1.x, abs(u_input.c), ~u_input.b.x <= ~u_input.b.x), u_input.a, var_2.d);
    var_2 = Struct_1(var_2.a, -(~(u_input.a ^ _wgslsmith_div_i32(var_1.x, var_1.x))), ~(-(54025i >> (u_input.b.x % 32u))) & 2147483647i, var_2.d);
    var_2 = Struct_1(true, firstLeadingBit(var_2.b), -1i, select(!var_2.d, !(!(!var_2.d)), select(u_input.b.x == u_input.b.x, 4294967295u > (1u << (u_input.b.x % 32u)), var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yy | _wgslsmith_clamp_vec2_u32(u_input.b.xx, _wgslsmith_add_vec2_u32(u_input.b.yy << (u_input.b.yy % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.b.x)), u_input.b.zx));
}

