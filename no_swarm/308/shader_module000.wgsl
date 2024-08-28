struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_3;
    let var_1 = arg_3.b.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(533f, 2249f, -1589f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(659f + _wgslsmith_f_op_f32(982f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 284f))))));
    let var_3 = Struct_2(Struct_1(firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_1.x, 1u), vec3<u32>(var_1, 4294967295u, arg_3.a.a.x))))), var_0.b);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-825f, -104f, var_2.x)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -418f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 157f, var_2.x))))))), vec3<f32>(-284f, -972f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) + -1739f)));
    return !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, false, false)), true)), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, 363f > var_2.x, true), true), any(vec4<bool>(true, true, true, true)));
}

fn func_2() -> vec4<i32> {
    global0 = array<vec3<i32>, 11>();
    var var_0 = Struct_1(firstLeadingBit(select(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(18343u, u_input.a, u_input.d)), ~vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<bool>(true, true, true)), ~(~vec3<u32>(u_input.d, u_input.d, u_input.d)), !func_3(u_input.a, vec4<u32>(14175u, u_input.a, u_input.d, u_input.d), Struct_1(vec3<u32>(49117u, 50180u, 0u)), Struct_2(Struct_1(vec3<u32>(u_input.d, u_input.a, 4294967295u)), Struct_1(vec3<u32>(76164u, 1u, 1635u)))))));
    var var_1 = u_input.b.yx;
    var var_2 = false;
    let var_3 = Struct_2(Struct_1(select(vec3<u32>(var_0.a.x, var_0.a.x, 34538u), vec3<u32>(4294967295u, 132728u, 482u), vec3<bool>(true, true, true)) & _wgslsmith_add_vec3_u32(vec3<u32>(0u, 20675u, 50225u), var_0.a)), Struct_1(var_0.a));
    return -vec4<i32>(2147483647i, ~u_input.c, 48013i, ~(-1i & u_input.b.x) | ~countOneBits(u_input.b.x));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2();
    let var_1 = firstLeadingBit(vec3<i32>(var_0.x, ~abs(u_input.b.x), min(~u_input.c, _wgslsmith_add_i32(~var_0.x, u_input.c))));
    var var_2 = Struct_1(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, arg_0, 42080u), select(vec3<u32>(arg_0, 4294967295u, 0u), vec3<u32>(4761u, 1u, 13748u), vec3<bool>(false, true, false)), ~vec3<u32>(109157u, u_input.a, 40359u)), vec3<u32>(0u, _wgslsmith_clamp_u32(arg_0, u_input.a, 1u), 1u)) ^ vec3<u32>(max(abs(22914u), arg_0), arg_0 ^ select(4294967295u, u_input.a, false), 23232u));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f))));
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) - _wgslsmith_f_op_f32(exp2(var_3))), _wgslsmith_f_op_f32(abs(1194f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3 - var_3), -121f)))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 11>();
    var var_0 = _wgslsmith_dot_vec2_i32(abs(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(29523i, u_input.b.x)) >> (select(vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.a, 121791u), false) % vec2<u32>(32u)))), (vec2<i32>(-1i) * -u_input.b.zz) >> (abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(24445u, u_input.d))) % vec2<u32>(32u)));
    var var_1 = vec2<u32>(1u, ~u_input.a);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -266f, 740f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1395f + -1534f), _wgslsmith_f_op_f32(func_1(var_1.x))) - _wgslsmith_f_op_f32(f32(-1f) * -691f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(168f, 1015f, 216f, -1539f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-648f, -1339f), _wgslsmith_f_op_f32(264f - -471f), 298f, _wgslsmith_f_op_f32(f32(-1f) * -563f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2316f, 862f, -518f, 857f))), false)));
    var_1 = vec2<u32>(countOneBits(80573u), abs(var_1.x));
    var var_3 = _wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(-(vec3<i32>(u_input.c, u_input.c, 32323i) | u_input.b), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, u_input.c), global0[_wgslsmith_index_u32(0u, 11u)])), select(firstLeadingBit(vec3<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-31653i, u_input.b.x, 2147483647i)), u_input.b.x)), ~u_input.b, vec3<bool>(true, all(vec2<bool>(true, true)), true)));
    var var_4 = Struct_1(_wgslsmith_add_vec3_u32(abs(vec3<u32>(max(u_input.d, var_1.x), var_1.x & var_1.x, ~var_1.x)), ~(~vec3<u32>(4294967295u, u_input.d, 0u)) & ~abs(vec3<u32>(82612u, u_input.a, var_1.x))));
    var var_5 = ~(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(u_input.a, u_input.a, 1u, var_1.x)), vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.x, 68504u, 34821u), vec4<u32>(var_1.x, var_4.a.x, 4186u, var_4.a.x)), var_4.a.x & var_1.x, var_4.a.x), ~select(vec4<u32>(var_1.x, 59854u, var_1.x, u_input.d), vec4<u32>(4294967295u, 40844u, var_4.a.x, u_input.d), true)) ^ vec4<u32>(var_4.a.x, ~(~var_1.x), _wgslsmith_add_u32(var_1.x, 4294967295u), ~max(0u, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)) + vec2<f32>(-1291f, var_2.x))))), vec3<u32>(var_5.x, min(var_4.a.x, 38668u), _wgslsmith_mult_u32(1u, ~4294967295u)), vec4<i32>(_wgslsmith_mult_i32(var_3.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, -2147483647i, 2147483647i)), select(global0[_wgslsmith_index_u32(var_1.x, 11u)], u_input.b, vec3<bool>(true, true, false)))), ~(-max(u_input.c, -8696i)), -1i, 1i));
}

