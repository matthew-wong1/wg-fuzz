struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3.a;
    var var_1 = vec4<i32>(-12011i, u_input.c.x, 0i, _wgslsmith_sub_i32(reverseBits(max(_wgslsmith_add_i32(arg_3.b.c.x, 2147483647i), firstLeadingBit(u_input.b.x))), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.c.x, arg_3.b.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, u_input.c.x, arg_3.b.c.x, arg_3.b.c.x))));
    var var_2 = arg_3.a.x;
    var_1 = abs(reverseBits(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, u_input.d, 9986i, u_input.c.x), vec4<i32>(arg_3.b.c.x, 51318i, u_input.d, 0i)))) & _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_3.b.c.x, u_input.b.x, arg_3.b.c.x, var_1.x), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_3.b.c.x, 2147483647i, arg_3.b.c.x, -1i)), -vec4<i32>(var_1.x, 53117i, arg_3.b.c.x, arg_3.b.c.x))));
    var_1 = min(abs(vec4<i32>(min(u_input.b.x >> (1u % 32u), var_1.x), u_input.c.x, _wgslsmith_mod_i32(-1i, 1i), firstTrailingBit(~arg_3.b.c.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.b.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c.x) ^ var_1.yz, abs(var_1.yw)), abs(~u_input.c.x), -2492i), vec4<i32>(-(i32(-1i) * -2147483647i), var_1.x, arg_3.b.c.x, arg_3.b.c.x)));
    return ~(0u ^ ~(_wgslsmith_sub_u32(arg_1, 1u) >> (min(0u, 88537u) % 32u)));
}

