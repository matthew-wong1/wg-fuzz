struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-116f - -1817f), _wgslsmith_div_f32(684f, 329f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 1253f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(2421f, -224f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-482f, -1319f), vec2<bool>(true, true)))))))));
    var var_1 = !(!vec2<bool>(select(true, true, false), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
    var_1 = !(!vec2<bool>(select(var_1.x, var_1.x, false) && true, false));
    let var_2 = !(!var_1.x);
    return ~arg_2.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_4(66099u, Struct_3(vec4<u32>(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_add_u32(u_input.a, 1u)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.e.x, u_input.b), vec4<u32>(u_input.e.x, u_input.e.x, 41306u, u_input.e.x))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, u_input.d), ~29255u), _wgslsmith_mult_u32(103436u, 33375u)), true & (1u <= abs(u_input.a)), Struct_1(vec4<u32>(func_3(vec3<i32>(u_input.c.x, -16738i, -54534i), vec4<u32>(1129u, 0u, 84986u, u_input.b), vec2<u32>(u_input.e.x, u_input.d)), ~1400u, _wgslsmith_mod_u32(u_input.a, u_input.d), reverseBits(1u)), min(~u_input.e.xz, u_input.e.yy & vec2<u32>(0u, 4294967295u)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), all(vec2<bool>(false, true)))), Struct_2(Struct_1(vec4<u32>(u_input.e.x, u_input.b, u_input.a, u_input.a), ~u_input.e.yz, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), Struct_1(firstLeadingBit(vec4<u32>(u_input.b, 79u, u_input.e.x, 1u)), u_input.e.zx, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true, true)));
    let var_1 = u_input.c.x >> (0u % 32u);
    let var_2 = Struct_3(~(~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_0.a, u_input.b, 0u, 4294967295u)), ~var_0.b.a, abs(var_0.b.a))), false, Struct_1(firstTrailingBit(var_0.b.c.a ^ ~vec4<u32>(4294967295u, 11997u, var_0.b.a.x, u_input.d)), var_0.b.a.zy, select(select(vec2<bool>(false, var_0.b.c.c.x), vec2<bool>(true, true), any(vec4<bool>(false, false, false, var_0.b.c.c.x))), vec2<bool>(true, true), (u_input.c.x ^ -47151i) > (var_1 << (u_input.d % 32u)))), Struct_2(Struct_1(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(84902u, var_0.a, var_0.a, 0u), var_0.b.a)), _wgslsmith_mult_vec2_u32(~var_0.b.c.b, countOneBits(u_input.e.xz)), vec2<bool>(true, true)), var_0.b.c, ~(~var_0.b.d.a.b.x) > _wgslsmith_dot_vec4_u32(~var_0.b.c.a, ~vec4<u32>(56161u, u_input.e.x, 1u, var_0.a)), true));
    var var_3 = var_0;
    var_3 = Struct_4(_wgslsmith_clamp_u32(abs(min(1u, ~var_2.a.x)), abs(~0u), abs(abs(min(var_0.a, 93594u)))), Struct_3(firstTrailingBit(vec4<u32>(1u, var_3.a, u_input.b, 1u >> (var_3.a % 32u))), true, Struct_1(~(~var_0.b.a), abs(~vec2<u32>(var_0.b.a.x, var_0.a)), var_2.d.b.c), Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(var_2.c.a, var_3.b.a), var_0.b.d.a.b, vec2<bool>(true, false)), Struct_1(vec4<u32>(var_2.c.a.x, var_0.b.d.b.a.x, 0u, var_2.c.b.x), vec2<u32>(0u, 1u), select(vec2<bool>(var_0.b.c.c.x, var_3.b.b), vec2<bool>(var_3.b.c.c.x, var_3.b.d.c), vec2<bool>(false, var_2.d.b.c.x))), -u_input.c.x == -1i, var_3.b.b)));
    return _wgslsmith_mult_u32(min(~abs(~31163u), _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(select(87760u, var_0.b.c.b.x, false), var_2.a.x), var_2.a.x)), ~u_input.b | _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~var_2.c.b, firstTrailingBit(var_3.b.d.a.b)), 4294967295u));
}

