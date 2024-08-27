struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = 1u;
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, u_input.d.x << (u_input.c % 32u), 2147483647i, u_input.e >> (~0u % 32u)), vec4<i32>(min(-u_input.e, abs(u_input.e)), 2147483647i, -23201i, -2147483647i)), vec4<i32>(u_input.e, 0i, u_input.e, -20731i) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 151u, u_input.c, u_input.b.x) | ~vec4<u32>(u_input.c, u_input.c, 0u, u_input.b.x), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.b.x), vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.c, u_input.c)), true)) % vec4<u32>(32u)));
    let var_2 = vec4<bool>(all(vec4<bool>(false, ~u_input.b.x >= u_input.a.x, true, !any(vec4<bool>(false, true, false, false)))), !(!all(vec3<bool>(true, true, true))), false, any(select(vec2<bool>(true, all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(false, false), true), all(vec3<bool>(false, true, true)) | all(vec3<bool>(false, true, false)))));
    var var_3 = true;
    var_0 = 1u;
    return vec3<u32>(u_input.a.x, firstTrailingBit(u_input.c) << (36325u % 32u), 1u);
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(-_wgslsmith_clamp_i32(-arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 33558i), vec2<i32>(u_input.e, 442i)) ^ arg_0, -arg_0), ((reverseBits(vec3<u32>(64175u, 16723u, u_input.a.x)) << (~vec3<u32>(u_input.a.x, 38994u, u_input.b.x) % vec3<u32>(32u))) >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(u_input.a.x, 4908u, 2731u)), vec3<u32>(u_input.a.x, 31769u, u_input.b.x), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)) % vec3<u32>(32u))) >> ((func_3(_wgslsmith_f_op_f32(floor(611f))) << (vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 12424u), u_input.b.x, countOneBits(u_input.c)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, false), any(vec3<bool>(false, false, true)))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) - -2110f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-657f, 1308f))))), vec3<u32>(1u, firstTrailingBit(u_input.c), func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(791f, 599f) - _wgslsmith_f_op_f32(-2582f * -408f))).x), countOneBits(-vec3<i32>(arg_0, 1i, -2147483647i)) >> (vec3<u32>(20985u, u_input.b.x, ~(~4294967295u)) % vec3<u32>(32u)));
    var var_1 = select(vec4<bool>(min(min(17447i, -26862i), _wgslsmith_mod_i32(u_input.d.x, 334i)) != -countOneBits(u_input.d.x), var_0.c.x, true, var_0.c.x), select(select(!vec4<bool>(false, false, var_0.c.x, var_0.c.x), select(!vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), select(vec4<bool>(var_0.c.x, false, true, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, true, false), false), !vec4<bool>(var_0.c.x, true, false, true)), select(select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(false, var_0.c.x, true, var_0.c.x), vec4<bool>(false, true, false, false)), !vec4<bool>(var_0.c.x, true, var_0.c.x, false), var_0.c.x)), select(!select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(false, false, var_0.c.x, var_0.c.x), vec4<bool>(true, var_0.c.x, false, var_0.c.x)), vec4<bool>(true, var_0.c.x, var_0.c.x || false, true), vec4<bool>(var_0.c.x, true, all(vec4<bool>(false, var_0.c.x, false, true)), all(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)))), !vec4<bool>(var_0.c.x, true, all(vec3<bool>(false, true, var_0.c.x)), var_0.c.x)), all(select(!(!vec2<bool>(var_0.c.x, var_0.c.x)), !select(vec2<bool>(false, var_0.c.x), vec2<bool>(var_0.c.x, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, var_0.c.x), vec2<bool>(var_0.c.x, false), var_0.c.yx), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var_1 = select(vec4<bool>(false, true, all(vec4<bool>(true, all(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, false, var_0.c.x, false)), var_0.c.x)), true), !select(vec4<bool>(true, var_0.c.x == true, false, true), !(!vec4<bool>(var_1.x, var_0.c.x, false, false)), vec4<bool>(true, all(vec4<bool>(true, var_1.x, false, var_0.c.x)), !var_0.c.x, var_0.c.x)), false);
    var_1 = vec4<bool>(max(u_input.b.x, u_input.c) <= 0u, true, any(var_1.xxz), var_1.x);
    var_0 = Struct_1(-arg_0, var_0.d, var_0.c, abs(~var_0.b), ~(-_wgslsmith_mult_vec3_i32(var_0.e, var_0.e)));
    return !((4294967295u > ~var_0.d.x) && var_0.c.x) & any(select(!vec4<bool>(var_1.x, var_0.c.x, true, true), vec4<bool>(all(vec3<bool>(true, var_1.x, var_1.x)), var_0.a <= var_0.a, !var_1.x, true), any(vec2<bool>(true, true))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(min(~(min(vec3<u32>(88339u, 119236u, 72912u), vec3<u32>(u_input.a.x, 21330u, 1u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(119705u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b.x, 40543u, u_input.a.x)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, firstLeadingBit(u_input.b)), ~select(39823u, 1u, true), 4294967295u)), Struct_1(-2147483647i, vec3<u32>(63620u, u_input.a.x & ~0u, u_input.b.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), vec3<bool>(all(vec2<bool>(true, false)), false, func_2(13642i))), select(~vec3<u32>(70804u, u_input.b.x, u_input.a.x) & vec3<u32>(u_input.a.x, 0u, 680u), max(~vec3<u32>(u_input.c, 4294967295u, u_input.c), ~vec3<u32>(1u, 4294967295u, 1u)), vec3<bool>(false, u_input.d.x == 27711i, true)), _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, u_input.d.x, u_input.e), vec3<i32>(2147483647i, 1i, u_input.d.x))), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, 1i, 2147483647i), vec3<i32>(23635i, 23971i, 0i)), max(vec3<i32>(1i, u_input.e, u_input.d.x) >> (vec3<u32>(15862u, u_input.c, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, 30891i, -2147483647i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1090f))));
    let var_1 = ~(~_wgslsmith_mod_u32(u_input.a.x, u_input.b.x));
    let var_2 = vec2<bool>(func_2(-(var_0.b.e.x >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u))), true);
    var var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.b.d, var_0.b.d), 1u, var_1);
    let var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1, 54692u, 24062u, 45538u), ~vec4<u32>(0u, 15202u, var_0.b.d.x, 39523u)), select(~vec4<u32>(var_1, 27575u, u_input.c, var_1) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 24752u, var_1, 4294967295u), vec4<u32>(var_0.b.b.x, var_0.a.x, var_1, 0u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(32021u, var_1, 41088u), abs(var_1), ~var_0.b.d.x, func_3(var_0.c).x), all(!vec3<bool>(var_2.x, true, false)))), ~select(vec4<u32>(60098u, 0u, 4294967295u, var_3.x), firstTrailingBit(vec4<u32>(46576u, u_input.a.x, var_1, u_input.c)), !vec4<bool>(true, var_2.x, true, var_0.b.c.x)) >> (~vec4<u32>(var_0.a.x << (4294967295u % 32u), var_3.x << (var_1 % 32u), reverseBits(var_1), var_1) % vec4<u32>(32u)));
    return Struct_1(~(~(-38890i)), vec3<u32>(firstLeadingBit(~reverseBits(var_0.b.b.x)), countOneBits(_wgslsmith_add_u32(31079u, ~82603u)), var_0.a.x), var_0.b.c, max(~var_0.b.d, select(~vec3<u32>(4294967295u, var_1, var_3.x) & var_0.b.b, ~(vec3<u32>(4294967295u, 86467u, u_input.c) & var_0.b.d), (u_input.e == var_0.b.a) & false)), _wgslsmith_add_vec3_i32(var_0.b.e, var_0.b.e));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    let var_0 = func_1();
    var var_1 = var_0;
    var_1 = func_1();
    var var_2 = arg_2.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1849f, arg_3.b.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1497f, arg_3.b.c, var_2.b.c.x)), _wgslsmith_f_op_f32(sign(-1673f)))))), -875f));
    return 10011i;
}

