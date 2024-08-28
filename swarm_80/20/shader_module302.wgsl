struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>) -> vec2<i32> {
    var var_0 = arg_0.x < ~max(u_input.a.x, u_input.d);
    global0 = !(!select(select(!vec2<bool>(global0.x, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, global0.x), vec2<bool>(false, true), vec2<bool>(false, false)), true));
    var var_1 = _wgslsmith_add_vec2_i32(~select(vec2<i32>(u_input.c, -u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<bool>(true, true)), vec2<i32>(-_wgslsmith_div_i32(-42503i, i32(-1i) * -2147483647i), firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<i32>(-1i, 0i, -1i, u_input.c)))));
    global1 = any(vec4<bool>(global0.x, global0.x, select(select(true, global0.x | true, !global0.x), all(vec2<bool>(global0.x, global0.x)), !global0.x), !global0.x));
    var var_2 = _wgslsmith_add_u32(arg_0.x ^ ~firstLeadingBit(arg_0.x), arg_0.x);
    return abs(-_wgslsmith_div_vec2_i32(-vec2<i32>(27250i, u_input.c), -(~vec2<i32>(var_1.x, var_1.x))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: u32) -> i32 {
    var var_0 = Struct_4(~(~arg_2), ~(~_wgslsmith_div_u32(17928u, abs(56312u))), abs(~vec4<u32>(arg_2, select(u_input.b, 4294967295u, true), ~u_input.b, countOneBits(4294967295u))));
    let var_1 = _wgslsmith_mult_vec3_i32(~(vec3<i32>(_wgslsmith_add_i32(u_input.c, 3757i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 19048i, -2147483647i, u_input.c), vec4<i32>(u_input.c, -1i, 1i, -25099i)), ~1i) >> (reverseBits(var_0.c.xyw >> (u_input.a.zzw % vec3<u32>(32u))) % vec3<u32>(32u))), ~(-vec3<i32>(u_input.c, u_input.c, u_input.c)) << (var_0.c.yzw % vec3<u32>(32u)));
    var var_2 = Struct_2(Struct_1(global0.x, select(select(select(vec2<bool>(arg_0, false), vec2<bool>(false, false), arg_0), !vec2<bool>(false, global0.x), vec2<bool>(false, false)), vec2<bool>(arg_0, true), vec2<bool>(true, true)), reverseBits(vec3<i32>(-2147483647i, 20912i, u_input.c) ^ (var_1 << (vec3<u32>(12903u, 4294967295u, arg_2) % vec3<u32>(32u)))), ~var_0.b | (var_0.c.x & _wgslsmith_div_u32(var_0.b, 1u))), Struct_1(false, vec2<bool>(all(vec3<bool>(global0.x, true, false)), true), vec3<i32>(_wgslsmith_div_i32(select(1i, 2147483647i, global0.x), 2147483647i), func_2(vec4<u32>(14745u, u_input.b, u_input.a.x, arg_2)).x, var_1.x), ~41481u), Struct_1(global0.x, select(select(vec2<bool>(global0.x, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(arg_0, true)), countOneBits(_wgslsmith_mult_vec3_i32(select(var_1, vec3<i32>(u_input.c, -59466i, 0i), global0.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, var_1.x, u_input.c), vec3<i32>(u_input.c, u_input.c, 2147483647i)))), reverseBits(arg_2)), ~u_input.c, Struct_1(all(vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, arg_0), !vec2<bool>(global0.x, false)), select(vec3<i32>(-24355i, ~var_1.x, i32(-1i) * -1i), var_1, !all(vec3<bool>(arg_0, arg_0, false))), arg_2));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1131f)), -544f))));
    let var_4 = Struct_1(true, select(!(!vec2<bool>(true, arg_0)), !var_2.a.b, !(!vec2<bool>(global0.x, false))), firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, var_1.x, 0i), vec3<i32>(u_input.c, var_2.e.c.x, u_input.c)), var_2.a.c)), 36787u);
    return min(_wgslsmith_mult_i32(var_4.c.x, ~(~var_1.x)), -_wgslsmith_sub_i32(max(_wgslsmith_mult_i32(var_2.d, 38517i), -660i), var_4.c.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec3<u32> {
    global1 = true;
    let var_0 = _wgslsmith_add_vec2_i32(func_2(reverseBits(~u_input.a)), ~vec2<i32>(max(2147483647i, u_input.c), u_input.c) >> (u_input.a.yy % vec2<u32>(32u)));
    var var_1 = Struct_3(vec2<i32>(0i, firstLeadingBit(reverseBits(-2147483647i))), vec4<bool>(arg_1.x, select(true, _wgslsmith_div_u32(arg_0.x, u_input.d) == 0u, true), false, global0.x), Struct_1(any(!(!vec4<bool>(true, arg_1.x, arg_1.x, false))), vec2<bool>(true, !(u_input.c > u_input.c)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 1i, 42005i)) << (vec3<u32>(arg_0.x, u_input.a.x, arg_0.x) % vec3<u32>(32u)), ~(~vec3<i32>(28734i, -11978i, 9583i))), arg_0.x), Struct_1(true, select(vec2<bool>(var_0.x > 21404i, true), !(!arg_1.xx), arg_1.xy), min(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 0i, 2147483647i), vec3<i32>(var_0.x, u_input.c, u_input.c)), ~abs(vec3<i32>(var_0.x, u_input.c, var_0.x))), ~_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(1u, 68362u))));
    let var_2 = Struct_4(60566u ^ reverseBits(var_1.d.d), u_input.a.x, vec4<u32>(var_1.c.d, u_input.b, arg_0.x, arg_0.x));
    var var_3 = abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, func_3(var_1.b.x, -523f, 23050u) ^ -1i, reverseBits(var_0.x << (21005u % 32u))), var_1.c.c));
    return var_2.c.wxw;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = i32(-1i) * -((u_input.c >> (_wgslsmith_mult_u32(0u, arg_2) % 32u)) ^ -4806i);
    let var_1 = arg_2;
    var var_2 = Struct_4(min(4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a)) ^ u_input.a.x, _wgslsmith_clamp_u32(~55791u, ~0u, func_1(min(vec3<u32>(var_1, 56955u, 0u), vec3<u32>(u_input.d, 6196u, 78258u)), vec3<bool>(global0.x, false, global0.x)).x & 76237u), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(min(countOneBits(vec4<u32>(arg_1.x, 70224u, u_input.b, 69965u)), select(u_input.a, vec4<u32>(40664u, 11579u, u_input.d, 0u), global0.x)), u_input.a), vec4<u32>(4294967295u, firstTrailingBit(~5013u), var_1, min(max(1u, var_1), ~arg_2))));
    var var_3 = ~58244i;
    return Struct_3(-vec2<i32>(2147483647i, -(~arg_0)), vec4<bool>(false, any(vec3<bool>(global0.x, !global0.x, 0u <= arg_2)), func_3(true, _wgslsmith_div_f32(1210f, 1146f), ~var_1) > _wgslsmith_mult_i32(i32(-1i) * -6800i, select(u_input.c, 2147483647i, false)), false), Struct_1(true, vec2<bool>(any(vec4<bool>(global0.x, false, global0.x, true)), false), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, countOneBits(arg_0), u_input.c), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -26504i, u_input.c), func_2(vec4<u32>(1u, 47037u, 1u, 1821u)).x, 2147483647i)), arg_1.x), Struct_1(true, !(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-36901i, 12834i, u_input.c), ~vec3<i32>(2147483647i, u_input.c, u_input.c)), ~_wgslsmith_div_u32(var_2.b, 3335u)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    global1 = !arg_1.a;
    let var_0 = arg_2.zxx;
    global1 = !(arg_1.b.x || ((arg_1.d != 1u) & any(!arg_0.b.zyw)));
    var var_1 = Struct_2(Struct_1(u_input.a.x >= 71764u, vec2<bool>(!arg_0.c.b.x, false), -(_wgslsmith_sub_vec3_i32(arg_0.d.c, vec3<i32>(u_input.c, arg_0.d.c.x, 6780i)) & vec3<i32>(-1i, u_input.c, 1i)), _wgslsmith_div_u32(arg_2.x, arg_2.x)), func_4(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.c.x, u_input.c, u_input.c, u_input.c), vec4<i32>(-2147483647i, arg_1.c.x, -2238i, arg_1.c.x))), firstTrailingBit(vec4<i32>(arg_1.c.x, arg_0.c.c.x, u_input.c, u_input.c)) | (vec4<i32>(arg_0.d.c.x, -37181i, 2147483647i, arg_1.c.x) ^ vec4<i32>(-1i, arg_1.c.x, 0i, -3864i))), _wgslsmith_mod_vec3_u32(countOneBits(var_0 >> (vec3<u32>(var_0.x, 0u, var_0.x) % vec3<u32>(32u))), arg_2.wzw), 3495u).d, Struct_1(true, func_4(0i, vec3<u32>(u_input.a.x, ~arg_0.c.d, _wgslsmith_mod_u32(1u, arg_0.d.d)), 11357u).c.b, _wgslsmith_add_vec3_i32(min(~arg_1.c, arg_0.c.c), ~_wgslsmith_mult_vec3_i32(arg_0.c.c, vec3<i32>(28466i, arg_1.c.x, -22967i))), ~var_0.x), 3647i, Struct_1(true, select(vec2<bool>(arg_0.a.x <= 2436i, arg_0.c.b.x == true), !arg_1.b, _wgslsmith_f_op_f32(select(-535f, 1000f, arg_1.b.x)) != _wgslsmith_div_f32(-247f, 1558f)), arg_0.c.c, ~4294967295u));
    return Struct_2(func_4(_wgslsmith_mult_i32(10167i, ~(arg_1.c.x & 2147483647i)), vec3<u32>(var_0.x, var_1.c.d, (u_input.a.x & var_1.b.d) & 4294967295u), _wgslsmith_mult_u32(~0u, firstTrailingBit(max(4294967295u, var_0.x)))).d, func_4(2147483647i, ~(~_wgslsmith_add_vec3_u32(arg_2.yzw, vec3<u32>(arg_1.d, 51823u, 4294967295u))), arg_1.d).d, func_4(u_input.c, vec3<u32>(arg_0.c.d, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(56847u, var_1.a.d), vec2<u32>(arg_0.d.d, arg_1.d))), _wgslsmith_add_u32(~(~arg_1.d), arg_0.c.d)).d, _wgslsmith_mult_i32(16515i, ((2147483647i >> (var_1.e.d % 32u)) << (arg_1.d % 32u)) << (~var_1.c.d % 32u)), Struct_1(true, select(select(func_4(-29079i, vec3<u32>(1u, 1u, arg_0.c.d), 4294967295u).d.b, vec2<bool>(arg_1.a, false), var_1.a.b), func_4(-arg_1.c.x, u_input.a.zxw, var_0.x).b.zy, select(arg_0.b.wy, vec2<bool>(true, true), var_1.e.b)), abs(~(~vec3<i32>(u_input.c, var_1.d, u_input.c))), ~(~(arg_2.x >> (4294967295u % 32u)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = func_5(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-arg_0.a.c.x, ~1i, _wgslsmith_div_i32(354i, 44111i), i32(-1i) * -7093i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, 11223i, arg_0.c.c.x), vec4<i32>(u_input.c, 20751i, 9575i, -2147483647i)) | (vec4<i32>(1i, -1i, arg_0.a.c.x, 1i) ^ vec4<i32>(u_input.c, u_input.c, arg_0.d, arg_0.e.c.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(74515u, 19018u, ~79059u), firstTrailingBit(u_input.a.zwz)), arg_2), func_5(Struct_3(vec2<i32>(3977i, _wgslsmith_mod_i32(u_input.c, arg_0.a.c.x)), !(!vec4<bool>(global0.x, arg_0.a.a, false, global0.x)), func_4(arg_1.c.x, reverseBits(u_input.a.wxy), u_input.b).c, Struct_1(all(vec3<bool>(arg_0.b.b.x, false, true)), vec2<bool>(true, true), vec3<i32>(16957i, -1451i, -1i) >> (vec3<u32>(arg_0.a.d, arg_0.a.d, 1u) % vec3<u32>(32u)), arg_1.d >> (1u % 32u))), arg_0.a, u_input.a).b, ~min(max(vec4<u32>(arg_0.e.d, 4294967295u, 0u, arg_0.a.d), ~vec4<u32>(31951u, 0u, arg_1.d, 32791u)), vec4<u32>(_wgslsmith_sub_u32(u_input.d, 0u), firstLeadingBit(0u), ~41141u, _wgslsmith_add_u32(arg_2, arg_1.d))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, true)), vec2<bool>(all(!vec4<bool>(true, global0.x, false, false)), true), 2147483647i >= ~_wgslsmith_mult_i32(u_input.c, -2147483647i));
    global0 = vec2<bool>(!select(u_input.c == -2147483647i, global0.x || true, global0.x) & any(select(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, true, false, global0.x)), !vec4<bool>(global0.x, false, true, false), !vec4<bool>(true, global0.x, true, true))), select(true, global0.x, any(!(!vec3<bool>(global0.x, global0.x, false)))));
    var var_0 = Struct_2(func_6(func_5(func_4(u_input.c, func_1(u_input.a.zwx, vec3<bool>(true, true, global0.x)), firstLeadingBit(4294967295u)), Struct_1(false || global0.x, !vec2<bool>(false, global0.x), -vec3<i32>(-2147483647i, u_input.c, 35442i), ~u_input.b), u_input.a | (vec4<u32>(u_input.a.x, u_input.b, 16678u, u_input.a.x) >> (u_input.a % vec4<u32>(32u)))), func_4(-abs(1i), u_input.a.wxz, max(_wgslsmith_dot_vec3_u32(u_input.a.xzx, u_input.a.xxy), 1u)).c, ~42737u), func_5(func_4(-2480i, firstLeadingBit(u_input.a.zyz), 1u), Struct_1(_wgslsmith_add_i32(u_input.c, u_input.c) != (u_input.c >> (4294967295u % 32u)), !select(vec2<bool>(true, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), _wgslsmith_mod_vec3_i32(-vec3<i32>(0i, u_input.c, -1i), vec3<i32>(1i, u_input.c, 12538i)), firstTrailingBit(~u_input.b)), vec4<u32>(~_wgslsmith_mult_u32(u_input.d, u_input.b), 16353u, _wgslsmith_mod_u32(abs(0u), 48392u), u_input.d)).b, func_4(~_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c) >> (u_input.b % 32u), vec3<u32>(4294967295u, 2153u, ~u_input.b), _wgslsmith_add_u32(~1u, u_input.b)).d, -5790i, func_5(func_4(i32(-1i) * -u_input.c, vec3<u32>(0u, 48613u, 69465u), u_input.b), func_5(func_4(u_input.c, _wgslsmith_div_vec3_u32(u_input.a.xxw, u_input.a.zww), _wgslsmith_div_u32(0u, u_input.d)), func_4(u_input.c, u_input.a.wzz, u_input.a.x).c, select(vec4<u32>(1u, 4294967295u, u_input.b, 25904u), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(122199u, 0u, 0u, 36124u)), !global0.x)).e, firstLeadingBit(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))).c);
    let var_1 = Struct_4(0u, abs(20143u), select(u_input.a, _wgslsmith_add_vec4_u32(u_input.a, u_input.a), !(!(!vec4<bool>(var_0.a.a, true, true, var_0.c.a)))));
    global1 = func_4(i32(-1i) * -1i, var_1.c.zyz, ~59438u).c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) - _wgslsmith_f_op_f32(round(959f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(160f + 2037f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-142f * 1536f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f + -260f)), -726f, _wgslsmith_f_op_f32(ceil(1833f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-391f, 1458f))))), firstTrailingBit(vec4<u32>(0u, var_0.c.d, ~0u, ~func_6(Struct_2(Struct_1(var_0.c.b.x, var_0.c.b, var_0.c.c, var_0.a.d), Struct_1(var_0.e.a, var_0.b.b, vec3<i32>(-12892i, 6396i, u_input.c), var_0.a.d), var_0.c, u_input.c, Struct_1(var_0.e.a, var_0.e.b, vec3<i32>(u_input.c, 2147483647i, var_0.e.c.x), u_input.b)), var_0.c, var_1.b).d)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1586f, -474f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-444f, -718f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1067f, 763f)))))));
}