fn func_2(arg_0: Struct_3) -> vec4<f32> {
    let var_0 = vec4<u32>(~(~u_input.a), u_input.a, 70523u, abs(arg_0.b.x));
    let var_1 = Struct_3(u_input.c, ~countOneBits(~vec2<u32>(4294967295u, 1u)), arg_0.c);
    let var_2 = Struct_2(~arg_0.b, Struct_1(var_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-554f, 981f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2191f, 1507f))), var_1.a), vec2<bool>(true, true));
    var var_3 = vec4<u32>(_wgslsmith_div_u32(var_1.c.x, _wgslsmith_dot_vec3_u32(~var_1.c.zzy, ~vec3<u32>(20834u, var_2.b.a, 4294967295u))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(78569u, 47948u, u_input.a, u_input.a) ^ ~vec4<u32>(14694u, 1u, u_input.a, 4294967295u)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_1.c.x, 59486u, arg_0.c.x), vec4<u32>(11950u, 4294967295u, 49357u, 30920u)))), min(arg_0.c.x, u_input.a), arg_0.b.x);
    var_3 = ~vec4<u32>(~63204u, ~var_0.x, ~var_3.x, ~(~func_3(true, u_input.a, -665f, var_2)));
    return vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-463f, _wgslsmith_f_op_f32(round(-791f))), var_2.b.b.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b.b.x)) * -1000f), 234f);
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(497f * -1183f), _wgslsmith_f_op_f32(f32(-1f) * -1604f), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -972f));
    let var_1 = _wgslsmith_div_f32(var_0.x, var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, 169f, var_1, -630f), _wgslsmith_f_op_vec4_f32(func_2(Struct_3(u_input.b.zy, vec2<u32>(u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 75390u, 0u)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -237f), 405f, _wgslsmith_f_op_f32(var_0.x - 725f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(795f, 1330f, var_0.x, 1470f) * vec4<f32>(var_1, var_0.x, 982f, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(1989f)), _wgslsmith_f_op_f32(611f - -107f), -1290f, _wgslsmith_f_op_vec4_f32(func_2(Struct_3(u_input.b.zy, vec2<u32>(1u, 54398u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)))).x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 117f, var_0.x, -148f) - vec4<f32>(var_1, var_0.x, var_0.x, -799f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-813f, -983f, var_1, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(-392f * 1551f), _wgslsmith_f_op_f32(var_0.x * var_0.x)) * vec4<f32>(-1905f, _wgslsmith_f_op_f32(max(890f, var_1)), _wgslsmith_f_op_f32(var_0.x + 571f), _wgslsmith_f_op_f32(317f * var_1))) - vec4<f32>(-365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, var_0.x)) * _wgslsmith_div_f32(-1569f, -606f)), -492f, var_0.x)), any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)))));
    let var_2 = Struct_3(-(u_input.b.zz | (vec2<i32>(-1i) * -vec2<i32>(u_input.d, -34589i))), reverseBits(select(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 16743u))), vec2<u32>(~u_input.a, ~22603u), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)))), ~vec4<u32>(~u_input.a, firstTrailingBit(26240u) ^ ~u_input.a, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 0u), 0u), 78219u));
    return _wgslsmith_div_vec3_u32(var_2.c.yzy, var_2.c.wxx);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(~23996u, _wgslsmith_f_op_vec2_f32(-arg_1.b), firstLeadingBit(arg_1.c) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(5987u, arg_1.a), vec2<u32>(66740u ^ arg_1.a, func_1().x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_1.a), vec2<u32>(0u, arg_1.a))) % vec2<u32>(32u)));
    let var_1 = arg_1;
    let var_2 = Struct_1(58347u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_3(_wgslsmith_sub_vec2_i32(u_input.b.xz, vec2<i32>(2147483647i, -2147483647i)), vec2<u32>(1u, arg_1.a) | vec2<u32>(2354u, 27433u), _wgslsmith_mult_vec4_u32(vec4<u32>(24054u, u_input.a, var_0.a, 4294967295u), vec4<u32>(u_input.a, arg_1.a, u_input.a, arg_1.a))))).yw), -((reverseBits(vec2<i32>(0i, 2147483647i)) ^ ~var_1.c) ^ min(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, 0i), u_input.c), arg_1.c)));
    var var_3 = Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.a, 16031u), u_input.a), ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, var_0.a), false), ~vec2<u32>(var_0.a, 15441u))), Struct_1(_wgslsmith_mod_u32(1u, ~(~var_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1631f, 843f) + vec2<f32>(-393f, arg_1.b.x)) - vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_2.b.x))), u_input.c), !vec2<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var_0 = Struct_1(func_3(!(var_2.a <= u_input.a) | all(!vec2<bool>(var_3.c.x, true)), var_0.a, -317f, Struct_2(~_wgslsmith_sub_vec2_u32(var_3.a, var_3.a), var_2, vec2<bool>(!var_3.c.x, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, var_0.b.x)), vec2<i32>(-((var_3.b.c.x | var_2.c.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.c.x, var_3.b.c.x, 0i), vec4<i32>(var_3.b.c.x, var_0.c.x, -2147483647i, var_3.b.c.x))), ~_wgslsmith_add_i32(arg_0.x, arg_0.x)));
    return Struct_2(~countOneBits(var_3.a), Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a, var_1.a, arg_1.a), abs(vec3<u32>(var_3.a.x, var_3.b.a, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-113f, var_3.b.b.x) * vec2<f32>(383f, var_1.b.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 265f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.b.x, 1908f)))), select(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, 4612i), var_2.c)), -max(u_input.c, var_2.c), var_3.c.x)), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(max(~vec3<i32>(u_input.c.x, 0i, 1i), u_input.b) ^ (~(-vec3<i32>(u_input.c.x, 37875i, u_input.b.x)) >> ((func_1() & (vec3<u32>(31334u, u_input.a, 4294967295u) & vec3<u32>(0u, u_input.a, 37726u))) % vec3<u32>(32u))), Struct_1(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1118f - 157f) - _wgslsmith_f_op_f32(-457f * 490f))), ~abs(_wgslsmith_mult_vec2_i32(u_input.c, u_input.b.yz))));
    let var_1 = select(~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 75291u, 103376u), vec3<u32>(8001u, 5180u, 4294967295u))) >> (vec3<u32>(u_input.a, var_0.a.x, var_0.b.a) % vec3<u32>(32u)), ~firstTrailingBit(~(~vec3<u32>(40621u, 24577u, 12613u))), true);
    var var_2 = func_4(select(abs(-vec3<i32>(u_input.b.x, -39109i, 0i)), u_input.b, !var_0.c.x), Struct_1(4944u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.b.b))), var_0.b.c)).b;
    var_2 = Struct_1(22598u, var_2.b, firstLeadingBit(~(vec2<i32>(u_input.c.x, 17073i) << ((vec2<u32>(var_0.a.x, 0u) << (vec2<u32>(var_1.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_1().x, u_input.a, _wgslsmith_mod_u32(1u, 25617u)), ~(~abs(vec4<u32>(var_2.a, var_2.a, u_input.a, var_0.b.a))));
}

