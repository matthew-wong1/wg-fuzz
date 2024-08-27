struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17422u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> bool {
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_1(vec3<bool>(any(vec3<bool>(arg_0.x < 1224f, any(vec4<bool>(false, arg_2, arg_1.x, arg_2)), arg_1.x)), true, arg_1.x), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(16463u, 57526u), 5032u), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 54139u, u_input.d) >> (vec4<u32>(u_input.d, u_input.d, u_input.e.x, u_input.d) % vec4<u32>(32u)), ~vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d)) > ~u_input.d) & true);
    var var_1 = Struct_2(arg_1.x, vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))) > -452f, ~(u_input.c | u_input.b.x) != _wgslsmith_mult_i32(firstLeadingBit(-2147483647i), 28129i)), Struct_1(!vec3<bool>(false, func_3(vec3<f32>(arg_0.x, -202f, arg_0.x), vec4<bool>(arg_2, true, true, var_0.c), var_0.a.yy, vec2<i32>(-2147483647i, u_input.c)), var_0.c), var_0.b, select(all(var_0.a.xx), true, false)), select(-abs(abs(vec3<i32>(-14229i, 1i, 1i))), firstLeadingBit(-vec3<i32>(u_input.a.x, 24610i, -25843i) ^ -vec3<i32>(u_input.c, 0i, u_input.c)), !var_0.a), Struct_1(var_0.a, min(1u, _wgslsmith_div_u32(var_0.b, 9966u) ^ abs(4294967295u)), !var_0.a.x));
    let var_2 = Struct_1(select(var_0.a, select(var_1.c.a, select(var_0.a, var_1.e.a, var_1.c.c), !(!vec3<bool>(true, true, var_0.c))), !vec3<bool>(!arg_2, false, arg_0.x > arg_0.x)), 1u, !(!(arg_1.x & true) == any(var_1.c.a)));
    global0 = 43436u;
    global0 = var_1.c.b;
    return var_1.c.a.yy;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_3 {
    let var_0 = -(~59828i);
    let var_1 = Struct_2(true, vec2<bool>(false, true), Struct_1(vec3<bool>(true, true, all(arg_2)), ~_wgslsmith_dot_vec3_u32(u_input.e, ~vec3<u32>(arg_3, 0u, u_input.d)), arg_2.x), abs(arg_1.xww) >> (u_input.e % vec3<u32>(32u)), Struct_1(!vec3<bool>(arg_2.x, true, all(arg_2)), ~_wgslsmith_mod_u32(u_input.e.x, 1u), any(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-556f, -2229f)), vec2<bool>(true, true), func_3(vec3<f32>(-1434f, 569f, 1000f), vec4<bool>(false, false, arg_2.x, arg_2.x), vec2<bool>(true, arg_2.x), vec2<i32>(arg_0, var_0))))));
    global0 = 68471u;
    var var_2 = firstLeadingBit(51419u);
    global0 = ~1u;
    return Struct_3(9180i, var_1, 182f, true);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = -1077f;
    let var_1 = u_input.d != countOneBits(112022u);
    var var_2 = func_2(u_input.c, vec4<i32>(-18775i, abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, 14777i), vec4<i32>(-1i, -21325i, u_input.a.x, -31386i))), ~_wgslsmith_sub_i32(-u_input.a.x, u_input.a.x), 20358i), vec2<bool>(true, (arg_0.c & (var_1 || false)) || true), 22282u);
    var_2 = Struct_3(-_wgslsmith_div_i32(reverseBits(1i), var_2.b.d.x), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c, var_2.c) + _wgslsmith_f_op_f32(-var_2.c)))), false);
    global0 = _wgslsmith_dot_vec3_u32(~min(~u_input.e, u_input.e), u_input.e);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 55775u << (_wgslsmith_mult_u32(8620u >> (func_1(Struct_1(vec3<bool>(true, false, false), 4294967295u, true)) % 32u), ~4294967295u) % 32u);
    let var_0 = Struct_3(~_wgslsmith_clamp_i32(u_input.b.x >> (u_input.e.x % 32u), -(u_input.a.x & 2147483647i), -_wgslsmith_add_i32(-29522i, u_input.b.x)), Struct_2(!all(vec4<bool>(false, true, true, false)), select(vec2<bool>(true, true), vec2<bool>(true, select(false, false, false)), vec2<bool>(true, true)), func_2(~_wgslsmith_sub_i32(u_input.b.x, -11583i), _wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.c, -10741i, 2147483647i, u_input.c), vec4<i32>(29566i, u_input.a.x, -6875i, 21091i)), select(vec4<i32>(-20522i, 1i, u_input.c, u_input.b.x), vec4<i32>(u_input.a.x, u_input.c, -24430i, u_input.a.x), vec4<bool>(true, false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(vec3<f32>(241f, 1000f, -1368f), vec4<bool>(false, false, true, false), vec2<bool>(true, false), u_input.a)), ~1u).b.c, min(abs(vec3<i32>(u_input.a.x, 0i, 2147483647i)), vec3<i32>(32201i, i32(-1i) * -2147483647i, -1002i)), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), _wgslsmith_clamp_u32(0u, u_input.d, 85299u), false)), _wgslsmith_f_op_f32(-601f * 489f), true);
    let var_1 = max(0u, 43900u ^ var_0.b.e.b);
    var var_2 = func_2(var_0.a, vec4<i32>(1i, firstTrailingBit(u_input.a.x), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-10753i, var_0.a) ^ vec2<i32>(u_input.b.x, var_0.a), -vec2<i32>(u_input.a.x, -19950i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~(-1i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, var_0.a), ~var_0.b.d.yz))), vec2<bool>(false || func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(493f, var_0.c, var_0.c) + vec3<f32>(629f, var_0.c, 874f)), vec4<bool>(true, true, true, var_0.d), var_0.b.b, vec2<i32>(var_0.a, u_input.c)), any(var_0.b.c.a.yz)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1 << (1u % 32u), var_1, var_0.b.c.b), vec4<u32>(1u, u_input.d, var_0.b.e.b & 22893u, u_input.e.x)), var_1 & 14373u));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-295f, var_2.c) + vec2<f32>(1254f, var_2.c))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_0.c), vec2<f32>(var_2.c, -1071f))) - vec2<f32>(var_2.c, var_2.c))))));
    let var_4 = var_2.b.c.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(1228f, -_wgslsmith_add_vec4_i32(vec4<i32>(-var_2.b.d.x, -2147483647i, u_input.a.x, u_input.b.x), select(vec4<i32>(-2147483647i, u_input.b.x, 7011i, 9530i), firstLeadingBit(vec4<i32>(u_input.c, var_0.a, 1i, u_input.a.x)), select(vec4<bool>(false, var_0.d, true, true), vec4<bool>(var_0.b.b.x, var_4.x, var_0.d, var_2.b.a), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, var_0.c))) + -1134f), _wgslsmith_mult_vec3_i32(-var_0.b.d, ~vec3<i32>(var_0.a, abs(u_input.a.x), countOneBits(-2147483647i))));
}

