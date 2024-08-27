struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global1: array<vec4<f32>, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1422f - 1000f) + _wgslsmith_f_op_f32(floor(1332f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1505f - 126f))) * 479f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1577f, 1612f)))), _wgslsmith_f_op_f32(-1f), true)));
    global0 = array<vec3<bool>, 23>();
    let var_1 = u_input.c.x;
    let var_2 = firstTrailingBit(abs(countOneBits(4294967295u)) & u_input.b);
    var var_3 = abs(-58i);
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(step(1f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -1023f, var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, 1384f, -422f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 222f, var_0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1115f, 784f, var_0.x) + vec3<f32>(-465f, -339f, 271f)))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_4(879f != arg_2.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 61620u, 1u, 0u), arg_3.d.c))), vec2<u32>(22696u << (~arg_3.d.a % 32u), ~24710u)), ~(countOneBits(vec2<i32>(2147483647i, 4862i)) ^ abs(-arg_0.zx)), arg_3.d);
    let var_1 = ~(~arg_3.d.c.zw);
    var_0 = arg_3;
    return 1147f;
}

fn func_2() -> f32 {
    global0 = array<vec3<bool>, 23>();
    let var_0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(max(0u, u_input.b), 0u >> (0u % 32u)), ~0u), u_input.b >> (~u_input.b % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-538f)) + 896f))), ~(~(~vec4<u32>(u_input.b, 1u, 22798u, 1u) >> ((vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)))), 0i);
    global1 = array<vec4<f32>, 9>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(205f, var_0.b))), _wgslsmith_f_op_f32(func_4(select(vec4<i32>(3751i, 1i, u_input.a.x, -47544i), vec4<i32>(-31481i, u_input.a.x, -2147483647i, u_input.c.x), true), max(-vec4<i32>(2147483647i, u_input.a.x, var_0.d, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -36633i, var_0.d, var_0.d), vec4<i32>(var_0.d, 2147483647i, var_0.d, 2147483647i), vec4<i32>(-1i, u_input.c.x, u_input.a.x, 27687i))), _wgslsmith_f_op_vec3_f32(func_3()), Struct_4(false, 13769u, vec2<i32>(u_input.a.x, var_0.d), var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-449f, var_0.b), _wgslsmith_f_op_f32(-var_0.b), true)) + _wgslsmith_div_f32(-1300f, _wgslsmith_f_op_f32(var_0.b - -1519f)))));
    let var_2 = Struct_1(select(vec2<bool>(true, false), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(var_1.x <= var_0.b, all(vec2<bool>(true, true)), 0i >= var_0.d)), vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.b, 23u)]), any(vec4<bool>(true, true, true, true)) | true)), firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(u_input.b, ~106620u), _wgslsmith_add_u32(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.a), vec2<u32>(1u, u_input.b))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 22046u, var_0.c.x, u_input.b), var_0.c), 1u), _wgslsmith_mult_u32(u_input.b, ~u_input.b))), ~4294967295u);
    return var_0.b;
}

fn func_1() -> Struct_4 {
    global0 = array<vec3<bool>, 23>();
    global0 = array<vec3<bool>, 23>();
    global1 = array<vec4<f32>, 9>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1329f, _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1122f), 525f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, -805f)))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(129f + _wgslsmith_f_op_f32(f32(-1f) * -566f)), _wgslsmith_div_f32(-625f, _wgslsmith_f_op_f32(f32(-1f) * -295f))))));
    global0 = array<vec3<bool>, 23>();
    return Struct_4(true, countOneBits(abs(u_input.b) << ((~u_input.b & u_input.b) % 32u)), firstLeadingBit(vec2<i32>(-2147483647i, ~18758i)), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(36840u, u_input.b), vec2<u32>(u_input.b, 1u) ^ vec2<u32>(0u, 17298u)) ^ ~(~16674u), var_0.x, (~vec4<u32>(u_input.b, u_input.b, 2292u, u_input.b) << (vec4<u32>(u_input.b, 107210u, 0u, 1u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, 13158u, u_input.b), vec4<u32>(u_input.b, 122411u, 66921u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 55172u), vec4<u32>(1u, u_input.b, 0u, u_input.b))), ~(~firstTrailingBit(1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = Struct_3(Struct_1(select(!(!vec2<bool>(true, var_0.a)), select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, true), vec2<bool>(var_0.a, true)), vec2<bool>(var_0.a, false)), abs(var_0.d.c), 1u), Struct_1(vec2<bool>(any(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, true, var_0.a), global0[_wgslsmith_index_u32(1u, 23u)])), true == var_0.a), _wgslsmith_clamp_vec4_u32(var_0.d.c, abs(firstLeadingBit(vec4<u32>(var_0.b, 42083u, 4294967295u, 4294967295u))), abs(var_0.d.c)), 15668u), var_0.d);
    let var_2 = Struct_1(!vec2<bool>(true, all(var_1.a.a)), ~(~_wgslsmith_div_vec4_u32(var_0.d.c, ~vec4<u32>(var_1.b.c, var_1.c.c.x, var_1.a.b.x, 4294967295u))), ~4294967295u);
    var var_3 = var_0.d.b;
    var_0 = func_1();
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b));
    var var_4 = Struct_1(select(!vec2<bool>(var_2.a.x, u_input.b <= 4294967295u), select(var_1.b.a, vec2<bool>(all(vec4<bool>(var_1.b.a.x, var_1.a.a.x, true, false)), false), var_0.a), !vec2<bool>(var_0.d.b < 1577f, var_0.a)), vec4<u32>(~(~0u), ~75356u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(74642u, 4294967295u, 117823u, var_1.b.c), var_0.d.c), vec4<u32>(~1u, 17458u, min(var_0.d.c.x, 1u), 36711u)), _wgslsmith_mod_u32(0u | var_1.b.c, firstTrailingBit(_wgslsmith_mult_u32(1791u, 13099u)))), 29745u);
    let var_5 = Struct_1(var_2.a, ~vec4<u32>(1u, u_input.b, _wgslsmith_add_u32(var_1.c.a, 11010u) ^ _wgslsmith_add_u32(1u, 1u), _wgslsmith_add_u32(~var_1.c.c.x, var_2.b.x)), 55716u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.d.b), var_0.c.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, i32(-1i) * -2147483647i), 1i), 0i, max(i32(-1i) * -var_0.d.d, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.d.d, 50898i, var_1.c.d, 2147483647i)), ~vec4<i32>(12036i, var_1.c.d, 1i, var_1.c.d)))));
}

