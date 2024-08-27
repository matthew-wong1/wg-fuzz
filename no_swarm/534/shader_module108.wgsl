struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> vec3<u32> {
    global0 = array<Struct_1, 6>();
    return vec3<u32>(~arg_0.c.c.a, ~31002u, arg_2.c.b >> (0u % 32u));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(~(~(~1u)), _wgslsmith_dot_vec2_i32(u_input.a.yy, -_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a, -2147483647i), vec2<i32>(-1i, -2147483647i))), firstTrailingBit(~1u));
    global0 = array<Struct_1, 6>();
    let var_1 = -1497f;
    let var_2 = firstLeadingBit(min(_wgslsmith_mod_vec3_u32(~vec3<u32>(17903u, 0u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(22960u, 54869u, var_0.c), vec3<u32>(24631u, var_0.a, 4898u))) << (_wgslsmith_add_vec3_u32(func_2(Struct_4(u_input.a, arg_1, Struct_3(arg_1.a, var_0.a, global0[_wgslsmith_index_u32(0u, 6u)]), vec4<f32>(var_1, var_1, 249f, var_1)), Struct_1(0u, -2147483647i, var_0.a), Struct_4(vec3<i32>(0i, u_input.a.x, -1i), Struct_2(u_input.a.x), Struct_3(arg_0.x, 45867u, Struct_1(var_0.a, var_0.b, var_0.a)), vec4<f32>(1722f, var_1, 753f, var_1))), vec3<u32>(var_0.c, 4294967295u, 0u) & vec3<u32>(16681u, var_0.c, var_0.c)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.c, 59032u, 9616u), ~vec3<u32>(72888u, var_0.a, var_0.c)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(3855u, var_0.a, 4294967295u), vec3<u32>(var_0.a, var_0.a, var_0.c)), ~(~vec3<u32>(0u, var_0.a, var_0.a)))));
    let var_3 = Struct_2(countOneBits(_wgslsmith_sub_i32(-41016i ^ _wgslsmith_sub_i32(7516i, var_0.b), 35149i)));
    return Struct_1(~firstLeadingBit(_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(var_2.x, var_2.x, var_0.a))), firstTrailingBit(1i | arg_0.x), var_2.x);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_4(u_input.a, Struct_2(-1i), Struct_3(-_wgslsmith_sub_i32(_wgslsmith_div_i32(32313i, -66747i), u_input.a.x), ~(~arg_0), Struct_1(~1u, ~u_input.a.x, ~1u)), vec4<f32>(689f, 1183f, 620f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(818f + 1095f) - _wgslsmith_f_op_f32(step(1871f, -300f)))))));
    let var_1 = -533f;
    global0 = array<Struct_1, 6>();
    let var_2 = select(select(vec3<bool>(func_1(vec4<i32>(u_input.a.x, -62612i, 1i, u_input.a.x), Struct_2(var_0.a.x)).c > ~4294967295u, _wgslsmith_f_op_f32(1154f * var_1) != 163f, 39578u >= _wgslsmith_add_u32(2903u, var_0.c.c.c)), vec3<bool>(true, true, !all(vec4<bool>(true, true, true, true))), true && all(vec4<bool>(false, true, false, true))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false))), vec3<bool>(select(all(vec4<bool>(false, true, true, false)), var_0.c.c.c != arg_0, true), !any(vec2<bool>(false, true)), false), true), select(vec3<bool>(false, true, false), vec3<bool>((var_1 == var_0.d.x) & all(vec2<bool>(false, false)), ~u_input.a.x > -24930i, true), all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)))));
    let var_3 = select(vec3<i32>(_wgslsmith_add_i32(-var_0.a.x, firstTrailingBit(var_0.b.a)), u_input.a.x, ~var_0.c.a & max(2147483647i, u_input.a.x)) >> (_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(arg_0, 10059u, 20356u)), firstLeadingBit(countOneBits(vec3<u32>(4294967295u, 4294967295u, 41244u))), ~min(vec3<u32>(var_0.c.b, var_0.c.c.c, 20364u), vec3<u32>(0u, 5586u, var_0.c.c.c))) % vec3<u32>(32u)), vec3<i32>(0i, 2147483647i << (_wgslsmith_sub_u32(func_1(vec4<i32>(var_0.c.c.b, var_0.a.x, var_0.b.a, 42280i), var_0.b).a, arg_0) % 32u), min(_wgslsmith_add_i32(10511i, u_input.a.x), abs(var_0.c.a)) & countOneBits(~var_0.c.a)), select(!(!(!var_2)), vec3<bool>(~u_input.a.x >= 5384i, true & var_2.x, all(!var_2.yy)), any(vec4<bool>(false, var_2.x, false, true))));
    return abs(_wgslsmith_div_u32(_wgslsmith_sub_u32((arg_0 << (arg_0 % 32u)) ^ _wgslsmith_mult_u32(arg_0, 4294967295u), 5150u), ~(~func_1(vec4<i32>(0i, -39102i, -1i, 2147483647i), var_0.b).a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-689f, 1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(863f, 1000f, false))))))) - _wgslsmith_f_op_f32(135f + -1042f));
    var var_1 = Struct_4(_wgslsmith_sub_vec3_i32(-(u_input.a << (~vec3<u32>(0u, 94135u, 9021u) % vec3<u32>(32u))), u_input.a), Struct_2(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -54103i), -2147483647i)), Struct_3(1i, ~1u, func_1(vec4<i32>(-1i) * -vec4<i32>(0i, 18103i, u_input.a.x, u_input.a.x), Struct_2(u_input.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1312f)), _wgslsmith_f_op_f32(f32(-1f) * -1292f), true)), _wgslsmith_f_op_f32(-527f + -1239f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(283f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 630f) * _wgslsmith_f_op_f32(select(1000f, -771f, true)))))));
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(abs(~vec3<i32>(13089i, var_1.b.a, var_1.a.x)), ~var_1.a), var_1.a | vec3<i32>(min(var_1.a.x, -25669i), -1i, u_input.a.x), abs(vec3<i32>(28353i, var_1.a.x, _wgslsmith_add_i32(0i, var_1.a.x)))) << (vec3<u32>(firstLeadingBit(4294967295u), func_3(~22227u) >> (_wgslsmith_mult_u32(select(17132u, var_1.c.c.c, false), var_1.c.b) % 32u), var_1.c.b) % vec3<u32>(32u));
    let var_3 = vec2<i32>(_wgslsmith_div_i32(-2147483647i, -1i), _wgslsmith_dot_vec4_i32(~(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, -26477i, var_1.a.x, 33266i), vec4<i32>(12315i, 0i, -1i, u_input.a.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, -12917i, var_2.x), vec4<i32>(23035i, -25715i, var_2.x, var_2.x))), ~firstLeadingBit(vec4<i32>(u_input.a.x, -8812i, -59388i, u_input.a.x))));
    var var_4 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(max(46242i, max(u_input.a.x, 2147483647i)), var_1.b.a ^ ~(-574i), 2147483647i, -var_1.b.a)), ~vec4<i32>(-2147483647i, ~(-var_1.a.x), 1i & _wgslsmith_div_i32(73909i, u_input.a.x), u_input.a.x));
    var var_5 = vec2<bool>(var_1.a.x >= 57775i, (true & !all(vec3<bool>(true, false, true))) && all(vec2<bool>(true, true)));
    var_1 = Struct_4(vec3<i32>(_wgslsmith_mult_i32(~var_2.x, -44316i), _wgslsmith_sub_i32(min(-2147483647i, ~(-1i)), _wgslsmith_div_i32(-var_1.c.c.b, reverseBits(0i))), -2147483647i), Struct_2(-33136i), Struct_3(39406i, 4294967295u, Struct_1(~(~36216u), var_1.a.x, select(var_1.c.c.a, var_1.c.b, var_5.x) >> (firstLeadingBit(101333u) % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_1.d))));
    var var_6 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(var_1.c.b), _wgslsmith_div_u32(4294967295u, 4294967295u)), ~var_1.c.c.a, max(1u, 11871u), ~func_2(Struct_4(vec3<i32>(var_2.x, u_input.a.x, 8448i), var_1.b, var_1.c, vec4<f32>(784f, -551f, 337f, -1000f)), global0[_wgslsmith_index_u32(4294967295u, 6u)], Struct_4(vec3<i32>(22271i, 0i, -13375i), Struct_2(-37628i), Struct_3(-2147483647i, var_1.c.c.a, global0[_wgslsmith_index_u32(var_1.c.c.a, 6u)]), var_1.d)).x), vec4<u32>(var_1.c.b, 4294967295u, ~func_1(vec4<i32>(var_1.b.a, var_2.x, 0i, var_3.x), var_1.b).a, var_1.c.b >> (var_1.c.b % 32u)));
    var_1 = Struct_4(vec3<i32>(~(~u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, u_input.a.x), 14075i, -var_2.x), max(u_input.a, vec3<i32>(2147483647i, 16371i, -15080i) & vec3<i32>(55344i, var_1.a.x, var_1.b.a))), -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_1.c.a, var_1.b.a, -2147483647i) | vec3<i32>(82923i, 9168i, var_1.a.x))), Struct_2(var_2.x), var_1.c, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstLeadingBit(var_1.c.c.c), 15054u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.c.c.a, var_1.c.c.c, var_1.c.b, 9671u)), firstTrailingBit(vec4<u32>(47334u, 9731u, var_1.c.b, 1u))) | ~_wgslsmith_clamp_u32(var_1.c.c.c, 4294967295u, 33273u), 0u), ~var_3.x, var_1.a, var_1.c.b);
}

