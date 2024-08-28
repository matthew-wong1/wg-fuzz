struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec3<i32>(-1i) * -arg_2.a.xzz;
    global0 = array<vec2<bool>, 31>();
    let var_1 = Struct_2(~arg_2.a);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f)) + -633f)), 1f));
    let var_3 = Struct_1(!(_wgslsmith_mult_u32(38547u | u_input.b.x, 1u) <= ~(4294967295u | u_input.c)), -2147483647i);
    return Struct_1(true, arg_2.a.x);
}

fn func_1() -> f32 {
    var var_0 = func_2(vec2<bool>(false, any(!global0[_wgslsmith_index_u32(69150u, 31u)]) | true), true && any(vec2<bool>(true, true)), Struct_2(_wgslsmith_div_vec4_i32(select(-vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -44933i, 0i, 17879i), vec4<i32>(-1166i, u_input.d, -9944i, u_input.a)), true), -(~vec4<i32>(2147483647i, u_input.d, 2147483647i, -32827i)))));
    var_0 = Struct_1(false, abs(var_0.b));
    var var_1 = Struct_2(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, -23029i), -u_input.d, abs(30767i), 817i), (vec4<i32>(0i, -2147483647i, var_0.b, 4741i) >> (vec4<u32>(1u, 16984u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) >> (~vec4<u32>(36835u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)))));
    let var_2 = Struct_2(-firstTrailingBit(vec4<i32>(min(var_1.a.x, u_input.a), _wgslsmith_div_i32(u_input.d, 1i), -1i << (u_input.b.x % 32u), -3464i)));
    var var_3 = !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.b.x), u_input.b.x), 4294967295u & u_input.b.x)), 31u)];
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(-541f, 810f)) + -1647f)), var_0.a || false));
}

fn func_3() -> bool {
    global0 = array<vec2<bool>, 31>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f) * -1030f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1913f, 1406f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) + _wgslsmith_f_op_f32(min(252f, -1161f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(round(-627f))), -190f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f) - _wgslsmith_f_op_f32(f32(-1f) * -437f)), 253f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(f32(-1f) * -213f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(446f, -332f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(-931f)), 513f, -1000f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(367f, 722f, false)))))));
    var var_2 = Struct_2(select(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 496i, 1i, u_input.d), vec4<i32>(u_input.a, -2147483647i, -1i, u_input.d))), vec4<i32>(~u_input.a, -45131i, _wgslsmith_mod_i32(-u_input.a, _wgslsmith_clamp_i32(u_input.d, u_input.a, -30370i)), u_input.d), vec4<bool>(!(u_input.b.x < 0u), true, true, any(vec2<bool>(false, true)) && true)));
    var var_3 = vec2<f32>(-737f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    return !all(vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 31>();
    var var_0 = vec4<f32>(-1069f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(874f, 357f)) - _wgslsmith_f_op_f32(f32(-1f) * -1279f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(2065f, 885f)))), -685f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1132f) - _wgslsmith_f_op_f32(815f - -1990f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))), 1f);
    global0 = array<vec2<bool>, 31>();
    var var_1 = var_0.x;
    var var_2 = func_2(vec2<bool>(func_3(), false), any(global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~36255u, 13121u), 1u), 31u)]), Struct_2(abs(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.d, u_input.a, u_input.a), -vec4<i32>(-11484i, 1i, 2147483647i, -18091i)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-703f, 609f))))), _wgslsmith_f_op_f32(round(-551f)), -1609f, _wgslsmith_f_op_f32(func_1()));
    var var_3 = abs(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~min(firstTrailingBit(vec4<u32>(0u, u_input.c, 1u, u_input.c)), ~vec4<u32>(u_input.c, u_input.b.x, 4294967295u, 4294967295u)) & ~vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c), ~u_input.c, ~0u, countOneBits(u_input.b.x)), var_0.yx, var_0.x, countOneBits(1i));
}