fn func_1() -> vec3<bool> {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.a, 104486u), u_input.e.x);
    var var_1 = var_0.x << (abs(4294967295u) % 32u);
    let var_2 = Struct_4(func_2(), Struct_3(vec4<u32>(u_input.b, var_0.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.e.xy), var_0.x), true, Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.e.x, u_input.b, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.e.x), vec4<u32>(1u, var_0.x, 0u, u_input.e.x)), u_input.e.xz, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_2(Struct_1(~vec4<u32>(43117u, 1u, var_0.x, 79389u), reverseBits(vec2<u32>(1u, u_input.d)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_1(~vec4<u32>(var_0.x, 4832u, var_0.x, var_0.x), firstTrailingBit(u_input.e.xz), vec2<bool>(true, true)), false, !all(vec4<bool>(false, true, true, false)))));
    var var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.c, firstTrailingBit(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec3_i32(u_input.c, ~u_input.c, ~u_input.c));
    var var_4 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.c, u_input.c), vec3<i32>(u_input.c.x, firstTrailingBit(11280i), -21422i));
    return select(select(select(select(select(vec3<bool>(false, var_2.b.c.c.x, var_2.b.d.a.c.x), vec3<bool>(false, var_2.b.d.c, var_2.b.c.c.x), vec3<bool>(var_2.b.c.c.x, false, false)), select(vec3<bool>(true, var_2.b.d.d, var_2.b.b), vec3<bool>(true, var_2.b.c.c.x, var_2.b.b), vec3<bool>(false, var_2.b.d.b.c.x, var_2.b.b)), select(true, true, true)), select(select(vec3<bool>(var_2.b.c.c.x, false, var_2.b.c.c.x), vec3<bool>(true, var_2.b.d.c, var_2.b.d.c), vec3<bool>(false, var_2.b.b, false)), select(vec3<bool>(var_2.b.c.c.x, var_2.b.b, false), vec3<bool>(var_2.b.c.c.x, var_2.b.d.d, false), vec3<bool>(var_2.b.b, var_2.b.b, true)), true), any(select(vec4<bool>(false, false, var_2.b.c.c.x, false), vec4<bool>(var_2.b.d.b.c.x, false, var_2.b.b, var_2.b.d.b.c.x), vec4<bool>(false, var_2.b.c.c.x, false, true)))), !select(!vec3<bool>(true, var_2.b.b, var_2.b.c.c.x), select(vec3<bool>(var_2.b.c.c.x, var_2.b.d.c, true), vec3<bool>(true, var_2.b.b, var_2.b.b), vec3<bool>(true, false, var_2.b.b)), false), var_2.b.b), vec3<bool>(var_3.x <= u_input.c.x, var_2.b.b, var_2.b.d.d), var_2.b.d.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec3<bool>(all(vec3<bool>(false, true, false)), false, true), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), any(vec3<bool>(false, true, false))), true), !vec3<bool>(false && any(vec4<bool>(true, false, true, true)), true, false), !(!(!func_1())));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.e.x, 1u, 4294967295u), vec4<u32>(u_input.d, 49914u, u_input.d, 22678u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.e.x, u_input.e.x, u_input.a), vec4<u32>(0u, 4294967295u, u_input.b, u_input.b)), vec4<bool>(false, false, var_0.x, true)), ~(vec4<u32>(u_input.d, 0u, 4294967295u, u_input.a) | vec4<u32>(35726u, u_input.b, 1u, u_input.b))) >> ((~(vec4<u32>(1u, 43213u, 1u, 27631u) & vec4<u32>(u_input.d, 0u, u_input.b, 7244u)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(3415u, 1u, u_input.e.x, 1u), vec4<u32>(5664u, u_input.d, 2305u, 42209u)) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.e.yy, func_1().zz);
    var_1 = Struct_1(~vec4<u32>(36471u, _wgslsmith_dot_vec3_u32(~u_input.e, ~var_1.a.xzw), ~min(var_1.b.x, u_input.a), _wgslsmith_add_u32(_wgslsmith_div_u32(17834u, u_input.e.x), abs(u_input.d))), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, _wgslsmith_sub_u32(196244u, 15054u)), var_1.a.wz)), vec2<bool>(true, select(any(var_0) & true, var_1.c.x, func_1().x)));
    var_1 = Struct_1(reverseBits(_wgslsmith_mult_vec4_u32(abs(var_1.a), var_1.a) & vec4<u32>(func_3(vec3<i32>(-15751i, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 1u, u_input.a, 1u), vec2<u32>(var_1.b.x, u_input.d)), var_1.a.x & u_input.d, 4294967295u, u_input.a)), vec2<u32>(10273u, _wgslsmith_add_u32(~firstLeadingBit(54175u), firstLeadingBit(123817u))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_2 = _wgslsmith_sub_vec2_u32(var_1.b & firstLeadingBit(var_1.b), ~select(vec2<u32>(27485u, 1u), u_input.e.zx, select(var_1.c.x, var_0.x, var_1.c.x))) >> (u_input.e.zz % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_i32(41980i, u_input.c.x)), firstTrailingBit(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f), 308f) - -127f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-533f, -446f), vec2<f32>(2051f, 399f), vec2<bool>(var_0.x, true))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -1471f))))))));
}