fn func_5(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1967f, _wgslsmith_f_op_f32(min(-1000f, 381f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-260f + -1353f), _wgslsmith_f_op_f32(339f - 1000f), any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(145f * _wgslsmith_f_op_f32(f32(-1f) * -1044f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, 440f, -583f, -1000f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-562f, 411f, 654f, -199f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -231f)), _wgslsmith_f_op_f32(f32(-1f) * -1091f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1239f + 1577f) + _wgslsmith_f_op_f32(1593f - -478f)))), _wgslsmith_div_f32(-1353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))));
    return Struct_2(countOneBits(max(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 6000u, u_input.b.x), vec3<u32>(u_input.a.x, 34071u, 126627u), vec3<u32>(54539u, 4294967295u, 122723u)), max(vec3<u32>(59976u, 1u, u_input.b.x), vec3<u32>(u_input.c, 9767u, u_input.c))), vec3<u32>(~4294967295u, abs(u_input.a.x), ~5686u))), Struct_1(~12561i, _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(6496u, 36745u, u_input.c), vec3<u32>(43664u, 4294967295u, 2467u) >> (vec3<u32>(u_input.c, 0u, 4294967295u) % vec3<u32>(32u))), select(firstTrailingBit(vec3<u32>(0u, 22066u, u_input.c)), firstTrailingBit(vec3<u32>(1u, u_input.c, 62278u)), true)), func_1().c, ~_wgslsmith_add_vec3_u32(func_1().b, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.c), vec3<u32>(0u, 1650u, 59250u))), vec3<i32>(~max(u_input.e, -47031i), 1i, 1i)), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~1u & _wgslsmith_mult_u32(abs(u_input.a.x), 0u), max(47916u, ~1u), any(!vec2<bool>(all(vec2<bool>(true, false)), true)));
    var var_1 = func_5(_wgslsmith_clamp_i32(u_input.d.x, 0i, min(1i, func_4(func_1(), i32(-1i) * -8422i, Struct_3(vec3<i32>(u_input.e, -16567i, u_input.e), Struct_2(vec3<u32>(var_0, 1u, u_input.c), Struct_1(u_input.d.x, vec3<u32>(7764u, 1u, var_0), vec3<bool>(false, false, true), vec3<u32>(4294967295u, 1u, 19063u), vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x)), 285f), u_input.c, false), Struct_3(vec3<i32>(-79168i, 65062i, u_input.e), Struct_2(vec3<u32>(580u, var_0, 11038u), Struct_1(-1095i, vec3<u32>(u_input.c, u_input.b.x, 98u), vec3<bool>(true, false, true), vec3<u32>(u_input.a.x, u_input.c, var_0), vec3<i32>(u_input.d.x, u_input.e, u_input.e)), 1690f), u_input.b.x, false)))));
    var_1 = Struct_2(_wgslsmith_clamp_vec3_u32((vec3<u32>(var_1.a.x, u_input.c, 1u) >> (vec3<u32>(35832u, var_1.a.x, 1u) % vec3<u32>(32u))) >> (vec3<u32>(~u_input.b.x, abs(64949u), func_5(var_1.b.a).b.d.x) % vec3<u32>(32u)), ~(~vec3<u32>(43295u, var_1.b.d.x, 51376u) >> (var_1.a % vec3<u32>(32u))), ~(vec3<u32>(113273u, u_input.a.x, u_input.a.x) ^ var_1.b.b) | func_1().d), Struct_1(_wgslsmith_add_i32(i32(-1i) * -var_1.b.e.x, 10362i), var_1.a, vec3<bool>(func_1().c.x, func_1().c.x & any(var_1.b.c), true), ~var_1.a << (func_3(-223f) % vec3<u32>(32u)), min(vec3<i32>(54707i, var_1.b.a, var_1.b.a) | reverseBits(var_1.b.e), select(-var_1.b.e, _wgslsmith_sub_vec3_i32(var_1.b.e, vec3<i32>(u_input.e, u_input.e, var_1.b.a)), var_1.b.c))), _wgslsmith_f_op_f32(sign(var_1.c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + -908f));
    var var_3 = _wgslsmith_dot_vec4_i32(~(-firstLeadingBit(-vec4<i32>(0i, -34223i, -1i, var_1.b.e.x))), -vec4<i32>(max(-99735i, firstLeadingBit(var_1.b.e.x)), _wgslsmith_div_i32(i32(-1i) * -1i, u_input.d.x), max(u_input.d.x, var_1.b.a), _wgslsmith_dot_vec3_i32(var_1.b.e, firstTrailingBit(vec3<i32>(var_1.b.a, var_1.b.e.x, var_1.b.e.x)))));
    var var_4 = 1000f;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(round(var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b.a, u_input.d.x), -u_input.d), func_5(-73372i).b.e.xy), _wgslsmith_mult_vec2_i32(vec2<i32>(-1557i, 0i), _wgslsmith_sub_vec2_i32(abs(var_1.b.e.yz), u_input.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-600f, 654f, var_1.c) * vec3<f32>(var_5.x, 1786f, 545f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c, -1000f, 1163f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, 1000f, var_5.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), var_5.x, -588f)))), max(var_1.a, min(select(var_1.a, vec3<u32>(var_0, u_input.a.x, 35020u), var_1.b.c.x), _wgslsmith_div_vec3_u32(var_1.a, var_1.b.d))));
}

